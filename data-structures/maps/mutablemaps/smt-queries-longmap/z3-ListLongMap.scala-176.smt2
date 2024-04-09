; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!3362 () Bool)

(assert start!3362)

(declare-fun b!21424 () Bool)

(declare-fun b_free!735 () Bool)

(declare-fun b_next!735 () Bool)

(assert (=> b!21424 (= b_free!735 (not b_next!735))))

(declare-fun tp!3441 () Bool)

(declare-fun b_and!1425 () Bool)

(assert (=> b!21424 (= tp!3441 b_and!1425)))

(declare-fun b!21418 () Bool)

(declare-fun res!13769 () Bool)

(declare-fun e!13959 () Bool)

(assert (=> b!21418 (=> (not res!13769) (not e!13959))))

(declare-datatypes ((V!1157 0))(
  ( (V!1158 (val!526 Int)) )
))
(declare-datatypes ((ValueCell!300 0))(
  ( (ValueCellFull!300 (v!1572 V!1157)) (EmptyCell!300) )
))
(declare-datatypes ((array!1221 0))(
  ( (array!1222 (arr!579 (Array (_ BitVec 32) ValueCell!300)) (size!672 (_ BitVec 32))) )
))
(declare-datatypes ((array!1223 0))(
  ( (array!1224 (arr!580 (Array (_ BitVec 32) (_ BitVec 64))) (size!673 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!186 0))(
  ( (LongMapFixedSize!187 (defaultEntry!1719 Int) (mask!4692 (_ BitVec 32)) (extraKeys!1622 (_ BitVec 32)) (zeroValue!1646 V!1157) (minValue!1646 V!1157) (_size!134 (_ BitVec 32)) (_keys!3140 array!1223) (_values!1708 array!1221) (_vacant!134 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!186 0))(
  ( (Cell!187 (v!1573 LongMapFixedSize!186)) )
))
(declare-datatypes ((LongMap!186 0))(
  ( (LongMap!187 (underlying!104 Cell!186)) )
))
(declare-fun thiss!938 () LongMap!186)

(assert (=> b!21418 (= res!13769 (and (= (size!673 (_keys!3140 (v!1573 (underlying!104 thiss!938)))) (bvadd #b00000000000000000000000000000001 (mask!4692 (v!1573 (underlying!104 thiss!938))))) (bvsge (bvsub (size!673 (_keys!3140 (v!1573 (underlying!104 thiss!938)))) #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvslt (bvsub (size!673 (_keys!3140 (v!1573 (underlying!104 thiss!938)))) #b00000000000000000000000000000001) (size!673 (_keys!3140 (v!1573 (underlying!104 thiss!938)))))))))

(declare-fun mapNonEmpty!979 () Bool)

(declare-fun mapRes!979 () Bool)

(declare-fun tp!3442 () Bool)

(declare-fun e!13953 () Bool)

(assert (=> mapNonEmpty!979 (= mapRes!979 (and tp!3442 e!13953))))

(declare-fun mapRest!979 () (Array (_ BitVec 32) ValueCell!300))

(declare-fun mapValue!979 () ValueCell!300)

(declare-fun mapKey!979 () (_ BitVec 32))

(assert (=> mapNonEmpty!979 (= (arr!579 (_values!1708 (v!1573 (underlying!104 thiss!938)))) (store mapRest!979 mapKey!979 mapValue!979))))

(declare-fun b!21419 () Bool)

(declare-fun e!13954 () Bool)

(assert (=> b!21419 (= e!13954 e!13959)))

(declare-fun res!13770 () Bool)

(assert (=> b!21419 (=> (not res!13770) (not e!13959))))

(declare-datatypes ((tuple2!886 0))(
  ( (tuple2!887 (_1!446 Bool) (_2!446 Cell!186)) )
))
(declare-fun lt!6677 () tuple2!886)

(assert (=> b!21419 (= res!13770 (_1!446 lt!6677))))

(declare-fun e!13964 () tuple2!886)

(assert (=> b!21419 (= lt!6677 e!13964)))

(declare-fun c!2483 () Bool)

(declare-fun lt!6682 () Bool)

(assert (=> b!21419 (= c!2483 (and (not lt!6682) (not (= (bvand (extraKeys!1622 (v!1573 (underlying!104 thiss!938))) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> b!21419 (= lt!6682 (= (bvand (extraKeys!1622 (v!1573 (underlying!104 thiss!938))) #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-fun lt!6678 () LongMapFixedSize!186)

(declare-fun getNewLongMapFixedSize!25 ((_ BitVec 32) Int) LongMapFixedSize!186)

(declare-fun computeNewMask!22 (LongMap!186 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!21419 (= lt!6678 (getNewLongMapFixedSize!25 (computeNewMask!22 thiss!938 (mask!4692 (v!1573 (underlying!104 thiss!938))) (_vacant!134 (v!1573 (underlying!104 thiss!938))) (_size!134 (v!1573 (underlying!104 thiss!938)))) (defaultEntry!1719 (v!1573 (underlying!104 thiss!938)))))))

(declare-fun b!21421 () Bool)

(declare-fun e!13962 () Bool)

(declare-fun tp_is_empty!999 () Bool)

(assert (=> b!21421 (= e!13962 tp_is_empty!999)))

(declare-fun b!21422 () Bool)

(declare-datatypes ((tuple2!888 0))(
  ( (tuple2!889 (_1!447 Bool) (_2!447 LongMapFixedSize!186)) )
))
(declare-fun lt!6680 () tuple2!888)

(declare-fun lt!6681 () tuple2!888)

(assert (=> b!21422 (= e!13964 (tuple2!887 (and (_1!447 lt!6680) (_1!447 lt!6681)) (Cell!187 (_2!447 lt!6681))))))

(declare-fun update!25 (LongMapFixedSize!186 (_ BitVec 64) V!1157) tuple2!888)

(assert (=> b!21422 (= lt!6680 (update!25 lt!6678 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!1646 (v!1573 (underlying!104 thiss!938)))))))

(declare-fun call!1347 () tuple2!888)

(assert (=> b!21422 (= lt!6681 call!1347)))

(declare-fun b!21423 () Bool)

(declare-fun lt!6679 () tuple2!888)

(declare-fun call!1348 () tuple2!888)

(assert (=> b!21423 (= lt!6679 call!1348)))

(declare-fun e!13963 () tuple2!886)

(assert (=> b!21423 (= e!13963 (tuple2!887 (_1!447 lt!6679) (Cell!187 (_2!447 lt!6679))))))

(declare-fun e!13956 () Bool)

(declare-fun e!13957 () Bool)

(declare-fun array_inv!411 (array!1223) Bool)

(declare-fun array_inv!412 (array!1221) Bool)

(assert (=> b!21424 (= e!13956 (and tp!3441 tp_is_empty!999 (array_inv!411 (_keys!3140 (v!1573 (underlying!104 thiss!938)))) (array_inv!412 (_values!1708 (v!1573 (underlying!104 thiss!938)))) e!13957))))

(declare-fun b!21425 () Bool)

(declare-fun res!13768 () Bool)

(assert (=> b!21425 (=> (not res!13768) (not e!13959))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!21425 (= res!13768 (validMask!0 (mask!4692 (v!1573 (underlying!104 thiss!938)))))))

(declare-fun b!21426 () Bool)

(declare-fun c!2481 () Bool)

(assert (=> b!21426 (= c!2481 (and (not (= (bvand (extraKeys!1622 (v!1573 (underlying!104 thiss!938))) #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!6682))))

(declare-fun e!13961 () tuple2!886)

(assert (=> b!21426 (= e!13963 e!13961)))

(declare-fun b!21427 () Bool)

(declare-fun lt!6683 () tuple2!888)

(assert (=> b!21427 (= e!13961 (tuple2!887 (_1!447 lt!6683) (Cell!187 (_2!447 lt!6683))))))

(assert (=> b!21427 (= lt!6683 call!1348)))

(declare-fun b!21428 () Bool)

(assert (=> b!21428 (= e!13961 (tuple2!887 true (Cell!187 lt!6678)))))

(declare-fun b!21429 () Bool)

(declare-fun e!13960 () Bool)

(assert (=> b!21429 (= e!13960 e!13956)))

(declare-fun b!21430 () Bool)

(declare-fun res!13767 () Bool)

(assert (=> b!21430 (=> (not res!13767) (not e!13959))))

(assert (=> b!21430 (= res!13767 (bvsge (bvadd #b00000000000000000000000000000001 (mask!4692 (v!1573 (_2!446 lt!6677)))) (_size!134 (v!1573 (underlying!104 thiss!938)))))))

(declare-fun bm!1344 () Bool)

(assert (=> bm!1344 (= call!1348 call!1347)))

(declare-fun b!21431 () Bool)

(declare-fun res!13765 () Bool)

(assert (=> b!21431 (=> (not res!13765) (not e!13959))))

(declare-fun valid!98 (LongMapFixedSize!186) Bool)

(assert (=> b!21431 (= res!13765 (valid!98 (v!1573 (_2!446 lt!6677))))))

(declare-fun b!21432 () Bool)

(assert (=> b!21432 (= e!13964 e!13963)))

(declare-fun c!2482 () Bool)

(assert (=> b!21432 (= c!2482 (and (not lt!6682) (= (bvand (extraKeys!1622 (v!1573 (underlying!104 thiss!938))) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun res!13766 () Bool)

(assert (=> start!3362 (=> (not res!13766) (not e!13954))))

(declare-fun valid!99 (LongMap!186) Bool)

(assert (=> start!3362 (= res!13766 (valid!99 thiss!938))))

(assert (=> start!3362 e!13954))

(declare-fun e!13958 () Bool)

(assert (=> start!3362 e!13958))

(declare-fun b!21420 () Bool)

(assert (=> b!21420 (= e!13958 e!13960)))

(declare-fun b!21433 () Bool)

(assert (=> b!21433 (= e!13953 tp_is_empty!999)))

(declare-fun b!21434 () Bool)

(declare-datatypes ((tuple2!890 0))(
  ( (tuple2!891 (_1!448 (_ BitVec 64)) (_2!448 V!1157)) )
))
(declare-datatypes ((List!558 0))(
  ( (Nil!555) (Cons!554 (h!1120 tuple2!890) (t!3217 List!558)) )
))
(declare-datatypes ((ListLongMap!545 0))(
  ( (ListLongMap!546 (toList!288 List!558)) )
))
(declare-fun getCurrentListMap!117 (array!1223 array!1221 (_ BitVec 32) (_ BitVec 32) V!1157 V!1157 (_ BitVec 32) Int) ListLongMap!545)

(declare-fun map!398 (LongMapFixedSize!186) ListLongMap!545)

(assert (=> b!21434 (= e!13959 (not (= (getCurrentListMap!117 (_keys!3140 (v!1573 (underlying!104 thiss!938))) (_values!1708 (v!1573 (underlying!104 thiss!938))) (mask!4692 (v!1573 (underlying!104 thiss!938))) (extraKeys!1622 (v!1573 (underlying!104 thiss!938))) (zeroValue!1646 (v!1573 (underlying!104 thiss!938))) (minValue!1646 (v!1573 (underlying!104 thiss!938))) (bvadd #b00000000000000000000000000000001 (bvsub (size!673 (_keys!3140 (v!1573 (underlying!104 thiss!938)))) #b00000000000000000000000000000001)) (defaultEntry!1719 (v!1573 (underlying!104 thiss!938)))) (map!398 (v!1573 (_2!446 lt!6677))))))))

(declare-fun b!21435 () Bool)

(assert (=> b!21435 (= e!13957 (and e!13962 mapRes!979))))

(declare-fun condMapEmpty!979 () Bool)

(declare-fun mapDefault!979 () ValueCell!300)

(assert (=> b!21435 (= condMapEmpty!979 (= (arr!579 (_values!1708 (v!1573 (underlying!104 thiss!938)))) ((as const (Array (_ BitVec 32) ValueCell!300)) mapDefault!979)))))

(declare-fun mapIsEmpty!979 () Bool)

(assert (=> mapIsEmpty!979 mapRes!979))

(declare-fun bm!1345 () Bool)

(assert (=> bm!1345 (= call!1347 (update!25 (ite c!2483 (_2!447 lt!6680) lt!6678) (ite c!2483 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!2482 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000)) (ite c!2483 (minValue!1646 (v!1573 (underlying!104 thiss!938))) (ite c!2482 (zeroValue!1646 (v!1573 (underlying!104 thiss!938))) (minValue!1646 (v!1573 (underlying!104 thiss!938)))))))))

(assert (= (and start!3362 res!13766) b!21419))

(assert (= (and b!21419 c!2483) b!21422))

(assert (= (and b!21419 (not c!2483)) b!21432))

(assert (= (and b!21432 c!2482) b!21423))

(assert (= (and b!21432 (not c!2482)) b!21426))

(assert (= (and b!21426 c!2481) b!21427))

(assert (= (and b!21426 (not c!2481)) b!21428))

(assert (= (or b!21423 b!21427) bm!1344))

(assert (= (or b!21422 bm!1344) bm!1345))

(assert (= (and b!21419 res!13770) b!21425))

(assert (= (and b!21425 res!13768) b!21418))

(assert (= (and b!21418 res!13769) b!21431))

(assert (= (and b!21431 res!13765) b!21430))

(assert (= (and b!21430 res!13767) b!21434))

(assert (= (and b!21435 condMapEmpty!979) mapIsEmpty!979))

(assert (= (and b!21435 (not condMapEmpty!979)) mapNonEmpty!979))

(get-info :version)

(assert (= (and mapNonEmpty!979 ((_ is ValueCellFull!300) mapValue!979)) b!21433))

(assert (= (and b!21435 ((_ is ValueCellFull!300) mapDefault!979)) b!21421))

(assert (= b!21424 b!21435))

(assert (= b!21429 b!21424))

(assert (= b!21420 b!21429))

(assert (= start!3362 b!21420))

(declare-fun m!14919 () Bool)

(assert (=> start!3362 m!14919))

(declare-fun m!14921 () Bool)

(assert (=> b!21422 m!14921))

(declare-fun m!14923 () Bool)

(assert (=> b!21425 m!14923))

(declare-fun m!14925 () Bool)

(assert (=> b!21419 m!14925))

(assert (=> b!21419 m!14925))

(declare-fun m!14927 () Bool)

(assert (=> b!21419 m!14927))

(declare-fun m!14929 () Bool)

(assert (=> bm!1345 m!14929))

(declare-fun m!14931 () Bool)

(assert (=> b!21434 m!14931))

(declare-fun m!14933 () Bool)

(assert (=> b!21434 m!14933))

(declare-fun m!14935 () Bool)

(assert (=> b!21424 m!14935))

(declare-fun m!14937 () Bool)

(assert (=> b!21424 m!14937))

(declare-fun m!14939 () Bool)

(assert (=> mapNonEmpty!979 m!14939))

(declare-fun m!14941 () Bool)

(assert (=> b!21431 m!14941))

(check-sat tp_is_empty!999 (not bm!1345) b_and!1425 (not b!21434) (not start!3362) (not b_next!735) (not b!21431) (not b!21425) (not mapNonEmpty!979) (not b!21422) (not b!21424) (not b!21419))
(check-sat b_and!1425 (not b_next!735))
(get-model)

(declare-fun d!3739 () Bool)

(declare-fun res!13795 () Bool)

(declare-fun e!14003 () Bool)

(assert (=> d!3739 (=> (not res!13795) (not e!14003))))

(declare-fun simpleValid!18 (LongMapFixedSize!186) Bool)

(assert (=> d!3739 (= res!13795 (simpleValid!18 (v!1573 (_2!446 lt!6677))))))

(assert (=> d!3739 (= (valid!98 (v!1573 (_2!446 lt!6677))) e!14003)))

(declare-fun b!21496 () Bool)

(declare-fun res!13796 () Bool)

(assert (=> b!21496 (=> (not res!13796) (not e!14003))))

(declare-fun arrayCountValidKeys!0 (array!1223 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!21496 (= res!13796 (= (arrayCountValidKeys!0 (_keys!3140 (v!1573 (_2!446 lt!6677))) #b00000000000000000000000000000000 (size!673 (_keys!3140 (v!1573 (_2!446 lt!6677))))) (_size!134 (v!1573 (_2!446 lt!6677)))))))

(declare-fun b!21497 () Bool)

(declare-fun res!13797 () Bool)

(assert (=> b!21497 (=> (not res!13797) (not e!14003))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!1223 (_ BitVec 32)) Bool)

(assert (=> b!21497 (= res!13797 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!3140 (v!1573 (_2!446 lt!6677))) (mask!4692 (v!1573 (_2!446 lt!6677)))))))

(declare-fun b!21498 () Bool)

(declare-datatypes ((List!560 0))(
  ( (Nil!557) (Cons!556 (h!1122 (_ BitVec 64)) (t!3221 List!560)) )
))
(declare-fun arrayNoDuplicates!0 (array!1223 (_ BitVec 32) List!560) Bool)

(assert (=> b!21498 (= e!14003 (arrayNoDuplicates!0 (_keys!3140 (v!1573 (_2!446 lt!6677))) #b00000000000000000000000000000000 Nil!557))))

(assert (= (and d!3739 res!13795) b!21496))

(assert (= (and b!21496 res!13796) b!21497))

(assert (= (and b!21497 res!13797) b!21498))

(declare-fun m!14967 () Bool)

(assert (=> d!3739 m!14967))

(declare-fun m!14969 () Bool)

(assert (=> b!21496 m!14969))

(declare-fun m!14971 () Bool)

(assert (=> b!21497 m!14971))

(declare-fun m!14973 () Bool)

(assert (=> b!21498 m!14973))

(assert (=> b!21431 d!3739))

(declare-fun d!3741 () Bool)

(assert (=> d!3741 (= (valid!99 thiss!938) (valid!98 (v!1573 (underlying!104 thiss!938))))))

(declare-fun bs!908 () Bool)

(assert (= bs!908 d!3741))

(declare-fun m!14975 () Bool)

(assert (=> bs!908 m!14975))

(assert (=> start!3362 d!3741))

(declare-fun b!21511 () Bool)

(declare-fun e!14010 () Bool)

(declare-fun lt!6764 () tuple2!890)

(declare-fun lt!6757 () (_ BitVec 32))

(assert (=> b!21511 (= e!14010 (ite (= (_1!448 lt!6764) #b0000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand lt!6757 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand lt!6757 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!21512 () Bool)

(declare-datatypes ((Unit!454 0))(
  ( (Unit!455) )
))
(declare-fun e!14012 () Unit!454)

(declare-fun Unit!456 () Unit!454)

(assert (=> b!21512 (= e!14012 Unit!456)))

(declare-fun d!3743 () Bool)

(declare-fun e!14011 () Bool)

(assert (=> d!3743 e!14011))

(declare-fun res!13803 () Bool)

(assert (=> d!3743 (=> (not res!13803) (not e!14011))))

(declare-fun lt!6759 () LongMapFixedSize!186)

(assert (=> d!3743 (= res!13803 (valid!98 lt!6759))))

(declare-fun lt!6772 () LongMapFixedSize!186)

(assert (=> d!3743 (= lt!6759 lt!6772)))

(declare-fun lt!6769 () Unit!454)

(assert (=> d!3743 (= lt!6769 e!14012)))

(declare-fun c!2498 () Bool)

(assert (=> d!3743 (= c!2498 (not (= (map!398 lt!6772) (ListLongMap!546 Nil!555))))))

(declare-fun lt!6756 () Unit!454)

(declare-fun lt!6771 () Unit!454)

(assert (=> d!3743 (= lt!6756 lt!6771)))

(declare-fun lt!6758 () array!1223)

(declare-fun lt!6765 () (_ BitVec 32))

(declare-fun lt!6761 () List!560)

(assert (=> d!3743 (arrayNoDuplicates!0 lt!6758 lt!6765 lt!6761)))

(declare-fun lemmaArrayNoDuplicatesInAll0Array!0 (array!1223 (_ BitVec 32) (_ BitVec 32) List!560) Unit!454)

(assert (=> d!3743 (= lt!6771 (lemmaArrayNoDuplicatesInAll0Array!0 lt!6758 lt!6765 (bvadd (computeNewMask!22 thiss!938 (mask!4692 (v!1573 (underlying!104 thiss!938))) (_vacant!134 (v!1573 (underlying!104 thiss!938))) (_size!134 (v!1573 (underlying!104 thiss!938)))) #b00000000000000000000000000000001) lt!6761))))

(assert (=> d!3743 (= lt!6761 Nil!557)))

(assert (=> d!3743 (= lt!6765 #b00000000000000000000000000000000)))

(assert (=> d!3743 (= lt!6758 (array!1224 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) (bvadd (computeNewMask!22 thiss!938 (mask!4692 (v!1573 (underlying!104 thiss!938))) (_vacant!134 (v!1573 (underlying!104 thiss!938))) (_size!134 (v!1573 (underlying!104 thiss!938)))) #b00000000000000000000000000000001)))))

(declare-fun lt!6770 () Unit!454)

(declare-fun lt!6762 () Unit!454)

(assert (=> d!3743 (= lt!6770 lt!6762)))

(declare-fun lt!6773 () (_ BitVec 32))

(declare-fun lt!6753 () array!1223)

(assert (=> d!3743 (arrayForallSeekEntryOrOpenFound!0 lt!6773 lt!6753 (computeNewMask!22 thiss!938 (mask!4692 (v!1573 (underlying!104 thiss!938))) (_vacant!134 (v!1573 (underlying!104 thiss!938))) (_size!134 (v!1573 (underlying!104 thiss!938)))))))

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundAlwaysTrueFor0Array!0 (array!1223 (_ BitVec 32) (_ BitVec 32)) Unit!454)

(assert (=> d!3743 (= lt!6762 (lemmaArrayForallSeekEntryOrOpenFoundAlwaysTrueFor0Array!0 lt!6753 (computeNewMask!22 thiss!938 (mask!4692 (v!1573 (underlying!104 thiss!938))) (_vacant!134 (v!1573 (underlying!104 thiss!938))) (_size!134 (v!1573 (underlying!104 thiss!938)))) lt!6773))))

(assert (=> d!3743 (= lt!6773 #b00000000000000000000000000000000)))

(assert (=> d!3743 (= lt!6753 (array!1224 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) (bvadd (computeNewMask!22 thiss!938 (mask!4692 (v!1573 (underlying!104 thiss!938))) (_vacant!134 (v!1573 (underlying!104 thiss!938))) (_size!134 (v!1573 (underlying!104 thiss!938)))) #b00000000000000000000000000000001)))))

(declare-fun lt!6752 () Unit!454)

(declare-fun lt!6767 () Unit!454)

(assert (=> d!3743 (= lt!6752 lt!6767)))

(declare-fun lt!6760 () array!1223)

(declare-fun lt!6755 () (_ BitVec 32))

(declare-fun lt!6751 () (_ BitVec 32))

(assert (=> d!3743 (= (arrayCountValidKeys!0 lt!6760 lt!6755 lt!6751) #b00000000000000000000000000000000)))

(declare-fun lemmaArrayCountValidKeysOfFilled0ArrayIs0!0 (array!1223 (_ BitVec 32) (_ BitVec 32)) Unit!454)

(assert (=> d!3743 (= lt!6767 (lemmaArrayCountValidKeysOfFilled0ArrayIs0!0 lt!6760 lt!6755 lt!6751))))

(assert (=> d!3743 (= lt!6751 (bvadd (computeNewMask!22 thiss!938 (mask!4692 (v!1573 (underlying!104 thiss!938))) (_vacant!134 (v!1573 (underlying!104 thiss!938))) (_size!134 (v!1573 (underlying!104 thiss!938)))) #b00000000000000000000000000000001))))

(assert (=> d!3743 (= lt!6755 #b00000000000000000000000000000000)))

(assert (=> d!3743 (= lt!6760 (array!1224 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) (bvadd (computeNewMask!22 thiss!938 (mask!4692 (v!1573 (underlying!104 thiss!938))) (_vacant!134 (v!1573 (underlying!104 thiss!938))) (_size!134 (v!1573 (underlying!104 thiss!938)))) #b00000000000000000000000000000001)))))

(declare-fun dynLambda!141 (Int (_ BitVec 64)) V!1157)

(assert (=> d!3743 (= lt!6772 (LongMapFixedSize!187 (defaultEntry!1719 (v!1573 (underlying!104 thiss!938))) (computeNewMask!22 thiss!938 (mask!4692 (v!1573 (underlying!104 thiss!938))) (_vacant!134 (v!1573 (underlying!104 thiss!938))) (_size!134 (v!1573 (underlying!104 thiss!938)))) #b00000000000000000000000000000000 (dynLambda!141 (defaultEntry!1719 (v!1573 (underlying!104 thiss!938))) #b0000000000000000000000000000000000000000000000000000000000000000) (dynLambda!141 (defaultEntry!1719 (v!1573 (underlying!104 thiss!938))) #b0000000000000000000000000000000000000000000000000000000000000000) #b00000000000000000000000000000000 (array!1224 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) (bvadd (computeNewMask!22 thiss!938 (mask!4692 (v!1573 (underlying!104 thiss!938))) (_vacant!134 (v!1573 (underlying!104 thiss!938))) (_size!134 (v!1573 (underlying!104 thiss!938)))) #b00000000000000000000000000000001)) (array!1222 ((as const (Array (_ BitVec 32) ValueCell!300)) EmptyCell!300) (bvadd (computeNewMask!22 thiss!938 (mask!4692 (v!1573 (underlying!104 thiss!938))) (_vacant!134 (v!1573 (underlying!104 thiss!938))) (_size!134 (v!1573 (underlying!104 thiss!938)))) #b00000000000000000000000000000001)) #b00000000000000000000000000000000))))

(assert (=> d!3743 (validMask!0 (computeNewMask!22 thiss!938 (mask!4692 (v!1573 (underlying!104 thiss!938))) (_vacant!134 (v!1573 (underlying!104 thiss!938))) (_size!134 (v!1573 (underlying!104 thiss!938)))))))

(assert (=> d!3743 (= (getNewLongMapFixedSize!25 (computeNewMask!22 thiss!938 (mask!4692 (v!1573 (underlying!104 thiss!938))) (_vacant!134 (v!1573 (underlying!104 thiss!938))) (_size!134 (v!1573 (underlying!104 thiss!938)))) (defaultEntry!1719 (v!1573 (underlying!104 thiss!938)))) lt!6759)))

(declare-fun b!21513 () Bool)

(declare-fun lt!6754 () array!1223)

(declare-fun arrayContainsKey!0 (array!1223 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!21513 (= e!14010 (arrayContainsKey!0 lt!6754 (_1!448 lt!6764) #b00000000000000000000000000000000))))

(declare-fun b!21514 () Bool)

(declare-fun Unit!457 () Unit!454)

(assert (=> b!21514 (= e!14012 Unit!457)))

(declare-fun head!827 (List!558) tuple2!890)

(assert (=> b!21514 (= lt!6764 (head!827 (toList!288 (map!398 lt!6772))))))

(assert (=> b!21514 (= lt!6754 (array!1224 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) (bvadd (computeNewMask!22 thiss!938 (mask!4692 (v!1573 (underlying!104 thiss!938))) (_vacant!134 (v!1573 (underlying!104 thiss!938))) (_size!134 (v!1573 (underlying!104 thiss!938)))) #b00000000000000000000000000000001)))))

(assert (=> b!21514 (= lt!6757 #b00000000000000000000000000000000)))

(declare-fun lt!6763 () Unit!454)

(declare-fun lemmaKeyInListMapIsInArray!90 (array!1223 array!1221 (_ BitVec 32) (_ BitVec 32) V!1157 V!1157 (_ BitVec 64) Int) Unit!454)

(assert (=> b!21514 (= lt!6763 (lemmaKeyInListMapIsInArray!90 lt!6754 (array!1222 ((as const (Array (_ BitVec 32) ValueCell!300)) EmptyCell!300) (bvadd (computeNewMask!22 thiss!938 (mask!4692 (v!1573 (underlying!104 thiss!938))) (_vacant!134 (v!1573 (underlying!104 thiss!938))) (_size!134 (v!1573 (underlying!104 thiss!938)))) #b00000000000000000000000000000001)) (computeNewMask!22 thiss!938 (mask!4692 (v!1573 (underlying!104 thiss!938))) (_vacant!134 (v!1573 (underlying!104 thiss!938))) (_size!134 (v!1573 (underlying!104 thiss!938)))) lt!6757 (dynLambda!141 (defaultEntry!1719 (v!1573 (underlying!104 thiss!938))) #b0000000000000000000000000000000000000000000000000000000000000000) (dynLambda!141 (defaultEntry!1719 (v!1573 (underlying!104 thiss!938))) #b0000000000000000000000000000000000000000000000000000000000000000) (_1!448 lt!6764) (defaultEntry!1719 (v!1573 (underlying!104 thiss!938)))))))

(declare-fun c!2497 () Bool)

(assert (=> b!21514 (= c!2497 (and (not (= (_1!448 lt!6764) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (_1!448 lt!6764) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!21514 e!14010))

(declare-fun lt!6766 () Unit!454)

(assert (=> b!21514 (= lt!6766 lt!6763)))

(declare-fun lt!6768 () (_ BitVec 32))

(declare-fun arrayScanForKey!0 (array!1223 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!21514 (= lt!6768 (arrayScanForKey!0 (array!1224 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) (bvadd (computeNewMask!22 thiss!938 (mask!4692 (v!1573 (underlying!104 thiss!938))) (_vacant!134 (v!1573 (underlying!104 thiss!938))) (_size!134 (v!1573 (underlying!104 thiss!938)))) #b00000000000000000000000000000001)) (_1!448 lt!6764) #b00000000000000000000000000000000))))

(assert (=> b!21514 false))

(declare-fun b!21515 () Bool)

(assert (=> b!21515 (= e!14011 (= (map!398 lt!6759) (ListLongMap!546 Nil!555)))))

(declare-fun b!21516 () Bool)

(declare-fun res!13802 () Bool)

(assert (=> b!21516 (=> (not res!13802) (not e!14011))))

(assert (=> b!21516 (= res!13802 (= (mask!4692 lt!6759) (computeNewMask!22 thiss!938 (mask!4692 (v!1573 (underlying!104 thiss!938))) (_vacant!134 (v!1573 (underlying!104 thiss!938))) (_size!134 (v!1573 (underlying!104 thiss!938))))))))

(assert (= (and d!3743 c!2498) b!21514))

(assert (= (and d!3743 (not c!2498)) b!21512))

(assert (= (and b!21514 c!2497) b!21513))

(assert (= (and b!21514 (not c!2497)) b!21511))

(assert (= (and d!3743 res!13803) b!21516))

(assert (= (and b!21516 res!13802) b!21515))

(declare-fun b_lambda!1525 () Bool)

(assert (=> (not b_lambda!1525) (not d!3743)))

(declare-fun t!3220 () Bool)

(declare-fun tb!647 () Bool)

(assert (=> (and b!21424 (= (defaultEntry!1719 (v!1573 (underlying!104 thiss!938))) (defaultEntry!1719 (v!1573 (underlying!104 thiss!938)))) t!3220) tb!647))

(declare-fun result!1071 () Bool)

(assert (=> tb!647 (= result!1071 tp_is_empty!999)))

(assert (=> d!3743 t!3220))

(declare-fun b_and!1429 () Bool)

(assert (= b_and!1425 (and (=> t!3220 result!1071) b_and!1429)))

(declare-fun b_lambda!1527 () Bool)

(assert (=> (not b_lambda!1527) (not b!21514)))

(assert (=> b!21514 t!3220))

(declare-fun b_and!1431 () Bool)

(assert (= b_and!1429 (and (=> t!3220 result!1071) b_and!1431)))

(declare-fun m!14977 () Bool)

(assert (=> d!3743 m!14977))

(declare-fun m!14979 () Bool)

(assert (=> d!3743 m!14979))

(assert (=> d!3743 m!14925))

(declare-fun m!14981 () Bool)

(assert (=> d!3743 m!14981))

(declare-fun m!14983 () Bool)

(assert (=> d!3743 m!14983))

(declare-fun m!14985 () Bool)

(assert (=> d!3743 m!14985))

(declare-fun m!14987 () Bool)

(assert (=> d!3743 m!14987))

(declare-fun m!14989 () Bool)

(assert (=> d!3743 m!14989))

(declare-fun m!14991 () Bool)

(assert (=> d!3743 m!14991))

(assert (=> d!3743 m!14925))

(declare-fun m!14993 () Bool)

(assert (=> d!3743 m!14993))

(assert (=> d!3743 m!14925))

(declare-fun m!14995 () Bool)

(assert (=> d!3743 m!14995))

(declare-fun m!14997 () Bool)

(assert (=> b!21513 m!14997))

(declare-fun m!14999 () Bool)

(assert (=> b!21514 m!14999))

(assert (=> b!21514 m!14979))

(assert (=> b!21514 m!14925))

(assert (=> b!21514 m!14979))

(assert (=> b!21514 m!14979))

(declare-fun m!15001 () Bool)

(assert (=> b!21514 m!15001))

(assert (=> b!21514 m!14987))

(declare-fun m!15003 () Bool)

(assert (=> b!21514 m!15003))

(declare-fun m!15005 () Bool)

(assert (=> b!21515 m!15005))

(assert (=> b!21419 d!3743))

(declare-fun d!3745 () Bool)

(declare-fun e!14017 () Bool)

(assert (=> d!3745 e!14017))

(declare-fun res!13806 () Bool)

(assert (=> d!3745 (=> (not res!13806) (not e!14017))))

(declare-fun lt!6778 () (_ BitVec 32))

(assert (=> d!3745 (= res!13806 (validMask!0 lt!6778))))

(declare-datatypes ((tuple2!898 0))(
  ( (tuple2!899 (_1!452 Unit!454) (_2!452 (_ BitVec 32))) )
))
(declare-fun e!14018 () tuple2!898)

(assert (=> d!3745 (= lt!6778 (_2!452 e!14018))))

(declare-fun c!2501 () Bool)

(declare-fun lt!6779 () tuple2!898)

(assert (=> d!3745 (= c!2501 (and (bvsgt (_2!452 lt!6779) #b00000000000000000000000000001000) (bvslt (bvmul #b00000000000000000000000000001000 (_size!134 (v!1573 (underlying!104 thiss!938)))) (_2!452 lt!6779)) (bvsge (bvadd (bvand (bvashr (_2!452 lt!6779) #b00000000000000000000000000000001) #b00111111111111111111111111111111) #b00000000000000000000000000000001) (_size!134 (v!1573 (underlying!104 thiss!938))))))))

(declare-fun Unit!458 () Unit!454)

(declare-fun Unit!459 () Unit!454)

(assert (=> d!3745 (= lt!6779 (ite (and (bvsge (bvmul #b00000000000000000000000000000010 (bvadd (_size!134 (v!1573 (underlying!104 thiss!938))) (_vacant!134 (v!1573 (underlying!104 thiss!938))))) (mask!4692 (v!1573 (underlying!104 thiss!938)))) (bvsle (bvmul #b00000000000000000000000000000101 (_vacant!134 (v!1573 (underlying!104 thiss!938)))) (mask!4692 (v!1573 (underlying!104 thiss!938))))) (tuple2!899 Unit!458 (bvand (bvadd (bvshl (mask!4692 (v!1573 (underlying!104 thiss!938))) #b00000000000000000000000000000001) #b00000000000000000000000000000001) #b00111111111111111111111111111111)) (tuple2!899 Unit!459 (mask!4692 (v!1573 (underlying!104 thiss!938))))))))

(assert (=> d!3745 (validMask!0 (mask!4692 (v!1573 (underlying!104 thiss!938))))))

(assert (=> d!3745 (= (computeNewMask!22 thiss!938 (mask!4692 (v!1573 (underlying!104 thiss!938))) (_vacant!134 (v!1573 (underlying!104 thiss!938))) (_size!134 (v!1573 (underlying!104 thiss!938)))) lt!6778)))

(declare-fun b!21525 () Bool)

(declare-fun computeNewMaskWhile!11 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) tuple2!898)

(assert (=> b!21525 (= e!14018 (computeNewMaskWhile!11 (_size!134 (v!1573 (underlying!104 thiss!938))) (_vacant!134 (v!1573 (underlying!104 thiss!938))) (mask!4692 (v!1573 (underlying!104 thiss!938))) (_2!452 lt!6779)))))

(declare-fun b!21526 () Bool)

(declare-fun Unit!460 () Unit!454)

(assert (=> b!21526 (= e!14018 (tuple2!899 Unit!460 (_2!452 lt!6779)))))

(declare-fun b!21527 () Bool)

(assert (=> b!21527 (= e!14017 (bvsle (_size!134 (v!1573 (underlying!104 thiss!938))) (bvadd lt!6778 #b00000000000000000000000000000001)))))

(assert (= (and d!3745 c!2501) b!21525))

(assert (= (and d!3745 (not c!2501)) b!21526))

(assert (= (and d!3745 res!13806) b!21527))

(declare-fun m!15007 () Bool)

(assert (=> d!3745 m!15007))

(assert (=> d!3745 m!14923))

(declare-fun m!15009 () Bool)

(assert (=> b!21525 m!15009))

(assert (=> b!21419 d!3745))

(declare-fun bm!1366 () Bool)

(declare-fun call!1375 () Bool)

(declare-fun lt!6826 () ListLongMap!545)

(declare-fun contains!215 (ListLongMap!545 (_ BitVec 64)) Bool)

(assert (=> bm!1366 (= call!1375 (contains!215 lt!6826 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun bm!1367 () Bool)

(declare-fun call!1371 () ListLongMap!545)

(declare-fun call!1373 () ListLongMap!545)

(assert (=> bm!1367 (= call!1371 call!1373)))

(declare-fun b!21570 () Bool)

(declare-fun e!14049 () Bool)

(declare-fun call!1370 () Bool)

(assert (=> b!21570 (= e!14049 (not call!1370))))

(declare-fun bm!1368 () Bool)

(assert (=> bm!1368 (= call!1370 (contains!215 lt!6826 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!21571 () Bool)

(declare-fun e!14054 () Bool)

(declare-fun apply!28 (ListLongMap!545 (_ BitVec 64)) V!1157)

(assert (=> b!21571 (= e!14054 (= (apply!28 lt!6826 #b1000000000000000000000000000000000000000000000000000000000000000) (minValue!1646 (v!1573 (underlying!104 thiss!938)))))))

(declare-fun b!21572 () Bool)

(declare-fun e!14056 () ListLongMap!545)

(assert (=> b!21572 (= e!14056 call!1371)))

(declare-fun b!21573 () Bool)

(declare-fun e!14050 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!21573 (= e!14050 (validKeyInArray!0 (select (arr!580 (_keys!3140 (v!1573 (underlying!104 thiss!938)))) (bvadd #b00000000000000000000000000000001 (bvsub (size!673 (_keys!3140 (v!1573 (underlying!104 thiss!938)))) #b00000000000000000000000000000001)))))))

(declare-fun bm!1369 () Bool)

(declare-fun call!1374 () ListLongMap!545)

(declare-fun call!1369 () ListLongMap!545)

(assert (=> bm!1369 (= call!1374 call!1369)))

(declare-fun b!21574 () Bool)

(declare-fun e!14047 () Bool)

(declare-fun e!14053 () Bool)

(assert (=> b!21574 (= e!14047 e!14053)))

(declare-fun res!13831 () Bool)

(assert (=> b!21574 (=> (not res!13831) (not e!14053))))

(assert (=> b!21574 (= res!13831 (contains!215 lt!6826 (select (arr!580 (_keys!3140 (v!1573 (underlying!104 thiss!938)))) (bvadd #b00000000000000000000000000000001 (bvsub (size!673 (_keys!3140 (v!1573 (underlying!104 thiss!938)))) #b00000000000000000000000000000001)))))))

(assert (=> b!21574 (and (bvsge (bvadd #b00000000000000000000000000000001 (bvsub (size!673 (_keys!3140 (v!1573 (underlying!104 thiss!938)))) #b00000000000000000000000000000001)) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 (bvsub (size!673 (_keys!3140 (v!1573 (underlying!104 thiss!938)))) #b00000000000000000000000000000001)) (size!673 (_keys!3140 (v!1573 (underlying!104 thiss!938))))))))

(declare-fun b!21575 () Bool)

(declare-fun e!14048 () Bool)

(assert (=> b!21575 (= e!14048 (= (apply!28 lt!6826 #b0000000000000000000000000000000000000000000000000000000000000000) (zeroValue!1646 (v!1573 (underlying!104 thiss!938)))))))

(declare-fun b!21576 () Bool)

(declare-fun e!14051 () ListLongMap!545)

(assert (=> b!21576 (= e!14051 call!1371)))

(declare-fun b!21577 () Bool)

(declare-fun e!14052 () ListLongMap!545)

(declare-fun +!42 (ListLongMap!545 tuple2!890) ListLongMap!545)

(assert (=> b!21577 (= e!14052 (+!42 call!1373 (tuple2!891 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!1646 (v!1573 (underlying!104 thiss!938))))))))

(declare-fun b!21578 () Bool)

(declare-fun e!14045 () Bool)

(assert (=> b!21578 (= e!14045 (validKeyInArray!0 (select (arr!580 (_keys!3140 (v!1573 (underlying!104 thiss!938)))) (bvadd #b00000000000000000000000000000001 (bvsub (size!673 (_keys!3140 (v!1573 (underlying!104 thiss!938)))) #b00000000000000000000000000000001)))))))

(declare-fun b!21579 () Bool)

(declare-fun res!13827 () Bool)

(declare-fun e!14046 () Bool)

(assert (=> b!21579 (=> (not res!13827) (not e!14046))))

(assert (=> b!21579 (= res!13827 e!14047)))

(declare-fun res!13833 () Bool)

(assert (=> b!21579 (=> res!13833 e!14047)))

(assert (=> b!21579 (= res!13833 (not e!14045))))

(declare-fun res!13830 () Bool)

(assert (=> b!21579 (=> (not res!13830) (not e!14045))))

(assert (=> b!21579 (= res!13830 (bvslt (bvadd #b00000000000000000000000000000001 (bvsub (size!673 (_keys!3140 (v!1573 (underlying!104 thiss!938)))) #b00000000000000000000000000000001)) (size!673 (_keys!3140 (v!1573 (underlying!104 thiss!938))))))))

(declare-fun b!21580 () Bool)

(assert (=> b!21580 (= e!14052 e!14056)))

(declare-fun c!2519 () Bool)

(assert (=> b!21580 (= c!2519 (and (not (= (bvand (extraKeys!1622 (v!1573 (underlying!104 thiss!938))) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand (extraKeys!1622 (v!1573 (underlying!104 thiss!938))) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun d!3747 () Bool)

(assert (=> d!3747 e!14046))

(declare-fun res!13826 () Bool)

(assert (=> d!3747 (=> (not res!13826) (not e!14046))))

(assert (=> d!3747 (= res!13826 (or (bvsge (bvadd #b00000000000000000000000000000001 (bvsub (size!673 (_keys!3140 (v!1573 (underlying!104 thiss!938)))) #b00000000000000000000000000000001)) (size!673 (_keys!3140 (v!1573 (underlying!104 thiss!938))))) (and (bvsge (bvadd #b00000000000000000000000000000001 (bvsub (size!673 (_keys!3140 (v!1573 (underlying!104 thiss!938)))) #b00000000000000000000000000000001)) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 (bvsub (size!673 (_keys!3140 (v!1573 (underlying!104 thiss!938)))) #b00000000000000000000000000000001)) (size!673 (_keys!3140 (v!1573 (underlying!104 thiss!938))))))))))

(declare-fun lt!6830 () ListLongMap!545)

(assert (=> d!3747 (= lt!6826 lt!6830)))

(declare-fun lt!6844 () Unit!454)

(declare-fun e!14055 () Unit!454)

(assert (=> d!3747 (= lt!6844 e!14055)))

(declare-fun c!2517 () Bool)

(assert (=> d!3747 (= c!2517 e!14050)))

(declare-fun res!13828 () Bool)

(assert (=> d!3747 (=> (not res!13828) (not e!14050))))

(assert (=> d!3747 (= res!13828 (bvslt (bvadd #b00000000000000000000000000000001 (bvsub (size!673 (_keys!3140 (v!1573 (underlying!104 thiss!938)))) #b00000000000000000000000000000001)) (size!673 (_keys!3140 (v!1573 (underlying!104 thiss!938))))))))

(assert (=> d!3747 (= lt!6830 e!14052)))

(declare-fun c!2516 () Bool)

(assert (=> d!3747 (= c!2516 (and (not (= (bvand (extraKeys!1622 (v!1573 (underlying!104 thiss!938))) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (extraKeys!1622 (v!1573 (underlying!104 thiss!938))) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!3747 (validMask!0 (mask!4692 (v!1573 (underlying!104 thiss!938))))))

(assert (=> d!3747 (= (getCurrentListMap!117 (_keys!3140 (v!1573 (underlying!104 thiss!938))) (_values!1708 (v!1573 (underlying!104 thiss!938))) (mask!4692 (v!1573 (underlying!104 thiss!938))) (extraKeys!1622 (v!1573 (underlying!104 thiss!938))) (zeroValue!1646 (v!1573 (underlying!104 thiss!938))) (minValue!1646 (v!1573 (underlying!104 thiss!938))) (bvadd #b00000000000000000000000000000001 (bvsub (size!673 (_keys!3140 (v!1573 (underlying!104 thiss!938)))) #b00000000000000000000000000000001)) (defaultEntry!1719 (v!1573 (underlying!104 thiss!938)))) lt!6826)))

(declare-fun b!21581 () Bool)

(assert (=> b!21581 (= e!14049 e!14048)))

(declare-fun res!13825 () Bool)

(assert (=> b!21581 (= res!13825 call!1370)))

(assert (=> b!21581 (=> (not res!13825) (not e!14048))))

(declare-fun b!21582 () Bool)

(declare-fun Unit!461 () Unit!454)

(assert (=> b!21582 (= e!14055 Unit!461)))

(declare-fun call!1372 () ListLongMap!545)

(declare-fun bm!1370 () Bool)

(assert (=> bm!1370 (= call!1373 (+!42 (ite c!2516 call!1372 (ite c!2519 call!1369 call!1374)) (ite (or c!2516 c!2519) (tuple2!891 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!1646 (v!1573 (underlying!104 thiss!938)))) (tuple2!891 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!1646 (v!1573 (underlying!104 thiss!938)))))))))

(declare-fun b!21583 () Bool)

(declare-fun e!14057 () Bool)

(assert (=> b!21583 (= e!14057 (not call!1375))))

(declare-fun b!21584 () Bool)

(declare-fun res!13829 () Bool)

(assert (=> b!21584 (=> (not res!13829) (not e!14046))))

(assert (=> b!21584 (= res!13829 e!14049)))

(declare-fun c!2515 () Bool)

(assert (=> b!21584 (= c!2515 (not (= (bvand (extraKeys!1622 (v!1573 (underlying!104 thiss!938))) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!21585 () Bool)

(assert (=> b!21585 (= e!14051 call!1374)))

(declare-fun bm!1371 () Bool)

(declare-fun getCurrentListMapNoExtraKeys!13 (array!1223 array!1221 (_ BitVec 32) (_ BitVec 32) V!1157 V!1157 (_ BitVec 32) Int) ListLongMap!545)

(assert (=> bm!1371 (= call!1372 (getCurrentListMapNoExtraKeys!13 (_keys!3140 (v!1573 (underlying!104 thiss!938))) (_values!1708 (v!1573 (underlying!104 thiss!938))) (mask!4692 (v!1573 (underlying!104 thiss!938))) (extraKeys!1622 (v!1573 (underlying!104 thiss!938))) (zeroValue!1646 (v!1573 (underlying!104 thiss!938))) (minValue!1646 (v!1573 (underlying!104 thiss!938))) (bvadd #b00000000000000000000000000000001 (bvsub (size!673 (_keys!3140 (v!1573 (underlying!104 thiss!938)))) #b00000000000000000000000000000001)) (defaultEntry!1719 (v!1573 (underlying!104 thiss!938)))))))

(declare-fun b!21586 () Bool)

(assert (=> b!21586 (= e!14057 e!14054)))

(declare-fun res!13832 () Bool)

(assert (=> b!21586 (= res!13832 call!1375)))

(assert (=> b!21586 (=> (not res!13832) (not e!14054))))

(declare-fun b!21587 () Bool)

(declare-fun c!2514 () Bool)

(assert (=> b!21587 (= c!2514 (and (not (= (bvand (extraKeys!1622 (v!1573 (underlying!104 thiss!938))) #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand (extraKeys!1622 (v!1573 (underlying!104 thiss!938))) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!21587 (= e!14056 e!14051)))

(declare-fun b!21588 () Bool)

(assert (=> b!21588 (= e!14046 e!14057)))

(declare-fun c!2518 () Bool)

(assert (=> b!21588 (= c!2518 (not (= (bvand (extraKeys!1622 (v!1573 (underlying!104 thiss!938))) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!21589 () Bool)

(declare-fun get!377 (ValueCell!300 V!1157) V!1157)

(assert (=> b!21589 (= e!14053 (= (apply!28 lt!6826 (select (arr!580 (_keys!3140 (v!1573 (underlying!104 thiss!938)))) (bvadd #b00000000000000000000000000000001 (bvsub (size!673 (_keys!3140 (v!1573 (underlying!104 thiss!938)))) #b00000000000000000000000000000001)))) (get!377 (select (arr!579 (_values!1708 (v!1573 (underlying!104 thiss!938)))) (bvadd #b00000000000000000000000000000001 (bvsub (size!673 (_keys!3140 (v!1573 (underlying!104 thiss!938)))) #b00000000000000000000000000000001))) (dynLambda!141 (defaultEntry!1719 (v!1573 (underlying!104 thiss!938))) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!21589 (and (bvsge (bvadd #b00000000000000000000000000000001 (bvsub (size!673 (_keys!3140 (v!1573 (underlying!104 thiss!938)))) #b00000000000000000000000000000001)) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 (bvsub (size!673 (_keys!3140 (v!1573 (underlying!104 thiss!938)))) #b00000000000000000000000000000001)) (size!672 (_values!1708 (v!1573 (underlying!104 thiss!938))))))))

(assert (=> b!21589 (and (bvsge (bvadd #b00000000000000000000000000000001 (bvsub (size!673 (_keys!3140 (v!1573 (underlying!104 thiss!938)))) #b00000000000000000000000000000001)) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 (bvsub (size!673 (_keys!3140 (v!1573 (underlying!104 thiss!938)))) #b00000000000000000000000000000001)) (size!673 (_keys!3140 (v!1573 (underlying!104 thiss!938))))))))

(declare-fun b!21590 () Bool)

(declare-fun lt!6843 () Unit!454)

(assert (=> b!21590 (= e!14055 lt!6843)))

(declare-fun lt!6836 () ListLongMap!545)

(assert (=> b!21590 (= lt!6836 (getCurrentListMapNoExtraKeys!13 (_keys!3140 (v!1573 (underlying!104 thiss!938))) (_values!1708 (v!1573 (underlying!104 thiss!938))) (mask!4692 (v!1573 (underlying!104 thiss!938))) (extraKeys!1622 (v!1573 (underlying!104 thiss!938))) (zeroValue!1646 (v!1573 (underlying!104 thiss!938))) (minValue!1646 (v!1573 (underlying!104 thiss!938))) (bvadd #b00000000000000000000000000000001 (bvsub (size!673 (_keys!3140 (v!1573 (underlying!104 thiss!938)))) #b00000000000000000000000000000001)) (defaultEntry!1719 (v!1573 (underlying!104 thiss!938)))))))

(declare-fun lt!6828 () (_ BitVec 64))

(assert (=> b!21590 (= lt!6828 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!6831 () (_ BitVec 64))

(assert (=> b!21590 (= lt!6831 (select (arr!580 (_keys!3140 (v!1573 (underlying!104 thiss!938)))) (bvadd #b00000000000000000000000000000001 (bvsub (size!673 (_keys!3140 (v!1573 (underlying!104 thiss!938)))) #b00000000000000000000000000000001))))))

(declare-fun lt!6840 () Unit!454)

(declare-fun addStillContains!13 (ListLongMap!545 (_ BitVec 64) V!1157 (_ BitVec 64)) Unit!454)

(assert (=> b!21590 (= lt!6840 (addStillContains!13 lt!6836 lt!6828 (zeroValue!1646 (v!1573 (underlying!104 thiss!938))) lt!6831))))

(assert (=> b!21590 (contains!215 (+!42 lt!6836 (tuple2!891 lt!6828 (zeroValue!1646 (v!1573 (underlying!104 thiss!938))))) lt!6831)))

(declare-fun lt!6833 () Unit!454)

(assert (=> b!21590 (= lt!6833 lt!6840)))

(declare-fun lt!6835 () ListLongMap!545)

(assert (=> b!21590 (= lt!6835 (getCurrentListMapNoExtraKeys!13 (_keys!3140 (v!1573 (underlying!104 thiss!938))) (_values!1708 (v!1573 (underlying!104 thiss!938))) (mask!4692 (v!1573 (underlying!104 thiss!938))) (extraKeys!1622 (v!1573 (underlying!104 thiss!938))) (zeroValue!1646 (v!1573 (underlying!104 thiss!938))) (minValue!1646 (v!1573 (underlying!104 thiss!938))) (bvadd #b00000000000000000000000000000001 (bvsub (size!673 (_keys!3140 (v!1573 (underlying!104 thiss!938)))) #b00000000000000000000000000000001)) (defaultEntry!1719 (v!1573 (underlying!104 thiss!938)))))))

(declare-fun lt!6832 () (_ BitVec 64))

(assert (=> b!21590 (= lt!6832 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!6827 () (_ BitVec 64))

(assert (=> b!21590 (= lt!6827 (select (arr!580 (_keys!3140 (v!1573 (underlying!104 thiss!938)))) (bvadd #b00000000000000000000000000000001 (bvsub (size!673 (_keys!3140 (v!1573 (underlying!104 thiss!938)))) #b00000000000000000000000000000001))))))

(declare-fun lt!6834 () Unit!454)

(declare-fun addApplyDifferent!13 (ListLongMap!545 (_ BitVec 64) V!1157 (_ BitVec 64)) Unit!454)

(assert (=> b!21590 (= lt!6834 (addApplyDifferent!13 lt!6835 lt!6832 (minValue!1646 (v!1573 (underlying!104 thiss!938))) lt!6827))))

(assert (=> b!21590 (= (apply!28 (+!42 lt!6835 (tuple2!891 lt!6832 (minValue!1646 (v!1573 (underlying!104 thiss!938))))) lt!6827) (apply!28 lt!6835 lt!6827))))

(declare-fun lt!6837 () Unit!454)

(assert (=> b!21590 (= lt!6837 lt!6834)))

(declare-fun lt!6838 () ListLongMap!545)

(assert (=> b!21590 (= lt!6838 (getCurrentListMapNoExtraKeys!13 (_keys!3140 (v!1573 (underlying!104 thiss!938))) (_values!1708 (v!1573 (underlying!104 thiss!938))) (mask!4692 (v!1573 (underlying!104 thiss!938))) (extraKeys!1622 (v!1573 (underlying!104 thiss!938))) (zeroValue!1646 (v!1573 (underlying!104 thiss!938))) (minValue!1646 (v!1573 (underlying!104 thiss!938))) (bvadd #b00000000000000000000000000000001 (bvsub (size!673 (_keys!3140 (v!1573 (underlying!104 thiss!938)))) #b00000000000000000000000000000001)) (defaultEntry!1719 (v!1573 (underlying!104 thiss!938)))))))

(declare-fun lt!6845 () (_ BitVec 64))

(assert (=> b!21590 (= lt!6845 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!6841 () (_ BitVec 64))

(assert (=> b!21590 (= lt!6841 (select (arr!580 (_keys!3140 (v!1573 (underlying!104 thiss!938)))) (bvadd #b00000000000000000000000000000001 (bvsub (size!673 (_keys!3140 (v!1573 (underlying!104 thiss!938)))) #b00000000000000000000000000000001))))))

(declare-fun lt!6824 () Unit!454)

(assert (=> b!21590 (= lt!6824 (addApplyDifferent!13 lt!6838 lt!6845 (zeroValue!1646 (v!1573 (underlying!104 thiss!938))) lt!6841))))

(assert (=> b!21590 (= (apply!28 (+!42 lt!6838 (tuple2!891 lt!6845 (zeroValue!1646 (v!1573 (underlying!104 thiss!938))))) lt!6841) (apply!28 lt!6838 lt!6841))))

(declare-fun lt!6839 () Unit!454)

(assert (=> b!21590 (= lt!6839 lt!6824)))

(declare-fun lt!6825 () ListLongMap!545)

(assert (=> b!21590 (= lt!6825 (getCurrentListMapNoExtraKeys!13 (_keys!3140 (v!1573 (underlying!104 thiss!938))) (_values!1708 (v!1573 (underlying!104 thiss!938))) (mask!4692 (v!1573 (underlying!104 thiss!938))) (extraKeys!1622 (v!1573 (underlying!104 thiss!938))) (zeroValue!1646 (v!1573 (underlying!104 thiss!938))) (minValue!1646 (v!1573 (underlying!104 thiss!938))) (bvadd #b00000000000000000000000000000001 (bvsub (size!673 (_keys!3140 (v!1573 (underlying!104 thiss!938)))) #b00000000000000000000000000000001)) (defaultEntry!1719 (v!1573 (underlying!104 thiss!938)))))))

(declare-fun lt!6842 () (_ BitVec 64))

(assert (=> b!21590 (= lt!6842 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!6829 () (_ BitVec 64))

(assert (=> b!21590 (= lt!6829 (select (arr!580 (_keys!3140 (v!1573 (underlying!104 thiss!938)))) (bvadd #b00000000000000000000000000000001 (bvsub (size!673 (_keys!3140 (v!1573 (underlying!104 thiss!938)))) #b00000000000000000000000000000001))))))

(assert (=> b!21590 (= lt!6843 (addApplyDifferent!13 lt!6825 lt!6842 (minValue!1646 (v!1573 (underlying!104 thiss!938))) lt!6829))))

(assert (=> b!21590 (= (apply!28 (+!42 lt!6825 (tuple2!891 lt!6842 (minValue!1646 (v!1573 (underlying!104 thiss!938))))) lt!6829) (apply!28 lt!6825 lt!6829))))

(declare-fun bm!1372 () Bool)

(assert (=> bm!1372 (= call!1369 call!1372)))

(assert (= (and d!3747 c!2516) b!21577))

(assert (= (and d!3747 (not c!2516)) b!21580))

(assert (= (and b!21580 c!2519) b!21572))

(assert (= (and b!21580 (not c!2519)) b!21587))

(assert (= (and b!21587 c!2514) b!21576))

(assert (= (and b!21587 (not c!2514)) b!21585))

(assert (= (or b!21576 b!21585) bm!1369))

(assert (= (or b!21572 bm!1369) bm!1372))

(assert (= (or b!21572 b!21576) bm!1367))

(assert (= (or b!21577 bm!1372) bm!1371))

(assert (= (or b!21577 bm!1367) bm!1370))

(assert (= (and d!3747 res!13828) b!21573))

(assert (= (and d!3747 c!2517) b!21590))

(assert (= (and d!3747 (not c!2517)) b!21582))

(assert (= (and d!3747 res!13826) b!21579))

(assert (= (and b!21579 res!13830) b!21578))

(assert (= (and b!21579 (not res!13833)) b!21574))

(assert (= (and b!21574 res!13831) b!21589))

(assert (= (and b!21579 res!13827) b!21584))

(assert (= (and b!21584 c!2515) b!21581))

(assert (= (and b!21584 (not c!2515)) b!21570))

(assert (= (and b!21581 res!13825) b!21575))

(assert (= (or b!21581 b!21570) bm!1368))

(assert (= (and b!21584 res!13829) b!21588))

(assert (= (and b!21588 c!2518) b!21586))

(assert (= (and b!21588 (not c!2518)) b!21583))

(assert (= (and b!21586 res!13832) b!21571))

(assert (= (or b!21586 b!21583) bm!1366))

(declare-fun b_lambda!1529 () Bool)

(assert (=> (not b_lambda!1529) (not b!21589)))

(assert (=> b!21589 t!3220))

(declare-fun b_and!1433 () Bool)

(assert (= b_and!1431 (and (=> t!3220 result!1071) b_and!1433)))

(declare-fun m!15011 () Bool)

(assert (=> bm!1370 m!15011))

(declare-fun m!15013 () Bool)

(assert (=> bm!1368 m!15013))

(declare-fun m!15015 () Bool)

(assert (=> b!21571 m!15015))

(declare-fun m!15017 () Bool)

(assert (=> b!21578 m!15017))

(assert (=> b!21578 m!15017))

(declare-fun m!15019 () Bool)

(assert (=> b!21578 m!15019))

(declare-fun m!15021 () Bool)

(assert (=> b!21577 m!15021))

(declare-fun m!15023 () Bool)

(assert (=> b!21575 m!15023))

(declare-fun m!15025 () Bool)

(assert (=> bm!1366 m!15025))

(declare-fun m!15027 () Bool)

(assert (=> bm!1371 m!15027))

(assert (=> b!21573 m!15017))

(assert (=> b!21573 m!15017))

(assert (=> b!21573 m!15019))

(assert (=> d!3747 m!14923))

(declare-fun m!15029 () Bool)

(assert (=> b!21590 m!15029))

(declare-fun m!15031 () Bool)

(assert (=> b!21590 m!15031))

(assert (=> b!21590 m!15017))

(declare-fun m!15033 () Bool)

(assert (=> b!21590 m!15033))

(assert (=> b!21590 m!15029))

(assert (=> b!21590 m!15027))

(declare-fun m!15035 () Bool)

(assert (=> b!21590 m!15035))

(declare-fun m!15037 () Bool)

(assert (=> b!21590 m!15037))

(declare-fun m!15039 () Bool)

(assert (=> b!21590 m!15039))

(declare-fun m!15041 () Bool)

(assert (=> b!21590 m!15041))

(assert (=> b!21590 m!15033))

(declare-fun m!15043 () Bool)

(assert (=> b!21590 m!15043))

(declare-fun m!15045 () Bool)

(assert (=> b!21590 m!15045))

(declare-fun m!15047 () Bool)

(assert (=> b!21590 m!15047))

(declare-fun m!15049 () Bool)

(assert (=> b!21590 m!15049))

(assert (=> b!21590 m!15045))

(declare-fun m!15051 () Bool)

(assert (=> b!21590 m!15051))

(declare-fun m!15053 () Bool)

(assert (=> b!21590 m!15053))

(assert (=> b!21590 m!15047))

(declare-fun m!15055 () Bool)

(assert (=> b!21590 m!15055))

(declare-fun m!15057 () Bool)

(assert (=> b!21590 m!15057))

(assert (=> b!21589 m!15017))

(assert (=> b!21589 m!15017))

(declare-fun m!15059 () Bool)

(assert (=> b!21589 m!15059))

(declare-fun m!15061 () Bool)

(assert (=> b!21589 m!15061))

(assert (=> b!21589 m!14979))

(declare-fun m!15063 () Bool)

(assert (=> b!21589 m!15063))

(assert (=> b!21589 m!15061))

(assert (=> b!21589 m!14979))

(assert (=> b!21574 m!15017))

(assert (=> b!21574 m!15017))

(declare-fun m!15065 () Bool)

(assert (=> b!21574 m!15065))

(assert (=> b!21434 d!3747))

(declare-fun d!3749 () Bool)

(assert (=> d!3749 (= (map!398 (v!1573 (_2!446 lt!6677))) (getCurrentListMap!117 (_keys!3140 (v!1573 (_2!446 lt!6677))) (_values!1708 (v!1573 (_2!446 lt!6677))) (mask!4692 (v!1573 (_2!446 lt!6677))) (extraKeys!1622 (v!1573 (_2!446 lt!6677))) (zeroValue!1646 (v!1573 (_2!446 lt!6677))) (minValue!1646 (v!1573 (_2!446 lt!6677))) #b00000000000000000000000000000000 (defaultEntry!1719 (v!1573 (_2!446 lt!6677)))))))

(declare-fun bs!909 () Bool)

(assert (= bs!909 d!3749))

(declare-fun m!15067 () Bool)

(assert (=> bs!909 m!15067))

(assert (=> b!21434 d!3749))

(declare-fun d!3751 () Bool)

(assert (=> d!3751 (= (validMask!0 (mask!4692 (v!1573 (underlying!104 thiss!938)))) (and (or (= (mask!4692 (v!1573 (underlying!104 thiss!938))) #b00000000000000000000000000000111) (= (mask!4692 (v!1573 (underlying!104 thiss!938))) #b00000000000000000000000000001111) (= (mask!4692 (v!1573 (underlying!104 thiss!938))) #b00000000000000000000000000011111) (= (mask!4692 (v!1573 (underlying!104 thiss!938))) #b00000000000000000000000000111111) (= (mask!4692 (v!1573 (underlying!104 thiss!938))) #b00000000000000000000000001111111) (= (mask!4692 (v!1573 (underlying!104 thiss!938))) #b00000000000000000000000011111111) (= (mask!4692 (v!1573 (underlying!104 thiss!938))) #b00000000000000000000000111111111) (= (mask!4692 (v!1573 (underlying!104 thiss!938))) #b00000000000000000000001111111111) (= (mask!4692 (v!1573 (underlying!104 thiss!938))) #b00000000000000000000011111111111) (= (mask!4692 (v!1573 (underlying!104 thiss!938))) #b00000000000000000000111111111111) (= (mask!4692 (v!1573 (underlying!104 thiss!938))) #b00000000000000000001111111111111) (= (mask!4692 (v!1573 (underlying!104 thiss!938))) #b00000000000000000011111111111111) (= (mask!4692 (v!1573 (underlying!104 thiss!938))) #b00000000000000000111111111111111) (= (mask!4692 (v!1573 (underlying!104 thiss!938))) #b00000000000000001111111111111111) (= (mask!4692 (v!1573 (underlying!104 thiss!938))) #b00000000000000011111111111111111) (= (mask!4692 (v!1573 (underlying!104 thiss!938))) #b00000000000000111111111111111111) (= (mask!4692 (v!1573 (underlying!104 thiss!938))) #b00000000000001111111111111111111) (= (mask!4692 (v!1573 (underlying!104 thiss!938))) #b00000000000011111111111111111111) (= (mask!4692 (v!1573 (underlying!104 thiss!938))) #b00000000000111111111111111111111) (= (mask!4692 (v!1573 (underlying!104 thiss!938))) #b00000000001111111111111111111111) (= (mask!4692 (v!1573 (underlying!104 thiss!938))) #b00000000011111111111111111111111) (= (mask!4692 (v!1573 (underlying!104 thiss!938))) #b00000000111111111111111111111111) (= (mask!4692 (v!1573 (underlying!104 thiss!938))) #b00000001111111111111111111111111) (= (mask!4692 (v!1573 (underlying!104 thiss!938))) #b00000011111111111111111111111111) (= (mask!4692 (v!1573 (underlying!104 thiss!938))) #b00000111111111111111111111111111) (= (mask!4692 (v!1573 (underlying!104 thiss!938))) #b00001111111111111111111111111111) (= (mask!4692 (v!1573 (underlying!104 thiss!938))) #b00011111111111111111111111111111) (= (mask!4692 (v!1573 (underlying!104 thiss!938))) #b00111111111111111111111111111111)) (bvsle (mask!4692 (v!1573 (underlying!104 thiss!938))) #b00111111111111111111111111111111)))))

(assert (=> b!21425 d!3751))

(declare-fun d!3753 () Bool)

(assert (=> d!3753 (= (array_inv!411 (_keys!3140 (v!1573 (underlying!104 thiss!938)))) (bvsge (size!673 (_keys!3140 (v!1573 (underlying!104 thiss!938)))) #b00000000000000000000000000000000))))

(assert (=> b!21424 d!3753))

(declare-fun d!3755 () Bool)

(assert (=> d!3755 (= (array_inv!412 (_values!1708 (v!1573 (underlying!104 thiss!938)))) (bvsge (size!672 (_values!1708 (v!1573 (underlying!104 thiss!938)))) #b00000000000000000000000000000000))))

(assert (=> b!21424 d!3755))

(declare-fun bm!1421 () Bool)

(declare-fun call!1434 () ListLongMap!545)

(declare-fun lt!6912 () tuple2!888)

(assert (=> bm!1421 (= call!1434 (map!398 (_2!447 lt!6912)))))

(declare-fun b!21667 () Bool)

(declare-fun res!13875 () Bool)

(declare-fun e!14107 () Bool)

(assert (=> b!21667 (=> (not res!13875) (not e!14107))))

(declare-datatypes ((SeekEntryResult!56 0))(
  ( (MissingZero!56 (index!2344 (_ BitVec 32))) (Found!56 (index!2345 (_ BitVec 32))) (Intermediate!56 (undefined!868 Bool) (index!2346 (_ BitVec 32)) (x!5195 (_ BitVec 32))) (Undefined!56) (MissingVacant!56 (index!2347 (_ BitVec 32))) )
))
(declare-fun lt!6919 () SeekEntryResult!56)

(assert (=> b!21667 (= res!13875 (= (select (arr!580 (_keys!3140 lt!6678)) (index!2344 lt!6919)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!21668 () Bool)

(declare-fun e!14111 () Bool)

(assert (=> b!21668 (= e!14111 ((_ is Undefined!56) lt!6919))))

(declare-fun b!21669 () Bool)

(declare-fun e!14108 () Bool)

(declare-fun call!1431 () Bool)

(assert (=> b!21669 (= e!14108 (not call!1431))))

(declare-fun e!14099 () Bool)

(declare-fun call!1427 () ListLongMap!545)

(declare-fun b!21670 () Bool)

(assert (=> b!21670 (= e!14099 (= call!1434 (+!42 call!1427 (tuple2!891 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!1646 (v!1573 (underlying!104 thiss!938)))))))))

(declare-fun bm!1422 () Bool)

(declare-fun call!1439 () Bool)

(assert (=> bm!1422 (= call!1439 (arrayContainsKey!0 (_keys!3140 lt!6678) #b0000000000000000000000000000000000000000000000000000000000000000 #b00000000000000000000000000000000))))

(declare-fun call!1433 () ListLongMap!545)

(declare-fun lt!6907 () SeekEntryResult!56)

(declare-fun c!2549 () Bool)

(declare-fun bm!1423 () Bool)

(assert (=> bm!1423 (= call!1433 (getCurrentListMap!117 (_keys!3140 lt!6678) (ite c!2549 (_values!1708 lt!6678) (array!1222 (store (arr!579 (_values!1708 lt!6678)) (index!2345 lt!6907) (ValueCellFull!300 (zeroValue!1646 (v!1573 (underlying!104 thiss!938))))) (size!672 (_values!1708 lt!6678)))) (mask!4692 lt!6678) (extraKeys!1622 lt!6678) (zeroValue!1646 lt!6678) (minValue!1646 lt!6678) #b00000000000000000000000000000000 (defaultEntry!1719 lt!6678)))))

(declare-fun bm!1424 () Bool)

(declare-fun call!1430 () ListLongMap!545)

(assert (=> bm!1424 (= call!1430 call!1433)))

(declare-fun b!21671 () Bool)

(declare-fun e!14103 () Bool)

(declare-fun lt!6913 () SeekEntryResult!56)

(assert (=> b!21671 (= e!14103 (= (select (arr!580 (_keys!3140 lt!6678)) (index!2345 lt!6913)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!21672 () Bool)

(declare-fun c!2554 () Bool)

(declare-fun lt!6921 () SeekEntryResult!56)

(assert (=> b!21672 (= c!2554 ((_ is MissingVacant!56) lt!6921))))

(declare-fun e!14113 () Bool)

(declare-fun e!14098 () Bool)

(assert (=> b!21672 (= e!14113 e!14098)))

(declare-fun b!21673 () Bool)

(declare-fun e!14100 () tuple2!888)

(declare-fun e!14114 () tuple2!888)

(assert (=> b!21673 (= e!14100 e!14114)))

(declare-fun c!2544 () Bool)

(assert (=> b!21673 (= c!2544 ((_ is MissingZero!56) lt!6907))))

(declare-fun b!21674 () Bool)

(declare-fun lt!6909 () Unit!454)

(declare-fun lt!6906 () Unit!454)

(assert (=> b!21674 (= lt!6909 lt!6906)))

(declare-fun call!1424 () ListLongMap!545)

(declare-fun call!1429 () ListLongMap!545)

(assert (=> b!21674 (= call!1424 call!1429)))

(declare-fun lt!6911 () (_ BitVec 32))

(declare-fun lemmaChangeLongMinValueKeyThenAddPairToListMap!7 (array!1223 array!1221 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!1157 V!1157 V!1157 Int) Unit!454)

(assert (=> b!21674 (= lt!6906 (lemmaChangeLongMinValueKeyThenAddPairToListMap!7 (_keys!3140 lt!6678) (_values!1708 lt!6678) (mask!4692 lt!6678) (extraKeys!1622 lt!6678) lt!6911 (zeroValue!1646 lt!6678) (minValue!1646 lt!6678) (zeroValue!1646 (v!1573 (underlying!104 thiss!938))) (defaultEntry!1719 lt!6678)))))

(assert (=> b!21674 (= lt!6911 (bvor (extraKeys!1622 lt!6678) #b00000000000000000000000000000010))))

(declare-fun e!14115 () tuple2!888)

(assert (=> b!21674 (= e!14115 (tuple2!889 true (LongMapFixedSize!187 (defaultEntry!1719 lt!6678) (mask!4692 lt!6678) (bvor (extraKeys!1622 lt!6678) #b00000000000000000000000000000010) (zeroValue!1646 lt!6678) (zeroValue!1646 (v!1573 (underlying!104 thiss!938))) (_size!134 lt!6678) (_keys!3140 lt!6678) (_values!1708 lt!6678) (_vacant!134 lt!6678))))))

(declare-fun lt!6910 () array!1221)

(declare-fun bm!1425 () Bool)

(declare-fun call!1432 () ListLongMap!545)

(declare-fun c!2547 () Bool)

(assert (=> bm!1425 (= call!1432 (getCurrentListMap!117 (_keys!3140 lt!6678) (ite c!2547 (_values!1708 lt!6678) lt!6910) (mask!4692 lt!6678) (extraKeys!1622 lt!6678) (zeroValue!1646 lt!6678) (minValue!1646 lt!6678) #b00000000000000000000000000000000 (defaultEntry!1719 lt!6678)))))

(declare-fun b!21675 () Bool)

(declare-fun e!14104 () Bool)

(assert (=> b!21675 (= e!14104 e!14099)))

(declare-fun res!13866 () Bool)

(assert (=> b!21675 (= res!13866 (contains!215 call!1434 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!21675 (=> (not res!13866) (not e!14099))))

(declare-fun bm!1426 () Bool)

(declare-fun call!1426 () SeekEntryResult!56)

(declare-fun call!1442 () SeekEntryResult!56)

(assert (=> bm!1426 (= call!1426 call!1442)))

(declare-fun c!2545 () Bool)

(declare-fun c!2555 () Bool)

(declare-fun bm!1427 () Bool)

(declare-fun c!2551 () Bool)

(declare-fun c!2552 () Bool)

(declare-fun lt!6900 () SeekEntryResult!56)

(declare-fun call!1435 () Bool)

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> bm!1427 (= call!1435 (inRange!0 (ite c!2547 (ite c!2552 (index!2345 lt!6900) (ite c!2545 (index!2344 lt!6919) (index!2347 lt!6919))) (ite c!2551 (index!2345 lt!6913) (ite c!2555 (index!2344 lt!6921) (index!2347 lt!6921)))) (mask!4692 lt!6678)))))

(declare-fun bm!1428 () Bool)

(declare-fun call!1440 () Bool)

(declare-fun call!1444 () Bool)

(assert (=> bm!1428 (= call!1440 call!1444)))

(declare-fun bm!1429 () Bool)

(assert (=> bm!1429 (= call!1427 (map!398 lt!6678))))

(declare-fun d!3757 () Bool)

(declare-fun e!14102 () Bool)

(assert (=> d!3757 e!14102))

(declare-fun res!13864 () Bool)

(assert (=> d!3757 (=> (not res!13864) (not e!14102))))

(assert (=> d!3757 (= res!13864 (valid!98 (_2!447 lt!6912)))))

(declare-fun e!14101 () tuple2!888)

(assert (=> d!3757 (= lt!6912 e!14101)))

(assert (=> d!3757 (= c!2549 (= #b0000000000000000000000000000000000000000000000000000000000000000 (bvneg #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!3757 (valid!98 lt!6678)))

(assert (=> d!3757 (= (update!25 lt!6678 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!1646 (v!1573 (underlying!104 thiss!938)))) lt!6912)))

(declare-fun b!21676 () Bool)

(declare-fun e!14106 () Bool)

(assert (=> b!21676 (= e!14106 (not call!1431))))

(declare-fun b!21677 () Bool)

(declare-fun e!14116 () Unit!454)

(declare-fun lt!6915 () Unit!454)

(assert (=> b!21677 (= e!14116 lt!6915)))

(declare-fun call!1447 () Unit!454)

(assert (=> b!21677 (= lt!6915 call!1447)))

(assert (=> b!21677 (= lt!6919 call!1426)))

(assert (=> b!21677 (= c!2545 ((_ is MissingZero!56) lt!6919))))

(declare-fun e!14117 () Bool)

(assert (=> b!21677 e!14117))

(declare-fun b!21678 () Bool)

(declare-fun lt!6925 () Unit!454)

(declare-fun lt!6917 () Unit!454)

(assert (=> b!21678 (= lt!6925 lt!6917)))

(declare-fun call!1436 () Bool)

(assert (=> b!21678 call!1436))

(declare-fun lemmaValidKeyInArrayIsInListMap!7 (array!1223 array!1221 (_ BitVec 32) (_ BitVec 32) V!1157 V!1157 (_ BitVec 32) Int) Unit!454)

(assert (=> b!21678 (= lt!6917 (lemmaValidKeyInArrayIsInListMap!7 (_keys!3140 lt!6678) lt!6910 (mask!4692 lt!6678) (extraKeys!1622 lt!6678) (zeroValue!1646 lt!6678) (minValue!1646 lt!6678) (index!2345 lt!6907) (defaultEntry!1719 lt!6678)))))

(assert (=> b!21678 (= lt!6910 (array!1222 (store (arr!579 (_values!1708 lt!6678)) (index!2345 lt!6907) (ValueCellFull!300 (zeroValue!1646 (v!1573 (underlying!104 thiss!938))))) (size!672 (_values!1708 lt!6678))))))

(declare-fun lt!6914 () Unit!454)

(declare-fun lt!6926 () Unit!454)

(assert (=> b!21678 (= lt!6914 lt!6926)))

(declare-fun call!1428 () ListLongMap!545)

(assert (=> b!21678 (= call!1428 call!1433)))

(declare-fun lemmaChangeValueExistingKeyToArrayThenAddPairToListMap!7 (array!1223 array!1221 (_ BitVec 32) (_ BitVec 32) V!1157 V!1157 (_ BitVec 32) (_ BitVec 64) V!1157 Int) Unit!454)

(assert (=> b!21678 (= lt!6926 (lemmaChangeValueExistingKeyToArrayThenAddPairToListMap!7 (_keys!3140 lt!6678) (_values!1708 lt!6678) (mask!4692 lt!6678) (extraKeys!1622 lt!6678) (zeroValue!1646 lt!6678) (minValue!1646 lt!6678) (index!2345 lt!6907) #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!1646 (v!1573 (underlying!104 thiss!938))) (defaultEntry!1719 lt!6678)))))

(declare-fun lt!6924 () Unit!454)

(declare-fun e!14110 () Unit!454)

(assert (=> b!21678 (= lt!6924 e!14110)))

(declare-fun call!1437 () ListLongMap!545)

(assert (=> b!21678 (= c!2551 (contains!215 call!1437 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!21678 (= e!14114 (tuple2!889 true (LongMapFixedSize!187 (defaultEntry!1719 lt!6678) (mask!4692 lt!6678) (extraKeys!1622 lt!6678) (zeroValue!1646 lt!6678) (minValue!1646 lt!6678) (_size!134 lt!6678) (_keys!3140 lt!6678) (array!1222 (store (arr!579 (_values!1708 lt!6678)) (index!2345 lt!6907) (ValueCellFull!300 (zeroValue!1646 (v!1573 (underlying!104 thiss!938))))) (size!672 (_values!1708 lt!6678))) (_vacant!134 lt!6678))))))

(declare-fun b!21679 () Bool)

(assert (=> b!21679 (= e!14104 (= call!1434 call!1427))))

(declare-fun c!2553 () Bool)

(declare-fun bm!1430 () Bool)

(assert (=> bm!1430 (= call!1428 (+!42 (ite c!2549 call!1430 call!1437) (ite c!2549 (ite c!2553 (tuple2!891 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!1646 (v!1573 (underlying!104 thiss!938)))) (tuple2!891 #b1000000000000000000000000000000000000000000000000000000000000000 (zeroValue!1646 (v!1573 (underlying!104 thiss!938))))) (tuple2!891 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!1646 (v!1573 (underlying!104 thiss!938)))))))))

(declare-fun b!21680 () Bool)

(declare-fun res!13865 () Bool)

(assert (=> b!21680 (=> (not res!13865) (not e!14108))))

(assert (=> b!21680 (= res!13865 (= (select (arr!580 (_keys!3140 lt!6678)) (index!2344 lt!6921)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!21681 () Bool)

(declare-fun res!13873 () Bool)

(assert (=> b!21681 (= res!13873 (= (select (arr!580 (_keys!3140 lt!6678)) (index!2347 lt!6921)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!21681 (=> (not res!13873) (not e!14106))))

(declare-fun b!21682 () Bool)

(declare-fun res!13862 () Bool)

(assert (=> b!21682 (= res!13862 call!1444)))

(assert (=> b!21682 (=> (not res!13862) (not e!14103))))

(declare-fun b!21683 () Bool)

(assert (=> b!21683 (= e!14098 e!14106)))

(declare-fun res!13869 () Bool)

(assert (=> b!21683 (= res!13869 call!1440)))

(assert (=> b!21683 (=> (not res!13869) (not e!14106))))

(declare-fun lt!6922 () (_ BitVec 32))

(declare-fun bm!1431 () Bool)

(assert (=> bm!1431 (= call!1437 (getCurrentListMap!117 (_keys!3140 lt!6678) (_values!1708 lt!6678) (mask!4692 lt!6678) (ite c!2549 (ite c!2553 lt!6922 lt!6911) (extraKeys!1622 lt!6678)) (ite (and c!2549 c!2553) (zeroValue!1646 (v!1573 (underlying!104 thiss!938))) (zeroValue!1646 lt!6678)) (ite c!2549 (ite c!2553 (minValue!1646 lt!6678) (zeroValue!1646 (v!1573 (underlying!104 thiss!938)))) (minValue!1646 lt!6678)) #b00000000000000000000000000000000 (defaultEntry!1719 lt!6678)))))

(declare-fun b!21684 () Bool)

(declare-fun Unit!462 () Unit!454)

(assert (=> b!21684 (= e!14110 Unit!462)))

(declare-fun lt!6916 () Unit!454)

(assert (=> b!21684 (= lt!6916 call!1447)))

(declare-fun call!1438 () SeekEntryResult!56)

(assert (=> b!21684 (= lt!6921 call!1438)))

(assert (=> b!21684 (= c!2555 ((_ is MissingZero!56) lt!6921))))

(assert (=> b!21684 e!14113))

(declare-fun lt!6920 () Unit!454)

(assert (=> b!21684 (= lt!6920 lt!6916)))

(assert (=> b!21684 false))

(declare-fun b!21685 () Bool)

(declare-fun res!13872 () Bool)

(declare-fun call!1425 () Bool)

(assert (=> b!21685 (= res!13872 call!1425)))

(declare-fun e!14112 () Bool)

(assert (=> b!21685 (=> (not res!13872) (not e!14112))))

(declare-fun b!21686 () Bool)

(declare-fun e!14105 () Bool)

(declare-fun call!1443 () Bool)

(assert (=> b!21686 (= e!14105 (not call!1443))))

(declare-fun bm!1432 () Bool)

(assert (=> bm!1432 (= call!1438 call!1442)))

(declare-fun b!21687 () Bool)

(assert (=> b!21687 (= e!14101 e!14115)))

(assert (=> b!21687 (= c!2553 (= #b0000000000000000000000000000000000000000000000000000000000000000 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!21688 () Bool)

(assert (=> b!21688 (= e!14107 (not call!1443))))

(declare-fun b!21689 () Bool)

(declare-fun c!2546 () Bool)

(assert (=> b!21689 (= c!2546 ((_ is MissingVacant!56) lt!6919))))

(assert (=> b!21689 (= e!14117 e!14111)))

(declare-fun call!1446 () tuple2!888)

(declare-fun bm!1433 () Bool)

(declare-fun c!2550 () Bool)

(declare-fun updateHelperNewKey!7 (LongMapFixedSize!186 (_ BitVec 64) V!1157 (_ BitVec 32)) tuple2!888)

(assert (=> bm!1433 (= call!1446 (updateHelperNewKey!7 lt!6678 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!1646 (v!1573 (underlying!104 thiss!938))) (ite c!2550 (index!2347 lt!6907) (index!2344 lt!6907))))))

(declare-fun b!21690 () Bool)

(declare-fun res!13874 () Bool)

(assert (=> b!21690 (=> (not res!13874) (not e!14108))))

(assert (=> b!21690 (= res!13874 call!1440)))

(assert (=> b!21690 (= e!14113 e!14108)))

(declare-fun bm!1434 () Bool)

(declare-fun call!1445 () Unit!454)

(declare-fun lemmaInListMapThenSeekEntryOrOpenFindsIt!7 (array!1223 array!1221 (_ BitVec 32) (_ BitVec 32) V!1157 V!1157 (_ BitVec 64) Int) Unit!454)

(assert (=> bm!1434 (= call!1445 (lemmaInListMapThenSeekEntryOrOpenFindsIt!7 (_keys!3140 lt!6678) (_values!1708 lt!6678) (mask!4692 lt!6678) (extraKeys!1622 lt!6678) (zeroValue!1646 lt!6678) (minValue!1646 lt!6678) #b0000000000000000000000000000000000000000000000000000000000000000 (defaultEntry!1719 lt!6678)))))

(declare-fun bm!1435 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!1223 (_ BitVec 32)) SeekEntryResult!56)

(assert (=> bm!1435 (= call!1442 (seekEntryOrOpen!0 #b0000000000000000000000000000000000000000000000000000000000000000 (_keys!3140 lt!6678) (mask!4692 lt!6678)))))

(declare-fun bm!1436 () Bool)

(assert (=> bm!1436 (= call!1436 (contains!215 call!1432 (ite c!2547 #b0000000000000000000000000000000000000000000000000000000000000000 (select (arr!580 (_keys!3140 lt!6678)) (index!2345 lt!6907)))))))

(declare-fun b!21691 () Bool)

(declare-fun Unit!463 () Unit!454)

(assert (=> b!21691 (= e!14116 Unit!463)))

(declare-fun lt!6908 () Unit!454)

(assert (=> b!21691 (= lt!6908 call!1445)))

(assert (=> b!21691 (= lt!6900 call!1426)))

(declare-fun res!13867 () Bool)

(assert (=> b!21691 (= res!13867 ((_ is Found!56) lt!6900))))

(assert (=> b!21691 (=> (not res!13867) (not e!14112))))

(assert (=> b!21691 e!14112))

(declare-fun lt!6923 () Unit!454)

(assert (=> b!21691 (= lt!6923 lt!6908)))

(assert (=> b!21691 false))

(declare-fun b!21692 () Bool)

(declare-fun res!13863 () Bool)

(assert (=> b!21692 (=> (not res!13863) (not e!14107))))

(declare-fun call!1441 () Bool)

(assert (=> b!21692 (= res!13863 call!1441)))

(assert (=> b!21692 (= e!14117 e!14107)))

(declare-fun bm!1437 () Bool)

(assert (=> bm!1437 (= call!1431 call!1439)))

(declare-fun b!21693 () Bool)

(declare-fun lt!6903 () Unit!454)

(declare-fun lt!6902 () Unit!454)

(assert (=> b!21693 (= lt!6903 lt!6902)))

(assert (=> b!21693 (= call!1424 call!1429)))

(declare-fun lemmaChangeZeroKeyThenAddPairToListMap!7 (array!1223 array!1221 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!1157 V!1157 V!1157 Int) Unit!454)

(assert (=> b!21693 (= lt!6902 (lemmaChangeZeroKeyThenAddPairToListMap!7 (_keys!3140 lt!6678) (_values!1708 lt!6678) (mask!4692 lt!6678) (extraKeys!1622 lt!6678) lt!6922 (zeroValue!1646 lt!6678) (zeroValue!1646 (v!1573 (underlying!104 thiss!938))) (minValue!1646 lt!6678) (defaultEntry!1719 lt!6678)))))

(assert (=> b!21693 (= lt!6922 (bvor (extraKeys!1622 lt!6678) #b00000000000000000000000000000001))))

(assert (=> b!21693 (= e!14115 (tuple2!889 true (LongMapFixedSize!187 (defaultEntry!1719 lt!6678) (mask!4692 lt!6678) (bvor (extraKeys!1622 lt!6678) #b00000000000000000000000000000001) (zeroValue!1646 (v!1573 (underlying!104 thiss!938))) (minValue!1646 lt!6678) (_size!134 lt!6678) (_keys!3140 lt!6678) (_values!1708 lt!6678) (_vacant!134 lt!6678))))))

(declare-fun bm!1438 () Bool)

(assert (=> bm!1438 (= call!1425 call!1435)))

(declare-fun b!21694 () Bool)

(assert (=> b!21694 (= c!2550 ((_ is MissingVacant!56) lt!6907))))

(declare-fun e!14109 () tuple2!888)

(assert (=> b!21694 (= e!14109 e!14100)))

(declare-fun bm!1439 () Bool)

(assert (=> bm!1439 (= call!1424 call!1428)))

(declare-fun bm!1440 () Bool)

(declare-fun lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!7 (array!1223 array!1221 (_ BitVec 32) (_ BitVec 32) V!1157 V!1157 (_ BitVec 64) Int) Unit!454)

(assert (=> bm!1440 (= call!1447 (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!7 (_keys!3140 lt!6678) (_values!1708 lt!6678) (mask!4692 lt!6678) (extraKeys!1622 lt!6678) (zeroValue!1646 lt!6678) (minValue!1646 lt!6678) #b0000000000000000000000000000000000000000000000000000000000000000 (defaultEntry!1719 lt!6678)))))

(declare-fun bm!1441 () Bool)

(assert (=> bm!1441 (= call!1429 call!1437)))

(declare-fun b!21695 () Bool)

(declare-fun lt!6901 () tuple2!888)

(assert (=> b!21695 (= e!14100 (tuple2!889 (_1!447 lt!6901) (_2!447 lt!6901)))))

(assert (=> b!21695 (= lt!6901 call!1446)))

(declare-fun bm!1442 () Bool)

(assert (=> bm!1442 (= call!1441 call!1425)))

(declare-fun b!21696 () Bool)

(declare-fun lt!6905 () Unit!454)

(assert (=> b!21696 (= lt!6905 e!14116)))

(assert (=> b!21696 (= c!2552 call!1436)))

(assert (=> b!21696 (= e!14109 (tuple2!889 false lt!6678))))

(declare-fun b!21697 () Bool)

(declare-fun res!13871 () Bool)

(assert (=> b!21697 (= res!13871 (= (select (arr!580 (_keys!3140 lt!6678)) (index!2347 lt!6919)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!21697 (=> (not res!13871) (not e!14105))))

(declare-fun b!21698 () Bool)

(assert (=> b!21698 (= e!14098 ((_ is Undefined!56) lt!6921))))

(declare-fun b!21699 () Bool)

(assert (=> b!21699 (= e!14112 (= (select (arr!580 (_keys!3140 lt!6678)) (index!2345 lt!6900)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!21700 () Bool)

(assert (=> b!21700 (= e!14111 e!14105)))

(declare-fun res!13868 () Bool)

(assert (=> b!21700 (= res!13868 call!1441)))

(assert (=> b!21700 (=> (not res!13868) (not e!14105))))

(declare-fun bm!1443 () Bool)

(assert (=> bm!1443 (= call!1443 call!1439)))

(declare-fun bm!1444 () Bool)

(assert (=> bm!1444 (= call!1444 call!1435)))

(declare-fun b!21701 () Bool)

(assert (=> b!21701 (= e!14101 e!14109)))

(assert (=> b!21701 (= lt!6907 (seekEntryOrOpen!0 #b0000000000000000000000000000000000000000000000000000000000000000 (_keys!3140 lt!6678) (mask!4692 lt!6678)))))

(assert (=> b!21701 (= c!2547 ((_ is Undefined!56) lt!6907))))

(declare-fun b!21702 () Bool)

(declare-fun lt!6904 () tuple2!888)

(assert (=> b!21702 (= lt!6904 call!1446)))

(assert (=> b!21702 (= e!14114 (tuple2!889 (_1!447 lt!6904) (_2!447 lt!6904)))))

(declare-fun b!21703 () Bool)

(assert (=> b!21703 (= e!14102 e!14104)))

(declare-fun c!2548 () Bool)

(assert (=> b!21703 (= c!2548 (_1!447 lt!6912))))

(declare-fun b!21704 () Bool)

(declare-fun lt!6918 () Unit!454)

(assert (=> b!21704 (= e!14110 lt!6918)))

(assert (=> b!21704 (= lt!6918 call!1445)))

(assert (=> b!21704 (= lt!6913 call!1438)))

(declare-fun res!13870 () Bool)

(assert (=> b!21704 (= res!13870 ((_ is Found!56) lt!6913))))

(assert (=> b!21704 (=> (not res!13870) (not e!14103))))

(assert (=> b!21704 e!14103))

(assert (= (and d!3757 c!2549) b!21687))

(assert (= (and d!3757 (not c!2549)) b!21701))

(assert (= (and b!21687 c!2553) b!21693))

(assert (= (and b!21687 (not c!2553)) b!21674))

(assert (= (or b!21693 b!21674) bm!1441))

(assert (= (or b!21693 b!21674) bm!1424))

(assert (= (or b!21693 b!21674) bm!1439))

(assert (= (and b!21701 c!2547) b!21696))

(assert (= (and b!21701 (not c!2547)) b!21694))

(assert (= (and b!21696 c!2552) b!21691))

(assert (= (and b!21696 (not c!2552)) b!21677))

(assert (= (and b!21691 res!13867) b!21685))

(assert (= (and b!21685 res!13872) b!21699))

(assert (= (and b!21677 c!2545) b!21692))

(assert (= (and b!21677 (not c!2545)) b!21689))

(assert (= (and b!21692 res!13863) b!21667))

(assert (= (and b!21667 res!13875) b!21688))

(assert (= (and b!21689 c!2546) b!21700))

(assert (= (and b!21689 (not c!2546)) b!21668))

(assert (= (and b!21700 res!13868) b!21697))

(assert (= (and b!21697 res!13871) b!21686))

(assert (= (or b!21692 b!21700) bm!1442))

(assert (= (or b!21688 b!21686) bm!1443))

(assert (= (or b!21685 bm!1442) bm!1438))

(assert (= (or b!21691 b!21677) bm!1426))

(assert (= (and b!21694 c!2550) b!21695))

(assert (= (and b!21694 (not c!2550)) b!21673))

(assert (= (and b!21673 c!2544) b!21702))

(assert (= (and b!21673 (not c!2544)) b!21678))

(assert (= (and b!21678 c!2551) b!21704))

(assert (= (and b!21678 (not c!2551)) b!21684))

(assert (= (and b!21704 res!13870) b!21682))

(assert (= (and b!21682 res!13862) b!21671))

(assert (= (and b!21684 c!2555) b!21690))

(assert (= (and b!21684 (not c!2555)) b!21672))

(assert (= (and b!21690 res!13874) b!21680))

(assert (= (and b!21680 res!13865) b!21669))

(assert (= (and b!21672 c!2554) b!21683))

(assert (= (and b!21672 (not c!2554)) b!21698))

(assert (= (and b!21683 res!13869) b!21681))

(assert (= (and b!21681 res!13873) b!21676))

(assert (= (or b!21690 b!21683) bm!1428))

(assert (= (or b!21669 b!21676) bm!1437))

(assert (= (or b!21682 bm!1428) bm!1444))

(assert (= (or b!21704 b!21684) bm!1432))

(assert (= (or b!21695 b!21702) bm!1433))

(assert (= (or b!21677 b!21684) bm!1440))

(assert (= (or b!21696 b!21678) bm!1425))

(assert (= (or b!21691 b!21704) bm!1434))

(assert (= (or bm!1426 bm!1432) bm!1435))

(assert (= (or bm!1438 bm!1444) bm!1427))

(assert (= (or bm!1443 bm!1437) bm!1422))

(assert (= (or b!21696 b!21678) bm!1436))

(assert (= (or bm!1441 b!21678) bm!1431))

(assert (= (or bm!1424 b!21678) bm!1423))

(assert (= (or bm!1439 b!21678) bm!1430))

(assert (= (and d!3757 res!13864) b!21703))

(assert (= (and b!21703 c!2548) b!21675))

(assert (= (and b!21703 (not c!2548)) b!21679))

(assert (= (and b!21675 res!13866) b!21670))

(assert (= (or b!21675 b!21670 b!21679) bm!1421))

(assert (= (or b!21670 b!21679) bm!1429))

(declare-fun m!15069 () Bool)

(assert (=> bm!1436 m!15069))

(declare-fun m!15071 () Bool)

(assert (=> bm!1436 m!15071))

(declare-fun m!15073 () Bool)

(assert (=> bm!1433 m!15073))

(declare-fun m!15075 () Bool)

(assert (=> b!21680 m!15075))

(declare-fun m!15077 () Bool)

(assert (=> b!21674 m!15077))

(declare-fun m!15079 () Bool)

(assert (=> bm!1423 m!15079))

(declare-fun m!15081 () Bool)

(assert (=> bm!1423 m!15081))

(declare-fun m!15083 () Bool)

(assert (=> bm!1427 m!15083))

(declare-fun m!15085 () Bool)

(assert (=> b!21670 m!15085))

(declare-fun m!15087 () Bool)

(assert (=> b!21671 m!15087))

(declare-fun m!15089 () Bool)

(assert (=> b!21675 m!15089))

(declare-fun m!15091 () Bool)

(assert (=> b!21697 m!15091))

(declare-fun m!15093 () Bool)

(assert (=> b!21699 m!15093))

(declare-fun m!15095 () Bool)

(assert (=> bm!1421 m!15095))

(declare-fun m!15097 () Bool)

(assert (=> b!21701 m!15097))

(declare-fun m!15099 () Bool)

(assert (=> b!21681 m!15099))

(declare-fun m!15101 () Bool)

(assert (=> bm!1434 m!15101))

(declare-fun m!15103 () Bool)

(assert (=> b!21678 m!15103))

(assert (=> b!21678 m!15079))

(declare-fun m!15105 () Bool)

(assert (=> b!21678 m!15105))

(declare-fun m!15107 () Bool)

(assert (=> b!21678 m!15107))

(declare-fun m!15109 () Bool)

(assert (=> bm!1425 m!15109))

(declare-fun m!15111 () Bool)

(assert (=> b!21693 m!15111))

(assert (=> bm!1435 m!15097))

(declare-fun m!15113 () Bool)

(assert (=> b!21667 m!15113))

(declare-fun m!15115 () Bool)

(assert (=> d!3757 m!15115))

(declare-fun m!15117 () Bool)

(assert (=> d!3757 m!15117))

(declare-fun m!15119 () Bool)

(assert (=> bm!1440 m!15119))

(declare-fun m!15121 () Bool)

(assert (=> bm!1429 m!15121))

(declare-fun m!15123 () Bool)

(assert (=> bm!1430 m!15123))

(declare-fun m!15125 () Bool)

(assert (=> bm!1422 m!15125))

(declare-fun m!15127 () Bool)

(assert (=> bm!1431 m!15127))

(assert (=> b!21422 d!3757))

(declare-fun bm!1445 () Bool)

(declare-fun call!1458 () ListLongMap!545)

(declare-fun lt!6939 () tuple2!888)

(assert (=> bm!1445 (= call!1458 (map!398 (_2!447 lt!6939)))))

(declare-fun b!21705 () Bool)

(declare-fun res!13889 () Bool)

(declare-fun e!14127 () Bool)

(assert (=> b!21705 (=> (not res!13889) (not e!14127))))

(declare-fun lt!6946 () SeekEntryResult!56)

(assert (=> b!21705 (= res!13889 (= (select (arr!580 (_keys!3140 (ite c!2483 (_2!447 lt!6680) lt!6678))) (index!2344 lt!6946)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!21706 () Bool)

(declare-fun e!14131 () Bool)

(assert (=> b!21706 (= e!14131 ((_ is Undefined!56) lt!6946))))

(declare-fun b!21707 () Bool)

(declare-fun e!14128 () Bool)

(declare-fun call!1455 () Bool)

(assert (=> b!21707 (= e!14128 (not call!1455))))

(declare-fun e!14119 () Bool)

(declare-fun call!1451 () ListLongMap!545)

(declare-fun b!21708 () Bool)

(assert (=> b!21708 (= e!14119 (= call!1458 (+!42 call!1451 (tuple2!891 (ite c!2483 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!2482 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000)) (ite c!2483 (minValue!1646 (v!1573 (underlying!104 thiss!938))) (ite c!2482 (zeroValue!1646 (v!1573 (underlying!104 thiss!938))) (minValue!1646 (v!1573 (underlying!104 thiss!938)))))))))))

(declare-fun call!1463 () Bool)

(declare-fun bm!1446 () Bool)

(assert (=> bm!1446 (= call!1463 (arrayContainsKey!0 (_keys!3140 (ite c!2483 (_2!447 lt!6680) lt!6678)) (ite c!2483 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!2482 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000)) #b00000000000000000000000000000000))))

(declare-fun lt!6934 () SeekEntryResult!56)

(declare-fun c!2561 () Bool)

(declare-fun bm!1447 () Bool)

(declare-fun call!1457 () ListLongMap!545)

(assert (=> bm!1447 (= call!1457 (getCurrentListMap!117 (_keys!3140 (ite c!2483 (_2!447 lt!6680) lt!6678)) (ite c!2561 (_values!1708 (ite c!2483 (_2!447 lt!6680) lt!6678)) (array!1222 (store (arr!579 (_values!1708 (ite c!2483 (_2!447 lt!6680) lt!6678))) (index!2345 lt!6934) (ValueCellFull!300 (ite c!2483 (minValue!1646 (v!1573 (underlying!104 thiss!938))) (ite c!2482 (zeroValue!1646 (v!1573 (underlying!104 thiss!938))) (minValue!1646 (v!1573 (underlying!104 thiss!938))))))) (size!672 (_values!1708 (ite c!2483 (_2!447 lt!6680) lt!6678))))) (mask!4692 (ite c!2483 (_2!447 lt!6680) lt!6678)) (extraKeys!1622 (ite c!2483 (_2!447 lt!6680) lt!6678)) (zeroValue!1646 (ite c!2483 (_2!447 lt!6680) lt!6678)) (minValue!1646 (ite c!2483 (_2!447 lt!6680) lt!6678)) #b00000000000000000000000000000000 (defaultEntry!1719 (ite c!2483 (_2!447 lt!6680) lt!6678))))))

(declare-fun bm!1448 () Bool)

(declare-fun call!1454 () ListLongMap!545)

(assert (=> bm!1448 (= call!1454 call!1457)))

(declare-fun lt!6940 () SeekEntryResult!56)

(declare-fun e!14123 () Bool)

(declare-fun b!21709 () Bool)

(assert (=> b!21709 (= e!14123 (= (select (arr!580 (_keys!3140 (ite c!2483 (_2!447 lt!6680) lt!6678))) (index!2345 lt!6940)) (ite c!2483 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!2482 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!21710 () Bool)

(declare-fun c!2566 () Bool)

(declare-fun lt!6948 () SeekEntryResult!56)

(assert (=> b!21710 (= c!2566 ((_ is MissingVacant!56) lt!6948))))

(declare-fun e!14133 () Bool)

(declare-fun e!14118 () Bool)

(assert (=> b!21710 (= e!14133 e!14118)))

(declare-fun b!21711 () Bool)

(declare-fun e!14120 () tuple2!888)

(declare-fun e!14134 () tuple2!888)

(assert (=> b!21711 (= e!14120 e!14134)))

(declare-fun c!2556 () Bool)

(assert (=> b!21711 (= c!2556 ((_ is MissingZero!56) lt!6934))))

(declare-fun b!21712 () Bool)

(declare-fun lt!6936 () Unit!454)

(declare-fun lt!6933 () Unit!454)

(assert (=> b!21712 (= lt!6936 lt!6933)))

(declare-fun call!1448 () ListLongMap!545)

(declare-fun call!1453 () ListLongMap!545)

(assert (=> b!21712 (= call!1448 call!1453)))

(declare-fun lt!6938 () (_ BitVec 32))

(assert (=> b!21712 (= lt!6933 (lemmaChangeLongMinValueKeyThenAddPairToListMap!7 (_keys!3140 (ite c!2483 (_2!447 lt!6680) lt!6678)) (_values!1708 (ite c!2483 (_2!447 lt!6680) lt!6678)) (mask!4692 (ite c!2483 (_2!447 lt!6680) lt!6678)) (extraKeys!1622 (ite c!2483 (_2!447 lt!6680) lt!6678)) lt!6938 (zeroValue!1646 (ite c!2483 (_2!447 lt!6680) lt!6678)) (minValue!1646 (ite c!2483 (_2!447 lt!6680) lt!6678)) (ite c!2483 (minValue!1646 (v!1573 (underlying!104 thiss!938))) (ite c!2482 (zeroValue!1646 (v!1573 (underlying!104 thiss!938))) (minValue!1646 (v!1573 (underlying!104 thiss!938))))) (defaultEntry!1719 (ite c!2483 (_2!447 lt!6680) lt!6678))))))

(assert (=> b!21712 (= lt!6938 (bvor (extraKeys!1622 (ite c!2483 (_2!447 lt!6680) lt!6678)) #b00000000000000000000000000000010))))

(declare-fun e!14135 () tuple2!888)

(assert (=> b!21712 (= e!14135 (tuple2!889 true (LongMapFixedSize!187 (defaultEntry!1719 (ite c!2483 (_2!447 lt!6680) lt!6678)) (mask!4692 (ite c!2483 (_2!447 lt!6680) lt!6678)) (bvor (extraKeys!1622 (ite c!2483 (_2!447 lt!6680) lt!6678)) #b00000000000000000000000000000010) (zeroValue!1646 (ite c!2483 (_2!447 lt!6680) lt!6678)) (ite c!2483 (minValue!1646 (v!1573 (underlying!104 thiss!938))) (ite c!2482 (zeroValue!1646 (v!1573 (underlying!104 thiss!938))) (minValue!1646 (v!1573 (underlying!104 thiss!938))))) (_size!134 (ite c!2483 (_2!447 lt!6680) lt!6678)) (_keys!3140 (ite c!2483 (_2!447 lt!6680) lt!6678)) (_values!1708 (ite c!2483 (_2!447 lt!6680) lt!6678)) (_vacant!134 (ite c!2483 (_2!447 lt!6680) lt!6678)))))))

(declare-fun c!2559 () Bool)

(declare-fun bm!1449 () Bool)

(declare-fun lt!6937 () array!1221)

(declare-fun call!1456 () ListLongMap!545)

(assert (=> bm!1449 (= call!1456 (getCurrentListMap!117 (_keys!3140 (ite c!2483 (_2!447 lt!6680) lt!6678)) (ite c!2559 (_values!1708 (ite c!2483 (_2!447 lt!6680) lt!6678)) lt!6937) (mask!4692 (ite c!2483 (_2!447 lt!6680) lt!6678)) (extraKeys!1622 (ite c!2483 (_2!447 lt!6680) lt!6678)) (zeroValue!1646 (ite c!2483 (_2!447 lt!6680) lt!6678)) (minValue!1646 (ite c!2483 (_2!447 lt!6680) lt!6678)) #b00000000000000000000000000000000 (defaultEntry!1719 (ite c!2483 (_2!447 lt!6680) lt!6678))))))

(declare-fun b!21713 () Bool)

(declare-fun e!14124 () Bool)

(assert (=> b!21713 (= e!14124 e!14119)))

(declare-fun res!13880 () Bool)

(assert (=> b!21713 (= res!13880 (contains!215 call!1458 (ite c!2483 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!2482 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!21713 (=> (not res!13880) (not e!14119))))

(declare-fun bm!1450 () Bool)

(declare-fun call!1450 () SeekEntryResult!56)

(declare-fun call!1466 () SeekEntryResult!56)

(assert (=> bm!1450 (= call!1450 call!1466)))

(declare-fun c!2567 () Bool)

(declare-fun bm!1451 () Bool)

(declare-fun lt!6927 () SeekEntryResult!56)

(declare-fun c!2564 () Bool)

(declare-fun call!1459 () Bool)

(declare-fun c!2563 () Bool)

(declare-fun c!2557 () Bool)

(assert (=> bm!1451 (= call!1459 (inRange!0 (ite c!2559 (ite c!2564 (index!2345 lt!6927) (ite c!2557 (index!2344 lt!6946) (index!2347 lt!6946))) (ite c!2563 (index!2345 lt!6940) (ite c!2567 (index!2344 lt!6948) (index!2347 lt!6948)))) (mask!4692 (ite c!2483 (_2!447 lt!6680) lt!6678))))))

(declare-fun bm!1452 () Bool)

(declare-fun call!1464 () Bool)

(declare-fun call!1468 () Bool)

(assert (=> bm!1452 (= call!1464 call!1468)))

(declare-fun bm!1453 () Bool)

(assert (=> bm!1453 (= call!1451 (map!398 (ite c!2483 (_2!447 lt!6680) lt!6678)))))

(declare-fun d!3759 () Bool)

(declare-fun e!14122 () Bool)

(assert (=> d!3759 e!14122))

(declare-fun res!13878 () Bool)

(assert (=> d!3759 (=> (not res!13878) (not e!14122))))

(assert (=> d!3759 (= res!13878 (valid!98 (_2!447 lt!6939)))))

(declare-fun e!14121 () tuple2!888)

(assert (=> d!3759 (= lt!6939 e!14121)))

(assert (=> d!3759 (= c!2561 (= (ite c!2483 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!2482 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000)) (bvneg (ite c!2483 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!2482 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!3759 (valid!98 (ite c!2483 (_2!447 lt!6680) lt!6678))))

(assert (=> d!3759 (= (update!25 (ite c!2483 (_2!447 lt!6680) lt!6678) (ite c!2483 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!2482 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000)) (ite c!2483 (minValue!1646 (v!1573 (underlying!104 thiss!938))) (ite c!2482 (zeroValue!1646 (v!1573 (underlying!104 thiss!938))) (minValue!1646 (v!1573 (underlying!104 thiss!938)))))) lt!6939)))

(declare-fun b!21714 () Bool)

(declare-fun e!14126 () Bool)

(assert (=> b!21714 (= e!14126 (not call!1455))))

(declare-fun b!21715 () Bool)

(declare-fun e!14136 () Unit!454)

(declare-fun lt!6942 () Unit!454)

(assert (=> b!21715 (= e!14136 lt!6942)))

(declare-fun call!1471 () Unit!454)

(assert (=> b!21715 (= lt!6942 call!1471)))

(assert (=> b!21715 (= lt!6946 call!1450)))

(assert (=> b!21715 (= c!2557 ((_ is MissingZero!56) lt!6946))))

(declare-fun e!14137 () Bool)

(assert (=> b!21715 e!14137))

(declare-fun b!21716 () Bool)

(declare-fun lt!6952 () Unit!454)

(declare-fun lt!6944 () Unit!454)

(assert (=> b!21716 (= lt!6952 lt!6944)))

(declare-fun call!1460 () Bool)

(assert (=> b!21716 call!1460))

(assert (=> b!21716 (= lt!6944 (lemmaValidKeyInArrayIsInListMap!7 (_keys!3140 (ite c!2483 (_2!447 lt!6680) lt!6678)) lt!6937 (mask!4692 (ite c!2483 (_2!447 lt!6680) lt!6678)) (extraKeys!1622 (ite c!2483 (_2!447 lt!6680) lt!6678)) (zeroValue!1646 (ite c!2483 (_2!447 lt!6680) lt!6678)) (minValue!1646 (ite c!2483 (_2!447 lt!6680) lt!6678)) (index!2345 lt!6934) (defaultEntry!1719 (ite c!2483 (_2!447 lt!6680) lt!6678))))))

(assert (=> b!21716 (= lt!6937 (array!1222 (store (arr!579 (_values!1708 (ite c!2483 (_2!447 lt!6680) lt!6678))) (index!2345 lt!6934) (ValueCellFull!300 (ite c!2483 (minValue!1646 (v!1573 (underlying!104 thiss!938))) (ite c!2482 (zeroValue!1646 (v!1573 (underlying!104 thiss!938))) (minValue!1646 (v!1573 (underlying!104 thiss!938))))))) (size!672 (_values!1708 (ite c!2483 (_2!447 lt!6680) lt!6678)))))))

(declare-fun lt!6941 () Unit!454)

(declare-fun lt!6953 () Unit!454)

(assert (=> b!21716 (= lt!6941 lt!6953)))

(declare-fun call!1452 () ListLongMap!545)

(assert (=> b!21716 (= call!1452 call!1457)))

(assert (=> b!21716 (= lt!6953 (lemmaChangeValueExistingKeyToArrayThenAddPairToListMap!7 (_keys!3140 (ite c!2483 (_2!447 lt!6680) lt!6678)) (_values!1708 (ite c!2483 (_2!447 lt!6680) lt!6678)) (mask!4692 (ite c!2483 (_2!447 lt!6680) lt!6678)) (extraKeys!1622 (ite c!2483 (_2!447 lt!6680) lt!6678)) (zeroValue!1646 (ite c!2483 (_2!447 lt!6680) lt!6678)) (minValue!1646 (ite c!2483 (_2!447 lt!6680) lt!6678)) (index!2345 lt!6934) (ite c!2483 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!2482 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000)) (ite c!2483 (minValue!1646 (v!1573 (underlying!104 thiss!938))) (ite c!2482 (zeroValue!1646 (v!1573 (underlying!104 thiss!938))) (minValue!1646 (v!1573 (underlying!104 thiss!938))))) (defaultEntry!1719 (ite c!2483 (_2!447 lt!6680) lt!6678))))))

(declare-fun lt!6951 () Unit!454)

(declare-fun e!14130 () Unit!454)

(assert (=> b!21716 (= lt!6951 e!14130)))

(declare-fun call!1461 () ListLongMap!545)

(assert (=> b!21716 (= c!2563 (contains!215 call!1461 (ite c!2483 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!2482 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!21716 (= e!14134 (tuple2!889 true (LongMapFixedSize!187 (defaultEntry!1719 (ite c!2483 (_2!447 lt!6680) lt!6678)) (mask!4692 (ite c!2483 (_2!447 lt!6680) lt!6678)) (extraKeys!1622 (ite c!2483 (_2!447 lt!6680) lt!6678)) (zeroValue!1646 (ite c!2483 (_2!447 lt!6680) lt!6678)) (minValue!1646 (ite c!2483 (_2!447 lt!6680) lt!6678)) (_size!134 (ite c!2483 (_2!447 lt!6680) lt!6678)) (_keys!3140 (ite c!2483 (_2!447 lt!6680) lt!6678)) (array!1222 (store (arr!579 (_values!1708 (ite c!2483 (_2!447 lt!6680) lt!6678))) (index!2345 lt!6934) (ValueCellFull!300 (ite c!2483 (minValue!1646 (v!1573 (underlying!104 thiss!938))) (ite c!2482 (zeroValue!1646 (v!1573 (underlying!104 thiss!938))) (minValue!1646 (v!1573 (underlying!104 thiss!938))))))) (size!672 (_values!1708 (ite c!2483 (_2!447 lt!6680) lt!6678)))) (_vacant!134 (ite c!2483 (_2!447 lt!6680) lt!6678)))))))

(declare-fun b!21717 () Bool)

(assert (=> b!21717 (= e!14124 (= call!1458 call!1451))))

(declare-fun bm!1454 () Bool)

(declare-fun c!2565 () Bool)

(assert (=> bm!1454 (= call!1452 (+!42 (ite c!2561 call!1454 call!1461) (ite c!2561 (ite c!2565 (tuple2!891 #b0000000000000000000000000000000000000000000000000000000000000000 (ite c!2483 (minValue!1646 (v!1573 (underlying!104 thiss!938))) (ite c!2482 (zeroValue!1646 (v!1573 (underlying!104 thiss!938))) (minValue!1646 (v!1573 (underlying!104 thiss!938)))))) (tuple2!891 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!2483 (minValue!1646 (v!1573 (underlying!104 thiss!938))) (ite c!2482 (zeroValue!1646 (v!1573 (underlying!104 thiss!938))) (minValue!1646 (v!1573 (underlying!104 thiss!938))))))) (tuple2!891 (ite c!2483 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!2482 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000)) (ite c!2483 (minValue!1646 (v!1573 (underlying!104 thiss!938))) (ite c!2482 (zeroValue!1646 (v!1573 (underlying!104 thiss!938))) (minValue!1646 (v!1573 (underlying!104 thiss!938)))))))))))

(declare-fun b!21718 () Bool)

(declare-fun res!13879 () Bool)

(assert (=> b!21718 (=> (not res!13879) (not e!14128))))

(assert (=> b!21718 (= res!13879 (= (select (arr!580 (_keys!3140 (ite c!2483 (_2!447 lt!6680) lt!6678))) (index!2344 lt!6948)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!21719 () Bool)

(declare-fun res!13887 () Bool)

(assert (=> b!21719 (= res!13887 (= (select (arr!580 (_keys!3140 (ite c!2483 (_2!447 lt!6680) lt!6678))) (index!2347 lt!6948)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!21719 (=> (not res!13887) (not e!14126))))

(declare-fun b!21720 () Bool)

(declare-fun res!13876 () Bool)

(assert (=> b!21720 (= res!13876 call!1468)))

(assert (=> b!21720 (=> (not res!13876) (not e!14123))))

(declare-fun b!21721 () Bool)

(assert (=> b!21721 (= e!14118 e!14126)))

(declare-fun res!13883 () Bool)

(assert (=> b!21721 (= res!13883 call!1464)))

(assert (=> b!21721 (=> (not res!13883) (not e!14126))))

(declare-fun bm!1455 () Bool)

(declare-fun lt!6949 () (_ BitVec 32))

(assert (=> bm!1455 (= call!1461 (getCurrentListMap!117 (_keys!3140 (ite c!2483 (_2!447 lt!6680) lt!6678)) (_values!1708 (ite c!2483 (_2!447 lt!6680) lt!6678)) (mask!4692 (ite c!2483 (_2!447 lt!6680) lt!6678)) (ite c!2561 (ite c!2565 lt!6949 lt!6938) (extraKeys!1622 (ite c!2483 (_2!447 lt!6680) lt!6678))) (ite (and c!2561 c!2565) (ite c!2483 (minValue!1646 (v!1573 (underlying!104 thiss!938))) (ite c!2482 (zeroValue!1646 (v!1573 (underlying!104 thiss!938))) (minValue!1646 (v!1573 (underlying!104 thiss!938))))) (zeroValue!1646 (ite c!2483 (_2!447 lt!6680) lt!6678))) (ite c!2561 (ite c!2565 (minValue!1646 (ite c!2483 (_2!447 lt!6680) lt!6678)) (ite c!2483 (minValue!1646 (v!1573 (underlying!104 thiss!938))) (ite c!2482 (zeroValue!1646 (v!1573 (underlying!104 thiss!938))) (minValue!1646 (v!1573 (underlying!104 thiss!938)))))) (minValue!1646 (ite c!2483 (_2!447 lt!6680) lt!6678))) #b00000000000000000000000000000000 (defaultEntry!1719 (ite c!2483 (_2!447 lt!6680) lt!6678))))))

(declare-fun b!21722 () Bool)

(declare-fun Unit!464 () Unit!454)

(assert (=> b!21722 (= e!14130 Unit!464)))

(declare-fun lt!6943 () Unit!454)

(assert (=> b!21722 (= lt!6943 call!1471)))

(declare-fun call!1462 () SeekEntryResult!56)

(assert (=> b!21722 (= lt!6948 call!1462)))

(assert (=> b!21722 (= c!2567 ((_ is MissingZero!56) lt!6948))))

(assert (=> b!21722 e!14133))

(declare-fun lt!6947 () Unit!454)

(assert (=> b!21722 (= lt!6947 lt!6943)))

(assert (=> b!21722 false))

(declare-fun b!21723 () Bool)

(declare-fun res!13886 () Bool)

(declare-fun call!1449 () Bool)

(assert (=> b!21723 (= res!13886 call!1449)))

(declare-fun e!14132 () Bool)

(assert (=> b!21723 (=> (not res!13886) (not e!14132))))

(declare-fun b!21724 () Bool)

(declare-fun e!14125 () Bool)

(declare-fun call!1467 () Bool)

(assert (=> b!21724 (= e!14125 (not call!1467))))

(declare-fun bm!1456 () Bool)

(assert (=> bm!1456 (= call!1462 call!1466)))

(declare-fun b!21725 () Bool)

(assert (=> b!21725 (= e!14121 e!14135)))

(assert (=> b!21725 (= c!2565 (= (ite c!2483 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!2482 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!21726 () Bool)

(assert (=> b!21726 (= e!14127 (not call!1467))))

(declare-fun b!21727 () Bool)

(declare-fun c!2558 () Bool)

(assert (=> b!21727 (= c!2558 ((_ is MissingVacant!56) lt!6946))))

(assert (=> b!21727 (= e!14137 e!14131)))

(declare-fun c!2562 () Bool)

(declare-fun call!1470 () tuple2!888)

(declare-fun bm!1457 () Bool)

(assert (=> bm!1457 (= call!1470 (updateHelperNewKey!7 (ite c!2483 (_2!447 lt!6680) lt!6678) (ite c!2483 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!2482 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000)) (ite c!2483 (minValue!1646 (v!1573 (underlying!104 thiss!938))) (ite c!2482 (zeroValue!1646 (v!1573 (underlying!104 thiss!938))) (minValue!1646 (v!1573 (underlying!104 thiss!938))))) (ite c!2562 (index!2347 lt!6934) (index!2344 lt!6934))))))

(declare-fun b!21728 () Bool)

(declare-fun res!13888 () Bool)

(assert (=> b!21728 (=> (not res!13888) (not e!14128))))

(assert (=> b!21728 (= res!13888 call!1464)))

(assert (=> b!21728 (= e!14133 e!14128)))

(declare-fun call!1469 () Unit!454)

(declare-fun bm!1458 () Bool)

(assert (=> bm!1458 (= call!1469 (lemmaInListMapThenSeekEntryOrOpenFindsIt!7 (_keys!3140 (ite c!2483 (_2!447 lt!6680) lt!6678)) (_values!1708 (ite c!2483 (_2!447 lt!6680) lt!6678)) (mask!4692 (ite c!2483 (_2!447 lt!6680) lt!6678)) (extraKeys!1622 (ite c!2483 (_2!447 lt!6680) lt!6678)) (zeroValue!1646 (ite c!2483 (_2!447 lt!6680) lt!6678)) (minValue!1646 (ite c!2483 (_2!447 lt!6680) lt!6678)) (ite c!2483 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!2482 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000)) (defaultEntry!1719 (ite c!2483 (_2!447 lt!6680) lt!6678))))))

(declare-fun bm!1459 () Bool)

(assert (=> bm!1459 (= call!1466 (seekEntryOrOpen!0 (ite c!2483 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!2482 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000)) (_keys!3140 (ite c!2483 (_2!447 lt!6680) lt!6678)) (mask!4692 (ite c!2483 (_2!447 lt!6680) lt!6678))))))

(declare-fun bm!1460 () Bool)

(assert (=> bm!1460 (= call!1460 (contains!215 call!1456 (ite c!2559 (ite c!2483 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!2482 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000)) (select (arr!580 (_keys!3140 (ite c!2483 (_2!447 lt!6680) lt!6678))) (index!2345 lt!6934)))))))

(declare-fun b!21729 () Bool)

(declare-fun Unit!465 () Unit!454)

(assert (=> b!21729 (= e!14136 Unit!465)))

(declare-fun lt!6935 () Unit!454)

(assert (=> b!21729 (= lt!6935 call!1469)))

(assert (=> b!21729 (= lt!6927 call!1450)))

(declare-fun res!13881 () Bool)

(assert (=> b!21729 (= res!13881 ((_ is Found!56) lt!6927))))

(assert (=> b!21729 (=> (not res!13881) (not e!14132))))

(assert (=> b!21729 e!14132))

(declare-fun lt!6950 () Unit!454)

(assert (=> b!21729 (= lt!6950 lt!6935)))

(assert (=> b!21729 false))

(declare-fun b!21730 () Bool)

(declare-fun res!13877 () Bool)

(assert (=> b!21730 (=> (not res!13877) (not e!14127))))

(declare-fun call!1465 () Bool)

(assert (=> b!21730 (= res!13877 call!1465)))

(assert (=> b!21730 (= e!14137 e!14127)))

(declare-fun bm!1461 () Bool)

(assert (=> bm!1461 (= call!1455 call!1463)))

(declare-fun b!21731 () Bool)

(declare-fun lt!6930 () Unit!454)

(declare-fun lt!6929 () Unit!454)

(assert (=> b!21731 (= lt!6930 lt!6929)))

(assert (=> b!21731 (= call!1448 call!1453)))

(assert (=> b!21731 (= lt!6929 (lemmaChangeZeroKeyThenAddPairToListMap!7 (_keys!3140 (ite c!2483 (_2!447 lt!6680) lt!6678)) (_values!1708 (ite c!2483 (_2!447 lt!6680) lt!6678)) (mask!4692 (ite c!2483 (_2!447 lt!6680) lt!6678)) (extraKeys!1622 (ite c!2483 (_2!447 lt!6680) lt!6678)) lt!6949 (zeroValue!1646 (ite c!2483 (_2!447 lt!6680) lt!6678)) (ite c!2483 (minValue!1646 (v!1573 (underlying!104 thiss!938))) (ite c!2482 (zeroValue!1646 (v!1573 (underlying!104 thiss!938))) (minValue!1646 (v!1573 (underlying!104 thiss!938))))) (minValue!1646 (ite c!2483 (_2!447 lt!6680) lt!6678)) (defaultEntry!1719 (ite c!2483 (_2!447 lt!6680) lt!6678))))))

(assert (=> b!21731 (= lt!6949 (bvor (extraKeys!1622 (ite c!2483 (_2!447 lt!6680) lt!6678)) #b00000000000000000000000000000001))))

(assert (=> b!21731 (= e!14135 (tuple2!889 true (LongMapFixedSize!187 (defaultEntry!1719 (ite c!2483 (_2!447 lt!6680) lt!6678)) (mask!4692 (ite c!2483 (_2!447 lt!6680) lt!6678)) (bvor (extraKeys!1622 (ite c!2483 (_2!447 lt!6680) lt!6678)) #b00000000000000000000000000000001) (ite c!2483 (minValue!1646 (v!1573 (underlying!104 thiss!938))) (ite c!2482 (zeroValue!1646 (v!1573 (underlying!104 thiss!938))) (minValue!1646 (v!1573 (underlying!104 thiss!938))))) (minValue!1646 (ite c!2483 (_2!447 lt!6680) lt!6678)) (_size!134 (ite c!2483 (_2!447 lt!6680) lt!6678)) (_keys!3140 (ite c!2483 (_2!447 lt!6680) lt!6678)) (_values!1708 (ite c!2483 (_2!447 lt!6680) lt!6678)) (_vacant!134 (ite c!2483 (_2!447 lt!6680) lt!6678)))))))

(declare-fun bm!1462 () Bool)

(assert (=> bm!1462 (= call!1449 call!1459)))

(declare-fun b!21732 () Bool)

(assert (=> b!21732 (= c!2562 ((_ is MissingVacant!56) lt!6934))))

(declare-fun e!14129 () tuple2!888)

(assert (=> b!21732 (= e!14129 e!14120)))

(declare-fun bm!1463 () Bool)

(assert (=> bm!1463 (= call!1448 call!1452)))

(declare-fun bm!1464 () Bool)

(assert (=> bm!1464 (= call!1471 (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!7 (_keys!3140 (ite c!2483 (_2!447 lt!6680) lt!6678)) (_values!1708 (ite c!2483 (_2!447 lt!6680) lt!6678)) (mask!4692 (ite c!2483 (_2!447 lt!6680) lt!6678)) (extraKeys!1622 (ite c!2483 (_2!447 lt!6680) lt!6678)) (zeroValue!1646 (ite c!2483 (_2!447 lt!6680) lt!6678)) (minValue!1646 (ite c!2483 (_2!447 lt!6680) lt!6678)) (ite c!2483 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!2482 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000)) (defaultEntry!1719 (ite c!2483 (_2!447 lt!6680) lt!6678))))))

(declare-fun bm!1465 () Bool)

(assert (=> bm!1465 (= call!1453 call!1461)))

(declare-fun b!21733 () Bool)

(declare-fun lt!6928 () tuple2!888)

(assert (=> b!21733 (= e!14120 (tuple2!889 (_1!447 lt!6928) (_2!447 lt!6928)))))

(assert (=> b!21733 (= lt!6928 call!1470)))

(declare-fun bm!1466 () Bool)

(assert (=> bm!1466 (= call!1465 call!1449)))

(declare-fun b!21734 () Bool)

(declare-fun lt!6932 () Unit!454)

(assert (=> b!21734 (= lt!6932 e!14136)))

(assert (=> b!21734 (= c!2564 call!1460)))

(assert (=> b!21734 (= e!14129 (tuple2!889 false (ite c!2483 (_2!447 lt!6680) lt!6678)))))

(declare-fun b!21735 () Bool)

(declare-fun res!13885 () Bool)

(assert (=> b!21735 (= res!13885 (= (select (arr!580 (_keys!3140 (ite c!2483 (_2!447 lt!6680) lt!6678))) (index!2347 lt!6946)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!21735 (=> (not res!13885) (not e!14125))))

(declare-fun b!21736 () Bool)

(assert (=> b!21736 (= e!14118 ((_ is Undefined!56) lt!6948))))

(declare-fun b!21737 () Bool)

(assert (=> b!21737 (= e!14132 (= (select (arr!580 (_keys!3140 (ite c!2483 (_2!447 lt!6680) lt!6678))) (index!2345 lt!6927)) (ite c!2483 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!2482 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!21738 () Bool)

(assert (=> b!21738 (= e!14131 e!14125)))

(declare-fun res!13882 () Bool)

(assert (=> b!21738 (= res!13882 call!1465)))

(assert (=> b!21738 (=> (not res!13882) (not e!14125))))

(declare-fun bm!1467 () Bool)

(assert (=> bm!1467 (= call!1467 call!1463)))

(declare-fun bm!1468 () Bool)

(assert (=> bm!1468 (= call!1468 call!1459)))

(declare-fun b!21739 () Bool)

(assert (=> b!21739 (= e!14121 e!14129)))

(assert (=> b!21739 (= lt!6934 (seekEntryOrOpen!0 (ite c!2483 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!2482 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000)) (_keys!3140 (ite c!2483 (_2!447 lt!6680) lt!6678)) (mask!4692 (ite c!2483 (_2!447 lt!6680) lt!6678))))))

(assert (=> b!21739 (= c!2559 ((_ is Undefined!56) lt!6934))))

(declare-fun b!21740 () Bool)

(declare-fun lt!6931 () tuple2!888)

(assert (=> b!21740 (= lt!6931 call!1470)))

(assert (=> b!21740 (= e!14134 (tuple2!889 (_1!447 lt!6931) (_2!447 lt!6931)))))

(declare-fun b!21741 () Bool)

(assert (=> b!21741 (= e!14122 e!14124)))

(declare-fun c!2560 () Bool)

(assert (=> b!21741 (= c!2560 (_1!447 lt!6939))))

(declare-fun b!21742 () Bool)

(declare-fun lt!6945 () Unit!454)

(assert (=> b!21742 (= e!14130 lt!6945)))

(assert (=> b!21742 (= lt!6945 call!1469)))

(assert (=> b!21742 (= lt!6940 call!1462)))

(declare-fun res!13884 () Bool)

(assert (=> b!21742 (= res!13884 ((_ is Found!56) lt!6940))))

(assert (=> b!21742 (=> (not res!13884) (not e!14123))))

(assert (=> b!21742 e!14123))

(assert (= (and d!3759 c!2561) b!21725))

(assert (= (and d!3759 (not c!2561)) b!21739))

(assert (= (and b!21725 c!2565) b!21731))

(assert (= (and b!21725 (not c!2565)) b!21712))

(assert (= (or b!21731 b!21712) bm!1465))

(assert (= (or b!21731 b!21712) bm!1448))

(assert (= (or b!21731 b!21712) bm!1463))

(assert (= (and b!21739 c!2559) b!21734))

(assert (= (and b!21739 (not c!2559)) b!21732))

(assert (= (and b!21734 c!2564) b!21729))

(assert (= (and b!21734 (not c!2564)) b!21715))

(assert (= (and b!21729 res!13881) b!21723))

(assert (= (and b!21723 res!13886) b!21737))

(assert (= (and b!21715 c!2557) b!21730))

(assert (= (and b!21715 (not c!2557)) b!21727))

(assert (= (and b!21730 res!13877) b!21705))

(assert (= (and b!21705 res!13889) b!21726))

(assert (= (and b!21727 c!2558) b!21738))

(assert (= (and b!21727 (not c!2558)) b!21706))

(assert (= (and b!21738 res!13882) b!21735))

(assert (= (and b!21735 res!13885) b!21724))

(assert (= (or b!21730 b!21738) bm!1466))

(assert (= (or b!21726 b!21724) bm!1467))

(assert (= (or b!21723 bm!1466) bm!1462))

(assert (= (or b!21729 b!21715) bm!1450))

(assert (= (and b!21732 c!2562) b!21733))

(assert (= (and b!21732 (not c!2562)) b!21711))

(assert (= (and b!21711 c!2556) b!21740))

(assert (= (and b!21711 (not c!2556)) b!21716))

(assert (= (and b!21716 c!2563) b!21742))

(assert (= (and b!21716 (not c!2563)) b!21722))

(assert (= (and b!21742 res!13884) b!21720))

(assert (= (and b!21720 res!13876) b!21709))

(assert (= (and b!21722 c!2567) b!21728))

(assert (= (and b!21722 (not c!2567)) b!21710))

(assert (= (and b!21728 res!13888) b!21718))

(assert (= (and b!21718 res!13879) b!21707))

(assert (= (and b!21710 c!2566) b!21721))

(assert (= (and b!21710 (not c!2566)) b!21736))

(assert (= (and b!21721 res!13883) b!21719))

(assert (= (and b!21719 res!13887) b!21714))

(assert (= (or b!21728 b!21721) bm!1452))

(assert (= (or b!21707 b!21714) bm!1461))

(assert (= (or b!21720 bm!1452) bm!1468))

(assert (= (or b!21742 b!21722) bm!1456))

(assert (= (or b!21733 b!21740) bm!1457))

(assert (= (or b!21715 b!21722) bm!1464))

(assert (= (or b!21734 b!21716) bm!1449))

(assert (= (or b!21729 b!21742) bm!1458))

(assert (= (or bm!1450 bm!1456) bm!1459))

(assert (= (or bm!1462 bm!1468) bm!1451))

(assert (= (or bm!1467 bm!1461) bm!1446))

(assert (= (or b!21734 b!21716) bm!1460))

(assert (= (or bm!1465 b!21716) bm!1455))

(assert (= (or bm!1448 b!21716) bm!1447))

(assert (= (or bm!1463 b!21716) bm!1454))

(assert (= (and d!3759 res!13878) b!21741))

(assert (= (and b!21741 c!2560) b!21713))

(assert (= (and b!21741 (not c!2560)) b!21717))

(assert (= (and b!21713 res!13880) b!21708))

(assert (= (or b!21713 b!21708 b!21717) bm!1445))

(assert (= (or b!21708 b!21717) bm!1453))

(declare-fun m!15129 () Bool)

(assert (=> bm!1460 m!15129))

(declare-fun m!15131 () Bool)

(assert (=> bm!1460 m!15131))

(declare-fun m!15133 () Bool)

(assert (=> bm!1457 m!15133))

(declare-fun m!15135 () Bool)

(assert (=> b!21718 m!15135))

(declare-fun m!15137 () Bool)

(assert (=> b!21712 m!15137))

(declare-fun m!15139 () Bool)

(assert (=> bm!1447 m!15139))

(declare-fun m!15141 () Bool)

(assert (=> bm!1447 m!15141))

(declare-fun m!15143 () Bool)

(assert (=> bm!1451 m!15143))

(declare-fun m!15145 () Bool)

(assert (=> b!21708 m!15145))

(declare-fun m!15147 () Bool)

(assert (=> b!21709 m!15147))

(declare-fun m!15149 () Bool)

(assert (=> b!21713 m!15149))

(declare-fun m!15151 () Bool)

(assert (=> b!21735 m!15151))

(declare-fun m!15153 () Bool)

(assert (=> b!21737 m!15153))

(declare-fun m!15155 () Bool)

(assert (=> bm!1445 m!15155))

(declare-fun m!15157 () Bool)

(assert (=> b!21739 m!15157))

(declare-fun m!15159 () Bool)

(assert (=> b!21719 m!15159))

(declare-fun m!15161 () Bool)

(assert (=> bm!1458 m!15161))

(declare-fun m!15163 () Bool)

(assert (=> b!21716 m!15163))

(assert (=> b!21716 m!15139))

(declare-fun m!15165 () Bool)

(assert (=> b!21716 m!15165))

(declare-fun m!15167 () Bool)

(assert (=> b!21716 m!15167))

(declare-fun m!15169 () Bool)

(assert (=> bm!1449 m!15169))

(declare-fun m!15171 () Bool)

(assert (=> b!21731 m!15171))

(assert (=> bm!1459 m!15157))

(declare-fun m!15173 () Bool)

(assert (=> b!21705 m!15173))

(declare-fun m!15175 () Bool)

(assert (=> d!3759 m!15175))

(declare-fun m!15177 () Bool)

(assert (=> d!3759 m!15177))

(declare-fun m!15179 () Bool)

(assert (=> bm!1464 m!15179))

(declare-fun m!15181 () Bool)

(assert (=> bm!1453 m!15181))

(declare-fun m!15183 () Bool)

(assert (=> bm!1454 m!15183))

(declare-fun m!15185 () Bool)

(assert (=> bm!1446 m!15185))

(declare-fun m!15187 () Bool)

(assert (=> bm!1455 m!15187))

(assert (=> bm!1345 d!3759))

(declare-fun mapNonEmpty!985 () Bool)

(declare-fun mapRes!985 () Bool)

(declare-fun tp!3451 () Bool)

(declare-fun e!14142 () Bool)

(assert (=> mapNonEmpty!985 (= mapRes!985 (and tp!3451 e!14142))))

(declare-fun mapKey!985 () (_ BitVec 32))

(declare-fun mapValue!985 () ValueCell!300)

(declare-fun mapRest!985 () (Array (_ BitVec 32) ValueCell!300))

(assert (=> mapNonEmpty!985 (= mapRest!979 (store mapRest!985 mapKey!985 mapValue!985))))

(declare-fun condMapEmpty!985 () Bool)

(declare-fun mapDefault!985 () ValueCell!300)

(assert (=> mapNonEmpty!979 (= condMapEmpty!985 (= mapRest!979 ((as const (Array (_ BitVec 32) ValueCell!300)) mapDefault!985)))))

(declare-fun e!14143 () Bool)

(assert (=> mapNonEmpty!979 (= tp!3442 (and e!14143 mapRes!985))))

(declare-fun b!21749 () Bool)

(assert (=> b!21749 (= e!14142 tp_is_empty!999)))

(declare-fun b!21750 () Bool)

(assert (=> b!21750 (= e!14143 tp_is_empty!999)))

(declare-fun mapIsEmpty!985 () Bool)

(assert (=> mapIsEmpty!985 mapRes!985))

(assert (= (and mapNonEmpty!979 condMapEmpty!985) mapIsEmpty!985))

(assert (= (and mapNonEmpty!979 (not condMapEmpty!985)) mapNonEmpty!985))

(assert (= (and mapNonEmpty!985 ((_ is ValueCellFull!300) mapValue!985)) b!21749))

(assert (= (and mapNonEmpty!979 ((_ is ValueCellFull!300) mapDefault!985)) b!21750))

(declare-fun m!15189 () Bool)

(assert (=> mapNonEmpty!985 m!15189))

(declare-fun b_lambda!1531 () Bool)

(assert (= b_lambda!1529 (or (and b!21424 b_free!735) b_lambda!1531)))

(declare-fun b_lambda!1533 () Bool)

(assert (= b_lambda!1527 (or (and b!21424 b_free!735) b_lambda!1533)))

(declare-fun b_lambda!1535 () Bool)

(assert (= b_lambda!1525 (or (and b!21424 b_free!735) b_lambda!1535)))

(check-sat (not bm!1368) (not d!3741) (not bm!1459) (not b_lambda!1533) (not bm!1421) (not bm!1429) (not b!21573) (not bm!1457) tp_is_empty!999 (not bm!1455) (not bm!1447) (not b!21731) (not bm!1453) (not b!21590) (not bm!1425) (not b!21678) (not d!3747) (not b!21712) (not bm!1431) (not d!3739) (not bm!1422) (not b!21498) (not bm!1446) (not d!3749) (not b!21497) (not b!21716) (not d!3757) (not bm!1449) (not b!21496) (not bm!1430) (not b!21574) (not bm!1451) (not b!21525) (not b!21589) (not mapNonEmpty!985) (not bm!1464) (not b!21577) (not b_next!735) (not b!21670) (not d!3743) (not b!21701) b_and!1433 (not bm!1433) (not b_lambda!1535) (not bm!1436) (not bm!1371) (not bm!1445) (not b!21708) (not bm!1370) (not bm!1435) (not b!21739) (not bm!1458) (not bm!1454) (not b!21515) (not b!21513) (not b!21571) (not bm!1434) (not bm!1423) (not d!3745) (not d!3759) (not b!21578) (not bm!1427) (not b!21675) (not bm!1460) (not b_lambda!1531) (not b!21674) (not bm!1366) (not b!21713) (not b!21693) (not b!21514) (not b!21575) (not bm!1440))
(check-sat b_and!1433 (not b_next!735))
(get-model)

(declare-fun b!21785 () Bool)

(declare-fun res!13916 () Bool)

(declare-fun e!14161 () Bool)

(assert (=> b!21785 (=> (not res!13916) (not e!14161))))

(declare-fun lt!7028 () SeekEntryResult!56)

(assert (=> b!21785 (= res!13916 (= (select (arr!580 (_keys!3140 lt!6678)) (index!2344 lt!7028)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!14164 () Bool)

(declare-fun lt!7038 () tuple2!888)

(declare-fun b!21786 () Bool)

(assert (=> b!21786 (= e!14164 (= (map!398 (_2!447 lt!7038)) (+!42 (map!398 lt!6678) (tuple2!891 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!1646 (v!1573 (underlying!104 thiss!938)))))))))

(declare-fun b!21787 () Bool)

(declare-fun e!14162 () Bool)

(declare-fun e!14160 () Bool)

(assert (=> b!21787 (= e!14162 e!14160)))

(declare-fun res!13912 () Bool)

(declare-fun call!1482 () Bool)

(assert (=> b!21787 (= res!13912 call!1482)))

(assert (=> b!21787 (=> (not res!13912) (not e!14160))))

(declare-fun b!21788 () Bool)

(declare-fun call!1481 () Bool)

(assert (=> b!21788 (= e!14160 (not call!1481))))

(declare-fun b!21789 () Bool)

(assert (=> b!21789 (= e!14161 (not call!1481))))

(declare-fun b!21790 () Bool)

(assert (=> b!21790 (= e!14162 ((_ is Undefined!56) lt!7028))))

(declare-fun b!21791 () Bool)

(declare-fun e!14167 () Unit!454)

(declare-fun lt!7029 () Unit!454)

(assert (=> b!21791 (= e!14167 lt!7029)))

(assert (=> b!21791 (= lt!7029 (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!7 (_keys!3140 lt!6678) (_values!1708 lt!6678) (mask!4692 lt!6678) (extraKeys!1622 lt!6678) (zeroValue!1646 lt!6678) (minValue!1646 lt!6678) #b0000000000000000000000000000000000000000000000000000000000000000 (defaultEntry!1719 lt!6678)))))

(declare-fun call!1480 () SeekEntryResult!56)

(assert (=> b!21791 (= lt!7028 call!1480)))

(declare-fun c!2577 () Bool)

(assert (=> b!21791 (= c!2577 ((_ is MissingZero!56) lt!7028))))

(declare-fun e!14165 () Bool)

(assert (=> b!21791 e!14165))

(declare-fun b!21792 () Bool)

(declare-fun e!14163 () Bool)

(declare-fun lt!7041 () SeekEntryResult!56)

(assert (=> b!21792 (= e!14163 (= (select (arr!580 (_keys!3140 lt!6678)) (index!2345 lt!7041)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!21794 () Bool)

(declare-fun res!13913 () Bool)

(assert (=> b!21794 (=> (not res!13913) (not e!14164))))

(assert (=> b!21794 (= res!13913 (contains!215 (map!398 (_2!447 lt!7038)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!21795 () Bool)

(declare-fun res!13911 () Bool)

(declare-fun call!1483 () Bool)

(assert (=> b!21795 (= res!13911 call!1483)))

(assert (=> b!21795 (=> (not res!13911) (not e!14163))))

(declare-fun bm!1477 () Bool)

(assert (=> bm!1477 (= call!1482 call!1483)))

(declare-fun bm!1478 () Bool)

(declare-fun c!2579 () Bool)

(assert (=> bm!1478 (= call!1483 (inRange!0 (ite c!2579 (index!2345 lt!7041) (ite c!2577 (index!2344 lt!7028) (index!2347 lt!7028))) (mask!4692 lt!6678)))))

(declare-fun b!21796 () Bool)

(declare-fun res!13910 () Bool)

(assert (=> b!21796 (= res!13910 (= (select (arr!580 (_keys!3140 lt!6678)) (index!2347 lt!7028)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!21796 (=> (not res!13910) (not e!14160))))

(declare-fun b!21797 () Bool)

(declare-fun e!14166 () Unit!454)

(declare-fun Unit!466 () Unit!454)

(assert (=> b!21797 (= e!14166 Unit!466)))

(declare-fun lt!7043 () Unit!454)

(declare-fun lemmaArrayContainsKeyThenInListMap!2 (array!1223 array!1221 (_ BitVec 32) (_ BitVec 32) V!1157 V!1157 (_ BitVec 64) (_ BitVec 32) Int) Unit!454)

(assert (=> b!21797 (= lt!7043 (lemmaArrayContainsKeyThenInListMap!2 (_keys!3140 lt!6678) (_values!1708 lt!6678) (mask!4692 lt!6678) (extraKeys!1622 lt!6678) (zeroValue!1646 lt!6678) (minValue!1646 lt!6678) #b0000000000000000000000000000000000000000000000000000000000000000 #b00000000000000000000000000000000 (defaultEntry!1719 lt!6678)))))

(assert (=> b!21797 (contains!215 (getCurrentListMap!117 (_keys!3140 lt!6678) (_values!1708 lt!6678) (mask!4692 lt!6678) (extraKeys!1622 lt!6678) (zeroValue!1646 lt!6678) (minValue!1646 lt!6678) #b00000000000000000000000000000000 (defaultEntry!1719 lt!6678)) #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!7022 () Unit!454)

(assert (=> b!21797 (= lt!7022 lt!7043)))

(assert (=> b!21797 false))

(declare-fun b!21798 () Bool)

(declare-fun c!2578 () Bool)

(assert (=> b!21798 (= c!2578 ((_ is MissingVacant!56) lt!7028))))

(assert (=> b!21798 (= e!14165 e!14162)))

(declare-fun bm!1479 () Bool)

(assert (=> bm!1479 (= call!1481 (arrayContainsKey!0 (_keys!3140 lt!6678) #b0000000000000000000000000000000000000000000000000000000000000000 #b00000000000000000000000000000000))))

(declare-fun d!3761 () Bool)

(assert (=> d!3761 e!14164))

(declare-fun res!13909 () Bool)

(assert (=> d!3761 (=> (not res!13909) (not e!14164))))

(assert (=> d!3761 (= res!13909 (_1!447 lt!7038))))

(assert (=> d!3761 (= lt!7038 (tuple2!889 true (LongMapFixedSize!187 (defaultEntry!1719 lt!6678) (mask!4692 lt!6678) (extraKeys!1622 lt!6678) (zeroValue!1646 lt!6678) (minValue!1646 lt!6678) (bvadd (_size!134 lt!6678) #b00000000000000000000000000000001) (array!1224 (store (arr!580 (_keys!3140 lt!6678)) (ite c!2550 (index!2347 lt!6907) (index!2344 lt!6907)) #b0000000000000000000000000000000000000000000000000000000000000000) (size!673 (_keys!3140 lt!6678))) (array!1222 (store (arr!579 (_values!1708 lt!6678)) (ite c!2550 (index!2347 lt!6907) (index!2344 lt!6907)) (ValueCellFull!300 (zeroValue!1646 (v!1573 (underlying!104 thiss!938))))) (size!672 (_values!1708 lt!6678))) (_vacant!134 lt!6678))))))

(declare-fun lt!7033 () Unit!454)

(declare-fun lt!7015 () Unit!454)

(assert (=> d!3761 (= lt!7033 lt!7015)))

(declare-fun lt!7014 () array!1223)

(declare-fun lt!7026 () array!1221)

(assert (=> d!3761 (contains!215 (getCurrentListMap!117 lt!7014 lt!7026 (mask!4692 lt!6678) (extraKeys!1622 lt!6678) (zeroValue!1646 lt!6678) (minValue!1646 lt!6678) #b00000000000000000000000000000000 (defaultEntry!1719 lt!6678)) (select (store (arr!580 (_keys!3140 lt!6678)) (ite c!2550 (index!2347 lt!6907) (index!2344 lt!6907)) #b0000000000000000000000000000000000000000000000000000000000000000) (ite c!2550 (index!2347 lt!6907) (index!2344 lt!6907))))))

(assert (=> d!3761 (= lt!7015 (lemmaValidKeyInArrayIsInListMap!7 lt!7014 lt!7026 (mask!4692 lt!6678) (extraKeys!1622 lt!6678) (zeroValue!1646 lt!6678) (minValue!1646 lt!6678) (ite c!2550 (index!2347 lt!6907) (index!2344 lt!6907)) (defaultEntry!1719 lt!6678)))))

(assert (=> d!3761 (= lt!7026 (array!1222 (store (arr!579 (_values!1708 lt!6678)) (ite c!2550 (index!2347 lt!6907) (index!2344 lt!6907)) (ValueCellFull!300 (zeroValue!1646 (v!1573 (underlying!104 thiss!938))))) (size!672 (_values!1708 lt!6678))))))

(assert (=> d!3761 (= lt!7014 (array!1224 (store (arr!580 (_keys!3140 lt!6678)) (ite c!2550 (index!2347 lt!6907) (index!2344 lt!6907)) #b0000000000000000000000000000000000000000000000000000000000000000) (size!673 (_keys!3140 lt!6678))))))

(declare-fun lt!7021 () Unit!454)

(declare-fun lt!7037 () Unit!454)

(assert (=> d!3761 (= lt!7021 lt!7037)))

(declare-fun lt!7039 () array!1223)

(assert (=> d!3761 (= (arrayCountValidKeys!0 lt!7039 (ite c!2550 (index!2347 lt!6907) (index!2344 lt!6907)) (bvadd (ite c!2550 (index!2347 lt!6907) (index!2344 lt!6907)) #b00000000000000000000000000000001)) #b00000000000000000000000000000001)))

(declare-fun lemmaValidKeyAtIImpliesCountKeysIsOne!0 (array!1223 (_ BitVec 32)) Unit!454)

(assert (=> d!3761 (= lt!7037 (lemmaValidKeyAtIImpliesCountKeysIsOne!0 lt!7039 (ite c!2550 (index!2347 lt!6907) (index!2344 lt!6907))))))

(assert (=> d!3761 (= lt!7039 (array!1224 (store (arr!580 (_keys!3140 lt!6678)) (ite c!2550 (index!2347 lt!6907) (index!2344 lt!6907)) #b0000000000000000000000000000000000000000000000000000000000000000) (size!673 (_keys!3140 lt!6678))))))

(declare-fun lt!7027 () Unit!454)

(declare-fun lt!7020 () Unit!454)

(assert (=> d!3761 (= lt!7027 lt!7020)))

(declare-fun lt!7024 () array!1223)

(assert (=> d!3761 (arrayContainsKey!0 lt!7024 #b0000000000000000000000000000000000000000000000000000000000000000 #b00000000000000000000000000000000)))

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!1223 (_ BitVec 64) (_ BitVec 32)) Unit!454)

(assert (=> d!3761 (= lt!7020 (lemmaArrayContainsFromImpliesContainsFromZero!0 lt!7024 #b0000000000000000000000000000000000000000000000000000000000000000 (ite c!2550 (index!2347 lt!6907) (index!2344 lt!6907))))))

(assert (=> d!3761 (= lt!7024 (array!1224 (store (arr!580 (_keys!3140 lt!6678)) (ite c!2550 (index!2347 lt!6907) (index!2344 lt!6907)) #b0000000000000000000000000000000000000000000000000000000000000000) (size!673 (_keys!3140 lt!6678))))))

(declare-fun lt!7031 () Unit!454)

(declare-fun lt!7042 () Unit!454)

(assert (=> d!3761 (= lt!7031 lt!7042)))

(assert (=> d!3761 (= (+!42 (getCurrentListMap!117 (_keys!3140 lt!6678) (_values!1708 lt!6678) (mask!4692 lt!6678) (extraKeys!1622 lt!6678) (zeroValue!1646 lt!6678) (minValue!1646 lt!6678) #b00000000000000000000000000000000 (defaultEntry!1719 lt!6678)) (tuple2!891 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!1646 (v!1573 (underlying!104 thiss!938))))) (getCurrentListMap!117 (array!1224 (store (arr!580 (_keys!3140 lt!6678)) (ite c!2550 (index!2347 lt!6907) (index!2344 lt!6907)) #b0000000000000000000000000000000000000000000000000000000000000000) (size!673 (_keys!3140 lt!6678))) (array!1222 (store (arr!579 (_values!1708 lt!6678)) (ite c!2550 (index!2347 lt!6907) (index!2344 lt!6907)) (ValueCellFull!300 (zeroValue!1646 (v!1573 (underlying!104 thiss!938))))) (size!672 (_values!1708 lt!6678))) (mask!4692 lt!6678) (extraKeys!1622 lt!6678) (zeroValue!1646 lt!6678) (minValue!1646 lt!6678) #b00000000000000000000000000000000 (defaultEntry!1719 lt!6678)))))

(declare-fun lemmaAddValidKeyToArrayThenAddPairToListMap!2 (array!1223 array!1221 (_ BitVec 32) (_ BitVec 32) V!1157 V!1157 (_ BitVec 32) (_ BitVec 64) V!1157 Int) Unit!454)

(assert (=> d!3761 (= lt!7042 (lemmaAddValidKeyToArrayThenAddPairToListMap!2 (_keys!3140 lt!6678) (_values!1708 lt!6678) (mask!4692 lt!6678) (extraKeys!1622 lt!6678) (zeroValue!1646 lt!6678) (minValue!1646 lt!6678) (ite c!2550 (index!2347 lt!6907) (index!2344 lt!6907)) #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!1646 (v!1573 (underlying!104 thiss!938))) (defaultEntry!1719 lt!6678)))))

(declare-fun lt!7017 () Unit!454)

(declare-fun lt!7018 () Unit!454)

(assert (=> d!3761 (= lt!7017 lt!7018)))

(assert (=> d!3761 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (array!1224 (store (arr!580 (_keys!3140 lt!6678)) (ite c!2550 (index!2347 lt!6907) (index!2344 lt!6907)) #b0000000000000000000000000000000000000000000000000000000000000000) (size!673 (_keys!3140 lt!6678))) (mask!4692 lt!6678))))

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpen!0 ((_ BitVec 64) array!1223 (_ BitVec 32) (_ BitVec 32)) Unit!454)

(assert (=> d!3761 (= lt!7018 (lemmaPutValidKeyPreservesForallSeekEntryOrOpen!0 #b0000000000000000000000000000000000000000000000000000000000000000 (_keys!3140 lt!6678) (ite c!2550 (index!2347 lt!6907) (index!2344 lt!6907)) (mask!4692 lt!6678)))))

(declare-fun lt!7025 () Unit!454)

(declare-fun lt!7035 () Unit!454)

(assert (=> d!3761 (= lt!7025 lt!7035)))

(assert (=> d!3761 (= (arrayCountValidKeys!0 (array!1224 (store (arr!580 (_keys!3140 lt!6678)) (ite c!2550 (index!2347 lt!6907) (index!2344 lt!6907)) #b0000000000000000000000000000000000000000000000000000000000000000) (size!673 (_keys!3140 lt!6678))) #b00000000000000000000000000000000 (size!673 (_keys!3140 lt!6678))) (bvadd (arrayCountValidKeys!0 (_keys!3140 lt!6678) #b00000000000000000000000000000000 (size!673 (_keys!3140 lt!6678))) #b00000000000000000000000000000001))))

(declare-fun lemmaAddValidKeyIncreasesNumberOfValidKeysInArray!0 (array!1223 (_ BitVec 32) (_ BitVec 64)) Unit!454)

(assert (=> d!3761 (= lt!7035 (lemmaAddValidKeyIncreasesNumberOfValidKeysInArray!0 (_keys!3140 lt!6678) (ite c!2550 (index!2347 lt!6907) (index!2344 lt!6907)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!7019 () Unit!454)

(declare-fun lt!7032 () Unit!454)

(assert (=> d!3761 (= lt!7019 lt!7032)))

(declare-fun lt!7023 () (_ BitVec 32))

(declare-fun lt!7016 () List!560)

(assert (=> d!3761 (arrayNoDuplicates!0 (array!1224 (store (arr!580 (_keys!3140 lt!6678)) (ite c!2550 (index!2347 lt!6907) (index!2344 lt!6907)) #b0000000000000000000000000000000000000000000000000000000000000000) (size!673 (_keys!3140 lt!6678))) lt!7023 lt!7016)))

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!1223 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!560) Unit!454)

(assert (=> d!3761 (= lt!7032 (lemmaPutNewValidKeyPreservesNoDuplicate!0 (_keys!3140 lt!6678) #b0000000000000000000000000000000000000000000000000000000000000000 (ite c!2550 (index!2347 lt!6907) (index!2344 lt!6907)) lt!7023 lt!7016))))

(assert (=> d!3761 (= lt!7016 Nil!557)))

(assert (=> d!3761 (= lt!7023 #b00000000000000000000000000000000)))

(declare-fun lt!7034 () Unit!454)

(assert (=> d!3761 (= lt!7034 e!14166)))

(declare-fun c!2576 () Bool)

(assert (=> d!3761 (= c!2576 (arrayContainsKey!0 (_keys!3140 lt!6678) #b0000000000000000000000000000000000000000000000000000000000000000 #b00000000000000000000000000000000))))

(declare-fun lt!7030 () Unit!454)

(assert (=> d!3761 (= lt!7030 e!14167)))

(assert (=> d!3761 (= c!2579 (contains!215 (getCurrentListMap!117 (_keys!3140 lt!6678) (_values!1708 lt!6678) (mask!4692 lt!6678) (extraKeys!1622 lt!6678) (zeroValue!1646 lt!6678) (minValue!1646 lt!6678) #b00000000000000000000000000000000 (defaultEntry!1719 lt!6678)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!3761 (valid!98 lt!6678)))

(assert (=> d!3761 (= (updateHelperNewKey!7 lt!6678 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!1646 (v!1573 (underlying!104 thiss!938))) (ite c!2550 (index!2347 lt!6907) (index!2344 lt!6907))) lt!7038)))

(declare-fun b!21793 () Bool)

(declare-fun Unit!467 () Unit!454)

(assert (=> b!21793 (= e!14166 Unit!467)))

(declare-fun b!21799 () Bool)

(declare-fun res!13914 () Bool)

(assert (=> b!21799 (=> (not res!13914) (not e!14161))))

(assert (=> b!21799 (= res!13914 call!1482)))

(assert (=> b!21799 (= e!14165 e!14161)))

(declare-fun bm!1480 () Bool)

(assert (=> bm!1480 (= call!1480 (seekEntryOrOpen!0 #b0000000000000000000000000000000000000000000000000000000000000000 (_keys!3140 lt!6678) (mask!4692 lt!6678)))))

(declare-fun b!21800 () Bool)

(declare-fun Unit!468 () Unit!454)

(assert (=> b!21800 (= e!14167 Unit!468)))

(declare-fun lt!7040 () Unit!454)

(assert (=> b!21800 (= lt!7040 (lemmaInListMapThenSeekEntryOrOpenFindsIt!7 (_keys!3140 lt!6678) (_values!1708 lt!6678) (mask!4692 lt!6678) (extraKeys!1622 lt!6678) (zeroValue!1646 lt!6678) (minValue!1646 lt!6678) #b0000000000000000000000000000000000000000000000000000000000000000 (defaultEntry!1719 lt!6678)))))

(assert (=> b!21800 (= lt!7041 call!1480)))

(declare-fun res!13908 () Bool)

(assert (=> b!21800 (= res!13908 ((_ is Found!56) lt!7041))))

(assert (=> b!21800 (=> (not res!13908) (not e!14163))))

(assert (=> b!21800 e!14163))

(declare-fun lt!7036 () Unit!454)

(assert (=> b!21800 (= lt!7036 lt!7040)))

(assert (=> b!21800 false))

(declare-fun b!21801 () Bool)

(declare-fun res!13915 () Bool)

(assert (=> b!21801 (=> (not res!13915) (not e!14164))))

(assert (=> b!21801 (= res!13915 (valid!98 (_2!447 lt!7038)))))

(assert (= (and d!3761 c!2579) b!21800))

(assert (= (and d!3761 (not c!2579)) b!21791))

(assert (= (and b!21800 res!13908) b!21795))

(assert (= (and b!21795 res!13911) b!21792))

(assert (= (and b!21791 c!2577) b!21799))

(assert (= (and b!21791 (not c!2577)) b!21798))

(assert (= (and b!21799 res!13914) b!21785))

(assert (= (and b!21785 res!13916) b!21789))

(assert (= (and b!21798 c!2578) b!21787))

(assert (= (and b!21798 (not c!2578)) b!21790))

(assert (= (and b!21787 res!13912) b!21796))

(assert (= (and b!21796 res!13910) b!21788))

(assert (= (or b!21799 b!21787) bm!1477))

(assert (= (or b!21789 b!21788) bm!1479))

(assert (= (or b!21795 bm!1477) bm!1478))

(assert (= (or b!21800 b!21791) bm!1480))

(assert (= (and d!3761 c!2576) b!21797))

(assert (= (and d!3761 (not c!2576)) b!21793))

(assert (= (and d!3761 res!13909) b!21801))

(assert (= (and b!21801 res!13915) b!21794))

(assert (= (and b!21794 res!13913) b!21786))

(declare-fun m!15191 () Bool)

(assert (=> d!3761 m!15191))

(declare-fun m!15193 () Bool)

(assert (=> d!3761 m!15193))

(declare-fun m!15195 () Bool)

(assert (=> d!3761 m!15195))

(declare-fun m!15197 () Bool)

(assert (=> d!3761 m!15197))

(declare-fun m!15199 () Bool)

(assert (=> d!3761 m!15199))

(declare-fun m!15201 () Bool)

(assert (=> d!3761 m!15201))

(declare-fun m!15203 () Bool)

(assert (=> d!3761 m!15203))

(declare-fun m!15205 () Bool)

(assert (=> d!3761 m!15205))

(declare-fun m!15207 () Bool)

(assert (=> d!3761 m!15207))

(declare-fun m!15209 () Bool)

(assert (=> d!3761 m!15209))

(declare-fun m!15211 () Bool)

(assert (=> d!3761 m!15211))

(declare-fun m!15213 () Bool)

(assert (=> d!3761 m!15213))

(assert (=> d!3761 m!15199))

(declare-fun m!15215 () Bool)

(assert (=> d!3761 m!15215))

(assert (=> d!3761 m!15117))

(declare-fun m!15217 () Bool)

(assert (=> d!3761 m!15217))

(declare-fun m!15219 () Bool)

(assert (=> d!3761 m!15219))

(assert (=> d!3761 m!15125))

(declare-fun m!15221 () Bool)

(assert (=> d!3761 m!15221))

(declare-fun m!15223 () Bool)

(assert (=> d!3761 m!15223))

(assert (=> d!3761 m!15213))

(declare-fun m!15225 () Bool)

(assert (=> d!3761 m!15225))

(assert (=> d!3761 m!15205))

(declare-fun m!15227 () Bool)

(assert (=> d!3761 m!15227))

(assert (=> d!3761 m!15205))

(declare-fun m!15229 () Bool)

(assert (=> d!3761 m!15229))

(declare-fun m!15231 () Bool)

(assert (=> d!3761 m!15231))

(declare-fun m!15233 () Bool)

(assert (=> d!3761 m!15233))

(assert (=> bm!1480 m!15097))

(declare-fun m!15235 () Bool)

(assert (=> b!21797 m!15235))

(assert (=> b!21797 m!15205))

(assert (=> b!21797 m!15205))

(assert (=> b!21797 m!15227))

(declare-fun m!15237 () Bool)

(assert (=> b!21792 m!15237))

(declare-fun m!15239 () Bool)

(assert (=> b!21801 m!15239))

(declare-fun m!15241 () Bool)

(assert (=> b!21794 m!15241))

(assert (=> b!21794 m!15241))

(declare-fun m!15243 () Bool)

(assert (=> b!21794 m!15243))

(assert (=> bm!1479 m!15125))

(assert (=> b!21786 m!15241))

(assert (=> b!21786 m!15121))

(assert (=> b!21786 m!15121))

(declare-fun m!15245 () Bool)

(assert (=> b!21786 m!15245))

(declare-fun m!15247 () Bool)

(assert (=> b!21796 m!15247))

(assert (=> b!21791 m!15119))

(declare-fun m!15249 () Bool)

(assert (=> b!21785 m!15249))

(assert (=> b!21800 m!15101))

(declare-fun m!15251 () Bool)

(assert (=> bm!1478 m!15251))

(assert (=> bm!1433 d!3761))

(declare-fun d!3763 () Bool)

(declare-fun res!13921 () Bool)

(declare-fun e!14172 () Bool)

(assert (=> d!3763 (=> res!13921 e!14172)))

(assert (=> d!3763 (= res!13921 (= (select (arr!580 (_keys!3140 (ite c!2483 (_2!447 lt!6680) lt!6678))) #b00000000000000000000000000000000) (ite c!2483 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!2482 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> d!3763 (= (arrayContainsKey!0 (_keys!3140 (ite c!2483 (_2!447 lt!6680) lt!6678)) (ite c!2483 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!2482 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000)) #b00000000000000000000000000000000) e!14172)))

(declare-fun b!21806 () Bool)

(declare-fun e!14173 () Bool)

(assert (=> b!21806 (= e!14172 e!14173)))

(declare-fun res!13922 () Bool)

(assert (=> b!21806 (=> (not res!13922) (not e!14173))))

(assert (=> b!21806 (= res!13922 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!673 (_keys!3140 (ite c!2483 (_2!447 lt!6680) lt!6678)))))))

(declare-fun b!21807 () Bool)

(assert (=> b!21807 (= e!14173 (arrayContainsKey!0 (_keys!3140 (ite c!2483 (_2!447 lt!6680) lt!6678)) (ite c!2483 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!2482 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000)) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!3763 (not res!13921)) b!21806))

(assert (= (and b!21806 res!13922) b!21807))

(declare-fun m!15253 () Bool)

(assert (=> d!3763 m!15253))

(declare-fun m!15255 () Bool)

(assert (=> b!21807 m!15255))

(assert (=> bm!1446 d!3763))

(declare-fun d!3765 () Bool)

(assert (=> d!3765 (= (validKeyInArray!0 (select (arr!580 (_keys!3140 (v!1573 (underlying!104 thiss!938)))) (bvadd #b00000000000000000000000000000001 (bvsub (size!673 (_keys!3140 (v!1573 (underlying!104 thiss!938)))) #b00000000000000000000000000000001)))) (and (not (= (select (arr!580 (_keys!3140 (v!1573 (underlying!104 thiss!938)))) (bvadd #b00000000000000000000000000000001 (bvsub (size!673 (_keys!3140 (v!1573 (underlying!104 thiss!938)))) #b00000000000000000000000000000001))) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!580 (_keys!3140 (v!1573 (underlying!104 thiss!938)))) (bvadd #b00000000000000000000000000000001 (bvsub (size!673 (_keys!3140 (v!1573 (underlying!104 thiss!938)))) #b00000000000000000000000000000001))) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!21578 d!3765))

(declare-fun d!3767 () Bool)

(declare-fun res!13923 () Bool)

(declare-fun e!14174 () Bool)

(assert (=> d!3767 (=> (not res!13923) (not e!14174))))

(assert (=> d!3767 (= res!13923 (simpleValid!18 (_2!447 lt!6939)))))

(assert (=> d!3767 (= (valid!98 (_2!447 lt!6939)) e!14174)))

(declare-fun b!21808 () Bool)

(declare-fun res!13924 () Bool)

(assert (=> b!21808 (=> (not res!13924) (not e!14174))))

(assert (=> b!21808 (= res!13924 (= (arrayCountValidKeys!0 (_keys!3140 (_2!447 lt!6939)) #b00000000000000000000000000000000 (size!673 (_keys!3140 (_2!447 lt!6939)))) (_size!134 (_2!447 lt!6939))))))

(declare-fun b!21809 () Bool)

(declare-fun res!13925 () Bool)

(assert (=> b!21809 (=> (not res!13925) (not e!14174))))

(assert (=> b!21809 (= res!13925 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!3140 (_2!447 lt!6939)) (mask!4692 (_2!447 lt!6939))))))

(declare-fun b!21810 () Bool)

(assert (=> b!21810 (= e!14174 (arrayNoDuplicates!0 (_keys!3140 (_2!447 lt!6939)) #b00000000000000000000000000000000 Nil!557))))

(assert (= (and d!3767 res!13923) b!21808))

(assert (= (and b!21808 res!13924) b!21809))

(assert (= (and b!21809 res!13925) b!21810))

(declare-fun m!15257 () Bool)

(assert (=> d!3767 m!15257))

(declare-fun m!15259 () Bool)

(assert (=> b!21808 m!15259))

(declare-fun m!15261 () Bool)

(assert (=> b!21809 m!15261))

(declare-fun m!15263 () Bool)

(assert (=> b!21810 m!15263))

(assert (=> d!3759 d!3767))

(declare-fun d!3769 () Bool)

(declare-fun res!13926 () Bool)

(declare-fun e!14175 () Bool)

(assert (=> d!3769 (=> (not res!13926) (not e!14175))))

(assert (=> d!3769 (= res!13926 (simpleValid!18 (ite c!2483 (_2!447 lt!6680) lt!6678)))))

(assert (=> d!3769 (= (valid!98 (ite c!2483 (_2!447 lt!6680) lt!6678)) e!14175)))

(declare-fun b!21811 () Bool)

(declare-fun res!13927 () Bool)

(assert (=> b!21811 (=> (not res!13927) (not e!14175))))

(assert (=> b!21811 (= res!13927 (= (arrayCountValidKeys!0 (_keys!3140 (ite c!2483 (_2!447 lt!6680) lt!6678)) #b00000000000000000000000000000000 (size!673 (_keys!3140 (ite c!2483 (_2!447 lt!6680) lt!6678)))) (_size!134 (ite c!2483 (_2!447 lt!6680) lt!6678))))))

(declare-fun b!21812 () Bool)

(declare-fun res!13928 () Bool)

(assert (=> b!21812 (=> (not res!13928) (not e!14175))))

(assert (=> b!21812 (= res!13928 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!3140 (ite c!2483 (_2!447 lt!6680) lt!6678)) (mask!4692 (ite c!2483 (_2!447 lt!6680) lt!6678))))))

(declare-fun b!21813 () Bool)

(assert (=> b!21813 (= e!14175 (arrayNoDuplicates!0 (_keys!3140 (ite c!2483 (_2!447 lt!6680) lt!6678)) #b00000000000000000000000000000000 Nil!557))))

(assert (= (and d!3769 res!13926) b!21811))

(assert (= (and b!21811 res!13927) b!21812))

(assert (= (and b!21812 res!13928) b!21813))

(declare-fun m!15265 () Bool)

(assert (=> d!3769 m!15265))

(declare-fun m!15267 () Bool)

(assert (=> b!21811 m!15267))

(declare-fun m!15269 () Bool)

(assert (=> b!21812 m!15269))

(declare-fun m!15271 () Bool)

(assert (=> b!21813 m!15271))

(assert (=> d!3759 d!3769))

(declare-fun b!21826 () Bool)

(declare-fun e!14182 () SeekEntryResult!56)

(declare-fun lt!7051 () SeekEntryResult!56)

(assert (=> b!21826 (= e!14182 (MissingZero!56 (index!2346 lt!7051)))))

(declare-fun b!21827 () Bool)

(declare-fun c!2588 () Bool)

(declare-fun lt!7050 () (_ BitVec 64))

(assert (=> b!21827 (= c!2588 (= lt!7050 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!14183 () SeekEntryResult!56)

(assert (=> b!21827 (= e!14183 e!14182)))

(declare-fun b!21828 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!1223 (_ BitVec 32)) SeekEntryResult!56)

(assert (=> b!21828 (= e!14182 (seekKeyOrZeroReturnVacant!0 (x!5195 lt!7051) (index!2346 lt!7051) (index!2346 lt!7051) #b0000000000000000000000000000000000000000000000000000000000000000 (_keys!3140 lt!6678) (mask!4692 lt!6678)))))

(declare-fun b!21829 () Bool)

(assert (=> b!21829 (= e!14183 (Found!56 (index!2346 lt!7051)))))

(declare-fun d!3771 () Bool)

(declare-fun lt!7052 () SeekEntryResult!56)

(assert (=> d!3771 (and (or ((_ is Undefined!56) lt!7052) (not ((_ is Found!56) lt!7052)) (and (bvsge (index!2345 lt!7052) #b00000000000000000000000000000000) (bvslt (index!2345 lt!7052) (size!673 (_keys!3140 lt!6678))))) (or ((_ is Undefined!56) lt!7052) ((_ is Found!56) lt!7052) (not ((_ is MissingZero!56) lt!7052)) (and (bvsge (index!2344 lt!7052) #b00000000000000000000000000000000) (bvslt (index!2344 lt!7052) (size!673 (_keys!3140 lt!6678))))) (or ((_ is Undefined!56) lt!7052) ((_ is Found!56) lt!7052) ((_ is MissingZero!56) lt!7052) (not ((_ is MissingVacant!56) lt!7052)) (and (bvsge (index!2347 lt!7052) #b00000000000000000000000000000000) (bvslt (index!2347 lt!7052) (size!673 (_keys!3140 lt!6678))))) (or ((_ is Undefined!56) lt!7052) (ite ((_ is Found!56) lt!7052) (= (select (arr!580 (_keys!3140 lt!6678)) (index!2345 lt!7052)) #b0000000000000000000000000000000000000000000000000000000000000000) (ite ((_ is MissingZero!56) lt!7052) (= (select (arr!580 (_keys!3140 lt!6678)) (index!2344 lt!7052)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!56) lt!7052) (= (select (arr!580 (_keys!3140 lt!6678)) (index!2347 lt!7052)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!14184 () SeekEntryResult!56)

(assert (=> d!3771 (= lt!7052 e!14184)))

(declare-fun c!2587 () Bool)

(assert (=> d!3771 (= c!2587 (and ((_ is Intermediate!56) lt!7051) (undefined!868 lt!7051)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!1223 (_ BitVec 32)) SeekEntryResult!56)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!3771 (= lt!7051 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 #b0000000000000000000000000000000000000000000000000000000000000000 (mask!4692 lt!6678)) #b0000000000000000000000000000000000000000000000000000000000000000 (_keys!3140 lt!6678) (mask!4692 lt!6678)))))

(assert (=> d!3771 (validMask!0 (mask!4692 lt!6678))))

(assert (=> d!3771 (= (seekEntryOrOpen!0 #b0000000000000000000000000000000000000000000000000000000000000000 (_keys!3140 lt!6678) (mask!4692 lt!6678)) lt!7052)))

(declare-fun b!21830 () Bool)

(assert (=> b!21830 (= e!14184 e!14183)))

(assert (=> b!21830 (= lt!7050 (select (arr!580 (_keys!3140 lt!6678)) (index!2346 lt!7051)))))

(declare-fun c!2586 () Bool)

(assert (=> b!21830 (= c!2586 (= lt!7050 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!21831 () Bool)

(assert (=> b!21831 (= e!14184 Undefined!56)))

(assert (= (and d!3771 c!2587) b!21831))

(assert (= (and d!3771 (not c!2587)) b!21830))

(assert (= (and b!21830 c!2586) b!21829))

(assert (= (and b!21830 (not c!2586)) b!21827))

(assert (= (and b!21827 c!2588) b!21826))

(assert (= (and b!21827 (not c!2588)) b!21828))

(declare-fun m!15273 () Bool)

(assert (=> b!21828 m!15273))

(declare-fun m!15275 () Bool)

(assert (=> d!3771 m!15275))

(declare-fun m!15277 () Bool)

(assert (=> d!3771 m!15277))

(declare-fun m!15279 () Bool)

(assert (=> d!3771 m!15279))

(declare-fun m!15281 () Bool)

(assert (=> d!3771 m!15281))

(declare-fun m!15283 () Bool)

(assert (=> d!3771 m!15283))

(assert (=> d!3771 m!15279))

(declare-fun m!15285 () Bool)

(assert (=> d!3771 m!15285))

(declare-fun m!15287 () Bool)

(assert (=> b!21830 m!15287))

(assert (=> b!21701 d!3771))

(declare-fun d!3773 () Bool)

(declare-fun e!14187 () Bool)

(assert (=> d!3773 e!14187))

(declare-fun res!13934 () Bool)

(assert (=> d!3773 (=> (not res!13934) (not e!14187))))

(declare-fun lt!7058 () SeekEntryResult!56)

(assert (=> d!3773 (= res!13934 ((_ is Found!56) lt!7058))))

(assert (=> d!3773 (= lt!7058 (seekEntryOrOpen!0 #b0000000000000000000000000000000000000000000000000000000000000000 (_keys!3140 lt!6678) (mask!4692 lt!6678)))))

(declare-fun lt!7057 () Unit!454)

(declare-fun choose!197 (array!1223 array!1221 (_ BitVec 32) (_ BitVec 32) V!1157 V!1157 (_ BitVec 64) Int) Unit!454)

(assert (=> d!3773 (= lt!7057 (choose!197 (_keys!3140 lt!6678) (_values!1708 lt!6678) (mask!4692 lt!6678) (extraKeys!1622 lt!6678) (zeroValue!1646 lt!6678) (minValue!1646 lt!6678) #b0000000000000000000000000000000000000000000000000000000000000000 (defaultEntry!1719 lt!6678)))))

(assert (=> d!3773 (validMask!0 (mask!4692 lt!6678))))

(assert (=> d!3773 (= (lemmaInListMapThenSeekEntryOrOpenFindsIt!7 (_keys!3140 lt!6678) (_values!1708 lt!6678) (mask!4692 lt!6678) (extraKeys!1622 lt!6678) (zeroValue!1646 lt!6678) (minValue!1646 lt!6678) #b0000000000000000000000000000000000000000000000000000000000000000 (defaultEntry!1719 lt!6678)) lt!7057)))

(declare-fun b!21836 () Bool)

(declare-fun res!13933 () Bool)

(assert (=> b!21836 (=> (not res!13933) (not e!14187))))

(assert (=> b!21836 (= res!13933 (inRange!0 (index!2345 lt!7058) (mask!4692 lt!6678)))))

(declare-fun b!21837 () Bool)

(assert (=> b!21837 (= e!14187 (= (select (arr!580 (_keys!3140 lt!6678)) (index!2345 lt!7058)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!21837 (and (bvsge (index!2345 lt!7058) #b00000000000000000000000000000000) (bvslt (index!2345 lt!7058) (size!673 (_keys!3140 lt!6678))))))

(assert (= (and d!3773 res!13934) b!21836))

(assert (= (and b!21836 res!13933) b!21837))

(assert (=> d!3773 m!15097))

(declare-fun m!15289 () Bool)

(assert (=> d!3773 m!15289))

(assert (=> d!3773 m!15275))

(declare-fun m!15291 () Bool)

(assert (=> b!21836 m!15291))

(declare-fun m!15293 () Bool)

(assert (=> b!21837 m!15293))

(assert (=> bm!1434 d!3773))

(declare-fun d!3775 () Bool)

(declare-fun e!14192 () Bool)

(assert (=> d!3775 e!14192))

(declare-fun res!13937 () Bool)

(assert (=> d!3775 (=> res!13937 e!14192)))

(declare-fun lt!7067 () Bool)

(assert (=> d!3775 (= res!13937 (not lt!7067))))

(declare-fun lt!7068 () Bool)

(assert (=> d!3775 (= lt!7067 lt!7068)))

(declare-fun lt!7069 () Unit!454)

(declare-fun e!14193 () Unit!454)

(assert (=> d!3775 (= lt!7069 e!14193)))

(declare-fun c!2591 () Bool)

(assert (=> d!3775 (= c!2591 lt!7068)))

(declare-fun containsKey!24 (List!558 (_ BitVec 64)) Bool)

(assert (=> d!3775 (= lt!7068 (containsKey!24 (toList!288 lt!6826) (select (arr!580 (_keys!3140 (v!1573 (underlying!104 thiss!938)))) (bvadd #b00000000000000000000000000000001 (bvsub (size!673 (_keys!3140 (v!1573 (underlying!104 thiss!938)))) #b00000000000000000000000000000001)))))))

(assert (=> d!3775 (= (contains!215 lt!6826 (select (arr!580 (_keys!3140 (v!1573 (underlying!104 thiss!938)))) (bvadd #b00000000000000000000000000000001 (bvsub (size!673 (_keys!3140 (v!1573 (underlying!104 thiss!938)))) #b00000000000000000000000000000001)))) lt!7067)))

(declare-fun b!21844 () Bool)

(declare-fun lt!7070 () Unit!454)

(assert (=> b!21844 (= e!14193 lt!7070)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!21 (List!558 (_ BitVec 64)) Unit!454)

(assert (=> b!21844 (= lt!7070 (lemmaContainsKeyImpliesGetValueByKeyDefined!21 (toList!288 lt!6826) (select (arr!580 (_keys!3140 (v!1573 (underlying!104 thiss!938)))) (bvadd #b00000000000000000000000000000001 (bvsub (size!673 (_keys!3140 (v!1573 (underlying!104 thiss!938)))) #b00000000000000000000000000000001)))))))

(declare-datatypes ((Option!66 0))(
  ( (Some!65 (v!1580 V!1157)) (None!64) )
))
(declare-fun isDefined!22 (Option!66) Bool)

(declare-fun getValueByKey!60 (List!558 (_ BitVec 64)) Option!66)

(assert (=> b!21844 (isDefined!22 (getValueByKey!60 (toList!288 lt!6826) (select (arr!580 (_keys!3140 (v!1573 (underlying!104 thiss!938)))) (bvadd #b00000000000000000000000000000001 (bvsub (size!673 (_keys!3140 (v!1573 (underlying!104 thiss!938)))) #b00000000000000000000000000000001)))))))

(declare-fun b!21845 () Bool)

(declare-fun Unit!469 () Unit!454)

(assert (=> b!21845 (= e!14193 Unit!469)))

(declare-fun b!21846 () Bool)

(assert (=> b!21846 (= e!14192 (isDefined!22 (getValueByKey!60 (toList!288 lt!6826) (select (arr!580 (_keys!3140 (v!1573 (underlying!104 thiss!938)))) (bvadd #b00000000000000000000000000000001 (bvsub (size!673 (_keys!3140 (v!1573 (underlying!104 thiss!938)))) #b00000000000000000000000000000001))))))))

(assert (= (and d!3775 c!2591) b!21844))

(assert (= (and d!3775 (not c!2591)) b!21845))

(assert (= (and d!3775 (not res!13937)) b!21846))

(assert (=> d!3775 m!15017))

(declare-fun m!15295 () Bool)

(assert (=> d!3775 m!15295))

(assert (=> b!21844 m!15017))

(declare-fun m!15297 () Bool)

(assert (=> b!21844 m!15297))

(assert (=> b!21844 m!15017))

(declare-fun m!15299 () Bool)

(assert (=> b!21844 m!15299))

(assert (=> b!21844 m!15299))

(declare-fun m!15301 () Bool)

(assert (=> b!21844 m!15301))

(assert (=> b!21846 m!15017))

(assert (=> b!21846 m!15299))

(assert (=> b!21846 m!15299))

(assert (=> b!21846 m!15301))

(assert (=> b!21574 d!3775))

(declare-fun d!3777 () Bool)

(assert (=> d!3777 (= (+!42 (getCurrentListMap!117 (_keys!3140 (ite c!2483 (_2!447 lt!6680) lt!6678)) (_values!1708 (ite c!2483 (_2!447 lt!6680) lt!6678)) (mask!4692 (ite c!2483 (_2!447 lt!6680) lt!6678)) (extraKeys!1622 (ite c!2483 (_2!447 lt!6680) lt!6678)) (zeroValue!1646 (ite c!2483 (_2!447 lt!6680) lt!6678)) (minValue!1646 (ite c!2483 (_2!447 lt!6680) lt!6678)) #b00000000000000000000000000000000 (defaultEntry!1719 (ite c!2483 (_2!447 lt!6680) lt!6678))) (tuple2!891 #b0000000000000000000000000000000000000000000000000000000000000000 (ite c!2483 (minValue!1646 (v!1573 (underlying!104 thiss!938))) (ite c!2482 (zeroValue!1646 (v!1573 (underlying!104 thiss!938))) (minValue!1646 (v!1573 (underlying!104 thiss!938))))))) (getCurrentListMap!117 (_keys!3140 (ite c!2483 (_2!447 lt!6680) lt!6678)) (_values!1708 (ite c!2483 (_2!447 lt!6680) lt!6678)) (mask!4692 (ite c!2483 (_2!447 lt!6680) lt!6678)) lt!6949 (ite c!2483 (minValue!1646 (v!1573 (underlying!104 thiss!938))) (ite c!2482 (zeroValue!1646 (v!1573 (underlying!104 thiss!938))) (minValue!1646 (v!1573 (underlying!104 thiss!938))))) (minValue!1646 (ite c!2483 (_2!447 lt!6680) lt!6678)) #b00000000000000000000000000000000 (defaultEntry!1719 (ite c!2483 (_2!447 lt!6680) lt!6678))))))

(declare-fun lt!7073 () Unit!454)

(declare-fun choose!198 (array!1223 array!1221 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!1157 V!1157 V!1157 Int) Unit!454)

(assert (=> d!3777 (= lt!7073 (choose!198 (_keys!3140 (ite c!2483 (_2!447 lt!6680) lt!6678)) (_values!1708 (ite c!2483 (_2!447 lt!6680) lt!6678)) (mask!4692 (ite c!2483 (_2!447 lt!6680) lt!6678)) (extraKeys!1622 (ite c!2483 (_2!447 lt!6680) lt!6678)) lt!6949 (zeroValue!1646 (ite c!2483 (_2!447 lt!6680) lt!6678)) (ite c!2483 (minValue!1646 (v!1573 (underlying!104 thiss!938))) (ite c!2482 (zeroValue!1646 (v!1573 (underlying!104 thiss!938))) (minValue!1646 (v!1573 (underlying!104 thiss!938))))) (minValue!1646 (ite c!2483 (_2!447 lt!6680) lt!6678)) (defaultEntry!1719 (ite c!2483 (_2!447 lt!6680) lt!6678))))))

(assert (=> d!3777 (validMask!0 (mask!4692 (ite c!2483 (_2!447 lt!6680) lt!6678)))))

(assert (=> d!3777 (= (lemmaChangeZeroKeyThenAddPairToListMap!7 (_keys!3140 (ite c!2483 (_2!447 lt!6680) lt!6678)) (_values!1708 (ite c!2483 (_2!447 lt!6680) lt!6678)) (mask!4692 (ite c!2483 (_2!447 lt!6680) lt!6678)) (extraKeys!1622 (ite c!2483 (_2!447 lt!6680) lt!6678)) lt!6949 (zeroValue!1646 (ite c!2483 (_2!447 lt!6680) lt!6678)) (ite c!2483 (minValue!1646 (v!1573 (underlying!104 thiss!938))) (ite c!2482 (zeroValue!1646 (v!1573 (underlying!104 thiss!938))) (minValue!1646 (v!1573 (underlying!104 thiss!938))))) (minValue!1646 (ite c!2483 (_2!447 lt!6680) lt!6678)) (defaultEntry!1719 (ite c!2483 (_2!447 lt!6680) lt!6678))) lt!7073)))

(declare-fun bs!910 () Bool)

(assert (= bs!910 d!3777))

(declare-fun m!15303 () Bool)

(assert (=> bs!910 m!15303))

(declare-fun m!15305 () Bool)

(assert (=> bs!910 m!15305))

(declare-fun m!15307 () Bool)

(assert (=> bs!910 m!15307))

(declare-fun m!15309 () Bool)

(assert (=> bs!910 m!15309))

(declare-fun m!15311 () Bool)

(assert (=> bs!910 m!15311))

(assert (=> bs!910 m!15309))

(assert (=> b!21731 d!3777))

(declare-fun b!21855 () Bool)

(declare-fun e!14202 () Bool)

(declare-fun e!14200 () Bool)

(assert (=> b!21855 (= e!14202 e!14200)))

(declare-fun lt!7080 () (_ BitVec 64))

(assert (=> b!21855 (= lt!7080 (select (arr!580 (_keys!3140 (v!1573 (_2!446 lt!6677)))) #b00000000000000000000000000000000))))

(declare-fun lt!7081 () Unit!454)

(assert (=> b!21855 (= lt!7081 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!3140 (v!1573 (_2!446 lt!6677))) lt!7080 #b00000000000000000000000000000000))))

(assert (=> b!21855 (arrayContainsKey!0 (_keys!3140 (v!1573 (_2!446 lt!6677))) lt!7080 #b00000000000000000000000000000000)))

(declare-fun lt!7082 () Unit!454)

(assert (=> b!21855 (= lt!7082 lt!7081)))

(declare-fun res!13942 () Bool)

(assert (=> b!21855 (= res!13942 (= (seekEntryOrOpen!0 (select (arr!580 (_keys!3140 (v!1573 (_2!446 lt!6677)))) #b00000000000000000000000000000000) (_keys!3140 (v!1573 (_2!446 lt!6677))) (mask!4692 (v!1573 (_2!446 lt!6677)))) (Found!56 #b00000000000000000000000000000000)))))

(assert (=> b!21855 (=> (not res!13942) (not e!14200))))

(declare-fun b!21856 () Bool)

(declare-fun call!1486 () Bool)

(assert (=> b!21856 (= e!14202 call!1486)))

(declare-fun d!3779 () Bool)

(declare-fun res!13943 () Bool)

(declare-fun e!14201 () Bool)

(assert (=> d!3779 (=> res!13943 e!14201)))

(assert (=> d!3779 (= res!13943 (bvsge #b00000000000000000000000000000000 (size!673 (_keys!3140 (v!1573 (_2!446 lt!6677))))))))

(assert (=> d!3779 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!3140 (v!1573 (_2!446 lt!6677))) (mask!4692 (v!1573 (_2!446 lt!6677)))) e!14201)))

(declare-fun b!21857 () Bool)

(assert (=> b!21857 (= e!14201 e!14202)))

(declare-fun c!2594 () Bool)

(assert (=> b!21857 (= c!2594 (validKeyInArray!0 (select (arr!580 (_keys!3140 (v!1573 (_2!446 lt!6677)))) #b00000000000000000000000000000000)))))

(declare-fun b!21858 () Bool)

(assert (=> b!21858 (= e!14200 call!1486)))

(declare-fun bm!1483 () Bool)

(assert (=> bm!1483 (= call!1486 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (_keys!3140 (v!1573 (_2!446 lt!6677))) (mask!4692 (v!1573 (_2!446 lt!6677)))))))

(assert (= (and d!3779 (not res!13943)) b!21857))

(assert (= (and b!21857 c!2594) b!21855))

(assert (= (and b!21857 (not c!2594)) b!21856))

(assert (= (and b!21855 res!13942) b!21858))

(assert (= (or b!21858 b!21856) bm!1483))

(declare-fun m!15313 () Bool)

(assert (=> b!21855 m!15313))

(declare-fun m!15315 () Bool)

(assert (=> b!21855 m!15315))

(declare-fun m!15317 () Bool)

(assert (=> b!21855 m!15317))

(assert (=> b!21855 m!15313))

(declare-fun m!15319 () Bool)

(assert (=> b!21855 m!15319))

(assert (=> b!21857 m!15313))

(assert (=> b!21857 m!15313))

(declare-fun m!15321 () Bool)

(assert (=> b!21857 m!15321))

(declare-fun m!15323 () Bool)

(assert (=> bm!1483 m!15323))

(assert (=> b!21497 d!3779))

(declare-fun d!3781 () Bool)

(declare-fun e!14205 () Bool)

(assert (=> d!3781 e!14205))

(declare-fun res!13948 () Bool)

(assert (=> d!3781 (=> (not res!13948) (not e!14205))))

(declare-fun lt!7094 () ListLongMap!545)

(assert (=> d!3781 (= res!13948 (contains!215 lt!7094 (_1!448 (ite c!2561 (ite c!2565 (tuple2!891 #b0000000000000000000000000000000000000000000000000000000000000000 (ite c!2483 (minValue!1646 (v!1573 (underlying!104 thiss!938))) (ite c!2482 (zeroValue!1646 (v!1573 (underlying!104 thiss!938))) (minValue!1646 (v!1573 (underlying!104 thiss!938)))))) (tuple2!891 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!2483 (minValue!1646 (v!1573 (underlying!104 thiss!938))) (ite c!2482 (zeroValue!1646 (v!1573 (underlying!104 thiss!938))) (minValue!1646 (v!1573 (underlying!104 thiss!938))))))) (tuple2!891 (ite c!2483 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!2482 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000)) (ite c!2483 (minValue!1646 (v!1573 (underlying!104 thiss!938))) (ite c!2482 (zeroValue!1646 (v!1573 (underlying!104 thiss!938))) (minValue!1646 (v!1573 (underlying!104 thiss!938))))))))))))

(declare-fun lt!7091 () List!558)

(assert (=> d!3781 (= lt!7094 (ListLongMap!546 lt!7091))))

(declare-fun lt!7093 () Unit!454)

(declare-fun lt!7092 () Unit!454)

(assert (=> d!3781 (= lt!7093 lt!7092)))

(assert (=> d!3781 (= (getValueByKey!60 lt!7091 (_1!448 (ite c!2561 (ite c!2565 (tuple2!891 #b0000000000000000000000000000000000000000000000000000000000000000 (ite c!2483 (minValue!1646 (v!1573 (underlying!104 thiss!938))) (ite c!2482 (zeroValue!1646 (v!1573 (underlying!104 thiss!938))) (minValue!1646 (v!1573 (underlying!104 thiss!938)))))) (tuple2!891 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!2483 (minValue!1646 (v!1573 (underlying!104 thiss!938))) (ite c!2482 (zeroValue!1646 (v!1573 (underlying!104 thiss!938))) (minValue!1646 (v!1573 (underlying!104 thiss!938))))))) (tuple2!891 (ite c!2483 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!2482 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000)) (ite c!2483 (minValue!1646 (v!1573 (underlying!104 thiss!938))) (ite c!2482 (zeroValue!1646 (v!1573 (underlying!104 thiss!938))) (minValue!1646 (v!1573 (underlying!104 thiss!938))))))))) (Some!65 (_2!448 (ite c!2561 (ite c!2565 (tuple2!891 #b0000000000000000000000000000000000000000000000000000000000000000 (ite c!2483 (minValue!1646 (v!1573 (underlying!104 thiss!938))) (ite c!2482 (zeroValue!1646 (v!1573 (underlying!104 thiss!938))) (minValue!1646 (v!1573 (underlying!104 thiss!938)))))) (tuple2!891 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!2483 (minValue!1646 (v!1573 (underlying!104 thiss!938))) (ite c!2482 (zeroValue!1646 (v!1573 (underlying!104 thiss!938))) (minValue!1646 (v!1573 (underlying!104 thiss!938))))))) (tuple2!891 (ite c!2483 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!2482 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000)) (ite c!2483 (minValue!1646 (v!1573 (underlying!104 thiss!938))) (ite c!2482 (zeroValue!1646 (v!1573 (underlying!104 thiss!938))) (minValue!1646 (v!1573 (underlying!104 thiss!938))))))))))))

(declare-fun lemmaContainsTupThenGetReturnValue!17 (List!558 (_ BitVec 64) V!1157) Unit!454)

(assert (=> d!3781 (= lt!7092 (lemmaContainsTupThenGetReturnValue!17 lt!7091 (_1!448 (ite c!2561 (ite c!2565 (tuple2!891 #b0000000000000000000000000000000000000000000000000000000000000000 (ite c!2483 (minValue!1646 (v!1573 (underlying!104 thiss!938))) (ite c!2482 (zeroValue!1646 (v!1573 (underlying!104 thiss!938))) (minValue!1646 (v!1573 (underlying!104 thiss!938)))))) (tuple2!891 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!2483 (minValue!1646 (v!1573 (underlying!104 thiss!938))) (ite c!2482 (zeroValue!1646 (v!1573 (underlying!104 thiss!938))) (minValue!1646 (v!1573 (underlying!104 thiss!938))))))) (tuple2!891 (ite c!2483 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!2482 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000)) (ite c!2483 (minValue!1646 (v!1573 (underlying!104 thiss!938))) (ite c!2482 (zeroValue!1646 (v!1573 (underlying!104 thiss!938))) (minValue!1646 (v!1573 (underlying!104 thiss!938)))))))) (_2!448 (ite c!2561 (ite c!2565 (tuple2!891 #b0000000000000000000000000000000000000000000000000000000000000000 (ite c!2483 (minValue!1646 (v!1573 (underlying!104 thiss!938))) (ite c!2482 (zeroValue!1646 (v!1573 (underlying!104 thiss!938))) (minValue!1646 (v!1573 (underlying!104 thiss!938)))))) (tuple2!891 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!2483 (minValue!1646 (v!1573 (underlying!104 thiss!938))) (ite c!2482 (zeroValue!1646 (v!1573 (underlying!104 thiss!938))) (minValue!1646 (v!1573 (underlying!104 thiss!938))))))) (tuple2!891 (ite c!2483 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!2482 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000)) (ite c!2483 (minValue!1646 (v!1573 (underlying!104 thiss!938))) (ite c!2482 (zeroValue!1646 (v!1573 (underlying!104 thiss!938))) (minValue!1646 (v!1573 (underlying!104 thiss!938))))))))))))

(declare-fun insertStrictlySorted!17 (List!558 (_ BitVec 64) V!1157) List!558)

(assert (=> d!3781 (= lt!7091 (insertStrictlySorted!17 (toList!288 (ite c!2561 call!1454 call!1461)) (_1!448 (ite c!2561 (ite c!2565 (tuple2!891 #b0000000000000000000000000000000000000000000000000000000000000000 (ite c!2483 (minValue!1646 (v!1573 (underlying!104 thiss!938))) (ite c!2482 (zeroValue!1646 (v!1573 (underlying!104 thiss!938))) (minValue!1646 (v!1573 (underlying!104 thiss!938)))))) (tuple2!891 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!2483 (minValue!1646 (v!1573 (underlying!104 thiss!938))) (ite c!2482 (zeroValue!1646 (v!1573 (underlying!104 thiss!938))) (minValue!1646 (v!1573 (underlying!104 thiss!938))))))) (tuple2!891 (ite c!2483 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!2482 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000)) (ite c!2483 (minValue!1646 (v!1573 (underlying!104 thiss!938))) (ite c!2482 (zeroValue!1646 (v!1573 (underlying!104 thiss!938))) (minValue!1646 (v!1573 (underlying!104 thiss!938)))))))) (_2!448 (ite c!2561 (ite c!2565 (tuple2!891 #b0000000000000000000000000000000000000000000000000000000000000000 (ite c!2483 (minValue!1646 (v!1573 (underlying!104 thiss!938))) (ite c!2482 (zeroValue!1646 (v!1573 (underlying!104 thiss!938))) (minValue!1646 (v!1573 (underlying!104 thiss!938)))))) (tuple2!891 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!2483 (minValue!1646 (v!1573 (underlying!104 thiss!938))) (ite c!2482 (zeroValue!1646 (v!1573 (underlying!104 thiss!938))) (minValue!1646 (v!1573 (underlying!104 thiss!938))))))) (tuple2!891 (ite c!2483 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!2482 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000)) (ite c!2483 (minValue!1646 (v!1573 (underlying!104 thiss!938))) (ite c!2482 (zeroValue!1646 (v!1573 (underlying!104 thiss!938))) (minValue!1646 (v!1573 (underlying!104 thiss!938))))))))))))

(assert (=> d!3781 (= (+!42 (ite c!2561 call!1454 call!1461) (ite c!2561 (ite c!2565 (tuple2!891 #b0000000000000000000000000000000000000000000000000000000000000000 (ite c!2483 (minValue!1646 (v!1573 (underlying!104 thiss!938))) (ite c!2482 (zeroValue!1646 (v!1573 (underlying!104 thiss!938))) (minValue!1646 (v!1573 (underlying!104 thiss!938)))))) (tuple2!891 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!2483 (minValue!1646 (v!1573 (underlying!104 thiss!938))) (ite c!2482 (zeroValue!1646 (v!1573 (underlying!104 thiss!938))) (minValue!1646 (v!1573 (underlying!104 thiss!938))))))) (tuple2!891 (ite c!2483 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!2482 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000)) (ite c!2483 (minValue!1646 (v!1573 (underlying!104 thiss!938))) (ite c!2482 (zeroValue!1646 (v!1573 (underlying!104 thiss!938))) (minValue!1646 (v!1573 (underlying!104 thiss!938)))))))) lt!7094)))

(declare-fun b!21863 () Bool)

(declare-fun res!13949 () Bool)

(assert (=> b!21863 (=> (not res!13949) (not e!14205))))

(assert (=> b!21863 (= res!13949 (= (getValueByKey!60 (toList!288 lt!7094) (_1!448 (ite c!2561 (ite c!2565 (tuple2!891 #b0000000000000000000000000000000000000000000000000000000000000000 (ite c!2483 (minValue!1646 (v!1573 (underlying!104 thiss!938))) (ite c!2482 (zeroValue!1646 (v!1573 (underlying!104 thiss!938))) (minValue!1646 (v!1573 (underlying!104 thiss!938)))))) (tuple2!891 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!2483 (minValue!1646 (v!1573 (underlying!104 thiss!938))) (ite c!2482 (zeroValue!1646 (v!1573 (underlying!104 thiss!938))) (minValue!1646 (v!1573 (underlying!104 thiss!938))))))) (tuple2!891 (ite c!2483 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!2482 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000)) (ite c!2483 (minValue!1646 (v!1573 (underlying!104 thiss!938))) (ite c!2482 (zeroValue!1646 (v!1573 (underlying!104 thiss!938))) (minValue!1646 (v!1573 (underlying!104 thiss!938))))))))) (Some!65 (_2!448 (ite c!2561 (ite c!2565 (tuple2!891 #b0000000000000000000000000000000000000000000000000000000000000000 (ite c!2483 (minValue!1646 (v!1573 (underlying!104 thiss!938))) (ite c!2482 (zeroValue!1646 (v!1573 (underlying!104 thiss!938))) (minValue!1646 (v!1573 (underlying!104 thiss!938)))))) (tuple2!891 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!2483 (minValue!1646 (v!1573 (underlying!104 thiss!938))) (ite c!2482 (zeroValue!1646 (v!1573 (underlying!104 thiss!938))) (minValue!1646 (v!1573 (underlying!104 thiss!938))))))) (tuple2!891 (ite c!2483 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!2482 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000)) (ite c!2483 (minValue!1646 (v!1573 (underlying!104 thiss!938))) (ite c!2482 (zeroValue!1646 (v!1573 (underlying!104 thiss!938))) (minValue!1646 (v!1573 (underlying!104 thiss!938)))))))))))))

(declare-fun b!21864 () Bool)

(declare-fun contains!216 (List!558 tuple2!890) Bool)

(assert (=> b!21864 (= e!14205 (contains!216 (toList!288 lt!7094) (ite c!2561 (ite c!2565 (tuple2!891 #b0000000000000000000000000000000000000000000000000000000000000000 (ite c!2483 (minValue!1646 (v!1573 (underlying!104 thiss!938))) (ite c!2482 (zeroValue!1646 (v!1573 (underlying!104 thiss!938))) (minValue!1646 (v!1573 (underlying!104 thiss!938)))))) (tuple2!891 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!2483 (minValue!1646 (v!1573 (underlying!104 thiss!938))) (ite c!2482 (zeroValue!1646 (v!1573 (underlying!104 thiss!938))) (minValue!1646 (v!1573 (underlying!104 thiss!938))))))) (tuple2!891 (ite c!2483 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!2482 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000)) (ite c!2483 (minValue!1646 (v!1573 (underlying!104 thiss!938))) (ite c!2482 (zeroValue!1646 (v!1573 (underlying!104 thiss!938))) (minValue!1646 (v!1573 (underlying!104 thiss!938)))))))))))

(assert (= (and d!3781 res!13948) b!21863))

(assert (= (and b!21863 res!13949) b!21864))

(declare-fun m!15325 () Bool)

(assert (=> d!3781 m!15325))

(declare-fun m!15327 () Bool)

(assert (=> d!3781 m!15327))

(declare-fun m!15329 () Bool)

(assert (=> d!3781 m!15329))

(declare-fun m!15331 () Bool)

(assert (=> d!3781 m!15331))

(declare-fun m!15333 () Bool)

(assert (=> b!21863 m!15333))

(declare-fun m!15335 () Bool)

(assert (=> b!21864 m!15335))

(assert (=> bm!1454 d!3781))

(declare-fun d!3783 () Bool)

(assert (=> d!3783 (= (map!398 lt!6759) (getCurrentListMap!117 (_keys!3140 lt!6759) (_values!1708 lt!6759) (mask!4692 lt!6759) (extraKeys!1622 lt!6759) (zeroValue!1646 lt!6759) (minValue!1646 lt!6759) #b00000000000000000000000000000000 (defaultEntry!1719 lt!6759)))))

(declare-fun bs!911 () Bool)

(assert (= bs!911 d!3783))

(declare-fun m!15337 () Bool)

(assert (=> bs!911 m!15337))

(assert (=> b!21515 d!3783))

(declare-fun bm!1484 () Bool)

(declare-fun call!1493 () Bool)

(declare-fun lt!7097 () ListLongMap!545)

(assert (=> bm!1484 (= call!1493 (contains!215 lt!7097 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun bm!1485 () Bool)

(declare-fun call!1489 () ListLongMap!545)

(declare-fun call!1491 () ListLongMap!545)

(assert (=> bm!1485 (= call!1489 call!1491)))

(declare-fun b!21865 () Bool)

(declare-fun e!14210 () Bool)

(declare-fun call!1488 () Bool)

(assert (=> b!21865 (= e!14210 (not call!1488))))

(declare-fun bm!1486 () Bool)

(assert (=> bm!1486 (= call!1488 (contains!215 lt!7097 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!21866 () Bool)

(declare-fun e!14215 () Bool)

(assert (=> b!21866 (= e!14215 (= (apply!28 lt!7097 #b1000000000000000000000000000000000000000000000000000000000000000) (minValue!1646 lt!6678)))))

(declare-fun b!21867 () Bool)

(declare-fun e!14217 () ListLongMap!545)

(assert (=> b!21867 (= e!14217 call!1489)))

(declare-fun b!21868 () Bool)

(declare-fun e!14211 () Bool)

(assert (=> b!21868 (= e!14211 (validKeyInArray!0 (select (arr!580 (_keys!3140 lt!6678)) #b00000000000000000000000000000000)))))

(declare-fun bm!1487 () Bool)

(declare-fun call!1492 () ListLongMap!545)

(declare-fun call!1487 () ListLongMap!545)

(assert (=> bm!1487 (= call!1492 call!1487)))

(declare-fun b!21869 () Bool)

(declare-fun e!14208 () Bool)

(declare-fun e!14214 () Bool)

(assert (=> b!21869 (= e!14208 e!14214)))

(declare-fun res!13956 () Bool)

(assert (=> b!21869 (=> (not res!13956) (not e!14214))))

(assert (=> b!21869 (= res!13956 (contains!215 lt!7097 (select (arr!580 (_keys!3140 lt!6678)) #b00000000000000000000000000000000)))))

(assert (=> b!21869 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!673 (_keys!3140 lt!6678))))))

(declare-fun b!21870 () Bool)

(declare-fun e!14209 () Bool)

(assert (=> b!21870 (= e!14209 (= (apply!28 lt!7097 #b0000000000000000000000000000000000000000000000000000000000000000) (zeroValue!1646 lt!6678)))))

(declare-fun b!21871 () Bool)

(declare-fun e!14212 () ListLongMap!545)

(assert (=> b!21871 (= e!14212 call!1489)))

(declare-fun b!21872 () Bool)

(declare-fun e!14213 () ListLongMap!545)

(assert (=> b!21872 (= e!14213 (+!42 call!1491 (tuple2!891 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!1646 lt!6678))))))

(declare-fun b!21873 () Bool)

(declare-fun e!14206 () Bool)

(assert (=> b!21873 (= e!14206 (validKeyInArray!0 (select (arr!580 (_keys!3140 lt!6678)) #b00000000000000000000000000000000)))))

(declare-fun b!21874 () Bool)

(declare-fun res!13952 () Bool)

(declare-fun e!14207 () Bool)

(assert (=> b!21874 (=> (not res!13952) (not e!14207))))

(assert (=> b!21874 (= res!13952 e!14208)))

(declare-fun res!13958 () Bool)

(assert (=> b!21874 (=> res!13958 e!14208)))

(assert (=> b!21874 (= res!13958 (not e!14206))))

(declare-fun res!13955 () Bool)

(assert (=> b!21874 (=> (not res!13955) (not e!14206))))

(assert (=> b!21874 (= res!13955 (bvslt #b00000000000000000000000000000000 (size!673 (_keys!3140 lt!6678))))))

(declare-fun b!21875 () Bool)

(assert (=> b!21875 (= e!14213 e!14217)))

(declare-fun c!2600 () Bool)

(assert (=> b!21875 (= c!2600 (and (not (= (bvand (extraKeys!1622 lt!6678) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand (extraKeys!1622 lt!6678) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun d!3785 () Bool)

(assert (=> d!3785 e!14207))

(declare-fun res!13951 () Bool)

(assert (=> d!3785 (=> (not res!13951) (not e!14207))))

(assert (=> d!3785 (= res!13951 (or (bvsge #b00000000000000000000000000000000 (size!673 (_keys!3140 lt!6678))) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!673 (_keys!3140 lt!6678))))))))

(declare-fun lt!7101 () ListLongMap!545)

(assert (=> d!3785 (= lt!7097 lt!7101)))

(declare-fun lt!7115 () Unit!454)

(declare-fun e!14216 () Unit!454)

(assert (=> d!3785 (= lt!7115 e!14216)))

(declare-fun c!2598 () Bool)

(assert (=> d!3785 (= c!2598 e!14211)))

(declare-fun res!13953 () Bool)

(assert (=> d!3785 (=> (not res!13953) (not e!14211))))

(assert (=> d!3785 (= res!13953 (bvslt #b00000000000000000000000000000000 (size!673 (_keys!3140 lt!6678))))))

(assert (=> d!3785 (= lt!7101 e!14213)))

(declare-fun c!2597 () Bool)

(assert (=> d!3785 (= c!2597 (and (not (= (bvand (extraKeys!1622 lt!6678) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (extraKeys!1622 lt!6678) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!3785 (validMask!0 (mask!4692 lt!6678))))

(assert (=> d!3785 (= (getCurrentListMap!117 (_keys!3140 lt!6678) (ite c!2547 (_values!1708 lt!6678) lt!6910) (mask!4692 lt!6678) (extraKeys!1622 lt!6678) (zeroValue!1646 lt!6678) (minValue!1646 lt!6678) #b00000000000000000000000000000000 (defaultEntry!1719 lt!6678)) lt!7097)))

(declare-fun b!21876 () Bool)

(assert (=> b!21876 (= e!14210 e!14209)))

(declare-fun res!13950 () Bool)

(assert (=> b!21876 (= res!13950 call!1488)))

(assert (=> b!21876 (=> (not res!13950) (not e!14209))))

(declare-fun b!21877 () Bool)

(declare-fun Unit!470 () Unit!454)

(assert (=> b!21877 (= e!14216 Unit!470)))

(declare-fun call!1490 () ListLongMap!545)

(declare-fun bm!1488 () Bool)

(assert (=> bm!1488 (= call!1491 (+!42 (ite c!2597 call!1490 (ite c!2600 call!1487 call!1492)) (ite (or c!2597 c!2600) (tuple2!891 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!1646 lt!6678)) (tuple2!891 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!1646 lt!6678)))))))

(declare-fun b!21878 () Bool)

(declare-fun e!14218 () Bool)

(assert (=> b!21878 (= e!14218 (not call!1493))))

(declare-fun b!21879 () Bool)

(declare-fun res!13954 () Bool)

(assert (=> b!21879 (=> (not res!13954) (not e!14207))))

(assert (=> b!21879 (= res!13954 e!14210)))

(declare-fun c!2596 () Bool)

(assert (=> b!21879 (= c!2596 (not (= (bvand (extraKeys!1622 lt!6678) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!21880 () Bool)

(assert (=> b!21880 (= e!14212 call!1492)))

(declare-fun bm!1489 () Bool)

(assert (=> bm!1489 (= call!1490 (getCurrentListMapNoExtraKeys!13 (_keys!3140 lt!6678) (ite c!2547 (_values!1708 lt!6678) lt!6910) (mask!4692 lt!6678) (extraKeys!1622 lt!6678) (zeroValue!1646 lt!6678) (minValue!1646 lt!6678) #b00000000000000000000000000000000 (defaultEntry!1719 lt!6678)))))

(declare-fun b!21881 () Bool)

(assert (=> b!21881 (= e!14218 e!14215)))

(declare-fun res!13957 () Bool)

(assert (=> b!21881 (= res!13957 call!1493)))

(assert (=> b!21881 (=> (not res!13957) (not e!14215))))

(declare-fun b!21882 () Bool)

(declare-fun c!2595 () Bool)

(assert (=> b!21882 (= c!2595 (and (not (= (bvand (extraKeys!1622 lt!6678) #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand (extraKeys!1622 lt!6678) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!21882 (= e!14217 e!14212)))

(declare-fun b!21883 () Bool)

(assert (=> b!21883 (= e!14207 e!14218)))

(declare-fun c!2599 () Bool)

(assert (=> b!21883 (= c!2599 (not (= (bvand (extraKeys!1622 lt!6678) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!21884 () Bool)

(assert (=> b!21884 (= e!14214 (= (apply!28 lt!7097 (select (arr!580 (_keys!3140 lt!6678)) #b00000000000000000000000000000000)) (get!377 (select (arr!579 (ite c!2547 (_values!1708 lt!6678) lt!6910)) #b00000000000000000000000000000000) (dynLambda!141 (defaultEntry!1719 lt!6678) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!21884 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!672 (ite c!2547 (_values!1708 lt!6678) lt!6910))))))

(assert (=> b!21884 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!673 (_keys!3140 lt!6678))))))

(declare-fun b!21885 () Bool)

(declare-fun lt!7114 () Unit!454)

(assert (=> b!21885 (= e!14216 lt!7114)))

(declare-fun lt!7107 () ListLongMap!545)

(assert (=> b!21885 (= lt!7107 (getCurrentListMapNoExtraKeys!13 (_keys!3140 lt!6678) (ite c!2547 (_values!1708 lt!6678) lt!6910) (mask!4692 lt!6678) (extraKeys!1622 lt!6678) (zeroValue!1646 lt!6678) (minValue!1646 lt!6678) #b00000000000000000000000000000000 (defaultEntry!1719 lt!6678)))))

(declare-fun lt!7099 () (_ BitVec 64))

(assert (=> b!21885 (= lt!7099 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!7102 () (_ BitVec 64))

(assert (=> b!21885 (= lt!7102 (select (arr!580 (_keys!3140 lt!6678)) #b00000000000000000000000000000000))))

(declare-fun lt!7111 () Unit!454)

(assert (=> b!21885 (= lt!7111 (addStillContains!13 lt!7107 lt!7099 (zeroValue!1646 lt!6678) lt!7102))))

(assert (=> b!21885 (contains!215 (+!42 lt!7107 (tuple2!891 lt!7099 (zeroValue!1646 lt!6678))) lt!7102)))

(declare-fun lt!7104 () Unit!454)

(assert (=> b!21885 (= lt!7104 lt!7111)))

(declare-fun lt!7106 () ListLongMap!545)

(assert (=> b!21885 (= lt!7106 (getCurrentListMapNoExtraKeys!13 (_keys!3140 lt!6678) (ite c!2547 (_values!1708 lt!6678) lt!6910) (mask!4692 lt!6678) (extraKeys!1622 lt!6678) (zeroValue!1646 lt!6678) (minValue!1646 lt!6678) #b00000000000000000000000000000000 (defaultEntry!1719 lt!6678)))))

(declare-fun lt!7103 () (_ BitVec 64))

(assert (=> b!21885 (= lt!7103 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!7098 () (_ BitVec 64))

(assert (=> b!21885 (= lt!7098 (select (arr!580 (_keys!3140 lt!6678)) #b00000000000000000000000000000000))))

(declare-fun lt!7105 () Unit!454)

(assert (=> b!21885 (= lt!7105 (addApplyDifferent!13 lt!7106 lt!7103 (minValue!1646 lt!6678) lt!7098))))

(assert (=> b!21885 (= (apply!28 (+!42 lt!7106 (tuple2!891 lt!7103 (minValue!1646 lt!6678))) lt!7098) (apply!28 lt!7106 lt!7098))))

(declare-fun lt!7108 () Unit!454)

(assert (=> b!21885 (= lt!7108 lt!7105)))

(declare-fun lt!7109 () ListLongMap!545)

(assert (=> b!21885 (= lt!7109 (getCurrentListMapNoExtraKeys!13 (_keys!3140 lt!6678) (ite c!2547 (_values!1708 lt!6678) lt!6910) (mask!4692 lt!6678) (extraKeys!1622 lt!6678) (zeroValue!1646 lt!6678) (minValue!1646 lt!6678) #b00000000000000000000000000000000 (defaultEntry!1719 lt!6678)))))

(declare-fun lt!7116 () (_ BitVec 64))

(assert (=> b!21885 (= lt!7116 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!7112 () (_ BitVec 64))

(assert (=> b!21885 (= lt!7112 (select (arr!580 (_keys!3140 lt!6678)) #b00000000000000000000000000000000))))

(declare-fun lt!7095 () Unit!454)

(assert (=> b!21885 (= lt!7095 (addApplyDifferent!13 lt!7109 lt!7116 (zeroValue!1646 lt!6678) lt!7112))))

(assert (=> b!21885 (= (apply!28 (+!42 lt!7109 (tuple2!891 lt!7116 (zeroValue!1646 lt!6678))) lt!7112) (apply!28 lt!7109 lt!7112))))

(declare-fun lt!7110 () Unit!454)

(assert (=> b!21885 (= lt!7110 lt!7095)))

(declare-fun lt!7096 () ListLongMap!545)

(assert (=> b!21885 (= lt!7096 (getCurrentListMapNoExtraKeys!13 (_keys!3140 lt!6678) (ite c!2547 (_values!1708 lt!6678) lt!6910) (mask!4692 lt!6678) (extraKeys!1622 lt!6678) (zeroValue!1646 lt!6678) (minValue!1646 lt!6678) #b00000000000000000000000000000000 (defaultEntry!1719 lt!6678)))))

(declare-fun lt!7113 () (_ BitVec 64))

(assert (=> b!21885 (= lt!7113 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!7100 () (_ BitVec 64))

(assert (=> b!21885 (= lt!7100 (select (arr!580 (_keys!3140 lt!6678)) #b00000000000000000000000000000000))))

(assert (=> b!21885 (= lt!7114 (addApplyDifferent!13 lt!7096 lt!7113 (minValue!1646 lt!6678) lt!7100))))

(assert (=> b!21885 (= (apply!28 (+!42 lt!7096 (tuple2!891 lt!7113 (minValue!1646 lt!6678))) lt!7100) (apply!28 lt!7096 lt!7100))))

(declare-fun bm!1490 () Bool)

(assert (=> bm!1490 (= call!1487 call!1490)))

(assert (= (and d!3785 c!2597) b!21872))

(assert (= (and d!3785 (not c!2597)) b!21875))

(assert (= (and b!21875 c!2600) b!21867))

(assert (= (and b!21875 (not c!2600)) b!21882))

(assert (= (and b!21882 c!2595) b!21871))

(assert (= (and b!21882 (not c!2595)) b!21880))

(assert (= (or b!21871 b!21880) bm!1487))

(assert (= (or b!21867 bm!1487) bm!1490))

(assert (= (or b!21867 b!21871) bm!1485))

(assert (= (or b!21872 bm!1490) bm!1489))

(assert (= (or b!21872 bm!1485) bm!1488))

(assert (= (and d!3785 res!13953) b!21868))

(assert (= (and d!3785 c!2598) b!21885))

(assert (= (and d!3785 (not c!2598)) b!21877))

(assert (= (and d!3785 res!13951) b!21874))

(assert (= (and b!21874 res!13955) b!21873))

(assert (= (and b!21874 (not res!13958)) b!21869))

(assert (= (and b!21869 res!13956) b!21884))

(assert (= (and b!21874 res!13952) b!21879))

(assert (= (and b!21879 c!2596) b!21876))

(assert (= (and b!21879 (not c!2596)) b!21865))

(assert (= (and b!21876 res!13950) b!21870))

(assert (= (or b!21876 b!21865) bm!1486))

(assert (= (and b!21879 res!13954) b!21883))

(assert (= (and b!21883 c!2599) b!21881))

(assert (= (and b!21883 (not c!2599)) b!21878))

(assert (= (and b!21881 res!13957) b!21866))

(assert (= (or b!21881 b!21878) bm!1484))

(declare-fun b_lambda!1537 () Bool)

(assert (=> (not b_lambda!1537) (not b!21884)))

(declare-fun t!3223 () Bool)

(declare-fun tb!649 () Bool)

(assert (=> (and b!21424 (= (defaultEntry!1719 (v!1573 (underlying!104 thiss!938))) (defaultEntry!1719 lt!6678)) t!3223) tb!649))

(declare-fun result!1077 () Bool)

(assert (=> tb!649 (= result!1077 tp_is_empty!999)))

(assert (=> b!21884 t!3223))

(declare-fun b_and!1435 () Bool)

(assert (= b_and!1433 (and (=> t!3223 result!1077) b_and!1435)))

(declare-fun m!15339 () Bool)

(assert (=> bm!1488 m!15339))

(declare-fun m!15341 () Bool)

(assert (=> bm!1486 m!15341))

(declare-fun m!15343 () Bool)

(assert (=> b!21866 m!15343))

(declare-fun m!15345 () Bool)

(assert (=> b!21873 m!15345))

(assert (=> b!21873 m!15345))

(declare-fun m!15347 () Bool)

(assert (=> b!21873 m!15347))

(declare-fun m!15349 () Bool)

(assert (=> b!21872 m!15349))

(declare-fun m!15351 () Bool)

(assert (=> b!21870 m!15351))

(declare-fun m!15353 () Bool)

(assert (=> bm!1484 m!15353))

(declare-fun m!15355 () Bool)

(assert (=> bm!1489 m!15355))

(assert (=> b!21868 m!15345))

(assert (=> b!21868 m!15345))

(assert (=> b!21868 m!15347))

(assert (=> d!3785 m!15275))

(declare-fun m!15357 () Bool)

(assert (=> b!21885 m!15357))

(declare-fun m!15359 () Bool)

(assert (=> b!21885 m!15359))

(assert (=> b!21885 m!15345))

(declare-fun m!15361 () Bool)

(assert (=> b!21885 m!15361))

(assert (=> b!21885 m!15357))

(assert (=> b!21885 m!15355))

(declare-fun m!15363 () Bool)

(assert (=> b!21885 m!15363))

(declare-fun m!15365 () Bool)

(assert (=> b!21885 m!15365))

(declare-fun m!15367 () Bool)

(assert (=> b!21885 m!15367))

(declare-fun m!15369 () Bool)

(assert (=> b!21885 m!15369))

(assert (=> b!21885 m!15361))

(declare-fun m!15371 () Bool)

(assert (=> b!21885 m!15371))

(declare-fun m!15373 () Bool)

(assert (=> b!21885 m!15373))

(declare-fun m!15375 () Bool)

(assert (=> b!21885 m!15375))

(declare-fun m!15377 () Bool)

(assert (=> b!21885 m!15377))

(assert (=> b!21885 m!15373))

(declare-fun m!15379 () Bool)

(assert (=> b!21885 m!15379))

(declare-fun m!15381 () Bool)

(assert (=> b!21885 m!15381))

(assert (=> b!21885 m!15375))

(declare-fun m!15383 () Bool)

(assert (=> b!21885 m!15383))

(declare-fun m!15385 () Bool)

(assert (=> b!21885 m!15385))

(assert (=> b!21884 m!15345))

(assert (=> b!21884 m!15345))

(declare-fun m!15387 () Bool)

(assert (=> b!21884 m!15387))

(declare-fun m!15389 () Bool)

(assert (=> b!21884 m!15389))

(declare-fun m!15391 () Bool)

(assert (=> b!21884 m!15391))

(declare-fun m!15393 () Bool)

(assert (=> b!21884 m!15393))

(assert (=> b!21884 m!15389))

(assert (=> b!21884 m!15391))

(assert (=> b!21869 m!15345))

(assert (=> b!21869 m!15345))

(declare-fun m!15395 () Bool)

(assert (=> b!21869 m!15395))

(assert (=> bm!1425 d!3785))

(declare-fun d!3787 () Bool)

(declare-fun res!13959 () Bool)

(declare-fun e!14219 () Bool)

(assert (=> d!3787 (=> res!13959 e!14219)))

(assert (=> d!3787 (= res!13959 (= (select (arr!580 lt!6754) #b00000000000000000000000000000000) (_1!448 lt!6764)))))

(assert (=> d!3787 (= (arrayContainsKey!0 lt!6754 (_1!448 lt!6764) #b00000000000000000000000000000000) e!14219)))

(declare-fun b!21886 () Bool)

(declare-fun e!14220 () Bool)

(assert (=> b!21886 (= e!14219 e!14220)))

(declare-fun res!13960 () Bool)

(assert (=> b!21886 (=> (not res!13960) (not e!14220))))

(assert (=> b!21886 (= res!13960 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!673 lt!6754)))))

(declare-fun b!21887 () Bool)

(assert (=> b!21887 (= e!14220 (arrayContainsKey!0 lt!6754 (_1!448 lt!6764) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!3787 (not res!13959)) b!21886))

(assert (= (and b!21886 res!13960) b!21887))

(declare-fun m!15397 () Bool)

(assert (=> d!3787 m!15397))

(declare-fun m!15399 () Bool)

(assert (=> b!21887 m!15399))

(assert (=> b!21513 d!3787))

(declare-fun b!21904 () Bool)

(declare-fun res!13969 () Bool)

(declare-fun e!14231 () Bool)

(assert (=> b!21904 (=> (not res!13969) (not e!14231))))

(declare-fun lt!7121 () SeekEntryResult!56)

(assert (=> b!21904 (= res!13969 (= (select (arr!580 (_keys!3140 (ite c!2483 (_2!447 lt!6680) lt!6678))) (index!2347 lt!7121)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!21904 (and (bvsge (index!2347 lt!7121) #b00000000000000000000000000000000) (bvslt (index!2347 lt!7121) (size!673 (_keys!3140 (ite c!2483 (_2!447 lt!6680) lt!6678)))))))

(declare-fun b!21905 () Bool)

(declare-fun e!14230 () Bool)

(declare-fun e!14232 () Bool)

(assert (=> b!21905 (= e!14230 e!14232)))

(declare-fun res!13971 () Bool)

(declare-fun call!1499 () Bool)

(assert (=> b!21905 (= res!13971 call!1499)))

(assert (=> b!21905 (=> (not res!13971) (not e!14232))))

(declare-fun b!21906 () Bool)

(declare-fun e!14229 () Bool)

(assert (=> b!21906 (= e!14230 e!14229)))

(declare-fun c!2605 () Bool)

(assert (=> b!21906 (= c!2605 ((_ is MissingVacant!56) lt!7121))))

(declare-fun b!21907 () Bool)

(assert (=> b!21907 (and (bvsge (index!2344 lt!7121) #b00000000000000000000000000000000) (bvslt (index!2344 lt!7121) (size!673 (_keys!3140 (ite c!2483 (_2!447 lt!6680) lt!6678)))))))

(declare-fun res!13970 () Bool)

(assert (=> b!21907 (= res!13970 (= (select (arr!580 (_keys!3140 (ite c!2483 (_2!447 lt!6680) lt!6678))) (index!2344 lt!7121)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!21907 (=> (not res!13970) (not e!14232))))

(declare-fun b!21908 () Bool)

(assert (=> b!21908 (= e!14229 ((_ is Undefined!56) lt!7121))))

(declare-fun d!3789 () Bool)

(assert (=> d!3789 e!14230))

(declare-fun c!2606 () Bool)

(assert (=> d!3789 (= c!2606 ((_ is MissingZero!56) lt!7121))))

(assert (=> d!3789 (= lt!7121 (seekEntryOrOpen!0 (ite c!2483 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!2482 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000)) (_keys!3140 (ite c!2483 (_2!447 lt!6680) lt!6678)) (mask!4692 (ite c!2483 (_2!447 lt!6680) lt!6678))))))

(declare-fun lt!7122 () Unit!454)

(declare-fun choose!199 (array!1223 array!1221 (_ BitVec 32) (_ BitVec 32) V!1157 V!1157 (_ BitVec 64) Int) Unit!454)

(assert (=> d!3789 (= lt!7122 (choose!199 (_keys!3140 (ite c!2483 (_2!447 lt!6680) lt!6678)) (_values!1708 (ite c!2483 (_2!447 lt!6680) lt!6678)) (mask!4692 (ite c!2483 (_2!447 lt!6680) lt!6678)) (extraKeys!1622 (ite c!2483 (_2!447 lt!6680) lt!6678)) (zeroValue!1646 (ite c!2483 (_2!447 lt!6680) lt!6678)) (minValue!1646 (ite c!2483 (_2!447 lt!6680) lt!6678)) (ite c!2483 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!2482 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000)) (defaultEntry!1719 (ite c!2483 (_2!447 lt!6680) lt!6678))))))

(assert (=> d!3789 (validMask!0 (mask!4692 (ite c!2483 (_2!447 lt!6680) lt!6678)))))

(assert (=> d!3789 (= (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!7 (_keys!3140 (ite c!2483 (_2!447 lt!6680) lt!6678)) (_values!1708 (ite c!2483 (_2!447 lt!6680) lt!6678)) (mask!4692 (ite c!2483 (_2!447 lt!6680) lt!6678)) (extraKeys!1622 (ite c!2483 (_2!447 lt!6680) lt!6678)) (zeroValue!1646 (ite c!2483 (_2!447 lt!6680) lt!6678)) (minValue!1646 (ite c!2483 (_2!447 lt!6680) lt!6678)) (ite c!2483 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!2482 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000)) (defaultEntry!1719 (ite c!2483 (_2!447 lt!6680) lt!6678))) lt!7122)))

(declare-fun call!1498 () Bool)

(declare-fun bm!1495 () Bool)

(assert (=> bm!1495 (= call!1498 (arrayContainsKey!0 (_keys!3140 (ite c!2483 (_2!447 lt!6680) lt!6678)) (ite c!2483 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!2482 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000)) #b00000000000000000000000000000000))))

(declare-fun b!21909 () Bool)

(declare-fun res!13972 () Bool)

(assert (=> b!21909 (=> (not res!13972) (not e!14231))))

(assert (=> b!21909 (= res!13972 call!1499)))

(assert (=> b!21909 (= e!14229 e!14231)))

(declare-fun bm!1496 () Bool)

(assert (=> bm!1496 (= call!1499 (inRange!0 (ite c!2606 (index!2344 lt!7121) (index!2347 lt!7121)) (mask!4692 (ite c!2483 (_2!447 lt!6680) lt!6678))))))

(declare-fun b!21910 () Bool)

(assert (=> b!21910 (= e!14232 (not call!1498))))

(declare-fun b!21911 () Bool)

(assert (=> b!21911 (= e!14231 (not call!1498))))

(assert (= (and d!3789 c!2606) b!21905))

(assert (= (and d!3789 (not c!2606)) b!21906))

(assert (= (and b!21905 res!13971) b!21907))

(assert (= (and b!21907 res!13970) b!21910))

(assert (= (and b!21906 c!2605) b!21909))

(assert (= (and b!21906 (not c!2605)) b!21908))

(assert (= (and b!21909 res!13972) b!21904))

(assert (= (and b!21904 res!13969) b!21911))

(assert (= (or b!21905 b!21909) bm!1496))

(assert (= (or b!21910 b!21911) bm!1495))

(assert (=> bm!1495 m!15185))

(declare-fun m!15401 () Bool)

(assert (=> b!21907 m!15401))

(declare-fun m!15403 () Bool)

(assert (=> b!21904 m!15403))

(assert (=> d!3789 m!15157))

(declare-fun m!15405 () Bool)

(assert (=> d!3789 m!15405))

(assert (=> d!3789 m!15303))

(declare-fun m!15407 () Bool)

(assert (=> bm!1496 m!15407))

(assert (=> bm!1464 d!3789))

(declare-fun d!3791 () Bool)

(declare-fun lt!7127 () tuple2!898)

(assert (=> d!3791 (or (bvsle (_2!452 lt!7127) #b00000000000000000000000000001000) (bvsge (bvmul #b00000000000000000000000000001000 (_size!134 (v!1573 (underlying!104 thiss!938)))) (_2!452 lt!7127)) (bvslt (bvadd (bvand (bvashr (_2!452 lt!7127) #b00000000000000000000000000000001) #b00111111111111111111111111111111) #b00000000000000000000000000000001) (_size!134 (v!1573 (underlying!104 thiss!938)))))))

(declare-fun e!14235 () tuple2!898)

(assert (=> d!3791 (= lt!7127 e!14235)))

(declare-fun c!2609 () Bool)

(declare-fun lt!7128 () (_ BitVec 32))

(assert (=> d!3791 (= c!2609 (and (bvsgt lt!7128 #b00000000000000000000000000001000) (bvslt (bvmul #b00000000000000000000000000001000 (_size!134 (v!1573 (underlying!104 thiss!938)))) lt!7128) (bvsge (bvadd (bvand (bvashr lt!7128 #b00000000000000000000000000000001) #b00111111111111111111111111111111) #b00000000000000000000000000000001) (_size!134 (v!1573 (underlying!104 thiss!938))))))))

(assert (=> d!3791 (= lt!7128 (bvlshr (_2!452 lt!6779) #b00000000000000000000000000000001))))

(assert (=> d!3791 (and (bvsgt (_2!452 lt!6779) #b00000000000000000000000000001000) (bvslt (bvmul #b00000000000000000000000000001000 (_size!134 (v!1573 (underlying!104 thiss!938)))) (_2!452 lt!6779)) (bvsge (bvadd (bvand (bvashr (_2!452 lt!6779) #b00000000000000000000000000000001) #b00111111111111111111111111111111) #b00000000000000000000000000000001) (_size!134 (v!1573 (underlying!104 thiss!938)))))))

(assert (=> d!3791 (= (computeNewMaskWhile!11 (_size!134 (v!1573 (underlying!104 thiss!938))) (_vacant!134 (v!1573 (underlying!104 thiss!938))) (mask!4692 (v!1573 (underlying!104 thiss!938))) (_2!452 lt!6779)) lt!7127)))

(declare-fun b!21916 () Bool)

(assert (=> b!21916 (= e!14235 (computeNewMaskWhile!11 (_size!134 (v!1573 (underlying!104 thiss!938))) (_vacant!134 (v!1573 (underlying!104 thiss!938))) (mask!4692 (v!1573 (underlying!104 thiss!938))) lt!7128))))

(declare-fun b!21917 () Bool)

(declare-fun Unit!471 () Unit!454)

(assert (=> b!21917 (= e!14235 (tuple2!899 Unit!471 lt!7128))))

(assert (= (and d!3791 c!2609) b!21916))

(assert (= (and d!3791 (not c!2609)) b!21917))

(declare-fun m!15410 () Bool)

(assert (=> b!21916 m!15410))

(assert (=> b!21525 d!3791))

(declare-fun d!3793 () Bool)

(declare-fun e!14236 () Bool)

(assert (=> d!3793 e!14236))

(declare-fun res!13974 () Bool)

(assert (=> d!3793 (=> (not res!13974) (not e!14236))))

(declare-fun lt!7130 () SeekEntryResult!56)

(assert (=> d!3793 (= res!13974 ((_ is Found!56) lt!7130))))

(assert (=> d!3793 (= lt!7130 (seekEntryOrOpen!0 (ite c!2483 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!2482 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000)) (_keys!3140 (ite c!2483 (_2!447 lt!6680) lt!6678)) (mask!4692 (ite c!2483 (_2!447 lt!6680) lt!6678))))))

(declare-fun lt!7129 () Unit!454)

(assert (=> d!3793 (= lt!7129 (choose!197 (_keys!3140 (ite c!2483 (_2!447 lt!6680) lt!6678)) (_values!1708 (ite c!2483 (_2!447 lt!6680) lt!6678)) (mask!4692 (ite c!2483 (_2!447 lt!6680) lt!6678)) (extraKeys!1622 (ite c!2483 (_2!447 lt!6680) lt!6678)) (zeroValue!1646 (ite c!2483 (_2!447 lt!6680) lt!6678)) (minValue!1646 (ite c!2483 (_2!447 lt!6680) lt!6678)) (ite c!2483 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!2482 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000)) (defaultEntry!1719 (ite c!2483 (_2!447 lt!6680) lt!6678))))))

(assert (=> d!3793 (validMask!0 (mask!4692 (ite c!2483 (_2!447 lt!6680) lt!6678)))))

(assert (=> d!3793 (= (lemmaInListMapThenSeekEntryOrOpenFindsIt!7 (_keys!3140 (ite c!2483 (_2!447 lt!6680) lt!6678)) (_values!1708 (ite c!2483 (_2!447 lt!6680) lt!6678)) (mask!4692 (ite c!2483 (_2!447 lt!6680) lt!6678)) (extraKeys!1622 (ite c!2483 (_2!447 lt!6680) lt!6678)) (zeroValue!1646 (ite c!2483 (_2!447 lt!6680) lt!6678)) (minValue!1646 (ite c!2483 (_2!447 lt!6680) lt!6678)) (ite c!2483 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!2482 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000)) (defaultEntry!1719 (ite c!2483 (_2!447 lt!6680) lt!6678))) lt!7129)))

(declare-fun b!21918 () Bool)

(declare-fun res!13973 () Bool)

(assert (=> b!21918 (=> (not res!13973) (not e!14236))))

(assert (=> b!21918 (= res!13973 (inRange!0 (index!2345 lt!7130) (mask!4692 (ite c!2483 (_2!447 lt!6680) lt!6678))))))

(declare-fun b!21919 () Bool)

(assert (=> b!21919 (= e!14236 (= (select (arr!580 (_keys!3140 (ite c!2483 (_2!447 lt!6680) lt!6678))) (index!2345 lt!7130)) (ite c!2483 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!2482 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!21919 (and (bvsge (index!2345 lt!7130) #b00000000000000000000000000000000) (bvslt (index!2345 lt!7130) (size!673 (_keys!3140 (ite c!2483 (_2!447 lt!6680) lt!6678)))))))

(assert (= (and d!3793 res!13974) b!21918))

(assert (= (and b!21918 res!13973) b!21919))

(assert (=> d!3793 m!15157))

(declare-fun m!15412 () Bool)

(assert (=> d!3793 m!15412))

(assert (=> d!3793 m!15303))

(declare-fun m!15414 () Bool)

(assert (=> b!21918 m!15414))

(declare-fun m!15416 () Bool)

(assert (=> b!21919 m!15416))

(assert (=> bm!1458 d!3793))

(declare-fun d!3795 () Bool)

(declare-fun e!14237 () Bool)

(assert (=> d!3795 e!14237))

(declare-fun res!13975 () Bool)

(assert (=> d!3795 (=> (not res!13975) (not e!14237))))

(declare-fun lt!7134 () ListLongMap!545)

(assert (=> d!3795 (= res!13975 (contains!215 lt!7134 (_1!448 (tuple2!891 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!1646 (v!1573 (underlying!104 thiss!938)))))))))

(declare-fun lt!7131 () List!558)

(assert (=> d!3795 (= lt!7134 (ListLongMap!546 lt!7131))))

(declare-fun lt!7133 () Unit!454)

(declare-fun lt!7132 () Unit!454)

(assert (=> d!3795 (= lt!7133 lt!7132)))

(assert (=> d!3795 (= (getValueByKey!60 lt!7131 (_1!448 (tuple2!891 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!1646 (v!1573 (underlying!104 thiss!938)))))) (Some!65 (_2!448 (tuple2!891 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!1646 (v!1573 (underlying!104 thiss!938)))))))))

(assert (=> d!3795 (= lt!7132 (lemmaContainsTupThenGetReturnValue!17 lt!7131 (_1!448 (tuple2!891 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!1646 (v!1573 (underlying!104 thiss!938))))) (_2!448 (tuple2!891 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!1646 (v!1573 (underlying!104 thiss!938)))))))))

(assert (=> d!3795 (= lt!7131 (insertStrictlySorted!17 (toList!288 call!1427) (_1!448 (tuple2!891 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!1646 (v!1573 (underlying!104 thiss!938))))) (_2!448 (tuple2!891 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!1646 (v!1573 (underlying!104 thiss!938)))))))))

(assert (=> d!3795 (= (+!42 call!1427 (tuple2!891 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!1646 (v!1573 (underlying!104 thiss!938))))) lt!7134)))

(declare-fun b!21920 () Bool)

(declare-fun res!13976 () Bool)

(assert (=> b!21920 (=> (not res!13976) (not e!14237))))

(assert (=> b!21920 (= res!13976 (= (getValueByKey!60 (toList!288 lt!7134) (_1!448 (tuple2!891 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!1646 (v!1573 (underlying!104 thiss!938)))))) (Some!65 (_2!448 (tuple2!891 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!1646 (v!1573 (underlying!104 thiss!938))))))))))

(declare-fun b!21921 () Bool)

(assert (=> b!21921 (= e!14237 (contains!216 (toList!288 lt!7134) (tuple2!891 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!1646 (v!1573 (underlying!104 thiss!938))))))))

(assert (= (and d!3795 res!13975) b!21920))

(assert (= (and b!21920 res!13976) b!21921))

(declare-fun m!15418 () Bool)

(assert (=> d!3795 m!15418))

(declare-fun m!15420 () Bool)

(assert (=> d!3795 m!15420))

(declare-fun m!15422 () Bool)

(assert (=> d!3795 m!15422))

(declare-fun m!15424 () Bool)

(assert (=> d!3795 m!15424))

(declare-fun m!15426 () Bool)

(assert (=> b!21920 m!15426))

(declare-fun m!15428 () Bool)

(assert (=> b!21921 m!15428))

(assert (=> b!21670 d!3795))

(declare-fun d!3797 () Bool)

(declare-fun get!378 (Option!66) V!1157)

(assert (=> d!3797 (= (apply!28 lt!6826 (select (arr!580 (_keys!3140 (v!1573 (underlying!104 thiss!938)))) (bvadd #b00000000000000000000000000000001 (bvsub (size!673 (_keys!3140 (v!1573 (underlying!104 thiss!938)))) #b00000000000000000000000000000001)))) (get!378 (getValueByKey!60 (toList!288 lt!6826) (select (arr!580 (_keys!3140 (v!1573 (underlying!104 thiss!938)))) (bvadd #b00000000000000000000000000000001 (bvsub (size!673 (_keys!3140 (v!1573 (underlying!104 thiss!938)))) #b00000000000000000000000000000001))))))))

(declare-fun bs!912 () Bool)

(assert (= bs!912 d!3797))

(assert (=> bs!912 m!15017))

(assert (=> bs!912 m!15299))

(assert (=> bs!912 m!15299))

(declare-fun m!15430 () Bool)

(assert (=> bs!912 m!15430))

(assert (=> b!21589 d!3797))

(declare-fun d!3799 () Bool)

(declare-fun c!2612 () Bool)

(assert (=> d!3799 (= c!2612 ((_ is ValueCellFull!300) (select (arr!579 (_values!1708 (v!1573 (underlying!104 thiss!938)))) (bvadd #b00000000000000000000000000000001 (bvsub (size!673 (_keys!3140 (v!1573 (underlying!104 thiss!938)))) #b00000000000000000000000000000001)))))))

(declare-fun e!14240 () V!1157)

(assert (=> d!3799 (= (get!377 (select (arr!579 (_values!1708 (v!1573 (underlying!104 thiss!938)))) (bvadd #b00000000000000000000000000000001 (bvsub (size!673 (_keys!3140 (v!1573 (underlying!104 thiss!938)))) #b00000000000000000000000000000001))) (dynLambda!141 (defaultEntry!1719 (v!1573 (underlying!104 thiss!938))) #b0000000000000000000000000000000000000000000000000000000000000000)) e!14240)))

(declare-fun b!21926 () Bool)

(declare-fun get!379 (ValueCell!300 V!1157) V!1157)

(assert (=> b!21926 (= e!14240 (get!379 (select (arr!579 (_values!1708 (v!1573 (underlying!104 thiss!938)))) (bvadd #b00000000000000000000000000000001 (bvsub (size!673 (_keys!3140 (v!1573 (underlying!104 thiss!938)))) #b00000000000000000000000000000001))) (dynLambda!141 (defaultEntry!1719 (v!1573 (underlying!104 thiss!938))) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!21927 () Bool)

(declare-fun get!380 (ValueCell!300 V!1157) V!1157)

(assert (=> b!21927 (= e!14240 (get!380 (select (arr!579 (_values!1708 (v!1573 (underlying!104 thiss!938)))) (bvadd #b00000000000000000000000000000001 (bvsub (size!673 (_keys!3140 (v!1573 (underlying!104 thiss!938)))) #b00000000000000000000000000000001))) (dynLambda!141 (defaultEntry!1719 (v!1573 (underlying!104 thiss!938))) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!3799 c!2612) b!21926))

(assert (= (and d!3799 (not c!2612)) b!21927))

(assert (=> b!21926 m!15061))

(assert (=> b!21926 m!14979))

(declare-fun m!15432 () Bool)

(assert (=> b!21926 m!15432))

(assert (=> b!21927 m!15061))

(assert (=> b!21927 m!14979))

(declare-fun m!15434 () Bool)

(assert (=> b!21927 m!15434))

(assert (=> b!21589 d!3799))

(declare-fun b!21928 () Bool)

(declare-fun e!14241 () SeekEntryResult!56)

(declare-fun lt!7136 () SeekEntryResult!56)

(assert (=> b!21928 (= e!14241 (MissingZero!56 (index!2346 lt!7136)))))

(declare-fun b!21929 () Bool)

(declare-fun c!2615 () Bool)

(declare-fun lt!7135 () (_ BitVec 64))

(assert (=> b!21929 (= c!2615 (= lt!7135 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!14242 () SeekEntryResult!56)

(assert (=> b!21929 (= e!14242 e!14241)))

(declare-fun b!21930 () Bool)

(assert (=> b!21930 (= e!14241 (seekKeyOrZeroReturnVacant!0 (x!5195 lt!7136) (index!2346 lt!7136) (index!2346 lt!7136) (ite c!2483 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!2482 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000)) (_keys!3140 (ite c!2483 (_2!447 lt!6680) lt!6678)) (mask!4692 (ite c!2483 (_2!447 lt!6680) lt!6678))))))

(declare-fun b!21931 () Bool)

(assert (=> b!21931 (= e!14242 (Found!56 (index!2346 lt!7136)))))

(declare-fun lt!7137 () SeekEntryResult!56)

(declare-fun d!3801 () Bool)

(assert (=> d!3801 (and (or ((_ is Undefined!56) lt!7137) (not ((_ is Found!56) lt!7137)) (and (bvsge (index!2345 lt!7137) #b00000000000000000000000000000000) (bvslt (index!2345 lt!7137) (size!673 (_keys!3140 (ite c!2483 (_2!447 lt!6680) lt!6678)))))) (or ((_ is Undefined!56) lt!7137) ((_ is Found!56) lt!7137) (not ((_ is MissingZero!56) lt!7137)) (and (bvsge (index!2344 lt!7137) #b00000000000000000000000000000000) (bvslt (index!2344 lt!7137) (size!673 (_keys!3140 (ite c!2483 (_2!447 lt!6680) lt!6678)))))) (or ((_ is Undefined!56) lt!7137) ((_ is Found!56) lt!7137) ((_ is MissingZero!56) lt!7137) (not ((_ is MissingVacant!56) lt!7137)) (and (bvsge (index!2347 lt!7137) #b00000000000000000000000000000000) (bvslt (index!2347 lt!7137) (size!673 (_keys!3140 (ite c!2483 (_2!447 lt!6680) lt!6678)))))) (or ((_ is Undefined!56) lt!7137) (ite ((_ is Found!56) lt!7137) (= (select (arr!580 (_keys!3140 (ite c!2483 (_2!447 lt!6680) lt!6678))) (index!2345 lt!7137)) (ite c!2483 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!2482 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000))) (ite ((_ is MissingZero!56) lt!7137) (= (select (arr!580 (_keys!3140 (ite c!2483 (_2!447 lt!6680) lt!6678))) (index!2344 lt!7137)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!56) lt!7137) (= (select (arr!580 (_keys!3140 (ite c!2483 (_2!447 lt!6680) lt!6678))) (index!2347 lt!7137)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!14243 () SeekEntryResult!56)

(assert (=> d!3801 (= lt!7137 e!14243)))

(declare-fun c!2614 () Bool)

(assert (=> d!3801 (= c!2614 (and ((_ is Intermediate!56) lt!7136) (undefined!868 lt!7136)))))

(assert (=> d!3801 (= lt!7136 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (ite c!2483 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!2482 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000)) (mask!4692 (ite c!2483 (_2!447 lt!6680) lt!6678))) (ite c!2483 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!2482 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000)) (_keys!3140 (ite c!2483 (_2!447 lt!6680) lt!6678)) (mask!4692 (ite c!2483 (_2!447 lt!6680) lt!6678))))))

(assert (=> d!3801 (validMask!0 (mask!4692 (ite c!2483 (_2!447 lt!6680) lt!6678)))))

(assert (=> d!3801 (= (seekEntryOrOpen!0 (ite c!2483 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!2482 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000)) (_keys!3140 (ite c!2483 (_2!447 lt!6680) lt!6678)) (mask!4692 (ite c!2483 (_2!447 lt!6680) lt!6678))) lt!7137)))

(declare-fun b!21932 () Bool)

(assert (=> b!21932 (= e!14243 e!14242)))

(assert (=> b!21932 (= lt!7135 (select (arr!580 (_keys!3140 (ite c!2483 (_2!447 lt!6680) lt!6678))) (index!2346 lt!7136)))))

(declare-fun c!2613 () Bool)

(assert (=> b!21932 (= c!2613 (= lt!7135 (ite c!2483 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!2482 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!21933 () Bool)

(assert (=> b!21933 (= e!14243 Undefined!56)))

(assert (= (and d!3801 c!2614) b!21933))

(assert (= (and d!3801 (not c!2614)) b!21932))

(assert (= (and b!21932 c!2613) b!21931))

(assert (= (and b!21932 (not c!2613)) b!21929))

(assert (= (and b!21929 c!2615) b!21928))

(assert (= (and b!21929 (not c!2615)) b!21930))

(declare-fun m!15436 () Bool)

(assert (=> b!21930 m!15436))

(assert (=> d!3801 m!15303))

(declare-fun m!15438 () Bool)

(assert (=> d!3801 m!15438))

(declare-fun m!15440 () Bool)

(assert (=> d!3801 m!15440))

(declare-fun m!15442 () Bool)

(assert (=> d!3801 m!15442))

(declare-fun m!15444 () Bool)

(assert (=> d!3801 m!15444))

(assert (=> d!3801 m!15440))

(declare-fun m!15446 () Bool)

(assert (=> d!3801 m!15446))

(declare-fun m!15448 () Bool)

(assert (=> b!21932 m!15448))

(assert (=> b!21739 d!3801))

(declare-fun d!3803 () Bool)

(declare-fun e!14244 () Bool)

(assert (=> d!3803 e!14244))

(declare-fun res!13977 () Bool)

(assert (=> d!3803 (=> res!13977 e!14244)))

(declare-fun lt!7138 () Bool)

(assert (=> d!3803 (= res!13977 (not lt!7138))))

(declare-fun lt!7139 () Bool)

(assert (=> d!3803 (= lt!7138 lt!7139)))

(declare-fun lt!7140 () Unit!454)

(declare-fun e!14245 () Unit!454)

(assert (=> d!3803 (= lt!7140 e!14245)))

(declare-fun c!2616 () Bool)

(assert (=> d!3803 (= c!2616 lt!7139)))

(assert (=> d!3803 (= lt!7139 (containsKey!24 (toList!288 call!1456) (ite c!2559 (ite c!2483 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!2482 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000)) (select (arr!580 (_keys!3140 (ite c!2483 (_2!447 lt!6680) lt!6678))) (index!2345 lt!6934)))))))

(assert (=> d!3803 (= (contains!215 call!1456 (ite c!2559 (ite c!2483 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!2482 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000)) (select (arr!580 (_keys!3140 (ite c!2483 (_2!447 lt!6680) lt!6678))) (index!2345 lt!6934)))) lt!7138)))

(declare-fun b!21934 () Bool)

(declare-fun lt!7141 () Unit!454)

(assert (=> b!21934 (= e!14245 lt!7141)))

(assert (=> b!21934 (= lt!7141 (lemmaContainsKeyImpliesGetValueByKeyDefined!21 (toList!288 call!1456) (ite c!2559 (ite c!2483 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!2482 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000)) (select (arr!580 (_keys!3140 (ite c!2483 (_2!447 lt!6680) lt!6678))) (index!2345 lt!6934)))))))

(assert (=> b!21934 (isDefined!22 (getValueByKey!60 (toList!288 call!1456) (ite c!2559 (ite c!2483 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!2482 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000)) (select (arr!580 (_keys!3140 (ite c!2483 (_2!447 lt!6680) lt!6678))) (index!2345 lt!6934)))))))

(declare-fun b!21935 () Bool)

(declare-fun Unit!472 () Unit!454)

(assert (=> b!21935 (= e!14245 Unit!472)))

(declare-fun b!21936 () Bool)

(assert (=> b!21936 (= e!14244 (isDefined!22 (getValueByKey!60 (toList!288 call!1456) (ite c!2559 (ite c!2483 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!2482 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000)) (select (arr!580 (_keys!3140 (ite c!2483 (_2!447 lt!6680) lt!6678))) (index!2345 lt!6934))))))))

(assert (= (and d!3803 c!2616) b!21934))

(assert (= (and d!3803 (not c!2616)) b!21935))

(assert (= (and d!3803 (not res!13977)) b!21936))

(declare-fun m!15450 () Bool)

(assert (=> d!3803 m!15450))

(declare-fun m!15452 () Bool)

(assert (=> b!21934 m!15452))

(declare-fun m!15454 () Bool)

(assert (=> b!21934 m!15454))

(assert (=> b!21934 m!15454))

(declare-fun m!15456 () Bool)

(assert (=> b!21934 m!15456))

(assert (=> b!21936 m!15454))

(assert (=> b!21936 m!15454))

(assert (=> b!21936 m!15456))

(assert (=> bm!1460 d!3803))

(declare-fun d!3805 () Bool)

(declare-fun res!13989 () Bool)

(declare-fun e!14248 () Bool)

(assert (=> d!3805 (=> (not res!13989) (not e!14248))))

(assert (=> d!3805 (= res!13989 (validMask!0 (mask!4692 (v!1573 (_2!446 lt!6677)))))))

(assert (=> d!3805 (= (simpleValid!18 (v!1573 (_2!446 lt!6677))) e!14248)))

(declare-fun b!21947 () Bool)

(declare-fun res!13987 () Bool)

(assert (=> b!21947 (=> (not res!13987) (not e!14248))))

(declare-fun size!678 (LongMapFixedSize!186) (_ BitVec 32))

(assert (=> b!21947 (= res!13987 (= (size!678 (v!1573 (_2!446 lt!6677))) (bvadd (_size!134 (v!1573 (_2!446 lt!6677))) (bvsdiv (bvadd (extraKeys!1622 (v!1573 (_2!446 lt!6677))) #b00000000000000000000000000000001) #b00000000000000000000000000000010))))))

(declare-fun b!21946 () Bool)

(declare-fun res!13988 () Bool)

(assert (=> b!21946 (=> (not res!13988) (not e!14248))))

(assert (=> b!21946 (= res!13988 (bvsge (size!678 (v!1573 (_2!446 lt!6677))) (_size!134 (v!1573 (_2!446 lt!6677)))))))

(declare-fun b!21948 () Bool)

(assert (=> b!21948 (= e!14248 (and (bvsge (extraKeys!1622 (v!1573 (_2!446 lt!6677))) #b00000000000000000000000000000000) (bvsle (extraKeys!1622 (v!1573 (_2!446 lt!6677))) #b00000000000000000000000000000011) (bvsge (_vacant!134 (v!1573 (_2!446 lt!6677))) #b00000000000000000000000000000000)))))

(declare-fun b!21945 () Bool)

(declare-fun res!13986 () Bool)

(assert (=> b!21945 (=> (not res!13986) (not e!14248))))

(assert (=> b!21945 (= res!13986 (and (= (size!672 (_values!1708 (v!1573 (_2!446 lt!6677)))) (bvadd (mask!4692 (v!1573 (_2!446 lt!6677))) #b00000000000000000000000000000001)) (= (size!673 (_keys!3140 (v!1573 (_2!446 lt!6677)))) (size!672 (_values!1708 (v!1573 (_2!446 lt!6677))))) (bvsge (_size!134 (v!1573 (_2!446 lt!6677))) #b00000000000000000000000000000000) (bvsle (_size!134 (v!1573 (_2!446 lt!6677))) (bvadd (mask!4692 (v!1573 (_2!446 lt!6677))) #b00000000000000000000000000000001))))))

(assert (= (and d!3805 res!13989) b!21945))

(assert (= (and b!21945 res!13986) b!21946))

(assert (= (and b!21946 res!13988) b!21947))

(assert (= (and b!21947 res!13987) b!21948))

(declare-fun m!15458 () Bool)

(assert (=> d!3805 m!15458))

(declare-fun m!15460 () Bool)

(assert (=> b!21947 m!15460))

(assert (=> b!21946 m!15460))

(assert (=> d!3739 d!3805))

(declare-fun bm!1497 () Bool)

(declare-fun call!1506 () Bool)

(declare-fun lt!7144 () ListLongMap!545)

(assert (=> bm!1497 (= call!1506 (contains!215 lt!7144 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun bm!1498 () Bool)

(declare-fun call!1502 () ListLongMap!545)

(declare-fun call!1504 () ListLongMap!545)

(assert (=> bm!1498 (= call!1502 call!1504)))

(declare-fun b!21949 () Bool)

(declare-fun e!14253 () Bool)

(declare-fun call!1501 () Bool)

(assert (=> b!21949 (= e!14253 (not call!1501))))

(declare-fun bm!1499 () Bool)

(assert (=> bm!1499 (= call!1501 (contains!215 lt!7144 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!21950 () Bool)

(declare-fun e!14258 () Bool)

(assert (=> b!21950 (= e!14258 (= (apply!28 lt!7144 #b1000000000000000000000000000000000000000000000000000000000000000) (ite c!2549 (ite c!2553 (minValue!1646 lt!6678) (zeroValue!1646 (v!1573 (underlying!104 thiss!938)))) (minValue!1646 lt!6678))))))

(declare-fun b!21951 () Bool)

(declare-fun e!14260 () ListLongMap!545)

(assert (=> b!21951 (= e!14260 call!1502)))

(declare-fun b!21952 () Bool)

(declare-fun e!14254 () Bool)

(assert (=> b!21952 (= e!14254 (validKeyInArray!0 (select (arr!580 (_keys!3140 lt!6678)) #b00000000000000000000000000000000)))))

(declare-fun bm!1500 () Bool)

(declare-fun call!1505 () ListLongMap!545)

(declare-fun call!1500 () ListLongMap!545)

(assert (=> bm!1500 (= call!1505 call!1500)))

(declare-fun b!21953 () Bool)

(declare-fun e!14251 () Bool)

(declare-fun e!14257 () Bool)

(assert (=> b!21953 (= e!14251 e!14257)))

(declare-fun res!13996 () Bool)

(assert (=> b!21953 (=> (not res!13996) (not e!14257))))

(assert (=> b!21953 (= res!13996 (contains!215 lt!7144 (select (arr!580 (_keys!3140 lt!6678)) #b00000000000000000000000000000000)))))

(assert (=> b!21953 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!673 (_keys!3140 lt!6678))))))

(declare-fun b!21954 () Bool)

(declare-fun e!14252 () Bool)

(assert (=> b!21954 (= e!14252 (= (apply!28 lt!7144 #b0000000000000000000000000000000000000000000000000000000000000000) (ite (and c!2549 c!2553) (zeroValue!1646 (v!1573 (underlying!104 thiss!938))) (zeroValue!1646 lt!6678))))))

(declare-fun b!21955 () Bool)

(declare-fun e!14255 () ListLongMap!545)

(assert (=> b!21955 (= e!14255 call!1502)))

(declare-fun b!21956 () Bool)

(declare-fun e!14256 () ListLongMap!545)

(assert (=> b!21956 (= e!14256 (+!42 call!1504 (tuple2!891 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!2549 (ite c!2553 (minValue!1646 lt!6678) (zeroValue!1646 (v!1573 (underlying!104 thiss!938)))) (minValue!1646 lt!6678)))))))

(declare-fun b!21957 () Bool)

(declare-fun e!14249 () Bool)

(assert (=> b!21957 (= e!14249 (validKeyInArray!0 (select (arr!580 (_keys!3140 lt!6678)) #b00000000000000000000000000000000)))))

(declare-fun b!21958 () Bool)

(declare-fun res!13992 () Bool)

(declare-fun e!14250 () Bool)

(assert (=> b!21958 (=> (not res!13992) (not e!14250))))

(assert (=> b!21958 (= res!13992 e!14251)))

(declare-fun res!13998 () Bool)

(assert (=> b!21958 (=> res!13998 e!14251)))

(assert (=> b!21958 (= res!13998 (not e!14249))))

(declare-fun res!13995 () Bool)

(assert (=> b!21958 (=> (not res!13995) (not e!14249))))

(assert (=> b!21958 (= res!13995 (bvslt #b00000000000000000000000000000000 (size!673 (_keys!3140 lt!6678))))))

(declare-fun b!21959 () Bool)

(assert (=> b!21959 (= e!14256 e!14260)))

(declare-fun c!2622 () Bool)

(assert (=> b!21959 (= c!2622 (and (not (= (bvand (ite c!2549 (ite c!2553 lt!6922 lt!6911) (extraKeys!1622 lt!6678)) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand (ite c!2549 (ite c!2553 lt!6922 lt!6911) (extraKeys!1622 lt!6678)) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun d!3807 () Bool)

(assert (=> d!3807 e!14250))

(declare-fun res!13991 () Bool)

(assert (=> d!3807 (=> (not res!13991) (not e!14250))))

(assert (=> d!3807 (= res!13991 (or (bvsge #b00000000000000000000000000000000 (size!673 (_keys!3140 lt!6678))) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!673 (_keys!3140 lt!6678))))))))

(declare-fun lt!7148 () ListLongMap!545)

(assert (=> d!3807 (= lt!7144 lt!7148)))

(declare-fun lt!7162 () Unit!454)

(declare-fun e!14259 () Unit!454)

(assert (=> d!3807 (= lt!7162 e!14259)))

(declare-fun c!2620 () Bool)

(assert (=> d!3807 (= c!2620 e!14254)))

(declare-fun res!13993 () Bool)

(assert (=> d!3807 (=> (not res!13993) (not e!14254))))

(assert (=> d!3807 (= res!13993 (bvslt #b00000000000000000000000000000000 (size!673 (_keys!3140 lt!6678))))))

(assert (=> d!3807 (= lt!7148 e!14256)))

(declare-fun c!2619 () Bool)

(assert (=> d!3807 (= c!2619 (and (not (= (bvand (ite c!2549 (ite c!2553 lt!6922 lt!6911) (extraKeys!1622 lt!6678)) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (ite c!2549 (ite c!2553 lt!6922 lt!6911) (extraKeys!1622 lt!6678)) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!3807 (validMask!0 (mask!4692 lt!6678))))

(assert (=> d!3807 (= (getCurrentListMap!117 (_keys!3140 lt!6678) (_values!1708 lt!6678) (mask!4692 lt!6678) (ite c!2549 (ite c!2553 lt!6922 lt!6911) (extraKeys!1622 lt!6678)) (ite (and c!2549 c!2553) (zeroValue!1646 (v!1573 (underlying!104 thiss!938))) (zeroValue!1646 lt!6678)) (ite c!2549 (ite c!2553 (minValue!1646 lt!6678) (zeroValue!1646 (v!1573 (underlying!104 thiss!938)))) (minValue!1646 lt!6678)) #b00000000000000000000000000000000 (defaultEntry!1719 lt!6678)) lt!7144)))

(declare-fun b!21960 () Bool)

(assert (=> b!21960 (= e!14253 e!14252)))

(declare-fun res!13990 () Bool)

(assert (=> b!21960 (= res!13990 call!1501)))

(assert (=> b!21960 (=> (not res!13990) (not e!14252))))

(declare-fun b!21961 () Bool)

(declare-fun Unit!473 () Unit!454)

(assert (=> b!21961 (= e!14259 Unit!473)))

(declare-fun call!1503 () ListLongMap!545)

(declare-fun bm!1501 () Bool)

(assert (=> bm!1501 (= call!1504 (+!42 (ite c!2619 call!1503 (ite c!2622 call!1500 call!1505)) (ite (or c!2619 c!2622) (tuple2!891 #b0000000000000000000000000000000000000000000000000000000000000000 (ite (and c!2549 c!2553) (zeroValue!1646 (v!1573 (underlying!104 thiss!938))) (zeroValue!1646 lt!6678))) (tuple2!891 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!2549 (ite c!2553 (minValue!1646 lt!6678) (zeroValue!1646 (v!1573 (underlying!104 thiss!938)))) (minValue!1646 lt!6678))))))))

(declare-fun b!21962 () Bool)

(declare-fun e!14261 () Bool)

(assert (=> b!21962 (= e!14261 (not call!1506))))

(declare-fun b!21963 () Bool)

(declare-fun res!13994 () Bool)

(assert (=> b!21963 (=> (not res!13994) (not e!14250))))

(assert (=> b!21963 (= res!13994 e!14253)))

(declare-fun c!2618 () Bool)

(assert (=> b!21963 (= c!2618 (not (= (bvand (ite c!2549 (ite c!2553 lt!6922 lt!6911) (extraKeys!1622 lt!6678)) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!21964 () Bool)

(assert (=> b!21964 (= e!14255 call!1505)))

(declare-fun bm!1502 () Bool)

(assert (=> bm!1502 (= call!1503 (getCurrentListMapNoExtraKeys!13 (_keys!3140 lt!6678) (_values!1708 lt!6678) (mask!4692 lt!6678) (ite c!2549 (ite c!2553 lt!6922 lt!6911) (extraKeys!1622 lt!6678)) (ite (and c!2549 c!2553) (zeroValue!1646 (v!1573 (underlying!104 thiss!938))) (zeroValue!1646 lt!6678)) (ite c!2549 (ite c!2553 (minValue!1646 lt!6678) (zeroValue!1646 (v!1573 (underlying!104 thiss!938)))) (minValue!1646 lt!6678)) #b00000000000000000000000000000000 (defaultEntry!1719 lt!6678)))))

(declare-fun b!21965 () Bool)

(assert (=> b!21965 (= e!14261 e!14258)))

(declare-fun res!13997 () Bool)

(assert (=> b!21965 (= res!13997 call!1506)))

(assert (=> b!21965 (=> (not res!13997) (not e!14258))))

(declare-fun c!2617 () Bool)

(declare-fun b!21966 () Bool)

(assert (=> b!21966 (= c!2617 (and (not (= (bvand (ite c!2549 (ite c!2553 lt!6922 lt!6911) (extraKeys!1622 lt!6678)) #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand (ite c!2549 (ite c!2553 lt!6922 lt!6911) (extraKeys!1622 lt!6678)) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!21966 (= e!14260 e!14255)))

(declare-fun b!21967 () Bool)

(assert (=> b!21967 (= e!14250 e!14261)))

(declare-fun c!2621 () Bool)

(assert (=> b!21967 (= c!2621 (not (= (bvand (ite c!2549 (ite c!2553 lt!6922 lt!6911) (extraKeys!1622 lt!6678)) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!21968 () Bool)

(assert (=> b!21968 (= e!14257 (= (apply!28 lt!7144 (select (arr!580 (_keys!3140 lt!6678)) #b00000000000000000000000000000000)) (get!377 (select (arr!579 (_values!1708 lt!6678)) #b00000000000000000000000000000000) (dynLambda!141 (defaultEntry!1719 lt!6678) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!21968 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!672 (_values!1708 lt!6678))))))

(assert (=> b!21968 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!673 (_keys!3140 lt!6678))))))

(declare-fun b!21969 () Bool)

(declare-fun lt!7161 () Unit!454)

(assert (=> b!21969 (= e!14259 lt!7161)))

(declare-fun lt!7154 () ListLongMap!545)

(assert (=> b!21969 (= lt!7154 (getCurrentListMapNoExtraKeys!13 (_keys!3140 lt!6678) (_values!1708 lt!6678) (mask!4692 lt!6678) (ite c!2549 (ite c!2553 lt!6922 lt!6911) (extraKeys!1622 lt!6678)) (ite (and c!2549 c!2553) (zeroValue!1646 (v!1573 (underlying!104 thiss!938))) (zeroValue!1646 lt!6678)) (ite c!2549 (ite c!2553 (minValue!1646 lt!6678) (zeroValue!1646 (v!1573 (underlying!104 thiss!938)))) (minValue!1646 lt!6678)) #b00000000000000000000000000000000 (defaultEntry!1719 lt!6678)))))

(declare-fun lt!7146 () (_ BitVec 64))

(assert (=> b!21969 (= lt!7146 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!7149 () (_ BitVec 64))

(assert (=> b!21969 (= lt!7149 (select (arr!580 (_keys!3140 lt!6678)) #b00000000000000000000000000000000))))

(declare-fun lt!7158 () Unit!454)

(assert (=> b!21969 (= lt!7158 (addStillContains!13 lt!7154 lt!7146 (ite (and c!2549 c!2553) (zeroValue!1646 (v!1573 (underlying!104 thiss!938))) (zeroValue!1646 lt!6678)) lt!7149))))

(assert (=> b!21969 (contains!215 (+!42 lt!7154 (tuple2!891 lt!7146 (ite (and c!2549 c!2553) (zeroValue!1646 (v!1573 (underlying!104 thiss!938))) (zeroValue!1646 lt!6678)))) lt!7149)))

(declare-fun lt!7151 () Unit!454)

(assert (=> b!21969 (= lt!7151 lt!7158)))

(declare-fun lt!7153 () ListLongMap!545)

(assert (=> b!21969 (= lt!7153 (getCurrentListMapNoExtraKeys!13 (_keys!3140 lt!6678) (_values!1708 lt!6678) (mask!4692 lt!6678) (ite c!2549 (ite c!2553 lt!6922 lt!6911) (extraKeys!1622 lt!6678)) (ite (and c!2549 c!2553) (zeroValue!1646 (v!1573 (underlying!104 thiss!938))) (zeroValue!1646 lt!6678)) (ite c!2549 (ite c!2553 (minValue!1646 lt!6678) (zeroValue!1646 (v!1573 (underlying!104 thiss!938)))) (minValue!1646 lt!6678)) #b00000000000000000000000000000000 (defaultEntry!1719 lt!6678)))))

(declare-fun lt!7150 () (_ BitVec 64))

(assert (=> b!21969 (= lt!7150 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!7145 () (_ BitVec 64))

(assert (=> b!21969 (= lt!7145 (select (arr!580 (_keys!3140 lt!6678)) #b00000000000000000000000000000000))))

(declare-fun lt!7152 () Unit!454)

(assert (=> b!21969 (= lt!7152 (addApplyDifferent!13 lt!7153 lt!7150 (ite c!2549 (ite c!2553 (minValue!1646 lt!6678) (zeroValue!1646 (v!1573 (underlying!104 thiss!938)))) (minValue!1646 lt!6678)) lt!7145))))

(assert (=> b!21969 (= (apply!28 (+!42 lt!7153 (tuple2!891 lt!7150 (ite c!2549 (ite c!2553 (minValue!1646 lt!6678) (zeroValue!1646 (v!1573 (underlying!104 thiss!938)))) (minValue!1646 lt!6678)))) lt!7145) (apply!28 lt!7153 lt!7145))))

(declare-fun lt!7155 () Unit!454)

(assert (=> b!21969 (= lt!7155 lt!7152)))

(declare-fun lt!7156 () ListLongMap!545)

(assert (=> b!21969 (= lt!7156 (getCurrentListMapNoExtraKeys!13 (_keys!3140 lt!6678) (_values!1708 lt!6678) (mask!4692 lt!6678) (ite c!2549 (ite c!2553 lt!6922 lt!6911) (extraKeys!1622 lt!6678)) (ite (and c!2549 c!2553) (zeroValue!1646 (v!1573 (underlying!104 thiss!938))) (zeroValue!1646 lt!6678)) (ite c!2549 (ite c!2553 (minValue!1646 lt!6678) (zeroValue!1646 (v!1573 (underlying!104 thiss!938)))) (minValue!1646 lt!6678)) #b00000000000000000000000000000000 (defaultEntry!1719 lt!6678)))))

(declare-fun lt!7163 () (_ BitVec 64))

(assert (=> b!21969 (= lt!7163 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!7159 () (_ BitVec 64))

(assert (=> b!21969 (= lt!7159 (select (arr!580 (_keys!3140 lt!6678)) #b00000000000000000000000000000000))))

(declare-fun lt!7142 () Unit!454)

(assert (=> b!21969 (= lt!7142 (addApplyDifferent!13 lt!7156 lt!7163 (ite (and c!2549 c!2553) (zeroValue!1646 (v!1573 (underlying!104 thiss!938))) (zeroValue!1646 lt!6678)) lt!7159))))

(assert (=> b!21969 (= (apply!28 (+!42 lt!7156 (tuple2!891 lt!7163 (ite (and c!2549 c!2553) (zeroValue!1646 (v!1573 (underlying!104 thiss!938))) (zeroValue!1646 lt!6678)))) lt!7159) (apply!28 lt!7156 lt!7159))))

(declare-fun lt!7157 () Unit!454)

(assert (=> b!21969 (= lt!7157 lt!7142)))

(declare-fun lt!7143 () ListLongMap!545)

(assert (=> b!21969 (= lt!7143 (getCurrentListMapNoExtraKeys!13 (_keys!3140 lt!6678) (_values!1708 lt!6678) (mask!4692 lt!6678) (ite c!2549 (ite c!2553 lt!6922 lt!6911) (extraKeys!1622 lt!6678)) (ite (and c!2549 c!2553) (zeroValue!1646 (v!1573 (underlying!104 thiss!938))) (zeroValue!1646 lt!6678)) (ite c!2549 (ite c!2553 (minValue!1646 lt!6678) (zeroValue!1646 (v!1573 (underlying!104 thiss!938)))) (minValue!1646 lt!6678)) #b00000000000000000000000000000000 (defaultEntry!1719 lt!6678)))))

(declare-fun lt!7160 () (_ BitVec 64))

(assert (=> b!21969 (= lt!7160 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!7147 () (_ BitVec 64))

(assert (=> b!21969 (= lt!7147 (select (arr!580 (_keys!3140 lt!6678)) #b00000000000000000000000000000000))))

(assert (=> b!21969 (= lt!7161 (addApplyDifferent!13 lt!7143 lt!7160 (ite c!2549 (ite c!2553 (minValue!1646 lt!6678) (zeroValue!1646 (v!1573 (underlying!104 thiss!938)))) (minValue!1646 lt!6678)) lt!7147))))

(assert (=> b!21969 (= (apply!28 (+!42 lt!7143 (tuple2!891 lt!7160 (ite c!2549 (ite c!2553 (minValue!1646 lt!6678) (zeroValue!1646 (v!1573 (underlying!104 thiss!938)))) (minValue!1646 lt!6678)))) lt!7147) (apply!28 lt!7143 lt!7147))))

(declare-fun bm!1503 () Bool)

(assert (=> bm!1503 (= call!1500 call!1503)))

(assert (= (and d!3807 c!2619) b!21956))

(assert (= (and d!3807 (not c!2619)) b!21959))

(assert (= (and b!21959 c!2622) b!21951))

(assert (= (and b!21959 (not c!2622)) b!21966))

(assert (= (and b!21966 c!2617) b!21955))

(assert (= (and b!21966 (not c!2617)) b!21964))

(assert (= (or b!21955 b!21964) bm!1500))

(assert (= (or b!21951 bm!1500) bm!1503))

(assert (= (or b!21951 b!21955) bm!1498))

(assert (= (or b!21956 bm!1503) bm!1502))

(assert (= (or b!21956 bm!1498) bm!1501))

(assert (= (and d!3807 res!13993) b!21952))

(assert (= (and d!3807 c!2620) b!21969))

(assert (= (and d!3807 (not c!2620)) b!21961))

(assert (= (and d!3807 res!13991) b!21958))

(assert (= (and b!21958 res!13995) b!21957))

(assert (= (and b!21958 (not res!13998)) b!21953))

(assert (= (and b!21953 res!13996) b!21968))

(assert (= (and b!21958 res!13992) b!21963))

(assert (= (and b!21963 c!2618) b!21960))

(assert (= (and b!21963 (not c!2618)) b!21949))

(assert (= (and b!21960 res!13990) b!21954))

(assert (= (or b!21960 b!21949) bm!1499))

(assert (= (and b!21963 res!13994) b!21967))

(assert (= (and b!21967 c!2621) b!21965))

(assert (= (and b!21967 (not c!2621)) b!21962))

(assert (= (and b!21965 res!13997) b!21950))

(assert (= (or b!21965 b!21962) bm!1497))

(declare-fun b_lambda!1539 () Bool)

(assert (=> (not b_lambda!1539) (not b!21968)))

(assert (=> b!21968 t!3223))

(declare-fun b_and!1437 () Bool)

(assert (= b_and!1435 (and (=> t!3223 result!1077) b_and!1437)))

(declare-fun m!15462 () Bool)

(assert (=> bm!1501 m!15462))

(declare-fun m!15464 () Bool)

(assert (=> bm!1499 m!15464))

(declare-fun m!15466 () Bool)

(assert (=> b!21950 m!15466))

(assert (=> b!21957 m!15345))

(assert (=> b!21957 m!15345))

(assert (=> b!21957 m!15347))

(declare-fun m!15468 () Bool)

(assert (=> b!21956 m!15468))

(declare-fun m!15470 () Bool)

(assert (=> b!21954 m!15470))

(declare-fun m!15472 () Bool)

(assert (=> bm!1497 m!15472))

(declare-fun m!15474 () Bool)

(assert (=> bm!1502 m!15474))

(assert (=> b!21952 m!15345))

(assert (=> b!21952 m!15345))

(assert (=> b!21952 m!15347))

(assert (=> d!3807 m!15275))

(declare-fun m!15476 () Bool)

(assert (=> b!21969 m!15476))

(declare-fun m!15478 () Bool)

(assert (=> b!21969 m!15478))

(assert (=> b!21969 m!15345))

(declare-fun m!15480 () Bool)

(assert (=> b!21969 m!15480))

(assert (=> b!21969 m!15476))

(assert (=> b!21969 m!15474))

(declare-fun m!15482 () Bool)

(assert (=> b!21969 m!15482))

(declare-fun m!15484 () Bool)

(assert (=> b!21969 m!15484))

(declare-fun m!15486 () Bool)

(assert (=> b!21969 m!15486))

(declare-fun m!15488 () Bool)

(assert (=> b!21969 m!15488))

(assert (=> b!21969 m!15480))

(declare-fun m!15490 () Bool)

(assert (=> b!21969 m!15490))

(declare-fun m!15492 () Bool)

(assert (=> b!21969 m!15492))

(declare-fun m!15494 () Bool)

(assert (=> b!21969 m!15494))

(declare-fun m!15496 () Bool)

(assert (=> b!21969 m!15496))

(assert (=> b!21969 m!15492))

(declare-fun m!15498 () Bool)

(assert (=> b!21969 m!15498))

(declare-fun m!15500 () Bool)

(assert (=> b!21969 m!15500))

(assert (=> b!21969 m!15494))

(declare-fun m!15502 () Bool)

(assert (=> b!21969 m!15502))

(declare-fun m!15504 () Bool)

(assert (=> b!21969 m!15504))

(assert (=> b!21968 m!15345))

(assert (=> b!21968 m!15345))

(declare-fun m!15506 () Bool)

(assert (=> b!21968 m!15506))

(declare-fun m!15508 () Bool)

(assert (=> b!21968 m!15508))

(assert (=> b!21968 m!15391))

(declare-fun m!15510 () Bool)

(assert (=> b!21968 m!15510))

(assert (=> b!21968 m!15508))

(assert (=> b!21968 m!15391))

(assert (=> b!21953 m!15345))

(assert (=> b!21953 m!15345))

(declare-fun m!15512 () Bool)

(assert (=> b!21953 m!15512))

(assert (=> bm!1431 d!3807))

(declare-fun bm!1504 () Bool)

(declare-fun call!1513 () Bool)

(declare-fun lt!7166 () ListLongMap!545)

(assert (=> bm!1504 (= call!1513 (contains!215 lt!7166 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun bm!1505 () Bool)

(declare-fun call!1509 () ListLongMap!545)

(declare-fun call!1511 () ListLongMap!545)

(assert (=> bm!1505 (= call!1509 call!1511)))

(declare-fun b!21970 () Bool)

(declare-fun e!14266 () Bool)

(declare-fun call!1508 () Bool)

(assert (=> b!21970 (= e!14266 (not call!1508))))

(declare-fun bm!1506 () Bool)

(assert (=> bm!1506 (= call!1508 (contains!215 lt!7166 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!21971 () Bool)

(declare-fun e!14271 () Bool)

(assert (=> b!21971 (= e!14271 (= (apply!28 lt!7166 #b1000000000000000000000000000000000000000000000000000000000000000) (minValue!1646 lt!6678)))))

(declare-fun b!21972 () Bool)

(declare-fun e!14273 () ListLongMap!545)

(assert (=> b!21972 (= e!14273 call!1509)))

(declare-fun b!21973 () Bool)

(declare-fun e!14267 () Bool)

(assert (=> b!21973 (= e!14267 (validKeyInArray!0 (select (arr!580 (_keys!3140 lt!6678)) #b00000000000000000000000000000000)))))

(declare-fun bm!1507 () Bool)

(declare-fun call!1512 () ListLongMap!545)

(declare-fun call!1507 () ListLongMap!545)

(assert (=> bm!1507 (= call!1512 call!1507)))

(declare-fun b!21974 () Bool)

(declare-fun e!14264 () Bool)

(declare-fun e!14270 () Bool)

(assert (=> b!21974 (= e!14264 e!14270)))

(declare-fun res!14005 () Bool)

(assert (=> b!21974 (=> (not res!14005) (not e!14270))))

(assert (=> b!21974 (= res!14005 (contains!215 lt!7166 (select (arr!580 (_keys!3140 lt!6678)) #b00000000000000000000000000000000)))))

(assert (=> b!21974 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!673 (_keys!3140 lt!6678))))))

(declare-fun b!21975 () Bool)

(declare-fun e!14265 () Bool)

(assert (=> b!21975 (= e!14265 (= (apply!28 lt!7166 #b0000000000000000000000000000000000000000000000000000000000000000) (zeroValue!1646 lt!6678)))))

(declare-fun b!21976 () Bool)

(declare-fun e!14268 () ListLongMap!545)

(assert (=> b!21976 (= e!14268 call!1509)))

(declare-fun b!21977 () Bool)

(declare-fun e!14269 () ListLongMap!545)

(assert (=> b!21977 (= e!14269 (+!42 call!1511 (tuple2!891 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!1646 lt!6678))))))

(declare-fun b!21978 () Bool)

(declare-fun e!14262 () Bool)

(assert (=> b!21978 (= e!14262 (validKeyInArray!0 (select (arr!580 (_keys!3140 lt!6678)) #b00000000000000000000000000000000)))))

(declare-fun b!21979 () Bool)

(declare-fun res!14001 () Bool)

(declare-fun e!14263 () Bool)

(assert (=> b!21979 (=> (not res!14001) (not e!14263))))

(assert (=> b!21979 (= res!14001 e!14264)))

(declare-fun res!14007 () Bool)

(assert (=> b!21979 (=> res!14007 e!14264)))

(assert (=> b!21979 (= res!14007 (not e!14262))))

(declare-fun res!14004 () Bool)

(assert (=> b!21979 (=> (not res!14004) (not e!14262))))

(assert (=> b!21979 (= res!14004 (bvslt #b00000000000000000000000000000000 (size!673 (_keys!3140 lt!6678))))))

(declare-fun b!21980 () Bool)

(assert (=> b!21980 (= e!14269 e!14273)))

(declare-fun c!2628 () Bool)

(assert (=> b!21980 (= c!2628 (and (not (= (bvand (extraKeys!1622 lt!6678) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand (extraKeys!1622 lt!6678) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun d!3809 () Bool)

(assert (=> d!3809 e!14263))

(declare-fun res!14000 () Bool)

(assert (=> d!3809 (=> (not res!14000) (not e!14263))))

(assert (=> d!3809 (= res!14000 (or (bvsge #b00000000000000000000000000000000 (size!673 (_keys!3140 lt!6678))) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!673 (_keys!3140 lt!6678))))))))

(declare-fun lt!7170 () ListLongMap!545)

(assert (=> d!3809 (= lt!7166 lt!7170)))

(declare-fun lt!7184 () Unit!454)

(declare-fun e!14272 () Unit!454)

(assert (=> d!3809 (= lt!7184 e!14272)))

(declare-fun c!2626 () Bool)

(assert (=> d!3809 (= c!2626 e!14267)))

(declare-fun res!14002 () Bool)

(assert (=> d!3809 (=> (not res!14002) (not e!14267))))

(assert (=> d!3809 (= res!14002 (bvslt #b00000000000000000000000000000000 (size!673 (_keys!3140 lt!6678))))))

(assert (=> d!3809 (= lt!7170 e!14269)))

(declare-fun c!2625 () Bool)

(assert (=> d!3809 (= c!2625 (and (not (= (bvand (extraKeys!1622 lt!6678) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (extraKeys!1622 lt!6678) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!3809 (validMask!0 (mask!4692 lt!6678))))

(assert (=> d!3809 (= (getCurrentListMap!117 (_keys!3140 lt!6678) (ite c!2549 (_values!1708 lt!6678) (array!1222 (store (arr!579 (_values!1708 lt!6678)) (index!2345 lt!6907) (ValueCellFull!300 (zeroValue!1646 (v!1573 (underlying!104 thiss!938))))) (size!672 (_values!1708 lt!6678)))) (mask!4692 lt!6678) (extraKeys!1622 lt!6678) (zeroValue!1646 lt!6678) (minValue!1646 lt!6678) #b00000000000000000000000000000000 (defaultEntry!1719 lt!6678)) lt!7166)))

(declare-fun b!21981 () Bool)

(assert (=> b!21981 (= e!14266 e!14265)))

(declare-fun res!13999 () Bool)

(assert (=> b!21981 (= res!13999 call!1508)))

(assert (=> b!21981 (=> (not res!13999) (not e!14265))))

(declare-fun b!21982 () Bool)

(declare-fun Unit!474 () Unit!454)

(assert (=> b!21982 (= e!14272 Unit!474)))

(declare-fun call!1510 () ListLongMap!545)

(declare-fun bm!1508 () Bool)

(assert (=> bm!1508 (= call!1511 (+!42 (ite c!2625 call!1510 (ite c!2628 call!1507 call!1512)) (ite (or c!2625 c!2628) (tuple2!891 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!1646 lt!6678)) (tuple2!891 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!1646 lt!6678)))))))

(declare-fun b!21983 () Bool)

(declare-fun e!14274 () Bool)

(assert (=> b!21983 (= e!14274 (not call!1513))))

(declare-fun b!21984 () Bool)

(declare-fun res!14003 () Bool)

(assert (=> b!21984 (=> (not res!14003) (not e!14263))))

(assert (=> b!21984 (= res!14003 e!14266)))

(declare-fun c!2624 () Bool)

(assert (=> b!21984 (= c!2624 (not (= (bvand (extraKeys!1622 lt!6678) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!21985 () Bool)

(assert (=> b!21985 (= e!14268 call!1512)))

(declare-fun bm!1509 () Bool)

(assert (=> bm!1509 (= call!1510 (getCurrentListMapNoExtraKeys!13 (_keys!3140 lt!6678) (ite c!2549 (_values!1708 lt!6678) (array!1222 (store (arr!579 (_values!1708 lt!6678)) (index!2345 lt!6907) (ValueCellFull!300 (zeroValue!1646 (v!1573 (underlying!104 thiss!938))))) (size!672 (_values!1708 lt!6678)))) (mask!4692 lt!6678) (extraKeys!1622 lt!6678) (zeroValue!1646 lt!6678) (minValue!1646 lt!6678) #b00000000000000000000000000000000 (defaultEntry!1719 lt!6678)))))

(declare-fun b!21986 () Bool)

(assert (=> b!21986 (= e!14274 e!14271)))

(declare-fun res!14006 () Bool)

(assert (=> b!21986 (= res!14006 call!1513)))

(assert (=> b!21986 (=> (not res!14006) (not e!14271))))

(declare-fun b!21987 () Bool)

(declare-fun c!2623 () Bool)

(assert (=> b!21987 (= c!2623 (and (not (= (bvand (extraKeys!1622 lt!6678) #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand (extraKeys!1622 lt!6678) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!21987 (= e!14273 e!14268)))

(declare-fun b!21988 () Bool)

(assert (=> b!21988 (= e!14263 e!14274)))

(declare-fun c!2627 () Bool)

(assert (=> b!21988 (= c!2627 (not (= (bvand (extraKeys!1622 lt!6678) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!21989 () Bool)

(assert (=> b!21989 (= e!14270 (= (apply!28 lt!7166 (select (arr!580 (_keys!3140 lt!6678)) #b00000000000000000000000000000000)) (get!377 (select (arr!579 (ite c!2549 (_values!1708 lt!6678) (array!1222 (store (arr!579 (_values!1708 lt!6678)) (index!2345 lt!6907) (ValueCellFull!300 (zeroValue!1646 (v!1573 (underlying!104 thiss!938))))) (size!672 (_values!1708 lt!6678))))) #b00000000000000000000000000000000) (dynLambda!141 (defaultEntry!1719 lt!6678) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!21989 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!672 (ite c!2549 (_values!1708 lt!6678) (array!1222 (store (arr!579 (_values!1708 lt!6678)) (index!2345 lt!6907) (ValueCellFull!300 (zeroValue!1646 (v!1573 (underlying!104 thiss!938))))) (size!672 (_values!1708 lt!6678)))))))))

(assert (=> b!21989 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!673 (_keys!3140 lt!6678))))))

(declare-fun b!21990 () Bool)

(declare-fun lt!7183 () Unit!454)

(assert (=> b!21990 (= e!14272 lt!7183)))

(declare-fun lt!7176 () ListLongMap!545)

(assert (=> b!21990 (= lt!7176 (getCurrentListMapNoExtraKeys!13 (_keys!3140 lt!6678) (ite c!2549 (_values!1708 lt!6678) (array!1222 (store (arr!579 (_values!1708 lt!6678)) (index!2345 lt!6907) (ValueCellFull!300 (zeroValue!1646 (v!1573 (underlying!104 thiss!938))))) (size!672 (_values!1708 lt!6678)))) (mask!4692 lt!6678) (extraKeys!1622 lt!6678) (zeroValue!1646 lt!6678) (minValue!1646 lt!6678) #b00000000000000000000000000000000 (defaultEntry!1719 lt!6678)))))

(declare-fun lt!7168 () (_ BitVec 64))

(assert (=> b!21990 (= lt!7168 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!7171 () (_ BitVec 64))

(assert (=> b!21990 (= lt!7171 (select (arr!580 (_keys!3140 lt!6678)) #b00000000000000000000000000000000))))

(declare-fun lt!7180 () Unit!454)

(assert (=> b!21990 (= lt!7180 (addStillContains!13 lt!7176 lt!7168 (zeroValue!1646 lt!6678) lt!7171))))

(assert (=> b!21990 (contains!215 (+!42 lt!7176 (tuple2!891 lt!7168 (zeroValue!1646 lt!6678))) lt!7171)))

(declare-fun lt!7173 () Unit!454)

(assert (=> b!21990 (= lt!7173 lt!7180)))

(declare-fun lt!7175 () ListLongMap!545)

(assert (=> b!21990 (= lt!7175 (getCurrentListMapNoExtraKeys!13 (_keys!3140 lt!6678) (ite c!2549 (_values!1708 lt!6678) (array!1222 (store (arr!579 (_values!1708 lt!6678)) (index!2345 lt!6907) (ValueCellFull!300 (zeroValue!1646 (v!1573 (underlying!104 thiss!938))))) (size!672 (_values!1708 lt!6678)))) (mask!4692 lt!6678) (extraKeys!1622 lt!6678) (zeroValue!1646 lt!6678) (minValue!1646 lt!6678) #b00000000000000000000000000000000 (defaultEntry!1719 lt!6678)))))

(declare-fun lt!7172 () (_ BitVec 64))

(assert (=> b!21990 (= lt!7172 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!7167 () (_ BitVec 64))

(assert (=> b!21990 (= lt!7167 (select (arr!580 (_keys!3140 lt!6678)) #b00000000000000000000000000000000))))

(declare-fun lt!7174 () Unit!454)

(assert (=> b!21990 (= lt!7174 (addApplyDifferent!13 lt!7175 lt!7172 (minValue!1646 lt!6678) lt!7167))))

(assert (=> b!21990 (= (apply!28 (+!42 lt!7175 (tuple2!891 lt!7172 (minValue!1646 lt!6678))) lt!7167) (apply!28 lt!7175 lt!7167))))

(declare-fun lt!7177 () Unit!454)

(assert (=> b!21990 (= lt!7177 lt!7174)))

(declare-fun lt!7178 () ListLongMap!545)

(assert (=> b!21990 (= lt!7178 (getCurrentListMapNoExtraKeys!13 (_keys!3140 lt!6678) (ite c!2549 (_values!1708 lt!6678) (array!1222 (store (arr!579 (_values!1708 lt!6678)) (index!2345 lt!6907) (ValueCellFull!300 (zeroValue!1646 (v!1573 (underlying!104 thiss!938))))) (size!672 (_values!1708 lt!6678)))) (mask!4692 lt!6678) (extraKeys!1622 lt!6678) (zeroValue!1646 lt!6678) (minValue!1646 lt!6678) #b00000000000000000000000000000000 (defaultEntry!1719 lt!6678)))))

(declare-fun lt!7185 () (_ BitVec 64))

(assert (=> b!21990 (= lt!7185 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!7181 () (_ BitVec 64))

(assert (=> b!21990 (= lt!7181 (select (arr!580 (_keys!3140 lt!6678)) #b00000000000000000000000000000000))))

(declare-fun lt!7164 () Unit!454)

(assert (=> b!21990 (= lt!7164 (addApplyDifferent!13 lt!7178 lt!7185 (zeroValue!1646 lt!6678) lt!7181))))

(assert (=> b!21990 (= (apply!28 (+!42 lt!7178 (tuple2!891 lt!7185 (zeroValue!1646 lt!6678))) lt!7181) (apply!28 lt!7178 lt!7181))))

(declare-fun lt!7179 () Unit!454)

(assert (=> b!21990 (= lt!7179 lt!7164)))

(declare-fun lt!7165 () ListLongMap!545)

(assert (=> b!21990 (= lt!7165 (getCurrentListMapNoExtraKeys!13 (_keys!3140 lt!6678) (ite c!2549 (_values!1708 lt!6678) (array!1222 (store (arr!579 (_values!1708 lt!6678)) (index!2345 lt!6907) (ValueCellFull!300 (zeroValue!1646 (v!1573 (underlying!104 thiss!938))))) (size!672 (_values!1708 lt!6678)))) (mask!4692 lt!6678) (extraKeys!1622 lt!6678) (zeroValue!1646 lt!6678) (minValue!1646 lt!6678) #b00000000000000000000000000000000 (defaultEntry!1719 lt!6678)))))

(declare-fun lt!7182 () (_ BitVec 64))

(assert (=> b!21990 (= lt!7182 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!7169 () (_ BitVec 64))

(assert (=> b!21990 (= lt!7169 (select (arr!580 (_keys!3140 lt!6678)) #b00000000000000000000000000000000))))

(assert (=> b!21990 (= lt!7183 (addApplyDifferent!13 lt!7165 lt!7182 (minValue!1646 lt!6678) lt!7169))))

(assert (=> b!21990 (= (apply!28 (+!42 lt!7165 (tuple2!891 lt!7182 (minValue!1646 lt!6678))) lt!7169) (apply!28 lt!7165 lt!7169))))

(declare-fun bm!1510 () Bool)

(assert (=> bm!1510 (= call!1507 call!1510)))

(assert (= (and d!3809 c!2625) b!21977))

(assert (= (and d!3809 (not c!2625)) b!21980))

(assert (= (and b!21980 c!2628) b!21972))

(assert (= (and b!21980 (not c!2628)) b!21987))

(assert (= (and b!21987 c!2623) b!21976))

(assert (= (and b!21987 (not c!2623)) b!21985))

(assert (= (or b!21976 b!21985) bm!1507))

(assert (= (or b!21972 bm!1507) bm!1510))

(assert (= (or b!21972 b!21976) bm!1505))

(assert (= (or b!21977 bm!1510) bm!1509))

(assert (= (or b!21977 bm!1505) bm!1508))

(assert (= (and d!3809 res!14002) b!21973))

(assert (= (and d!3809 c!2626) b!21990))

(assert (= (and d!3809 (not c!2626)) b!21982))

(assert (= (and d!3809 res!14000) b!21979))

(assert (= (and b!21979 res!14004) b!21978))

(assert (= (and b!21979 (not res!14007)) b!21974))

(assert (= (and b!21974 res!14005) b!21989))

(assert (= (and b!21979 res!14001) b!21984))

(assert (= (and b!21984 c!2624) b!21981))

(assert (= (and b!21984 (not c!2624)) b!21970))

(assert (= (and b!21981 res!13999) b!21975))

(assert (= (or b!21981 b!21970) bm!1506))

(assert (= (and b!21984 res!14003) b!21988))

(assert (= (and b!21988 c!2627) b!21986))

(assert (= (and b!21988 (not c!2627)) b!21983))

(assert (= (and b!21986 res!14006) b!21971))

(assert (= (or b!21986 b!21983) bm!1504))

(declare-fun b_lambda!1541 () Bool)

(assert (=> (not b_lambda!1541) (not b!21989)))

(assert (=> b!21989 t!3223))

(declare-fun b_and!1439 () Bool)

(assert (= b_and!1437 (and (=> t!3223 result!1077) b_and!1439)))

(declare-fun m!15514 () Bool)

(assert (=> bm!1508 m!15514))

(declare-fun m!15516 () Bool)

(assert (=> bm!1506 m!15516))

(declare-fun m!15518 () Bool)

(assert (=> b!21971 m!15518))

(assert (=> b!21978 m!15345))

(assert (=> b!21978 m!15345))

(assert (=> b!21978 m!15347))

(declare-fun m!15520 () Bool)

(assert (=> b!21977 m!15520))

(declare-fun m!15522 () Bool)

(assert (=> b!21975 m!15522))

(declare-fun m!15524 () Bool)

(assert (=> bm!1504 m!15524))

(declare-fun m!15526 () Bool)

(assert (=> bm!1509 m!15526))

(assert (=> b!21973 m!15345))

(assert (=> b!21973 m!15345))

(assert (=> b!21973 m!15347))

(assert (=> d!3809 m!15275))

(declare-fun m!15528 () Bool)

(assert (=> b!21990 m!15528))

(declare-fun m!15530 () Bool)

(assert (=> b!21990 m!15530))

(assert (=> b!21990 m!15345))

(declare-fun m!15532 () Bool)

(assert (=> b!21990 m!15532))

(assert (=> b!21990 m!15528))

(assert (=> b!21990 m!15526))

(declare-fun m!15534 () Bool)

(assert (=> b!21990 m!15534))

(declare-fun m!15536 () Bool)

(assert (=> b!21990 m!15536))

(declare-fun m!15538 () Bool)

(assert (=> b!21990 m!15538))

(declare-fun m!15540 () Bool)

(assert (=> b!21990 m!15540))

(assert (=> b!21990 m!15532))

(declare-fun m!15542 () Bool)

(assert (=> b!21990 m!15542))

(declare-fun m!15544 () Bool)

(assert (=> b!21990 m!15544))

(declare-fun m!15546 () Bool)

(assert (=> b!21990 m!15546))

(declare-fun m!15548 () Bool)

(assert (=> b!21990 m!15548))

(assert (=> b!21990 m!15544))

(declare-fun m!15550 () Bool)

(assert (=> b!21990 m!15550))

(declare-fun m!15552 () Bool)

(assert (=> b!21990 m!15552))

(assert (=> b!21990 m!15546))

(declare-fun m!15554 () Bool)

(assert (=> b!21990 m!15554))

(declare-fun m!15556 () Bool)

(assert (=> b!21990 m!15556))

(assert (=> b!21989 m!15345))

(assert (=> b!21989 m!15345))

(declare-fun m!15558 () Bool)

(assert (=> b!21989 m!15558))

(declare-fun m!15560 () Bool)

(assert (=> b!21989 m!15560))

(assert (=> b!21989 m!15391))

(declare-fun m!15562 () Bool)

(assert (=> b!21989 m!15562))

(assert (=> b!21989 m!15560))

(assert (=> b!21989 m!15391))

(assert (=> b!21974 m!15345))

(assert (=> b!21974 m!15345))

(declare-fun m!15564 () Bool)

(assert (=> b!21974 m!15564))

(assert (=> bm!1423 d!3809))

(assert (=> b!21573 d!3765))

(declare-fun d!3811 () Bool)

(assert (=> d!3811 (= (apply!28 lt!6826 #b1000000000000000000000000000000000000000000000000000000000000000) (get!378 (getValueByKey!60 (toList!288 lt!6826) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun bs!913 () Bool)

(assert (= bs!913 d!3811))

(declare-fun m!15566 () Bool)

(assert (=> bs!913 m!15566))

(assert (=> bs!913 m!15566))

(declare-fun m!15568 () Bool)

(assert (=> bs!913 m!15568))

(assert (=> b!21571 d!3811))

(declare-fun d!3813 () Bool)

(declare-fun e!14277 () Bool)

(assert (=> d!3813 e!14277))

(declare-fun res!14010 () Bool)

(assert (=> d!3813 (=> (not res!14010) (not e!14277))))

(assert (=> d!3813 (= res!14010 (and (bvsge (index!2345 lt!6934) #b00000000000000000000000000000000) (bvslt (index!2345 lt!6934) (size!673 (_keys!3140 (ite c!2483 (_2!447 lt!6680) lt!6678))))))))

(declare-fun lt!7188 () Unit!454)

(declare-fun choose!200 (array!1223 array!1221 (_ BitVec 32) (_ BitVec 32) V!1157 V!1157 (_ BitVec 32) Int) Unit!454)

(assert (=> d!3813 (= lt!7188 (choose!200 (_keys!3140 (ite c!2483 (_2!447 lt!6680) lt!6678)) lt!6937 (mask!4692 (ite c!2483 (_2!447 lt!6680) lt!6678)) (extraKeys!1622 (ite c!2483 (_2!447 lt!6680) lt!6678)) (zeroValue!1646 (ite c!2483 (_2!447 lt!6680) lt!6678)) (minValue!1646 (ite c!2483 (_2!447 lt!6680) lt!6678)) (index!2345 lt!6934) (defaultEntry!1719 (ite c!2483 (_2!447 lt!6680) lt!6678))))))

(assert (=> d!3813 (validMask!0 (mask!4692 (ite c!2483 (_2!447 lt!6680) lt!6678)))))

(assert (=> d!3813 (= (lemmaValidKeyInArrayIsInListMap!7 (_keys!3140 (ite c!2483 (_2!447 lt!6680) lt!6678)) lt!6937 (mask!4692 (ite c!2483 (_2!447 lt!6680) lt!6678)) (extraKeys!1622 (ite c!2483 (_2!447 lt!6680) lt!6678)) (zeroValue!1646 (ite c!2483 (_2!447 lt!6680) lt!6678)) (minValue!1646 (ite c!2483 (_2!447 lt!6680) lt!6678)) (index!2345 lt!6934) (defaultEntry!1719 (ite c!2483 (_2!447 lt!6680) lt!6678))) lt!7188)))

(declare-fun b!21993 () Bool)

(assert (=> b!21993 (= e!14277 (contains!215 (getCurrentListMap!117 (_keys!3140 (ite c!2483 (_2!447 lt!6680) lt!6678)) lt!6937 (mask!4692 (ite c!2483 (_2!447 lt!6680) lt!6678)) (extraKeys!1622 (ite c!2483 (_2!447 lt!6680) lt!6678)) (zeroValue!1646 (ite c!2483 (_2!447 lt!6680) lt!6678)) (minValue!1646 (ite c!2483 (_2!447 lt!6680) lt!6678)) #b00000000000000000000000000000000 (defaultEntry!1719 (ite c!2483 (_2!447 lt!6680) lt!6678))) (select (arr!580 (_keys!3140 (ite c!2483 (_2!447 lt!6680) lt!6678))) (index!2345 lt!6934))))))

(assert (= (and d!3813 res!14010) b!21993))

(declare-fun m!15570 () Bool)

(assert (=> d!3813 m!15570))

(assert (=> d!3813 m!15303))

(declare-fun m!15572 () Bool)

(assert (=> b!21993 m!15572))

(assert (=> b!21993 m!15129))

(assert (=> b!21993 m!15572))

(assert (=> b!21993 m!15129))

(declare-fun m!15574 () Bool)

(assert (=> b!21993 m!15574))

(assert (=> b!21716 d!3813))

(declare-fun d!3815 () Bool)

(declare-fun e!14280 () Bool)

(assert (=> d!3815 e!14280))

(declare-fun res!14013 () Bool)

(assert (=> d!3815 (=> (not res!14013) (not e!14280))))

(assert (=> d!3815 (= res!14013 (and (bvsge (index!2345 lt!6934) #b00000000000000000000000000000000) (bvslt (index!2345 lt!6934) (size!672 (_values!1708 (ite c!2483 (_2!447 lt!6680) lt!6678))))))))

(declare-fun lt!7191 () Unit!454)

(declare-fun choose!201 (array!1223 array!1221 (_ BitVec 32) (_ BitVec 32) V!1157 V!1157 (_ BitVec 32) (_ BitVec 64) V!1157 Int) Unit!454)

(assert (=> d!3815 (= lt!7191 (choose!201 (_keys!3140 (ite c!2483 (_2!447 lt!6680) lt!6678)) (_values!1708 (ite c!2483 (_2!447 lt!6680) lt!6678)) (mask!4692 (ite c!2483 (_2!447 lt!6680) lt!6678)) (extraKeys!1622 (ite c!2483 (_2!447 lt!6680) lt!6678)) (zeroValue!1646 (ite c!2483 (_2!447 lt!6680) lt!6678)) (minValue!1646 (ite c!2483 (_2!447 lt!6680) lt!6678)) (index!2345 lt!6934) (ite c!2483 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!2482 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000)) (ite c!2483 (minValue!1646 (v!1573 (underlying!104 thiss!938))) (ite c!2482 (zeroValue!1646 (v!1573 (underlying!104 thiss!938))) (minValue!1646 (v!1573 (underlying!104 thiss!938))))) (defaultEntry!1719 (ite c!2483 (_2!447 lt!6680) lt!6678))))))

(assert (=> d!3815 (validMask!0 (mask!4692 (ite c!2483 (_2!447 lt!6680) lt!6678)))))

(assert (=> d!3815 (= (lemmaChangeValueExistingKeyToArrayThenAddPairToListMap!7 (_keys!3140 (ite c!2483 (_2!447 lt!6680) lt!6678)) (_values!1708 (ite c!2483 (_2!447 lt!6680) lt!6678)) (mask!4692 (ite c!2483 (_2!447 lt!6680) lt!6678)) (extraKeys!1622 (ite c!2483 (_2!447 lt!6680) lt!6678)) (zeroValue!1646 (ite c!2483 (_2!447 lt!6680) lt!6678)) (minValue!1646 (ite c!2483 (_2!447 lt!6680) lt!6678)) (index!2345 lt!6934) (ite c!2483 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!2482 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000)) (ite c!2483 (minValue!1646 (v!1573 (underlying!104 thiss!938))) (ite c!2482 (zeroValue!1646 (v!1573 (underlying!104 thiss!938))) (minValue!1646 (v!1573 (underlying!104 thiss!938))))) (defaultEntry!1719 (ite c!2483 (_2!447 lt!6680) lt!6678))) lt!7191)))

(declare-fun b!21996 () Bool)

(assert (=> b!21996 (= e!14280 (= (+!42 (getCurrentListMap!117 (_keys!3140 (ite c!2483 (_2!447 lt!6680) lt!6678)) (_values!1708 (ite c!2483 (_2!447 lt!6680) lt!6678)) (mask!4692 (ite c!2483 (_2!447 lt!6680) lt!6678)) (extraKeys!1622 (ite c!2483 (_2!447 lt!6680) lt!6678)) (zeroValue!1646 (ite c!2483 (_2!447 lt!6680) lt!6678)) (minValue!1646 (ite c!2483 (_2!447 lt!6680) lt!6678)) #b00000000000000000000000000000000 (defaultEntry!1719 (ite c!2483 (_2!447 lt!6680) lt!6678))) (tuple2!891 (ite c!2483 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!2482 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000)) (ite c!2483 (minValue!1646 (v!1573 (underlying!104 thiss!938))) (ite c!2482 (zeroValue!1646 (v!1573 (underlying!104 thiss!938))) (minValue!1646 (v!1573 (underlying!104 thiss!938))))))) (getCurrentListMap!117 (_keys!3140 (ite c!2483 (_2!447 lt!6680) lt!6678)) (array!1222 (store (arr!579 (_values!1708 (ite c!2483 (_2!447 lt!6680) lt!6678))) (index!2345 lt!6934) (ValueCellFull!300 (ite c!2483 (minValue!1646 (v!1573 (underlying!104 thiss!938))) (ite c!2482 (zeroValue!1646 (v!1573 (underlying!104 thiss!938))) (minValue!1646 (v!1573 (underlying!104 thiss!938))))))) (size!672 (_values!1708 (ite c!2483 (_2!447 lt!6680) lt!6678)))) (mask!4692 (ite c!2483 (_2!447 lt!6680) lt!6678)) (extraKeys!1622 (ite c!2483 (_2!447 lt!6680) lt!6678)) (zeroValue!1646 (ite c!2483 (_2!447 lt!6680) lt!6678)) (minValue!1646 (ite c!2483 (_2!447 lt!6680) lt!6678)) #b00000000000000000000000000000000 (defaultEntry!1719 (ite c!2483 (_2!447 lt!6680) lt!6678)))))))

(assert (= (and d!3815 res!14013) b!21996))

(declare-fun m!15576 () Bool)

(assert (=> d!3815 m!15576))

(assert (=> d!3815 m!15303))

(assert (=> b!21996 m!15309))

(assert (=> b!21996 m!15309))

(declare-fun m!15578 () Bool)

(assert (=> b!21996 m!15578))

(assert (=> b!21996 m!15139))

(declare-fun m!15580 () Bool)

(assert (=> b!21996 m!15580))

(assert (=> b!21716 d!3815))

(declare-fun d!3817 () Bool)

(declare-fun e!14281 () Bool)

(assert (=> d!3817 e!14281))

(declare-fun res!14014 () Bool)

(assert (=> d!3817 (=> res!14014 e!14281)))

(declare-fun lt!7192 () Bool)

(assert (=> d!3817 (= res!14014 (not lt!7192))))

(declare-fun lt!7193 () Bool)

(assert (=> d!3817 (= lt!7192 lt!7193)))

(declare-fun lt!7194 () Unit!454)

(declare-fun e!14282 () Unit!454)

(assert (=> d!3817 (= lt!7194 e!14282)))

(declare-fun c!2629 () Bool)

(assert (=> d!3817 (= c!2629 lt!7193)))

(assert (=> d!3817 (= lt!7193 (containsKey!24 (toList!288 call!1461) (ite c!2483 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!2482 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> d!3817 (= (contains!215 call!1461 (ite c!2483 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!2482 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000))) lt!7192)))

(declare-fun b!21997 () Bool)

(declare-fun lt!7195 () Unit!454)

(assert (=> b!21997 (= e!14282 lt!7195)))

(assert (=> b!21997 (= lt!7195 (lemmaContainsKeyImpliesGetValueByKeyDefined!21 (toList!288 call!1461) (ite c!2483 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!2482 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!21997 (isDefined!22 (getValueByKey!60 (toList!288 call!1461) (ite c!2483 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!2482 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!21998 () Bool)

(declare-fun Unit!475 () Unit!454)

(assert (=> b!21998 (= e!14282 Unit!475)))

(declare-fun b!21999 () Bool)

(assert (=> b!21999 (= e!14281 (isDefined!22 (getValueByKey!60 (toList!288 call!1461) (ite c!2483 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!2482 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (= (and d!3817 c!2629) b!21997))

(assert (= (and d!3817 (not c!2629)) b!21998))

(assert (= (and d!3817 (not res!14014)) b!21999))

(declare-fun m!15582 () Bool)

(assert (=> d!3817 m!15582))

(declare-fun m!15584 () Bool)

(assert (=> b!21997 m!15584))

(declare-fun m!15586 () Bool)

(assert (=> b!21997 m!15586))

(assert (=> b!21997 m!15586))

(declare-fun m!15588 () Bool)

(assert (=> b!21997 m!15588))

(assert (=> b!21999 m!15586))

(assert (=> b!21999 m!15586))

(assert (=> b!21999 m!15588))

(assert (=> b!21716 d!3817))

(declare-fun d!3819 () Bool)

(assert (=> d!3819 (arrayNoDuplicates!0 lt!6758 lt!6765 lt!6761)))

(declare-fun lt!7198 () Unit!454)

(declare-fun choose!111 (array!1223 (_ BitVec 32) (_ BitVec 32) List!560) Unit!454)

(assert (=> d!3819 (= lt!7198 (choose!111 lt!6758 lt!6765 (bvadd (computeNewMask!22 thiss!938 (mask!4692 (v!1573 (underlying!104 thiss!938))) (_vacant!134 (v!1573 (underlying!104 thiss!938))) (_size!134 (v!1573 (underlying!104 thiss!938)))) #b00000000000000000000000000000001) lt!6761))))

(assert (=> d!3819 (= (size!673 lt!6758) (bvadd (computeNewMask!22 thiss!938 (mask!4692 (v!1573 (underlying!104 thiss!938))) (_vacant!134 (v!1573 (underlying!104 thiss!938))) (_size!134 (v!1573 (underlying!104 thiss!938)))) #b00000000000000000000000000000001))))

(assert (=> d!3819 (= (lemmaArrayNoDuplicatesInAll0Array!0 lt!6758 lt!6765 (bvadd (computeNewMask!22 thiss!938 (mask!4692 (v!1573 (underlying!104 thiss!938))) (_vacant!134 (v!1573 (underlying!104 thiss!938))) (_size!134 (v!1573 (underlying!104 thiss!938)))) #b00000000000000000000000000000001) lt!6761) lt!7198)))

(declare-fun bs!914 () Bool)

(assert (= bs!914 d!3819))

(assert (=> bs!914 m!14985))

(declare-fun m!15590 () Bool)

(assert (=> bs!914 m!15590))

(assert (=> d!3743 d!3819))

(declare-fun d!3821 () Bool)

(assert (=> d!3821 (= (validMask!0 (computeNewMask!22 thiss!938 (mask!4692 (v!1573 (underlying!104 thiss!938))) (_vacant!134 (v!1573 (underlying!104 thiss!938))) (_size!134 (v!1573 (underlying!104 thiss!938))))) (and (or (= (computeNewMask!22 thiss!938 (mask!4692 (v!1573 (underlying!104 thiss!938))) (_vacant!134 (v!1573 (underlying!104 thiss!938))) (_size!134 (v!1573 (underlying!104 thiss!938)))) #b00000000000000000000000000000111) (= (computeNewMask!22 thiss!938 (mask!4692 (v!1573 (underlying!104 thiss!938))) (_vacant!134 (v!1573 (underlying!104 thiss!938))) (_size!134 (v!1573 (underlying!104 thiss!938)))) #b00000000000000000000000000001111) (= (computeNewMask!22 thiss!938 (mask!4692 (v!1573 (underlying!104 thiss!938))) (_vacant!134 (v!1573 (underlying!104 thiss!938))) (_size!134 (v!1573 (underlying!104 thiss!938)))) #b00000000000000000000000000011111) (= (computeNewMask!22 thiss!938 (mask!4692 (v!1573 (underlying!104 thiss!938))) (_vacant!134 (v!1573 (underlying!104 thiss!938))) (_size!134 (v!1573 (underlying!104 thiss!938)))) #b00000000000000000000000000111111) (= (computeNewMask!22 thiss!938 (mask!4692 (v!1573 (underlying!104 thiss!938))) (_vacant!134 (v!1573 (underlying!104 thiss!938))) (_size!134 (v!1573 (underlying!104 thiss!938)))) #b00000000000000000000000001111111) (= (computeNewMask!22 thiss!938 (mask!4692 (v!1573 (underlying!104 thiss!938))) (_vacant!134 (v!1573 (underlying!104 thiss!938))) (_size!134 (v!1573 (underlying!104 thiss!938)))) #b00000000000000000000000011111111) (= (computeNewMask!22 thiss!938 (mask!4692 (v!1573 (underlying!104 thiss!938))) (_vacant!134 (v!1573 (underlying!104 thiss!938))) (_size!134 (v!1573 (underlying!104 thiss!938)))) #b00000000000000000000000111111111) (= (computeNewMask!22 thiss!938 (mask!4692 (v!1573 (underlying!104 thiss!938))) (_vacant!134 (v!1573 (underlying!104 thiss!938))) (_size!134 (v!1573 (underlying!104 thiss!938)))) #b00000000000000000000001111111111) (= (computeNewMask!22 thiss!938 (mask!4692 (v!1573 (underlying!104 thiss!938))) (_vacant!134 (v!1573 (underlying!104 thiss!938))) (_size!134 (v!1573 (underlying!104 thiss!938)))) #b00000000000000000000011111111111) (= (computeNewMask!22 thiss!938 (mask!4692 (v!1573 (underlying!104 thiss!938))) (_vacant!134 (v!1573 (underlying!104 thiss!938))) (_size!134 (v!1573 (underlying!104 thiss!938)))) #b00000000000000000000111111111111) (= (computeNewMask!22 thiss!938 (mask!4692 (v!1573 (underlying!104 thiss!938))) (_vacant!134 (v!1573 (underlying!104 thiss!938))) (_size!134 (v!1573 (underlying!104 thiss!938)))) #b00000000000000000001111111111111) (= (computeNewMask!22 thiss!938 (mask!4692 (v!1573 (underlying!104 thiss!938))) (_vacant!134 (v!1573 (underlying!104 thiss!938))) (_size!134 (v!1573 (underlying!104 thiss!938)))) #b00000000000000000011111111111111) (= (computeNewMask!22 thiss!938 (mask!4692 (v!1573 (underlying!104 thiss!938))) (_vacant!134 (v!1573 (underlying!104 thiss!938))) (_size!134 (v!1573 (underlying!104 thiss!938)))) #b00000000000000000111111111111111) (= (computeNewMask!22 thiss!938 (mask!4692 (v!1573 (underlying!104 thiss!938))) (_vacant!134 (v!1573 (underlying!104 thiss!938))) (_size!134 (v!1573 (underlying!104 thiss!938)))) #b00000000000000001111111111111111) (= (computeNewMask!22 thiss!938 (mask!4692 (v!1573 (underlying!104 thiss!938))) (_vacant!134 (v!1573 (underlying!104 thiss!938))) (_size!134 (v!1573 (underlying!104 thiss!938)))) #b00000000000000011111111111111111) (= (computeNewMask!22 thiss!938 (mask!4692 (v!1573 (underlying!104 thiss!938))) (_vacant!134 (v!1573 (underlying!104 thiss!938))) (_size!134 (v!1573 (underlying!104 thiss!938)))) #b00000000000000111111111111111111) (= (computeNewMask!22 thiss!938 (mask!4692 (v!1573 (underlying!104 thiss!938))) (_vacant!134 (v!1573 (underlying!104 thiss!938))) (_size!134 (v!1573 (underlying!104 thiss!938)))) #b00000000000001111111111111111111) (= (computeNewMask!22 thiss!938 (mask!4692 (v!1573 (underlying!104 thiss!938))) (_vacant!134 (v!1573 (underlying!104 thiss!938))) (_size!134 (v!1573 (underlying!104 thiss!938)))) #b00000000000011111111111111111111) (= (computeNewMask!22 thiss!938 (mask!4692 (v!1573 (underlying!104 thiss!938))) (_vacant!134 (v!1573 (underlying!104 thiss!938))) (_size!134 (v!1573 (underlying!104 thiss!938)))) #b00000000000111111111111111111111) (= (computeNewMask!22 thiss!938 (mask!4692 (v!1573 (underlying!104 thiss!938))) (_vacant!134 (v!1573 (underlying!104 thiss!938))) (_size!134 (v!1573 (underlying!104 thiss!938)))) #b00000000001111111111111111111111) (= (computeNewMask!22 thiss!938 (mask!4692 (v!1573 (underlying!104 thiss!938))) (_vacant!134 (v!1573 (underlying!104 thiss!938))) (_size!134 (v!1573 (underlying!104 thiss!938)))) #b00000000011111111111111111111111) (= (computeNewMask!22 thiss!938 (mask!4692 (v!1573 (underlying!104 thiss!938))) (_vacant!134 (v!1573 (underlying!104 thiss!938))) (_size!134 (v!1573 (underlying!104 thiss!938)))) #b00000000111111111111111111111111) (= (computeNewMask!22 thiss!938 (mask!4692 (v!1573 (underlying!104 thiss!938))) (_vacant!134 (v!1573 (underlying!104 thiss!938))) (_size!134 (v!1573 (underlying!104 thiss!938)))) #b00000001111111111111111111111111) (= (computeNewMask!22 thiss!938 (mask!4692 (v!1573 (underlying!104 thiss!938))) (_vacant!134 (v!1573 (underlying!104 thiss!938))) (_size!134 (v!1573 (underlying!104 thiss!938)))) #b00000011111111111111111111111111) (= (computeNewMask!22 thiss!938 (mask!4692 (v!1573 (underlying!104 thiss!938))) (_vacant!134 (v!1573 (underlying!104 thiss!938))) (_size!134 (v!1573 (underlying!104 thiss!938)))) #b00000111111111111111111111111111) (= (computeNewMask!22 thiss!938 (mask!4692 (v!1573 (underlying!104 thiss!938))) (_vacant!134 (v!1573 (underlying!104 thiss!938))) (_size!134 (v!1573 (underlying!104 thiss!938)))) #b00001111111111111111111111111111) (= (computeNewMask!22 thiss!938 (mask!4692 (v!1573 (underlying!104 thiss!938))) (_vacant!134 (v!1573 (underlying!104 thiss!938))) (_size!134 (v!1573 (underlying!104 thiss!938)))) #b00011111111111111111111111111111) (= (computeNewMask!22 thiss!938 (mask!4692 (v!1573 (underlying!104 thiss!938))) (_vacant!134 (v!1573 (underlying!104 thiss!938))) (_size!134 (v!1573 (underlying!104 thiss!938)))) #b00111111111111111111111111111111)) (bvsle (computeNewMask!22 thiss!938 (mask!4692 (v!1573 (underlying!104 thiss!938))) (_vacant!134 (v!1573 (underlying!104 thiss!938))) (_size!134 (v!1573 (underlying!104 thiss!938)))) #b00111111111111111111111111111111)))))

(assert (=> d!3743 d!3821))

(declare-fun b!22000 () Bool)

(declare-fun e!14285 () Bool)

(declare-fun e!14283 () Bool)

(assert (=> b!22000 (= e!14285 e!14283)))

(declare-fun lt!7199 () (_ BitVec 64))

(assert (=> b!22000 (= lt!7199 (select (arr!580 lt!6753) lt!6773))))

(declare-fun lt!7200 () Unit!454)

(assert (=> b!22000 (= lt!7200 (lemmaArrayContainsFromImpliesContainsFromZero!0 lt!6753 lt!7199 lt!6773))))

(assert (=> b!22000 (arrayContainsKey!0 lt!6753 lt!7199 #b00000000000000000000000000000000)))

(declare-fun lt!7201 () Unit!454)

(assert (=> b!22000 (= lt!7201 lt!7200)))

(declare-fun res!14015 () Bool)

(assert (=> b!22000 (= res!14015 (= (seekEntryOrOpen!0 (select (arr!580 lt!6753) lt!6773) lt!6753 (computeNewMask!22 thiss!938 (mask!4692 (v!1573 (underlying!104 thiss!938))) (_vacant!134 (v!1573 (underlying!104 thiss!938))) (_size!134 (v!1573 (underlying!104 thiss!938))))) (Found!56 lt!6773)))))

(assert (=> b!22000 (=> (not res!14015) (not e!14283))))

(declare-fun b!22001 () Bool)

(declare-fun call!1514 () Bool)

(assert (=> b!22001 (= e!14285 call!1514)))

(declare-fun d!3823 () Bool)

(declare-fun res!14016 () Bool)

(declare-fun e!14284 () Bool)

(assert (=> d!3823 (=> res!14016 e!14284)))

(assert (=> d!3823 (= res!14016 (bvsge lt!6773 (size!673 lt!6753)))))

(assert (=> d!3823 (= (arrayForallSeekEntryOrOpenFound!0 lt!6773 lt!6753 (computeNewMask!22 thiss!938 (mask!4692 (v!1573 (underlying!104 thiss!938))) (_vacant!134 (v!1573 (underlying!104 thiss!938))) (_size!134 (v!1573 (underlying!104 thiss!938))))) e!14284)))

(declare-fun b!22002 () Bool)

(assert (=> b!22002 (= e!14284 e!14285)))

(declare-fun c!2630 () Bool)

(assert (=> b!22002 (= c!2630 (validKeyInArray!0 (select (arr!580 lt!6753) lt!6773)))))

(declare-fun b!22003 () Bool)

(assert (=> b!22003 (= e!14283 call!1514)))

(declare-fun bm!1511 () Bool)

(assert (=> bm!1511 (= call!1514 (arrayForallSeekEntryOrOpenFound!0 (bvadd lt!6773 #b00000000000000000000000000000001) lt!6753 (computeNewMask!22 thiss!938 (mask!4692 (v!1573 (underlying!104 thiss!938))) (_vacant!134 (v!1573 (underlying!104 thiss!938))) (_size!134 (v!1573 (underlying!104 thiss!938))))))))

(assert (= (and d!3823 (not res!14016)) b!22002))

(assert (= (and b!22002 c!2630) b!22000))

(assert (= (and b!22002 (not c!2630)) b!22001))

(assert (= (and b!22000 res!14015) b!22003))

(assert (= (or b!22003 b!22001) bm!1511))

(declare-fun m!15592 () Bool)

(assert (=> b!22000 m!15592))

(declare-fun m!15594 () Bool)

(assert (=> b!22000 m!15594))

(declare-fun m!15596 () Bool)

(assert (=> b!22000 m!15596))

(assert (=> b!22000 m!15592))

(assert (=> b!22000 m!14925))

(declare-fun m!15598 () Bool)

(assert (=> b!22000 m!15598))

(assert (=> b!22002 m!15592))

(assert (=> b!22002 m!15592))

(declare-fun m!15600 () Bool)

(assert (=> b!22002 m!15600))

(assert (=> bm!1511 m!14925))

(declare-fun m!15602 () Bool)

(assert (=> bm!1511 m!15602))

(assert (=> d!3743 d!3823))

(declare-fun d!3825 () Bool)

(assert (=> d!3825 (arrayForallSeekEntryOrOpenFound!0 lt!6773 lt!6753 (computeNewMask!22 thiss!938 (mask!4692 (v!1573 (underlying!104 thiss!938))) (_vacant!134 (v!1573 (underlying!104 thiss!938))) (_size!134 (v!1573 (underlying!104 thiss!938)))))))

(declare-fun lt!7204 () Unit!454)

(declare-fun choose!34 (array!1223 (_ BitVec 32) (_ BitVec 32)) Unit!454)

(assert (=> d!3825 (= lt!7204 (choose!34 lt!6753 (computeNewMask!22 thiss!938 (mask!4692 (v!1573 (underlying!104 thiss!938))) (_vacant!134 (v!1573 (underlying!104 thiss!938))) (_size!134 (v!1573 (underlying!104 thiss!938)))) lt!6773))))

(assert (=> d!3825 (validMask!0 (computeNewMask!22 thiss!938 (mask!4692 (v!1573 (underlying!104 thiss!938))) (_vacant!134 (v!1573 (underlying!104 thiss!938))) (_size!134 (v!1573 (underlying!104 thiss!938)))))))

(assert (=> d!3825 (= (lemmaArrayForallSeekEntryOrOpenFoundAlwaysTrueFor0Array!0 lt!6753 (computeNewMask!22 thiss!938 (mask!4692 (v!1573 (underlying!104 thiss!938))) (_vacant!134 (v!1573 (underlying!104 thiss!938))) (_size!134 (v!1573 (underlying!104 thiss!938)))) lt!6773) lt!7204)))

(declare-fun bs!915 () Bool)

(assert (= bs!915 d!3825))

(assert (=> bs!915 m!14925))

(assert (=> bs!915 m!14993))

(assert (=> bs!915 m!14925))

(declare-fun m!15604 () Bool)

(assert (=> bs!915 m!15604))

(assert (=> bs!915 m!14925))

(assert (=> bs!915 m!14981))

(assert (=> d!3743 d!3825))

(declare-fun b!22014 () Bool)

(declare-fun e!14297 () Bool)

(declare-fun e!14294 () Bool)

(assert (=> b!22014 (= e!14297 e!14294)))

(declare-fun c!2633 () Bool)

(assert (=> b!22014 (= c!2633 (validKeyInArray!0 (select (arr!580 lt!6758) lt!6765)))))

(declare-fun b!22015 () Bool)

(declare-fun e!14296 () Bool)

(assert (=> b!22015 (= e!14296 e!14297)))

(declare-fun res!14025 () Bool)

(assert (=> b!22015 (=> (not res!14025) (not e!14297))))

(declare-fun e!14295 () Bool)

(assert (=> b!22015 (= res!14025 (not e!14295))))

(declare-fun res!14024 () Bool)

(assert (=> b!22015 (=> (not res!14024) (not e!14295))))

(assert (=> b!22015 (= res!14024 (validKeyInArray!0 (select (arr!580 lt!6758) lt!6765)))))

(declare-fun b!22016 () Bool)

(declare-fun contains!217 (List!560 (_ BitVec 64)) Bool)

(assert (=> b!22016 (= e!14295 (contains!217 lt!6761 (select (arr!580 lt!6758) lt!6765)))))

(declare-fun bm!1514 () Bool)

(declare-fun call!1517 () Bool)

(assert (=> bm!1514 (= call!1517 (arrayNoDuplicates!0 lt!6758 (bvadd lt!6765 #b00000000000000000000000000000001) (ite c!2633 (Cons!556 (select (arr!580 lt!6758) lt!6765) lt!6761) lt!6761)))))

(declare-fun b!22018 () Bool)

(assert (=> b!22018 (= e!14294 call!1517)))

(declare-fun b!22017 () Bool)

(assert (=> b!22017 (= e!14294 call!1517)))

(declare-fun d!3827 () Bool)

(declare-fun res!14023 () Bool)

(assert (=> d!3827 (=> res!14023 e!14296)))

(assert (=> d!3827 (= res!14023 (bvsge lt!6765 (size!673 lt!6758)))))

(assert (=> d!3827 (= (arrayNoDuplicates!0 lt!6758 lt!6765 lt!6761) e!14296)))

(assert (= (and d!3827 (not res!14023)) b!22015))

(assert (= (and b!22015 res!14024) b!22016))

(assert (= (and b!22015 res!14025) b!22014))

(assert (= (and b!22014 c!2633) b!22017))

(assert (= (and b!22014 (not c!2633)) b!22018))

(assert (= (or b!22017 b!22018) bm!1514))

(declare-fun m!15606 () Bool)

(assert (=> b!22014 m!15606))

(assert (=> b!22014 m!15606))

(declare-fun m!15608 () Bool)

(assert (=> b!22014 m!15608))

(assert (=> b!22015 m!15606))

(assert (=> b!22015 m!15606))

(assert (=> b!22015 m!15608))

(assert (=> b!22016 m!15606))

(assert (=> b!22016 m!15606))

(declare-fun m!15610 () Bool)

(assert (=> b!22016 m!15610))

(assert (=> bm!1514 m!15606))

(declare-fun m!15612 () Bool)

(assert (=> bm!1514 m!15612))

(assert (=> d!3743 d!3827))

(declare-fun d!3829 () Bool)

(declare-fun res!14026 () Bool)

(declare-fun e!14298 () Bool)

(assert (=> d!3829 (=> (not res!14026) (not e!14298))))

(assert (=> d!3829 (= res!14026 (simpleValid!18 lt!6759))))

(assert (=> d!3829 (= (valid!98 lt!6759) e!14298)))

(declare-fun b!22019 () Bool)

(declare-fun res!14027 () Bool)

(assert (=> b!22019 (=> (not res!14027) (not e!14298))))

(assert (=> b!22019 (= res!14027 (= (arrayCountValidKeys!0 (_keys!3140 lt!6759) #b00000000000000000000000000000000 (size!673 (_keys!3140 lt!6759))) (_size!134 lt!6759)))))

(declare-fun b!22020 () Bool)

(declare-fun res!14028 () Bool)

(assert (=> b!22020 (=> (not res!14028) (not e!14298))))

(assert (=> b!22020 (= res!14028 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!3140 lt!6759) (mask!4692 lt!6759)))))

(declare-fun b!22021 () Bool)

(assert (=> b!22021 (= e!14298 (arrayNoDuplicates!0 (_keys!3140 lt!6759) #b00000000000000000000000000000000 Nil!557))))

(assert (= (and d!3829 res!14026) b!22019))

(assert (= (and b!22019 res!14027) b!22020))

(assert (= (and b!22020 res!14028) b!22021))

(declare-fun m!15614 () Bool)

(assert (=> d!3829 m!15614))

(declare-fun m!15616 () Bool)

(assert (=> b!22019 m!15616))

(declare-fun m!15618 () Bool)

(assert (=> b!22020 m!15618))

(declare-fun m!15620 () Bool)

(assert (=> b!22021 m!15620))

(assert (=> d!3743 d!3829))

(declare-fun d!3831 () Bool)

(assert (=> d!3831 (= (map!398 lt!6772) (getCurrentListMap!117 (_keys!3140 lt!6772) (_values!1708 lt!6772) (mask!4692 lt!6772) (extraKeys!1622 lt!6772) (zeroValue!1646 lt!6772) (minValue!1646 lt!6772) #b00000000000000000000000000000000 (defaultEntry!1719 lt!6772)))))

(declare-fun bs!916 () Bool)

(assert (= bs!916 d!3831))

(declare-fun m!15622 () Bool)

(assert (=> bs!916 m!15622))

(assert (=> d!3743 d!3831))

(declare-fun d!3833 () Bool)

(declare-fun lt!7207 () (_ BitVec 32))

(assert (=> d!3833 (and (bvsge lt!7207 #b00000000000000000000000000000000) (bvsle lt!7207 (bvsub (size!673 lt!6760) lt!6755)))))

(declare-fun e!14303 () (_ BitVec 32))

(assert (=> d!3833 (= lt!7207 e!14303)))

(declare-fun c!2639 () Bool)

(assert (=> d!3833 (= c!2639 (bvsge lt!6755 lt!6751))))

(assert (=> d!3833 (and (bvsle lt!6755 lt!6751) (bvsge lt!6755 #b00000000000000000000000000000000) (bvsle lt!6751 (size!673 lt!6760)))))

(assert (=> d!3833 (= (arrayCountValidKeys!0 lt!6760 lt!6755 lt!6751) lt!7207)))

(declare-fun b!22030 () Bool)

(assert (=> b!22030 (= e!14303 #b00000000000000000000000000000000)))

(declare-fun b!22031 () Bool)

(declare-fun e!14304 () (_ BitVec 32))

(declare-fun call!1520 () (_ BitVec 32))

(assert (=> b!22031 (= e!14304 (bvadd #b00000000000000000000000000000001 call!1520))))

(declare-fun b!22032 () Bool)

(assert (=> b!22032 (= e!14303 e!14304)))

(declare-fun c!2638 () Bool)

(assert (=> b!22032 (= c!2638 (validKeyInArray!0 (select (arr!580 lt!6760) lt!6755)))))

(declare-fun b!22033 () Bool)

(assert (=> b!22033 (= e!14304 call!1520)))

(declare-fun bm!1517 () Bool)

(assert (=> bm!1517 (= call!1520 (arrayCountValidKeys!0 lt!6760 (bvadd lt!6755 #b00000000000000000000000000000001) lt!6751))))

(assert (= (and d!3833 c!2639) b!22030))

(assert (= (and d!3833 (not c!2639)) b!22032))

(assert (= (and b!22032 c!2638) b!22031))

(assert (= (and b!22032 (not c!2638)) b!22033))

(assert (= (or b!22031 b!22033) bm!1517))

(declare-fun m!15624 () Bool)

(assert (=> b!22032 m!15624))

(assert (=> b!22032 m!15624))

(declare-fun m!15626 () Bool)

(assert (=> b!22032 m!15626))

(declare-fun m!15628 () Bool)

(assert (=> bm!1517 m!15628))

(assert (=> d!3743 d!3833))

(declare-fun d!3835 () Bool)

(assert (=> d!3835 (= (arrayCountValidKeys!0 lt!6760 lt!6755 lt!6751) #b00000000000000000000000000000000)))

(declare-fun lt!7210 () Unit!454)

(declare-fun choose!59 (array!1223 (_ BitVec 32) (_ BitVec 32)) Unit!454)

(assert (=> d!3835 (= lt!7210 (choose!59 lt!6760 lt!6755 lt!6751))))

(assert (=> d!3835 (bvslt (size!673 lt!6760) #b01111111111111111111111111111111)))

(assert (=> d!3835 (= (lemmaArrayCountValidKeysOfFilled0ArrayIs0!0 lt!6760 lt!6755 lt!6751) lt!7210)))

(declare-fun bs!917 () Bool)

(assert (= bs!917 d!3835))

(assert (=> bs!917 m!14977))

(declare-fun m!15630 () Bool)

(assert (=> bs!917 m!15630))

(assert (=> d!3743 d!3835))

(declare-fun bm!1518 () Bool)

(declare-fun call!1527 () Bool)

(declare-fun lt!7213 () ListLongMap!545)

(assert (=> bm!1518 (= call!1527 (contains!215 lt!7213 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun bm!1519 () Bool)

(declare-fun call!1523 () ListLongMap!545)

(declare-fun call!1525 () ListLongMap!545)

(assert (=> bm!1519 (= call!1523 call!1525)))

(declare-fun b!22034 () Bool)

(declare-fun e!14309 () Bool)

(declare-fun call!1522 () Bool)

(assert (=> b!22034 (= e!14309 (not call!1522))))

(declare-fun bm!1520 () Bool)

(assert (=> bm!1520 (= call!1522 (contains!215 lt!7213 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!14314 () Bool)

(declare-fun b!22035 () Bool)

(assert (=> b!22035 (= e!14314 (= (apply!28 lt!7213 #b1000000000000000000000000000000000000000000000000000000000000000) (minValue!1646 (ite c!2483 (_2!447 lt!6680) lt!6678))))))

(declare-fun b!22036 () Bool)

(declare-fun e!14316 () ListLongMap!545)

(assert (=> b!22036 (= e!14316 call!1523)))

(declare-fun b!22037 () Bool)

(declare-fun e!14310 () Bool)

(assert (=> b!22037 (= e!14310 (validKeyInArray!0 (select (arr!580 (_keys!3140 (ite c!2483 (_2!447 lt!6680) lt!6678))) #b00000000000000000000000000000000)))))

(declare-fun bm!1521 () Bool)

(declare-fun call!1526 () ListLongMap!545)

(declare-fun call!1521 () ListLongMap!545)

(assert (=> bm!1521 (= call!1526 call!1521)))

(declare-fun b!22038 () Bool)

(declare-fun e!14307 () Bool)

(declare-fun e!14313 () Bool)

(assert (=> b!22038 (= e!14307 e!14313)))

(declare-fun res!14035 () Bool)

(assert (=> b!22038 (=> (not res!14035) (not e!14313))))

(assert (=> b!22038 (= res!14035 (contains!215 lt!7213 (select (arr!580 (_keys!3140 (ite c!2483 (_2!447 lt!6680) lt!6678))) #b00000000000000000000000000000000)))))

(assert (=> b!22038 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!673 (_keys!3140 (ite c!2483 (_2!447 lt!6680) lt!6678)))))))

(declare-fun b!22039 () Bool)

(declare-fun e!14308 () Bool)

(assert (=> b!22039 (= e!14308 (= (apply!28 lt!7213 #b0000000000000000000000000000000000000000000000000000000000000000) (zeroValue!1646 (ite c!2483 (_2!447 lt!6680) lt!6678))))))

(declare-fun b!22040 () Bool)

(declare-fun e!14311 () ListLongMap!545)

(assert (=> b!22040 (= e!14311 call!1523)))

(declare-fun e!14312 () ListLongMap!545)

(declare-fun b!22041 () Bool)

(assert (=> b!22041 (= e!14312 (+!42 call!1525 (tuple2!891 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!1646 (ite c!2483 (_2!447 lt!6680) lt!6678)))))))

(declare-fun b!22042 () Bool)

(declare-fun e!14305 () Bool)

(assert (=> b!22042 (= e!14305 (validKeyInArray!0 (select (arr!580 (_keys!3140 (ite c!2483 (_2!447 lt!6680) lt!6678))) #b00000000000000000000000000000000)))))

(declare-fun b!22043 () Bool)

(declare-fun res!14031 () Bool)

(declare-fun e!14306 () Bool)

(assert (=> b!22043 (=> (not res!14031) (not e!14306))))

(assert (=> b!22043 (= res!14031 e!14307)))

(declare-fun res!14037 () Bool)

(assert (=> b!22043 (=> res!14037 e!14307)))

(assert (=> b!22043 (= res!14037 (not e!14305))))

(declare-fun res!14034 () Bool)

(assert (=> b!22043 (=> (not res!14034) (not e!14305))))

(assert (=> b!22043 (= res!14034 (bvslt #b00000000000000000000000000000000 (size!673 (_keys!3140 (ite c!2483 (_2!447 lt!6680) lt!6678)))))))

(declare-fun b!22044 () Bool)

(assert (=> b!22044 (= e!14312 e!14316)))

(declare-fun c!2645 () Bool)

(assert (=> b!22044 (= c!2645 (and (not (= (bvand (extraKeys!1622 (ite c!2483 (_2!447 lt!6680) lt!6678)) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand (extraKeys!1622 (ite c!2483 (_2!447 lt!6680) lt!6678)) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun d!3837 () Bool)

(assert (=> d!3837 e!14306))

(declare-fun res!14030 () Bool)

(assert (=> d!3837 (=> (not res!14030) (not e!14306))))

(assert (=> d!3837 (= res!14030 (or (bvsge #b00000000000000000000000000000000 (size!673 (_keys!3140 (ite c!2483 (_2!447 lt!6680) lt!6678)))) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!673 (_keys!3140 (ite c!2483 (_2!447 lt!6680) lt!6678)))))))))

(declare-fun lt!7217 () ListLongMap!545)

(assert (=> d!3837 (= lt!7213 lt!7217)))

(declare-fun lt!7231 () Unit!454)

(declare-fun e!14315 () Unit!454)

(assert (=> d!3837 (= lt!7231 e!14315)))

(declare-fun c!2643 () Bool)

(assert (=> d!3837 (= c!2643 e!14310)))

(declare-fun res!14032 () Bool)

(assert (=> d!3837 (=> (not res!14032) (not e!14310))))

(assert (=> d!3837 (= res!14032 (bvslt #b00000000000000000000000000000000 (size!673 (_keys!3140 (ite c!2483 (_2!447 lt!6680) lt!6678)))))))

(assert (=> d!3837 (= lt!7217 e!14312)))

(declare-fun c!2642 () Bool)

(assert (=> d!3837 (= c!2642 (and (not (= (bvand (extraKeys!1622 (ite c!2483 (_2!447 lt!6680) lt!6678)) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (extraKeys!1622 (ite c!2483 (_2!447 lt!6680) lt!6678)) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!3837 (validMask!0 (mask!4692 (ite c!2483 (_2!447 lt!6680) lt!6678)))))

(assert (=> d!3837 (= (getCurrentListMap!117 (_keys!3140 (ite c!2483 (_2!447 lt!6680) lt!6678)) (ite c!2559 (_values!1708 (ite c!2483 (_2!447 lt!6680) lt!6678)) lt!6937) (mask!4692 (ite c!2483 (_2!447 lt!6680) lt!6678)) (extraKeys!1622 (ite c!2483 (_2!447 lt!6680) lt!6678)) (zeroValue!1646 (ite c!2483 (_2!447 lt!6680) lt!6678)) (minValue!1646 (ite c!2483 (_2!447 lt!6680) lt!6678)) #b00000000000000000000000000000000 (defaultEntry!1719 (ite c!2483 (_2!447 lt!6680) lt!6678))) lt!7213)))

(declare-fun b!22045 () Bool)

(assert (=> b!22045 (= e!14309 e!14308)))

(declare-fun res!14029 () Bool)

(assert (=> b!22045 (= res!14029 call!1522)))

(assert (=> b!22045 (=> (not res!14029) (not e!14308))))

(declare-fun b!22046 () Bool)

(declare-fun Unit!476 () Unit!454)

(assert (=> b!22046 (= e!14315 Unit!476)))

(declare-fun bm!1522 () Bool)

(declare-fun call!1524 () ListLongMap!545)

(assert (=> bm!1522 (= call!1525 (+!42 (ite c!2642 call!1524 (ite c!2645 call!1521 call!1526)) (ite (or c!2642 c!2645) (tuple2!891 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!1646 (ite c!2483 (_2!447 lt!6680) lt!6678))) (tuple2!891 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!1646 (ite c!2483 (_2!447 lt!6680) lt!6678))))))))

(declare-fun b!22047 () Bool)

(declare-fun e!14317 () Bool)

(assert (=> b!22047 (= e!14317 (not call!1527))))

(declare-fun b!22048 () Bool)

(declare-fun res!14033 () Bool)

(assert (=> b!22048 (=> (not res!14033) (not e!14306))))

(assert (=> b!22048 (= res!14033 e!14309)))

(declare-fun c!2641 () Bool)

(assert (=> b!22048 (= c!2641 (not (= (bvand (extraKeys!1622 (ite c!2483 (_2!447 lt!6680) lt!6678)) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!22049 () Bool)

(assert (=> b!22049 (= e!14311 call!1526)))

(declare-fun bm!1523 () Bool)

(assert (=> bm!1523 (= call!1524 (getCurrentListMapNoExtraKeys!13 (_keys!3140 (ite c!2483 (_2!447 lt!6680) lt!6678)) (ite c!2559 (_values!1708 (ite c!2483 (_2!447 lt!6680) lt!6678)) lt!6937) (mask!4692 (ite c!2483 (_2!447 lt!6680) lt!6678)) (extraKeys!1622 (ite c!2483 (_2!447 lt!6680) lt!6678)) (zeroValue!1646 (ite c!2483 (_2!447 lt!6680) lt!6678)) (minValue!1646 (ite c!2483 (_2!447 lt!6680) lt!6678)) #b00000000000000000000000000000000 (defaultEntry!1719 (ite c!2483 (_2!447 lt!6680) lt!6678))))))

(declare-fun b!22050 () Bool)

(assert (=> b!22050 (= e!14317 e!14314)))

(declare-fun res!14036 () Bool)

(assert (=> b!22050 (= res!14036 call!1527)))

(assert (=> b!22050 (=> (not res!14036) (not e!14314))))

(declare-fun b!22051 () Bool)

(declare-fun c!2640 () Bool)

(assert (=> b!22051 (= c!2640 (and (not (= (bvand (extraKeys!1622 (ite c!2483 (_2!447 lt!6680) lt!6678)) #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand (extraKeys!1622 (ite c!2483 (_2!447 lt!6680) lt!6678)) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!22051 (= e!14316 e!14311)))

(declare-fun b!22052 () Bool)

(assert (=> b!22052 (= e!14306 e!14317)))

(declare-fun c!2644 () Bool)

(assert (=> b!22052 (= c!2644 (not (= (bvand (extraKeys!1622 (ite c!2483 (_2!447 lt!6680) lt!6678)) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!22053 () Bool)

(assert (=> b!22053 (= e!14313 (= (apply!28 lt!7213 (select (arr!580 (_keys!3140 (ite c!2483 (_2!447 lt!6680) lt!6678))) #b00000000000000000000000000000000)) (get!377 (select (arr!579 (ite c!2559 (_values!1708 (ite c!2483 (_2!447 lt!6680) lt!6678)) lt!6937)) #b00000000000000000000000000000000) (dynLambda!141 (defaultEntry!1719 (ite c!2483 (_2!447 lt!6680) lt!6678)) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!22053 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!672 (ite c!2559 (_values!1708 (ite c!2483 (_2!447 lt!6680) lt!6678)) lt!6937))))))

(assert (=> b!22053 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!673 (_keys!3140 (ite c!2483 (_2!447 lt!6680) lt!6678)))))))

(declare-fun b!22054 () Bool)

(declare-fun lt!7230 () Unit!454)

(assert (=> b!22054 (= e!14315 lt!7230)))

(declare-fun lt!7223 () ListLongMap!545)

(assert (=> b!22054 (= lt!7223 (getCurrentListMapNoExtraKeys!13 (_keys!3140 (ite c!2483 (_2!447 lt!6680) lt!6678)) (ite c!2559 (_values!1708 (ite c!2483 (_2!447 lt!6680) lt!6678)) lt!6937) (mask!4692 (ite c!2483 (_2!447 lt!6680) lt!6678)) (extraKeys!1622 (ite c!2483 (_2!447 lt!6680) lt!6678)) (zeroValue!1646 (ite c!2483 (_2!447 lt!6680) lt!6678)) (minValue!1646 (ite c!2483 (_2!447 lt!6680) lt!6678)) #b00000000000000000000000000000000 (defaultEntry!1719 (ite c!2483 (_2!447 lt!6680) lt!6678))))))

(declare-fun lt!7215 () (_ BitVec 64))

(assert (=> b!22054 (= lt!7215 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!7218 () (_ BitVec 64))

(assert (=> b!22054 (= lt!7218 (select (arr!580 (_keys!3140 (ite c!2483 (_2!447 lt!6680) lt!6678))) #b00000000000000000000000000000000))))

(declare-fun lt!7227 () Unit!454)

(assert (=> b!22054 (= lt!7227 (addStillContains!13 lt!7223 lt!7215 (zeroValue!1646 (ite c!2483 (_2!447 lt!6680) lt!6678)) lt!7218))))

(assert (=> b!22054 (contains!215 (+!42 lt!7223 (tuple2!891 lt!7215 (zeroValue!1646 (ite c!2483 (_2!447 lt!6680) lt!6678)))) lt!7218)))

(declare-fun lt!7220 () Unit!454)

(assert (=> b!22054 (= lt!7220 lt!7227)))

(declare-fun lt!7222 () ListLongMap!545)

(assert (=> b!22054 (= lt!7222 (getCurrentListMapNoExtraKeys!13 (_keys!3140 (ite c!2483 (_2!447 lt!6680) lt!6678)) (ite c!2559 (_values!1708 (ite c!2483 (_2!447 lt!6680) lt!6678)) lt!6937) (mask!4692 (ite c!2483 (_2!447 lt!6680) lt!6678)) (extraKeys!1622 (ite c!2483 (_2!447 lt!6680) lt!6678)) (zeroValue!1646 (ite c!2483 (_2!447 lt!6680) lt!6678)) (minValue!1646 (ite c!2483 (_2!447 lt!6680) lt!6678)) #b00000000000000000000000000000000 (defaultEntry!1719 (ite c!2483 (_2!447 lt!6680) lt!6678))))))

(declare-fun lt!7219 () (_ BitVec 64))

(assert (=> b!22054 (= lt!7219 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!7214 () (_ BitVec 64))

(assert (=> b!22054 (= lt!7214 (select (arr!580 (_keys!3140 (ite c!2483 (_2!447 lt!6680) lt!6678))) #b00000000000000000000000000000000))))

(declare-fun lt!7221 () Unit!454)

(assert (=> b!22054 (= lt!7221 (addApplyDifferent!13 lt!7222 lt!7219 (minValue!1646 (ite c!2483 (_2!447 lt!6680) lt!6678)) lt!7214))))

(assert (=> b!22054 (= (apply!28 (+!42 lt!7222 (tuple2!891 lt!7219 (minValue!1646 (ite c!2483 (_2!447 lt!6680) lt!6678)))) lt!7214) (apply!28 lt!7222 lt!7214))))

(declare-fun lt!7224 () Unit!454)

(assert (=> b!22054 (= lt!7224 lt!7221)))

(declare-fun lt!7225 () ListLongMap!545)

(assert (=> b!22054 (= lt!7225 (getCurrentListMapNoExtraKeys!13 (_keys!3140 (ite c!2483 (_2!447 lt!6680) lt!6678)) (ite c!2559 (_values!1708 (ite c!2483 (_2!447 lt!6680) lt!6678)) lt!6937) (mask!4692 (ite c!2483 (_2!447 lt!6680) lt!6678)) (extraKeys!1622 (ite c!2483 (_2!447 lt!6680) lt!6678)) (zeroValue!1646 (ite c!2483 (_2!447 lt!6680) lt!6678)) (minValue!1646 (ite c!2483 (_2!447 lt!6680) lt!6678)) #b00000000000000000000000000000000 (defaultEntry!1719 (ite c!2483 (_2!447 lt!6680) lt!6678))))))

(declare-fun lt!7232 () (_ BitVec 64))

(assert (=> b!22054 (= lt!7232 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!7228 () (_ BitVec 64))

(assert (=> b!22054 (= lt!7228 (select (arr!580 (_keys!3140 (ite c!2483 (_2!447 lt!6680) lt!6678))) #b00000000000000000000000000000000))))

(declare-fun lt!7211 () Unit!454)

(assert (=> b!22054 (= lt!7211 (addApplyDifferent!13 lt!7225 lt!7232 (zeroValue!1646 (ite c!2483 (_2!447 lt!6680) lt!6678)) lt!7228))))

(assert (=> b!22054 (= (apply!28 (+!42 lt!7225 (tuple2!891 lt!7232 (zeroValue!1646 (ite c!2483 (_2!447 lt!6680) lt!6678)))) lt!7228) (apply!28 lt!7225 lt!7228))))

(declare-fun lt!7226 () Unit!454)

(assert (=> b!22054 (= lt!7226 lt!7211)))

(declare-fun lt!7212 () ListLongMap!545)

(assert (=> b!22054 (= lt!7212 (getCurrentListMapNoExtraKeys!13 (_keys!3140 (ite c!2483 (_2!447 lt!6680) lt!6678)) (ite c!2559 (_values!1708 (ite c!2483 (_2!447 lt!6680) lt!6678)) lt!6937) (mask!4692 (ite c!2483 (_2!447 lt!6680) lt!6678)) (extraKeys!1622 (ite c!2483 (_2!447 lt!6680) lt!6678)) (zeroValue!1646 (ite c!2483 (_2!447 lt!6680) lt!6678)) (minValue!1646 (ite c!2483 (_2!447 lt!6680) lt!6678)) #b00000000000000000000000000000000 (defaultEntry!1719 (ite c!2483 (_2!447 lt!6680) lt!6678))))))

(declare-fun lt!7229 () (_ BitVec 64))

(assert (=> b!22054 (= lt!7229 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!7216 () (_ BitVec 64))

(assert (=> b!22054 (= lt!7216 (select (arr!580 (_keys!3140 (ite c!2483 (_2!447 lt!6680) lt!6678))) #b00000000000000000000000000000000))))

(assert (=> b!22054 (= lt!7230 (addApplyDifferent!13 lt!7212 lt!7229 (minValue!1646 (ite c!2483 (_2!447 lt!6680) lt!6678)) lt!7216))))

(assert (=> b!22054 (= (apply!28 (+!42 lt!7212 (tuple2!891 lt!7229 (minValue!1646 (ite c!2483 (_2!447 lt!6680) lt!6678)))) lt!7216) (apply!28 lt!7212 lt!7216))))

(declare-fun bm!1524 () Bool)

(assert (=> bm!1524 (= call!1521 call!1524)))

(assert (= (and d!3837 c!2642) b!22041))

(assert (= (and d!3837 (not c!2642)) b!22044))

(assert (= (and b!22044 c!2645) b!22036))

(assert (= (and b!22044 (not c!2645)) b!22051))

(assert (= (and b!22051 c!2640) b!22040))

(assert (= (and b!22051 (not c!2640)) b!22049))

(assert (= (or b!22040 b!22049) bm!1521))

(assert (= (or b!22036 bm!1521) bm!1524))

(assert (= (or b!22036 b!22040) bm!1519))

(assert (= (or b!22041 bm!1524) bm!1523))

(assert (= (or b!22041 bm!1519) bm!1522))

(assert (= (and d!3837 res!14032) b!22037))

(assert (= (and d!3837 c!2643) b!22054))

(assert (= (and d!3837 (not c!2643)) b!22046))

(assert (= (and d!3837 res!14030) b!22043))

(assert (= (and b!22043 res!14034) b!22042))

(assert (= (and b!22043 (not res!14037)) b!22038))

(assert (= (and b!22038 res!14035) b!22053))

(assert (= (and b!22043 res!14031) b!22048))

(assert (= (and b!22048 c!2641) b!22045))

(assert (= (and b!22048 (not c!2641)) b!22034))

(assert (= (and b!22045 res!14029) b!22039))

(assert (= (or b!22045 b!22034) bm!1520))

(assert (= (and b!22048 res!14033) b!22052))

(assert (= (and b!22052 c!2644) b!22050))

(assert (= (and b!22052 (not c!2644)) b!22047))

(assert (= (and b!22050 res!14036) b!22035))

(assert (= (or b!22050 b!22047) bm!1518))

(declare-fun b_lambda!1543 () Bool)

(assert (=> (not b_lambda!1543) (not b!22053)))

(declare-fun tb!651 () Bool)

(declare-fun t!3225 () Bool)

(assert (=> (and b!21424 (= (defaultEntry!1719 (v!1573 (underlying!104 thiss!938))) (defaultEntry!1719 (ite c!2483 (_2!447 lt!6680) lt!6678))) t!3225) tb!651))

(declare-fun result!1079 () Bool)

(assert (=> tb!651 (= result!1079 tp_is_empty!999)))

(assert (=> b!22053 t!3225))

(declare-fun b_and!1441 () Bool)

(assert (= b_and!1439 (and (=> t!3225 result!1079) b_and!1441)))

(declare-fun m!15632 () Bool)

(assert (=> bm!1522 m!15632))

(declare-fun m!15634 () Bool)

(assert (=> bm!1520 m!15634))

(declare-fun m!15636 () Bool)

(assert (=> b!22035 m!15636))

(assert (=> b!22042 m!15253))

(assert (=> b!22042 m!15253))

(declare-fun m!15638 () Bool)

(assert (=> b!22042 m!15638))

(declare-fun m!15640 () Bool)

(assert (=> b!22041 m!15640))

(declare-fun m!15642 () Bool)

(assert (=> b!22039 m!15642))

(declare-fun m!15644 () Bool)

(assert (=> bm!1518 m!15644))

(declare-fun m!15646 () Bool)

(assert (=> bm!1523 m!15646))

(assert (=> b!22037 m!15253))

(assert (=> b!22037 m!15253))

(assert (=> b!22037 m!15638))

(assert (=> d!3837 m!15303))

(declare-fun m!15648 () Bool)

(assert (=> b!22054 m!15648))

(declare-fun m!15650 () Bool)

(assert (=> b!22054 m!15650))

(assert (=> b!22054 m!15253))

(declare-fun m!15652 () Bool)

(assert (=> b!22054 m!15652))

(assert (=> b!22054 m!15648))

(assert (=> b!22054 m!15646))

(declare-fun m!15654 () Bool)

(assert (=> b!22054 m!15654))

(declare-fun m!15656 () Bool)

(assert (=> b!22054 m!15656))

(declare-fun m!15658 () Bool)

(assert (=> b!22054 m!15658))

(declare-fun m!15660 () Bool)

(assert (=> b!22054 m!15660))

(assert (=> b!22054 m!15652))

(declare-fun m!15662 () Bool)

(assert (=> b!22054 m!15662))

(declare-fun m!15664 () Bool)

(assert (=> b!22054 m!15664))

(declare-fun m!15666 () Bool)

(assert (=> b!22054 m!15666))

(declare-fun m!15668 () Bool)

(assert (=> b!22054 m!15668))

(assert (=> b!22054 m!15664))

(declare-fun m!15670 () Bool)

(assert (=> b!22054 m!15670))

(declare-fun m!15672 () Bool)

(assert (=> b!22054 m!15672))

(assert (=> b!22054 m!15666))

(declare-fun m!15674 () Bool)

(assert (=> b!22054 m!15674))

(declare-fun m!15676 () Bool)

(assert (=> b!22054 m!15676))

(assert (=> b!22053 m!15253))

(assert (=> b!22053 m!15253))

(declare-fun m!15678 () Bool)

(assert (=> b!22053 m!15678))

(declare-fun m!15680 () Bool)

(assert (=> b!22053 m!15680))

(declare-fun m!15682 () Bool)

(assert (=> b!22053 m!15682))

(declare-fun m!15684 () Bool)

(assert (=> b!22053 m!15684))

(assert (=> b!22053 m!15680))

(assert (=> b!22053 m!15682))

(assert (=> b!22038 m!15253))

(assert (=> b!22038 m!15253))

(declare-fun m!15686 () Bool)

(assert (=> b!22038 m!15686))

(assert (=> bm!1449 d!3837))

(declare-fun d!3839 () Bool)

(declare-fun res!14038 () Bool)

(declare-fun e!14318 () Bool)

(assert (=> d!3839 (=> (not res!14038) (not e!14318))))

(assert (=> d!3839 (= res!14038 (simpleValid!18 (v!1573 (underlying!104 thiss!938))))))

(assert (=> d!3839 (= (valid!98 (v!1573 (underlying!104 thiss!938))) e!14318)))

(declare-fun b!22055 () Bool)

(declare-fun res!14039 () Bool)

(assert (=> b!22055 (=> (not res!14039) (not e!14318))))

(assert (=> b!22055 (= res!14039 (= (arrayCountValidKeys!0 (_keys!3140 (v!1573 (underlying!104 thiss!938))) #b00000000000000000000000000000000 (size!673 (_keys!3140 (v!1573 (underlying!104 thiss!938))))) (_size!134 (v!1573 (underlying!104 thiss!938)))))))

(declare-fun b!22056 () Bool)

(declare-fun res!14040 () Bool)

(assert (=> b!22056 (=> (not res!14040) (not e!14318))))

(assert (=> b!22056 (= res!14040 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!3140 (v!1573 (underlying!104 thiss!938))) (mask!4692 (v!1573 (underlying!104 thiss!938)))))))

(declare-fun b!22057 () Bool)

(assert (=> b!22057 (= e!14318 (arrayNoDuplicates!0 (_keys!3140 (v!1573 (underlying!104 thiss!938))) #b00000000000000000000000000000000 Nil!557))))

(assert (= (and d!3839 res!14038) b!22055))

(assert (= (and b!22055 res!14039) b!22056))

(assert (= (and b!22056 res!14040) b!22057))

(declare-fun m!15688 () Bool)

(assert (=> d!3839 m!15688))

(declare-fun m!15690 () Bool)

(assert (=> b!22055 m!15690))

(declare-fun m!15692 () Bool)

(assert (=> b!22056 m!15692))

(declare-fun m!15694 () Bool)

(assert (=> b!22057 m!15694))

(assert (=> d!3741 d!3839))

(declare-fun d!3841 () Bool)

(declare-fun e!14319 () Bool)

(assert (=> d!3841 e!14319))

(declare-fun res!14041 () Bool)

(assert (=> d!3841 (=> res!14041 e!14319)))

(declare-fun lt!7233 () Bool)

(assert (=> d!3841 (= res!14041 (not lt!7233))))

(declare-fun lt!7234 () Bool)

(assert (=> d!3841 (= lt!7233 lt!7234)))

(declare-fun lt!7235 () Unit!454)

(declare-fun e!14320 () Unit!454)

(assert (=> d!3841 (= lt!7235 e!14320)))

(declare-fun c!2646 () Bool)

(assert (=> d!3841 (= c!2646 lt!7234)))

(assert (=> d!3841 (= lt!7234 (containsKey!24 (toList!288 lt!6826) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!3841 (= (contains!215 lt!6826 #b1000000000000000000000000000000000000000000000000000000000000000) lt!7233)))

(declare-fun b!22058 () Bool)

(declare-fun lt!7236 () Unit!454)

(assert (=> b!22058 (= e!14320 lt!7236)))

(assert (=> b!22058 (= lt!7236 (lemmaContainsKeyImpliesGetValueByKeyDefined!21 (toList!288 lt!6826) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!22058 (isDefined!22 (getValueByKey!60 (toList!288 lt!6826) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!22059 () Bool)

(declare-fun Unit!477 () Unit!454)

(assert (=> b!22059 (= e!14320 Unit!477)))

(declare-fun b!22060 () Bool)

(assert (=> b!22060 (= e!14319 (isDefined!22 (getValueByKey!60 (toList!288 lt!6826) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!3841 c!2646) b!22058))

(assert (= (and d!3841 (not c!2646)) b!22059))

(assert (= (and d!3841 (not res!14041)) b!22060))

(declare-fun m!15696 () Bool)

(assert (=> d!3841 m!15696))

(declare-fun m!15698 () Bool)

(assert (=> b!22058 m!15698))

(assert (=> b!22058 m!15566))

(assert (=> b!22058 m!15566))

(declare-fun m!15700 () Bool)

(assert (=> b!22058 m!15700))

(assert (=> b!22060 m!15566))

(assert (=> b!22060 m!15566))

(assert (=> b!22060 m!15700))

(assert (=> bm!1366 d!3841))

(declare-fun b!22061 () Bool)

(declare-fun res!14050 () Bool)

(declare-fun e!14322 () Bool)

(assert (=> b!22061 (=> (not res!14050) (not e!14322))))

(declare-fun lt!7251 () SeekEntryResult!56)

(assert (=> b!22061 (= res!14050 (= (select (arr!580 (_keys!3140 (ite c!2483 (_2!447 lt!6680) lt!6678))) (index!2344 lt!7251)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!7261 () tuple2!888)

(declare-fun b!22062 () Bool)

(declare-fun e!14325 () Bool)

(assert (=> b!22062 (= e!14325 (= (map!398 (_2!447 lt!7261)) (+!42 (map!398 (ite c!2483 (_2!447 lt!6680) lt!6678)) (tuple2!891 (ite c!2483 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!2482 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000)) (ite c!2483 (minValue!1646 (v!1573 (underlying!104 thiss!938))) (ite c!2482 (zeroValue!1646 (v!1573 (underlying!104 thiss!938))) (minValue!1646 (v!1573 (underlying!104 thiss!938)))))))))))

(declare-fun b!22063 () Bool)

(declare-fun e!14323 () Bool)

(declare-fun e!14321 () Bool)

(assert (=> b!22063 (= e!14323 e!14321)))

(declare-fun res!14046 () Bool)

(declare-fun call!1530 () Bool)

(assert (=> b!22063 (= res!14046 call!1530)))

(assert (=> b!22063 (=> (not res!14046) (not e!14321))))

(declare-fun b!22064 () Bool)

(declare-fun call!1529 () Bool)

(assert (=> b!22064 (= e!14321 (not call!1529))))

(declare-fun b!22065 () Bool)

(assert (=> b!22065 (= e!14322 (not call!1529))))

(declare-fun b!22066 () Bool)

(assert (=> b!22066 (= e!14323 ((_ is Undefined!56) lt!7251))))

(declare-fun b!22067 () Bool)

(declare-fun e!14328 () Unit!454)

(declare-fun lt!7252 () Unit!454)

(assert (=> b!22067 (= e!14328 lt!7252)))

(assert (=> b!22067 (= lt!7252 (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!7 (_keys!3140 (ite c!2483 (_2!447 lt!6680) lt!6678)) (_values!1708 (ite c!2483 (_2!447 lt!6680) lt!6678)) (mask!4692 (ite c!2483 (_2!447 lt!6680) lt!6678)) (extraKeys!1622 (ite c!2483 (_2!447 lt!6680) lt!6678)) (zeroValue!1646 (ite c!2483 (_2!447 lt!6680) lt!6678)) (minValue!1646 (ite c!2483 (_2!447 lt!6680) lt!6678)) (ite c!2483 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!2482 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000)) (defaultEntry!1719 (ite c!2483 (_2!447 lt!6680) lt!6678))))))

(declare-fun call!1528 () SeekEntryResult!56)

(assert (=> b!22067 (= lt!7251 call!1528)))

(declare-fun c!2648 () Bool)

(assert (=> b!22067 (= c!2648 ((_ is MissingZero!56) lt!7251))))

(declare-fun e!14326 () Bool)

(assert (=> b!22067 e!14326))

(declare-fun e!14324 () Bool)

(declare-fun b!22068 () Bool)

(declare-fun lt!7264 () SeekEntryResult!56)

(assert (=> b!22068 (= e!14324 (= (select (arr!580 (_keys!3140 (ite c!2483 (_2!447 lt!6680) lt!6678))) (index!2345 lt!7264)) (ite c!2483 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!2482 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!22070 () Bool)

(declare-fun res!14047 () Bool)

(assert (=> b!22070 (=> (not res!14047) (not e!14325))))

(assert (=> b!22070 (= res!14047 (contains!215 (map!398 (_2!447 lt!7261)) (ite c!2483 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!2482 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!22071 () Bool)

(declare-fun res!14045 () Bool)

(declare-fun call!1531 () Bool)

(assert (=> b!22071 (= res!14045 call!1531)))

(assert (=> b!22071 (=> (not res!14045) (not e!14324))))

(declare-fun bm!1525 () Bool)

(assert (=> bm!1525 (= call!1530 call!1531)))

(declare-fun bm!1526 () Bool)

(declare-fun c!2650 () Bool)

(assert (=> bm!1526 (= call!1531 (inRange!0 (ite c!2650 (index!2345 lt!7264) (ite c!2648 (index!2344 lt!7251) (index!2347 lt!7251))) (mask!4692 (ite c!2483 (_2!447 lt!6680) lt!6678))))))

(declare-fun res!14044 () Bool)

(declare-fun b!22072 () Bool)

(assert (=> b!22072 (= res!14044 (= (select (arr!580 (_keys!3140 (ite c!2483 (_2!447 lt!6680) lt!6678))) (index!2347 lt!7251)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!22072 (=> (not res!14044) (not e!14321))))

(declare-fun b!22073 () Bool)

(declare-fun e!14327 () Unit!454)

(declare-fun Unit!478 () Unit!454)

(assert (=> b!22073 (= e!14327 Unit!478)))

(declare-fun lt!7266 () Unit!454)

(assert (=> b!22073 (= lt!7266 (lemmaArrayContainsKeyThenInListMap!2 (_keys!3140 (ite c!2483 (_2!447 lt!6680) lt!6678)) (_values!1708 (ite c!2483 (_2!447 lt!6680) lt!6678)) (mask!4692 (ite c!2483 (_2!447 lt!6680) lt!6678)) (extraKeys!1622 (ite c!2483 (_2!447 lt!6680) lt!6678)) (zeroValue!1646 (ite c!2483 (_2!447 lt!6680) lt!6678)) (minValue!1646 (ite c!2483 (_2!447 lt!6680) lt!6678)) (ite c!2483 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!2482 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000)) #b00000000000000000000000000000000 (defaultEntry!1719 (ite c!2483 (_2!447 lt!6680) lt!6678))))))

(assert (=> b!22073 (contains!215 (getCurrentListMap!117 (_keys!3140 (ite c!2483 (_2!447 lt!6680) lt!6678)) (_values!1708 (ite c!2483 (_2!447 lt!6680) lt!6678)) (mask!4692 (ite c!2483 (_2!447 lt!6680) lt!6678)) (extraKeys!1622 (ite c!2483 (_2!447 lt!6680) lt!6678)) (zeroValue!1646 (ite c!2483 (_2!447 lt!6680) lt!6678)) (minValue!1646 (ite c!2483 (_2!447 lt!6680) lt!6678)) #b00000000000000000000000000000000 (defaultEntry!1719 (ite c!2483 (_2!447 lt!6680) lt!6678))) (ite c!2483 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!2482 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun lt!7245 () Unit!454)

(assert (=> b!22073 (= lt!7245 lt!7266)))

(assert (=> b!22073 false))

(declare-fun b!22074 () Bool)

(declare-fun c!2649 () Bool)

(assert (=> b!22074 (= c!2649 ((_ is MissingVacant!56) lt!7251))))

(assert (=> b!22074 (= e!14326 e!14323)))

(declare-fun bm!1527 () Bool)

(assert (=> bm!1527 (= call!1529 (arrayContainsKey!0 (_keys!3140 (ite c!2483 (_2!447 lt!6680) lt!6678)) (ite c!2483 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!2482 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000)) #b00000000000000000000000000000000))))

(declare-fun d!3843 () Bool)

(assert (=> d!3843 e!14325))

(declare-fun res!14043 () Bool)

(assert (=> d!3843 (=> (not res!14043) (not e!14325))))

(assert (=> d!3843 (= res!14043 (_1!447 lt!7261))))

(assert (=> d!3843 (= lt!7261 (tuple2!889 true (LongMapFixedSize!187 (defaultEntry!1719 (ite c!2483 (_2!447 lt!6680) lt!6678)) (mask!4692 (ite c!2483 (_2!447 lt!6680) lt!6678)) (extraKeys!1622 (ite c!2483 (_2!447 lt!6680) lt!6678)) (zeroValue!1646 (ite c!2483 (_2!447 lt!6680) lt!6678)) (minValue!1646 (ite c!2483 (_2!447 lt!6680) lt!6678)) (bvadd (_size!134 (ite c!2483 (_2!447 lt!6680) lt!6678)) #b00000000000000000000000000000001) (array!1224 (store (arr!580 (_keys!3140 (ite c!2483 (_2!447 lt!6680) lt!6678))) (ite c!2562 (index!2347 lt!6934) (index!2344 lt!6934)) (ite c!2483 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!2482 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000))) (size!673 (_keys!3140 (ite c!2483 (_2!447 lt!6680) lt!6678)))) (array!1222 (store (arr!579 (_values!1708 (ite c!2483 (_2!447 lt!6680) lt!6678))) (ite c!2562 (index!2347 lt!6934) (index!2344 lt!6934)) (ValueCellFull!300 (ite c!2483 (minValue!1646 (v!1573 (underlying!104 thiss!938))) (ite c!2482 (zeroValue!1646 (v!1573 (underlying!104 thiss!938))) (minValue!1646 (v!1573 (underlying!104 thiss!938))))))) (size!672 (_values!1708 (ite c!2483 (_2!447 lt!6680) lt!6678)))) (_vacant!134 (ite c!2483 (_2!447 lt!6680) lt!6678)))))))

(declare-fun lt!7256 () Unit!454)

(declare-fun lt!7238 () Unit!454)

(assert (=> d!3843 (= lt!7256 lt!7238)))

(declare-fun lt!7237 () array!1223)

(declare-fun lt!7249 () array!1221)

(assert (=> d!3843 (contains!215 (getCurrentListMap!117 lt!7237 lt!7249 (mask!4692 (ite c!2483 (_2!447 lt!6680) lt!6678)) (extraKeys!1622 (ite c!2483 (_2!447 lt!6680) lt!6678)) (zeroValue!1646 (ite c!2483 (_2!447 lt!6680) lt!6678)) (minValue!1646 (ite c!2483 (_2!447 lt!6680) lt!6678)) #b00000000000000000000000000000000 (defaultEntry!1719 (ite c!2483 (_2!447 lt!6680) lt!6678))) (select (store (arr!580 (_keys!3140 (ite c!2483 (_2!447 lt!6680) lt!6678))) (ite c!2562 (index!2347 lt!6934) (index!2344 lt!6934)) (ite c!2483 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!2482 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000))) (ite c!2562 (index!2347 lt!6934) (index!2344 lt!6934))))))

(assert (=> d!3843 (= lt!7238 (lemmaValidKeyInArrayIsInListMap!7 lt!7237 lt!7249 (mask!4692 (ite c!2483 (_2!447 lt!6680) lt!6678)) (extraKeys!1622 (ite c!2483 (_2!447 lt!6680) lt!6678)) (zeroValue!1646 (ite c!2483 (_2!447 lt!6680) lt!6678)) (minValue!1646 (ite c!2483 (_2!447 lt!6680) lt!6678)) (ite c!2562 (index!2347 lt!6934) (index!2344 lt!6934)) (defaultEntry!1719 (ite c!2483 (_2!447 lt!6680) lt!6678))))))

(assert (=> d!3843 (= lt!7249 (array!1222 (store (arr!579 (_values!1708 (ite c!2483 (_2!447 lt!6680) lt!6678))) (ite c!2562 (index!2347 lt!6934) (index!2344 lt!6934)) (ValueCellFull!300 (ite c!2483 (minValue!1646 (v!1573 (underlying!104 thiss!938))) (ite c!2482 (zeroValue!1646 (v!1573 (underlying!104 thiss!938))) (minValue!1646 (v!1573 (underlying!104 thiss!938))))))) (size!672 (_values!1708 (ite c!2483 (_2!447 lt!6680) lt!6678)))))))

(assert (=> d!3843 (= lt!7237 (array!1224 (store (arr!580 (_keys!3140 (ite c!2483 (_2!447 lt!6680) lt!6678))) (ite c!2562 (index!2347 lt!6934) (index!2344 lt!6934)) (ite c!2483 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!2482 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000))) (size!673 (_keys!3140 (ite c!2483 (_2!447 lt!6680) lt!6678)))))))

(declare-fun lt!7244 () Unit!454)

(declare-fun lt!7260 () Unit!454)

(assert (=> d!3843 (= lt!7244 lt!7260)))

(declare-fun lt!7262 () array!1223)

(assert (=> d!3843 (= (arrayCountValidKeys!0 lt!7262 (ite c!2562 (index!2347 lt!6934) (index!2344 lt!6934)) (bvadd (ite c!2562 (index!2347 lt!6934) (index!2344 lt!6934)) #b00000000000000000000000000000001)) #b00000000000000000000000000000001)))

(assert (=> d!3843 (= lt!7260 (lemmaValidKeyAtIImpliesCountKeysIsOne!0 lt!7262 (ite c!2562 (index!2347 lt!6934) (index!2344 lt!6934))))))

(assert (=> d!3843 (= lt!7262 (array!1224 (store (arr!580 (_keys!3140 (ite c!2483 (_2!447 lt!6680) lt!6678))) (ite c!2562 (index!2347 lt!6934) (index!2344 lt!6934)) (ite c!2483 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!2482 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000))) (size!673 (_keys!3140 (ite c!2483 (_2!447 lt!6680) lt!6678)))))))

(declare-fun lt!7250 () Unit!454)

(declare-fun lt!7243 () Unit!454)

(assert (=> d!3843 (= lt!7250 lt!7243)))

(declare-fun lt!7247 () array!1223)

(assert (=> d!3843 (arrayContainsKey!0 lt!7247 (ite c!2483 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!2482 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000)) #b00000000000000000000000000000000)))

(assert (=> d!3843 (= lt!7243 (lemmaArrayContainsFromImpliesContainsFromZero!0 lt!7247 (ite c!2483 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!2482 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000)) (ite c!2562 (index!2347 lt!6934) (index!2344 lt!6934))))))

(assert (=> d!3843 (= lt!7247 (array!1224 (store (arr!580 (_keys!3140 (ite c!2483 (_2!447 lt!6680) lt!6678))) (ite c!2562 (index!2347 lt!6934) (index!2344 lt!6934)) (ite c!2483 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!2482 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000))) (size!673 (_keys!3140 (ite c!2483 (_2!447 lt!6680) lt!6678)))))))

(declare-fun lt!7254 () Unit!454)

(declare-fun lt!7265 () Unit!454)

(assert (=> d!3843 (= lt!7254 lt!7265)))

(assert (=> d!3843 (= (+!42 (getCurrentListMap!117 (_keys!3140 (ite c!2483 (_2!447 lt!6680) lt!6678)) (_values!1708 (ite c!2483 (_2!447 lt!6680) lt!6678)) (mask!4692 (ite c!2483 (_2!447 lt!6680) lt!6678)) (extraKeys!1622 (ite c!2483 (_2!447 lt!6680) lt!6678)) (zeroValue!1646 (ite c!2483 (_2!447 lt!6680) lt!6678)) (minValue!1646 (ite c!2483 (_2!447 lt!6680) lt!6678)) #b00000000000000000000000000000000 (defaultEntry!1719 (ite c!2483 (_2!447 lt!6680) lt!6678))) (tuple2!891 (ite c!2483 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!2482 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000)) (ite c!2483 (minValue!1646 (v!1573 (underlying!104 thiss!938))) (ite c!2482 (zeroValue!1646 (v!1573 (underlying!104 thiss!938))) (minValue!1646 (v!1573 (underlying!104 thiss!938))))))) (getCurrentListMap!117 (array!1224 (store (arr!580 (_keys!3140 (ite c!2483 (_2!447 lt!6680) lt!6678))) (ite c!2562 (index!2347 lt!6934) (index!2344 lt!6934)) (ite c!2483 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!2482 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000))) (size!673 (_keys!3140 (ite c!2483 (_2!447 lt!6680) lt!6678)))) (array!1222 (store (arr!579 (_values!1708 (ite c!2483 (_2!447 lt!6680) lt!6678))) (ite c!2562 (index!2347 lt!6934) (index!2344 lt!6934)) (ValueCellFull!300 (ite c!2483 (minValue!1646 (v!1573 (underlying!104 thiss!938))) (ite c!2482 (zeroValue!1646 (v!1573 (underlying!104 thiss!938))) (minValue!1646 (v!1573 (underlying!104 thiss!938))))))) (size!672 (_values!1708 (ite c!2483 (_2!447 lt!6680) lt!6678)))) (mask!4692 (ite c!2483 (_2!447 lt!6680) lt!6678)) (extraKeys!1622 (ite c!2483 (_2!447 lt!6680) lt!6678)) (zeroValue!1646 (ite c!2483 (_2!447 lt!6680) lt!6678)) (minValue!1646 (ite c!2483 (_2!447 lt!6680) lt!6678)) #b00000000000000000000000000000000 (defaultEntry!1719 (ite c!2483 (_2!447 lt!6680) lt!6678))))))

(assert (=> d!3843 (= lt!7265 (lemmaAddValidKeyToArrayThenAddPairToListMap!2 (_keys!3140 (ite c!2483 (_2!447 lt!6680) lt!6678)) (_values!1708 (ite c!2483 (_2!447 lt!6680) lt!6678)) (mask!4692 (ite c!2483 (_2!447 lt!6680) lt!6678)) (extraKeys!1622 (ite c!2483 (_2!447 lt!6680) lt!6678)) (zeroValue!1646 (ite c!2483 (_2!447 lt!6680) lt!6678)) (minValue!1646 (ite c!2483 (_2!447 lt!6680) lt!6678)) (ite c!2562 (index!2347 lt!6934) (index!2344 lt!6934)) (ite c!2483 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!2482 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000)) (ite c!2483 (minValue!1646 (v!1573 (underlying!104 thiss!938))) (ite c!2482 (zeroValue!1646 (v!1573 (underlying!104 thiss!938))) (minValue!1646 (v!1573 (underlying!104 thiss!938))))) (defaultEntry!1719 (ite c!2483 (_2!447 lt!6680) lt!6678))))))

(declare-fun lt!7240 () Unit!454)

(declare-fun lt!7241 () Unit!454)

(assert (=> d!3843 (= lt!7240 lt!7241)))

(assert (=> d!3843 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (array!1224 (store (arr!580 (_keys!3140 (ite c!2483 (_2!447 lt!6680) lt!6678))) (ite c!2562 (index!2347 lt!6934) (index!2344 lt!6934)) (ite c!2483 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!2482 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000))) (size!673 (_keys!3140 (ite c!2483 (_2!447 lt!6680) lt!6678)))) (mask!4692 (ite c!2483 (_2!447 lt!6680) lt!6678)))))

(assert (=> d!3843 (= lt!7241 (lemmaPutValidKeyPreservesForallSeekEntryOrOpen!0 (ite c!2483 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!2482 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000)) (_keys!3140 (ite c!2483 (_2!447 lt!6680) lt!6678)) (ite c!2562 (index!2347 lt!6934) (index!2344 lt!6934)) (mask!4692 (ite c!2483 (_2!447 lt!6680) lt!6678))))))

(declare-fun lt!7248 () Unit!454)

(declare-fun lt!7258 () Unit!454)

(assert (=> d!3843 (= lt!7248 lt!7258)))

(assert (=> d!3843 (= (arrayCountValidKeys!0 (array!1224 (store (arr!580 (_keys!3140 (ite c!2483 (_2!447 lt!6680) lt!6678))) (ite c!2562 (index!2347 lt!6934) (index!2344 lt!6934)) (ite c!2483 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!2482 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000))) (size!673 (_keys!3140 (ite c!2483 (_2!447 lt!6680) lt!6678)))) #b00000000000000000000000000000000 (size!673 (_keys!3140 (ite c!2483 (_2!447 lt!6680) lt!6678)))) (bvadd (arrayCountValidKeys!0 (_keys!3140 (ite c!2483 (_2!447 lt!6680) lt!6678)) #b00000000000000000000000000000000 (size!673 (_keys!3140 (ite c!2483 (_2!447 lt!6680) lt!6678)))) #b00000000000000000000000000000001))))

(assert (=> d!3843 (= lt!7258 (lemmaAddValidKeyIncreasesNumberOfValidKeysInArray!0 (_keys!3140 (ite c!2483 (_2!447 lt!6680) lt!6678)) (ite c!2562 (index!2347 lt!6934) (index!2344 lt!6934)) (ite c!2483 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!2482 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun lt!7242 () Unit!454)

(declare-fun lt!7255 () Unit!454)

(assert (=> d!3843 (= lt!7242 lt!7255)))

(declare-fun lt!7239 () List!560)

(declare-fun lt!7246 () (_ BitVec 32))

(assert (=> d!3843 (arrayNoDuplicates!0 (array!1224 (store (arr!580 (_keys!3140 (ite c!2483 (_2!447 lt!6680) lt!6678))) (ite c!2562 (index!2347 lt!6934) (index!2344 lt!6934)) (ite c!2483 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!2482 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000))) (size!673 (_keys!3140 (ite c!2483 (_2!447 lt!6680) lt!6678)))) lt!7246 lt!7239)))

(assert (=> d!3843 (= lt!7255 (lemmaPutNewValidKeyPreservesNoDuplicate!0 (_keys!3140 (ite c!2483 (_2!447 lt!6680) lt!6678)) (ite c!2483 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!2482 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000)) (ite c!2562 (index!2347 lt!6934) (index!2344 lt!6934)) lt!7246 lt!7239))))

(assert (=> d!3843 (= lt!7239 Nil!557)))

(assert (=> d!3843 (= lt!7246 #b00000000000000000000000000000000)))

(declare-fun lt!7257 () Unit!454)

(assert (=> d!3843 (= lt!7257 e!14327)))

(declare-fun c!2647 () Bool)

(assert (=> d!3843 (= c!2647 (arrayContainsKey!0 (_keys!3140 (ite c!2483 (_2!447 lt!6680) lt!6678)) (ite c!2483 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!2482 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000)) #b00000000000000000000000000000000))))

(declare-fun lt!7253 () Unit!454)

(assert (=> d!3843 (= lt!7253 e!14328)))

(assert (=> d!3843 (= c!2650 (contains!215 (getCurrentListMap!117 (_keys!3140 (ite c!2483 (_2!447 lt!6680) lt!6678)) (_values!1708 (ite c!2483 (_2!447 lt!6680) lt!6678)) (mask!4692 (ite c!2483 (_2!447 lt!6680) lt!6678)) (extraKeys!1622 (ite c!2483 (_2!447 lt!6680) lt!6678)) (zeroValue!1646 (ite c!2483 (_2!447 lt!6680) lt!6678)) (minValue!1646 (ite c!2483 (_2!447 lt!6680) lt!6678)) #b00000000000000000000000000000000 (defaultEntry!1719 (ite c!2483 (_2!447 lt!6680) lt!6678))) (ite c!2483 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!2482 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> d!3843 (valid!98 (ite c!2483 (_2!447 lt!6680) lt!6678))))

(assert (=> d!3843 (= (updateHelperNewKey!7 (ite c!2483 (_2!447 lt!6680) lt!6678) (ite c!2483 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!2482 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000)) (ite c!2483 (minValue!1646 (v!1573 (underlying!104 thiss!938))) (ite c!2482 (zeroValue!1646 (v!1573 (underlying!104 thiss!938))) (minValue!1646 (v!1573 (underlying!104 thiss!938))))) (ite c!2562 (index!2347 lt!6934) (index!2344 lt!6934))) lt!7261)))

(declare-fun b!22069 () Bool)

(declare-fun Unit!479 () Unit!454)

(assert (=> b!22069 (= e!14327 Unit!479)))

(declare-fun b!22075 () Bool)

(declare-fun res!14048 () Bool)

(assert (=> b!22075 (=> (not res!14048) (not e!14322))))

(assert (=> b!22075 (= res!14048 call!1530)))

(assert (=> b!22075 (= e!14326 e!14322)))

(declare-fun bm!1528 () Bool)

(assert (=> bm!1528 (= call!1528 (seekEntryOrOpen!0 (ite c!2483 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!2482 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000)) (_keys!3140 (ite c!2483 (_2!447 lt!6680) lt!6678)) (mask!4692 (ite c!2483 (_2!447 lt!6680) lt!6678))))))

(declare-fun b!22076 () Bool)

(declare-fun Unit!480 () Unit!454)

(assert (=> b!22076 (= e!14328 Unit!480)))

(declare-fun lt!7263 () Unit!454)

(assert (=> b!22076 (= lt!7263 (lemmaInListMapThenSeekEntryOrOpenFindsIt!7 (_keys!3140 (ite c!2483 (_2!447 lt!6680) lt!6678)) (_values!1708 (ite c!2483 (_2!447 lt!6680) lt!6678)) (mask!4692 (ite c!2483 (_2!447 lt!6680) lt!6678)) (extraKeys!1622 (ite c!2483 (_2!447 lt!6680) lt!6678)) (zeroValue!1646 (ite c!2483 (_2!447 lt!6680) lt!6678)) (minValue!1646 (ite c!2483 (_2!447 lt!6680) lt!6678)) (ite c!2483 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!2482 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000)) (defaultEntry!1719 (ite c!2483 (_2!447 lt!6680) lt!6678))))))

(assert (=> b!22076 (= lt!7264 call!1528)))

(declare-fun res!14042 () Bool)

(assert (=> b!22076 (= res!14042 ((_ is Found!56) lt!7264))))

(assert (=> b!22076 (=> (not res!14042) (not e!14324))))

(assert (=> b!22076 e!14324))

(declare-fun lt!7259 () Unit!454)

(assert (=> b!22076 (= lt!7259 lt!7263)))

(assert (=> b!22076 false))

(declare-fun b!22077 () Bool)

(declare-fun res!14049 () Bool)

(assert (=> b!22077 (=> (not res!14049) (not e!14325))))

(assert (=> b!22077 (= res!14049 (valid!98 (_2!447 lt!7261)))))

(assert (= (and d!3843 c!2650) b!22076))

(assert (= (and d!3843 (not c!2650)) b!22067))

(assert (= (and b!22076 res!14042) b!22071))

(assert (= (and b!22071 res!14045) b!22068))

(assert (= (and b!22067 c!2648) b!22075))

(assert (= (and b!22067 (not c!2648)) b!22074))

(assert (= (and b!22075 res!14048) b!22061))

(assert (= (and b!22061 res!14050) b!22065))

(assert (= (and b!22074 c!2649) b!22063))

(assert (= (and b!22074 (not c!2649)) b!22066))

(assert (= (and b!22063 res!14046) b!22072))

(assert (= (and b!22072 res!14044) b!22064))

(assert (= (or b!22075 b!22063) bm!1525))

(assert (= (or b!22065 b!22064) bm!1527))

(assert (= (or b!22071 bm!1525) bm!1526))

(assert (= (or b!22076 b!22067) bm!1528))

(assert (= (and d!3843 c!2647) b!22073))

(assert (= (and d!3843 (not c!2647)) b!22069))

(assert (= (and d!3843 res!14043) b!22077))

(assert (= (and b!22077 res!14049) b!22070))

(assert (= (and b!22070 res!14047) b!22062))

(declare-fun m!15702 () Bool)

(assert (=> d!3843 m!15702))

(declare-fun m!15704 () Bool)

(assert (=> d!3843 m!15704))

(declare-fun m!15706 () Bool)

(assert (=> d!3843 m!15706))

(declare-fun m!15708 () Bool)

(assert (=> d!3843 m!15708))

(declare-fun m!15710 () Bool)

(assert (=> d!3843 m!15710))

(declare-fun m!15712 () Bool)

(assert (=> d!3843 m!15712))

(declare-fun m!15714 () Bool)

(assert (=> d!3843 m!15714))

(assert (=> d!3843 m!15309))

(assert (=> d!3843 m!15578))

(assert (=> d!3843 m!15267))

(declare-fun m!15716 () Bool)

(assert (=> d!3843 m!15716))

(declare-fun m!15718 () Bool)

(assert (=> d!3843 m!15718))

(assert (=> d!3843 m!15710))

(declare-fun m!15720 () Bool)

(assert (=> d!3843 m!15720))

(assert (=> d!3843 m!15177))

(declare-fun m!15722 () Bool)

(assert (=> d!3843 m!15722))

(declare-fun m!15724 () Bool)

(assert (=> d!3843 m!15724))

(assert (=> d!3843 m!15185))

(declare-fun m!15726 () Bool)

(assert (=> d!3843 m!15726))

(declare-fun m!15728 () Bool)

(assert (=> d!3843 m!15728))

(assert (=> d!3843 m!15718))

(declare-fun m!15730 () Bool)

(assert (=> d!3843 m!15730))

(assert (=> d!3843 m!15309))

(declare-fun m!15732 () Bool)

(assert (=> d!3843 m!15732))

(assert (=> d!3843 m!15309))

(declare-fun m!15734 () Bool)

(assert (=> d!3843 m!15734))

(declare-fun m!15736 () Bool)

(assert (=> d!3843 m!15736))

(declare-fun m!15738 () Bool)

(assert (=> d!3843 m!15738))

(assert (=> bm!1528 m!15157))

(declare-fun m!15740 () Bool)

(assert (=> b!22073 m!15740))

(assert (=> b!22073 m!15309))

(assert (=> b!22073 m!15309))

(assert (=> b!22073 m!15732))

(declare-fun m!15742 () Bool)

(assert (=> b!22068 m!15742))

(declare-fun m!15744 () Bool)

(assert (=> b!22077 m!15744))

(declare-fun m!15746 () Bool)

(assert (=> b!22070 m!15746))

(assert (=> b!22070 m!15746))

(declare-fun m!15748 () Bool)

(assert (=> b!22070 m!15748))

(assert (=> bm!1527 m!15185))

(assert (=> b!22062 m!15746))

(assert (=> b!22062 m!15181))

(assert (=> b!22062 m!15181))

(declare-fun m!15750 () Bool)

(assert (=> b!22062 m!15750))

(declare-fun m!15752 () Bool)

(assert (=> b!22072 m!15752))

(assert (=> b!22067 m!15179))

(declare-fun m!15754 () Bool)

(assert (=> b!22061 m!15754))

(assert (=> b!22076 m!15161))

(declare-fun m!15756 () Bool)

(assert (=> bm!1526 m!15756))

(assert (=> bm!1457 d!3843))

(declare-fun d!3845 () Bool)

(assert (=> d!3845 (= (validMask!0 lt!6778) (and (or (= lt!6778 #b00000000000000000000000000000111) (= lt!6778 #b00000000000000000000000000001111) (= lt!6778 #b00000000000000000000000000011111) (= lt!6778 #b00000000000000000000000000111111) (= lt!6778 #b00000000000000000000000001111111) (= lt!6778 #b00000000000000000000000011111111) (= lt!6778 #b00000000000000000000000111111111) (= lt!6778 #b00000000000000000000001111111111) (= lt!6778 #b00000000000000000000011111111111) (= lt!6778 #b00000000000000000000111111111111) (= lt!6778 #b00000000000000000001111111111111) (= lt!6778 #b00000000000000000011111111111111) (= lt!6778 #b00000000000000000111111111111111) (= lt!6778 #b00000000000000001111111111111111) (= lt!6778 #b00000000000000011111111111111111) (= lt!6778 #b00000000000000111111111111111111) (= lt!6778 #b00000000000001111111111111111111) (= lt!6778 #b00000000000011111111111111111111) (= lt!6778 #b00000000000111111111111111111111) (= lt!6778 #b00000000001111111111111111111111) (= lt!6778 #b00000000011111111111111111111111) (= lt!6778 #b00000000111111111111111111111111) (= lt!6778 #b00000001111111111111111111111111) (= lt!6778 #b00000011111111111111111111111111) (= lt!6778 #b00000111111111111111111111111111) (= lt!6778 #b00001111111111111111111111111111) (= lt!6778 #b00011111111111111111111111111111) (= lt!6778 #b00111111111111111111111111111111)) (bvsle lt!6778 #b00111111111111111111111111111111)))))

(assert (=> d!3745 d!3845))

(assert (=> d!3745 d!3751))

(declare-fun d!3847 () Bool)

(assert (=> d!3847 (= (map!398 (_2!447 lt!6912)) (getCurrentListMap!117 (_keys!3140 (_2!447 lt!6912)) (_values!1708 (_2!447 lt!6912)) (mask!4692 (_2!447 lt!6912)) (extraKeys!1622 (_2!447 lt!6912)) (zeroValue!1646 (_2!447 lt!6912)) (minValue!1646 (_2!447 lt!6912)) #b00000000000000000000000000000000 (defaultEntry!1719 (_2!447 lt!6912))))))

(declare-fun bs!918 () Bool)

(assert (= bs!918 d!3847))

(declare-fun m!15758 () Bool)

(assert (=> bs!918 m!15758))

(assert (=> bm!1421 d!3847))

(declare-fun b!22102 () Bool)

(declare-fun e!14347 () Bool)

(declare-fun lt!7283 () ListLongMap!545)

(declare-fun isEmpty!172 (ListLongMap!545) Bool)

(assert (=> b!22102 (= e!14347 (isEmpty!172 lt!7283))))

(declare-fun b!22103 () Bool)

(declare-fun e!14345 () Bool)

(declare-fun e!14349 () Bool)

(assert (=> b!22103 (= e!14345 e!14349)))

(declare-fun c!2661 () Bool)

(declare-fun e!14346 () Bool)

(assert (=> b!22103 (= c!2661 e!14346)))

(declare-fun res!14060 () Bool)

(assert (=> b!22103 (=> (not res!14060) (not e!14346))))

(assert (=> b!22103 (= res!14060 (bvslt (bvadd #b00000000000000000000000000000001 (bvsub (size!673 (_keys!3140 (v!1573 (underlying!104 thiss!938)))) #b00000000000000000000000000000001)) (size!673 (_keys!3140 (v!1573 (underlying!104 thiss!938))))))))

(declare-fun b!22104 () Bool)

(declare-fun e!14343 () Bool)

(assert (=> b!22104 (= e!14349 e!14343)))

(assert (=> b!22104 (and (bvsge (bvadd #b00000000000000000000000000000001 (bvsub (size!673 (_keys!3140 (v!1573 (underlying!104 thiss!938)))) #b00000000000000000000000000000001)) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 (bvsub (size!673 (_keys!3140 (v!1573 (underlying!104 thiss!938)))) #b00000000000000000000000000000001)) (size!673 (_keys!3140 (v!1573 (underlying!104 thiss!938))))))))

(declare-fun res!14062 () Bool)

(assert (=> b!22104 (= res!14062 (contains!215 lt!7283 (select (arr!580 (_keys!3140 (v!1573 (underlying!104 thiss!938)))) (bvadd #b00000000000000000000000000000001 (bvsub (size!673 (_keys!3140 (v!1573 (underlying!104 thiss!938)))) #b00000000000000000000000000000001)))))))

(assert (=> b!22104 (=> (not res!14062) (not e!14343))))

(declare-fun d!3849 () Bool)

(assert (=> d!3849 e!14345))

(declare-fun res!14061 () Bool)

(assert (=> d!3849 (=> (not res!14061) (not e!14345))))

(assert (=> d!3849 (= res!14061 (not (contains!215 lt!7283 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun e!14344 () ListLongMap!545)

(assert (=> d!3849 (= lt!7283 e!14344)))

(declare-fun c!2662 () Bool)

(assert (=> d!3849 (= c!2662 (bvsge (bvadd #b00000000000000000000000000000001 (bvsub (size!673 (_keys!3140 (v!1573 (underlying!104 thiss!938)))) #b00000000000000000000000000000001)) (size!673 (_keys!3140 (v!1573 (underlying!104 thiss!938))))))))

(assert (=> d!3849 (validMask!0 (mask!4692 (v!1573 (underlying!104 thiss!938))))))

(assert (=> d!3849 (= (getCurrentListMapNoExtraKeys!13 (_keys!3140 (v!1573 (underlying!104 thiss!938))) (_values!1708 (v!1573 (underlying!104 thiss!938))) (mask!4692 (v!1573 (underlying!104 thiss!938))) (extraKeys!1622 (v!1573 (underlying!104 thiss!938))) (zeroValue!1646 (v!1573 (underlying!104 thiss!938))) (minValue!1646 (v!1573 (underlying!104 thiss!938))) (bvadd #b00000000000000000000000000000001 (bvsub (size!673 (_keys!3140 (v!1573 (underlying!104 thiss!938)))) #b00000000000000000000000000000001)) (defaultEntry!1719 (v!1573 (underlying!104 thiss!938)))) lt!7283)))

(declare-fun bm!1531 () Bool)

(declare-fun call!1534 () ListLongMap!545)

(assert (=> bm!1531 (= call!1534 (getCurrentListMapNoExtraKeys!13 (_keys!3140 (v!1573 (underlying!104 thiss!938))) (_values!1708 (v!1573 (underlying!104 thiss!938))) (mask!4692 (v!1573 (underlying!104 thiss!938))) (extraKeys!1622 (v!1573 (underlying!104 thiss!938))) (zeroValue!1646 (v!1573 (underlying!104 thiss!938))) (minValue!1646 (v!1573 (underlying!104 thiss!938))) (bvadd #b00000000000000000000000000000001 (bvsub (size!673 (_keys!3140 (v!1573 (underlying!104 thiss!938)))) #b00000000000000000000000000000001) #b00000000000000000000000000000001) (defaultEntry!1719 (v!1573 (underlying!104 thiss!938)))))))

(declare-fun b!22105 () Bool)

(declare-fun e!14348 () ListLongMap!545)

(assert (=> b!22105 (= e!14348 call!1534)))

(declare-fun b!22106 () Bool)

(declare-fun lt!7287 () Unit!454)

(declare-fun lt!7281 () Unit!454)

(assert (=> b!22106 (= lt!7287 lt!7281)))

(declare-fun lt!7282 () ListLongMap!545)

(declare-fun lt!7284 () (_ BitVec 64))

(declare-fun lt!7286 () V!1157)

(declare-fun lt!7285 () (_ BitVec 64))

(assert (=> b!22106 (not (contains!215 (+!42 lt!7282 (tuple2!891 lt!7285 lt!7286)) lt!7284))))

(declare-fun addStillNotContains!1 (ListLongMap!545 (_ BitVec 64) V!1157 (_ BitVec 64)) Unit!454)

(assert (=> b!22106 (= lt!7281 (addStillNotContains!1 lt!7282 lt!7285 lt!7286 lt!7284))))

(assert (=> b!22106 (= lt!7284 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!22106 (= lt!7286 (get!377 (select (arr!579 (_values!1708 (v!1573 (underlying!104 thiss!938)))) (bvadd #b00000000000000000000000000000001 (bvsub (size!673 (_keys!3140 (v!1573 (underlying!104 thiss!938)))) #b00000000000000000000000000000001))) (dynLambda!141 (defaultEntry!1719 (v!1573 (underlying!104 thiss!938))) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!22106 (= lt!7285 (select (arr!580 (_keys!3140 (v!1573 (underlying!104 thiss!938)))) (bvadd #b00000000000000000000000000000001 (bvsub (size!673 (_keys!3140 (v!1573 (underlying!104 thiss!938)))) #b00000000000000000000000000000001))))))

(assert (=> b!22106 (= lt!7282 call!1534)))

(assert (=> b!22106 (= e!14348 (+!42 call!1534 (tuple2!891 (select (arr!580 (_keys!3140 (v!1573 (underlying!104 thiss!938)))) (bvadd #b00000000000000000000000000000001 (bvsub (size!673 (_keys!3140 (v!1573 (underlying!104 thiss!938)))) #b00000000000000000000000000000001))) (get!377 (select (arr!579 (_values!1708 (v!1573 (underlying!104 thiss!938)))) (bvadd #b00000000000000000000000000000001 (bvsub (size!673 (_keys!3140 (v!1573 (underlying!104 thiss!938)))) #b00000000000000000000000000000001))) (dynLambda!141 (defaultEntry!1719 (v!1573 (underlying!104 thiss!938))) #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!22107 () Bool)

(assert (=> b!22107 (= e!14349 e!14347)))

(declare-fun c!2660 () Bool)

(assert (=> b!22107 (= c!2660 (bvslt (bvadd #b00000000000000000000000000000001 (bvsub (size!673 (_keys!3140 (v!1573 (underlying!104 thiss!938)))) #b00000000000000000000000000000001)) (size!673 (_keys!3140 (v!1573 (underlying!104 thiss!938))))))))

(declare-fun b!22108 () Bool)

(assert (=> b!22108 (= e!14344 e!14348)))

(declare-fun c!2659 () Bool)

(assert (=> b!22108 (= c!2659 (validKeyInArray!0 (select (arr!580 (_keys!3140 (v!1573 (underlying!104 thiss!938)))) (bvadd #b00000000000000000000000000000001 (bvsub (size!673 (_keys!3140 (v!1573 (underlying!104 thiss!938)))) #b00000000000000000000000000000001)))))))

(declare-fun b!22109 () Bool)

(assert (=> b!22109 (= e!14344 (ListLongMap!546 Nil!555))))

(declare-fun b!22110 () Bool)

(assert (=> b!22110 (= e!14346 (validKeyInArray!0 (select (arr!580 (_keys!3140 (v!1573 (underlying!104 thiss!938)))) (bvadd #b00000000000000000000000000000001 (bvsub (size!673 (_keys!3140 (v!1573 (underlying!104 thiss!938)))) #b00000000000000000000000000000001)))))))

(assert (=> b!22110 (bvsge (bvadd #b00000000000000000000000000000001 (bvsub (size!673 (_keys!3140 (v!1573 (underlying!104 thiss!938)))) #b00000000000000000000000000000001)) #b00000000000000000000000000000000)))

(declare-fun b!22111 () Bool)

(assert (=> b!22111 (= e!14347 (= lt!7283 (getCurrentListMapNoExtraKeys!13 (_keys!3140 (v!1573 (underlying!104 thiss!938))) (_values!1708 (v!1573 (underlying!104 thiss!938))) (mask!4692 (v!1573 (underlying!104 thiss!938))) (extraKeys!1622 (v!1573 (underlying!104 thiss!938))) (zeroValue!1646 (v!1573 (underlying!104 thiss!938))) (minValue!1646 (v!1573 (underlying!104 thiss!938))) (bvadd #b00000000000000000000000000000001 (bvsub (size!673 (_keys!3140 (v!1573 (underlying!104 thiss!938)))) #b00000000000000000000000000000001) #b00000000000000000000000000000001) (defaultEntry!1719 (v!1573 (underlying!104 thiss!938))))))))

(declare-fun b!22112 () Bool)

(assert (=> b!22112 (and (bvsge (bvadd #b00000000000000000000000000000001 (bvsub (size!673 (_keys!3140 (v!1573 (underlying!104 thiss!938)))) #b00000000000000000000000000000001)) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 (bvsub (size!673 (_keys!3140 (v!1573 (underlying!104 thiss!938)))) #b00000000000000000000000000000001)) (size!673 (_keys!3140 (v!1573 (underlying!104 thiss!938))))))))

(assert (=> b!22112 (and (bvsge (bvadd #b00000000000000000000000000000001 (bvsub (size!673 (_keys!3140 (v!1573 (underlying!104 thiss!938)))) #b00000000000000000000000000000001)) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 (bvsub (size!673 (_keys!3140 (v!1573 (underlying!104 thiss!938)))) #b00000000000000000000000000000001)) (size!672 (_values!1708 (v!1573 (underlying!104 thiss!938))))))))

(assert (=> b!22112 (= e!14343 (= (apply!28 lt!7283 (select (arr!580 (_keys!3140 (v!1573 (underlying!104 thiss!938)))) (bvadd #b00000000000000000000000000000001 (bvsub (size!673 (_keys!3140 (v!1573 (underlying!104 thiss!938)))) #b00000000000000000000000000000001)))) (get!377 (select (arr!579 (_values!1708 (v!1573 (underlying!104 thiss!938)))) (bvadd #b00000000000000000000000000000001 (bvsub (size!673 (_keys!3140 (v!1573 (underlying!104 thiss!938)))) #b00000000000000000000000000000001))) (dynLambda!141 (defaultEntry!1719 (v!1573 (underlying!104 thiss!938))) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!22113 () Bool)

(declare-fun res!14059 () Bool)

(assert (=> b!22113 (=> (not res!14059) (not e!14345))))

(assert (=> b!22113 (= res!14059 (not (contains!215 lt!7283 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!3849 c!2662) b!22109))

(assert (= (and d!3849 (not c!2662)) b!22108))

(assert (= (and b!22108 c!2659) b!22106))

(assert (= (and b!22108 (not c!2659)) b!22105))

(assert (= (or b!22106 b!22105) bm!1531))

(assert (= (and d!3849 res!14061) b!22113))

(assert (= (and b!22113 res!14059) b!22103))

(assert (= (and b!22103 res!14060) b!22110))

(assert (= (and b!22103 c!2661) b!22104))

(assert (= (and b!22103 (not c!2661)) b!22107))

(assert (= (and b!22104 res!14062) b!22112))

(assert (= (and b!22107 c!2660) b!22111))

(assert (= (and b!22107 (not c!2660)) b!22102))

(declare-fun b_lambda!1545 () Bool)

(assert (=> (not b_lambda!1545) (not b!22106)))

(assert (=> b!22106 t!3220))

(declare-fun b_and!1443 () Bool)

(assert (= b_and!1441 (and (=> t!3220 result!1071) b_and!1443)))

(declare-fun b_lambda!1547 () Bool)

(assert (=> (not b_lambda!1547) (not b!22112)))

(assert (=> b!22112 t!3220))

(declare-fun b_and!1445 () Bool)

(assert (= b_and!1443 (and (=> t!3220 result!1071) b_and!1445)))

(declare-fun m!15760 () Bool)

(assert (=> b!22102 m!15760))

(assert (=> b!22110 m!15017))

(assert (=> b!22110 m!15017))

(assert (=> b!22110 m!15019))

(declare-fun m!15762 () Bool)

(assert (=> d!3849 m!15762))

(assert (=> d!3849 m!14923))

(declare-fun m!15764 () Bool)

(assert (=> b!22106 m!15764))

(declare-fun m!15766 () Bool)

(assert (=> b!22106 m!15766))

(assert (=> b!22106 m!15061))

(assert (=> b!22106 m!14979))

(assert (=> b!22106 m!15063))

(assert (=> b!22106 m!15764))

(assert (=> b!22106 m!14979))

(declare-fun m!15768 () Bool)

(assert (=> b!22106 m!15768))

(assert (=> b!22106 m!15061))

(assert (=> b!22106 m!15017))

(declare-fun m!15770 () Bool)

(assert (=> b!22106 m!15770))

(declare-fun m!15772 () Bool)

(assert (=> b!22111 m!15772))

(assert (=> b!22112 m!15061))

(assert (=> b!22112 m!14979))

(assert (=> b!22112 m!15063))

(assert (=> b!22112 m!14979))

(assert (=> b!22112 m!15017))

(assert (=> b!22112 m!15061))

(assert (=> b!22112 m!15017))

(declare-fun m!15774 () Bool)

(assert (=> b!22112 m!15774))

(assert (=> b!22104 m!15017))

(assert (=> b!22104 m!15017))

(declare-fun m!15776 () Bool)

(assert (=> b!22104 m!15776))

(assert (=> b!22108 m!15017))

(assert (=> b!22108 m!15017))

(assert (=> b!22108 m!15019))

(declare-fun m!15778 () Bool)

(assert (=> b!22113 m!15778))

(assert (=> bm!1531 m!15772))

(assert (=> bm!1371 d!3849))

(declare-fun bm!1532 () Bool)

(declare-fun call!1541 () Bool)

(declare-fun lt!7290 () ListLongMap!545)

(assert (=> bm!1532 (= call!1541 (contains!215 lt!7290 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun bm!1533 () Bool)

(declare-fun call!1537 () ListLongMap!545)

(declare-fun call!1539 () ListLongMap!545)

(assert (=> bm!1533 (= call!1537 call!1539)))

(declare-fun b!22114 () Bool)

(declare-fun e!14354 () Bool)

(declare-fun call!1536 () Bool)

(assert (=> b!22114 (= e!14354 (not call!1536))))

(declare-fun bm!1534 () Bool)

(assert (=> bm!1534 (= call!1536 (contains!215 lt!7290 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!22115 () Bool)

(declare-fun e!14359 () Bool)

(assert (=> b!22115 (= e!14359 (= (apply!28 lt!7290 #b1000000000000000000000000000000000000000000000000000000000000000) (ite c!2561 (ite c!2565 (minValue!1646 (ite c!2483 (_2!447 lt!6680) lt!6678)) (ite c!2483 (minValue!1646 (v!1573 (underlying!104 thiss!938))) (ite c!2482 (zeroValue!1646 (v!1573 (underlying!104 thiss!938))) (minValue!1646 (v!1573 (underlying!104 thiss!938)))))) (minValue!1646 (ite c!2483 (_2!447 lt!6680) lt!6678)))))))

(declare-fun b!22116 () Bool)

(declare-fun e!14361 () ListLongMap!545)

(assert (=> b!22116 (= e!14361 call!1537)))

(declare-fun b!22117 () Bool)

(declare-fun e!14355 () Bool)

(assert (=> b!22117 (= e!14355 (validKeyInArray!0 (select (arr!580 (_keys!3140 (ite c!2483 (_2!447 lt!6680) lt!6678))) #b00000000000000000000000000000000)))))

(declare-fun bm!1535 () Bool)

(declare-fun call!1540 () ListLongMap!545)

(declare-fun call!1535 () ListLongMap!545)

(assert (=> bm!1535 (= call!1540 call!1535)))

(declare-fun b!22118 () Bool)

(declare-fun e!14352 () Bool)

(declare-fun e!14358 () Bool)

(assert (=> b!22118 (= e!14352 e!14358)))

(declare-fun res!14069 () Bool)

(assert (=> b!22118 (=> (not res!14069) (not e!14358))))

(assert (=> b!22118 (= res!14069 (contains!215 lt!7290 (select (arr!580 (_keys!3140 (ite c!2483 (_2!447 lt!6680) lt!6678))) #b00000000000000000000000000000000)))))

(assert (=> b!22118 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!673 (_keys!3140 (ite c!2483 (_2!447 lt!6680) lt!6678)))))))

(declare-fun b!22119 () Bool)

(declare-fun e!14353 () Bool)

(assert (=> b!22119 (= e!14353 (= (apply!28 lt!7290 #b0000000000000000000000000000000000000000000000000000000000000000) (ite (and c!2561 c!2565) (ite c!2483 (minValue!1646 (v!1573 (underlying!104 thiss!938))) (ite c!2482 (zeroValue!1646 (v!1573 (underlying!104 thiss!938))) (minValue!1646 (v!1573 (underlying!104 thiss!938))))) (zeroValue!1646 (ite c!2483 (_2!447 lt!6680) lt!6678)))))))

(declare-fun b!22120 () Bool)

(declare-fun e!14356 () ListLongMap!545)

(assert (=> b!22120 (= e!14356 call!1537)))

(declare-fun e!14357 () ListLongMap!545)

(declare-fun b!22121 () Bool)

(assert (=> b!22121 (= e!14357 (+!42 call!1539 (tuple2!891 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!2561 (ite c!2565 (minValue!1646 (ite c!2483 (_2!447 lt!6680) lt!6678)) (ite c!2483 (minValue!1646 (v!1573 (underlying!104 thiss!938))) (ite c!2482 (zeroValue!1646 (v!1573 (underlying!104 thiss!938))) (minValue!1646 (v!1573 (underlying!104 thiss!938)))))) (minValue!1646 (ite c!2483 (_2!447 lt!6680) lt!6678))))))))

(declare-fun b!22122 () Bool)

(declare-fun e!14350 () Bool)

(assert (=> b!22122 (= e!14350 (validKeyInArray!0 (select (arr!580 (_keys!3140 (ite c!2483 (_2!447 lt!6680) lt!6678))) #b00000000000000000000000000000000)))))

(declare-fun b!22123 () Bool)

(declare-fun res!14065 () Bool)

(declare-fun e!14351 () Bool)

(assert (=> b!22123 (=> (not res!14065) (not e!14351))))

(assert (=> b!22123 (= res!14065 e!14352)))

(declare-fun res!14071 () Bool)

(assert (=> b!22123 (=> res!14071 e!14352)))

(assert (=> b!22123 (= res!14071 (not e!14350))))

(declare-fun res!14068 () Bool)

(assert (=> b!22123 (=> (not res!14068) (not e!14350))))

(assert (=> b!22123 (= res!14068 (bvslt #b00000000000000000000000000000000 (size!673 (_keys!3140 (ite c!2483 (_2!447 lt!6680) lt!6678)))))))

(declare-fun b!22124 () Bool)

(assert (=> b!22124 (= e!14357 e!14361)))

(declare-fun c!2668 () Bool)

(assert (=> b!22124 (= c!2668 (and (not (= (bvand (ite c!2561 (ite c!2565 lt!6949 lt!6938) (extraKeys!1622 (ite c!2483 (_2!447 lt!6680) lt!6678))) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand (ite c!2561 (ite c!2565 lt!6949 lt!6938) (extraKeys!1622 (ite c!2483 (_2!447 lt!6680) lt!6678))) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun d!3851 () Bool)

(assert (=> d!3851 e!14351))

(declare-fun res!14064 () Bool)

(assert (=> d!3851 (=> (not res!14064) (not e!14351))))

(assert (=> d!3851 (= res!14064 (or (bvsge #b00000000000000000000000000000000 (size!673 (_keys!3140 (ite c!2483 (_2!447 lt!6680) lt!6678)))) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!673 (_keys!3140 (ite c!2483 (_2!447 lt!6680) lt!6678)))))))))

(declare-fun lt!7294 () ListLongMap!545)

(assert (=> d!3851 (= lt!7290 lt!7294)))

(declare-fun lt!7308 () Unit!454)

(declare-fun e!14360 () Unit!454)

(assert (=> d!3851 (= lt!7308 e!14360)))

(declare-fun c!2666 () Bool)

(assert (=> d!3851 (= c!2666 e!14355)))

(declare-fun res!14066 () Bool)

(assert (=> d!3851 (=> (not res!14066) (not e!14355))))

(assert (=> d!3851 (= res!14066 (bvslt #b00000000000000000000000000000000 (size!673 (_keys!3140 (ite c!2483 (_2!447 lt!6680) lt!6678)))))))

(assert (=> d!3851 (= lt!7294 e!14357)))

(declare-fun c!2665 () Bool)

(assert (=> d!3851 (= c!2665 (and (not (= (bvand (ite c!2561 (ite c!2565 lt!6949 lt!6938) (extraKeys!1622 (ite c!2483 (_2!447 lt!6680) lt!6678))) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (ite c!2561 (ite c!2565 lt!6949 lt!6938) (extraKeys!1622 (ite c!2483 (_2!447 lt!6680) lt!6678))) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!3851 (validMask!0 (mask!4692 (ite c!2483 (_2!447 lt!6680) lt!6678)))))

(assert (=> d!3851 (= (getCurrentListMap!117 (_keys!3140 (ite c!2483 (_2!447 lt!6680) lt!6678)) (_values!1708 (ite c!2483 (_2!447 lt!6680) lt!6678)) (mask!4692 (ite c!2483 (_2!447 lt!6680) lt!6678)) (ite c!2561 (ite c!2565 lt!6949 lt!6938) (extraKeys!1622 (ite c!2483 (_2!447 lt!6680) lt!6678))) (ite (and c!2561 c!2565) (ite c!2483 (minValue!1646 (v!1573 (underlying!104 thiss!938))) (ite c!2482 (zeroValue!1646 (v!1573 (underlying!104 thiss!938))) (minValue!1646 (v!1573 (underlying!104 thiss!938))))) (zeroValue!1646 (ite c!2483 (_2!447 lt!6680) lt!6678))) (ite c!2561 (ite c!2565 (minValue!1646 (ite c!2483 (_2!447 lt!6680) lt!6678)) (ite c!2483 (minValue!1646 (v!1573 (underlying!104 thiss!938))) (ite c!2482 (zeroValue!1646 (v!1573 (underlying!104 thiss!938))) (minValue!1646 (v!1573 (underlying!104 thiss!938)))))) (minValue!1646 (ite c!2483 (_2!447 lt!6680) lt!6678))) #b00000000000000000000000000000000 (defaultEntry!1719 (ite c!2483 (_2!447 lt!6680) lt!6678))) lt!7290)))

(declare-fun b!22125 () Bool)

(assert (=> b!22125 (= e!14354 e!14353)))

(declare-fun res!14063 () Bool)

(assert (=> b!22125 (= res!14063 call!1536)))

(assert (=> b!22125 (=> (not res!14063) (not e!14353))))

(declare-fun b!22126 () Bool)

(declare-fun Unit!481 () Unit!454)

(assert (=> b!22126 (= e!14360 Unit!481)))

(declare-fun bm!1536 () Bool)

(declare-fun call!1538 () ListLongMap!545)

(assert (=> bm!1536 (= call!1539 (+!42 (ite c!2665 call!1538 (ite c!2668 call!1535 call!1540)) (ite (or c!2665 c!2668) (tuple2!891 #b0000000000000000000000000000000000000000000000000000000000000000 (ite (and c!2561 c!2565) (ite c!2483 (minValue!1646 (v!1573 (underlying!104 thiss!938))) (ite c!2482 (zeroValue!1646 (v!1573 (underlying!104 thiss!938))) (minValue!1646 (v!1573 (underlying!104 thiss!938))))) (zeroValue!1646 (ite c!2483 (_2!447 lt!6680) lt!6678)))) (tuple2!891 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!2561 (ite c!2565 (minValue!1646 (ite c!2483 (_2!447 lt!6680) lt!6678)) (ite c!2483 (minValue!1646 (v!1573 (underlying!104 thiss!938))) (ite c!2482 (zeroValue!1646 (v!1573 (underlying!104 thiss!938))) (minValue!1646 (v!1573 (underlying!104 thiss!938)))))) (minValue!1646 (ite c!2483 (_2!447 lt!6680) lt!6678)))))))))

(declare-fun b!22127 () Bool)

(declare-fun e!14362 () Bool)

(assert (=> b!22127 (= e!14362 (not call!1541))))

(declare-fun b!22128 () Bool)

(declare-fun res!14067 () Bool)

(assert (=> b!22128 (=> (not res!14067) (not e!14351))))

(assert (=> b!22128 (= res!14067 e!14354)))

(declare-fun c!2664 () Bool)

(assert (=> b!22128 (= c!2664 (not (= (bvand (ite c!2561 (ite c!2565 lt!6949 lt!6938) (extraKeys!1622 (ite c!2483 (_2!447 lt!6680) lt!6678))) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!22129 () Bool)

(assert (=> b!22129 (= e!14356 call!1540)))

(declare-fun bm!1537 () Bool)

(assert (=> bm!1537 (= call!1538 (getCurrentListMapNoExtraKeys!13 (_keys!3140 (ite c!2483 (_2!447 lt!6680) lt!6678)) (_values!1708 (ite c!2483 (_2!447 lt!6680) lt!6678)) (mask!4692 (ite c!2483 (_2!447 lt!6680) lt!6678)) (ite c!2561 (ite c!2565 lt!6949 lt!6938) (extraKeys!1622 (ite c!2483 (_2!447 lt!6680) lt!6678))) (ite (and c!2561 c!2565) (ite c!2483 (minValue!1646 (v!1573 (underlying!104 thiss!938))) (ite c!2482 (zeroValue!1646 (v!1573 (underlying!104 thiss!938))) (minValue!1646 (v!1573 (underlying!104 thiss!938))))) (zeroValue!1646 (ite c!2483 (_2!447 lt!6680) lt!6678))) (ite c!2561 (ite c!2565 (minValue!1646 (ite c!2483 (_2!447 lt!6680) lt!6678)) (ite c!2483 (minValue!1646 (v!1573 (underlying!104 thiss!938))) (ite c!2482 (zeroValue!1646 (v!1573 (underlying!104 thiss!938))) (minValue!1646 (v!1573 (underlying!104 thiss!938)))))) (minValue!1646 (ite c!2483 (_2!447 lt!6680) lt!6678))) #b00000000000000000000000000000000 (defaultEntry!1719 (ite c!2483 (_2!447 lt!6680) lt!6678))))))

(declare-fun b!22130 () Bool)

(assert (=> b!22130 (= e!14362 e!14359)))

(declare-fun res!14070 () Bool)

(assert (=> b!22130 (= res!14070 call!1541)))

(assert (=> b!22130 (=> (not res!14070) (not e!14359))))

(declare-fun b!22131 () Bool)

(declare-fun c!2663 () Bool)

(assert (=> b!22131 (= c!2663 (and (not (= (bvand (ite c!2561 (ite c!2565 lt!6949 lt!6938) (extraKeys!1622 (ite c!2483 (_2!447 lt!6680) lt!6678))) #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand (ite c!2561 (ite c!2565 lt!6949 lt!6938) (extraKeys!1622 (ite c!2483 (_2!447 lt!6680) lt!6678))) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!22131 (= e!14361 e!14356)))

(declare-fun b!22132 () Bool)

(assert (=> b!22132 (= e!14351 e!14362)))

(declare-fun c!2667 () Bool)

(assert (=> b!22132 (= c!2667 (not (= (bvand (ite c!2561 (ite c!2565 lt!6949 lt!6938) (extraKeys!1622 (ite c!2483 (_2!447 lt!6680) lt!6678))) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!22133 () Bool)

(assert (=> b!22133 (= e!14358 (= (apply!28 lt!7290 (select (arr!580 (_keys!3140 (ite c!2483 (_2!447 lt!6680) lt!6678))) #b00000000000000000000000000000000)) (get!377 (select (arr!579 (_values!1708 (ite c!2483 (_2!447 lt!6680) lt!6678))) #b00000000000000000000000000000000) (dynLambda!141 (defaultEntry!1719 (ite c!2483 (_2!447 lt!6680) lt!6678)) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!22133 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!672 (_values!1708 (ite c!2483 (_2!447 lt!6680) lt!6678)))))))

(assert (=> b!22133 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!673 (_keys!3140 (ite c!2483 (_2!447 lt!6680) lt!6678)))))))

(declare-fun b!22134 () Bool)

(declare-fun lt!7307 () Unit!454)

(assert (=> b!22134 (= e!14360 lt!7307)))

(declare-fun lt!7300 () ListLongMap!545)

(assert (=> b!22134 (= lt!7300 (getCurrentListMapNoExtraKeys!13 (_keys!3140 (ite c!2483 (_2!447 lt!6680) lt!6678)) (_values!1708 (ite c!2483 (_2!447 lt!6680) lt!6678)) (mask!4692 (ite c!2483 (_2!447 lt!6680) lt!6678)) (ite c!2561 (ite c!2565 lt!6949 lt!6938) (extraKeys!1622 (ite c!2483 (_2!447 lt!6680) lt!6678))) (ite (and c!2561 c!2565) (ite c!2483 (minValue!1646 (v!1573 (underlying!104 thiss!938))) (ite c!2482 (zeroValue!1646 (v!1573 (underlying!104 thiss!938))) (minValue!1646 (v!1573 (underlying!104 thiss!938))))) (zeroValue!1646 (ite c!2483 (_2!447 lt!6680) lt!6678))) (ite c!2561 (ite c!2565 (minValue!1646 (ite c!2483 (_2!447 lt!6680) lt!6678)) (ite c!2483 (minValue!1646 (v!1573 (underlying!104 thiss!938))) (ite c!2482 (zeroValue!1646 (v!1573 (underlying!104 thiss!938))) (minValue!1646 (v!1573 (underlying!104 thiss!938)))))) (minValue!1646 (ite c!2483 (_2!447 lt!6680) lt!6678))) #b00000000000000000000000000000000 (defaultEntry!1719 (ite c!2483 (_2!447 lt!6680) lt!6678))))))

(declare-fun lt!7292 () (_ BitVec 64))

(assert (=> b!22134 (= lt!7292 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!7295 () (_ BitVec 64))

(assert (=> b!22134 (= lt!7295 (select (arr!580 (_keys!3140 (ite c!2483 (_2!447 lt!6680) lt!6678))) #b00000000000000000000000000000000))))

(declare-fun lt!7304 () Unit!454)

(assert (=> b!22134 (= lt!7304 (addStillContains!13 lt!7300 lt!7292 (ite (and c!2561 c!2565) (ite c!2483 (minValue!1646 (v!1573 (underlying!104 thiss!938))) (ite c!2482 (zeroValue!1646 (v!1573 (underlying!104 thiss!938))) (minValue!1646 (v!1573 (underlying!104 thiss!938))))) (zeroValue!1646 (ite c!2483 (_2!447 lt!6680) lt!6678))) lt!7295))))

(assert (=> b!22134 (contains!215 (+!42 lt!7300 (tuple2!891 lt!7292 (ite (and c!2561 c!2565) (ite c!2483 (minValue!1646 (v!1573 (underlying!104 thiss!938))) (ite c!2482 (zeroValue!1646 (v!1573 (underlying!104 thiss!938))) (minValue!1646 (v!1573 (underlying!104 thiss!938))))) (zeroValue!1646 (ite c!2483 (_2!447 lt!6680) lt!6678))))) lt!7295)))

(declare-fun lt!7297 () Unit!454)

(assert (=> b!22134 (= lt!7297 lt!7304)))

(declare-fun lt!7299 () ListLongMap!545)

(assert (=> b!22134 (= lt!7299 (getCurrentListMapNoExtraKeys!13 (_keys!3140 (ite c!2483 (_2!447 lt!6680) lt!6678)) (_values!1708 (ite c!2483 (_2!447 lt!6680) lt!6678)) (mask!4692 (ite c!2483 (_2!447 lt!6680) lt!6678)) (ite c!2561 (ite c!2565 lt!6949 lt!6938) (extraKeys!1622 (ite c!2483 (_2!447 lt!6680) lt!6678))) (ite (and c!2561 c!2565) (ite c!2483 (minValue!1646 (v!1573 (underlying!104 thiss!938))) (ite c!2482 (zeroValue!1646 (v!1573 (underlying!104 thiss!938))) (minValue!1646 (v!1573 (underlying!104 thiss!938))))) (zeroValue!1646 (ite c!2483 (_2!447 lt!6680) lt!6678))) (ite c!2561 (ite c!2565 (minValue!1646 (ite c!2483 (_2!447 lt!6680) lt!6678)) (ite c!2483 (minValue!1646 (v!1573 (underlying!104 thiss!938))) (ite c!2482 (zeroValue!1646 (v!1573 (underlying!104 thiss!938))) (minValue!1646 (v!1573 (underlying!104 thiss!938)))))) (minValue!1646 (ite c!2483 (_2!447 lt!6680) lt!6678))) #b00000000000000000000000000000000 (defaultEntry!1719 (ite c!2483 (_2!447 lt!6680) lt!6678))))))

(declare-fun lt!7296 () (_ BitVec 64))

(assert (=> b!22134 (= lt!7296 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!7291 () (_ BitVec 64))

(assert (=> b!22134 (= lt!7291 (select (arr!580 (_keys!3140 (ite c!2483 (_2!447 lt!6680) lt!6678))) #b00000000000000000000000000000000))))

(declare-fun lt!7298 () Unit!454)

(assert (=> b!22134 (= lt!7298 (addApplyDifferent!13 lt!7299 lt!7296 (ite c!2561 (ite c!2565 (minValue!1646 (ite c!2483 (_2!447 lt!6680) lt!6678)) (ite c!2483 (minValue!1646 (v!1573 (underlying!104 thiss!938))) (ite c!2482 (zeroValue!1646 (v!1573 (underlying!104 thiss!938))) (minValue!1646 (v!1573 (underlying!104 thiss!938)))))) (minValue!1646 (ite c!2483 (_2!447 lt!6680) lt!6678))) lt!7291))))

(assert (=> b!22134 (= (apply!28 (+!42 lt!7299 (tuple2!891 lt!7296 (ite c!2561 (ite c!2565 (minValue!1646 (ite c!2483 (_2!447 lt!6680) lt!6678)) (ite c!2483 (minValue!1646 (v!1573 (underlying!104 thiss!938))) (ite c!2482 (zeroValue!1646 (v!1573 (underlying!104 thiss!938))) (minValue!1646 (v!1573 (underlying!104 thiss!938)))))) (minValue!1646 (ite c!2483 (_2!447 lt!6680) lt!6678))))) lt!7291) (apply!28 lt!7299 lt!7291))))

(declare-fun lt!7301 () Unit!454)

(assert (=> b!22134 (= lt!7301 lt!7298)))

(declare-fun lt!7302 () ListLongMap!545)

(assert (=> b!22134 (= lt!7302 (getCurrentListMapNoExtraKeys!13 (_keys!3140 (ite c!2483 (_2!447 lt!6680) lt!6678)) (_values!1708 (ite c!2483 (_2!447 lt!6680) lt!6678)) (mask!4692 (ite c!2483 (_2!447 lt!6680) lt!6678)) (ite c!2561 (ite c!2565 lt!6949 lt!6938) (extraKeys!1622 (ite c!2483 (_2!447 lt!6680) lt!6678))) (ite (and c!2561 c!2565) (ite c!2483 (minValue!1646 (v!1573 (underlying!104 thiss!938))) (ite c!2482 (zeroValue!1646 (v!1573 (underlying!104 thiss!938))) (minValue!1646 (v!1573 (underlying!104 thiss!938))))) (zeroValue!1646 (ite c!2483 (_2!447 lt!6680) lt!6678))) (ite c!2561 (ite c!2565 (minValue!1646 (ite c!2483 (_2!447 lt!6680) lt!6678)) (ite c!2483 (minValue!1646 (v!1573 (underlying!104 thiss!938))) (ite c!2482 (zeroValue!1646 (v!1573 (underlying!104 thiss!938))) (minValue!1646 (v!1573 (underlying!104 thiss!938)))))) (minValue!1646 (ite c!2483 (_2!447 lt!6680) lt!6678))) #b00000000000000000000000000000000 (defaultEntry!1719 (ite c!2483 (_2!447 lt!6680) lt!6678))))))

(declare-fun lt!7309 () (_ BitVec 64))

(assert (=> b!22134 (= lt!7309 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!7305 () (_ BitVec 64))

(assert (=> b!22134 (= lt!7305 (select (arr!580 (_keys!3140 (ite c!2483 (_2!447 lt!6680) lt!6678))) #b00000000000000000000000000000000))))

(declare-fun lt!7288 () Unit!454)

(assert (=> b!22134 (= lt!7288 (addApplyDifferent!13 lt!7302 lt!7309 (ite (and c!2561 c!2565) (ite c!2483 (minValue!1646 (v!1573 (underlying!104 thiss!938))) (ite c!2482 (zeroValue!1646 (v!1573 (underlying!104 thiss!938))) (minValue!1646 (v!1573 (underlying!104 thiss!938))))) (zeroValue!1646 (ite c!2483 (_2!447 lt!6680) lt!6678))) lt!7305))))

(assert (=> b!22134 (= (apply!28 (+!42 lt!7302 (tuple2!891 lt!7309 (ite (and c!2561 c!2565) (ite c!2483 (minValue!1646 (v!1573 (underlying!104 thiss!938))) (ite c!2482 (zeroValue!1646 (v!1573 (underlying!104 thiss!938))) (minValue!1646 (v!1573 (underlying!104 thiss!938))))) (zeroValue!1646 (ite c!2483 (_2!447 lt!6680) lt!6678))))) lt!7305) (apply!28 lt!7302 lt!7305))))

(declare-fun lt!7303 () Unit!454)

(assert (=> b!22134 (= lt!7303 lt!7288)))

(declare-fun lt!7289 () ListLongMap!545)

(assert (=> b!22134 (= lt!7289 (getCurrentListMapNoExtraKeys!13 (_keys!3140 (ite c!2483 (_2!447 lt!6680) lt!6678)) (_values!1708 (ite c!2483 (_2!447 lt!6680) lt!6678)) (mask!4692 (ite c!2483 (_2!447 lt!6680) lt!6678)) (ite c!2561 (ite c!2565 lt!6949 lt!6938) (extraKeys!1622 (ite c!2483 (_2!447 lt!6680) lt!6678))) (ite (and c!2561 c!2565) (ite c!2483 (minValue!1646 (v!1573 (underlying!104 thiss!938))) (ite c!2482 (zeroValue!1646 (v!1573 (underlying!104 thiss!938))) (minValue!1646 (v!1573 (underlying!104 thiss!938))))) (zeroValue!1646 (ite c!2483 (_2!447 lt!6680) lt!6678))) (ite c!2561 (ite c!2565 (minValue!1646 (ite c!2483 (_2!447 lt!6680) lt!6678)) (ite c!2483 (minValue!1646 (v!1573 (underlying!104 thiss!938))) (ite c!2482 (zeroValue!1646 (v!1573 (underlying!104 thiss!938))) (minValue!1646 (v!1573 (underlying!104 thiss!938)))))) (minValue!1646 (ite c!2483 (_2!447 lt!6680) lt!6678))) #b00000000000000000000000000000000 (defaultEntry!1719 (ite c!2483 (_2!447 lt!6680) lt!6678))))))

(declare-fun lt!7306 () (_ BitVec 64))

(assert (=> b!22134 (= lt!7306 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!7293 () (_ BitVec 64))

(assert (=> b!22134 (= lt!7293 (select (arr!580 (_keys!3140 (ite c!2483 (_2!447 lt!6680) lt!6678))) #b00000000000000000000000000000000))))

(assert (=> b!22134 (= lt!7307 (addApplyDifferent!13 lt!7289 lt!7306 (ite c!2561 (ite c!2565 (minValue!1646 (ite c!2483 (_2!447 lt!6680) lt!6678)) (ite c!2483 (minValue!1646 (v!1573 (underlying!104 thiss!938))) (ite c!2482 (zeroValue!1646 (v!1573 (underlying!104 thiss!938))) (minValue!1646 (v!1573 (underlying!104 thiss!938)))))) (minValue!1646 (ite c!2483 (_2!447 lt!6680) lt!6678))) lt!7293))))

(assert (=> b!22134 (= (apply!28 (+!42 lt!7289 (tuple2!891 lt!7306 (ite c!2561 (ite c!2565 (minValue!1646 (ite c!2483 (_2!447 lt!6680) lt!6678)) (ite c!2483 (minValue!1646 (v!1573 (underlying!104 thiss!938))) (ite c!2482 (zeroValue!1646 (v!1573 (underlying!104 thiss!938))) (minValue!1646 (v!1573 (underlying!104 thiss!938)))))) (minValue!1646 (ite c!2483 (_2!447 lt!6680) lt!6678))))) lt!7293) (apply!28 lt!7289 lt!7293))))

(declare-fun bm!1538 () Bool)

(assert (=> bm!1538 (= call!1535 call!1538)))

(assert (= (and d!3851 c!2665) b!22121))

(assert (= (and d!3851 (not c!2665)) b!22124))

(assert (= (and b!22124 c!2668) b!22116))

(assert (= (and b!22124 (not c!2668)) b!22131))

(assert (= (and b!22131 c!2663) b!22120))

(assert (= (and b!22131 (not c!2663)) b!22129))

(assert (= (or b!22120 b!22129) bm!1535))

(assert (= (or b!22116 bm!1535) bm!1538))

(assert (= (or b!22116 b!22120) bm!1533))

(assert (= (or b!22121 bm!1538) bm!1537))

(assert (= (or b!22121 bm!1533) bm!1536))

(assert (= (and d!3851 res!14066) b!22117))

(assert (= (and d!3851 c!2666) b!22134))

(assert (= (and d!3851 (not c!2666)) b!22126))

(assert (= (and d!3851 res!14064) b!22123))

(assert (= (and b!22123 res!14068) b!22122))

(assert (= (and b!22123 (not res!14071)) b!22118))

(assert (= (and b!22118 res!14069) b!22133))

(assert (= (and b!22123 res!14065) b!22128))

(assert (= (and b!22128 c!2664) b!22125))

(assert (= (and b!22128 (not c!2664)) b!22114))

(assert (= (and b!22125 res!14063) b!22119))

(assert (= (or b!22125 b!22114) bm!1534))

(assert (= (and b!22128 res!14067) b!22132))

(assert (= (and b!22132 c!2667) b!22130))

(assert (= (and b!22132 (not c!2667)) b!22127))

(assert (= (and b!22130 res!14070) b!22115))

(assert (= (or b!22130 b!22127) bm!1532))

(declare-fun b_lambda!1549 () Bool)

(assert (=> (not b_lambda!1549) (not b!22133)))

(assert (=> b!22133 t!3225))

(declare-fun b_and!1447 () Bool)

(assert (= b_and!1445 (and (=> t!3225 result!1079) b_and!1447)))

(declare-fun m!15780 () Bool)

(assert (=> bm!1536 m!15780))

(declare-fun m!15782 () Bool)

(assert (=> bm!1534 m!15782))

(declare-fun m!15784 () Bool)

(assert (=> b!22115 m!15784))

(assert (=> b!22122 m!15253))

(assert (=> b!22122 m!15253))

(assert (=> b!22122 m!15638))

(declare-fun m!15786 () Bool)

(assert (=> b!22121 m!15786))

(declare-fun m!15788 () Bool)

(assert (=> b!22119 m!15788))

(declare-fun m!15790 () Bool)

(assert (=> bm!1532 m!15790))

(declare-fun m!15792 () Bool)

(assert (=> bm!1537 m!15792))

(assert (=> b!22117 m!15253))

(assert (=> b!22117 m!15253))

(assert (=> b!22117 m!15638))

(assert (=> d!3851 m!15303))

(declare-fun m!15794 () Bool)

(assert (=> b!22134 m!15794))

(declare-fun m!15796 () Bool)

(assert (=> b!22134 m!15796))

(assert (=> b!22134 m!15253))

(declare-fun m!15798 () Bool)

(assert (=> b!22134 m!15798))

(assert (=> b!22134 m!15794))

(assert (=> b!22134 m!15792))

(declare-fun m!15800 () Bool)

(assert (=> b!22134 m!15800))

(declare-fun m!15802 () Bool)

(assert (=> b!22134 m!15802))

(declare-fun m!15804 () Bool)

(assert (=> b!22134 m!15804))

(declare-fun m!15806 () Bool)

(assert (=> b!22134 m!15806))

(assert (=> b!22134 m!15798))

(declare-fun m!15808 () Bool)

(assert (=> b!22134 m!15808))

(declare-fun m!15810 () Bool)

(assert (=> b!22134 m!15810))

(declare-fun m!15812 () Bool)

(assert (=> b!22134 m!15812))

(declare-fun m!15814 () Bool)

(assert (=> b!22134 m!15814))

(assert (=> b!22134 m!15810))

(declare-fun m!15816 () Bool)

(assert (=> b!22134 m!15816))

(declare-fun m!15818 () Bool)

(assert (=> b!22134 m!15818))

(assert (=> b!22134 m!15812))

(declare-fun m!15820 () Bool)

(assert (=> b!22134 m!15820))

(declare-fun m!15822 () Bool)

(assert (=> b!22134 m!15822))

(assert (=> b!22133 m!15253))

(assert (=> b!22133 m!15253))

(declare-fun m!15824 () Bool)

(assert (=> b!22133 m!15824))

(declare-fun m!15826 () Bool)

(assert (=> b!22133 m!15826))

(assert (=> b!22133 m!15682))

(declare-fun m!15828 () Bool)

(assert (=> b!22133 m!15828))

(assert (=> b!22133 m!15826))

(assert (=> b!22133 m!15682))

(assert (=> b!22118 m!15253))

(assert (=> b!22118 m!15253))

(declare-fun m!15830 () Bool)

(assert (=> b!22118 m!15830))

(assert (=> bm!1455 d!3851))

(declare-fun d!3853 () Bool)

(declare-fun e!14363 () Bool)

(assert (=> d!3853 e!14363))

(declare-fun res!14072 () Bool)

(assert (=> d!3853 (=> res!14072 e!14363)))

(declare-fun lt!7310 () Bool)

(assert (=> d!3853 (= res!14072 (not lt!7310))))

(declare-fun lt!7311 () Bool)

(assert (=> d!3853 (= lt!7310 lt!7311)))

(declare-fun lt!7312 () Unit!454)

(declare-fun e!14364 () Unit!454)

(assert (=> d!3853 (= lt!7312 e!14364)))

(declare-fun c!2669 () Bool)

(assert (=> d!3853 (= c!2669 lt!7311)))

(assert (=> d!3853 (= lt!7311 (containsKey!24 (toList!288 call!1434) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!3853 (= (contains!215 call!1434 #b0000000000000000000000000000000000000000000000000000000000000000) lt!7310)))

(declare-fun b!22135 () Bool)

(declare-fun lt!7313 () Unit!454)

(assert (=> b!22135 (= e!14364 lt!7313)))

(assert (=> b!22135 (= lt!7313 (lemmaContainsKeyImpliesGetValueByKeyDefined!21 (toList!288 call!1434) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!22135 (isDefined!22 (getValueByKey!60 (toList!288 call!1434) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!22136 () Bool)

(declare-fun Unit!482 () Unit!454)

(assert (=> b!22136 (= e!14364 Unit!482)))

(declare-fun b!22137 () Bool)

(assert (=> b!22137 (= e!14363 (isDefined!22 (getValueByKey!60 (toList!288 call!1434) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!3853 c!2669) b!22135))

(assert (= (and d!3853 (not c!2669)) b!22136))

(assert (= (and d!3853 (not res!14072)) b!22137))

(declare-fun m!15832 () Bool)

(assert (=> d!3853 m!15832))

(declare-fun m!15834 () Bool)

(assert (=> b!22135 m!15834))

(declare-fun m!15836 () Bool)

(assert (=> b!22135 m!15836))

(assert (=> b!22135 m!15836))

(declare-fun m!15838 () Bool)

(assert (=> b!22135 m!15838))

(assert (=> b!22137 m!15836))

(assert (=> b!22137 m!15836))

(assert (=> b!22137 m!15838))

(assert (=> b!21675 d!3853))

(declare-fun bm!1539 () Bool)

(declare-fun call!1548 () Bool)

(declare-fun lt!7316 () ListLongMap!545)

(assert (=> bm!1539 (= call!1548 (contains!215 lt!7316 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun bm!1540 () Bool)

(declare-fun call!1544 () ListLongMap!545)

(declare-fun call!1546 () ListLongMap!545)

(assert (=> bm!1540 (= call!1544 call!1546)))

(declare-fun b!22138 () Bool)

(declare-fun e!14369 () Bool)

(declare-fun call!1543 () Bool)

(assert (=> b!22138 (= e!14369 (not call!1543))))

(declare-fun bm!1541 () Bool)

(assert (=> bm!1541 (= call!1543 (contains!215 lt!7316 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!14374 () Bool)

(declare-fun b!22139 () Bool)

(assert (=> b!22139 (= e!14374 (= (apply!28 lt!7316 #b1000000000000000000000000000000000000000000000000000000000000000) (minValue!1646 (ite c!2483 (_2!447 lt!6680) lt!6678))))))

(declare-fun b!22140 () Bool)

(declare-fun e!14376 () ListLongMap!545)

(assert (=> b!22140 (= e!14376 call!1544)))

(declare-fun e!14370 () Bool)

(declare-fun b!22141 () Bool)

(assert (=> b!22141 (= e!14370 (validKeyInArray!0 (select (arr!580 (_keys!3140 (ite c!2483 (_2!447 lt!6680) lt!6678))) #b00000000000000000000000000000000)))))

(declare-fun bm!1542 () Bool)

(declare-fun call!1547 () ListLongMap!545)

(declare-fun call!1542 () ListLongMap!545)

(assert (=> bm!1542 (= call!1547 call!1542)))

(declare-fun b!22142 () Bool)

(declare-fun e!14367 () Bool)

(declare-fun e!14373 () Bool)

(assert (=> b!22142 (= e!14367 e!14373)))

(declare-fun res!14079 () Bool)

(assert (=> b!22142 (=> (not res!14079) (not e!14373))))

(assert (=> b!22142 (= res!14079 (contains!215 lt!7316 (select (arr!580 (_keys!3140 (ite c!2483 (_2!447 lt!6680) lt!6678))) #b00000000000000000000000000000000)))))

(assert (=> b!22142 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!673 (_keys!3140 (ite c!2483 (_2!447 lt!6680) lt!6678)))))))

(declare-fun b!22143 () Bool)

(declare-fun e!14368 () Bool)

(assert (=> b!22143 (= e!14368 (= (apply!28 lt!7316 #b0000000000000000000000000000000000000000000000000000000000000000) (zeroValue!1646 (ite c!2483 (_2!447 lt!6680) lt!6678))))))

(declare-fun b!22144 () Bool)

(declare-fun e!14371 () ListLongMap!545)

(assert (=> b!22144 (= e!14371 call!1544)))

(declare-fun b!22145 () Bool)

(declare-fun e!14372 () ListLongMap!545)

(assert (=> b!22145 (= e!14372 (+!42 call!1546 (tuple2!891 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!1646 (ite c!2483 (_2!447 lt!6680) lt!6678)))))))

(declare-fun e!14365 () Bool)

(declare-fun b!22146 () Bool)

(assert (=> b!22146 (= e!14365 (validKeyInArray!0 (select (arr!580 (_keys!3140 (ite c!2483 (_2!447 lt!6680) lt!6678))) #b00000000000000000000000000000000)))))

(declare-fun b!22147 () Bool)

(declare-fun res!14075 () Bool)

(declare-fun e!14366 () Bool)

(assert (=> b!22147 (=> (not res!14075) (not e!14366))))

(assert (=> b!22147 (= res!14075 e!14367)))

(declare-fun res!14081 () Bool)

(assert (=> b!22147 (=> res!14081 e!14367)))

(assert (=> b!22147 (= res!14081 (not e!14365))))

(declare-fun res!14078 () Bool)

(assert (=> b!22147 (=> (not res!14078) (not e!14365))))

(assert (=> b!22147 (= res!14078 (bvslt #b00000000000000000000000000000000 (size!673 (_keys!3140 (ite c!2483 (_2!447 lt!6680) lt!6678)))))))

(declare-fun b!22148 () Bool)

(assert (=> b!22148 (= e!14372 e!14376)))

(declare-fun c!2675 () Bool)

(assert (=> b!22148 (= c!2675 (and (not (= (bvand (extraKeys!1622 (ite c!2483 (_2!447 lt!6680) lt!6678)) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand (extraKeys!1622 (ite c!2483 (_2!447 lt!6680) lt!6678)) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun d!3855 () Bool)

(assert (=> d!3855 e!14366))

(declare-fun res!14074 () Bool)

(assert (=> d!3855 (=> (not res!14074) (not e!14366))))

(assert (=> d!3855 (= res!14074 (or (bvsge #b00000000000000000000000000000000 (size!673 (_keys!3140 (ite c!2483 (_2!447 lt!6680) lt!6678)))) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!673 (_keys!3140 (ite c!2483 (_2!447 lt!6680) lt!6678)))))))))

(declare-fun lt!7320 () ListLongMap!545)

(assert (=> d!3855 (= lt!7316 lt!7320)))

(declare-fun lt!7334 () Unit!454)

(declare-fun e!14375 () Unit!454)

(assert (=> d!3855 (= lt!7334 e!14375)))

(declare-fun c!2673 () Bool)

(assert (=> d!3855 (= c!2673 e!14370)))

(declare-fun res!14076 () Bool)

(assert (=> d!3855 (=> (not res!14076) (not e!14370))))

(assert (=> d!3855 (= res!14076 (bvslt #b00000000000000000000000000000000 (size!673 (_keys!3140 (ite c!2483 (_2!447 lt!6680) lt!6678)))))))

(assert (=> d!3855 (= lt!7320 e!14372)))

(declare-fun c!2672 () Bool)

(assert (=> d!3855 (= c!2672 (and (not (= (bvand (extraKeys!1622 (ite c!2483 (_2!447 lt!6680) lt!6678)) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (extraKeys!1622 (ite c!2483 (_2!447 lt!6680) lt!6678)) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!3855 (validMask!0 (mask!4692 (ite c!2483 (_2!447 lt!6680) lt!6678)))))

(assert (=> d!3855 (= (getCurrentListMap!117 (_keys!3140 (ite c!2483 (_2!447 lt!6680) lt!6678)) (ite c!2561 (_values!1708 (ite c!2483 (_2!447 lt!6680) lt!6678)) (array!1222 (store (arr!579 (_values!1708 (ite c!2483 (_2!447 lt!6680) lt!6678))) (index!2345 lt!6934) (ValueCellFull!300 (ite c!2483 (minValue!1646 (v!1573 (underlying!104 thiss!938))) (ite c!2482 (zeroValue!1646 (v!1573 (underlying!104 thiss!938))) (minValue!1646 (v!1573 (underlying!104 thiss!938))))))) (size!672 (_values!1708 (ite c!2483 (_2!447 lt!6680) lt!6678))))) (mask!4692 (ite c!2483 (_2!447 lt!6680) lt!6678)) (extraKeys!1622 (ite c!2483 (_2!447 lt!6680) lt!6678)) (zeroValue!1646 (ite c!2483 (_2!447 lt!6680) lt!6678)) (minValue!1646 (ite c!2483 (_2!447 lt!6680) lt!6678)) #b00000000000000000000000000000000 (defaultEntry!1719 (ite c!2483 (_2!447 lt!6680) lt!6678))) lt!7316)))

(declare-fun b!22149 () Bool)

(assert (=> b!22149 (= e!14369 e!14368)))

(declare-fun res!14073 () Bool)

(assert (=> b!22149 (= res!14073 call!1543)))

(assert (=> b!22149 (=> (not res!14073) (not e!14368))))

(declare-fun b!22150 () Bool)

(declare-fun Unit!483 () Unit!454)

(assert (=> b!22150 (= e!14375 Unit!483)))

(declare-fun bm!1543 () Bool)

(declare-fun call!1545 () ListLongMap!545)

(assert (=> bm!1543 (= call!1546 (+!42 (ite c!2672 call!1545 (ite c!2675 call!1542 call!1547)) (ite (or c!2672 c!2675) (tuple2!891 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!1646 (ite c!2483 (_2!447 lt!6680) lt!6678))) (tuple2!891 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!1646 (ite c!2483 (_2!447 lt!6680) lt!6678))))))))

(declare-fun b!22151 () Bool)

(declare-fun e!14377 () Bool)

(assert (=> b!22151 (= e!14377 (not call!1548))))

(declare-fun b!22152 () Bool)

(declare-fun res!14077 () Bool)

(assert (=> b!22152 (=> (not res!14077) (not e!14366))))

(assert (=> b!22152 (= res!14077 e!14369)))

(declare-fun c!2671 () Bool)

(assert (=> b!22152 (= c!2671 (not (= (bvand (extraKeys!1622 (ite c!2483 (_2!447 lt!6680) lt!6678)) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!22153 () Bool)

(assert (=> b!22153 (= e!14371 call!1547)))

(declare-fun bm!1544 () Bool)

(assert (=> bm!1544 (= call!1545 (getCurrentListMapNoExtraKeys!13 (_keys!3140 (ite c!2483 (_2!447 lt!6680) lt!6678)) (ite c!2561 (_values!1708 (ite c!2483 (_2!447 lt!6680) lt!6678)) (array!1222 (store (arr!579 (_values!1708 (ite c!2483 (_2!447 lt!6680) lt!6678))) (index!2345 lt!6934) (ValueCellFull!300 (ite c!2483 (minValue!1646 (v!1573 (underlying!104 thiss!938))) (ite c!2482 (zeroValue!1646 (v!1573 (underlying!104 thiss!938))) (minValue!1646 (v!1573 (underlying!104 thiss!938))))))) (size!672 (_values!1708 (ite c!2483 (_2!447 lt!6680) lt!6678))))) (mask!4692 (ite c!2483 (_2!447 lt!6680) lt!6678)) (extraKeys!1622 (ite c!2483 (_2!447 lt!6680) lt!6678)) (zeroValue!1646 (ite c!2483 (_2!447 lt!6680) lt!6678)) (minValue!1646 (ite c!2483 (_2!447 lt!6680) lt!6678)) #b00000000000000000000000000000000 (defaultEntry!1719 (ite c!2483 (_2!447 lt!6680) lt!6678))))))

(declare-fun b!22154 () Bool)

(assert (=> b!22154 (= e!14377 e!14374)))

(declare-fun res!14080 () Bool)

(assert (=> b!22154 (= res!14080 call!1548)))

(assert (=> b!22154 (=> (not res!14080) (not e!14374))))

(declare-fun b!22155 () Bool)

(declare-fun c!2670 () Bool)

(assert (=> b!22155 (= c!2670 (and (not (= (bvand (extraKeys!1622 (ite c!2483 (_2!447 lt!6680) lt!6678)) #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand (extraKeys!1622 (ite c!2483 (_2!447 lt!6680) lt!6678)) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!22155 (= e!14376 e!14371)))

(declare-fun b!22156 () Bool)

(assert (=> b!22156 (= e!14366 e!14377)))

(declare-fun c!2674 () Bool)

(assert (=> b!22156 (= c!2674 (not (= (bvand (extraKeys!1622 (ite c!2483 (_2!447 lt!6680) lt!6678)) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!22157 () Bool)

(assert (=> b!22157 (= e!14373 (= (apply!28 lt!7316 (select (arr!580 (_keys!3140 (ite c!2483 (_2!447 lt!6680) lt!6678))) #b00000000000000000000000000000000)) (get!377 (select (arr!579 (ite c!2561 (_values!1708 (ite c!2483 (_2!447 lt!6680) lt!6678)) (array!1222 (store (arr!579 (_values!1708 (ite c!2483 (_2!447 lt!6680) lt!6678))) (index!2345 lt!6934) (ValueCellFull!300 (ite c!2483 (minValue!1646 (v!1573 (underlying!104 thiss!938))) (ite c!2482 (zeroValue!1646 (v!1573 (underlying!104 thiss!938))) (minValue!1646 (v!1573 (underlying!104 thiss!938))))))) (size!672 (_values!1708 (ite c!2483 (_2!447 lt!6680) lt!6678)))))) #b00000000000000000000000000000000) (dynLambda!141 (defaultEntry!1719 (ite c!2483 (_2!447 lt!6680) lt!6678)) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!22157 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!672 (ite c!2561 (_values!1708 (ite c!2483 (_2!447 lt!6680) lt!6678)) (array!1222 (store (arr!579 (_values!1708 (ite c!2483 (_2!447 lt!6680) lt!6678))) (index!2345 lt!6934) (ValueCellFull!300 (ite c!2483 (minValue!1646 (v!1573 (underlying!104 thiss!938))) (ite c!2482 (zeroValue!1646 (v!1573 (underlying!104 thiss!938))) (minValue!1646 (v!1573 (underlying!104 thiss!938))))))) (size!672 (_values!1708 (ite c!2483 (_2!447 lt!6680) lt!6678))))))))))

(assert (=> b!22157 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!673 (_keys!3140 (ite c!2483 (_2!447 lt!6680) lt!6678)))))))

(declare-fun b!22158 () Bool)

(declare-fun lt!7333 () Unit!454)

(assert (=> b!22158 (= e!14375 lt!7333)))

(declare-fun lt!7326 () ListLongMap!545)

(assert (=> b!22158 (= lt!7326 (getCurrentListMapNoExtraKeys!13 (_keys!3140 (ite c!2483 (_2!447 lt!6680) lt!6678)) (ite c!2561 (_values!1708 (ite c!2483 (_2!447 lt!6680) lt!6678)) (array!1222 (store (arr!579 (_values!1708 (ite c!2483 (_2!447 lt!6680) lt!6678))) (index!2345 lt!6934) (ValueCellFull!300 (ite c!2483 (minValue!1646 (v!1573 (underlying!104 thiss!938))) (ite c!2482 (zeroValue!1646 (v!1573 (underlying!104 thiss!938))) (minValue!1646 (v!1573 (underlying!104 thiss!938))))))) (size!672 (_values!1708 (ite c!2483 (_2!447 lt!6680) lt!6678))))) (mask!4692 (ite c!2483 (_2!447 lt!6680) lt!6678)) (extraKeys!1622 (ite c!2483 (_2!447 lt!6680) lt!6678)) (zeroValue!1646 (ite c!2483 (_2!447 lt!6680) lt!6678)) (minValue!1646 (ite c!2483 (_2!447 lt!6680) lt!6678)) #b00000000000000000000000000000000 (defaultEntry!1719 (ite c!2483 (_2!447 lt!6680) lt!6678))))))

(declare-fun lt!7318 () (_ BitVec 64))

(assert (=> b!22158 (= lt!7318 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!7321 () (_ BitVec 64))

(assert (=> b!22158 (= lt!7321 (select (arr!580 (_keys!3140 (ite c!2483 (_2!447 lt!6680) lt!6678))) #b00000000000000000000000000000000))))

(declare-fun lt!7330 () Unit!454)

(assert (=> b!22158 (= lt!7330 (addStillContains!13 lt!7326 lt!7318 (zeroValue!1646 (ite c!2483 (_2!447 lt!6680) lt!6678)) lt!7321))))

(assert (=> b!22158 (contains!215 (+!42 lt!7326 (tuple2!891 lt!7318 (zeroValue!1646 (ite c!2483 (_2!447 lt!6680) lt!6678)))) lt!7321)))

(declare-fun lt!7323 () Unit!454)

(assert (=> b!22158 (= lt!7323 lt!7330)))

(declare-fun lt!7325 () ListLongMap!545)

(assert (=> b!22158 (= lt!7325 (getCurrentListMapNoExtraKeys!13 (_keys!3140 (ite c!2483 (_2!447 lt!6680) lt!6678)) (ite c!2561 (_values!1708 (ite c!2483 (_2!447 lt!6680) lt!6678)) (array!1222 (store (arr!579 (_values!1708 (ite c!2483 (_2!447 lt!6680) lt!6678))) (index!2345 lt!6934) (ValueCellFull!300 (ite c!2483 (minValue!1646 (v!1573 (underlying!104 thiss!938))) (ite c!2482 (zeroValue!1646 (v!1573 (underlying!104 thiss!938))) (minValue!1646 (v!1573 (underlying!104 thiss!938))))))) (size!672 (_values!1708 (ite c!2483 (_2!447 lt!6680) lt!6678))))) (mask!4692 (ite c!2483 (_2!447 lt!6680) lt!6678)) (extraKeys!1622 (ite c!2483 (_2!447 lt!6680) lt!6678)) (zeroValue!1646 (ite c!2483 (_2!447 lt!6680) lt!6678)) (minValue!1646 (ite c!2483 (_2!447 lt!6680) lt!6678)) #b00000000000000000000000000000000 (defaultEntry!1719 (ite c!2483 (_2!447 lt!6680) lt!6678))))))

(declare-fun lt!7322 () (_ BitVec 64))

(assert (=> b!22158 (= lt!7322 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!7317 () (_ BitVec 64))

(assert (=> b!22158 (= lt!7317 (select (arr!580 (_keys!3140 (ite c!2483 (_2!447 lt!6680) lt!6678))) #b00000000000000000000000000000000))))

(declare-fun lt!7324 () Unit!454)

(assert (=> b!22158 (= lt!7324 (addApplyDifferent!13 lt!7325 lt!7322 (minValue!1646 (ite c!2483 (_2!447 lt!6680) lt!6678)) lt!7317))))

(assert (=> b!22158 (= (apply!28 (+!42 lt!7325 (tuple2!891 lt!7322 (minValue!1646 (ite c!2483 (_2!447 lt!6680) lt!6678)))) lt!7317) (apply!28 lt!7325 lt!7317))))

(declare-fun lt!7327 () Unit!454)

(assert (=> b!22158 (= lt!7327 lt!7324)))

(declare-fun lt!7328 () ListLongMap!545)

(assert (=> b!22158 (= lt!7328 (getCurrentListMapNoExtraKeys!13 (_keys!3140 (ite c!2483 (_2!447 lt!6680) lt!6678)) (ite c!2561 (_values!1708 (ite c!2483 (_2!447 lt!6680) lt!6678)) (array!1222 (store (arr!579 (_values!1708 (ite c!2483 (_2!447 lt!6680) lt!6678))) (index!2345 lt!6934) (ValueCellFull!300 (ite c!2483 (minValue!1646 (v!1573 (underlying!104 thiss!938))) (ite c!2482 (zeroValue!1646 (v!1573 (underlying!104 thiss!938))) (minValue!1646 (v!1573 (underlying!104 thiss!938))))))) (size!672 (_values!1708 (ite c!2483 (_2!447 lt!6680) lt!6678))))) (mask!4692 (ite c!2483 (_2!447 lt!6680) lt!6678)) (extraKeys!1622 (ite c!2483 (_2!447 lt!6680) lt!6678)) (zeroValue!1646 (ite c!2483 (_2!447 lt!6680) lt!6678)) (minValue!1646 (ite c!2483 (_2!447 lt!6680) lt!6678)) #b00000000000000000000000000000000 (defaultEntry!1719 (ite c!2483 (_2!447 lt!6680) lt!6678))))))

(declare-fun lt!7335 () (_ BitVec 64))

(assert (=> b!22158 (= lt!7335 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!7331 () (_ BitVec 64))

(assert (=> b!22158 (= lt!7331 (select (arr!580 (_keys!3140 (ite c!2483 (_2!447 lt!6680) lt!6678))) #b00000000000000000000000000000000))))

(declare-fun lt!7314 () Unit!454)

(assert (=> b!22158 (= lt!7314 (addApplyDifferent!13 lt!7328 lt!7335 (zeroValue!1646 (ite c!2483 (_2!447 lt!6680) lt!6678)) lt!7331))))

(assert (=> b!22158 (= (apply!28 (+!42 lt!7328 (tuple2!891 lt!7335 (zeroValue!1646 (ite c!2483 (_2!447 lt!6680) lt!6678)))) lt!7331) (apply!28 lt!7328 lt!7331))))

(declare-fun lt!7329 () Unit!454)

(assert (=> b!22158 (= lt!7329 lt!7314)))

(declare-fun lt!7315 () ListLongMap!545)

(assert (=> b!22158 (= lt!7315 (getCurrentListMapNoExtraKeys!13 (_keys!3140 (ite c!2483 (_2!447 lt!6680) lt!6678)) (ite c!2561 (_values!1708 (ite c!2483 (_2!447 lt!6680) lt!6678)) (array!1222 (store (arr!579 (_values!1708 (ite c!2483 (_2!447 lt!6680) lt!6678))) (index!2345 lt!6934) (ValueCellFull!300 (ite c!2483 (minValue!1646 (v!1573 (underlying!104 thiss!938))) (ite c!2482 (zeroValue!1646 (v!1573 (underlying!104 thiss!938))) (minValue!1646 (v!1573 (underlying!104 thiss!938))))))) (size!672 (_values!1708 (ite c!2483 (_2!447 lt!6680) lt!6678))))) (mask!4692 (ite c!2483 (_2!447 lt!6680) lt!6678)) (extraKeys!1622 (ite c!2483 (_2!447 lt!6680) lt!6678)) (zeroValue!1646 (ite c!2483 (_2!447 lt!6680) lt!6678)) (minValue!1646 (ite c!2483 (_2!447 lt!6680) lt!6678)) #b00000000000000000000000000000000 (defaultEntry!1719 (ite c!2483 (_2!447 lt!6680) lt!6678))))))

(declare-fun lt!7332 () (_ BitVec 64))

(assert (=> b!22158 (= lt!7332 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!7319 () (_ BitVec 64))

(assert (=> b!22158 (= lt!7319 (select (arr!580 (_keys!3140 (ite c!2483 (_2!447 lt!6680) lt!6678))) #b00000000000000000000000000000000))))

(assert (=> b!22158 (= lt!7333 (addApplyDifferent!13 lt!7315 lt!7332 (minValue!1646 (ite c!2483 (_2!447 lt!6680) lt!6678)) lt!7319))))

(assert (=> b!22158 (= (apply!28 (+!42 lt!7315 (tuple2!891 lt!7332 (minValue!1646 (ite c!2483 (_2!447 lt!6680) lt!6678)))) lt!7319) (apply!28 lt!7315 lt!7319))))

(declare-fun bm!1545 () Bool)

(assert (=> bm!1545 (= call!1542 call!1545)))

(assert (= (and d!3855 c!2672) b!22145))

(assert (= (and d!3855 (not c!2672)) b!22148))

(assert (= (and b!22148 c!2675) b!22140))

(assert (= (and b!22148 (not c!2675)) b!22155))

(assert (= (and b!22155 c!2670) b!22144))

(assert (= (and b!22155 (not c!2670)) b!22153))

(assert (= (or b!22144 b!22153) bm!1542))

(assert (= (or b!22140 bm!1542) bm!1545))

(assert (= (or b!22140 b!22144) bm!1540))

(assert (= (or b!22145 bm!1545) bm!1544))

(assert (= (or b!22145 bm!1540) bm!1543))

(assert (= (and d!3855 res!14076) b!22141))

(assert (= (and d!3855 c!2673) b!22158))

(assert (= (and d!3855 (not c!2673)) b!22150))

(assert (= (and d!3855 res!14074) b!22147))

(assert (= (and b!22147 res!14078) b!22146))

(assert (= (and b!22147 (not res!14081)) b!22142))

(assert (= (and b!22142 res!14079) b!22157))

(assert (= (and b!22147 res!14075) b!22152))

(assert (= (and b!22152 c!2671) b!22149))

(assert (= (and b!22152 (not c!2671)) b!22138))

(assert (= (and b!22149 res!14073) b!22143))

(assert (= (or b!22149 b!22138) bm!1541))

(assert (= (and b!22152 res!14077) b!22156))

(assert (= (and b!22156 c!2674) b!22154))

(assert (= (and b!22156 (not c!2674)) b!22151))

(assert (= (and b!22154 res!14080) b!22139))

(assert (= (or b!22154 b!22151) bm!1539))

(declare-fun b_lambda!1551 () Bool)

(assert (=> (not b_lambda!1551) (not b!22157)))

(assert (=> b!22157 t!3225))

(declare-fun b_and!1449 () Bool)

(assert (= b_and!1447 (and (=> t!3225 result!1079) b_and!1449)))

(declare-fun m!15840 () Bool)

(assert (=> bm!1543 m!15840))

(declare-fun m!15842 () Bool)

(assert (=> bm!1541 m!15842))

(declare-fun m!15844 () Bool)

(assert (=> b!22139 m!15844))

(assert (=> b!22146 m!15253))

(assert (=> b!22146 m!15253))

(assert (=> b!22146 m!15638))

(declare-fun m!15846 () Bool)

(assert (=> b!22145 m!15846))

(declare-fun m!15848 () Bool)

(assert (=> b!22143 m!15848))

(declare-fun m!15850 () Bool)

(assert (=> bm!1539 m!15850))

(declare-fun m!15852 () Bool)

(assert (=> bm!1544 m!15852))

(assert (=> b!22141 m!15253))

(assert (=> b!22141 m!15253))

(assert (=> b!22141 m!15638))

(assert (=> d!3855 m!15303))

(declare-fun m!15854 () Bool)

(assert (=> b!22158 m!15854))

(declare-fun m!15856 () Bool)

(assert (=> b!22158 m!15856))

(assert (=> b!22158 m!15253))

(declare-fun m!15858 () Bool)

(assert (=> b!22158 m!15858))

(assert (=> b!22158 m!15854))

(assert (=> b!22158 m!15852))

(declare-fun m!15860 () Bool)

(assert (=> b!22158 m!15860))

(declare-fun m!15862 () Bool)

(assert (=> b!22158 m!15862))

(declare-fun m!15864 () Bool)

(assert (=> b!22158 m!15864))

(declare-fun m!15866 () Bool)

(assert (=> b!22158 m!15866))

(assert (=> b!22158 m!15858))

(declare-fun m!15868 () Bool)

(assert (=> b!22158 m!15868))

(declare-fun m!15870 () Bool)

(assert (=> b!22158 m!15870))

(declare-fun m!15872 () Bool)

(assert (=> b!22158 m!15872))

(declare-fun m!15874 () Bool)

(assert (=> b!22158 m!15874))

(assert (=> b!22158 m!15870))

(declare-fun m!15876 () Bool)

(assert (=> b!22158 m!15876))

(declare-fun m!15878 () Bool)

(assert (=> b!22158 m!15878))

(assert (=> b!22158 m!15872))

(declare-fun m!15880 () Bool)

(assert (=> b!22158 m!15880))

(declare-fun m!15882 () Bool)

(assert (=> b!22158 m!15882))

(assert (=> b!22157 m!15253))

(assert (=> b!22157 m!15253))

(declare-fun m!15884 () Bool)

(assert (=> b!22157 m!15884))

(declare-fun m!15886 () Bool)

(assert (=> b!22157 m!15886))

(assert (=> b!22157 m!15682))

(declare-fun m!15888 () Bool)

(assert (=> b!22157 m!15888))

(assert (=> b!22157 m!15886))

(assert (=> b!22157 m!15682))

(assert (=> b!22142 m!15253))

(assert (=> b!22142 m!15253))

(declare-fun m!15890 () Bool)

(assert (=> b!22142 m!15890))

(assert (=> bm!1447 d!3855))

(assert (=> bm!1435 d!3771))

(declare-fun d!3857 () Bool)

(assert (=> d!3857 (= (map!398 lt!6678) (getCurrentListMap!117 (_keys!3140 lt!6678) (_values!1708 lt!6678) (mask!4692 lt!6678) (extraKeys!1622 lt!6678) (zeroValue!1646 lt!6678) (minValue!1646 lt!6678) #b00000000000000000000000000000000 (defaultEntry!1719 lt!6678)))))

(declare-fun bs!919 () Bool)

(assert (= bs!919 d!3857))

(assert (=> bs!919 m!15205))

(assert (=> bm!1429 d!3857))

(declare-fun d!3859 () Bool)

(declare-fun e!14378 () Bool)

(assert (=> d!3859 e!14378))

(declare-fun res!14082 () Bool)

(assert (=> d!3859 (=> (not res!14082) (not e!14378))))

(declare-fun lt!7339 () ListLongMap!545)

(assert (=> d!3859 (= res!14082 (contains!215 lt!7339 (_1!448 (ite (or c!2516 c!2519) (tuple2!891 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!1646 (v!1573 (underlying!104 thiss!938)))) (tuple2!891 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!1646 (v!1573 (underlying!104 thiss!938))))))))))

(declare-fun lt!7336 () List!558)

(assert (=> d!3859 (= lt!7339 (ListLongMap!546 lt!7336))))

(declare-fun lt!7338 () Unit!454)

(declare-fun lt!7337 () Unit!454)

(assert (=> d!3859 (= lt!7338 lt!7337)))

(assert (=> d!3859 (= (getValueByKey!60 lt!7336 (_1!448 (ite (or c!2516 c!2519) (tuple2!891 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!1646 (v!1573 (underlying!104 thiss!938)))) (tuple2!891 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!1646 (v!1573 (underlying!104 thiss!938))))))) (Some!65 (_2!448 (ite (or c!2516 c!2519) (tuple2!891 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!1646 (v!1573 (underlying!104 thiss!938)))) (tuple2!891 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!1646 (v!1573 (underlying!104 thiss!938))))))))))

(assert (=> d!3859 (= lt!7337 (lemmaContainsTupThenGetReturnValue!17 lt!7336 (_1!448 (ite (or c!2516 c!2519) (tuple2!891 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!1646 (v!1573 (underlying!104 thiss!938)))) (tuple2!891 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!1646 (v!1573 (underlying!104 thiss!938)))))) (_2!448 (ite (or c!2516 c!2519) (tuple2!891 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!1646 (v!1573 (underlying!104 thiss!938)))) (tuple2!891 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!1646 (v!1573 (underlying!104 thiss!938))))))))))

(assert (=> d!3859 (= lt!7336 (insertStrictlySorted!17 (toList!288 (ite c!2516 call!1372 (ite c!2519 call!1369 call!1374))) (_1!448 (ite (or c!2516 c!2519) (tuple2!891 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!1646 (v!1573 (underlying!104 thiss!938)))) (tuple2!891 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!1646 (v!1573 (underlying!104 thiss!938)))))) (_2!448 (ite (or c!2516 c!2519) (tuple2!891 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!1646 (v!1573 (underlying!104 thiss!938)))) (tuple2!891 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!1646 (v!1573 (underlying!104 thiss!938))))))))))

(assert (=> d!3859 (= (+!42 (ite c!2516 call!1372 (ite c!2519 call!1369 call!1374)) (ite (or c!2516 c!2519) (tuple2!891 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!1646 (v!1573 (underlying!104 thiss!938)))) (tuple2!891 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!1646 (v!1573 (underlying!104 thiss!938)))))) lt!7339)))

(declare-fun b!22159 () Bool)

(declare-fun res!14083 () Bool)

(assert (=> b!22159 (=> (not res!14083) (not e!14378))))

(assert (=> b!22159 (= res!14083 (= (getValueByKey!60 (toList!288 lt!7339) (_1!448 (ite (or c!2516 c!2519) (tuple2!891 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!1646 (v!1573 (underlying!104 thiss!938)))) (tuple2!891 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!1646 (v!1573 (underlying!104 thiss!938))))))) (Some!65 (_2!448 (ite (or c!2516 c!2519) (tuple2!891 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!1646 (v!1573 (underlying!104 thiss!938)))) (tuple2!891 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!1646 (v!1573 (underlying!104 thiss!938)))))))))))

(declare-fun b!22160 () Bool)

(assert (=> b!22160 (= e!14378 (contains!216 (toList!288 lt!7339) (ite (or c!2516 c!2519) (tuple2!891 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!1646 (v!1573 (underlying!104 thiss!938)))) (tuple2!891 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!1646 (v!1573 (underlying!104 thiss!938)))))))))

(assert (= (and d!3859 res!14082) b!22159))

(assert (= (and b!22159 res!14083) b!22160))

(declare-fun m!15892 () Bool)

(assert (=> d!3859 m!15892))

(declare-fun m!15894 () Bool)

(assert (=> d!3859 m!15894))

(declare-fun m!15896 () Bool)

(assert (=> d!3859 m!15896))

(declare-fun m!15898 () Bool)

(assert (=> d!3859 m!15898))

(declare-fun m!15900 () Bool)

(assert (=> b!22159 m!15900))

(declare-fun m!15902 () Bool)

(assert (=> b!22160 m!15902))

(assert (=> bm!1370 d!3859))

(declare-fun d!3861 () Bool)

(assert (=> d!3861 (= (inRange!0 (ite c!2547 (ite c!2552 (index!2345 lt!6900) (ite c!2545 (index!2344 lt!6919) (index!2347 lt!6919))) (ite c!2551 (index!2345 lt!6913) (ite c!2555 (index!2344 lt!6921) (index!2347 lt!6921)))) (mask!4692 lt!6678)) (and (bvsge (ite c!2547 (ite c!2552 (index!2345 lt!6900) (ite c!2545 (index!2344 lt!6919) (index!2347 lt!6919))) (ite c!2551 (index!2345 lt!6913) (ite c!2555 (index!2344 lt!6921) (index!2347 lt!6921)))) #b00000000000000000000000000000000) (bvslt (ite c!2547 (ite c!2552 (index!2345 lt!6900) (ite c!2545 (index!2344 lt!6919) (index!2347 lt!6919))) (ite c!2551 (index!2345 lt!6913) (ite c!2555 (index!2344 lt!6921) (index!2347 lt!6921)))) (bvadd (mask!4692 lt!6678) #b00000000000000000000000000000001))))))

(assert (=> bm!1427 d!3861))

(declare-fun b!22161 () Bool)

(declare-fun e!14382 () Bool)

(declare-fun e!14379 () Bool)

(assert (=> b!22161 (= e!14382 e!14379)))

(declare-fun c!2676 () Bool)

(assert (=> b!22161 (= c!2676 (validKeyInArray!0 (select (arr!580 (_keys!3140 (v!1573 (_2!446 lt!6677)))) #b00000000000000000000000000000000)))))

(declare-fun b!22162 () Bool)

(declare-fun e!14381 () Bool)

(assert (=> b!22162 (= e!14381 e!14382)))

(declare-fun res!14086 () Bool)

(assert (=> b!22162 (=> (not res!14086) (not e!14382))))

(declare-fun e!14380 () Bool)

(assert (=> b!22162 (= res!14086 (not e!14380))))

(declare-fun res!14085 () Bool)

(assert (=> b!22162 (=> (not res!14085) (not e!14380))))

(assert (=> b!22162 (= res!14085 (validKeyInArray!0 (select (arr!580 (_keys!3140 (v!1573 (_2!446 lt!6677)))) #b00000000000000000000000000000000)))))

(declare-fun b!22163 () Bool)

(assert (=> b!22163 (= e!14380 (contains!217 Nil!557 (select (arr!580 (_keys!3140 (v!1573 (_2!446 lt!6677)))) #b00000000000000000000000000000000)))))

(declare-fun bm!1546 () Bool)

(declare-fun call!1549 () Bool)

(assert (=> bm!1546 (= call!1549 (arrayNoDuplicates!0 (_keys!3140 (v!1573 (_2!446 lt!6677))) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!2676 (Cons!556 (select (arr!580 (_keys!3140 (v!1573 (_2!446 lt!6677)))) #b00000000000000000000000000000000) Nil!557) Nil!557)))))

(declare-fun b!22165 () Bool)

(assert (=> b!22165 (= e!14379 call!1549)))

(declare-fun b!22164 () Bool)

(assert (=> b!22164 (= e!14379 call!1549)))

(declare-fun d!3863 () Bool)

(declare-fun res!14084 () Bool)

(assert (=> d!3863 (=> res!14084 e!14381)))

(assert (=> d!3863 (= res!14084 (bvsge #b00000000000000000000000000000000 (size!673 (_keys!3140 (v!1573 (_2!446 lt!6677))))))))

(assert (=> d!3863 (= (arrayNoDuplicates!0 (_keys!3140 (v!1573 (_2!446 lt!6677))) #b00000000000000000000000000000000 Nil!557) e!14381)))

(assert (= (and d!3863 (not res!14084)) b!22162))

(assert (= (and b!22162 res!14085) b!22163))

(assert (= (and b!22162 res!14086) b!22161))

(assert (= (and b!22161 c!2676) b!22164))

(assert (= (and b!22161 (not c!2676)) b!22165))

(assert (= (or b!22164 b!22165) bm!1546))

(assert (=> b!22161 m!15313))

(assert (=> b!22161 m!15313))

(assert (=> b!22161 m!15321))

(assert (=> b!22162 m!15313))

(assert (=> b!22162 m!15313))

(assert (=> b!22162 m!15321))

(assert (=> b!22163 m!15313))

(assert (=> b!22163 m!15313))

(declare-fun m!15904 () Bool)

(assert (=> b!22163 m!15904))

(assert (=> bm!1546 m!15313))

(declare-fun m!15906 () Bool)

(assert (=> bm!1546 m!15906))

(assert (=> b!21498 d!3863))

(declare-fun d!3865 () Bool)

(assert (=> d!3865 (= (map!398 (_2!447 lt!6939)) (getCurrentListMap!117 (_keys!3140 (_2!447 lt!6939)) (_values!1708 (_2!447 lt!6939)) (mask!4692 (_2!447 lt!6939)) (extraKeys!1622 (_2!447 lt!6939)) (zeroValue!1646 (_2!447 lt!6939)) (minValue!1646 (_2!447 lt!6939)) #b00000000000000000000000000000000 (defaultEntry!1719 (_2!447 lt!6939))))))

(declare-fun bs!920 () Bool)

(assert (= bs!920 d!3865))

(declare-fun m!15908 () Bool)

(assert (=> bs!920 m!15908))

(assert (=> bm!1445 d!3865))

(declare-fun d!3867 () Bool)

(assert (=> d!3867 (= (apply!28 lt!6826 #b0000000000000000000000000000000000000000000000000000000000000000) (get!378 (getValueByKey!60 (toList!288 lt!6826) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun bs!921 () Bool)

(assert (= bs!921 d!3867))

(declare-fun m!15910 () Bool)

(assert (=> bs!921 m!15910))

(assert (=> bs!921 m!15910))

(declare-fun m!15912 () Bool)

(assert (=> bs!921 m!15912))

(assert (=> b!21575 d!3867))

(declare-fun d!3869 () Bool)

(assert (=> d!3869 (= (+!42 (getCurrentListMap!117 (_keys!3140 lt!6678) (_values!1708 lt!6678) (mask!4692 lt!6678) (extraKeys!1622 lt!6678) (zeroValue!1646 lt!6678) (minValue!1646 lt!6678) #b00000000000000000000000000000000 (defaultEntry!1719 lt!6678)) (tuple2!891 #b1000000000000000000000000000000000000000000000000000000000000000 (zeroValue!1646 (v!1573 (underlying!104 thiss!938))))) (getCurrentListMap!117 (_keys!3140 lt!6678) (_values!1708 lt!6678) (mask!4692 lt!6678) lt!6911 (zeroValue!1646 lt!6678) (zeroValue!1646 (v!1573 (underlying!104 thiss!938))) #b00000000000000000000000000000000 (defaultEntry!1719 lt!6678)))))

(declare-fun lt!7342 () Unit!454)

(declare-fun choose!202 (array!1223 array!1221 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!1157 V!1157 V!1157 Int) Unit!454)

(assert (=> d!3869 (= lt!7342 (choose!202 (_keys!3140 lt!6678) (_values!1708 lt!6678) (mask!4692 lt!6678) (extraKeys!1622 lt!6678) lt!6911 (zeroValue!1646 lt!6678) (minValue!1646 lt!6678) (zeroValue!1646 (v!1573 (underlying!104 thiss!938))) (defaultEntry!1719 lt!6678)))))

(assert (=> d!3869 (validMask!0 (mask!4692 lt!6678))))

(assert (=> d!3869 (= (lemmaChangeLongMinValueKeyThenAddPairToListMap!7 (_keys!3140 lt!6678) (_values!1708 lt!6678) (mask!4692 lt!6678) (extraKeys!1622 lt!6678) lt!6911 (zeroValue!1646 lt!6678) (minValue!1646 lt!6678) (zeroValue!1646 (v!1573 (underlying!104 thiss!938))) (defaultEntry!1719 lt!6678)) lt!7342)))

(declare-fun bs!922 () Bool)

(assert (= bs!922 d!3869))

(assert (=> bs!922 m!15205))

(assert (=> bs!922 m!15275))

(declare-fun m!15914 () Bool)

(assert (=> bs!922 m!15914))

(assert (=> bs!922 m!15205))

(declare-fun m!15916 () Bool)

(assert (=> bs!922 m!15916))

(declare-fun m!15918 () Bool)

(assert (=> bs!922 m!15918))

(assert (=> b!21674 d!3869))

(declare-fun d!3871 () Bool)

(declare-fun e!14383 () Bool)

(assert (=> d!3871 e!14383))

(declare-fun res!14087 () Bool)

(assert (=> d!3871 (=> (not res!14087) (not e!14383))))

(declare-fun lt!7346 () ListLongMap!545)

(assert (=> d!3871 (= res!14087 (contains!215 lt!7346 (_1!448 (tuple2!891 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!1646 (v!1573 (underlying!104 thiss!938)))))))))

(declare-fun lt!7343 () List!558)

(assert (=> d!3871 (= lt!7346 (ListLongMap!546 lt!7343))))

(declare-fun lt!7345 () Unit!454)

(declare-fun lt!7344 () Unit!454)

(assert (=> d!3871 (= lt!7345 lt!7344)))

(assert (=> d!3871 (= (getValueByKey!60 lt!7343 (_1!448 (tuple2!891 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!1646 (v!1573 (underlying!104 thiss!938)))))) (Some!65 (_2!448 (tuple2!891 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!1646 (v!1573 (underlying!104 thiss!938)))))))))

(assert (=> d!3871 (= lt!7344 (lemmaContainsTupThenGetReturnValue!17 lt!7343 (_1!448 (tuple2!891 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!1646 (v!1573 (underlying!104 thiss!938))))) (_2!448 (tuple2!891 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!1646 (v!1573 (underlying!104 thiss!938)))))))))

(assert (=> d!3871 (= lt!7343 (insertStrictlySorted!17 (toList!288 call!1373) (_1!448 (tuple2!891 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!1646 (v!1573 (underlying!104 thiss!938))))) (_2!448 (tuple2!891 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!1646 (v!1573 (underlying!104 thiss!938)))))))))

(assert (=> d!3871 (= (+!42 call!1373 (tuple2!891 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!1646 (v!1573 (underlying!104 thiss!938))))) lt!7346)))

(declare-fun b!22166 () Bool)

(declare-fun res!14088 () Bool)

(assert (=> b!22166 (=> (not res!14088) (not e!14383))))

(assert (=> b!22166 (= res!14088 (= (getValueByKey!60 (toList!288 lt!7346) (_1!448 (tuple2!891 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!1646 (v!1573 (underlying!104 thiss!938)))))) (Some!65 (_2!448 (tuple2!891 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!1646 (v!1573 (underlying!104 thiss!938))))))))))

(declare-fun b!22167 () Bool)

(assert (=> b!22167 (= e!14383 (contains!216 (toList!288 lt!7346) (tuple2!891 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!1646 (v!1573 (underlying!104 thiss!938))))))))

(assert (= (and d!3871 res!14087) b!22166))

(assert (= (and b!22166 res!14088) b!22167))

(declare-fun m!15920 () Bool)

(assert (=> d!3871 m!15920))

(declare-fun m!15922 () Bool)

(assert (=> d!3871 m!15922))

(declare-fun m!15924 () Bool)

(assert (=> d!3871 m!15924))

(declare-fun m!15926 () Bool)

(assert (=> d!3871 m!15926))

(declare-fun m!15928 () Bool)

(assert (=> b!22166 m!15928))

(declare-fun m!15930 () Bool)

(assert (=> b!22167 m!15930))

(assert (=> b!21577 d!3871))

(declare-fun d!3873 () Bool)

(declare-fun e!14384 () Bool)

(assert (=> d!3873 e!14384))

(declare-fun res!14089 () Bool)

(assert (=> d!3873 (=> (not res!14089) (not e!14384))))

(declare-fun lt!7350 () ListLongMap!545)

(assert (=> d!3873 (= res!14089 (contains!215 lt!7350 (_1!448 (tuple2!891 (ite c!2483 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!2482 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000)) (ite c!2483 (minValue!1646 (v!1573 (underlying!104 thiss!938))) (ite c!2482 (zeroValue!1646 (v!1573 (underlying!104 thiss!938))) (minValue!1646 (v!1573 (underlying!104 thiss!938)))))))))))

(declare-fun lt!7347 () List!558)

(assert (=> d!3873 (= lt!7350 (ListLongMap!546 lt!7347))))

(declare-fun lt!7349 () Unit!454)

(declare-fun lt!7348 () Unit!454)

(assert (=> d!3873 (= lt!7349 lt!7348)))

(assert (=> d!3873 (= (getValueByKey!60 lt!7347 (_1!448 (tuple2!891 (ite c!2483 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!2482 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000)) (ite c!2483 (minValue!1646 (v!1573 (underlying!104 thiss!938))) (ite c!2482 (zeroValue!1646 (v!1573 (underlying!104 thiss!938))) (minValue!1646 (v!1573 (underlying!104 thiss!938)))))))) (Some!65 (_2!448 (tuple2!891 (ite c!2483 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!2482 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000)) (ite c!2483 (minValue!1646 (v!1573 (underlying!104 thiss!938))) (ite c!2482 (zeroValue!1646 (v!1573 (underlying!104 thiss!938))) (minValue!1646 (v!1573 (underlying!104 thiss!938)))))))))))

(assert (=> d!3873 (= lt!7348 (lemmaContainsTupThenGetReturnValue!17 lt!7347 (_1!448 (tuple2!891 (ite c!2483 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!2482 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000)) (ite c!2483 (minValue!1646 (v!1573 (underlying!104 thiss!938))) (ite c!2482 (zeroValue!1646 (v!1573 (underlying!104 thiss!938))) (minValue!1646 (v!1573 (underlying!104 thiss!938))))))) (_2!448 (tuple2!891 (ite c!2483 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!2482 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000)) (ite c!2483 (minValue!1646 (v!1573 (underlying!104 thiss!938))) (ite c!2482 (zeroValue!1646 (v!1573 (underlying!104 thiss!938))) (minValue!1646 (v!1573 (underlying!104 thiss!938)))))))))))

(assert (=> d!3873 (= lt!7347 (insertStrictlySorted!17 (toList!288 call!1451) (_1!448 (tuple2!891 (ite c!2483 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!2482 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000)) (ite c!2483 (minValue!1646 (v!1573 (underlying!104 thiss!938))) (ite c!2482 (zeroValue!1646 (v!1573 (underlying!104 thiss!938))) (minValue!1646 (v!1573 (underlying!104 thiss!938))))))) (_2!448 (tuple2!891 (ite c!2483 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!2482 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000)) (ite c!2483 (minValue!1646 (v!1573 (underlying!104 thiss!938))) (ite c!2482 (zeroValue!1646 (v!1573 (underlying!104 thiss!938))) (minValue!1646 (v!1573 (underlying!104 thiss!938)))))))))))

(assert (=> d!3873 (= (+!42 call!1451 (tuple2!891 (ite c!2483 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!2482 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000)) (ite c!2483 (minValue!1646 (v!1573 (underlying!104 thiss!938))) (ite c!2482 (zeroValue!1646 (v!1573 (underlying!104 thiss!938))) (minValue!1646 (v!1573 (underlying!104 thiss!938))))))) lt!7350)))

(declare-fun b!22168 () Bool)

(declare-fun res!14090 () Bool)

(assert (=> b!22168 (=> (not res!14090) (not e!14384))))

(assert (=> b!22168 (= res!14090 (= (getValueByKey!60 (toList!288 lt!7350) (_1!448 (tuple2!891 (ite c!2483 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!2482 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000)) (ite c!2483 (minValue!1646 (v!1573 (underlying!104 thiss!938))) (ite c!2482 (zeroValue!1646 (v!1573 (underlying!104 thiss!938))) (minValue!1646 (v!1573 (underlying!104 thiss!938)))))))) (Some!65 (_2!448 (tuple2!891 (ite c!2483 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!2482 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000)) (ite c!2483 (minValue!1646 (v!1573 (underlying!104 thiss!938))) (ite c!2482 (zeroValue!1646 (v!1573 (underlying!104 thiss!938))) (minValue!1646 (v!1573 (underlying!104 thiss!938))))))))))))

(declare-fun b!22169 () Bool)

(assert (=> b!22169 (= e!14384 (contains!216 (toList!288 lt!7350) (tuple2!891 (ite c!2483 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!2482 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000)) (ite c!2483 (minValue!1646 (v!1573 (underlying!104 thiss!938))) (ite c!2482 (zeroValue!1646 (v!1573 (underlying!104 thiss!938))) (minValue!1646 (v!1573 (underlying!104 thiss!938))))))))))

(assert (= (and d!3873 res!14089) b!22168))

(assert (= (and b!22168 res!14090) b!22169))

(declare-fun m!15932 () Bool)

(assert (=> d!3873 m!15932))

(declare-fun m!15934 () Bool)

(assert (=> d!3873 m!15934))

(declare-fun m!15936 () Bool)

(assert (=> d!3873 m!15936))

(declare-fun m!15938 () Bool)

(assert (=> d!3873 m!15938))

(declare-fun m!15940 () Bool)

(assert (=> b!22168 m!15940))

(declare-fun m!15942 () Bool)

(assert (=> b!22169 m!15942))

(assert (=> b!21708 d!3873))

(declare-fun d!3875 () Bool)

(assert (=> d!3875 (= (head!827 (toList!288 (map!398 lt!6772))) (h!1120 (toList!288 (map!398 lt!6772))))))

(assert (=> b!21514 d!3875))

(assert (=> b!21514 d!3831))

(declare-fun d!3877 () Bool)

(declare-fun e!14387 () Bool)

(assert (=> d!3877 e!14387))

(declare-fun c!2679 () Bool)

(assert (=> d!3877 (= c!2679 (and (not (= (_1!448 lt!6764) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (_1!448 lt!6764) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun lt!7353 () Unit!454)

(declare-fun choose!203 (array!1223 array!1221 (_ BitVec 32) (_ BitVec 32) V!1157 V!1157 (_ BitVec 64) Int) Unit!454)

(assert (=> d!3877 (= lt!7353 (choose!203 lt!6754 (array!1222 ((as const (Array (_ BitVec 32) ValueCell!300)) EmptyCell!300) (bvadd (computeNewMask!22 thiss!938 (mask!4692 (v!1573 (underlying!104 thiss!938))) (_vacant!134 (v!1573 (underlying!104 thiss!938))) (_size!134 (v!1573 (underlying!104 thiss!938)))) #b00000000000000000000000000000001)) (computeNewMask!22 thiss!938 (mask!4692 (v!1573 (underlying!104 thiss!938))) (_vacant!134 (v!1573 (underlying!104 thiss!938))) (_size!134 (v!1573 (underlying!104 thiss!938)))) lt!6757 (dynLambda!141 (defaultEntry!1719 (v!1573 (underlying!104 thiss!938))) #b0000000000000000000000000000000000000000000000000000000000000000) (dynLambda!141 (defaultEntry!1719 (v!1573 (underlying!104 thiss!938))) #b0000000000000000000000000000000000000000000000000000000000000000) (_1!448 lt!6764) (defaultEntry!1719 (v!1573 (underlying!104 thiss!938)))))))

(assert (=> d!3877 (validMask!0 (computeNewMask!22 thiss!938 (mask!4692 (v!1573 (underlying!104 thiss!938))) (_vacant!134 (v!1573 (underlying!104 thiss!938))) (_size!134 (v!1573 (underlying!104 thiss!938)))))))

(assert (=> d!3877 (= (lemmaKeyInListMapIsInArray!90 lt!6754 (array!1222 ((as const (Array (_ BitVec 32) ValueCell!300)) EmptyCell!300) (bvadd (computeNewMask!22 thiss!938 (mask!4692 (v!1573 (underlying!104 thiss!938))) (_vacant!134 (v!1573 (underlying!104 thiss!938))) (_size!134 (v!1573 (underlying!104 thiss!938)))) #b00000000000000000000000000000001)) (computeNewMask!22 thiss!938 (mask!4692 (v!1573 (underlying!104 thiss!938))) (_vacant!134 (v!1573 (underlying!104 thiss!938))) (_size!134 (v!1573 (underlying!104 thiss!938)))) lt!6757 (dynLambda!141 (defaultEntry!1719 (v!1573 (underlying!104 thiss!938))) #b0000000000000000000000000000000000000000000000000000000000000000) (dynLambda!141 (defaultEntry!1719 (v!1573 (underlying!104 thiss!938))) #b0000000000000000000000000000000000000000000000000000000000000000) (_1!448 lt!6764) (defaultEntry!1719 (v!1573 (underlying!104 thiss!938)))) lt!7353)))

(declare-fun b!22174 () Bool)

(assert (=> b!22174 (= e!14387 (arrayContainsKey!0 lt!6754 (_1!448 lt!6764) #b00000000000000000000000000000000))))

(declare-fun b!22175 () Bool)

(assert (=> b!22175 (= e!14387 (ite (= (_1!448 lt!6764) #b0000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand lt!6757 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand lt!6757 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (= (and d!3877 c!2679) b!22174))

(assert (= (and d!3877 (not c!2679)) b!22175))

(assert (=> d!3877 m!14925))

(assert (=> d!3877 m!14979))

(assert (=> d!3877 m!14979))

(declare-fun m!15944 () Bool)

(assert (=> d!3877 m!15944))

(assert (=> d!3877 m!14925))

(assert (=> d!3877 m!14981))

(assert (=> b!22174 m!14997))

(assert (=> b!21514 d!3877))

(declare-fun d!3879 () Bool)

(declare-fun lt!7356 () (_ BitVec 32))

(assert (=> d!3879 (and (or (bvslt lt!7356 #b00000000000000000000000000000000) (bvsge lt!7356 (size!673 (array!1224 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) (bvadd (computeNewMask!22 thiss!938 (mask!4692 (v!1573 (underlying!104 thiss!938))) (_vacant!134 (v!1573 (underlying!104 thiss!938))) (_size!134 (v!1573 (underlying!104 thiss!938)))) #b00000000000000000000000000000001)))) (and (bvsge lt!7356 #b00000000000000000000000000000000) (bvslt lt!7356 (size!673 (array!1224 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) (bvadd (computeNewMask!22 thiss!938 (mask!4692 (v!1573 (underlying!104 thiss!938))) (_vacant!134 (v!1573 (underlying!104 thiss!938))) (_size!134 (v!1573 (underlying!104 thiss!938)))) #b00000000000000000000000000000001)))))) (bvsge lt!7356 #b00000000000000000000000000000000) (bvslt lt!7356 (size!673 (array!1224 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) (bvadd (computeNewMask!22 thiss!938 (mask!4692 (v!1573 (underlying!104 thiss!938))) (_vacant!134 (v!1573 (underlying!104 thiss!938))) (_size!134 (v!1573 (underlying!104 thiss!938)))) #b00000000000000000000000000000001)))) (= (select (arr!580 (array!1224 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) (bvadd (computeNewMask!22 thiss!938 (mask!4692 (v!1573 (underlying!104 thiss!938))) (_vacant!134 (v!1573 (underlying!104 thiss!938))) (_size!134 (v!1573 (underlying!104 thiss!938)))) #b00000000000000000000000000000001))) lt!7356) (_1!448 lt!6764)))))

(declare-fun e!14390 () (_ BitVec 32))

(assert (=> d!3879 (= lt!7356 e!14390)))

(declare-fun c!2682 () Bool)

(assert (=> d!3879 (= c!2682 (= (select (arr!580 (array!1224 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) (bvadd (computeNewMask!22 thiss!938 (mask!4692 (v!1573 (underlying!104 thiss!938))) (_vacant!134 (v!1573 (underlying!104 thiss!938))) (_size!134 (v!1573 (underlying!104 thiss!938)))) #b00000000000000000000000000000001))) #b00000000000000000000000000000000) (_1!448 lt!6764)))))

(assert (=> d!3879 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!673 (array!1224 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) (bvadd (computeNewMask!22 thiss!938 (mask!4692 (v!1573 (underlying!104 thiss!938))) (_vacant!134 (v!1573 (underlying!104 thiss!938))) (_size!134 (v!1573 (underlying!104 thiss!938)))) #b00000000000000000000000000000001)))) (bvslt (size!673 (array!1224 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) (bvadd (computeNewMask!22 thiss!938 (mask!4692 (v!1573 (underlying!104 thiss!938))) (_vacant!134 (v!1573 (underlying!104 thiss!938))) (_size!134 (v!1573 (underlying!104 thiss!938)))) #b00000000000000000000000000000001))) #b01111111111111111111111111111111))))

(assert (=> d!3879 (= (arrayScanForKey!0 (array!1224 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) (bvadd (computeNewMask!22 thiss!938 (mask!4692 (v!1573 (underlying!104 thiss!938))) (_vacant!134 (v!1573 (underlying!104 thiss!938))) (_size!134 (v!1573 (underlying!104 thiss!938)))) #b00000000000000000000000000000001)) (_1!448 lt!6764) #b00000000000000000000000000000000) lt!7356)))

(declare-fun b!22180 () Bool)

(assert (=> b!22180 (= e!14390 #b00000000000000000000000000000000)))

(declare-fun b!22181 () Bool)

(assert (=> b!22181 (= e!14390 (arrayScanForKey!0 (array!1224 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) (bvadd (computeNewMask!22 thiss!938 (mask!4692 (v!1573 (underlying!104 thiss!938))) (_vacant!134 (v!1573 (underlying!104 thiss!938))) (_size!134 (v!1573 (underlying!104 thiss!938)))) #b00000000000000000000000000000001)) (_1!448 lt!6764) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!3879 c!2682) b!22180))

(assert (= (and d!3879 (not c!2682)) b!22181))

(declare-fun m!15946 () Bool)

(assert (=> d!3879 m!15946))

(declare-fun m!15948 () Bool)

(assert (=> d!3879 m!15948))

(declare-fun m!15950 () Bool)

(assert (=> b!22181 m!15950))

(assert (=> b!21514 d!3879))

(declare-fun d!3881 () Bool)

(declare-fun e!14391 () Bool)

(assert (=> d!3881 e!14391))

(declare-fun res!14091 () Bool)

(assert (=> d!3881 (=> res!14091 e!14391)))

(declare-fun lt!7357 () Bool)

(assert (=> d!3881 (= res!14091 (not lt!7357))))

(declare-fun lt!7358 () Bool)

(assert (=> d!3881 (= lt!7357 lt!7358)))

(declare-fun lt!7359 () Unit!454)

(declare-fun e!14392 () Unit!454)

(assert (=> d!3881 (= lt!7359 e!14392)))

(declare-fun c!2683 () Bool)

(assert (=> d!3881 (= c!2683 lt!7358)))

(assert (=> d!3881 (= lt!7358 (containsKey!24 (toList!288 lt!6826) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!3881 (= (contains!215 lt!6826 #b0000000000000000000000000000000000000000000000000000000000000000) lt!7357)))

(declare-fun b!22182 () Bool)

(declare-fun lt!7360 () Unit!454)

(assert (=> b!22182 (= e!14392 lt!7360)))

(assert (=> b!22182 (= lt!7360 (lemmaContainsKeyImpliesGetValueByKeyDefined!21 (toList!288 lt!6826) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!22182 (isDefined!22 (getValueByKey!60 (toList!288 lt!6826) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!22183 () Bool)

(declare-fun Unit!484 () Unit!454)

(assert (=> b!22183 (= e!14392 Unit!484)))

(declare-fun b!22184 () Bool)

(assert (=> b!22184 (= e!14391 (isDefined!22 (getValueByKey!60 (toList!288 lt!6826) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!3881 c!2683) b!22182))

(assert (= (and d!3881 (not c!2683)) b!22183))

(assert (= (and d!3881 (not res!14091)) b!22184))

(declare-fun m!15952 () Bool)

(assert (=> d!3881 m!15952))

(declare-fun m!15954 () Bool)

(assert (=> b!22182 m!15954))

(assert (=> b!22182 m!15910))

(assert (=> b!22182 m!15910))

(declare-fun m!15956 () Bool)

(assert (=> b!22182 m!15956))

(assert (=> b!22184 m!15910))

(assert (=> b!22184 m!15910))

(assert (=> b!22184 m!15956))

(assert (=> bm!1368 d!3881))

(declare-fun bm!1547 () Bool)

(declare-fun call!1556 () Bool)

(declare-fun lt!7363 () ListLongMap!545)

(assert (=> bm!1547 (= call!1556 (contains!215 lt!7363 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun bm!1548 () Bool)

(declare-fun call!1552 () ListLongMap!545)

(declare-fun call!1554 () ListLongMap!545)

(assert (=> bm!1548 (= call!1552 call!1554)))

(declare-fun b!22185 () Bool)

(declare-fun e!14397 () Bool)

(declare-fun call!1551 () Bool)

(assert (=> b!22185 (= e!14397 (not call!1551))))

(declare-fun bm!1549 () Bool)

(assert (=> bm!1549 (= call!1551 (contains!215 lt!7363 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!22186 () Bool)

(declare-fun e!14402 () Bool)

(assert (=> b!22186 (= e!14402 (= (apply!28 lt!7363 #b1000000000000000000000000000000000000000000000000000000000000000) (minValue!1646 (v!1573 (_2!446 lt!6677)))))))

(declare-fun b!22187 () Bool)

(declare-fun e!14404 () ListLongMap!545)

(assert (=> b!22187 (= e!14404 call!1552)))

(declare-fun b!22188 () Bool)

(declare-fun e!14398 () Bool)

(assert (=> b!22188 (= e!14398 (validKeyInArray!0 (select (arr!580 (_keys!3140 (v!1573 (_2!446 lt!6677)))) #b00000000000000000000000000000000)))))

(declare-fun bm!1550 () Bool)

(declare-fun call!1555 () ListLongMap!545)

(declare-fun call!1550 () ListLongMap!545)

(assert (=> bm!1550 (= call!1555 call!1550)))

(declare-fun b!22189 () Bool)

(declare-fun e!14395 () Bool)

(declare-fun e!14401 () Bool)

(assert (=> b!22189 (= e!14395 e!14401)))

(declare-fun res!14098 () Bool)

(assert (=> b!22189 (=> (not res!14098) (not e!14401))))

(assert (=> b!22189 (= res!14098 (contains!215 lt!7363 (select (arr!580 (_keys!3140 (v!1573 (_2!446 lt!6677)))) #b00000000000000000000000000000000)))))

(assert (=> b!22189 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!673 (_keys!3140 (v!1573 (_2!446 lt!6677))))))))

(declare-fun b!22190 () Bool)

(declare-fun e!14396 () Bool)

(assert (=> b!22190 (= e!14396 (= (apply!28 lt!7363 #b0000000000000000000000000000000000000000000000000000000000000000) (zeroValue!1646 (v!1573 (_2!446 lt!6677)))))))

(declare-fun b!22191 () Bool)

(declare-fun e!14399 () ListLongMap!545)

(assert (=> b!22191 (= e!14399 call!1552)))

(declare-fun b!22192 () Bool)

(declare-fun e!14400 () ListLongMap!545)

(assert (=> b!22192 (= e!14400 (+!42 call!1554 (tuple2!891 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!1646 (v!1573 (_2!446 lt!6677))))))))

(declare-fun b!22193 () Bool)

(declare-fun e!14393 () Bool)

(assert (=> b!22193 (= e!14393 (validKeyInArray!0 (select (arr!580 (_keys!3140 (v!1573 (_2!446 lt!6677)))) #b00000000000000000000000000000000)))))

(declare-fun b!22194 () Bool)

(declare-fun res!14094 () Bool)

(declare-fun e!14394 () Bool)

(assert (=> b!22194 (=> (not res!14094) (not e!14394))))

(assert (=> b!22194 (= res!14094 e!14395)))

(declare-fun res!14100 () Bool)

(assert (=> b!22194 (=> res!14100 e!14395)))

(assert (=> b!22194 (= res!14100 (not e!14393))))

(declare-fun res!14097 () Bool)

(assert (=> b!22194 (=> (not res!14097) (not e!14393))))

(assert (=> b!22194 (= res!14097 (bvslt #b00000000000000000000000000000000 (size!673 (_keys!3140 (v!1573 (_2!446 lt!6677))))))))

(declare-fun b!22195 () Bool)

(assert (=> b!22195 (= e!14400 e!14404)))

(declare-fun c!2689 () Bool)

(assert (=> b!22195 (= c!2689 (and (not (= (bvand (extraKeys!1622 (v!1573 (_2!446 lt!6677))) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand (extraKeys!1622 (v!1573 (_2!446 lt!6677))) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun d!3883 () Bool)

(assert (=> d!3883 e!14394))

(declare-fun res!14093 () Bool)

(assert (=> d!3883 (=> (not res!14093) (not e!14394))))

(assert (=> d!3883 (= res!14093 (or (bvsge #b00000000000000000000000000000000 (size!673 (_keys!3140 (v!1573 (_2!446 lt!6677))))) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!673 (_keys!3140 (v!1573 (_2!446 lt!6677))))))))))

(declare-fun lt!7367 () ListLongMap!545)

(assert (=> d!3883 (= lt!7363 lt!7367)))

(declare-fun lt!7381 () Unit!454)

(declare-fun e!14403 () Unit!454)

(assert (=> d!3883 (= lt!7381 e!14403)))

(declare-fun c!2687 () Bool)

(assert (=> d!3883 (= c!2687 e!14398)))

(declare-fun res!14095 () Bool)

(assert (=> d!3883 (=> (not res!14095) (not e!14398))))

(assert (=> d!3883 (= res!14095 (bvslt #b00000000000000000000000000000000 (size!673 (_keys!3140 (v!1573 (_2!446 lt!6677))))))))

(assert (=> d!3883 (= lt!7367 e!14400)))

(declare-fun c!2686 () Bool)

(assert (=> d!3883 (= c!2686 (and (not (= (bvand (extraKeys!1622 (v!1573 (_2!446 lt!6677))) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (extraKeys!1622 (v!1573 (_2!446 lt!6677))) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!3883 (validMask!0 (mask!4692 (v!1573 (_2!446 lt!6677))))))

(assert (=> d!3883 (= (getCurrentListMap!117 (_keys!3140 (v!1573 (_2!446 lt!6677))) (_values!1708 (v!1573 (_2!446 lt!6677))) (mask!4692 (v!1573 (_2!446 lt!6677))) (extraKeys!1622 (v!1573 (_2!446 lt!6677))) (zeroValue!1646 (v!1573 (_2!446 lt!6677))) (minValue!1646 (v!1573 (_2!446 lt!6677))) #b00000000000000000000000000000000 (defaultEntry!1719 (v!1573 (_2!446 lt!6677)))) lt!7363)))

(declare-fun b!22196 () Bool)

(assert (=> b!22196 (= e!14397 e!14396)))

(declare-fun res!14092 () Bool)

(assert (=> b!22196 (= res!14092 call!1551)))

(assert (=> b!22196 (=> (not res!14092) (not e!14396))))

(declare-fun b!22197 () Bool)

(declare-fun Unit!485 () Unit!454)

(assert (=> b!22197 (= e!14403 Unit!485)))

(declare-fun bm!1551 () Bool)

(declare-fun call!1553 () ListLongMap!545)

(assert (=> bm!1551 (= call!1554 (+!42 (ite c!2686 call!1553 (ite c!2689 call!1550 call!1555)) (ite (or c!2686 c!2689) (tuple2!891 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!1646 (v!1573 (_2!446 lt!6677)))) (tuple2!891 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!1646 (v!1573 (_2!446 lt!6677)))))))))

(declare-fun b!22198 () Bool)

(declare-fun e!14405 () Bool)

(assert (=> b!22198 (= e!14405 (not call!1556))))

(declare-fun b!22199 () Bool)

(declare-fun res!14096 () Bool)

(assert (=> b!22199 (=> (not res!14096) (not e!14394))))

(assert (=> b!22199 (= res!14096 e!14397)))

(declare-fun c!2685 () Bool)

(assert (=> b!22199 (= c!2685 (not (= (bvand (extraKeys!1622 (v!1573 (_2!446 lt!6677))) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!22200 () Bool)

(assert (=> b!22200 (= e!14399 call!1555)))

(declare-fun bm!1552 () Bool)

(assert (=> bm!1552 (= call!1553 (getCurrentListMapNoExtraKeys!13 (_keys!3140 (v!1573 (_2!446 lt!6677))) (_values!1708 (v!1573 (_2!446 lt!6677))) (mask!4692 (v!1573 (_2!446 lt!6677))) (extraKeys!1622 (v!1573 (_2!446 lt!6677))) (zeroValue!1646 (v!1573 (_2!446 lt!6677))) (minValue!1646 (v!1573 (_2!446 lt!6677))) #b00000000000000000000000000000000 (defaultEntry!1719 (v!1573 (_2!446 lt!6677)))))))

(declare-fun b!22201 () Bool)

(assert (=> b!22201 (= e!14405 e!14402)))

(declare-fun res!14099 () Bool)

(assert (=> b!22201 (= res!14099 call!1556)))

(assert (=> b!22201 (=> (not res!14099) (not e!14402))))

(declare-fun b!22202 () Bool)

(declare-fun c!2684 () Bool)

(assert (=> b!22202 (= c!2684 (and (not (= (bvand (extraKeys!1622 (v!1573 (_2!446 lt!6677))) #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand (extraKeys!1622 (v!1573 (_2!446 lt!6677))) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!22202 (= e!14404 e!14399)))

(declare-fun b!22203 () Bool)

(assert (=> b!22203 (= e!14394 e!14405)))

(declare-fun c!2688 () Bool)

(assert (=> b!22203 (= c!2688 (not (= (bvand (extraKeys!1622 (v!1573 (_2!446 lt!6677))) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!22204 () Bool)

(assert (=> b!22204 (= e!14401 (= (apply!28 lt!7363 (select (arr!580 (_keys!3140 (v!1573 (_2!446 lt!6677)))) #b00000000000000000000000000000000)) (get!377 (select (arr!579 (_values!1708 (v!1573 (_2!446 lt!6677)))) #b00000000000000000000000000000000) (dynLambda!141 (defaultEntry!1719 (v!1573 (_2!446 lt!6677))) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!22204 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!672 (_values!1708 (v!1573 (_2!446 lt!6677))))))))

(assert (=> b!22204 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!673 (_keys!3140 (v!1573 (_2!446 lt!6677))))))))

(declare-fun b!22205 () Bool)

(declare-fun lt!7380 () Unit!454)

(assert (=> b!22205 (= e!14403 lt!7380)))

(declare-fun lt!7373 () ListLongMap!545)

(assert (=> b!22205 (= lt!7373 (getCurrentListMapNoExtraKeys!13 (_keys!3140 (v!1573 (_2!446 lt!6677))) (_values!1708 (v!1573 (_2!446 lt!6677))) (mask!4692 (v!1573 (_2!446 lt!6677))) (extraKeys!1622 (v!1573 (_2!446 lt!6677))) (zeroValue!1646 (v!1573 (_2!446 lt!6677))) (minValue!1646 (v!1573 (_2!446 lt!6677))) #b00000000000000000000000000000000 (defaultEntry!1719 (v!1573 (_2!446 lt!6677)))))))

(declare-fun lt!7365 () (_ BitVec 64))

(assert (=> b!22205 (= lt!7365 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!7368 () (_ BitVec 64))

(assert (=> b!22205 (= lt!7368 (select (arr!580 (_keys!3140 (v!1573 (_2!446 lt!6677)))) #b00000000000000000000000000000000))))

(declare-fun lt!7377 () Unit!454)

(assert (=> b!22205 (= lt!7377 (addStillContains!13 lt!7373 lt!7365 (zeroValue!1646 (v!1573 (_2!446 lt!6677))) lt!7368))))

(assert (=> b!22205 (contains!215 (+!42 lt!7373 (tuple2!891 lt!7365 (zeroValue!1646 (v!1573 (_2!446 lt!6677))))) lt!7368)))

(declare-fun lt!7370 () Unit!454)

(assert (=> b!22205 (= lt!7370 lt!7377)))

(declare-fun lt!7372 () ListLongMap!545)

(assert (=> b!22205 (= lt!7372 (getCurrentListMapNoExtraKeys!13 (_keys!3140 (v!1573 (_2!446 lt!6677))) (_values!1708 (v!1573 (_2!446 lt!6677))) (mask!4692 (v!1573 (_2!446 lt!6677))) (extraKeys!1622 (v!1573 (_2!446 lt!6677))) (zeroValue!1646 (v!1573 (_2!446 lt!6677))) (minValue!1646 (v!1573 (_2!446 lt!6677))) #b00000000000000000000000000000000 (defaultEntry!1719 (v!1573 (_2!446 lt!6677)))))))

(declare-fun lt!7369 () (_ BitVec 64))

(assert (=> b!22205 (= lt!7369 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!7364 () (_ BitVec 64))

(assert (=> b!22205 (= lt!7364 (select (arr!580 (_keys!3140 (v!1573 (_2!446 lt!6677)))) #b00000000000000000000000000000000))))

(declare-fun lt!7371 () Unit!454)

(assert (=> b!22205 (= lt!7371 (addApplyDifferent!13 lt!7372 lt!7369 (minValue!1646 (v!1573 (_2!446 lt!6677))) lt!7364))))

(assert (=> b!22205 (= (apply!28 (+!42 lt!7372 (tuple2!891 lt!7369 (minValue!1646 (v!1573 (_2!446 lt!6677))))) lt!7364) (apply!28 lt!7372 lt!7364))))

(declare-fun lt!7374 () Unit!454)

(assert (=> b!22205 (= lt!7374 lt!7371)))

(declare-fun lt!7375 () ListLongMap!545)

(assert (=> b!22205 (= lt!7375 (getCurrentListMapNoExtraKeys!13 (_keys!3140 (v!1573 (_2!446 lt!6677))) (_values!1708 (v!1573 (_2!446 lt!6677))) (mask!4692 (v!1573 (_2!446 lt!6677))) (extraKeys!1622 (v!1573 (_2!446 lt!6677))) (zeroValue!1646 (v!1573 (_2!446 lt!6677))) (minValue!1646 (v!1573 (_2!446 lt!6677))) #b00000000000000000000000000000000 (defaultEntry!1719 (v!1573 (_2!446 lt!6677)))))))

(declare-fun lt!7382 () (_ BitVec 64))

(assert (=> b!22205 (= lt!7382 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!7378 () (_ BitVec 64))

(assert (=> b!22205 (= lt!7378 (select (arr!580 (_keys!3140 (v!1573 (_2!446 lt!6677)))) #b00000000000000000000000000000000))))

(declare-fun lt!7361 () Unit!454)

(assert (=> b!22205 (= lt!7361 (addApplyDifferent!13 lt!7375 lt!7382 (zeroValue!1646 (v!1573 (_2!446 lt!6677))) lt!7378))))

(assert (=> b!22205 (= (apply!28 (+!42 lt!7375 (tuple2!891 lt!7382 (zeroValue!1646 (v!1573 (_2!446 lt!6677))))) lt!7378) (apply!28 lt!7375 lt!7378))))

(declare-fun lt!7376 () Unit!454)

(assert (=> b!22205 (= lt!7376 lt!7361)))

(declare-fun lt!7362 () ListLongMap!545)

(assert (=> b!22205 (= lt!7362 (getCurrentListMapNoExtraKeys!13 (_keys!3140 (v!1573 (_2!446 lt!6677))) (_values!1708 (v!1573 (_2!446 lt!6677))) (mask!4692 (v!1573 (_2!446 lt!6677))) (extraKeys!1622 (v!1573 (_2!446 lt!6677))) (zeroValue!1646 (v!1573 (_2!446 lt!6677))) (minValue!1646 (v!1573 (_2!446 lt!6677))) #b00000000000000000000000000000000 (defaultEntry!1719 (v!1573 (_2!446 lt!6677)))))))

(declare-fun lt!7379 () (_ BitVec 64))

(assert (=> b!22205 (= lt!7379 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!7366 () (_ BitVec 64))

(assert (=> b!22205 (= lt!7366 (select (arr!580 (_keys!3140 (v!1573 (_2!446 lt!6677)))) #b00000000000000000000000000000000))))

(assert (=> b!22205 (= lt!7380 (addApplyDifferent!13 lt!7362 lt!7379 (minValue!1646 (v!1573 (_2!446 lt!6677))) lt!7366))))

(assert (=> b!22205 (= (apply!28 (+!42 lt!7362 (tuple2!891 lt!7379 (minValue!1646 (v!1573 (_2!446 lt!6677))))) lt!7366) (apply!28 lt!7362 lt!7366))))

(declare-fun bm!1553 () Bool)

(assert (=> bm!1553 (= call!1550 call!1553)))

(assert (= (and d!3883 c!2686) b!22192))

(assert (= (and d!3883 (not c!2686)) b!22195))

(assert (= (and b!22195 c!2689) b!22187))

(assert (= (and b!22195 (not c!2689)) b!22202))

(assert (= (and b!22202 c!2684) b!22191))

(assert (= (and b!22202 (not c!2684)) b!22200))

(assert (= (or b!22191 b!22200) bm!1550))

(assert (= (or b!22187 bm!1550) bm!1553))

(assert (= (or b!22187 b!22191) bm!1548))

(assert (= (or b!22192 bm!1553) bm!1552))

(assert (= (or b!22192 bm!1548) bm!1551))

(assert (= (and d!3883 res!14095) b!22188))

(assert (= (and d!3883 c!2687) b!22205))

(assert (= (and d!3883 (not c!2687)) b!22197))

(assert (= (and d!3883 res!14093) b!22194))

(assert (= (and b!22194 res!14097) b!22193))

(assert (= (and b!22194 (not res!14100)) b!22189))

(assert (= (and b!22189 res!14098) b!22204))

(assert (= (and b!22194 res!14094) b!22199))

(assert (= (and b!22199 c!2685) b!22196))

(assert (= (and b!22199 (not c!2685)) b!22185))

(assert (= (and b!22196 res!14092) b!22190))

(assert (= (or b!22196 b!22185) bm!1549))

(assert (= (and b!22199 res!14096) b!22203))

(assert (= (and b!22203 c!2688) b!22201))

(assert (= (and b!22203 (not c!2688)) b!22198))

(assert (= (and b!22201 res!14099) b!22186))

(assert (= (or b!22201 b!22198) bm!1547))

(declare-fun b_lambda!1553 () Bool)

(assert (=> (not b_lambda!1553) (not b!22204)))

(declare-fun t!3227 () Bool)

(declare-fun tb!653 () Bool)

(assert (=> (and b!21424 (= (defaultEntry!1719 (v!1573 (underlying!104 thiss!938))) (defaultEntry!1719 (v!1573 (_2!446 lt!6677)))) t!3227) tb!653))

(declare-fun result!1081 () Bool)

(assert (=> tb!653 (= result!1081 tp_is_empty!999)))

(assert (=> b!22204 t!3227))

(declare-fun b_and!1451 () Bool)

(assert (= b_and!1449 (and (=> t!3227 result!1081) b_and!1451)))

(declare-fun m!15958 () Bool)

(assert (=> bm!1551 m!15958))

(declare-fun m!15960 () Bool)

(assert (=> bm!1549 m!15960))

(declare-fun m!15962 () Bool)

(assert (=> b!22186 m!15962))

(assert (=> b!22193 m!15313))

(assert (=> b!22193 m!15313))

(assert (=> b!22193 m!15321))

(declare-fun m!15964 () Bool)

(assert (=> b!22192 m!15964))

(declare-fun m!15966 () Bool)

(assert (=> b!22190 m!15966))

(declare-fun m!15968 () Bool)

(assert (=> bm!1547 m!15968))

(declare-fun m!15970 () Bool)

(assert (=> bm!1552 m!15970))

(assert (=> b!22188 m!15313))

(assert (=> b!22188 m!15313))

(assert (=> b!22188 m!15321))

(assert (=> d!3883 m!15458))

(declare-fun m!15972 () Bool)

(assert (=> b!22205 m!15972))

(declare-fun m!15974 () Bool)

(assert (=> b!22205 m!15974))

(assert (=> b!22205 m!15313))

(declare-fun m!15976 () Bool)

(assert (=> b!22205 m!15976))

(assert (=> b!22205 m!15972))

(assert (=> b!22205 m!15970))

(declare-fun m!15978 () Bool)

(assert (=> b!22205 m!15978))

(declare-fun m!15980 () Bool)

(assert (=> b!22205 m!15980))

(declare-fun m!15982 () Bool)

(assert (=> b!22205 m!15982))

(declare-fun m!15984 () Bool)

(assert (=> b!22205 m!15984))

(assert (=> b!22205 m!15976))

(declare-fun m!15986 () Bool)

(assert (=> b!22205 m!15986))

(declare-fun m!15988 () Bool)

(assert (=> b!22205 m!15988))

(declare-fun m!15990 () Bool)

(assert (=> b!22205 m!15990))

(declare-fun m!15992 () Bool)

(assert (=> b!22205 m!15992))

(assert (=> b!22205 m!15988))

(declare-fun m!15994 () Bool)

(assert (=> b!22205 m!15994))

(declare-fun m!15996 () Bool)

(assert (=> b!22205 m!15996))

(assert (=> b!22205 m!15990))

(declare-fun m!15998 () Bool)

(assert (=> b!22205 m!15998))

(declare-fun m!16000 () Bool)

(assert (=> b!22205 m!16000))

(assert (=> b!22204 m!15313))

(assert (=> b!22204 m!15313))

(declare-fun m!16002 () Bool)

(assert (=> b!22204 m!16002))

(declare-fun m!16004 () Bool)

(assert (=> b!22204 m!16004))

(declare-fun m!16006 () Bool)

(assert (=> b!22204 m!16006))

(declare-fun m!16008 () Bool)

(assert (=> b!22204 m!16008))

(assert (=> b!22204 m!16004))

(assert (=> b!22204 m!16006))

(assert (=> b!22189 m!15313))

(assert (=> b!22189 m!15313))

(declare-fun m!16010 () Bool)

(assert (=> b!22189 m!16010))

(assert (=> d!3749 d!3883))

(declare-fun d!3885 () Bool)

(assert (=> d!3885 (= (map!398 (ite c!2483 (_2!447 lt!6680) lt!6678)) (getCurrentListMap!117 (_keys!3140 (ite c!2483 (_2!447 lt!6680) lt!6678)) (_values!1708 (ite c!2483 (_2!447 lt!6680) lt!6678)) (mask!4692 (ite c!2483 (_2!447 lt!6680) lt!6678)) (extraKeys!1622 (ite c!2483 (_2!447 lt!6680) lt!6678)) (zeroValue!1646 (ite c!2483 (_2!447 lt!6680) lt!6678)) (minValue!1646 (ite c!2483 (_2!447 lt!6680) lt!6678)) #b00000000000000000000000000000000 (defaultEntry!1719 (ite c!2483 (_2!447 lt!6680) lt!6678))))))

(declare-fun bs!923 () Bool)

(assert (= bs!923 d!3885))

(assert (=> bs!923 m!15309))

(assert (=> bm!1453 d!3885))

(assert (=> bm!1459 d!3801))

(declare-fun d!3887 () Bool)

(declare-fun res!14101 () Bool)

(declare-fun e!14406 () Bool)

(assert (=> d!3887 (=> (not res!14101) (not e!14406))))

(assert (=> d!3887 (= res!14101 (simpleValid!18 (_2!447 lt!6912)))))

(assert (=> d!3887 (= (valid!98 (_2!447 lt!6912)) e!14406)))

(declare-fun b!22206 () Bool)

(declare-fun res!14102 () Bool)

(assert (=> b!22206 (=> (not res!14102) (not e!14406))))

(assert (=> b!22206 (= res!14102 (= (arrayCountValidKeys!0 (_keys!3140 (_2!447 lt!6912)) #b00000000000000000000000000000000 (size!673 (_keys!3140 (_2!447 lt!6912)))) (_size!134 (_2!447 lt!6912))))))

(declare-fun b!22207 () Bool)

(declare-fun res!14103 () Bool)

(assert (=> b!22207 (=> (not res!14103) (not e!14406))))

(assert (=> b!22207 (= res!14103 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!3140 (_2!447 lt!6912)) (mask!4692 (_2!447 lt!6912))))))

(declare-fun b!22208 () Bool)

(assert (=> b!22208 (= e!14406 (arrayNoDuplicates!0 (_keys!3140 (_2!447 lt!6912)) #b00000000000000000000000000000000 Nil!557))))

(assert (= (and d!3887 res!14101) b!22206))

(assert (= (and b!22206 res!14102) b!22207))

(assert (= (and b!22207 res!14103) b!22208))

(declare-fun m!16012 () Bool)

(assert (=> d!3887 m!16012))

(declare-fun m!16014 () Bool)

(assert (=> b!22206 m!16014))

(declare-fun m!16016 () Bool)

(assert (=> b!22207 m!16016))

(declare-fun m!16018 () Bool)

(assert (=> b!22208 m!16018))

(assert (=> d!3757 d!3887))

(declare-fun d!3889 () Bool)

(declare-fun res!14104 () Bool)

(declare-fun e!14407 () Bool)

(assert (=> d!3889 (=> (not res!14104) (not e!14407))))

(assert (=> d!3889 (= res!14104 (simpleValid!18 lt!6678))))

(assert (=> d!3889 (= (valid!98 lt!6678) e!14407)))

(declare-fun b!22209 () Bool)

(declare-fun res!14105 () Bool)

(assert (=> b!22209 (=> (not res!14105) (not e!14407))))

(assert (=> b!22209 (= res!14105 (= (arrayCountValidKeys!0 (_keys!3140 lt!6678) #b00000000000000000000000000000000 (size!673 (_keys!3140 lt!6678))) (_size!134 lt!6678)))))

(declare-fun b!22210 () Bool)

(declare-fun res!14106 () Bool)

(assert (=> b!22210 (=> (not res!14106) (not e!14407))))

(assert (=> b!22210 (= res!14106 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!3140 lt!6678) (mask!4692 lt!6678)))))

(declare-fun b!22211 () Bool)

(assert (=> b!22211 (= e!14407 (arrayNoDuplicates!0 (_keys!3140 lt!6678) #b00000000000000000000000000000000 Nil!557))))

(assert (= (and d!3889 res!14104) b!22209))

(assert (= (and b!22209 res!14105) b!22210))

(assert (= (and b!22210 res!14106) b!22211))

(declare-fun m!16020 () Bool)

(assert (=> d!3889 m!16020))

(assert (=> b!22209 m!15209))

(declare-fun m!16022 () Bool)

(assert (=> b!22210 m!16022))

(declare-fun m!16024 () Bool)

(assert (=> b!22211 m!16024))

(assert (=> d!3757 d!3889))

(declare-fun d!3891 () Bool)

(declare-fun lt!7383 () (_ BitVec 32))

(assert (=> d!3891 (and (bvsge lt!7383 #b00000000000000000000000000000000) (bvsle lt!7383 (bvsub (size!673 (_keys!3140 (v!1573 (_2!446 lt!6677)))) #b00000000000000000000000000000000)))))

(declare-fun e!14408 () (_ BitVec 32))

(assert (=> d!3891 (= lt!7383 e!14408)))

(declare-fun c!2691 () Bool)

(assert (=> d!3891 (= c!2691 (bvsge #b00000000000000000000000000000000 (size!673 (_keys!3140 (v!1573 (_2!446 lt!6677))))))))

(assert (=> d!3891 (and (bvsle #b00000000000000000000000000000000 (size!673 (_keys!3140 (v!1573 (_2!446 lt!6677))))) (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvsle (size!673 (_keys!3140 (v!1573 (_2!446 lt!6677)))) (size!673 (_keys!3140 (v!1573 (_2!446 lt!6677))))))))

(assert (=> d!3891 (= (arrayCountValidKeys!0 (_keys!3140 (v!1573 (_2!446 lt!6677))) #b00000000000000000000000000000000 (size!673 (_keys!3140 (v!1573 (_2!446 lt!6677))))) lt!7383)))

(declare-fun b!22212 () Bool)

(assert (=> b!22212 (= e!14408 #b00000000000000000000000000000000)))

(declare-fun b!22213 () Bool)

(declare-fun e!14409 () (_ BitVec 32))

(declare-fun call!1557 () (_ BitVec 32))

(assert (=> b!22213 (= e!14409 (bvadd #b00000000000000000000000000000001 call!1557))))

(declare-fun b!22214 () Bool)

(assert (=> b!22214 (= e!14408 e!14409)))

(declare-fun c!2690 () Bool)

(assert (=> b!22214 (= c!2690 (validKeyInArray!0 (select (arr!580 (_keys!3140 (v!1573 (_2!446 lt!6677)))) #b00000000000000000000000000000000)))))

(declare-fun b!22215 () Bool)

(assert (=> b!22215 (= e!14409 call!1557)))

(declare-fun bm!1554 () Bool)

(assert (=> bm!1554 (= call!1557 (arrayCountValidKeys!0 (_keys!3140 (v!1573 (_2!446 lt!6677))) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!673 (_keys!3140 (v!1573 (_2!446 lt!6677))))))))

(assert (= (and d!3891 c!2691) b!22212))

(assert (= (and d!3891 (not c!2691)) b!22214))

(assert (= (and b!22214 c!2690) b!22213))

(assert (= (and b!22214 (not c!2690)) b!22215))

(assert (= (or b!22213 b!22215) bm!1554))

(assert (=> b!22214 m!15313))

(assert (=> b!22214 m!15313))

(assert (=> b!22214 m!15321))

(declare-fun m!16026 () Bool)

(assert (=> bm!1554 m!16026))

(assert (=> b!21496 d!3891))

(declare-fun b!22216 () Bool)

(declare-fun res!14107 () Bool)

(declare-fun e!14412 () Bool)

(assert (=> b!22216 (=> (not res!14107) (not e!14412))))

(declare-fun lt!7384 () SeekEntryResult!56)

(assert (=> b!22216 (= res!14107 (= (select (arr!580 (_keys!3140 lt!6678)) (index!2347 lt!7384)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!22216 (and (bvsge (index!2347 lt!7384) #b00000000000000000000000000000000) (bvslt (index!2347 lt!7384) (size!673 (_keys!3140 lt!6678))))))

(declare-fun b!22217 () Bool)

(declare-fun e!14411 () Bool)

(declare-fun e!14413 () Bool)

(assert (=> b!22217 (= e!14411 e!14413)))

(declare-fun res!14109 () Bool)

(declare-fun call!1559 () Bool)

(assert (=> b!22217 (= res!14109 call!1559)))

(assert (=> b!22217 (=> (not res!14109) (not e!14413))))

(declare-fun b!22218 () Bool)

(declare-fun e!14410 () Bool)

(assert (=> b!22218 (= e!14411 e!14410)))

(declare-fun c!2692 () Bool)

(assert (=> b!22218 (= c!2692 ((_ is MissingVacant!56) lt!7384))))

(declare-fun b!22219 () Bool)

(assert (=> b!22219 (and (bvsge (index!2344 lt!7384) #b00000000000000000000000000000000) (bvslt (index!2344 lt!7384) (size!673 (_keys!3140 lt!6678))))))

(declare-fun res!14108 () Bool)

(assert (=> b!22219 (= res!14108 (= (select (arr!580 (_keys!3140 lt!6678)) (index!2344 lt!7384)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!22219 (=> (not res!14108) (not e!14413))))

(declare-fun b!22220 () Bool)

(assert (=> b!22220 (= e!14410 ((_ is Undefined!56) lt!7384))))

(declare-fun d!3893 () Bool)

(assert (=> d!3893 e!14411))

(declare-fun c!2693 () Bool)

(assert (=> d!3893 (= c!2693 ((_ is MissingZero!56) lt!7384))))

(assert (=> d!3893 (= lt!7384 (seekEntryOrOpen!0 #b0000000000000000000000000000000000000000000000000000000000000000 (_keys!3140 lt!6678) (mask!4692 lt!6678)))))

(declare-fun lt!7385 () Unit!454)

(assert (=> d!3893 (= lt!7385 (choose!199 (_keys!3140 lt!6678) (_values!1708 lt!6678) (mask!4692 lt!6678) (extraKeys!1622 lt!6678) (zeroValue!1646 lt!6678) (minValue!1646 lt!6678) #b0000000000000000000000000000000000000000000000000000000000000000 (defaultEntry!1719 lt!6678)))))

(assert (=> d!3893 (validMask!0 (mask!4692 lt!6678))))

(assert (=> d!3893 (= (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!7 (_keys!3140 lt!6678) (_values!1708 lt!6678) (mask!4692 lt!6678) (extraKeys!1622 lt!6678) (zeroValue!1646 lt!6678) (minValue!1646 lt!6678) #b0000000000000000000000000000000000000000000000000000000000000000 (defaultEntry!1719 lt!6678)) lt!7385)))

(declare-fun bm!1555 () Bool)

(declare-fun call!1558 () Bool)

(assert (=> bm!1555 (= call!1558 (arrayContainsKey!0 (_keys!3140 lt!6678) #b0000000000000000000000000000000000000000000000000000000000000000 #b00000000000000000000000000000000))))

(declare-fun b!22221 () Bool)

(declare-fun res!14110 () Bool)

(assert (=> b!22221 (=> (not res!14110) (not e!14412))))

(assert (=> b!22221 (= res!14110 call!1559)))

(assert (=> b!22221 (= e!14410 e!14412)))

(declare-fun bm!1556 () Bool)

(assert (=> bm!1556 (= call!1559 (inRange!0 (ite c!2693 (index!2344 lt!7384) (index!2347 lt!7384)) (mask!4692 lt!6678)))))

(declare-fun b!22222 () Bool)

(assert (=> b!22222 (= e!14413 (not call!1558))))

(declare-fun b!22223 () Bool)

(assert (=> b!22223 (= e!14412 (not call!1558))))

(assert (= (and d!3893 c!2693) b!22217))

(assert (= (and d!3893 (not c!2693)) b!22218))

(assert (= (and b!22217 res!14109) b!22219))

(assert (= (and b!22219 res!14108) b!22222))

(assert (= (and b!22218 c!2692) b!22221))

(assert (= (and b!22218 (not c!2692)) b!22220))

(assert (= (and b!22221 res!14110) b!22216))

(assert (= (and b!22216 res!14107) b!22223))

(assert (= (or b!22217 b!22221) bm!1556))

(assert (= (or b!22222 b!22223) bm!1555))

(assert (=> bm!1555 m!15125))

(declare-fun m!16028 () Bool)

(assert (=> b!22219 m!16028))

(declare-fun m!16030 () Bool)

(assert (=> b!22216 m!16030))

(assert (=> d!3893 m!15097))

(declare-fun m!16032 () Bool)

(assert (=> d!3893 m!16032))

(assert (=> d!3893 m!15275))

(declare-fun m!16034 () Bool)

(assert (=> bm!1556 m!16034))

(assert (=> bm!1440 d!3893))

(declare-fun d!3895 () Bool)

(declare-fun res!14111 () Bool)

(declare-fun e!14414 () Bool)

(assert (=> d!3895 (=> res!14111 e!14414)))

(assert (=> d!3895 (= res!14111 (= (select (arr!580 (_keys!3140 lt!6678)) #b00000000000000000000000000000000) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!3895 (= (arrayContainsKey!0 (_keys!3140 lt!6678) #b0000000000000000000000000000000000000000000000000000000000000000 #b00000000000000000000000000000000) e!14414)))

(declare-fun b!22224 () Bool)

(declare-fun e!14415 () Bool)

(assert (=> b!22224 (= e!14414 e!14415)))

(declare-fun res!14112 () Bool)

(assert (=> b!22224 (=> (not res!14112) (not e!14415))))

(assert (=> b!22224 (= res!14112 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!673 (_keys!3140 lt!6678))))))

(declare-fun b!22225 () Bool)

(assert (=> b!22225 (= e!14415 (arrayContainsKey!0 (_keys!3140 lt!6678) #b0000000000000000000000000000000000000000000000000000000000000000 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!3895 (not res!14111)) b!22224))

(assert (= (and b!22224 res!14112) b!22225))

(assert (=> d!3895 m!15345))

(declare-fun m!16036 () Bool)

(assert (=> b!22225 m!16036))

(assert (=> bm!1422 d!3895))

(declare-fun d!3897 () Bool)

(assert (=> d!3897 (= (apply!28 (+!42 lt!6838 (tuple2!891 lt!6845 (zeroValue!1646 (v!1573 (underlying!104 thiss!938))))) lt!6841) (get!378 (getValueByKey!60 (toList!288 (+!42 lt!6838 (tuple2!891 lt!6845 (zeroValue!1646 (v!1573 (underlying!104 thiss!938)))))) lt!6841)))))

(declare-fun bs!924 () Bool)

(assert (= bs!924 d!3897))

(declare-fun m!16038 () Bool)

(assert (=> bs!924 m!16038))

(assert (=> bs!924 m!16038))

(declare-fun m!16040 () Bool)

(assert (=> bs!924 m!16040))

(assert (=> b!21590 d!3897))

(declare-fun d!3899 () Bool)

(assert (=> d!3899 (= (apply!28 lt!6825 lt!6829) (get!378 (getValueByKey!60 (toList!288 lt!6825) lt!6829)))))

(declare-fun bs!925 () Bool)

(assert (= bs!925 d!3899))

(declare-fun m!16042 () Bool)

(assert (=> bs!925 m!16042))

(assert (=> bs!925 m!16042))

(declare-fun m!16044 () Bool)

(assert (=> bs!925 m!16044))

(assert (=> b!21590 d!3899))

(declare-fun d!3901 () Bool)

(assert (=> d!3901 (= (apply!28 (+!42 lt!6838 (tuple2!891 lt!6845 (zeroValue!1646 (v!1573 (underlying!104 thiss!938))))) lt!6841) (apply!28 lt!6838 lt!6841))))

(declare-fun lt!7388 () Unit!454)

(declare-fun choose!204 (ListLongMap!545 (_ BitVec 64) V!1157 (_ BitVec 64)) Unit!454)

(assert (=> d!3901 (= lt!7388 (choose!204 lt!6838 lt!6845 (zeroValue!1646 (v!1573 (underlying!104 thiss!938))) lt!6841))))

(declare-fun e!14418 () Bool)

(assert (=> d!3901 e!14418))

(declare-fun res!14115 () Bool)

(assert (=> d!3901 (=> (not res!14115) (not e!14418))))

(assert (=> d!3901 (= res!14115 (contains!215 lt!6838 lt!6841))))

(assert (=> d!3901 (= (addApplyDifferent!13 lt!6838 lt!6845 (zeroValue!1646 (v!1573 (underlying!104 thiss!938))) lt!6841) lt!7388)))

(declare-fun b!22229 () Bool)

(assert (=> b!22229 (= e!14418 (not (= lt!6841 lt!6845)))))

(assert (= (and d!3901 res!14115) b!22229))

(assert (=> d!3901 m!15045))

(assert (=> d!3901 m!15055))

(declare-fun m!16046 () Bool)

(assert (=> d!3901 m!16046))

(declare-fun m!16048 () Bool)

(assert (=> d!3901 m!16048))

(assert (=> d!3901 m!15045))

(assert (=> d!3901 m!15051))

(assert (=> b!21590 d!3901))

(declare-fun d!3903 () Bool)

(assert (=> d!3903 (contains!215 (+!42 lt!6836 (tuple2!891 lt!6828 (zeroValue!1646 (v!1573 (underlying!104 thiss!938))))) lt!6831)))

(declare-fun lt!7391 () Unit!454)

(declare-fun choose!205 (ListLongMap!545 (_ BitVec 64) V!1157 (_ BitVec 64)) Unit!454)

(assert (=> d!3903 (= lt!7391 (choose!205 lt!6836 lt!6828 (zeroValue!1646 (v!1573 (underlying!104 thiss!938))) lt!6831))))

(assert (=> d!3903 (contains!215 lt!6836 lt!6831)))

(assert (=> d!3903 (= (addStillContains!13 lt!6836 lt!6828 (zeroValue!1646 (v!1573 (underlying!104 thiss!938))) lt!6831) lt!7391)))

(declare-fun bs!926 () Bool)

(assert (= bs!926 d!3903))

(assert (=> bs!926 m!15029))

(assert (=> bs!926 m!15029))

(assert (=> bs!926 m!15031))

(declare-fun m!16050 () Bool)

(assert (=> bs!926 m!16050))

(declare-fun m!16052 () Bool)

(assert (=> bs!926 m!16052))

(assert (=> b!21590 d!3903))

(declare-fun d!3905 () Bool)

(assert (=> d!3905 (= (apply!28 lt!6838 lt!6841) (get!378 (getValueByKey!60 (toList!288 lt!6838) lt!6841)))))

(declare-fun bs!927 () Bool)

(assert (= bs!927 d!3905))

(declare-fun m!16054 () Bool)

(assert (=> bs!927 m!16054))

(assert (=> bs!927 m!16054))

(declare-fun m!16056 () Bool)

(assert (=> bs!927 m!16056))

(assert (=> b!21590 d!3905))

(declare-fun d!3907 () Bool)

(assert (=> d!3907 (= (apply!28 (+!42 lt!6825 (tuple2!891 lt!6842 (minValue!1646 (v!1573 (underlying!104 thiss!938))))) lt!6829) (apply!28 lt!6825 lt!6829))))

(declare-fun lt!7392 () Unit!454)

(assert (=> d!3907 (= lt!7392 (choose!204 lt!6825 lt!6842 (minValue!1646 (v!1573 (underlying!104 thiss!938))) lt!6829))))

(declare-fun e!14419 () Bool)

(assert (=> d!3907 e!14419))

(declare-fun res!14116 () Bool)

(assert (=> d!3907 (=> (not res!14116) (not e!14419))))

(assert (=> d!3907 (= res!14116 (contains!215 lt!6825 lt!6829))))

(assert (=> d!3907 (= (addApplyDifferent!13 lt!6825 lt!6842 (minValue!1646 (v!1573 (underlying!104 thiss!938))) lt!6829) lt!7392)))

(declare-fun b!22231 () Bool)

(assert (=> b!22231 (= e!14419 (not (= lt!6829 lt!6842)))))

(assert (= (and d!3907 res!14116) b!22231))

(assert (=> d!3907 m!15033))

(assert (=> d!3907 m!15057))

(declare-fun m!16058 () Bool)

(assert (=> d!3907 m!16058))

(declare-fun m!16060 () Bool)

(assert (=> d!3907 m!16060))

(assert (=> d!3907 m!15033))

(assert (=> d!3907 m!15043))

(assert (=> b!21590 d!3907))

(declare-fun d!3909 () Bool)

(declare-fun e!14420 () Bool)

(assert (=> d!3909 e!14420))

(declare-fun res!14117 () Bool)

(assert (=> d!3909 (=> (not res!14117) (not e!14420))))

(declare-fun lt!7396 () ListLongMap!545)

(assert (=> d!3909 (= res!14117 (contains!215 lt!7396 (_1!448 (tuple2!891 lt!6845 (zeroValue!1646 (v!1573 (underlying!104 thiss!938)))))))))

(declare-fun lt!7393 () List!558)

(assert (=> d!3909 (= lt!7396 (ListLongMap!546 lt!7393))))

(declare-fun lt!7395 () Unit!454)

(declare-fun lt!7394 () Unit!454)

(assert (=> d!3909 (= lt!7395 lt!7394)))

(assert (=> d!3909 (= (getValueByKey!60 lt!7393 (_1!448 (tuple2!891 lt!6845 (zeroValue!1646 (v!1573 (underlying!104 thiss!938)))))) (Some!65 (_2!448 (tuple2!891 lt!6845 (zeroValue!1646 (v!1573 (underlying!104 thiss!938)))))))))

(assert (=> d!3909 (= lt!7394 (lemmaContainsTupThenGetReturnValue!17 lt!7393 (_1!448 (tuple2!891 lt!6845 (zeroValue!1646 (v!1573 (underlying!104 thiss!938))))) (_2!448 (tuple2!891 lt!6845 (zeroValue!1646 (v!1573 (underlying!104 thiss!938)))))))))

(assert (=> d!3909 (= lt!7393 (insertStrictlySorted!17 (toList!288 lt!6838) (_1!448 (tuple2!891 lt!6845 (zeroValue!1646 (v!1573 (underlying!104 thiss!938))))) (_2!448 (tuple2!891 lt!6845 (zeroValue!1646 (v!1573 (underlying!104 thiss!938)))))))))

(assert (=> d!3909 (= (+!42 lt!6838 (tuple2!891 lt!6845 (zeroValue!1646 (v!1573 (underlying!104 thiss!938))))) lt!7396)))

(declare-fun b!22232 () Bool)

(declare-fun res!14118 () Bool)

(assert (=> b!22232 (=> (not res!14118) (not e!14420))))

(assert (=> b!22232 (= res!14118 (= (getValueByKey!60 (toList!288 lt!7396) (_1!448 (tuple2!891 lt!6845 (zeroValue!1646 (v!1573 (underlying!104 thiss!938)))))) (Some!65 (_2!448 (tuple2!891 lt!6845 (zeroValue!1646 (v!1573 (underlying!104 thiss!938))))))))))

(declare-fun b!22233 () Bool)

(assert (=> b!22233 (= e!14420 (contains!216 (toList!288 lt!7396) (tuple2!891 lt!6845 (zeroValue!1646 (v!1573 (underlying!104 thiss!938))))))))

(assert (= (and d!3909 res!14117) b!22232))

(assert (= (and b!22232 res!14118) b!22233))

(declare-fun m!16062 () Bool)

(assert (=> d!3909 m!16062))

(declare-fun m!16064 () Bool)

(assert (=> d!3909 m!16064))

(declare-fun m!16066 () Bool)

(assert (=> d!3909 m!16066))

(declare-fun m!16068 () Bool)

(assert (=> d!3909 m!16068))

(declare-fun m!16070 () Bool)

(assert (=> b!22232 m!16070))

(declare-fun m!16072 () Bool)

(assert (=> b!22233 m!16072))

(assert (=> b!21590 d!3909))

(declare-fun d!3911 () Bool)

(assert (=> d!3911 (= (apply!28 lt!6835 lt!6827) (get!378 (getValueByKey!60 (toList!288 lt!6835) lt!6827)))))

(declare-fun bs!928 () Bool)

(assert (= bs!928 d!3911))

(declare-fun m!16074 () Bool)

(assert (=> bs!928 m!16074))

(assert (=> bs!928 m!16074))

(declare-fun m!16076 () Bool)

(assert (=> bs!928 m!16076))

(assert (=> b!21590 d!3911))

(declare-fun d!3913 () Bool)

(declare-fun e!14421 () Bool)

(assert (=> d!3913 e!14421))

(declare-fun res!14119 () Bool)

(assert (=> d!3913 (=> (not res!14119) (not e!14421))))

(declare-fun lt!7400 () ListLongMap!545)

(assert (=> d!3913 (= res!14119 (contains!215 lt!7400 (_1!448 (tuple2!891 lt!6832 (minValue!1646 (v!1573 (underlying!104 thiss!938)))))))))

(declare-fun lt!7397 () List!558)

(assert (=> d!3913 (= lt!7400 (ListLongMap!546 lt!7397))))

(declare-fun lt!7399 () Unit!454)

(declare-fun lt!7398 () Unit!454)

(assert (=> d!3913 (= lt!7399 lt!7398)))

(assert (=> d!3913 (= (getValueByKey!60 lt!7397 (_1!448 (tuple2!891 lt!6832 (minValue!1646 (v!1573 (underlying!104 thiss!938)))))) (Some!65 (_2!448 (tuple2!891 lt!6832 (minValue!1646 (v!1573 (underlying!104 thiss!938)))))))))

(assert (=> d!3913 (= lt!7398 (lemmaContainsTupThenGetReturnValue!17 lt!7397 (_1!448 (tuple2!891 lt!6832 (minValue!1646 (v!1573 (underlying!104 thiss!938))))) (_2!448 (tuple2!891 lt!6832 (minValue!1646 (v!1573 (underlying!104 thiss!938)))))))))

(assert (=> d!3913 (= lt!7397 (insertStrictlySorted!17 (toList!288 lt!6835) (_1!448 (tuple2!891 lt!6832 (minValue!1646 (v!1573 (underlying!104 thiss!938))))) (_2!448 (tuple2!891 lt!6832 (minValue!1646 (v!1573 (underlying!104 thiss!938)))))))))

(assert (=> d!3913 (= (+!42 lt!6835 (tuple2!891 lt!6832 (minValue!1646 (v!1573 (underlying!104 thiss!938))))) lt!7400)))

(declare-fun b!22234 () Bool)

(declare-fun res!14120 () Bool)

(assert (=> b!22234 (=> (not res!14120) (not e!14421))))

(assert (=> b!22234 (= res!14120 (= (getValueByKey!60 (toList!288 lt!7400) (_1!448 (tuple2!891 lt!6832 (minValue!1646 (v!1573 (underlying!104 thiss!938)))))) (Some!65 (_2!448 (tuple2!891 lt!6832 (minValue!1646 (v!1573 (underlying!104 thiss!938))))))))))

(declare-fun b!22235 () Bool)

(assert (=> b!22235 (= e!14421 (contains!216 (toList!288 lt!7400) (tuple2!891 lt!6832 (minValue!1646 (v!1573 (underlying!104 thiss!938))))))))

(assert (= (and d!3913 res!14119) b!22234))

(assert (= (and b!22234 res!14120) b!22235))

(declare-fun m!16078 () Bool)

(assert (=> d!3913 m!16078))

(declare-fun m!16080 () Bool)

(assert (=> d!3913 m!16080))

(declare-fun m!16082 () Bool)

(assert (=> d!3913 m!16082))

(declare-fun m!16084 () Bool)

(assert (=> d!3913 m!16084))

(declare-fun m!16086 () Bool)

(assert (=> b!22234 m!16086))

(declare-fun m!16088 () Bool)

(assert (=> b!22235 m!16088))

(assert (=> b!21590 d!3913))

(declare-fun d!3915 () Bool)

(declare-fun e!14422 () Bool)

(assert (=> d!3915 e!14422))

(declare-fun res!14121 () Bool)

(assert (=> d!3915 (=> (not res!14121) (not e!14422))))

(declare-fun lt!7404 () ListLongMap!545)

(assert (=> d!3915 (= res!14121 (contains!215 lt!7404 (_1!448 (tuple2!891 lt!6828 (zeroValue!1646 (v!1573 (underlying!104 thiss!938)))))))))

(declare-fun lt!7401 () List!558)

(assert (=> d!3915 (= lt!7404 (ListLongMap!546 lt!7401))))

(declare-fun lt!7403 () Unit!454)

(declare-fun lt!7402 () Unit!454)

(assert (=> d!3915 (= lt!7403 lt!7402)))

(assert (=> d!3915 (= (getValueByKey!60 lt!7401 (_1!448 (tuple2!891 lt!6828 (zeroValue!1646 (v!1573 (underlying!104 thiss!938)))))) (Some!65 (_2!448 (tuple2!891 lt!6828 (zeroValue!1646 (v!1573 (underlying!104 thiss!938)))))))))

(assert (=> d!3915 (= lt!7402 (lemmaContainsTupThenGetReturnValue!17 lt!7401 (_1!448 (tuple2!891 lt!6828 (zeroValue!1646 (v!1573 (underlying!104 thiss!938))))) (_2!448 (tuple2!891 lt!6828 (zeroValue!1646 (v!1573 (underlying!104 thiss!938)))))))))

(assert (=> d!3915 (= lt!7401 (insertStrictlySorted!17 (toList!288 lt!6836) (_1!448 (tuple2!891 lt!6828 (zeroValue!1646 (v!1573 (underlying!104 thiss!938))))) (_2!448 (tuple2!891 lt!6828 (zeroValue!1646 (v!1573 (underlying!104 thiss!938)))))))))

(assert (=> d!3915 (= (+!42 lt!6836 (tuple2!891 lt!6828 (zeroValue!1646 (v!1573 (underlying!104 thiss!938))))) lt!7404)))

(declare-fun b!22236 () Bool)

(declare-fun res!14122 () Bool)

(assert (=> b!22236 (=> (not res!14122) (not e!14422))))

(assert (=> b!22236 (= res!14122 (= (getValueByKey!60 (toList!288 lt!7404) (_1!448 (tuple2!891 lt!6828 (zeroValue!1646 (v!1573 (underlying!104 thiss!938)))))) (Some!65 (_2!448 (tuple2!891 lt!6828 (zeroValue!1646 (v!1573 (underlying!104 thiss!938))))))))))

(declare-fun b!22237 () Bool)

(assert (=> b!22237 (= e!14422 (contains!216 (toList!288 lt!7404) (tuple2!891 lt!6828 (zeroValue!1646 (v!1573 (underlying!104 thiss!938))))))))

(assert (= (and d!3915 res!14121) b!22236))

(assert (= (and b!22236 res!14122) b!22237))

(declare-fun m!16090 () Bool)

(assert (=> d!3915 m!16090))

(declare-fun m!16092 () Bool)

(assert (=> d!3915 m!16092))

(declare-fun m!16094 () Bool)

(assert (=> d!3915 m!16094))

(declare-fun m!16096 () Bool)

(assert (=> d!3915 m!16096))

(declare-fun m!16098 () Bool)

(assert (=> b!22236 m!16098))

(declare-fun m!16100 () Bool)

(assert (=> b!22237 m!16100))

(assert (=> b!21590 d!3915))

(declare-fun d!3917 () Bool)

(declare-fun e!14423 () Bool)

(assert (=> d!3917 e!14423))

(declare-fun res!14123 () Bool)

(assert (=> d!3917 (=> res!14123 e!14423)))

(declare-fun lt!7405 () Bool)

(assert (=> d!3917 (= res!14123 (not lt!7405))))

(declare-fun lt!7406 () Bool)

(assert (=> d!3917 (= lt!7405 lt!7406)))

(declare-fun lt!7407 () Unit!454)

(declare-fun e!14424 () Unit!454)

(assert (=> d!3917 (= lt!7407 e!14424)))

(declare-fun c!2694 () Bool)

(assert (=> d!3917 (= c!2694 lt!7406)))

(assert (=> d!3917 (= lt!7406 (containsKey!24 (toList!288 (+!42 lt!6836 (tuple2!891 lt!6828 (zeroValue!1646 (v!1573 (underlying!104 thiss!938)))))) lt!6831))))

(assert (=> d!3917 (= (contains!215 (+!42 lt!6836 (tuple2!891 lt!6828 (zeroValue!1646 (v!1573 (underlying!104 thiss!938))))) lt!6831) lt!7405)))

(declare-fun b!22238 () Bool)

(declare-fun lt!7408 () Unit!454)

(assert (=> b!22238 (= e!14424 lt!7408)))

(assert (=> b!22238 (= lt!7408 (lemmaContainsKeyImpliesGetValueByKeyDefined!21 (toList!288 (+!42 lt!6836 (tuple2!891 lt!6828 (zeroValue!1646 (v!1573 (underlying!104 thiss!938)))))) lt!6831))))

(assert (=> b!22238 (isDefined!22 (getValueByKey!60 (toList!288 (+!42 lt!6836 (tuple2!891 lt!6828 (zeroValue!1646 (v!1573 (underlying!104 thiss!938)))))) lt!6831))))

(declare-fun b!22239 () Bool)

(declare-fun Unit!486 () Unit!454)

(assert (=> b!22239 (= e!14424 Unit!486)))

(declare-fun b!22240 () Bool)

(assert (=> b!22240 (= e!14423 (isDefined!22 (getValueByKey!60 (toList!288 (+!42 lt!6836 (tuple2!891 lt!6828 (zeroValue!1646 (v!1573 (underlying!104 thiss!938)))))) lt!6831)))))

(assert (= (and d!3917 c!2694) b!22238))

(assert (= (and d!3917 (not c!2694)) b!22239))

(assert (= (and d!3917 (not res!14123)) b!22240))

(declare-fun m!16102 () Bool)

(assert (=> d!3917 m!16102))

(declare-fun m!16104 () Bool)

(assert (=> b!22238 m!16104))

(declare-fun m!16106 () Bool)

(assert (=> b!22238 m!16106))

(assert (=> b!22238 m!16106))

(declare-fun m!16108 () Bool)

(assert (=> b!22238 m!16108))

(assert (=> b!22240 m!16106))

(assert (=> b!22240 m!16106))

(assert (=> b!22240 m!16108))

(assert (=> b!21590 d!3917))

(declare-fun d!3919 () Bool)

(assert (=> d!3919 (= (apply!28 (+!42 lt!6835 (tuple2!891 lt!6832 (minValue!1646 (v!1573 (underlying!104 thiss!938))))) lt!6827) (apply!28 lt!6835 lt!6827))))

(declare-fun lt!7409 () Unit!454)

(assert (=> d!3919 (= lt!7409 (choose!204 lt!6835 lt!6832 (minValue!1646 (v!1573 (underlying!104 thiss!938))) lt!6827))))

(declare-fun e!14425 () Bool)

(assert (=> d!3919 e!14425))

(declare-fun res!14124 () Bool)

(assert (=> d!3919 (=> (not res!14124) (not e!14425))))

(assert (=> d!3919 (= res!14124 (contains!215 lt!6835 lt!6827))))

(assert (=> d!3919 (= (addApplyDifferent!13 lt!6835 lt!6832 (minValue!1646 (v!1573 (underlying!104 thiss!938))) lt!6827) lt!7409)))

(declare-fun b!22241 () Bool)

(assert (=> b!22241 (= e!14425 (not (= lt!6827 lt!6832)))))

(assert (= (and d!3919 res!14124) b!22241))

(assert (=> d!3919 m!15047))

(assert (=> d!3919 m!15041))

(declare-fun m!16110 () Bool)

(assert (=> d!3919 m!16110))

(declare-fun m!16112 () Bool)

(assert (=> d!3919 m!16112))

(assert (=> d!3919 m!15047))

(assert (=> d!3919 m!15049))

(assert (=> b!21590 d!3919))

(declare-fun d!3921 () Bool)

(assert (=> d!3921 (= (apply!28 (+!42 lt!6835 (tuple2!891 lt!6832 (minValue!1646 (v!1573 (underlying!104 thiss!938))))) lt!6827) (get!378 (getValueByKey!60 (toList!288 (+!42 lt!6835 (tuple2!891 lt!6832 (minValue!1646 (v!1573 (underlying!104 thiss!938)))))) lt!6827)))))

(declare-fun bs!929 () Bool)

(assert (= bs!929 d!3921))

(declare-fun m!16114 () Bool)

(assert (=> bs!929 m!16114))

(assert (=> bs!929 m!16114))

(declare-fun m!16116 () Bool)

(assert (=> bs!929 m!16116))

(assert (=> b!21590 d!3921))

(declare-fun d!3923 () Bool)

(assert (=> d!3923 (= (apply!28 (+!42 lt!6825 (tuple2!891 lt!6842 (minValue!1646 (v!1573 (underlying!104 thiss!938))))) lt!6829) (get!378 (getValueByKey!60 (toList!288 (+!42 lt!6825 (tuple2!891 lt!6842 (minValue!1646 (v!1573 (underlying!104 thiss!938)))))) lt!6829)))))

(declare-fun bs!930 () Bool)

(assert (= bs!930 d!3923))

(declare-fun m!16118 () Bool)

(assert (=> bs!930 m!16118))

(assert (=> bs!930 m!16118))

(declare-fun m!16120 () Bool)

(assert (=> bs!930 m!16120))

(assert (=> b!21590 d!3923))

(assert (=> b!21590 d!3849))

(declare-fun d!3925 () Bool)

(declare-fun e!14426 () Bool)

(assert (=> d!3925 e!14426))

(declare-fun res!14125 () Bool)

(assert (=> d!3925 (=> (not res!14125) (not e!14426))))

(declare-fun lt!7413 () ListLongMap!545)

(assert (=> d!3925 (= res!14125 (contains!215 lt!7413 (_1!448 (tuple2!891 lt!6842 (minValue!1646 (v!1573 (underlying!104 thiss!938)))))))))

(declare-fun lt!7410 () List!558)

(assert (=> d!3925 (= lt!7413 (ListLongMap!546 lt!7410))))

(declare-fun lt!7412 () Unit!454)

(declare-fun lt!7411 () Unit!454)

(assert (=> d!3925 (= lt!7412 lt!7411)))

(assert (=> d!3925 (= (getValueByKey!60 lt!7410 (_1!448 (tuple2!891 lt!6842 (minValue!1646 (v!1573 (underlying!104 thiss!938)))))) (Some!65 (_2!448 (tuple2!891 lt!6842 (minValue!1646 (v!1573 (underlying!104 thiss!938)))))))))

(assert (=> d!3925 (= lt!7411 (lemmaContainsTupThenGetReturnValue!17 lt!7410 (_1!448 (tuple2!891 lt!6842 (minValue!1646 (v!1573 (underlying!104 thiss!938))))) (_2!448 (tuple2!891 lt!6842 (minValue!1646 (v!1573 (underlying!104 thiss!938)))))))))

(assert (=> d!3925 (= lt!7410 (insertStrictlySorted!17 (toList!288 lt!6825) (_1!448 (tuple2!891 lt!6842 (minValue!1646 (v!1573 (underlying!104 thiss!938))))) (_2!448 (tuple2!891 lt!6842 (minValue!1646 (v!1573 (underlying!104 thiss!938)))))))))

(assert (=> d!3925 (= (+!42 lt!6825 (tuple2!891 lt!6842 (minValue!1646 (v!1573 (underlying!104 thiss!938))))) lt!7413)))

(declare-fun b!22242 () Bool)

(declare-fun res!14126 () Bool)

(assert (=> b!22242 (=> (not res!14126) (not e!14426))))

(assert (=> b!22242 (= res!14126 (= (getValueByKey!60 (toList!288 lt!7413) (_1!448 (tuple2!891 lt!6842 (minValue!1646 (v!1573 (underlying!104 thiss!938)))))) (Some!65 (_2!448 (tuple2!891 lt!6842 (minValue!1646 (v!1573 (underlying!104 thiss!938))))))))))

(declare-fun b!22243 () Bool)

(assert (=> b!22243 (= e!14426 (contains!216 (toList!288 lt!7413) (tuple2!891 lt!6842 (minValue!1646 (v!1573 (underlying!104 thiss!938))))))))

(assert (= (and d!3925 res!14125) b!22242))

(assert (= (and b!22242 res!14126) b!22243))

(declare-fun m!16122 () Bool)

(assert (=> d!3925 m!16122))

(declare-fun m!16124 () Bool)

(assert (=> d!3925 m!16124))

(declare-fun m!16126 () Bool)

(assert (=> d!3925 m!16126))

(declare-fun m!16128 () Bool)

(assert (=> d!3925 m!16128))

(declare-fun m!16130 () Bool)

(assert (=> b!22242 m!16130))

(declare-fun m!16132 () Bool)

(assert (=> b!22243 m!16132))

(assert (=> b!21590 d!3925))

(declare-fun d!3927 () Bool)

(assert (=> d!3927 (= (+!42 (getCurrentListMap!117 (_keys!3140 (ite c!2483 (_2!447 lt!6680) lt!6678)) (_values!1708 (ite c!2483 (_2!447 lt!6680) lt!6678)) (mask!4692 (ite c!2483 (_2!447 lt!6680) lt!6678)) (extraKeys!1622 (ite c!2483 (_2!447 lt!6680) lt!6678)) (zeroValue!1646 (ite c!2483 (_2!447 lt!6680) lt!6678)) (minValue!1646 (ite c!2483 (_2!447 lt!6680) lt!6678)) #b00000000000000000000000000000000 (defaultEntry!1719 (ite c!2483 (_2!447 lt!6680) lt!6678))) (tuple2!891 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!2483 (minValue!1646 (v!1573 (underlying!104 thiss!938))) (ite c!2482 (zeroValue!1646 (v!1573 (underlying!104 thiss!938))) (minValue!1646 (v!1573 (underlying!104 thiss!938))))))) (getCurrentListMap!117 (_keys!3140 (ite c!2483 (_2!447 lt!6680) lt!6678)) (_values!1708 (ite c!2483 (_2!447 lt!6680) lt!6678)) (mask!4692 (ite c!2483 (_2!447 lt!6680) lt!6678)) lt!6938 (zeroValue!1646 (ite c!2483 (_2!447 lt!6680) lt!6678)) (ite c!2483 (minValue!1646 (v!1573 (underlying!104 thiss!938))) (ite c!2482 (zeroValue!1646 (v!1573 (underlying!104 thiss!938))) (minValue!1646 (v!1573 (underlying!104 thiss!938))))) #b00000000000000000000000000000000 (defaultEntry!1719 (ite c!2483 (_2!447 lt!6680) lt!6678))))))

(declare-fun lt!7414 () Unit!454)

(assert (=> d!3927 (= lt!7414 (choose!202 (_keys!3140 (ite c!2483 (_2!447 lt!6680) lt!6678)) (_values!1708 (ite c!2483 (_2!447 lt!6680) lt!6678)) (mask!4692 (ite c!2483 (_2!447 lt!6680) lt!6678)) (extraKeys!1622 (ite c!2483 (_2!447 lt!6680) lt!6678)) lt!6938 (zeroValue!1646 (ite c!2483 (_2!447 lt!6680) lt!6678)) (minValue!1646 (ite c!2483 (_2!447 lt!6680) lt!6678)) (ite c!2483 (minValue!1646 (v!1573 (underlying!104 thiss!938))) (ite c!2482 (zeroValue!1646 (v!1573 (underlying!104 thiss!938))) (minValue!1646 (v!1573 (underlying!104 thiss!938))))) (defaultEntry!1719 (ite c!2483 (_2!447 lt!6680) lt!6678))))))

(assert (=> d!3927 (validMask!0 (mask!4692 (ite c!2483 (_2!447 lt!6680) lt!6678)))))

(assert (=> d!3927 (= (lemmaChangeLongMinValueKeyThenAddPairToListMap!7 (_keys!3140 (ite c!2483 (_2!447 lt!6680) lt!6678)) (_values!1708 (ite c!2483 (_2!447 lt!6680) lt!6678)) (mask!4692 (ite c!2483 (_2!447 lt!6680) lt!6678)) (extraKeys!1622 (ite c!2483 (_2!447 lt!6680) lt!6678)) lt!6938 (zeroValue!1646 (ite c!2483 (_2!447 lt!6680) lt!6678)) (minValue!1646 (ite c!2483 (_2!447 lt!6680) lt!6678)) (ite c!2483 (minValue!1646 (v!1573 (underlying!104 thiss!938))) (ite c!2482 (zeroValue!1646 (v!1573 (underlying!104 thiss!938))) (minValue!1646 (v!1573 (underlying!104 thiss!938))))) (defaultEntry!1719 (ite c!2483 (_2!447 lt!6680) lt!6678))) lt!7414)))

(declare-fun bs!931 () Bool)

(assert (= bs!931 d!3927))

(assert (=> bs!931 m!15309))

(assert (=> bs!931 m!15303))

(declare-fun m!16134 () Bool)

(assert (=> bs!931 m!16134))

(assert (=> bs!931 m!15309))

(declare-fun m!16136 () Bool)

(assert (=> bs!931 m!16136))

(declare-fun m!16138 () Bool)

(assert (=> bs!931 m!16138))

(assert (=> b!21712 d!3927))

(declare-fun d!3929 () Bool)

(declare-fun e!14427 () Bool)

(assert (=> d!3929 e!14427))

(declare-fun res!14127 () Bool)

(assert (=> d!3929 (=> (not res!14127) (not e!14427))))

(assert (=> d!3929 (= res!14127 (and (bvsge (index!2345 lt!6907) #b00000000000000000000000000000000) (bvslt (index!2345 lt!6907) (size!673 (_keys!3140 lt!6678)))))))

(declare-fun lt!7415 () Unit!454)

(assert (=> d!3929 (= lt!7415 (choose!200 (_keys!3140 lt!6678) lt!6910 (mask!4692 lt!6678) (extraKeys!1622 lt!6678) (zeroValue!1646 lt!6678) (minValue!1646 lt!6678) (index!2345 lt!6907) (defaultEntry!1719 lt!6678)))))

(assert (=> d!3929 (validMask!0 (mask!4692 lt!6678))))

(assert (=> d!3929 (= (lemmaValidKeyInArrayIsInListMap!7 (_keys!3140 lt!6678) lt!6910 (mask!4692 lt!6678) (extraKeys!1622 lt!6678) (zeroValue!1646 lt!6678) (minValue!1646 lt!6678) (index!2345 lt!6907) (defaultEntry!1719 lt!6678)) lt!7415)))

(declare-fun b!22244 () Bool)

(assert (=> b!22244 (= e!14427 (contains!215 (getCurrentListMap!117 (_keys!3140 lt!6678) lt!6910 (mask!4692 lt!6678) (extraKeys!1622 lt!6678) (zeroValue!1646 lt!6678) (minValue!1646 lt!6678) #b00000000000000000000000000000000 (defaultEntry!1719 lt!6678)) (select (arr!580 (_keys!3140 lt!6678)) (index!2345 lt!6907))))))

(assert (= (and d!3929 res!14127) b!22244))

(declare-fun m!16140 () Bool)

(assert (=> d!3929 m!16140))

(assert (=> d!3929 m!15275))

(declare-fun m!16142 () Bool)

(assert (=> b!22244 m!16142))

(assert (=> b!22244 m!15069))

(assert (=> b!22244 m!16142))

(assert (=> b!22244 m!15069))

(declare-fun m!16144 () Bool)

(assert (=> b!22244 m!16144))

(assert (=> b!21678 d!3929))

(declare-fun d!3931 () Bool)

(declare-fun e!14428 () Bool)

(assert (=> d!3931 e!14428))

(declare-fun res!14128 () Bool)

(assert (=> d!3931 (=> (not res!14128) (not e!14428))))

(assert (=> d!3931 (= res!14128 (and (bvsge (index!2345 lt!6907) #b00000000000000000000000000000000) (bvslt (index!2345 lt!6907) (size!672 (_values!1708 lt!6678)))))))

(declare-fun lt!7416 () Unit!454)

(assert (=> d!3931 (= lt!7416 (choose!201 (_keys!3140 lt!6678) (_values!1708 lt!6678) (mask!4692 lt!6678) (extraKeys!1622 lt!6678) (zeroValue!1646 lt!6678) (minValue!1646 lt!6678) (index!2345 lt!6907) #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!1646 (v!1573 (underlying!104 thiss!938))) (defaultEntry!1719 lt!6678)))))

(assert (=> d!3931 (validMask!0 (mask!4692 lt!6678))))

(assert (=> d!3931 (= (lemmaChangeValueExistingKeyToArrayThenAddPairToListMap!7 (_keys!3140 lt!6678) (_values!1708 lt!6678) (mask!4692 lt!6678) (extraKeys!1622 lt!6678) (zeroValue!1646 lt!6678) (minValue!1646 lt!6678) (index!2345 lt!6907) #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!1646 (v!1573 (underlying!104 thiss!938))) (defaultEntry!1719 lt!6678)) lt!7416)))

(declare-fun b!22245 () Bool)

(assert (=> b!22245 (= e!14428 (= (+!42 (getCurrentListMap!117 (_keys!3140 lt!6678) (_values!1708 lt!6678) (mask!4692 lt!6678) (extraKeys!1622 lt!6678) (zeroValue!1646 lt!6678) (minValue!1646 lt!6678) #b00000000000000000000000000000000 (defaultEntry!1719 lt!6678)) (tuple2!891 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!1646 (v!1573 (underlying!104 thiss!938))))) (getCurrentListMap!117 (_keys!3140 lt!6678) (array!1222 (store (arr!579 (_values!1708 lt!6678)) (index!2345 lt!6907) (ValueCellFull!300 (zeroValue!1646 (v!1573 (underlying!104 thiss!938))))) (size!672 (_values!1708 lt!6678))) (mask!4692 lt!6678) (extraKeys!1622 lt!6678) (zeroValue!1646 lt!6678) (minValue!1646 lt!6678) #b00000000000000000000000000000000 (defaultEntry!1719 lt!6678))))))

(assert (= (and d!3931 res!14128) b!22245))

(declare-fun m!16146 () Bool)

(assert (=> d!3931 m!16146))

(assert (=> d!3931 m!15275))

(assert (=> b!22245 m!15205))

(assert (=> b!22245 m!15205))

(assert (=> b!22245 m!15207))

(assert (=> b!22245 m!15079))

(declare-fun m!16148 () Bool)

(assert (=> b!22245 m!16148))

(assert (=> b!21678 d!3931))

(declare-fun d!3933 () Bool)

(declare-fun e!14429 () Bool)

(assert (=> d!3933 e!14429))

(declare-fun res!14129 () Bool)

(assert (=> d!3933 (=> res!14129 e!14429)))

(declare-fun lt!7417 () Bool)

(assert (=> d!3933 (= res!14129 (not lt!7417))))

(declare-fun lt!7418 () Bool)

(assert (=> d!3933 (= lt!7417 lt!7418)))

(declare-fun lt!7419 () Unit!454)

(declare-fun e!14430 () Unit!454)

(assert (=> d!3933 (= lt!7419 e!14430)))

(declare-fun c!2695 () Bool)

(assert (=> d!3933 (= c!2695 lt!7418)))

(assert (=> d!3933 (= lt!7418 (containsKey!24 (toList!288 call!1437) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!3933 (= (contains!215 call!1437 #b0000000000000000000000000000000000000000000000000000000000000000) lt!7417)))

(declare-fun b!22246 () Bool)

(declare-fun lt!7420 () Unit!454)

(assert (=> b!22246 (= e!14430 lt!7420)))

(assert (=> b!22246 (= lt!7420 (lemmaContainsKeyImpliesGetValueByKeyDefined!21 (toList!288 call!1437) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!22246 (isDefined!22 (getValueByKey!60 (toList!288 call!1437) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!22247 () Bool)

(declare-fun Unit!487 () Unit!454)

(assert (=> b!22247 (= e!14430 Unit!487)))

(declare-fun b!22248 () Bool)

(assert (=> b!22248 (= e!14429 (isDefined!22 (getValueByKey!60 (toList!288 call!1437) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!3933 c!2695) b!22246))

(assert (= (and d!3933 (not c!2695)) b!22247))

(assert (= (and d!3933 (not res!14129)) b!22248))

(declare-fun m!16150 () Bool)

(assert (=> d!3933 m!16150))

(declare-fun m!16152 () Bool)

(assert (=> b!22246 m!16152))

(declare-fun m!16154 () Bool)

(assert (=> b!22246 m!16154))

(assert (=> b!22246 m!16154))

(declare-fun m!16156 () Bool)

(assert (=> b!22246 m!16156))

(assert (=> b!22248 m!16154))

(assert (=> b!22248 m!16154))

(assert (=> b!22248 m!16156))

(assert (=> b!21678 d!3933))

(declare-fun d!3935 () Bool)

(declare-fun e!14431 () Bool)

(assert (=> d!3935 e!14431))

(declare-fun res!14130 () Bool)

(assert (=> d!3935 (=> res!14130 e!14431)))

(declare-fun lt!7421 () Bool)

(assert (=> d!3935 (= res!14130 (not lt!7421))))

(declare-fun lt!7422 () Bool)

(assert (=> d!3935 (= lt!7421 lt!7422)))

(declare-fun lt!7423 () Unit!454)

(declare-fun e!14432 () Unit!454)

(assert (=> d!3935 (= lt!7423 e!14432)))

(declare-fun c!2696 () Bool)

(assert (=> d!3935 (= c!2696 lt!7422)))

(assert (=> d!3935 (= lt!7422 (containsKey!24 (toList!288 call!1432) (ite c!2547 #b0000000000000000000000000000000000000000000000000000000000000000 (select (arr!580 (_keys!3140 lt!6678)) (index!2345 lt!6907)))))))

(assert (=> d!3935 (= (contains!215 call!1432 (ite c!2547 #b0000000000000000000000000000000000000000000000000000000000000000 (select (arr!580 (_keys!3140 lt!6678)) (index!2345 lt!6907)))) lt!7421)))

(declare-fun b!22249 () Bool)

(declare-fun lt!7424 () Unit!454)

(assert (=> b!22249 (= e!14432 lt!7424)))

(assert (=> b!22249 (= lt!7424 (lemmaContainsKeyImpliesGetValueByKeyDefined!21 (toList!288 call!1432) (ite c!2547 #b0000000000000000000000000000000000000000000000000000000000000000 (select (arr!580 (_keys!3140 lt!6678)) (index!2345 lt!6907)))))))

(assert (=> b!22249 (isDefined!22 (getValueByKey!60 (toList!288 call!1432) (ite c!2547 #b0000000000000000000000000000000000000000000000000000000000000000 (select (arr!580 (_keys!3140 lt!6678)) (index!2345 lt!6907)))))))

(declare-fun b!22250 () Bool)

(declare-fun Unit!488 () Unit!454)

(assert (=> b!22250 (= e!14432 Unit!488)))

(declare-fun b!22251 () Bool)

(assert (=> b!22251 (= e!14431 (isDefined!22 (getValueByKey!60 (toList!288 call!1432) (ite c!2547 #b0000000000000000000000000000000000000000000000000000000000000000 (select (arr!580 (_keys!3140 lt!6678)) (index!2345 lt!6907))))))))

(assert (= (and d!3935 c!2696) b!22249))

(assert (= (and d!3935 (not c!2696)) b!22250))

(assert (= (and d!3935 (not res!14130)) b!22251))

(declare-fun m!16158 () Bool)

(assert (=> d!3935 m!16158))

(declare-fun m!16160 () Bool)

(assert (=> b!22249 m!16160))

(declare-fun m!16162 () Bool)

(assert (=> b!22249 m!16162))

(assert (=> b!22249 m!16162))

(declare-fun m!16164 () Bool)

(assert (=> b!22249 m!16164))

(assert (=> b!22251 m!16162))

(assert (=> b!22251 m!16162))

(assert (=> b!22251 m!16164))

(assert (=> bm!1436 d!3935))

(assert (=> d!3747 d!3751))

(declare-fun d!3937 () Bool)

(assert (=> d!3937 (= (+!42 (getCurrentListMap!117 (_keys!3140 lt!6678) (_values!1708 lt!6678) (mask!4692 lt!6678) (extraKeys!1622 lt!6678) (zeroValue!1646 lt!6678) (minValue!1646 lt!6678) #b00000000000000000000000000000000 (defaultEntry!1719 lt!6678)) (tuple2!891 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!1646 (v!1573 (underlying!104 thiss!938))))) (getCurrentListMap!117 (_keys!3140 lt!6678) (_values!1708 lt!6678) (mask!4692 lt!6678) lt!6922 (zeroValue!1646 (v!1573 (underlying!104 thiss!938))) (minValue!1646 lt!6678) #b00000000000000000000000000000000 (defaultEntry!1719 lt!6678)))))

(declare-fun lt!7425 () Unit!454)

(assert (=> d!3937 (= lt!7425 (choose!198 (_keys!3140 lt!6678) (_values!1708 lt!6678) (mask!4692 lt!6678) (extraKeys!1622 lt!6678) lt!6922 (zeroValue!1646 lt!6678) (zeroValue!1646 (v!1573 (underlying!104 thiss!938))) (minValue!1646 lt!6678) (defaultEntry!1719 lt!6678)))))

(assert (=> d!3937 (validMask!0 (mask!4692 lt!6678))))

(assert (=> d!3937 (= (lemmaChangeZeroKeyThenAddPairToListMap!7 (_keys!3140 lt!6678) (_values!1708 lt!6678) (mask!4692 lt!6678) (extraKeys!1622 lt!6678) lt!6922 (zeroValue!1646 lt!6678) (zeroValue!1646 (v!1573 (underlying!104 thiss!938))) (minValue!1646 lt!6678) (defaultEntry!1719 lt!6678)) lt!7425)))

(declare-fun bs!932 () Bool)

(assert (= bs!932 d!3937))

(assert (=> bs!932 m!15275))

(declare-fun m!16166 () Bool)

(assert (=> bs!932 m!16166))

(declare-fun m!16168 () Bool)

(assert (=> bs!932 m!16168))

(assert (=> bs!932 m!15205))

(assert (=> bs!932 m!15207))

(assert (=> bs!932 m!15205))

(assert (=> b!21693 d!3937))

(declare-fun d!3939 () Bool)

(declare-fun e!14433 () Bool)

(assert (=> d!3939 e!14433))

(declare-fun res!14131 () Bool)

(assert (=> d!3939 (=> (not res!14131) (not e!14433))))

(declare-fun lt!7429 () ListLongMap!545)

(assert (=> d!3939 (= res!14131 (contains!215 lt!7429 (_1!448 (ite c!2549 (ite c!2553 (tuple2!891 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!1646 (v!1573 (underlying!104 thiss!938)))) (tuple2!891 #b1000000000000000000000000000000000000000000000000000000000000000 (zeroValue!1646 (v!1573 (underlying!104 thiss!938))))) (tuple2!891 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!1646 (v!1573 (underlying!104 thiss!938))))))))))

(declare-fun lt!7426 () List!558)

(assert (=> d!3939 (= lt!7429 (ListLongMap!546 lt!7426))))

(declare-fun lt!7428 () Unit!454)

(declare-fun lt!7427 () Unit!454)

(assert (=> d!3939 (= lt!7428 lt!7427)))

(assert (=> d!3939 (= (getValueByKey!60 lt!7426 (_1!448 (ite c!2549 (ite c!2553 (tuple2!891 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!1646 (v!1573 (underlying!104 thiss!938)))) (tuple2!891 #b1000000000000000000000000000000000000000000000000000000000000000 (zeroValue!1646 (v!1573 (underlying!104 thiss!938))))) (tuple2!891 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!1646 (v!1573 (underlying!104 thiss!938))))))) (Some!65 (_2!448 (ite c!2549 (ite c!2553 (tuple2!891 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!1646 (v!1573 (underlying!104 thiss!938)))) (tuple2!891 #b1000000000000000000000000000000000000000000000000000000000000000 (zeroValue!1646 (v!1573 (underlying!104 thiss!938))))) (tuple2!891 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!1646 (v!1573 (underlying!104 thiss!938))))))))))

(assert (=> d!3939 (= lt!7427 (lemmaContainsTupThenGetReturnValue!17 lt!7426 (_1!448 (ite c!2549 (ite c!2553 (tuple2!891 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!1646 (v!1573 (underlying!104 thiss!938)))) (tuple2!891 #b1000000000000000000000000000000000000000000000000000000000000000 (zeroValue!1646 (v!1573 (underlying!104 thiss!938))))) (tuple2!891 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!1646 (v!1573 (underlying!104 thiss!938)))))) (_2!448 (ite c!2549 (ite c!2553 (tuple2!891 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!1646 (v!1573 (underlying!104 thiss!938)))) (tuple2!891 #b1000000000000000000000000000000000000000000000000000000000000000 (zeroValue!1646 (v!1573 (underlying!104 thiss!938))))) (tuple2!891 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!1646 (v!1573 (underlying!104 thiss!938))))))))))

(assert (=> d!3939 (= lt!7426 (insertStrictlySorted!17 (toList!288 (ite c!2549 call!1430 call!1437)) (_1!448 (ite c!2549 (ite c!2553 (tuple2!891 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!1646 (v!1573 (underlying!104 thiss!938)))) (tuple2!891 #b1000000000000000000000000000000000000000000000000000000000000000 (zeroValue!1646 (v!1573 (underlying!104 thiss!938))))) (tuple2!891 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!1646 (v!1573 (underlying!104 thiss!938)))))) (_2!448 (ite c!2549 (ite c!2553 (tuple2!891 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!1646 (v!1573 (underlying!104 thiss!938)))) (tuple2!891 #b1000000000000000000000000000000000000000000000000000000000000000 (zeroValue!1646 (v!1573 (underlying!104 thiss!938))))) (tuple2!891 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!1646 (v!1573 (underlying!104 thiss!938))))))))))

(assert (=> d!3939 (= (+!42 (ite c!2549 call!1430 call!1437) (ite c!2549 (ite c!2553 (tuple2!891 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!1646 (v!1573 (underlying!104 thiss!938)))) (tuple2!891 #b1000000000000000000000000000000000000000000000000000000000000000 (zeroValue!1646 (v!1573 (underlying!104 thiss!938))))) (tuple2!891 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!1646 (v!1573 (underlying!104 thiss!938)))))) lt!7429)))

(declare-fun b!22252 () Bool)

(declare-fun res!14132 () Bool)

(assert (=> b!22252 (=> (not res!14132) (not e!14433))))

(assert (=> b!22252 (= res!14132 (= (getValueByKey!60 (toList!288 lt!7429) (_1!448 (ite c!2549 (ite c!2553 (tuple2!891 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!1646 (v!1573 (underlying!104 thiss!938)))) (tuple2!891 #b1000000000000000000000000000000000000000000000000000000000000000 (zeroValue!1646 (v!1573 (underlying!104 thiss!938))))) (tuple2!891 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!1646 (v!1573 (underlying!104 thiss!938))))))) (Some!65 (_2!448 (ite c!2549 (ite c!2553 (tuple2!891 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!1646 (v!1573 (underlying!104 thiss!938)))) (tuple2!891 #b1000000000000000000000000000000000000000000000000000000000000000 (zeroValue!1646 (v!1573 (underlying!104 thiss!938))))) (tuple2!891 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!1646 (v!1573 (underlying!104 thiss!938)))))))))))

(declare-fun b!22253 () Bool)

(assert (=> b!22253 (= e!14433 (contains!216 (toList!288 lt!7429) (ite c!2549 (ite c!2553 (tuple2!891 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!1646 (v!1573 (underlying!104 thiss!938)))) (tuple2!891 #b1000000000000000000000000000000000000000000000000000000000000000 (zeroValue!1646 (v!1573 (underlying!104 thiss!938))))) (tuple2!891 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!1646 (v!1573 (underlying!104 thiss!938)))))))))

(assert (= (and d!3939 res!14131) b!22252))

(assert (= (and b!22252 res!14132) b!22253))

(declare-fun m!16170 () Bool)

(assert (=> d!3939 m!16170))

(declare-fun m!16172 () Bool)

(assert (=> d!3939 m!16172))

(declare-fun m!16174 () Bool)

(assert (=> d!3939 m!16174))

(declare-fun m!16176 () Bool)

(assert (=> d!3939 m!16176))

(declare-fun m!16178 () Bool)

(assert (=> b!22252 m!16178))

(declare-fun m!16180 () Bool)

(assert (=> b!22253 m!16180))

(assert (=> bm!1430 d!3939))

(declare-fun d!3941 () Bool)

(declare-fun e!14434 () Bool)

(assert (=> d!3941 e!14434))

(declare-fun res!14133 () Bool)

(assert (=> d!3941 (=> res!14133 e!14434)))

(declare-fun lt!7430 () Bool)

(assert (=> d!3941 (= res!14133 (not lt!7430))))

(declare-fun lt!7431 () Bool)

(assert (=> d!3941 (= lt!7430 lt!7431)))

(declare-fun lt!7432 () Unit!454)

(declare-fun e!14435 () Unit!454)

(assert (=> d!3941 (= lt!7432 e!14435)))

(declare-fun c!2697 () Bool)

(assert (=> d!3941 (= c!2697 lt!7431)))

(assert (=> d!3941 (= lt!7431 (containsKey!24 (toList!288 call!1458) (ite c!2483 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!2482 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> d!3941 (= (contains!215 call!1458 (ite c!2483 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!2482 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000))) lt!7430)))

(declare-fun b!22254 () Bool)

(declare-fun lt!7433 () Unit!454)

(assert (=> b!22254 (= e!14435 lt!7433)))

(assert (=> b!22254 (= lt!7433 (lemmaContainsKeyImpliesGetValueByKeyDefined!21 (toList!288 call!1458) (ite c!2483 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!2482 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!22254 (isDefined!22 (getValueByKey!60 (toList!288 call!1458) (ite c!2483 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!2482 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!22255 () Bool)

(declare-fun Unit!489 () Unit!454)

(assert (=> b!22255 (= e!14435 Unit!489)))

(declare-fun b!22256 () Bool)

(assert (=> b!22256 (= e!14434 (isDefined!22 (getValueByKey!60 (toList!288 call!1458) (ite c!2483 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!2482 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (= (and d!3941 c!2697) b!22254))

(assert (= (and d!3941 (not c!2697)) b!22255))

(assert (= (and d!3941 (not res!14133)) b!22256))

(declare-fun m!16182 () Bool)

(assert (=> d!3941 m!16182))

(declare-fun m!16184 () Bool)

(assert (=> b!22254 m!16184))

(declare-fun m!16186 () Bool)

(assert (=> b!22254 m!16186))

(assert (=> b!22254 m!16186))

(declare-fun m!16188 () Bool)

(assert (=> b!22254 m!16188))

(assert (=> b!22256 m!16186))

(assert (=> b!22256 m!16186))

(assert (=> b!22256 m!16188))

(assert (=> b!21713 d!3941))

(declare-fun d!3943 () Bool)

(assert (=> d!3943 (= (inRange!0 (ite c!2559 (ite c!2564 (index!2345 lt!6927) (ite c!2557 (index!2344 lt!6946) (index!2347 lt!6946))) (ite c!2563 (index!2345 lt!6940) (ite c!2567 (index!2344 lt!6948) (index!2347 lt!6948)))) (mask!4692 (ite c!2483 (_2!447 lt!6680) lt!6678))) (and (bvsge (ite c!2559 (ite c!2564 (index!2345 lt!6927) (ite c!2557 (index!2344 lt!6946) (index!2347 lt!6946))) (ite c!2563 (index!2345 lt!6940) (ite c!2567 (index!2344 lt!6948) (index!2347 lt!6948)))) #b00000000000000000000000000000000) (bvslt (ite c!2559 (ite c!2564 (index!2345 lt!6927) (ite c!2557 (index!2344 lt!6946) (index!2347 lt!6946))) (ite c!2563 (index!2345 lt!6940) (ite c!2567 (index!2344 lt!6948) (index!2347 lt!6948)))) (bvadd (mask!4692 (ite c!2483 (_2!447 lt!6680) lt!6678)) #b00000000000000000000000000000001))))))

(assert (=> bm!1451 d!3943))

(declare-fun mapNonEmpty!986 () Bool)

(declare-fun mapRes!986 () Bool)

(declare-fun tp!3452 () Bool)

(declare-fun e!14436 () Bool)

(assert (=> mapNonEmpty!986 (= mapRes!986 (and tp!3452 e!14436))))

(declare-fun mapRest!986 () (Array (_ BitVec 32) ValueCell!300))

(declare-fun mapValue!986 () ValueCell!300)

(declare-fun mapKey!986 () (_ BitVec 32))

(assert (=> mapNonEmpty!986 (= mapRest!985 (store mapRest!986 mapKey!986 mapValue!986))))

(declare-fun condMapEmpty!986 () Bool)

(declare-fun mapDefault!986 () ValueCell!300)

(assert (=> mapNonEmpty!985 (= condMapEmpty!986 (= mapRest!985 ((as const (Array (_ BitVec 32) ValueCell!300)) mapDefault!986)))))

(declare-fun e!14437 () Bool)

(assert (=> mapNonEmpty!985 (= tp!3451 (and e!14437 mapRes!986))))

(declare-fun b!22257 () Bool)

(assert (=> b!22257 (= e!14436 tp_is_empty!999)))

(declare-fun b!22258 () Bool)

(assert (=> b!22258 (= e!14437 tp_is_empty!999)))

(declare-fun mapIsEmpty!986 () Bool)

(assert (=> mapIsEmpty!986 mapRes!986))

(assert (= (and mapNonEmpty!985 condMapEmpty!986) mapIsEmpty!986))

(assert (= (and mapNonEmpty!985 (not condMapEmpty!986)) mapNonEmpty!986))

(assert (= (and mapNonEmpty!986 ((_ is ValueCellFull!300) mapValue!986)) b!22257))

(assert (= (and mapNonEmpty!985 ((_ is ValueCellFull!300) mapDefault!986)) b!22258))

(declare-fun m!16190 () Bool)

(assert (=> mapNonEmpty!986 m!16190))

(declare-fun b_lambda!1555 () Bool)

(assert (= b_lambda!1547 (or (and b!21424 b_free!735) b_lambda!1555)))

(declare-fun b_lambda!1557 () Bool)

(assert (= b_lambda!1545 (or (and b!21424 b_free!735) b_lambda!1557)))

(check-sat (not b!21794) (not b!22235) (not b!22020) (not d!3831) (not b!22106) (not b!21978) (not d!3809) (not b!22067) (not b!22234) (not b!21954) (not b!21855) (not d!3905) (not b!22182) (not b!21873) (not d!3817) (not b!22110) (not b!22113) (not b_lambda!1543) (not bm!1489) (not bm!1478) (not d!3865) (not d!3929) tp_is_empty!999 (not b!21887) (not b!22181) (not b!22207) (not b!22134) (not b!21950) (not d!3855) (not d!3893) (not b!21846) (not d!3913) (not bm!1483) (not b!22141) (not d!3773) (not b!22174) (not d!3925) (not b!21930) (not b!21809) (not d!3909) (not bm!1509) (not b!22232) (not d!3859) (not b!22062) (not b!22162) (not bm!1547) (not b!21990) (not d!3813) (not b!21828) (not bm!1496) (not b!22236) (not b!22021) (not bm!1502) (not b!21997) (not d!3931) (not bm!1514) (not b!22252) (not d!3921) (not d!3901) (not bm!1556) (not d!3781) (not b!22002) (not b!21916) (not b!22237) (not b!22102) (not b!22014) (not b!22186) (not b!22209) (not b!21974) (not d!3917) (not d!3839) (not b_lambda!1541) (not b!22057) (not bm!1523) (not d!3851) (not b!22240) (not d!3761) (not b!22161) (not b!21947) (not d!3877) (not d!3803) (not bm!1479) (not b!22118) (not d!3899) (not b!22214) (not b!22073) (not bm!1544) (not b!21996) (not bm!1522) (not b!21957) (not b!22246) (not b_lambda!1555) (not d!3805) (not b!22253) (not b!22112) (not bm!1541) (not b!21857) (not b!22142) (not bm!1554) (not b!22076) (not b!22056) (not bm!1534) (not d!3919) (not bm!1526) (not bm!1501) (not b!21936) (not b!21989) (not b!22248) (not d!3785) (not b!22077) (not d!3841) (not d!3769) (not d!3857) (not bm!1518) (not b!22037) (not d!3819) (not b!22205) (not bm!1517) (not d!3897) (not bm!1484) (not d!3927) (not b!22111) (not b!22169) (not d!3881) (not b!22115) (not bm!1520) (not d!3873) (not b!22104) (not b!21946) (not bm!1552) (not d!3777) (not b!22210) (not d!3829) (not d!3923) (not bm!1495) (not d!3771) (not d!3937) (not b!22225) (not d!3933) (not bm!1536) (not b!22166) (not b!21808) (not d!3775) (not b!21786) (not d!3867) (not b!22016) (not d!3849) (not bm!1488) (not b_lambda!1539) (not d!3811) (not b!22119) (not d!3801) (not d!3869) (not b!21800) (not b!22042) (not b!22122) (not b!21872) (not b_next!735) (not b!22189) (not b_lambda!1537) (not b!21926) (not b!21836) (not b!21971) (not b!22143) (not b_lambda!1549) (not d!3807) (not b!22019) (not d!3889) (not d!3837) (not d!3847) (not bm!1551) (not b!22146) (not mapNonEmpty!986) (not b!21975) (not bm!1537) (not b!22167) (not b!22243) (not d!3871) (not b!22137) (not b!22192) (not bm!1480) (not b!22159) (not b!22208) (not b!21810) (not b!21866) (not d!3767) (not b!22244) (not d!3903) (not b!21885) (not bm!1549) (not d!3941) (not b!21952) (not b!22242) (not b!21812) (not d!3907) (not d!3783) (not b!22133) (not b!21968) (not b!21844) (not b!22055) (not b!22157) (not d!3853) (not b_lambda!1557) (not b!22168) (not b!22238) (not b_lambda!1535) (not b!21863) (not b!22108) (not b!22204) (not d!3883) (not b!22121) (not b!22135) (not b!21811) (not bm!1528) (not b!22193) (not bm!1497) (not b!22039) (not d!3915) (not bm!1506) (not d!3935) (not b!22038) (not b!21953) (not b!22163) (not bm!1508) (not b!21999) (not b!21813) (not bm!1555) (not b!22188) (not b!21807) (not b!22184) (not d!3843) (not bm!1532) (not d!3885) (not b!22041) (not d!3911) (not d!3795) (not d!3887) (not b!22211) (not b!22158) (not b!22160) (not b!22145) (not b!22206) (not b!22245) (not b!21969) (not b!22256) (not b!21869) (not b!21918) (not b!22015) (not b!22035) (not b!21934) (not b!22060) (not bm!1539) (not d!3789) (not b!22117) (not b!21797) (not bm!1543) (not b!22000) (not b!22054) (not b!21956) (not bm!1499) (not b!21993) (not b_lambda!1553) (not d!3797) (not bm!1531) (not b!21868) (not b!21927) (not b!22251) (not b!21864) (not b_lambda!1533) (not b!21977) (not b!22139) (not b!21920) (not b!21801) (not b!22233) (not b!22254) (not b!21791) (not b!22190) (not b_lambda!1551) (not bm!1504) (not b_lambda!1531) (not b!21973) (not b!22070) (not d!3939) (not b!21870) (not bm!1486) (not bm!1527) (not b!22249) (not b!22053) (not d!3835) b_and!1451 (not bm!1511) (not b!22032) (not b!21921) (not d!3825) (not d!3815) (not d!3793) (not b!22058) (not b!21884) (not bm!1546))
(check-sat b_and!1451 (not b_next!735))

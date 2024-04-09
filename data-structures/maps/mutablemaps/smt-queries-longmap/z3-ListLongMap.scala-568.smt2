; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!15474 () Bool)

(assert start!15474)

(declare-fun b!153721 () Bool)

(declare-fun b_free!3209 () Bool)

(declare-fun b_next!3209 () Bool)

(assert (=> b!153721 (= b_free!3209 (not b_next!3209))))

(declare-fun tp!12145 () Bool)

(declare-fun b_and!9589 () Bool)

(assert (=> b!153721 (= tp!12145 b_and!9589)))

(declare-fun b!153727 () Bool)

(declare-fun b_free!3211 () Bool)

(declare-fun b_next!3211 () Bool)

(assert (=> b!153727 (= b_free!3211 (not b_next!3211))))

(declare-fun tp!12144 () Bool)

(declare-fun b_and!9591 () Bool)

(assert (=> b!153727 (= tp!12144 b_and!9591)))

(declare-fun b!153714 () Bool)

(declare-fun e!100431 () Bool)

(declare-datatypes ((V!3675 0))(
  ( (V!3676 (val!1555 Int)) )
))
(declare-datatypes ((array!5090 0))(
  ( (array!5091 (arr!2404 (Array (_ BitVec 32) (_ BitVec 64))) (size!2681 (_ BitVec 32))) )
))
(declare-datatypes ((ValueCell!1167 0))(
  ( (ValueCellFull!1167 (v!3409 V!3675)) (EmptyCell!1167) )
))
(declare-datatypes ((array!5092 0))(
  ( (array!5093 (arr!2405 (Array (_ BitVec 32) ValueCell!1167)) (size!2682 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1242 0))(
  ( (LongMapFixedSize!1243 (defaultEntry!3060 Int) (mask!7462 (_ BitVec 32)) (extraKeys!2801 (_ BitVec 32)) (zeroValue!2903 V!3675) (minValue!2903 V!3675) (_size!670 (_ BitVec 32)) (_keys!4833 array!5090) (_values!3043 array!5092) (_vacant!670 (_ BitVec 32))) )
))
(declare-datatypes ((tuple2!2796 0))(
  ( (tuple2!2797 (_1!1408 Bool) (_2!1408 LongMapFixedSize!1242)) )
))
(declare-fun lt!80695 () tuple2!2796)

(declare-datatypes ((Cell!1020 0))(
  ( (Cell!1021 (v!3410 LongMapFixedSize!1242)) )
))
(declare-datatypes ((LongMap!1020 0))(
  ( (LongMap!1021 (underlying!521 Cell!1020)) )
))
(declare-fun thiss!992 () LongMap!1020)

(declare-datatypes ((tuple2!2798 0))(
  ( (tuple2!2799 (_1!1409 (_ BitVec 64)) (_2!1409 V!3675)) )
))
(declare-datatypes ((List!1819 0))(
  ( (Nil!1816) (Cons!1815 (h!2424 tuple2!2798) (t!6617 List!1819)) )
))
(declare-datatypes ((ListLongMap!1809 0))(
  ( (ListLongMap!1810 (toList!920 List!1819)) )
))
(declare-fun map!1495 (LongMapFixedSize!1242) ListLongMap!1809)

(assert (=> b!153714 (= e!100431 (not (= (map!1495 (_2!1408 lt!80695)) (map!1495 (v!3410 (underlying!521 thiss!992))))))))

(declare-fun b!153715 () Bool)

(declare-fun e!100419 () Bool)

(declare-fun tp_is_empty!3021 () Bool)

(assert (=> b!153715 (= e!100419 tp_is_empty!3021)))

(declare-fun b!153716 () Bool)

(declare-fun e!100426 () Bool)

(assert (=> b!153716 (= e!100426 tp_is_empty!3021)))

(declare-fun b!153717 () Bool)

(declare-fun res!72647 () Bool)

(declare-fun e!100425 () Bool)

(assert (=> b!153717 (=> (not res!72647) (not e!100425))))

(declare-fun newMap!16 () LongMapFixedSize!1242)

(declare-fun valid!607 (LongMapFixedSize!1242) Bool)

(assert (=> b!153717 (= res!72647 (valid!607 newMap!16))))

(declare-fun res!72643 () Bool)

(assert (=> start!15474 (=> (not res!72643) (not e!100425))))

(declare-fun valid!608 (LongMap!1020) Bool)

(assert (=> start!15474 (= res!72643 (valid!608 thiss!992))))

(assert (=> start!15474 e!100425))

(declare-fun e!100428 () Bool)

(assert (=> start!15474 e!100428))

(assert (=> start!15474 true))

(declare-fun e!100418 () Bool)

(assert (=> start!15474 e!100418))

(declare-fun b!153718 () Bool)

(declare-fun e!100421 () Bool)

(assert (=> b!153718 (= e!100425 e!100421)))

(declare-fun res!72646 () Bool)

(assert (=> b!153718 (=> (not res!72646) (not e!100421))))

(assert (=> b!153718 (= res!72646 (_1!1408 lt!80695))))

(declare-fun from!355 () (_ BitVec 32))

(declare-fun repackFrom!18 (LongMap!1020 LongMapFixedSize!1242 (_ BitVec 32)) tuple2!2796)

(assert (=> b!153718 (= lt!80695 (repackFrom!18 thiss!992 newMap!16 (bvsub from!355 #b00000000000000000000000000000001)))))

(declare-fun b!153719 () Bool)

(declare-fun e!100430 () Bool)

(assert (=> b!153719 (= e!100428 e!100430)))

(declare-fun b!153720 () Bool)

(declare-fun e!100423 () Bool)

(declare-fun mapRes!5149 () Bool)

(assert (=> b!153720 (= e!100423 (and e!100426 mapRes!5149))))

(declare-fun condMapEmpty!5149 () Bool)

(declare-fun mapDefault!5149 () ValueCell!1167)

(assert (=> b!153720 (= condMapEmpty!5149 (= (arr!2405 (_values!3043 newMap!16)) ((as const (Array (_ BitVec 32) ValueCell!1167)) mapDefault!5149)))))

(declare-fun e!100429 () Bool)

(declare-fun e!100420 () Bool)

(declare-fun array_inv!1493 (array!5090) Bool)

(declare-fun array_inv!1494 (array!5092) Bool)

(assert (=> b!153721 (= e!100420 (and tp!12145 tp_is_empty!3021 (array_inv!1493 (_keys!4833 (v!3410 (underlying!521 thiss!992)))) (array_inv!1494 (_values!3043 (v!3410 (underlying!521 thiss!992)))) e!100429))))

(declare-fun b!153722 () Bool)

(assert (=> b!153722 (= e!100421 e!100431)))

(declare-fun res!72644 () Bool)

(assert (=> b!153722 (=> res!72644 e!100431)))

(assert (=> b!153722 (= res!72644 (not (valid!607 (_2!1408 lt!80695))))))

(declare-fun b!153723 () Bool)

(declare-fun e!100427 () Bool)

(assert (=> b!153723 (= e!100427 tp_is_empty!3021)))

(declare-fun b!153724 () Bool)

(declare-fun res!72641 () Bool)

(assert (=> b!153724 (=> (not res!72641) (not e!100425))))

(assert (=> b!153724 (= res!72641 (bvsge (bvadd #b00000000000000000000000000000001 (mask!7462 newMap!16)) (_size!670 (v!3410 (underlying!521 thiss!992)))))))

(declare-fun mapIsEmpty!5149 () Bool)

(declare-fun mapRes!5150 () Bool)

(assert (=> mapIsEmpty!5149 mapRes!5150))

(declare-fun mapNonEmpty!5149 () Bool)

(declare-fun tp!12143 () Bool)

(assert (=> mapNonEmpty!5149 (= mapRes!5149 (and tp!12143 e!100419))))

(declare-fun mapValue!5150 () ValueCell!1167)

(declare-fun mapRest!5149 () (Array (_ BitVec 32) ValueCell!1167))

(declare-fun mapKey!5149 () (_ BitVec 32))

(assert (=> mapNonEmpty!5149 (= (arr!2405 (_values!3043 newMap!16)) (store mapRest!5149 mapKey!5149 mapValue!5150))))

(declare-fun b!153725 () Bool)

(assert (=> b!153725 (= e!100430 e!100420)))

(declare-fun b!153726 () Bool)

(declare-fun res!72642 () Bool)

(assert (=> b!153726 (=> (not res!72642) (not e!100425))))

(assert (=> b!153726 (= res!72642 (and (or (= (select (arr!2404 (_keys!4833 (v!3410 (underlying!521 thiss!992)))) from!355) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!2404 (_keys!4833 (v!3410 (underlying!521 thiss!992)))) from!355) #b1000000000000000000000000000000000000000000000000000000000000000)) (bvsgt from!355 #b00000000000000000000000000000000)))))

(assert (=> b!153727 (= e!100418 (and tp!12144 tp_is_empty!3021 (array_inv!1493 (_keys!4833 newMap!16)) (array_inv!1494 (_values!3043 newMap!16)) e!100423))))

(declare-fun b!153728 () Bool)

(assert (=> b!153728 (= e!100429 (and e!100427 mapRes!5150))))

(declare-fun condMapEmpty!5150 () Bool)

(declare-fun mapDefault!5150 () ValueCell!1167)

(assert (=> b!153728 (= condMapEmpty!5150 (= (arr!2405 (_values!3043 (v!3410 (underlying!521 thiss!992)))) ((as const (Array (_ BitVec 32) ValueCell!1167)) mapDefault!5150)))))

(declare-fun mapIsEmpty!5150 () Bool)

(assert (=> mapIsEmpty!5150 mapRes!5149))

(declare-fun b!153729 () Bool)

(declare-fun res!72645 () Bool)

(assert (=> b!153729 (=> (not res!72645) (not e!100425))))

(declare-fun getCurrentListMap!582 (array!5090 array!5092 (_ BitVec 32) (_ BitVec 32) V!3675 V!3675 (_ BitVec 32) Int) ListLongMap!1809)

(assert (=> b!153729 (= res!72645 (= (getCurrentListMap!582 (_keys!4833 (v!3410 (underlying!521 thiss!992))) (_values!3043 (v!3410 (underlying!521 thiss!992))) (mask!7462 (v!3410 (underlying!521 thiss!992))) (extraKeys!2801 (v!3410 (underlying!521 thiss!992))) (zeroValue!2903 (v!3410 (underlying!521 thiss!992))) (minValue!2903 (v!3410 (underlying!521 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!3060 (v!3410 (underlying!521 thiss!992)))) (map!1495 newMap!16)))))

(declare-fun mapNonEmpty!5150 () Bool)

(declare-fun tp!12146 () Bool)

(declare-fun e!100424 () Bool)

(assert (=> mapNonEmpty!5150 (= mapRes!5150 (and tp!12146 e!100424))))

(declare-fun mapValue!5149 () ValueCell!1167)

(declare-fun mapKey!5150 () (_ BitVec 32))

(declare-fun mapRest!5150 () (Array (_ BitVec 32) ValueCell!1167))

(assert (=> mapNonEmpty!5150 (= (arr!2405 (_values!3043 (v!3410 (underlying!521 thiss!992)))) (store mapRest!5150 mapKey!5150 mapValue!5149))))

(declare-fun b!153730 () Bool)

(declare-fun res!72648 () Bool)

(assert (=> b!153730 (=> (not res!72648) (not e!100425))))

(assert (=> b!153730 (= res!72648 (and (bvsge from!355 #b00000000000000000000000000000000) (bvslt from!355 (size!2681 (_keys!4833 (v!3410 (underlying!521 thiss!992)))))))))

(declare-fun b!153731 () Bool)

(assert (=> b!153731 (= e!100424 tp_is_empty!3021)))

(assert (= (and start!15474 res!72643) b!153730))

(assert (= (and b!153730 res!72648) b!153717))

(assert (= (and b!153717 res!72647) b!153724))

(assert (= (and b!153724 res!72641) b!153729))

(assert (= (and b!153729 res!72645) b!153726))

(assert (= (and b!153726 res!72642) b!153718))

(assert (= (and b!153718 res!72646) b!153722))

(assert (= (and b!153722 (not res!72644)) b!153714))

(assert (= (and b!153728 condMapEmpty!5150) mapIsEmpty!5149))

(assert (= (and b!153728 (not condMapEmpty!5150)) mapNonEmpty!5150))

(get-info :version)

(assert (= (and mapNonEmpty!5150 ((_ is ValueCellFull!1167) mapValue!5149)) b!153731))

(assert (= (and b!153728 ((_ is ValueCellFull!1167) mapDefault!5150)) b!153723))

(assert (= b!153721 b!153728))

(assert (= b!153725 b!153721))

(assert (= b!153719 b!153725))

(assert (= start!15474 b!153719))

(assert (= (and b!153720 condMapEmpty!5149) mapIsEmpty!5150))

(assert (= (and b!153720 (not condMapEmpty!5149)) mapNonEmpty!5149))

(assert (= (and mapNonEmpty!5149 ((_ is ValueCellFull!1167) mapValue!5150)) b!153715))

(assert (= (and b!153720 ((_ is ValueCellFull!1167) mapDefault!5149)) b!153716))

(assert (= b!153727 b!153720))

(assert (= start!15474 b!153727))

(declare-fun m!187533 () Bool)

(assert (=> b!153718 m!187533))

(declare-fun m!187535 () Bool)

(assert (=> mapNonEmpty!5150 m!187535))

(declare-fun m!187537 () Bool)

(assert (=> b!153727 m!187537))

(declare-fun m!187539 () Bool)

(assert (=> b!153727 m!187539))

(declare-fun m!187541 () Bool)

(assert (=> b!153729 m!187541))

(declare-fun m!187543 () Bool)

(assert (=> b!153729 m!187543))

(declare-fun m!187545 () Bool)

(assert (=> mapNonEmpty!5149 m!187545))

(declare-fun m!187547 () Bool)

(assert (=> start!15474 m!187547))

(declare-fun m!187549 () Bool)

(assert (=> b!153722 m!187549))

(declare-fun m!187551 () Bool)

(assert (=> b!153721 m!187551))

(declare-fun m!187553 () Bool)

(assert (=> b!153721 m!187553))

(declare-fun m!187555 () Bool)

(assert (=> b!153717 m!187555))

(declare-fun m!187557 () Bool)

(assert (=> b!153714 m!187557))

(declare-fun m!187559 () Bool)

(assert (=> b!153714 m!187559))

(declare-fun m!187561 () Bool)

(assert (=> b!153726 m!187561))

(check-sat (not b!153727) (not b!153729) (not mapNonEmpty!5149) (not b_next!3209) (not b_next!3211) (not start!15474) b_and!9589 (not b!153721) (not mapNonEmpty!5150) (not b!153717) tp_is_empty!3021 (not b!153718) (not b!153722) b_and!9591 (not b!153714))
(check-sat b_and!9589 b_and!9591 (not b_next!3209) (not b_next!3211))
(get-model)

(declare-fun bm!17085 () Bool)

(declare-fun call!17090 () Bool)

(declare-fun lt!80761 () ListLongMap!1809)

(declare-fun contains!960 (ListLongMap!1809 (_ BitVec 64)) Bool)

(assert (=> bm!17085 (= call!17090 (contains!960 lt!80761 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun d!50469 () Bool)

(declare-fun e!100516 () Bool)

(assert (=> d!50469 e!100516))

(declare-fun res!72697 () Bool)

(assert (=> d!50469 (=> (not res!72697) (not e!100516))))

(assert (=> d!50469 (= res!72697 (or (bvsge (bvadd #b00000000000000000000000000000001 from!355) (size!2681 (_keys!4833 (v!3410 (underlying!521 thiss!992))))) (and (bvsge (bvadd #b00000000000000000000000000000001 from!355) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!355) (size!2681 (_keys!4833 (v!3410 (underlying!521 thiss!992))))))))))

(declare-fun lt!80754 () ListLongMap!1809)

(assert (=> d!50469 (= lt!80761 lt!80754)))

(declare-datatypes ((Unit!4892 0))(
  ( (Unit!4893) )
))
(declare-fun lt!80762 () Unit!4892)

(declare-fun e!100510 () Unit!4892)

(assert (=> d!50469 (= lt!80762 e!100510)))

(declare-fun c!29456 () Bool)

(declare-fun e!100515 () Bool)

(assert (=> d!50469 (= c!29456 e!100515)))

(declare-fun res!72698 () Bool)

(assert (=> d!50469 (=> (not res!72698) (not e!100515))))

(assert (=> d!50469 (= res!72698 (bvslt (bvadd #b00000000000000000000000000000001 from!355) (size!2681 (_keys!4833 (v!3410 (underlying!521 thiss!992))))))))

(declare-fun e!100511 () ListLongMap!1809)

(assert (=> d!50469 (= lt!80754 e!100511)))

(declare-fun c!29455 () Bool)

(assert (=> d!50469 (= c!29455 (and (not (= (bvand (extraKeys!2801 (v!3410 (underlying!521 thiss!992))) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (extraKeys!2801 (v!3410 (underlying!521 thiss!992))) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> d!50469 (validMask!0 (mask!7462 (v!3410 (underlying!521 thiss!992))))))

(assert (=> d!50469 (= (getCurrentListMap!582 (_keys!4833 (v!3410 (underlying!521 thiss!992))) (_values!3043 (v!3410 (underlying!521 thiss!992))) (mask!7462 (v!3410 (underlying!521 thiss!992))) (extraKeys!2801 (v!3410 (underlying!521 thiss!992))) (zeroValue!2903 (v!3410 (underlying!521 thiss!992))) (minValue!2903 (v!3410 (underlying!521 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!3060 (v!3410 (underlying!521 thiss!992)))) lt!80761)))

(declare-fun bm!17086 () Bool)

(declare-fun call!17091 () ListLongMap!1809)

(declare-fun call!17094 () ListLongMap!1809)

(assert (=> bm!17086 (= call!17091 call!17094)))

(declare-fun b!153828 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!153828 (= e!100515 (validKeyInArray!0 (select (arr!2404 (_keys!4833 (v!3410 (underlying!521 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))))))

(declare-fun bm!17087 () Bool)

(declare-fun call!17089 () ListLongMap!1809)

(declare-fun call!17093 () ListLongMap!1809)

(assert (=> bm!17087 (= call!17089 call!17093)))

(declare-fun b!153829 () Bool)

(declare-fun e!100506 () ListLongMap!1809)

(assert (=> b!153829 (= e!100506 call!17091)))

(declare-fun b!153830 () Bool)

(declare-fun res!72695 () Bool)

(assert (=> b!153830 (=> (not res!72695) (not e!100516))))

(declare-fun e!100504 () Bool)

(assert (=> b!153830 (= res!72695 e!100504)))

(declare-fun res!72693 () Bool)

(assert (=> b!153830 (=> res!72693 e!100504)))

(declare-fun e!100513 () Bool)

(assert (=> b!153830 (= res!72693 (not e!100513))))

(declare-fun res!72694 () Bool)

(assert (=> b!153830 (=> (not res!72694) (not e!100513))))

(assert (=> b!153830 (= res!72694 (bvslt (bvadd #b00000000000000000000000000000001 from!355) (size!2681 (_keys!4833 (v!3410 (underlying!521 thiss!992))))))))

(declare-fun b!153831 () Bool)

(declare-fun e!100514 () Bool)

(assert (=> b!153831 (= e!100514 (not call!17090))))

(declare-fun bm!17088 () Bool)

(declare-fun call!17092 () Bool)

(assert (=> bm!17088 (= call!17092 (contains!960 lt!80761 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!153832 () Bool)

(declare-fun res!72699 () Bool)

(assert (=> b!153832 (=> (not res!72699) (not e!100516))))

(assert (=> b!153832 (= res!72699 e!100514)))

(declare-fun c!29454 () Bool)

(assert (=> b!153832 (= c!29454 (not (= (bvand (extraKeys!2801 (v!3410 (underlying!521 thiss!992))) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun e!100512 () Bool)

(declare-fun b!153833 () Bool)

(declare-fun apply!127 (ListLongMap!1809 (_ BitVec 64)) V!3675)

(declare-fun get!1606 (ValueCell!1167 V!3675) V!3675)

(declare-fun dynLambda!465 (Int (_ BitVec 64)) V!3675)

(assert (=> b!153833 (= e!100512 (= (apply!127 lt!80761 (select (arr!2404 (_keys!4833 (v!3410 (underlying!521 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))) (get!1606 (select (arr!2405 (_values!3043 (v!3410 (underlying!521 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (dynLambda!465 (defaultEntry!3060 (v!3410 (underlying!521 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!153833 (and (bvsge (bvadd #b00000000000000000000000000000001 from!355) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!355) (size!2682 (_values!3043 (v!3410 (underlying!521 thiss!992))))))))

(assert (=> b!153833 (and (bvsge (bvadd #b00000000000000000000000000000001 from!355) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!355) (size!2681 (_keys!4833 (v!3410 (underlying!521 thiss!992))))))))

(declare-fun b!153834 () Bool)

(declare-fun e!100508 () ListLongMap!1809)

(assert (=> b!153834 (= e!100508 call!17089)))

(declare-fun b!153835 () Bool)

(declare-fun Unit!4894 () Unit!4892)

(assert (=> b!153835 (= e!100510 Unit!4894)))

(declare-fun b!153836 () Bool)

(declare-fun e!100507 () Bool)

(assert (=> b!153836 (= e!100514 e!100507)))

(declare-fun res!72696 () Bool)

(assert (=> b!153836 (= res!72696 call!17090)))

(assert (=> b!153836 (=> (not res!72696) (not e!100507))))

(declare-fun b!153837 () Bool)

(declare-fun e!100505 () Bool)

(assert (=> b!153837 (= e!100505 (= (apply!127 lt!80761 #b1000000000000000000000000000000000000000000000000000000000000000) (minValue!2903 (v!3410 (underlying!521 thiss!992)))))))

(declare-fun bm!17089 () Bool)

(declare-fun call!17088 () ListLongMap!1809)

(assert (=> bm!17089 (= call!17094 call!17088)))

(declare-fun b!153838 () Bool)

(assert (=> b!153838 (= e!100511 e!100508)))

(declare-fun c!29457 () Bool)

(assert (=> b!153838 (= c!29457 (and (not (= (bvand (extraKeys!2801 (v!3410 (underlying!521 thiss!992))) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand (extraKeys!2801 (v!3410 (underlying!521 thiss!992))) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!153839 () Bool)

(declare-fun +!186 (ListLongMap!1809 tuple2!2798) ListLongMap!1809)

(assert (=> b!153839 (= e!100511 (+!186 call!17093 (tuple2!2799 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2903 (v!3410 (underlying!521 thiss!992))))))))

(declare-fun b!153840 () Bool)

(assert (=> b!153840 (= e!100504 e!100512)))

(declare-fun res!72692 () Bool)

(assert (=> b!153840 (=> (not res!72692) (not e!100512))))

(assert (=> b!153840 (= res!72692 (contains!960 lt!80761 (select (arr!2404 (_keys!4833 (v!3410 (underlying!521 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))))))

(assert (=> b!153840 (and (bvsge (bvadd #b00000000000000000000000000000001 from!355) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!355) (size!2681 (_keys!4833 (v!3410 (underlying!521 thiss!992))))))))

(declare-fun b!153841 () Bool)

(assert (=> b!153841 (= e!100513 (validKeyInArray!0 (select (arr!2404 (_keys!4833 (v!3410 (underlying!521 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))))))

(declare-fun b!153842 () Bool)

(assert (=> b!153842 (= e!100507 (= (apply!127 lt!80761 #b0000000000000000000000000000000000000000000000000000000000000000) (zeroValue!2903 (v!3410 (underlying!521 thiss!992)))))))

(declare-fun b!153843 () Bool)

(declare-fun lt!80759 () Unit!4892)

(assert (=> b!153843 (= e!100510 lt!80759)))

(declare-fun lt!80763 () ListLongMap!1809)

(declare-fun getCurrentListMapNoExtraKeys!157 (array!5090 array!5092 (_ BitVec 32) (_ BitVec 32) V!3675 V!3675 (_ BitVec 32) Int) ListLongMap!1809)

(assert (=> b!153843 (= lt!80763 (getCurrentListMapNoExtraKeys!157 (_keys!4833 (v!3410 (underlying!521 thiss!992))) (_values!3043 (v!3410 (underlying!521 thiss!992))) (mask!7462 (v!3410 (underlying!521 thiss!992))) (extraKeys!2801 (v!3410 (underlying!521 thiss!992))) (zeroValue!2903 (v!3410 (underlying!521 thiss!992))) (minValue!2903 (v!3410 (underlying!521 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!3060 (v!3410 (underlying!521 thiss!992)))))))

(declare-fun lt!80748 () (_ BitVec 64))

(assert (=> b!153843 (= lt!80748 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!80764 () (_ BitVec 64))

(assert (=> b!153843 (= lt!80764 (select (arr!2404 (_keys!4833 (v!3410 (underlying!521 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)))))

(declare-fun lt!80744 () Unit!4892)

(declare-fun addStillContains!103 (ListLongMap!1809 (_ BitVec 64) V!3675 (_ BitVec 64)) Unit!4892)

(assert (=> b!153843 (= lt!80744 (addStillContains!103 lt!80763 lt!80748 (zeroValue!2903 (v!3410 (underlying!521 thiss!992))) lt!80764))))

(assert (=> b!153843 (contains!960 (+!186 lt!80763 (tuple2!2799 lt!80748 (zeroValue!2903 (v!3410 (underlying!521 thiss!992))))) lt!80764)))

(declare-fun lt!80750 () Unit!4892)

(assert (=> b!153843 (= lt!80750 lt!80744)))

(declare-fun lt!80757 () ListLongMap!1809)

(assert (=> b!153843 (= lt!80757 (getCurrentListMapNoExtraKeys!157 (_keys!4833 (v!3410 (underlying!521 thiss!992))) (_values!3043 (v!3410 (underlying!521 thiss!992))) (mask!7462 (v!3410 (underlying!521 thiss!992))) (extraKeys!2801 (v!3410 (underlying!521 thiss!992))) (zeroValue!2903 (v!3410 (underlying!521 thiss!992))) (minValue!2903 (v!3410 (underlying!521 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!3060 (v!3410 (underlying!521 thiss!992)))))))

(declare-fun lt!80751 () (_ BitVec 64))

(assert (=> b!153843 (= lt!80751 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!80753 () (_ BitVec 64))

(assert (=> b!153843 (= lt!80753 (select (arr!2404 (_keys!4833 (v!3410 (underlying!521 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)))))

(declare-fun lt!80752 () Unit!4892)

(declare-fun addApplyDifferent!103 (ListLongMap!1809 (_ BitVec 64) V!3675 (_ BitVec 64)) Unit!4892)

(assert (=> b!153843 (= lt!80752 (addApplyDifferent!103 lt!80757 lt!80751 (minValue!2903 (v!3410 (underlying!521 thiss!992))) lt!80753))))

(assert (=> b!153843 (= (apply!127 (+!186 lt!80757 (tuple2!2799 lt!80751 (minValue!2903 (v!3410 (underlying!521 thiss!992))))) lt!80753) (apply!127 lt!80757 lt!80753))))

(declare-fun lt!80755 () Unit!4892)

(assert (=> b!153843 (= lt!80755 lt!80752)))

(declare-fun lt!80743 () ListLongMap!1809)

(assert (=> b!153843 (= lt!80743 (getCurrentListMapNoExtraKeys!157 (_keys!4833 (v!3410 (underlying!521 thiss!992))) (_values!3043 (v!3410 (underlying!521 thiss!992))) (mask!7462 (v!3410 (underlying!521 thiss!992))) (extraKeys!2801 (v!3410 (underlying!521 thiss!992))) (zeroValue!2903 (v!3410 (underlying!521 thiss!992))) (minValue!2903 (v!3410 (underlying!521 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!3060 (v!3410 (underlying!521 thiss!992)))))))

(declare-fun lt!80758 () (_ BitVec 64))

(assert (=> b!153843 (= lt!80758 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!80746 () (_ BitVec 64))

(assert (=> b!153843 (= lt!80746 (select (arr!2404 (_keys!4833 (v!3410 (underlying!521 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)))))

(declare-fun lt!80756 () Unit!4892)

(assert (=> b!153843 (= lt!80756 (addApplyDifferent!103 lt!80743 lt!80758 (zeroValue!2903 (v!3410 (underlying!521 thiss!992))) lt!80746))))

(assert (=> b!153843 (= (apply!127 (+!186 lt!80743 (tuple2!2799 lt!80758 (zeroValue!2903 (v!3410 (underlying!521 thiss!992))))) lt!80746) (apply!127 lt!80743 lt!80746))))

(declare-fun lt!80745 () Unit!4892)

(assert (=> b!153843 (= lt!80745 lt!80756)))

(declare-fun lt!80747 () ListLongMap!1809)

(assert (=> b!153843 (= lt!80747 (getCurrentListMapNoExtraKeys!157 (_keys!4833 (v!3410 (underlying!521 thiss!992))) (_values!3043 (v!3410 (underlying!521 thiss!992))) (mask!7462 (v!3410 (underlying!521 thiss!992))) (extraKeys!2801 (v!3410 (underlying!521 thiss!992))) (zeroValue!2903 (v!3410 (underlying!521 thiss!992))) (minValue!2903 (v!3410 (underlying!521 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!3060 (v!3410 (underlying!521 thiss!992)))))))

(declare-fun lt!80749 () (_ BitVec 64))

(assert (=> b!153843 (= lt!80749 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!80760 () (_ BitVec 64))

(assert (=> b!153843 (= lt!80760 (select (arr!2404 (_keys!4833 (v!3410 (underlying!521 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)))))

(assert (=> b!153843 (= lt!80759 (addApplyDifferent!103 lt!80747 lt!80749 (minValue!2903 (v!3410 (underlying!521 thiss!992))) lt!80760))))

(assert (=> b!153843 (= (apply!127 (+!186 lt!80747 (tuple2!2799 lt!80749 (minValue!2903 (v!3410 (underlying!521 thiss!992))))) lt!80760) (apply!127 lt!80747 lt!80760))))

(declare-fun b!153844 () Bool)

(assert (=> b!153844 (= e!100506 call!17089)))

(declare-fun bm!17090 () Bool)

(assert (=> bm!17090 (= call!17093 (+!186 (ite c!29455 call!17088 (ite c!29457 call!17094 call!17091)) (ite (or c!29455 c!29457) (tuple2!2799 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2903 (v!3410 (underlying!521 thiss!992)))) (tuple2!2799 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2903 (v!3410 (underlying!521 thiss!992)))))))))

(declare-fun b!153845 () Bool)

(declare-fun e!100509 () Bool)

(assert (=> b!153845 (= e!100509 (not call!17092))))

(declare-fun b!153846 () Bool)

(assert (=> b!153846 (= e!100509 e!100505)))

(declare-fun res!72691 () Bool)

(assert (=> b!153846 (= res!72691 call!17092)))

(assert (=> b!153846 (=> (not res!72691) (not e!100505))))

(declare-fun b!153847 () Bool)

(declare-fun c!29458 () Bool)

(assert (=> b!153847 (= c!29458 (and (not (= (bvand (extraKeys!2801 (v!3410 (underlying!521 thiss!992))) #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand (extraKeys!2801 (v!3410 (underlying!521 thiss!992))) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!153847 (= e!100508 e!100506)))

(declare-fun bm!17091 () Bool)

(assert (=> bm!17091 (= call!17088 (getCurrentListMapNoExtraKeys!157 (_keys!4833 (v!3410 (underlying!521 thiss!992))) (_values!3043 (v!3410 (underlying!521 thiss!992))) (mask!7462 (v!3410 (underlying!521 thiss!992))) (extraKeys!2801 (v!3410 (underlying!521 thiss!992))) (zeroValue!2903 (v!3410 (underlying!521 thiss!992))) (minValue!2903 (v!3410 (underlying!521 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!3060 (v!3410 (underlying!521 thiss!992)))))))

(declare-fun b!153848 () Bool)

(assert (=> b!153848 (= e!100516 e!100509)))

(declare-fun c!29459 () Bool)

(assert (=> b!153848 (= c!29459 (not (= (bvand (extraKeys!2801 (v!3410 (underlying!521 thiss!992))) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(assert (= (and d!50469 c!29455) b!153839))

(assert (= (and d!50469 (not c!29455)) b!153838))

(assert (= (and b!153838 c!29457) b!153834))

(assert (= (and b!153838 (not c!29457)) b!153847))

(assert (= (and b!153847 c!29458) b!153844))

(assert (= (and b!153847 (not c!29458)) b!153829))

(assert (= (or b!153844 b!153829) bm!17086))

(assert (= (or b!153834 bm!17086) bm!17089))

(assert (= (or b!153834 b!153844) bm!17087))

(assert (= (or b!153839 bm!17089) bm!17091))

(assert (= (or b!153839 bm!17087) bm!17090))

(assert (= (and d!50469 res!72698) b!153828))

(assert (= (and d!50469 c!29456) b!153843))

(assert (= (and d!50469 (not c!29456)) b!153835))

(assert (= (and d!50469 res!72697) b!153830))

(assert (= (and b!153830 res!72694) b!153841))

(assert (= (and b!153830 (not res!72693)) b!153840))

(assert (= (and b!153840 res!72692) b!153833))

(assert (= (and b!153830 res!72695) b!153832))

(assert (= (and b!153832 c!29454) b!153836))

(assert (= (and b!153832 (not c!29454)) b!153831))

(assert (= (and b!153836 res!72696) b!153842))

(assert (= (or b!153836 b!153831) bm!17085))

(assert (= (and b!153832 res!72699) b!153848))

(assert (= (and b!153848 c!29459) b!153846))

(assert (= (and b!153848 (not c!29459)) b!153845))

(assert (= (and b!153846 res!72691) b!153837))

(assert (= (or b!153846 b!153845) bm!17088))

(declare-fun b_lambda!6865 () Bool)

(assert (=> (not b_lambda!6865) (not b!153833)))

(declare-fun t!6620 () Bool)

(declare-fun tb!2761 () Bool)

(assert (=> (and b!153721 (= (defaultEntry!3060 (v!3410 (underlying!521 thiss!992))) (defaultEntry!3060 (v!3410 (underlying!521 thiss!992)))) t!6620) tb!2761))

(declare-fun result!4489 () Bool)

(assert (=> tb!2761 (= result!4489 tp_is_empty!3021)))

(assert (=> b!153833 t!6620))

(declare-fun b_and!9597 () Bool)

(assert (= b_and!9589 (and (=> t!6620 result!4489) b_and!9597)))

(declare-fun tb!2763 () Bool)

(declare-fun t!6622 () Bool)

(assert (=> (and b!153727 (= (defaultEntry!3060 newMap!16) (defaultEntry!3060 (v!3410 (underlying!521 thiss!992)))) t!6622) tb!2763))

(declare-fun result!4493 () Bool)

(assert (= result!4493 result!4489))

(assert (=> b!153833 t!6622))

(declare-fun b_and!9599 () Bool)

(assert (= b_and!9591 (and (=> t!6622 result!4493) b_and!9599)))

(declare-fun m!187593 () Bool)

(assert (=> b!153839 m!187593))

(declare-fun m!187595 () Bool)

(assert (=> bm!17091 m!187595))

(declare-fun m!187597 () Bool)

(assert (=> b!153842 m!187597))

(declare-fun m!187599 () Bool)

(assert (=> bm!17085 m!187599))

(declare-fun m!187601 () Bool)

(assert (=> b!153843 m!187601))

(declare-fun m!187603 () Bool)

(assert (=> b!153843 m!187603))

(declare-fun m!187605 () Bool)

(assert (=> b!153843 m!187605))

(declare-fun m!187607 () Bool)

(assert (=> b!153843 m!187607))

(declare-fun m!187609 () Bool)

(assert (=> b!153843 m!187609))

(assert (=> b!153843 m!187595))

(declare-fun m!187611 () Bool)

(assert (=> b!153843 m!187611))

(declare-fun m!187613 () Bool)

(assert (=> b!153843 m!187613))

(declare-fun m!187615 () Bool)

(assert (=> b!153843 m!187615))

(declare-fun m!187617 () Bool)

(assert (=> b!153843 m!187617))

(declare-fun m!187619 () Bool)

(assert (=> b!153843 m!187619))

(assert (=> b!153843 m!187611))

(assert (=> b!153843 m!187607))

(declare-fun m!187621 () Bool)

(assert (=> b!153843 m!187621))

(declare-fun m!187623 () Bool)

(assert (=> b!153843 m!187623))

(declare-fun m!187625 () Bool)

(assert (=> b!153843 m!187625))

(assert (=> b!153843 m!187603))

(declare-fun m!187627 () Bool)

(assert (=> b!153843 m!187627))

(assert (=> b!153843 m!187617))

(declare-fun m!187629 () Bool)

(assert (=> b!153843 m!187629))

(declare-fun m!187631 () Bool)

(assert (=> b!153843 m!187631))

(declare-fun m!187633 () Bool)

(assert (=> bm!17090 m!187633))

(assert (=> b!153841 m!187621))

(assert (=> b!153841 m!187621))

(declare-fun m!187635 () Bool)

(assert (=> b!153841 m!187635))

(declare-fun m!187637 () Bool)

(assert (=> b!153833 m!187637))

(declare-fun m!187639 () Bool)

(assert (=> b!153833 m!187639))

(declare-fun m!187641 () Bool)

(assert (=> b!153833 m!187641))

(assert (=> b!153833 m!187621))

(assert (=> b!153833 m!187621))

(declare-fun m!187643 () Bool)

(assert (=> b!153833 m!187643))

(assert (=> b!153833 m!187639))

(assert (=> b!153833 m!187637))

(assert (=> b!153828 m!187621))

(assert (=> b!153828 m!187621))

(assert (=> b!153828 m!187635))

(assert (=> b!153840 m!187621))

(assert (=> b!153840 m!187621))

(declare-fun m!187645 () Bool)

(assert (=> b!153840 m!187645))

(declare-fun m!187647 () Bool)

(assert (=> b!153837 m!187647))

(declare-fun m!187649 () Bool)

(assert (=> d!50469 m!187649))

(declare-fun m!187651 () Bool)

(assert (=> bm!17088 m!187651))

(assert (=> b!153729 d!50469))

(declare-fun d!50471 () Bool)

(assert (=> d!50471 (= (map!1495 newMap!16) (getCurrentListMap!582 (_keys!4833 newMap!16) (_values!3043 newMap!16) (mask!7462 newMap!16) (extraKeys!2801 newMap!16) (zeroValue!2903 newMap!16) (minValue!2903 newMap!16) #b00000000000000000000000000000000 (defaultEntry!3060 newMap!16)))))

(declare-fun bs!6508 () Bool)

(assert (= bs!6508 d!50471))

(declare-fun m!187653 () Bool)

(assert (=> bs!6508 m!187653))

(assert (=> b!153729 d!50471))

(declare-fun d!50473 () Bool)

(assert (=> d!50473 (= (array_inv!1493 (_keys!4833 (v!3410 (underlying!521 thiss!992)))) (bvsge (size!2681 (_keys!4833 (v!3410 (underlying!521 thiss!992)))) #b00000000000000000000000000000000))))

(assert (=> b!153721 d!50473))

(declare-fun d!50475 () Bool)

(assert (=> d!50475 (= (array_inv!1494 (_values!3043 (v!3410 (underlying!521 thiss!992)))) (bvsge (size!2682 (_values!3043 (v!3410 (underlying!521 thiss!992)))) #b00000000000000000000000000000000))))

(assert (=> b!153721 d!50475))

(declare-fun d!50477 () Bool)

(assert (=> d!50477 (= (valid!608 thiss!992) (valid!607 (v!3410 (underlying!521 thiss!992))))))

(declare-fun bs!6509 () Bool)

(assert (= bs!6509 d!50477))

(declare-fun m!187655 () Bool)

(assert (=> bs!6509 m!187655))

(assert (=> start!15474 d!50477))

(declare-fun d!50479 () Bool)

(declare-fun res!72706 () Bool)

(declare-fun e!100519 () Bool)

(assert (=> d!50479 (=> (not res!72706) (not e!100519))))

(declare-fun simpleValid!102 (LongMapFixedSize!1242) Bool)

(assert (=> d!50479 (= res!72706 (simpleValid!102 newMap!16))))

(assert (=> d!50479 (= (valid!607 newMap!16) e!100519)))

(declare-fun b!153857 () Bool)

(declare-fun res!72707 () Bool)

(assert (=> b!153857 (=> (not res!72707) (not e!100519))))

(declare-fun arrayCountValidKeys!0 (array!5090 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!153857 (= res!72707 (= (arrayCountValidKeys!0 (_keys!4833 newMap!16) #b00000000000000000000000000000000 (size!2681 (_keys!4833 newMap!16))) (_size!670 newMap!16)))))

(declare-fun b!153858 () Bool)

(declare-fun res!72708 () Bool)

(assert (=> b!153858 (=> (not res!72708) (not e!100519))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!5090 (_ BitVec 32)) Bool)

(assert (=> b!153858 (= res!72708 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!4833 newMap!16) (mask!7462 newMap!16)))))

(declare-fun b!153859 () Bool)

(declare-datatypes ((List!1821 0))(
  ( (Nil!1818) (Cons!1817 (h!2426 (_ BitVec 64)) (t!6623 List!1821)) )
))
(declare-fun arrayNoDuplicates!0 (array!5090 (_ BitVec 32) List!1821) Bool)

(assert (=> b!153859 (= e!100519 (arrayNoDuplicates!0 (_keys!4833 newMap!16) #b00000000000000000000000000000000 Nil!1818))))

(assert (= (and d!50479 res!72706) b!153857))

(assert (= (and b!153857 res!72707) b!153858))

(assert (= (and b!153858 res!72708) b!153859))

(declare-fun m!187657 () Bool)

(assert (=> d!50479 m!187657))

(declare-fun m!187659 () Bool)

(assert (=> b!153857 m!187659))

(declare-fun m!187661 () Bool)

(assert (=> b!153858 m!187661))

(declare-fun m!187663 () Bool)

(assert (=> b!153859 m!187663))

(assert (=> b!153717 d!50479))

(declare-fun d!50481 () Bool)

(declare-fun res!72709 () Bool)

(declare-fun e!100520 () Bool)

(assert (=> d!50481 (=> (not res!72709) (not e!100520))))

(assert (=> d!50481 (= res!72709 (simpleValid!102 (_2!1408 lt!80695)))))

(assert (=> d!50481 (= (valid!607 (_2!1408 lt!80695)) e!100520)))

(declare-fun b!153860 () Bool)

(declare-fun res!72710 () Bool)

(assert (=> b!153860 (=> (not res!72710) (not e!100520))))

(assert (=> b!153860 (= res!72710 (= (arrayCountValidKeys!0 (_keys!4833 (_2!1408 lt!80695)) #b00000000000000000000000000000000 (size!2681 (_keys!4833 (_2!1408 lt!80695)))) (_size!670 (_2!1408 lt!80695))))))

(declare-fun b!153861 () Bool)

(declare-fun res!72711 () Bool)

(assert (=> b!153861 (=> (not res!72711) (not e!100520))))

(assert (=> b!153861 (= res!72711 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!4833 (_2!1408 lt!80695)) (mask!7462 (_2!1408 lt!80695))))))

(declare-fun b!153862 () Bool)

(assert (=> b!153862 (= e!100520 (arrayNoDuplicates!0 (_keys!4833 (_2!1408 lt!80695)) #b00000000000000000000000000000000 Nil!1818))))

(assert (= (and d!50481 res!72709) b!153860))

(assert (= (and b!153860 res!72710) b!153861))

(assert (= (and b!153861 res!72711) b!153862))

(declare-fun m!187665 () Bool)

(assert (=> d!50481 m!187665))

(declare-fun m!187667 () Bool)

(assert (=> b!153860 m!187667))

(declare-fun m!187669 () Bool)

(assert (=> b!153861 m!187669))

(declare-fun m!187671 () Bool)

(assert (=> b!153862 m!187671))

(assert (=> b!153722 d!50481))

(declare-fun d!50483 () Bool)

(assert (=> d!50483 (= (array_inv!1493 (_keys!4833 newMap!16)) (bvsge (size!2681 (_keys!4833 newMap!16)) #b00000000000000000000000000000000))))

(assert (=> b!153727 d!50483))

(declare-fun d!50485 () Bool)

(assert (=> d!50485 (= (array_inv!1494 (_values!3043 newMap!16)) (bvsge (size!2682 (_values!3043 newMap!16)) #b00000000000000000000000000000000))))

(assert (=> b!153727 d!50485))

(declare-fun b!153892 () Bool)

(declare-fun e!100539 () tuple2!2796)

(declare-fun lt!80833 () tuple2!2796)

(assert (=> b!153892 (= e!100539 (tuple2!2797 false (_2!1408 lt!80833)))))

(declare-fun b!153893 () Bool)

(declare-fun e!100540 () tuple2!2796)

(assert (=> b!153893 (= e!100540 (tuple2!2797 true (_2!1408 lt!80833)))))

(declare-fun lt!80859 () ListLongMap!1809)

(declare-fun call!17126 () ListLongMap!1809)

(assert (=> b!153893 (= lt!80859 call!17126)))

(declare-fun lt!80845 () (_ BitVec 64))

(assert (=> b!153893 (= lt!80845 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!80854 () Unit!4892)

(declare-fun call!17132 () Unit!4892)

(assert (=> b!153893 (= lt!80854 call!17132)))

(declare-fun call!17121 () ListLongMap!1809)

(declare-fun call!17124 () ListLongMap!1809)

(assert (=> b!153893 (= call!17121 call!17124)))

(declare-fun lt!80834 () Unit!4892)

(assert (=> b!153893 (= lt!80834 lt!80854)))

(declare-fun lt!80839 () ListLongMap!1809)

(declare-fun call!17123 () ListLongMap!1809)

(assert (=> b!153893 (= lt!80839 call!17123)))

(declare-fun lt!80836 () (_ BitVec 64))

(assert (=> b!153893 (= lt!80836 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!80831 () Unit!4892)

(declare-fun call!17129 () Unit!4892)

(assert (=> b!153893 (= lt!80831 call!17129)))

(declare-fun call!17130 () ListLongMap!1809)

(declare-fun call!17128 () ListLongMap!1809)

(assert (=> b!153893 (= call!17130 call!17128)))

(declare-fun lt!80855 () Unit!4892)

(assert (=> b!153893 (= lt!80855 lt!80831)))

(declare-fun c!29472 () Bool)

(declare-fun call!17131 () ListLongMap!1809)

(declare-fun bm!17118 () Bool)

(declare-fun lt!80851 () (_ BitVec 64))

(declare-fun lt!80843 () V!3675)

(assert (=> bm!17118 (= call!17128 (+!186 (ite c!29472 call!17126 call!17131) (ite c!29472 (tuple2!2799 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2903 (v!3410 (underlying!521 thiss!992)))) (tuple2!2799 lt!80851 lt!80843))))))

(declare-fun call!17122 () ListLongMap!1809)

(declare-fun call!17125 () ListLongMap!1809)

(declare-fun lt!80856 () (_ BitVec 64))

(declare-fun bm!17119 () Bool)

(assert (=> bm!17119 (= call!17124 (+!186 (ite c!29472 call!17122 call!17125) (ite c!29472 (tuple2!2799 lt!80856 (minValue!2903 (v!3410 (underlying!521 thiss!992)))) (tuple2!2799 lt!80851 lt!80843))))))

(declare-fun b!153894 () Bool)

(declare-fun e!100538 () Bool)

(declare-fun e!100542 () Bool)

(assert (=> b!153894 (= e!100538 e!100542)))

(declare-fun res!72717 () Bool)

(assert (=> b!153894 (=> (not res!72717) (not e!100542))))

(declare-fun lt!80829 () tuple2!2796)

(assert (=> b!153894 (= res!72717 (valid!607 (_2!1408 lt!80829)))))

(declare-fun b!153895 () Bool)

(assert (=> b!153895 (= e!100542 (= (map!1495 (_2!1408 lt!80829)) (map!1495 (v!3410 (underlying!521 thiss!992)))))))

(declare-fun b!153896 () Bool)

(declare-fun e!100544 () tuple2!2796)

(assert (=> b!153896 (= e!100544 e!100539)))

(declare-fun update!233 (LongMapFixedSize!1242 (_ BitVec 64) V!3675) tuple2!2796)

(assert (=> b!153896 (= lt!80833 (update!233 newMap!16 lt!80851 lt!80843))))

(declare-fun c!29476 () Bool)

(declare-fun lt!80840 () ListLongMap!1809)

(assert (=> b!153896 (= c!29476 (contains!960 lt!80840 lt!80851))))

(declare-fun lt!80857 () Unit!4892)

(declare-fun e!100537 () Unit!4892)

(assert (=> b!153896 (= lt!80857 e!100537)))

(declare-fun c!29474 () Bool)

(assert (=> b!153896 (= c!29474 (_1!1408 lt!80833))))

(declare-fun b!153897 () Bool)

(assert (=> b!153897 false))

(declare-fun lt!80837 () Unit!4892)

(declare-fun lt!80860 () Unit!4892)

(assert (=> b!153897 (= lt!80837 lt!80860)))

(declare-fun lt!80848 () (_ BitVec 32))

(declare-fun arrayContainsKey!0 (array!5090 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!153897 (not (arrayContainsKey!0 (_keys!4833 (v!3410 (underlying!521 thiss!992))) lt!80851 lt!80848))))

(declare-fun lemmaArrayNoDuplicateFromNotContainsKeysInAcc!0 (array!5090 (_ BitVec 32) (_ BitVec 64) List!1821) Unit!4892)

(assert (=> b!153897 (= lt!80860 (lemmaArrayNoDuplicateFromNotContainsKeysInAcc!0 (_keys!4833 (v!3410 (underlying!521 thiss!992))) lt!80848 lt!80851 (Cons!1817 lt!80851 Nil!1818)))))

(assert (=> b!153897 (= lt!80848 (bvadd (bvsub from!355 #b00000000000000000000000000000001) #b00000000000000000000000000000001))))

(declare-fun lt!80850 () Unit!4892)

(declare-fun lt!80842 () Unit!4892)

(assert (=> b!153897 (= lt!80850 lt!80842)))

(assert (=> b!153897 (arrayNoDuplicates!0 (_keys!4833 (v!3410 (underlying!521 thiss!992))) (bvsub from!355 #b00000000000000000000000000000001) Nil!1818)))

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!5090 (_ BitVec 32) (_ BitVec 32)) Unit!4892)

(assert (=> b!153897 (= lt!80842 (lemmaNoDuplicateFromThenFromBigger!0 (_keys!4833 (v!3410 (underlying!521 thiss!992))) #b00000000000000000000000000000000 (bvsub from!355 #b00000000000000000000000000000001)))))

(declare-fun lt!80832 () Unit!4892)

(declare-fun lt!80844 () Unit!4892)

(assert (=> b!153897 (= lt!80832 lt!80844)))

(declare-fun e!100541 () Bool)

(assert (=> b!153897 e!100541))

(declare-fun c!29475 () Bool)

(assert (=> b!153897 (= c!29475 (and (not (= lt!80851 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= lt!80851 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun lt!80852 () (_ BitVec 32))

(declare-fun lemmaListMapContainsThenArrayContainsFrom!165 (array!5090 array!5092 (_ BitVec 32) (_ BitVec 32) V!3675 V!3675 (_ BitVec 64) (_ BitVec 32) Int) Unit!4892)

(assert (=> b!153897 (= lt!80844 (lemmaListMapContainsThenArrayContainsFrom!165 (_keys!4833 (v!3410 (underlying!521 thiss!992))) (_values!3043 (v!3410 (underlying!521 thiss!992))) (mask!7462 (v!3410 (underlying!521 thiss!992))) (extraKeys!2801 (v!3410 (underlying!521 thiss!992))) (zeroValue!2903 (v!3410 (underlying!521 thiss!992))) (minValue!2903 (v!3410 (underlying!521 thiss!992))) lt!80851 lt!80852 (defaultEntry!3060 (v!3410 (underlying!521 thiss!992)))))))

(assert (=> b!153897 (= lt!80852 (bvadd (bvsub from!355 #b00000000000000000000000000000001) #b00000000000000000000000000000001))))

(declare-fun Unit!4895 () Unit!4892)

(assert (=> b!153897 (= e!100537 Unit!4895)))

(declare-fun bm!17120 () Bool)

(assert (=> bm!17120 (= call!17130 (+!186 (ite c!29472 call!17125 call!17122) (ite c!29472 (tuple2!2799 lt!80851 lt!80843) (tuple2!2799 lt!80836 (minValue!2903 (v!3410 (underlying!521 thiss!992)))))))))

(declare-fun b!153898 () Bool)

(declare-fun lt!80849 () tuple2!2796)

(assert (=> b!153898 (= e!100540 (tuple2!2797 (_1!1408 lt!80849) (_2!1408 lt!80849)))))

(declare-fun lt!80830 () ListLongMap!1809)

(assert (=> b!153898 (= lt!80830 call!17126)))

(declare-fun lt!80835 () (_ BitVec 64))

(assert (=> b!153898 (= lt!80835 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!80838 () Unit!4892)

(assert (=> b!153898 (= lt!80838 call!17132)))

(assert (=> b!153898 (= call!17121 call!17130)))

(declare-fun lt!80846 () Unit!4892)

(assert (=> b!153898 (= lt!80846 lt!80838)))

(declare-fun lt!80841 () ListLongMap!1809)

(assert (=> b!153898 (= lt!80841 call!17128)))

(assert (=> b!153898 (= lt!80856 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!80858 () Unit!4892)

(assert (=> b!153898 (= lt!80858 call!17129)))

(assert (=> b!153898 (= call!17124 call!17123)))

(declare-fun lt!80847 () Unit!4892)

(assert (=> b!153898 (= lt!80847 lt!80858)))

(declare-fun call!17133 () tuple2!2796)

(assert (=> b!153898 (= lt!80849 call!17133)))

(declare-fun bm!17121 () Bool)

(declare-fun addCommutativeForDiffKeys!79 (ListLongMap!1809 (_ BitVec 64) V!3675 (_ BitVec 64) V!3675) Unit!4892)

(assert (=> bm!17121 (= call!17132 (addCommutativeForDiffKeys!79 (ite c!29472 lt!80830 lt!80859) lt!80851 lt!80843 (ite c!29472 lt!80835 lt!80845) (zeroValue!2903 (v!3410 (underlying!521 thiss!992)))))))

(declare-fun b!153899 () Bool)

(declare-fun e!100543 () tuple2!2796)

(assert (=> b!153899 (= e!100544 e!100543)))

(declare-fun c!29473 () Bool)

(assert (=> b!153899 (= c!29473 (bvsgt (bvsub from!355 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-fun bm!17122 () Bool)

(assert (=> bm!17122 (= call!17122 (+!186 (ite c!29472 lt!80841 lt!80839) (tuple2!2799 lt!80851 lt!80843)))))

(declare-fun bm!17123 () Bool)

(assert (=> bm!17123 (= call!17129 (addCommutativeForDiffKeys!79 (ite c!29472 lt!80841 lt!80839) lt!80851 lt!80843 (ite c!29472 lt!80856 lt!80836) (minValue!2903 (v!3410 (underlying!521 thiss!992)))))))

(declare-fun b!153900 () Bool)

(assert (=> b!153900 (= c!29472 (bvsgt (bvsub from!355 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(assert (=> b!153900 (= e!100539 e!100540)))

(declare-fun b!153901 () Bool)

(declare-fun Unit!4896 () Unit!4892)

(assert (=> b!153901 (= e!100537 Unit!4896)))

(declare-fun b!153902 () Bool)

(assert (=> b!153902 (= e!100541 (ite (= lt!80851 #b0000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand (extraKeys!2801 (v!3410 (underlying!521 thiss!992))) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (extraKeys!2801 (v!3410 (underlying!521 thiss!992))) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!153891 () Bool)

(declare-fun lt!80853 () tuple2!2796)

(assert (=> b!153891 (= lt!80853 call!17133)))

(assert (=> b!153891 (= e!100543 (tuple2!2797 (_1!1408 lt!80853) (_2!1408 lt!80853)))))

(declare-fun d!50487 () Bool)

(assert (=> d!50487 e!100538))

(declare-fun res!72716 () Bool)

(assert (=> d!50487 (=> res!72716 e!100538)))

(assert (=> d!50487 (= res!72716 (not (_1!1408 lt!80829)))))

(assert (=> d!50487 (= lt!80829 e!100544)))

(declare-fun c!29477 () Bool)

(assert (=> d!50487 (= c!29477 (and (not (= lt!80851 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= lt!80851 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> d!50487 (= lt!80840 (map!1495 newMap!16))))

(assert (=> d!50487 (= lt!80843 (get!1606 (select (arr!2405 (_values!3043 (v!3410 (underlying!521 thiss!992)))) (bvsub from!355 #b00000000000000000000000000000001)) (dynLambda!465 (defaultEntry!3060 (v!3410 (underlying!521 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!50487 (= lt!80851 (select (arr!2404 (_keys!4833 (v!3410 (underlying!521 thiss!992)))) (bvsub from!355 #b00000000000000000000000000000001)))))

(assert (=> d!50487 (valid!608 thiss!992)))

(assert (=> d!50487 (= (repackFrom!18 thiss!992 newMap!16 (bvsub from!355 #b00000000000000000000000000000001)) lt!80829)))

(declare-fun b!153903 () Bool)

(assert (=> b!153903 (= e!100543 (tuple2!2797 true newMap!16))))

(declare-fun call!17127 () ListLongMap!1809)

(declare-fun bm!17124 () Bool)

(assert (=> bm!17124 (= call!17127 (+!186 (ite c!29472 lt!80841 lt!80859) (ite c!29472 (tuple2!2799 lt!80856 (minValue!2903 (v!3410 (underlying!521 thiss!992)))) (tuple2!2799 lt!80851 lt!80843))))))

(declare-fun bm!17125 () Bool)

(assert (=> bm!17125 (= call!17133 (repackFrom!18 thiss!992 (ite c!29477 (_2!1408 lt!80833) newMap!16) (bvsub (bvsub from!355 #b00000000000000000000000000000001) #b00000000000000000000000000000001)))))

(declare-fun b!153904 () Bool)

(assert (=> b!153904 (= e!100541 (arrayContainsKey!0 (_keys!4833 (v!3410 (underlying!521 thiss!992))) lt!80851 lt!80852))))

(declare-fun bm!17126 () Bool)

(assert (=> bm!17126 (= call!17126 (getCurrentListMapNoExtraKeys!157 (_keys!4833 (v!3410 (underlying!521 thiss!992))) (_values!3043 (v!3410 (underlying!521 thiss!992))) (mask!7462 (v!3410 (underlying!521 thiss!992))) (extraKeys!2801 (v!3410 (underlying!521 thiss!992))) (zeroValue!2903 (v!3410 (underlying!521 thiss!992))) (minValue!2903 (v!3410 (underlying!521 thiss!992))) (bvadd (bvsub from!355 #b00000000000000000000000000000001) #b00000000000000000000000000000001) (defaultEntry!3060 (v!3410 (underlying!521 thiss!992)))))))

(declare-fun bm!17127 () Bool)

(assert (=> bm!17127 (= call!17123 (+!186 (ite c!29472 call!17127 call!17126) (ite c!29472 (tuple2!2799 lt!80851 lt!80843) (tuple2!2799 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2903 (v!3410 (underlying!521 thiss!992)))))))))

(declare-fun bm!17128 () Bool)

(assert (=> bm!17128 (= call!17121 (+!186 (ite c!29472 call!17131 call!17127) (ite c!29472 (tuple2!2799 lt!80835 (zeroValue!2903 (v!3410 (underlying!521 thiss!992)))) (tuple2!2799 lt!80845 (zeroValue!2903 (v!3410 (underlying!521 thiss!992)))))))))

(declare-fun bm!17129 () Bool)

(assert (=> bm!17129 (= call!17125 (+!186 (ite c!29472 lt!80830 lt!80859) (ite c!29472 (tuple2!2799 lt!80835 (zeroValue!2903 (v!3410 (underlying!521 thiss!992)))) (tuple2!2799 lt!80845 (zeroValue!2903 (v!3410 (underlying!521 thiss!992)))))))))

(declare-fun bm!17130 () Bool)

(assert (=> bm!17130 (= call!17131 (+!186 (ite c!29472 lt!80830 lt!80839) (ite c!29472 (tuple2!2799 lt!80851 lt!80843) (tuple2!2799 lt!80836 (minValue!2903 (v!3410 (underlying!521 thiss!992)))))))))

(assert (= (and d!50487 c!29477) b!153896))

(assert (= (and d!50487 (not c!29477)) b!153899))

(assert (= (and b!153896 c!29476) b!153897))

(assert (= (and b!153896 (not c!29476)) b!153901))

(assert (= (and b!153897 c!29475) b!153904))

(assert (= (and b!153897 (not c!29475)) b!153902))

(assert (= (and b!153896 c!29474) b!153900))

(assert (= (and b!153896 (not c!29474)) b!153892))

(assert (= (and b!153900 c!29472) b!153898))

(assert (= (and b!153900 (not c!29472)) b!153893))

(assert (= (or b!153898 b!153893) bm!17124))

(assert (= (or b!153898 b!153893) bm!17130))

(assert (= (or b!153898 b!153893) bm!17126))

(assert (= (or b!153898 b!153893) bm!17123))

(assert (= (or b!153898 b!153893) bm!17122))

(assert (= (or b!153898 b!153893) bm!17121))

(assert (= (or b!153898 b!153893) bm!17129))

(assert (= (or b!153898 b!153893) bm!17128))

(assert (= (or b!153898 b!153893) bm!17119))

(assert (= (or b!153898 b!153893) bm!17127))

(assert (= (or b!153898 b!153893) bm!17118))

(assert (= (or b!153898 b!153893) bm!17120))

(assert (= (and b!153899 c!29473) b!153891))

(assert (= (and b!153899 (not c!29473)) b!153903))

(assert (= (or b!153898 b!153891) bm!17125))

(assert (= (and d!50487 (not res!72716)) b!153894))

(assert (= (and b!153894 res!72717) b!153895))

(declare-fun b_lambda!6867 () Bool)

(assert (=> (not b_lambda!6867) (not d!50487)))

(assert (=> d!50487 t!6620))

(declare-fun b_and!9601 () Bool)

(assert (= b_and!9597 (and (=> t!6620 result!4489) b_and!9601)))

(assert (=> d!50487 t!6622))

(declare-fun b_and!9603 () Bool)

(assert (= b_and!9599 (and (=> t!6622 result!4493) b_and!9603)))

(assert (=> d!50487 m!187547))

(declare-fun m!187673 () Bool)

(assert (=> d!50487 m!187673))

(declare-fun m!187675 () Bool)

(assert (=> d!50487 m!187675))

(assert (=> d!50487 m!187639))

(declare-fun m!187677 () Bool)

(assert (=> d!50487 m!187677))

(assert (=> d!50487 m!187675))

(assert (=> d!50487 m!187543))

(assert (=> d!50487 m!187639))

(declare-fun m!187679 () Bool)

(assert (=> bm!17126 m!187679))

(declare-fun m!187681 () Bool)

(assert (=> bm!17123 m!187681))

(declare-fun m!187683 () Bool)

(assert (=> bm!17128 m!187683))

(declare-fun m!187685 () Bool)

(assert (=> b!153897 m!187685))

(declare-fun m!187687 () Bool)

(assert (=> b!153897 m!187687))

(declare-fun m!187689 () Bool)

(assert (=> b!153897 m!187689))

(declare-fun m!187691 () Bool)

(assert (=> b!153897 m!187691))

(declare-fun m!187693 () Bool)

(assert (=> b!153897 m!187693))

(declare-fun m!187695 () Bool)

(assert (=> bm!17118 m!187695))

(declare-fun m!187697 () Bool)

(assert (=> b!153895 m!187697))

(assert (=> b!153895 m!187559))

(declare-fun m!187699 () Bool)

(assert (=> bm!17127 m!187699))

(declare-fun m!187701 () Bool)

(assert (=> bm!17124 m!187701))

(declare-fun m!187703 () Bool)

(assert (=> bm!17122 m!187703))

(declare-fun m!187705 () Bool)

(assert (=> b!153904 m!187705))

(declare-fun m!187707 () Bool)

(assert (=> bm!17119 m!187707))

(declare-fun m!187709 () Bool)

(assert (=> bm!17120 m!187709))

(declare-fun m!187711 () Bool)

(assert (=> bm!17129 m!187711))

(declare-fun m!187713 () Bool)

(assert (=> b!153896 m!187713))

(declare-fun m!187715 () Bool)

(assert (=> b!153896 m!187715))

(declare-fun m!187717 () Bool)

(assert (=> b!153894 m!187717))

(declare-fun m!187719 () Bool)

(assert (=> bm!17130 m!187719))

(declare-fun m!187721 () Bool)

(assert (=> bm!17121 m!187721))

(declare-fun m!187723 () Bool)

(assert (=> bm!17125 m!187723))

(assert (=> b!153718 d!50487))

(declare-fun d!50489 () Bool)

(assert (=> d!50489 (= (map!1495 (_2!1408 lt!80695)) (getCurrentListMap!582 (_keys!4833 (_2!1408 lt!80695)) (_values!3043 (_2!1408 lt!80695)) (mask!7462 (_2!1408 lt!80695)) (extraKeys!2801 (_2!1408 lt!80695)) (zeroValue!2903 (_2!1408 lt!80695)) (minValue!2903 (_2!1408 lt!80695)) #b00000000000000000000000000000000 (defaultEntry!3060 (_2!1408 lt!80695))))))

(declare-fun bs!6510 () Bool)

(assert (= bs!6510 d!50489))

(declare-fun m!187725 () Bool)

(assert (=> bs!6510 m!187725))

(assert (=> b!153714 d!50489))

(declare-fun d!50491 () Bool)

(assert (=> d!50491 (= (map!1495 (v!3410 (underlying!521 thiss!992))) (getCurrentListMap!582 (_keys!4833 (v!3410 (underlying!521 thiss!992))) (_values!3043 (v!3410 (underlying!521 thiss!992))) (mask!7462 (v!3410 (underlying!521 thiss!992))) (extraKeys!2801 (v!3410 (underlying!521 thiss!992))) (zeroValue!2903 (v!3410 (underlying!521 thiss!992))) (minValue!2903 (v!3410 (underlying!521 thiss!992))) #b00000000000000000000000000000000 (defaultEntry!3060 (v!3410 (underlying!521 thiss!992)))))))

(declare-fun bs!6511 () Bool)

(assert (= bs!6511 d!50491))

(declare-fun m!187727 () Bool)

(assert (=> bs!6511 m!187727))

(assert (=> b!153714 d!50491))

(declare-fun mapNonEmpty!5159 () Bool)

(declare-fun mapRes!5159 () Bool)

(declare-fun tp!12161 () Bool)

(declare-fun e!100549 () Bool)

(assert (=> mapNonEmpty!5159 (= mapRes!5159 (and tp!12161 e!100549))))

(declare-fun mapRest!5159 () (Array (_ BitVec 32) ValueCell!1167))

(declare-fun mapValue!5159 () ValueCell!1167)

(declare-fun mapKey!5159 () (_ BitVec 32))

(assert (=> mapNonEmpty!5159 (= mapRest!5149 (store mapRest!5159 mapKey!5159 mapValue!5159))))

(declare-fun b!153911 () Bool)

(assert (=> b!153911 (= e!100549 tp_is_empty!3021)))

(declare-fun condMapEmpty!5159 () Bool)

(declare-fun mapDefault!5159 () ValueCell!1167)

(assert (=> mapNonEmpty!5149 (= condMapEmpty!5159 (= mapRest!5149 ((as const (Array (_ BitVec 32) ValueCell!1167)) mapDefault!5159)))))

(declare-fun e!100550 () Bool)

(assert (=> mapNonEmpty!5149 (= tp!12143 (and e!100550 mapRes!5159))))

(declare-fun mapIsEmpty!5159 () Bool)

(assert (=> mapIsEmpty!5159 mapRes!5159))

(declare-fun b!153912 () Bool)

(assert (=> b!153912 (= e!100550 tp_is_empty!3021)))

(assert (= (and mapNonEmpty!5149 condMapEmpty!5159) mapIsEmpty!5159))

(assert (= (and mapNonEmpty!5149 (not condMapEmpty!5159)) mapNonEmpty!5159))

(assert (= (and mapNonEmpty!5159 ((_ is ValueCellFull!1167) mapValue!5159)) b!153911))

(assert (= (and mapNonEmpty!5149 ((_ is ValueCellFull!1167) mapDefault!5159)) b!153912))

(declare-fun m!187729 () Bool)

(assert (=> mapNonEmpty!5159 m!187729))

(declare-fun mapNonEmpty!5160 () Bool)

(declare-fun mapRes!5160 () Bool)

(declare-fun tp!12162 () Bool)

(declare-fun e!100551 () Bool)

(assert (=> mapNonEmpty!5160 (= mapRes!5160 (and tp!12162 e!100551))))

(declare-fun mapRest!5160 () (Array (_ BitVec 32) ValueCell!1167))

(declare-fun mapKey!5160 () (_ BitVec 32))

(declare-fun mapValue!5160 () ValueCell!1167)

(assert (=> mapNonEmpty!5160 (= mapRest!5150 (store mapRest!5160 mapKey!5160 mapValue!5160))))

(declare-fun b!153913 () Bool)

(assert (=> b!153913 (= e!100551 tp_is_empty!3021)))

(declare-fun condMapEmpty!5160 () Bool)

(declare-fun mapDefault!5160 () ValueCell!1167)

(assert (=> mapNonEmpty!5150 (= condMapEmpty!5160 (= mapRest!5150 ((as const (Array (_ BitVec 32) ValueCell!1167)) mapDefault!5160)))))

(declare-fun e!100552 () Bool)

(assert (=> mapNonEmpty!5150 (= tp!12146 (and e!100552 mapRes!5160))))

(declare-fun mapIsEmpty!5160 () Bool)

(assert (=> mapIsEmpty!5160 mapRes!5160))

(declare-fun b!153914 () Bool)

(assert (=> b!153914 (= e!100552 tp_is_empty!3021)))

(assert (= (and mapNonEmpty!5150 condMapEmpty!5160) mapIsEmpty!5160))

(assert (= (and mapNonEmpty!5150 (not condMapEmpty!5160)) mapNonEmpty!5160))

(assert (= (and mapNonEmpty!5160 ((_ is ValueCellFull!1167) mapValue!5160)) b!153913))

(assert (= (and mapNonEmpty!5150 ((_ is ValueCellFull!1167) mapDefault!5160)) b!153914))

(declare-fun m!187731 () Bool)

(assert (=> mapNonEmpty!5160 m!187731))

(declare-fun b_lambda!6869 () Bool)

(assert (= b_lambda!6867 (or (and b!153721 b_free!3209) (and b!153727 b_free!3211 (= (defaultEntry!3060 newMap!16) (defaultEntry!3060 (v!3410 (underlying!521 thiss!992))))) b_lambda!6869)))

(declare-fun b_lambda!6871 () Bool)

(assert (= b_lambda!6865 (or (and b!153721 b_free!3209) (and b!153727 b_free!3211 (= (defaultEntry!3060 newMap!16) (defaultEntry!3060 (v!3410 (underlying!521 thiss!992))))) b_lambda!6871)))

(check-sat (not d!50489) (not b!153842) (not b_next!3209) (not b_next!3211) (not b!153895) (not b!153841) (not mapNonEmpty!5159) (not b!153894) b_and!9601 (not b!153896) tp_is_empty!3021 (not b!153859) (not bm!17127) (not bm!17123) (not d!50487) (not bm!17126) (not d!50477) (not bm!17091) (not bm!17085) (not bm!17129) (not d!50479) (not d!50481) (not bm!17118) (not bm!17128) (not b!153828) (not b!153858) (not b_lambda!6869) (not b_lambda!6871) (not d!50491) (not bm!17122) (not bm!17088) (not bm!17124) (not bm!17121) (not b!153860) (not d!50471) (not bm!17125) (not bm!17119) (not b!153904) (not b!153861) (not b!153857) (not b!153840) (not mapNonEmpty!5160) b_and!9603 (not b!153843) (not bm!17120) (not b!153833) (not b!153837) (not d!50469) (not b!153862) (not bm!17130) (not bm!17090) (not b!153839) (not b!153897))
(check-sat b_and!9601 b_and!9603 (not b_next!3209) (not b_next!3211))

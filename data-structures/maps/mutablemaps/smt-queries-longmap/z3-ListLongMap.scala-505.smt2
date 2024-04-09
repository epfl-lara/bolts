; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!11960 () Bool)

(assert start!11960)

(declare-fun b!100776 () Bool)

(declare-fun b_free!2453 () Bool)

(declare-fun b_next!2453 () Bool)

(assert (=> b!100776 (= b_free!2453 (not b_next!2453))))

(declare-fun tp!9660 () Bool)

(declare-fun b_and!6213 () Bool)

(assert (=> b!100776 (= tp!9660 b_and!6213)))

(declare-fun b!100781 () Bool)

(declare-fun b_free!2455 () Bool)

(declare-fun b_next!2455 () Bool)

(assert (=> b!100781 (= b_free!2455 (not b_next!2455))))

(declare-fun tp!9659 () Bool)

(declare-fun b_and!6215 () Bool)

(assert (=> b!100781 (= tp!9659 b_and!6215)))

(declare-fun res!50517 () Bool)

(declare-fun e!65626 () Bool)

(assert (=> start!11960 (=> (not res!50517) (not e!65626))))

(declare-datatypes ((V!3171 0))(
  ( (V!3172 (val!1366 Int)) )
))
(declare-datatypes ((array!4268 0))(
  ( (array!4269 (arr!2026 (Array (_ BitVec 32) (_ BitVec 64))) (size!2278 (_ BitVec 32))) )
))
(declare-datatypes ((ValueCell!978 0))(
  ( (ValueCellFull!978 (v!2832 V!3171)) (EmptyCell!978) )
))
(declare-datatypes ((array!4270 0))(
  ( (array!4271 (arr!2027 (Array (_ BitVec 32) ValueCell!978)) (size!2279 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!864 0))(
  ( (LongMapFixedSize!865 (defaultEntry!2523 Int) (mask!6640 (_ BitVec 32)) (extraKeys!2336 (_ BitVec 32)) (zeroValue!2402 V!3171) (minValue!2402 V!3171) (_size!481 (_ BitVec 32)) (_keys!4221 array!4268) (_values!2506 array!4270) (_vacant!481 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!668 0))(
  ( (Cell!669 (v!2833 LongMapFixedSize!864)) )
))
(declare-datatypes ((LongMap!668 0))(
  ( (LongMap!669 (underlying!345 Cell!668)) )
))
(declare-fun thiss!992 () LongMap!668)

(declare-fun valid!390 (LongMap!668) Bool)

(assert (=> start!11960 (= res!50517 (valid!390 thiss!992))))

(assert (=> start!11960 e!65626))

(declare-fun e!65625 () Bool)

(assert (=> start!11960 e!65625))

(assert (=> start!11960 true))

(declare-fun e!65630 () Bool)

(assert (=> start!11960 e!65630))

(declare-fun b!100763 () Bool)

(declare-fun e!65623 () Bool)

(assert (=> b!100763 (= e!65626 e!65623)))

(declare-fun res!50522 () Bool)

(assert (=> b!100763 (=> (not res!50522) (not e!65623))))

(declare-datatypes ((tuple2!2370 0))(
  ( (tuple2!2371 (_1!1195 (_ BitVec 64)) (_2!1195 V!3171)) )
))
(declare-datatypes ((List!1618 0))(
  ( (Nil!1615) (Cons!1614 (h!2210 tuple2!2370) (t!5624 List!1618)) )
))
(declare-datatypes ((ListLongMap!1561 0))(
  ( (ListLongMap!1562 (toList!796 List!1618)) )
))
(declare-fun lt!50947 () ListLongMap!1561)

(declare-fun lt!50943 () ListLongMap!1561)

(declare-fun from!355 () (_ BitVec 32))

(assert (=> b!100763 (= res!50522 (and (= lt!50943 lt!50947) (not (= (select (arr!2026 (_keys!4221 (v!2833 (underlying!345 thiss!992)))) from!355) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!2026 (_keys!4221 (v!2833 (underlying!345 thiss!992)))) from!355) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun newMap!16 () LongMapFixedSize!864)

(declare-fun map!1263 (LongMapFixedSize!864) ListLongMap!1561)

(assert (=> b!100763 (= lt!50947 (map!1263 newMap!16))))

(declare-fun getCurrentListMap!476 (array!4268 array!4270 (_ BitVec 32) (_ BitVec 32) V!3171 V!3171 (_ BitVec 32) Int) ListLongMap!1561)

(assert (=> b!100763 (= lt!50943 (getCurrentListMap!476 (_keys!4221 (v!2833 (underlying!345 thiss!992))) (_values!2506 (v!2833 (underlying!345 thiss!992))) (mask!6640 (v!2833 (underlying!345 thiss!992))) (extraKeys!2336 (v!2833 (underlying!345 thiss!992))) (zeroValue!2402 (v!2833 (underlying!345 thiss!992))) (minValue!2402 (v!2833 (underlying!345 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2523 (v!2833 (underlying!345 thiss!992)))))))

(declare-fun b!100764 () Bool)

(declare-datatypes ((Unit!3091 0))(
  ( (Unit!3092) )
))
(declare-fun e!65633 () Unit!3091)

(declare-fun Unit!3093 () Unit!3091)

(assert (=> b!100764 (= e!65633 Unit!3093)))

(declare-fun lt!50946 () Unit!3091)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!100 (array!4268 array!4270 (_ BitVec 32) (_ BitVec 32) V!3171 V!3171 (_ BitVec 64) (_ BitVec 32) Int) Unit!3091)

(assert (=> b!100764 (= lt!50946 (lemmaListMapContainsThenArrayContainsFrom!100 (_keys!4221 (v!2833 (underlying!345 thiss!992))) (_values!2506 (v!2833 (underlying!345 thiss!992))) (mask!6640 (v!2833 (underlying!345 thiss!992))) (extraKeys!2336 (v!2833 (underlying!345 thiss!992))) (zeroValue!2402 (v!2833 (underlying!345 thiss!992))) (minValue!2402 (v!2833 (underlying!345 thiss!992))) (select (arr!2026 (_keys!4221 (v!2833 (underlying!345 thiss!992)))) from!355) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2523 (v!2833 (underlying!345 thiss!992)))))))

(declare-fun arrayContainsKey!0 (array!4268 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!100764 (arrayContainsKey!0 (_keys!4221 (v!2833 (underlying!345 thiss!992))) (select (arr!2026 (_keys!4221 (v!2833 (underlying!345 thiss!992)))) from!355) (bvadd #b00000000000000000000000000000001 from!355))))

(declare-fun lt!50944 () Unit!3091)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!4268 (_ BitVec 32) (_ BitVec 32)) Unit!3091)

(assert (=> b!100764 (= lt!50944 (lemmaNoDuplicateFromThenFromBigger!0 (_keys!4221 (v!2833 (underlying!345 thiss!992))) #b00000000000000000000000000000000 from!355))))

(declare-datatypes ((List!1619 0))(
  ( (Nil!1616) (Cons!1615 (h!2211 (_ BitVec 64)) (t!5625 List!1619)) )
))
(declare-fun arrayNoDuplicates!0 (array!4268 (_ BitVec 32) List!1619) Bool)

(assert (=> b!100764 (arrayNoDuplicates!0 (_keys!4221 (v!2833 (underlying!345 thiss!992))) from!355 Nil!1616)))

(declare-fun lt!50945 () Unit!3091)

(declare-fun lemmaArrayNoDuplicateFromNotContainsKeysInAcc!0 (array!4268 (_ BitVec 32) (_ BitVec 64) List!1619) Unit!3091)

(assert (=> b!100764 (= lt!50945 (lemmaArrayNoDuplicateFromNotContainsKeysInAcc!0 (_keys!4221 (v!2833 (underlying!345 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (select (arr!2026 (_keys!4221 (v!2833 (underlying!345 thiss!992)))) from!355) (Cons!1615 (select (arr!2026 (_keys!4221 (v!2833 (underlying!345 thiss!992)))) from!355) Nil!1616)))))

(assert (=> b!100764 false))

(declare-fun b!100765 () Bool)

(declare-fun Unit!3094 () Unit!3091)

(assert (=> b!100765 (= e!65633 Unit!3094)))

(declare-fun mapNonEmpty!3797 () Bool)

(declare-fun mapRes!3797 () Bool)

(declare-fun tp!9658 () Bool)

(declare-fun e!65622 () Bool)

(assert (=> mapNonEmpty!3797 (= mapRes!3797 (and tp!9658 e!65622))))

(declare-fun mapKey!3798 () (_ BitVec 32))

(declare-fun mapRest!3797 () (Array (_ BitVec 32) ValueCell!978))

(declare-fun mapValue!3798 () ValueCell!978)

(assert (=> mapNonEmpty!3797 (= (arr!2027 (_values!2506 newMap!16)) (store mapRest!3797 mapKey!3798 mapValue!3798))))

(declare-fun b!100766 () Bool)

(declare-fun res!50518 () Bool)

(declare-fun e!65635 () Bool)

(assert (=> b!100766 (=> (not res!50518) (not e!65635))))

(assert (=> b!100766 (= res!50518 (and (= (size!2279 (_values!2506 (v!2833 (underlying!345 thiss!992)))) (bvadd #b00000000000000000000000000000001 (mask!6640 (v!2833 (underlying!345 thiss!992))))) (= (size!2278 (_keys!4221 (v!2833 (underlying!345 thiss!992)))) (size!2279 (_values!2506 (v!2833 (underlying!345 thiss!992))))) (bvsge (mask!6640 (v!2833 (underlying!345 thiss!992))) #b00000000000000000000000000000000) (bvsge (extraKeys!2336 (v!2833 (underlying!345 thiss!992))) #b00000000000000000000000000000000) (bvsle (extraKeys!2336 (v!2833 (underlying!345 thiss!992))) #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!3797 () Bool)

(assert (=> mapIsEmpty!3797 mapRes!3797))

(declare-fun b!100767 () Bool)

(declare-fun e!65636 () Bool)

(declare-fun e!65621 () Bool)

(assert (=> b!100767 (= e!65636 (and e!65621 mapRes!3797))))

(declare-fun condMapEmpty!3798 () Bool)

(declare-fun mapDefault!3797 () ValueCell!978)

(assert (=> b!100767 (= condMapEmpty!3798 (= (arr!2027 (_values!2506 newMap!16)) ((as const (Array (_ BitVec 32) ValueCell!978)) mapDefault!3797)))))

(declare-fun b!100768 () Bool)

(declare-fun e!65632 () Bool)

(declare-fun e!65627 () Bool)

(assert (=> b!100768 (= e!65632 e!65627)))

(declare-fun b!100769 () Bool)

(assert (=> b!100769 (= e!65623 e!65635)))

(declare-fun res!50521 () Bool)

(assert (=> b!100769 (=> (not res!50521) (not e!65635))))

(declare-datatypes ((tuple2!2372 0))(
  ( (tuple2!2373 (_1!1196 Bool) (_2!1196 LongMapFixedSize!864)) )
))
(declare-fun lt!50941 () tuple2!2372)

(assert (=> b!100769 (= res!50521 (and (_1!1196 lt!50941) (bvsle from!355 #b00000000000000000000000000000000)))))

(declare-fun lt!50942 () Unit!3091)

(assert (=> b!100769 (= lt!50942 e!65633)))

(declare-fun c!17313 () Bool)

(declare-fun contains!813 (ListLongMap!1561 (_ BitVec 64)) Bool)

(assert (=> b!100769 (= c!17313 (contains!813 lt!50947 (select (arr!2026 (_keys!4221 (v!2833 (underlying!345 thiss!992)))) from!355)))))

(declare-fun update!150 (LongMapFixedSize!864 (_ BitVec 64) V!3171) tuple2!2372)

(declare-fun get!1310 (ValueCell!978 V!3171) V!3171)

(declare-fun dynLambda!382 (Int (_ BitVec 64)) V!3171)

(assert (=> b!100769 (= lt!50941 (update!150 newMap!16 (select (arr!2026 (_keys!4221 (v!2833 (underlying!345 thiss!992)))) from!355) (get!1310 (select (arr!2027 (_values!2506 (v!2833 (underlying!345 thiss!992)))) from!355) (dynLambda!382 (defaultEntry!2523 (v!2833 (underlying!345 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun mapNonEmpty!3798 () Bool)

(declare-fun mapRes!3798 () Bool)

(declare-fun tp!9657 () Bool)

(declare-fun e!65634 () Bool)

(assert (=> mapNonEmpty!3798 (= mapRes!3798 (and tp!9657 e!65634))))

(declare-fun mapKey!3797 () (_ BitVec 32))

(declare-fun mapRest!3798 () (Array (_ BitVec 32) ValueCell!978))

(declare-fun mapValue!3797 () ValueCell!978)

(assert (=> mapNonEmpty!3798 (= (arr!2027 (_values!2506 (v!2833 (underlying!345 thiss!992)))) (store mapRest!3798 mapKey!3797 mapValue!3797))))

(declare-fun b!100770 () Bool)

(assert (=> b!100770 (= e!65625 e!65632)))

(declare-fun b!100771 () Bool)

(declare-fun e!65624 () Bool)

(declare-fun e!65631 () Bool)

(assert (=> b!100771 (= e!65624 (and e!65631 mapRes!3798))))

(declare-fun condMapEmpty!3797 () Bool)

(declare-fun mapDefault!3798 () ValueCell!978)

(assert (=> b!100771 (= condMapEmpty!3797 (= (arr!2027 (_values!2506 (v!2833 (underlying!345 thiss!992)))) ((as const (Array (_ BitVec 32) ValueCell!978)) mapDefault!3798)))))

(declare-fun b!100772 () Bool)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!4268 (_ BitVec 32)) Bool)

(assert (=> b!100772 (= e!65635 (not (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!4221 (v!2833 (underlying!345 thiss!992))) (mask!6640 (v!2833 (underlying!345 thiss!992))))))))

(declare-fun b!100773 () Bool)

(declare-fun tp_is_empty!2643 () Bool)

(assert (=> b!100773 (= e!65621 tp_is_empty!2643)))

(declare-fun b!100774 () Bool)

(declare-fun res!50519 () Bool)

(assert (=> b!100774 (=> (not res!50519) (not e!65635))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!100774 (= res!50519 (validMask!0 (mask!6640 (v!2833 (underlying!345 thiss!992)))))))

(declare-fun b!100775 () Bool)

(declare-fun res!50520 () Bool)

(assert (=> b!100775 (=> (not res!50520) (not e!65626))))

(assert (=> b!100775 (= res!50520 (bvsge (bvadd #b00000000000000000000000000000001 (mask!6640 newMap!16)) (_size!481 (v!2833 (underlying!345 thiss!992)))))))

(declare-fun mapIsEmpty!3798 () Bool)

(assert (=> mapIsEmpty!3798 mapRes!3798))

(declare-fun array_inv!1219 (array!4268) Bool)

(declare-fun array_inv!1220 (array!4270) Bool)

(assert (=> b!100776 (= e!65627 (and tp!9660 tp_is_empty!2643 (array_inv!1219 (_keys!4221 (v!2833 (underlying!345 thiss!992)))) (array_inv!1220 (_values!2506 (v!2833 (underlying!345 thiss!992)))) e!65624))))

(declare-fun b!100777 () Bool)

(assert (=> b!100777 (= e!65634 tp_is_empty!2643)))

(declare-fun b!100778 () Bool)

(assert (=> b!100778 (= e!65622 tp_is_empty!2643)))

(declare-fun b!100779 () Bool)

(declare-fun res!50515 () Bool)

(assert (=> b!100779 (=> (not res!50515) (not e!65626))))

(declare-fun valid!391 (LongMapFixedSize!864) Bool)

(assert (=> b!100779 (= res!50515 (valid!391 newMap!16))))

(declare-fun b!100780 () Bool)

(assert (=> b!100780 (= e!65631 tp_is_empty!2643)))

(assert (=> b!100781 (= e!65630 (and tp!9659 tp_is_empty!2643 (array_inv!1219 (_keys!4221 newMap!16)) (array_inv!1220 (_values!2506 newMap!16)) e!65636))))

(declare-fun b!100782 () Bool)

(declare-fun res!50516 () Bool)

(assert (=> b!100782 (=> (not res!50516) (not e!65626))))

(assert (=> b!100782 (= res!50516 (and (bvsge from!355 #b00000000000000000000000000000000) (bvslt from!355 (size!2278 (_keys!4221 (v!2833 (underlying!345 thiss!992)))))))))

(assert (= (and start!11960 res!50517) b!100782))

(assert (= (and b!100782 res!50516) b!100779))

(assert (= (and b!100779 res!50515) b!100775))

(assert (= (and b!100775 res!50520) b!100763))

(assert (= (and b!100763 res!50522) b!100769))

(assert (= (and b!100769 c!17313) b!100764))

(assert (= (and b!100769 (not c!17313)) b!100765))

(assert (= (and b!100769 res!50521) b!100774))

(assert (= (and b!100774 res!50519) b!100766))

(assert (= (and b!100766 res!50518) b!100772))

(assert (= (and b!100771 condMapEmpty!3797) mapIsEmpty!3798))

(assert (= (and b!100771 (not condMapEmpty!3797)) mapNonEmpty!3798))

(get-info :version)

(assert (= (and mapNonEmpty!3798 ((_ is ValueCellFull!978) mapValue!3797)) b!100777))

(assert (= (and b!100771 ((_ is ValueCellFull!978) mapDefault!3798)) b!100780))

(assert (= b!100776 b!100771))

(assert (= b!100768 b!100776))

(assert (= b!100770 b!100768))

(assert (= start!11960 b!100770))

(assert (= (and b!100767 condMapEmpty!3798) mapIsEmpty!3797))

(assert (= (and b!100767 (not condMapEmpty!3798)) mapNonEmpty!3797))

(assert (= (and mapNonEmpty!3797 ((_ is ValueCellFull!978) mapValue!3798)) b!100778))

(assert (= (and b!100767 ((_ is ValueCellFull!978) mapDefault!3797)) b!100773))

(assert (= b!100781 b!100767))

(assert (= start!11960 b!100781))

(declare-fun b_lambda!4535 () Bool)

(assert (=> (not b_lambda!4535) (not b!100769)))

(declare-fun t!5621 () Bool)

(declare-fun tb!1973 () Bool)

(assert (=> (and b!100776 (= (defaultEntry!2523 (v!2833 (underlying!345 thiss!992))) (defaultEntry!2523 (v!2833 (underlying!345 thiss!992)))) t!5621) tb!1973))

(declare-fun result!3329 () Bool)

(assert (=> tb!1973 (= result!3329 tp_is_empty!2643)))

(assert (=> b!100769 t!5621))

(declare-fun b_and!6217 () Bool)

(assert (= b_and!6213 (and (=> t!5621 result!3329) b_and!6217)))

(declare-fun t!5623 () Bool)

(declare-fun tb!1975 () Bool)

(assert (=> (and b!100781 (= (defaultEntry!2523 newMap!16) (defaultEntry!2523 (v!2833 (underlying!345 thiss!992)))) t!5623) tb!1975))

(declare-fun result!3333 () Bool)

(assert (= result!3333 result!3329))

(assert (=> b!100769 t!5623))

(declare-fun b_and!6219 () Bool)

(assert (= b_and!6215 (and (=> t!5623 result!3333) b_and!6219)))

(declare-fun m!111643 () Bool)

(assert (=> mapNonEmpty!3798 m!111643))

(declare-fun m!111645 () Bool)

(assert (=> b!100779 m!111645))

(declare-fun m!111647 () Bool)

(assert (=> b!100774 m!111647))

(declare-fun m!111649 () Bool)

(assert (=> mapNonEmpty!3797 m!111649))

(declare-fun m!111651 () Bool)

(assert (=> b!100769 m!111651))

(declare-fun m!111653 () Bool)

(assert (=> b!100769 m!111653))

(declare-fun m!111655 () Bool)

(assert (=> b!100769 m!111655))

(declare-fun m!111657 () Bool)

(assert (=> b!100769 m!111657))

(declare-fun m!111659 () Bool)

(assert (=> b!100769 m!111659))

(assert (=> b!100769 m!111657))

(assert (=> b!100769 m!111653))

(assert (=> b!100769 m!111657))

(assert (=> b!100769 m!111655))

(declare-fun m!111661 () Bool)

(assert (=> b!100769 m!111661))

(assert (=> b!100769 m!111651))

(declare-fun m!111663 () Bool)

(assert (=> b!100772 m!111663))

(declare-fun m!111665 () Bool)

(assert (=> start!11960 m!111665))

(declare-fun m!111667 () Bool)

(assert (=> b!100764 m!111667))

(declare-fun m!111669 () Bool)

(assert (=> b!100764 m!111669))

(assert (=> b!100764 m!111657))

(declare-fun m!111671 () Bool)

(assert (=> b!100764 m!111671))

(assert (=> b!100764 m!111657))

(assert (=> b!100764 m!111657))

(declare-fun m!111673 () Bool)

(assert (=> b!100764 m!111673))

(assert (=> b!100764 m!111657))

(declare-fun m!111675 () Bool)

(assert (=> b!100764 m!111675))

(assert (=> b!100763 m!111657))

(declare-fun m!111677 () Bool)

(assert (=> b!100763 m!111677))

(declare-fun m!111679 () Bool)

(assert (=> b!100763 m!111679))

(declare-fun m!111681 () Bool)

(assert (=> b!100781 m!111681))

(declare-fun m!111683 () Bool)

(assert (=> b!100781 m!111683))

(declare-fun m!111685 () Bool)

(assert (=> b!100776 m!111685))

(declare-fun m!111687 () Bool)

(assert (=> b!100776 m!111687))

(check-sat (not b!100769) (not mapNonEmpty!3798) tp_is_empty!2643 (not b!100772) (not mapNonEmpty!3797) (not b_next!2453) (not b!100781) (not b!100776) (not b!100779) (not b!100764) (not b_next!2455) b_and!6219 (not start!11960) (not b_lambda!4535) (not b!100774) (not b!100763) b_and!6217)
(check-sat b_and!6217 b_and!6219 (not b_next!2453) (not b_next!2455))
(get-model)

(declare-fun b_lambda!4539 () Bool)

(assert (= b_lambda!4535 (or (and b!100776 b_free!2453) (and b!100781 b_free!2455 (= (defaultEntry!2523 newMap!16) (defaultEntry!2523 (v!2833 (underlying!345 thiss!992))))) b_lambda!4539)))

(check-sat (not b!100769) (not mapNonEmpty!3798) tp_is_empty!2643 (not b!100772) (not mapNonEmpty!3797) (not b_next!2453) (not b!100781) (not b!100776) (not b!100779) (not b!100764) (not b_next!2455) b_and!6219 (not start!11960) (not b!100774) (not b_lambda!4539) (not b!100763) b_and!6217)
(check-sat b_and!6217 b_and!6219 (not b_next!2453) (not b_next!2455))
(get-model)

(declare-fun d!27351 () Bool)

(declare-fun res!50553 () Bool)

(declare-fun e!65687 () Bool)

(assert (=> d!27351 (=> (not res!50553) (not e!65687))))

(declare-fun simpleValid!69 (LongMapFixedSize!864) Bool)

(assert (=> d!27351 (= res!50553 (simpleValid!69 newMap!16))))

(assert (=> d!27351 (= (valid!391 newMap!16) e!65687)))

(declare-fun b!100853 () Bool)

(declare-fun res!50554 () Bool)

(assert (=> b!100853 (=> (not res!50554) (not e!65687))))

(declare-fun arrayCountValidKeys!0 (array!4268 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!100853 (= res!50554 (= (arrayCountValidKeys!0 (_keys!4221 newMap!16) #b00000000000000000000000000000000 (size!2278 (_keys!4221 newMap!16))) (_size!481 newMap!16)))))

(declare-fun b!100854 () Bool)

(declare-fun res!50555 () Bool)

(assert (=> b!100854 (=> (not res!50555) (not e!65687))))

(assert (=> b!100854 (= res!50555 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!4221 newMap!16) (mask!6640 newMap!16)))))

(declare-fun b!100855 () Bool)

(assert (=> b!100855 (= e!65687 (arrayNoDuplicates!0 (_keys!4221 newMap!16) #b00000000000000000000000000000000 Nil!1616))))

(assert (= (and d!27351 res!50553) b!100853))

(assert (= (and b!100853 res!50554) b!100854))

(assert (= (and b!100854 res!50555) b!100855))

(declare-fun m!111735 () Bool)

(assert (=> d!27351 m!111735))

(declare-fun m!111737 () Bool)

(assert (=> b!100853 m!111737))

(declare-fun m!111739 () Bool)

(assert (=> b!100854 m!111739))

(declare-fun m!111741 () Bool)

(assert (=> b!100855 m!111741))

(assert (=> b!100779 d!27351))

(declare-fun d!27353 () Bool)

(declare-fun e!65692 () Bool)

(assert (=> d!27353 e!65692))

(declare-fun res!50558 () Bool)

(assert (=> d!27353 (=> res!50558 e!65692)))

(declare-fun lt!50978 () Bool)

(assert (=> d!27353 (= res!50558 (not lt!50978))))

(declare-fun lt!50977 () Bool)

(assert (=> d!27353 (= lt!50978 lt!50977)))

(declare-fun lt!50980 () Unit!3091)

(declare-fun e!65693 () Unit!3091)

(assert (=> d!27353 (= lt!50980 e!65693)))

(declare-fun c!17319 () Bool)

(assert (=> d!27353 (= c!17319 lt!50977)))

(declare-fun containsKey!155 (List!1618 (_ BitVec 64)) Bool)

(assert (=> d!27353 (= lt!50977 (containsKey!155 (toList!796 lt!50947) (select (arr!2026 (_keys!4221 (v!2833 (underlying!345 thiss!992)))) from!355)))))

(assert (=> d!27353 (= (contains!813 lt!50947 (select (arr!2026 (_keys!4221 (v!2833 (underlying!345 thiss!992)))) from!355)) lt!50978)))

(declare-fun b!100862 () Bool)

(declare-fun lt!50979 () Unit!3091)

(assert (=> b!100862 (= e!65693 lt!50979)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!104 (List!1618 (_ BitVec 64)) Unit!3091)

(assert (=> b!100862 (= lt!50979 (lemmaContainsKeyImpliesGetValueByKeyDefined!104 (toList!796 lt!50947) (select (arr!2026 (_keys!4221 (v!2833 (underlying!345 thiss!992)))) from!355)))))

(declare-datatypes ((Option!157 0))(
  ( (Some!156 (v!2837 V!3171)) (None!155) )
))
(declare-fun isDefined!105 (Option!157) Bool)

(declare-fun getValueByKey!151 (List!1618 (_ BitVec 64)) Option!157)

(assert (=> b!100862 (isDefined!105 (getValueByKey!151 (toList!796 lt!50947) (select (arr!2026 (_keys!4221 (v!2833 (underlying!345 thiss!992)))) from!355)))))

(declare-fun b!100863 () Bool)

(declare-fun Unit!3095 () Unit!3091)

(assert (=> b!100863 (= e!65693 Unit!3095)))

(declare-fun b!100864 () Bool)

(assert (=> b!100864 (= e!65692 (isDefined!105 (getValueByKey!151 (toList!796 lt!50947) (select (arr!2026 (_keys!4221 (v!2833 (underlying!345 thiss!992)))) from!355))))))

(assert (= (and d!27353 c!17319) b!100862))

(assert (= (and d!27353 (not c!17319)) b!100863))

(assert (= (and d!27353 (not res!50558)) b!100864))

(assert (=> d!27353 m!111657))

(declare-fun m!111743 () Bool)

(assert (=> d!27353 m!111743))

(assert (=> b!100862 m!111657))

(declare-fun m!111745 () Bool)

(assert (=> b!100862 m!111745))

(assert (=> b!100862 m!111657))

(declare-fun m!111747 () Bool)

(assert (=> b!100862 m!111747))

(assert (=> b!100862 m!111747))

(declare-fun m!111749 () Bool)

(assert (=> b!100862 m!111749))

(assert (=> b!100864 m!111657))

(assert (=> b!100864 m!111747))

(assert (=> b!100864 m!111747))

(assert (=> b!100864 m!111749))

(assert (=> b!100769 d!27353))

(declare-fun b!100949 () Bool)

(declare-fun lt!51055 () tuple2!2372)

(declare-fun call!10439 () tuple2!2372)

(assert (=> b!100949 (= lt!51055 call!10439)))

(declare-fun e!65755 () tuple2!2372)

(assert (=> b!100949 (= e!65755 (tuple2!2373 (_1!1196 lt!51055) (_2!1196 lt!51055)))))

(declare-fun b!100950 () Bool)

(declare-fun c!17349 () Bool)

(declare-datatypes ((SeekEntryResult!265 0))(
  ( (MissingZero!265 (index!3205 (_ BitVec 32))) (Found!265 (index!3206 (_ BitVec 32))) (Intermediate!265 (undefined!1077 Bool) (index!3207 (_ BitVec 32)) (x!13259 (_ BitVec 32))) (Undefined!265) (MissingVacant!265 (index!3208 (_ BitVec 32))) )
))
(declare-fun lt!51046 () SeekEntryResult!265)

(assert (=> b!100950 (= c!17349 ((_ is MissingVacant!265) lt!51046))))

(declare-fun e!65741 () tuple2!2372)

(declare-fun e!65757 () tuple2!2372)

(assert (=> b!100950 (= e!65741 e!65757)))

(declare-fun b!100951 () Bool)

(declare-fun res!50591 () Bool)

(declare-fun lt!51038 () SeekEntryResult!265)

(assert (=> b!100951 (= res!50591 (= (select (arr!2026 (_keys!4221 newMap!16)) (index!3208 lt!51038)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!65749 () Bool)

(assert (=> b!100951 (=> (not res!50591) (not e!65749))))

(declare-fun c!17360 () Bool)

(declare-fun call!10448 () ListLongMap!1561)

(declare-fun c!17361 () Bool)

(declare-fun bm!10424 () Bool)

(declare-fun e!65744 () ListLongMap!1561)

(declare-fun +!140 (ListLongMap!1561 tuple2!2370) ListLongMap!1561)

(assert (=> bm!10424 (= call!10448 (+!140 e!65744 (ite c!17360 (ite c!17361 (tuple2!2371 #b0000000000000000000000000000000000000000000000000000000000000000 (get!1310 (select (arr!2027 (_values!2506 (v!2833 (underlying!345 thiss!992)))) from!355) (dynLambda!382 (defaultEntry!2523 (v!2833 (underlying!345 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (tuple2!2371 #b1000000000000000000000000000000000000000000000000000000000000000 (get!1310 (select (arr!2027 (_values!2506 (v!2833 (underlying!345 thiss!992)))) from!355) (dynLambda!382 (defaultEntry!2523 (v!2833 (underlying!345 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (tuple2!2371 (select (arr!2026 (_keys!4221 (v!2833 (underlying!345 thiss!992)))) from!355) (get!1310 (select (arr!2027 (_values!2506 (v!2833 (underlying!345 thiss!992)))) from!355) (dynLambda!382 (defaultEntry!2523 (v!2833 (underlying!345 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun c!17355 () Bool)

(assert (=> bm!10424 (= c!17355 c!17360)))

(declare-fun bm!10425 () Bool)

(declare-fun call!10445 () Bool)

(declare-fun call!10450 () Bool)

(assert (=> bm!10425 (= call!10445 call!10450)))

(declare-fun b!100952 () Bool)

(declare-fun e!65753 () ListLongMap!1561)

(declare-fun call!10428 () ListLongMap!1561)

(assert (=> b!100952 (= e!65753 call!10428)))

(declare-fun b!100953 () Bool)

(assert (=> b!100953 (= e!65753 (getCurrentListMap!476 (_keys!4221 newMap!16) (_values!2506 newMap!16) (mask!6640 newMap!16) (extraKeys!2336 newMap!16) (zeroValue!2402 newMap!16) (minValue!2402 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2523 newMap!16)))))

(declare-fun call!10449 () ListLongMap!1561)

(declare-fun b!100954 () Bool)

(declare-fun call!10433 () ListLongMap!1561)

(assert (=> b!100954 (= e!65744 (ite c!17361 call!10433 call!10449))))

(declare-fun b!100955 () Bool)

(declare-fun res!50587 () Bool)

(declare-fun lt!51048 () SeekEntryResult!265)

(assert (=> b!100955 (= res!50587 (= (select (arr!2026 (_keys!4221 newMap!16)) (index!3208 lt!51048)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!65745 () Bool)

(assert (=> b!100955 (=> (not res!50587) (not e!65745))))

(declare-fun bm!10426 () Bool)

(declare-fun call!10437 () ListLongMap!1561)

(assert (=> bm!10426 (= call!10437 call!10448)))

(declare-fun b!100956 () Bool)

(declare-fun c!17357 () Bool)

(assert (=> b!100956 (= c!17357 ((_ is MissingVacant!265) lt!51048))))

(declare-fun e!65750 () Bool)

(declare-fun e!65759 () Bool)

(assert (=> b!100956 (= e!65750 e!65759)))

(declare-fun b!100957 () Bool)

(declare-fun e!65739 () Bool)

(declare-fun call!10444 () Bool)

(assert (=> b!100957 (= e!65739 (not call!10444))))

(declare-fun b!100958 () Bool)

(declare-fun lt!51052 () Unit!3091)

(declare-fun lt!51054 () Unit!3091)

(assert (=> b!100958 (= lt!51052 lt!51054)))

(assert (=> b!100958 (= call!10437 call!10433)))

(declare-fun lt!51044 () (_ BitVec 32))

(declare-fun lemmaChangeLongMinValueKeyThenAddPairToListMap!43 (array!4268 array!4270 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!3171 V!3171 V!3171 Int) Unit!3091)

(assert (=> b!100958 (= lt!51054 (lemmaChangeLongMinValueKeyThenAddPairToListMap!43 (_keys!4221 newMap!16) (_values!2506 newMap!16) (mask!6640 newMap!16) (extraKeys!2336 newMap!16) lt!51044 (zeroValue!2402 newMap!16) (minValue!2402 newMap!16) (get!1310 (select (arr!2027 (_values!2506 (v!2833 (underlying!345 thiss!992)))) from!355) (dynLambda!382 (defaultEntry!2523 (v!2833 (underlying!345 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (defaultEntry!2523 newMap!16)))))

(assert (=> b!100958 (= lt!51044 (bvor (extraKeys!2336 newMap!16) #b00000000000000000000000000000010))))

(declare-fun e!65746 () tuple2!2372)

(assert (=> b!100958 (= e!65746 (tuple2!2373 true (LongMapFixedSize!865 (defaultEntry!2523 newMap!16) (mask!6640 newMap!16) (bvor (extraKeys!2336 newMap!16) #b00000000000000000000000000000010) (zeroValue!2402 newMap!16) (get!1310 (select (arr!2027 (_values!2506 (v!2833 (underlying!345 thiss!992)))) from!355) (dynLambda!382 (defaultEntry!2523 (v!2833 (underlying!345 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (_size!481 newMap!16) (_keys!4221 newMap!16) (_values!2506 newMap!16) (_vacant!481 newMap!16))))))

(declare-fun b!100959 () Bool)

(declare-fun lt!51041 () tuple2!2372)

(assert (=> b!100959 (= e!65757 (tuple2!2373 (_1!1196 lt!51041) (_2!1196 lt!51041)))))

(assert (=> b!100959 (= lt!51041 call!10439)))

(declare-fun b!100960 () Bool)

(declare-fun res!50600 () Bool)

(declare-fun call!10441 () Bool)

(assert (=> b!100960 (= res!50600 call!10441)))

(declare-fun e!65743 () Bool)

(assert (=> b!100960 (=> (not res!50600) (not e!65743))))

(declare-fun bm!10427 () Bool)

(declare-fun call!10440 () Unit!3091)

(declare-fun lemmaInListMapThenSeekEntryOrOpenFindsIt!43 (array!4268 array!4270 (_ BitVec 32) (_ BitVec 32) V!3171 V!3171 (_ BitVec 64) Int) Unit!3091)

(assert (=> bm!10427 (= call!10440 (lemmaInListMapThenSeekEntryOrOpenFindsIt!43 (_keys!4221 newMap!16) (_values!2506 newMap!16) (mask!6640 newMap!16) (extraKeys!2336 newMap!16) (zeroValue!2402 newMap!16) (minValue!2402 newMap!16) (select (arr!2026 (_keys!4221 (v!2833 (underlying!345 thiss!992)))) from!355) (defaultEntry!2523 newMap!16)))))

(declare-fun bm!10428 () Bool)

(declare-fun updateHelperNewKey!43 (LongMapFixedSize!864 (_ BitVec 64) V!3171 (_ BitVec 32)) tuple2!2372)

(assert (=> bm!10428 (= call!10439 (updateHelperNewKey!43 newMap!16 (select (arr!2026 (_keys!4221 (v!2833 (underlying!345 thiss!992)))) from!355) (get!1310 (select (arr!2027 (_values!2506 (v!2833 (underlying!345 thiss!992)))) from!355) (dynLambda!382 (defaultEntry!2523 (v!2833 (underlying!345 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (ite c!17349 (index!3208 lt!51046) (index!3205 lt!51046))))))

(declare-fun c!17353 () Bool)

(declare-fun lt!51039 () SeekEntryResult!265)

(declare-fun lt!51043 () SeekEntryResult!265)

(declare-fun call!10443 () Bool)

(declare-fun bm!10429 () Bool)

(declare-fun c!17348 () Bool)

(declare-fun c!17358 () Bool)

(declare-fun c!17351 () Bool)

(declare-fun c!17354 () Bool)

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> bm!10429 (= call!10443 (inRange!0 (ite c!17348 (ite c!17351 (index!3206 lt!51039) (ite c!17353 (index!3205 lt!51038) (index!3208 lt!51038))) (ite c!17354 (index!3206 lt!51043) (ite c!17358 (index!3205 lt!51048) (index!3208 lt!51048)))) (mask!6640 newMap!16)))))

(declare-fun bm!10430 () Bool)

(declare-fun call!10436 () ListLongMap!1561)

(assert (=> bm!10430 (= call!10433 call!10436)))

(declare-fun bm!10431 () Bool)

(assert (=> bm!10431 (= call!10450 (arrayContainsKey!0 (_keys!4221 newMap!16) (select (arr!2026 (_keys!4221 (v!2833 (underlying!345 thiss!992)))) from!355) #b00000000000000000000000000000000))))

(declare-fun b!100961 () Bool)

(declare-fun e!65748 () tuple2!2372)

(assert (=> b!100961 (= e!65748 e!65741)))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!4268 (_ BitVec 32)) SeekEntryResult!265)

(assert (=> b!100961 (= lt!51046 (seekEntryOrOpen!0 (select (arr!2026 (_keys!4221 (v!2833 (underlying!345 thiss!992)))) from!355) (_keys!4221 newMap!16) (mask!6640 newMap!16)))))

(assert (=> b!100961 (= c!17348 ((_ is Undefined!265) lt!51046))))

(declare-fun bm!10432 () Bool)

(declare-fun call!10435 () Bool)

(assert (=> bm!10432 (= call!10435 call!10443)))

(declare-fun b!100962 () Bool)

(declare-fun e!65756 () Bool)

(assert (=> b!100962 (= e!65756 (= (select (arr!2026 (_keys!4221 newMap!16)) (index!3206 lt!51043)) (select (arr!2026 (_keys!4221 (v!2833 (underlying!345 thiss!992)))) from!355)))))

(declare-fun bm!10433 () Bool)

(declare-fun c!17350 () Bool)

(assert (=> bm!10433 (= c!17350 c!17348)))

(declare-fun call!10429 () Bool)

(assert (=> bm!10433 (= call!10429 (contains!813 e!65753 (select (arr!2026 (_keys!4221 (v!2833 (underlying!345 thiss!992)))) from!355)))))

(declare-fun bm!10434 () Bool)

(declare-fun call!10432 () ListLongMap!1561)

(assert (=> bm!10434 (= call!10449 call!10432)))

(declare-fun bm!10435 () Bool)

(declare-fun call!10438 () ListLongMap!1561)

(assert (=> bm!10435 (= call!10438 (map!1263 newMap!16))))

(declare-fun b!100963 () Bool)

(declare-fun e!65742 () Unit!3091)

(declare-fun lt!51060 () Unit!3091)

(assert (=> b!100963 (= e!65742 lt!51060)))

(assert (=> b!100963 (= lt!51060 call!10440)))

(declare-fun call!10434 () SeekEntryResult!265)

(assert (=> b!100963 (= lt!51043 call!10434)))

(declare-fun res!50593 () Bool)

(assert (=> b!100963 (= res!50593 ((_ is Found!265) lt!51043))))

(assert (=> b!100963 (=> (not res!50593) (not e!65756))))

(assert (=> b!100963 e!65756))

(declare-fun bm!10436 () Bool)

(declare-fun call!10447 () ListLongMap!1561)

(declare-fun lt!51057 () tuple2!2372)

(assert (=> bm!10436 (= call!10447 (map!1263 (_2!1196 lt!51057)))))

(declare-fun b!100964 () Bool)

(assert (=> b!100964 (= e!65745 (not call!10444))))

(declare-fun b!100965 () Bool)

(assert (=> b!100965 (= e!65759 e!65745)))

(declare-fun res!50596 () Bool)

(declare-fun call!10431 () Bool)

(assert (=> b!100965 (= res!50596 call!10431)))

(assert (=> b!100965 (=> (not res!50596) (not e!65745))))

(declare-fun b!100966 () Bool)

(declare-fun res!50592 () Bool)

(assert (=> b!100966 (= res!50592 call!10435)))

(assert (=> b!100966 (=> (not res!50592) (not e!65756))))

(declare-fun b!100967 () Bool)

(declare-fun lt!51061 () Unit!3091)

(declare-fun e!65752 () Unit!3091)

(assert (=> b!100967 (= lt!51061 e!65752)))

(assert (=> b!100967 (= c!17351 call!10429)))

(assert (=> b!100967 (= e!65741 (tuple2!2373 false newMap!16))))

(declare-fun b!100968 () Bool)

(declare-fun e!65740 () Bool)

(assert (=> b!100968 (= e!65740 e!65749)))

(declare-fun res!50595 () Bool)

(declare-fun call!10427 () Bool)

(assert (=> b!100968 (= res!50595 call!10427)))

(assert (=> b!100968 (=> (not res!50595) (not e!65749))))

(declare-fun lt!51056 () array!4270)

(declare-fun bm!10437 () Bool)

(assert (=> bm!10437 (= call!10436 (getCurrentListMap!476 (_keys!4221 newMap!16) (ite (or c!17360 c!17348) (_values!2506 newMap!16) lt!51056) (mask!6640 newMap!16) (ite c!17360 (ite c!17361 (extraKeys!2336 newMap!16) lt!51044) (extraKeys!2336 newMap!16)) (zeroValue!2402 newMap!16) (ite c!17360 (ite c!17361 (minValue!2402 newMap!16) (get!1310 (select (arr!2027 (_values!2506 (v!2833 (underlying!345 thiss!992)))) from!355) (dynLambda!382 (defaultEntry!2523 (v!2833 (underlying!345 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (minValue!2402 newMap!16)) #b00000000000000000000000000000000 (defaultEntry!2523 newMap!16)))))

(declare-fun bm!10438 () Bool)

(declare-fun call!10442 () SeekEntryResult!265)

(assert (=> bm!10438 (= call!10434 call!10442)))

(declare-fun b!100969 () Bool)

(assert (=> b!100969 (= e!65744 (getCurrentListMap!476 (_keys!4221 newMap!16) (_values!2506 newMap!16) (mask!6640 newMap!16) (extraKeys!2336 newMap!16) (zeroValue!2402 newMap!16) (minValue!2402 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2523 newMap!16)))))

(declare-fun b!100970 () Bool)

(declare-fun Unit!3096 () Unit!3091)

(assert (=> b!100970 (= e!65752 Unit!3096)))

(declare-fun lt!51059 () Unit!3091)

(assert (=> b!100970 (= lt!51059 call!10440)))

(declare-fun call!10446 () SeekEntryResult!265)

(assert (=> b!100970 (= lt!51039 call!10446)))

(declare-fun res!50599 () Bool)

(assert (=> b!100970 (= res!50599 ((_ is Found!265) lt!51039))))

(assert (=> b!100970 (=> (not res!50599) (not e!65743))))

(assert (=> b!100970 e!65743))

(declare-fun lt!51035 () Unit!3091)

(assert (=> b!100970 (= lt!51035 lt!51059)))

(assert (=> b!100970 false))

(declare-fun b!100971 () Bool)

(declare-fun e!65738 () Bool)

(assert (=> b!100971 (= e!65738 (= call!10447 call!10438))))

(declare-fun b!100972 () Bool)

(declare-fun res!50590 () Bool)

(declare-fun e!65758 () Bool)

(assert (=> b!100972 (=> (not res!50590) (not e!65758))))

(assert (=> b!100972 (= res!50590 call!10427)))

(declare-fun e!65747 () Bool)

(assert (=> b!100972 (= e!65747 e!65758)))

(declare-fun b!100973 () Bool)

(declare-fun e!65751 () Bool)

(assert (=> b!100973 (= e!65751 (= call!10447 (+!140 call!10438 (tuple2!2371 (select (arr!2026 (_keys!4221 (v!2833 (underlying!345 thiss!992)))) from!355) (get!1310 (select (arr!2027 (_values!2506 (v!2833 (underlying!345 thiss!992)))) from!355) (dynLambda!382 (defaultEntry!2523 (v!2833 (underlying!345 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun b!100974 () Bool)

(assert (=> b!100974 (= e!65743 (= (select (arr!2026 (_keys!4221 newMap!16)) (index!3206 lt!51039)) (select (arr!2026 (_keys!4221 (v!2833 (underlying!345 thiss!992)))) from!355)))))

(declare-fun b!100975 () Bool)

(declare-fun lt!51037 () Unit!3091)

(assert (=> b!100975 (= e!65752 lt!51037)))

(declare-fun call!10430 () Unit!3091)

(assert (=> b!100975 (= lt!51037 call!10430)))

(assert (=> b!100975 (= lt!51038 call!10446)))

(assert (=> b!100975 (= c!17353 ((_ is MissingZero!265) lt!51038))))

(assert (=> b!100975 e!65747))

(declare-fun b!100976 () Bool)

(assert (=> b!100976 (= e!65749 (not call!10445))))

(declare-fun b!100977 () Bool)

(declare-fun res!50594 () Bool)

(assert (=> b!100977 (=> (not res!50594) (not e!65758))))

(assert (=> b!100977 (= res!50594 (= (select (arr!2026 (_keys!4221 newMap!16)) (index!3205 lt!51038)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!100978 () Bool)

(declare-fun lt!51053 () Unit!3091)

(declare-fun lt!51058 () Unit!3091)

(assert (=> b!100978 (= lt!51053 lt!51058)))

(assert (=> b!100978 (contains!813 call!10428 (select (arr!2026 (_keys!4221 newMap!16)) (index!3206 lt!51046)))))

(declare-fun lemmaValidKeyInArrayIsInListMap!101 (array!4268 array!4270 (_ BitVec 32) (_ BitVec 32) V!3171 V!3171 (_ BitVec 32) Int) Unit!3091)

(assert (=> b!100978 (= lt!51058 (lemmaValidKeyInArrayIsInListMap!101 (_keys!4221 newMap!16) lt!51056 (mask!6640 newMap!16) (extraKeys!2336 newMap!16) (zeroValue!2402 newMap!16) (minValue!2402 newMap!16) (index!3206 lt!51046) (defaultEntry!2523 newMap!16)))))

(assert (=> b!100978 (= lt!51056 (array!4271 (store (arr!2027 (_values!2506 newMap!16)) (index!3206 lt!51046) (ValueCellFull!978 (get!1310 (select (arr!2027 (_values!2506 (v!2833 (underlying!345 thiss!992)))) from!355) (dynLambda!382 (defaultEntry!2523 (v!2833 (underlying!345 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (size!2279 (_values!2506 newMap!16))))))

(declare-fun lt!51040 () Unit!3091)

(declare-fun lt!51049 () Unit!3091)

(assert (=> b!100978 (= lt!51040 lt!51049)))

(assert (=> b!100978 (= call!10448 call!10432)))

(declare-fun lemmaChangeValueExistingKeyToArrayThenAddPairToListMap!43 (array!4268 array!4270 (_ BitVec 32) (_ BitVec 32) V!3171 V!3171 (_ BitVec 32) (_ BitVec 64) V!3171 Int) Unit!3091)

(assert (=> b!100978 (= lt!51049 (lemmaChangeValueExistingKeyToArrayThenAddPairToListMap!43 (_keys!4221 newMap!16) (_values!2506 newMap!16) (mask!6640 newMap!16) (extraKeys!2336 newMap!16) (zeroValue!2402 newMap!16) (minValue!2402 newMap!16) (index!3206 lt!51046) (select (arr!2026 (_keys!4221 (v!2833 (underlying!345 thiss!992)))) from!355) (get!1310 (select (arr!2027 (_values!2506 (v!2833 (underlying!345 thiss!992)))) from!355) (dynLambda!382 (defaultEntry!2523 (v!2833 (underlying!345 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (defaultEntry!2523 newMap!16)))))

(declare-fun lt!51045 () Unit!3091)

(assert (=> b!100978 (= lt!51045 e!65742)))

(assert (=> b!100978 (= c!17354 call!10429)))

(assert (=> b!100978 (= e!65755 (tuple2!2373 true (LongMapFixedSize!865 (defaultEntry!2523 newMap!16) (mask!6640 newMap!16) (extraKeys!2336 newMap!16) (zeroValue!2402 newMap!16) (minValue!2402 newMap!16) (_size!481 newMap!16) (_keys!4221 newMap!16) (array!4271 (store (arr!2027 (_values!2506 newMap!16)) (index!3206 lt!51046) (ValueCellFull!978 (get!1310 (select (arr!2027 (_values!2506 (v!2833 (underlying!345 thiss!992)))) from!355) (dynLambda!382 (defaultEntry!2523 (v!2833 (underlying!345 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (size!2279 (_values!2506 newMap!16))) (_vacant!481 newMap!16))))))

(declare-fun bm!10439 () Bool)

(assert (=> bm!10439 (= call!10444 call!10450)))

(declare-fun b!100979 () Bool)

(declare-fun c!17359 () Bool)

(assert (=> b!100979 (= c!17359 ((_ is MissingVacant!265) lt!51038))))

(assert (=> b!100979 (= e!65747 e!65740)))

(declare-fun bm!10440 () Bool)

(assert (=> bm!10440 (= call!10442 (seekEntryOrOpen!0 (select (arr!2026 (_keys!4221 (v!2833 (underlying!345 thiss!992)))) from!355) (_keys!4221 newMap!16) (mask!6640 newMap!16)))))

(declare-fun b!100980 () Bool)

(declare-fun lt!51050 () Unit!3091)

(declare-fun lt!51051 () Unit!3091)

(assert (=> b!100980 (= lt!51050 lt!51051)))

(assert (=> b!100980 (= call!10437 call!10449)))

(declare-fun lt!51047 () (_ BitVec 32))

(declare-fun lemmaChangeZeroKeyThenAddPairToListMap!43 (array!4268 array!4270 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!3171 V!3171 V!3171 Int) Unit!3091)

(assert (=> b!100980 (= lt!51051 (lemmaChangeZeroKeyThenAddPairToListMap!43 (_keys!4221 newMap!16) (_values!2506 newMap!16) (mask!6640 newMap!16) (extraKeys!2336 newMap!16) lt!51047 (zeroValue!2402 newMap!16) (get!1310 (select (arr!2027 (_values!2506 (v!2833 (underlying!345 thiss!992)))) from!355) (dynLambda!382 (defaultEntry!2523 (v!2833 (underlying!345 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (minValue!2402 newMap!16) (defaultEntry!2523 newMap!16)))))

(assert (=> b!100980 (= lt!51047 (bvor (extraKeys!2336 newMap!16) #b00000000000000000000000000000001))))

(assert (=> b!100980 (= e!65746 (tuple2!2373 true (LongMapFixedSize!865 (defaultEntry!2523 newMap!16) (mask!6640 newMap!16) (bvor (extraKeys!2336 newMap!16) #b00000000000000000000000000000001) (get!1310 (select (arr!2027 (_values!2506 (v!2833 (underlying!345 thiss!992)))) from!355) (dynLambda!382 (defaultEntry!2523 (v!2833 (underlying!345 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (minValue!2402 newMap!16) (_size!481 newMap!16) (_keys!4221 newMap!16) (_values!2506 newMap!16) (_vacant!481 newMap!16))))))

(declare-fun b!100981 () Bool)

(declare-fun Unit!3097 () Unit!3091)

(assert (=> b!100981 (= e!65742 Unit!3097)))

(declare-fun lt!51042 () Unit!3091)

(assert (=> b!100981 (= lt!51042 call!10430)))

(assert (=> b!100981 (= lt!51048 call!10434)))

(assert (=> b!100981 (= c!17358 ((_ is MissingZero!265) lt!51048))))

(assert (=> b!100981 e!65750))

(declare-fun lt!51036 () Unit!3091)

(assert (=> b!100981 (= lt!51036 lt!51042)))

(assert (=> b!100981 false))

(declare-fun bm!10441 () Bool)

(assert (=> bm!10441 (= call!10446 call!10442)))

(declare-fun d!27355 () Bool)

(declare-fun e!65754 () Bool)

(assert (=> d!27355 e!65754))

(declare-fun res!50588 () Bool)

(assert (=> d!27355 (=> (not res!50588) (not e!65754))))

(assert (=> d!27355 (= res!50588 (valid!391 (_2!1196 lt!51057)))))

(assert (=> d!27355 (= lt!51057 e!65748)))

(assert (=> d!27355 (= c!17360 (= (select (arr!2026 (_keys!4221 (v!2833 (underlying!345 thiss!992)))) from!355) (bvneg (select (arr!2026 (_keys!4221 (v!2833 (underlying!345 thiss!992)))) from!355))))))

(assert (=> d!27355 (valid!391 newMap!16)))

(assert (=> d!27355 (= (update!150 newMap!16 (select (arr!2026 (_keys!4221 (v!2833 (underlying!345 thiss!992)))) from!355) (get!1310 (select (arr!2027 (_values!2506 (v!2833 (underlying!345 thiss!992)))) from!355) (dynLambda!382 (defaultEntry!2523 (v!2833 (underlying!345 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) lt!51057)))

(declare-fun b!100982 () Bool)

(declare-fun res!50597 () Bool)

(assert (=> b!100982 (=> (not res!50597) (not e!65739))))

(assert (=> b!100982 (= res!50597 (= (select (arr!2026 (_keys!4221 newMap!16)) (index!3205 lt!51048)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!100983 () Bool)

(declare-fun res!50589 () Bool)

(assert (=> b!100983 (=> (not res!50589) (not e!65739))))

(assert (=> b!100983 (= res!50589 call!10431)))

(assert (=> b!100983 (= e!65750 e!65739)))

(declare-fun b!100984 () Bool)

(assert (=> b!100984 (= e!65748 e!65746)))

(assert (=> b!100984 (= c!17361 (= (select (arr!2026 (_keys!4221 (v!2833 (underlying!345 thiss!992)))) from!355) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!100985 () Bool)

(assert (=> b!100985 (= e!65740 ((_ is Undefined!265) lt!51038))))

(declare-fun b!100986 () Bool)

(assert (=> b!100986 (= e!65758 (not call!10445))))

(declare-fun bm!10442 () Bool)

(assert (=> bm!10442 (= call!10428 call!10436)))

(declare-fun b!100987 () Bool)

(assert (=> b!100987 (= e!65754 e!65738)))

(declare-fun c!17356 () Bool)

(assert (=> b!100987 (= c!17356 (_1!1196 lt!51057))))

(declare-fun bm!10443 () Bool)

(assert (=> bm!10443 (= call!10441 call!10443)))

(declare-fun bm!10444 () Bool)

(declare-fun lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!43 (array!4268 array!4270 (_ BitVec 32) (_ BitVec 32) V!3171 V!3171 (_ BitVec 64) Int) Unit!3091)

(assert (=> bm!10444 (= call!10430 (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!43 (_keys!4221 newMap!16) (_values!2506 newMap!16) (mask!6640 newMap!16) (extraKeys!2336 newMap!16) (zeroValue!2402 newMap!16) (minValue!2402 newMap!16) (select (arr!2026 (_keys!4221 (v!2833 (underlying!345 thiss!992)))) from!355) (defaultEntry!2523 newMap!16)))))

(declare-fun b!100988 () Bool)

(assert (=> b!100988 (= e!65757 e!65755)))

(declare-fun c!17352 () Bool)

(assert (=> b!100988 (= c!17352 ((_ is MissingZero!265) lt!51046))))

(declare-fun b!100989 () Bool)

(assert (=> b!100989 (= e!65738 e!65751)))

(declare-fun res!50598 () Bool)

(assert (=> b!100989 (= res!50598 (contains!813 call!10447 (select (arr!2026 (_keys!4221 (v!2833 (underlying!345 thiss!992)))) from!355)))))

(assert (=> b!100989 (=> (not res!50598) (not e!65751))))

(declare-fun bm!10445 () Bool)

(assert (=> bm!10445 (= call!10432 (getCurrentListMap!476 (_keys!4221 newMap!16) (ite c!17360 (_values!2506 newMap!16) (array!4271 (store (arr!2027 (_values!2506 newMap!16)) (index!3206 lt!51046) (ValueCellFull!978 (get!1310 (select (arr!2027 (_values!2506 (v!2833 (underlying!345 thiss!992)))) from!355) (dynLambda!382 (defaultEntry!2523 (v!2833 (underlying!345 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (size!2279 (_values!2506 newMap!16)))) (mask!6640 newMap!16) (ite (and c!17360 c!17361) lt!51047 (extraKeys!2336 newMap!16)) (ite (and c!17360 c!17361) (get!1310 (select (arr!2027 (_values!2506 (v!2833 (underlying!345 thiss!992)))) from!355) (dynLambda!382 (defaultEntry!2523 (v!2833 (underlying!345 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (zeroValue!2402 newMap!16)) (minValue!2402 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2523 newMap!16)))))

(declare-fun bm!10446 () Bool)

(assert (=> bm!10446 (= call!10427 call!10441)))

(declare-fun b!100990 () Bool)

(assert (=> b!100990 (= e!65759 ((_ is Undefined!265) lt!51048))))

(declare-fun bm!10447 () Bool)

(assert (=> bm!10447 (= call!10431 call!10435)))

(assert (= (and d!27355 c!17360) b!100984))

(assert (= (and d!27355 (not c!17360)) b!100961))

(assert (= (and b!100984 c!17361) b!100980))

(assert (= (and b!100984 (not c!17361)) b!100958))

(assert (= (or b!100980 b!100958) bm!10434))

(assert (= (or b!100980 b!100958) bm!10430))

(assert (= (or b!100980 b!100958) bm!10426))

(assert (= (and b!100961 c!17348) b!100967))

(assert (= (and b!100961 (not c!17348)) b!100950))

(assert (= (and b!100967 c!17351) b!100970))

(assert (= (and b!100967 (not c!17351)) b!100975))

(assert (= (and b!100970 res!50599) b!100960))

(assert (= (and b!100960 res!50600) b!100974))

(assert (= (and b!100975 c!17353) b!100972))

(assert (= (and b!100975 (not c!17353)) b!100979))

(assert (= (and b!100972 res!50590) b!100977))

(assert (= (and b!100977 res!50594) b!100986))

(assert (= (and b!100979 c!17359) b!100968))

(assert (= (and b!100979 (not c!17359)) b!100985))

(assert (= (and b!100968 res!50595) b!100951))

(assert (= (and b!100951 res!50591) b!100976))

(assert (= (or b!100972 b!100968) bm!10446))

(assert (= (or b!100986 b!100976) bm!10425))

(assert (= (or b!100960 bm!10446) bm!10443))

(assert (= (or b!100970 b!100975) bm!10441))

(assert (= (and b!100950 c!17349) b!100959))

(assert (= (and b!100950 (not c!17349)) b!100988))

(assert (= (and b!100988 c!17352) b!100949))

(assert (= (and b!100988 (not c!17352)) b!100978))

(assert (= (and b!100978 c!17354) b!100963))

(assert (= (and b!100978 (not c!17354)) b!100981))

(assert (= (and b!100963 res!50593) b!100966))

(assert (= (and b!100966 res!50592) b!100962))

(assert (= (and b!100981 c!17358) b!100983))

(assert (= (and b!100981 (not c!17358)) b!100956))

(assert (= (and b!100983 res!50589) b!100982))

(assert (= (and b!100982 res!50597) b!100957))

(assert (= (and b!100956 c!17357) b!100965))

(assert (= (and b!100956 (not c!17357)) b!100990))

(assert (= (and b!100965 res!50596) b!100955))

(assert (= (and b!100955 res!50587) b!100964))

(assert (= (or b!100983 b!100965) bm!10447))

(assert (= (or b!100957 b!100964) bm!10439))

(assert (= (or b!100966 bm!10447) bm!10432))

(assert (= (or b!100963 b!100981) bm!10438))

(assert (= (or b!100959 b!100949) bm!10428))

(assert (= (or bm!10425 bm!10439) bm!10431))

(assert (= (or b!100967 b!100978) bm!10442))

(assert (= (or bm!10441 bm!10438) bm!10440))

(assert (= (or b!100975 b!100981) bm!10444))

(assert (= (or b!100970 b!100963) bm!10427))

(assert (= (or bm!10443 bm!10432) bm!10429))

(assert (= (or b!100967 b!100978) bm!10433))

(assert (= (and bm!10433 c!17350) b!100952))

(assert (= (and bm!10433 (not c!17350)) b!100953))

(assert (= (or bm!10430 bm!10442) bm!10437))

(assert (= (or bm!10434 b!100978) bm!10445))

(assert (= (or bm!10426 b!100978) bm!10424))

(assert (= (and bm!10424 c!17355) b!100954))

(assert (= (and bm!10424 (not c!17355)) b!100969))

(assert (= (and d!27355 res!50588) b!100987))

(assert (= (and b!100987 c!17356) b!100989))

(assert (= (and b!100987 (not c!17356)) b!100971))

(assert (= (and b!100989 res!50598) b!100973))

(assert (= (or b!100989 b!100973 b!100971) bm!10436))

(assert (= (or b!100973 b!100971) bm!10435))

(assert (=> bm!10431 m!111657))

(declare-fun m!111751 () Bool)

(assert (=> bm!10431 m!111751))

(declare-fun m!111753 () Bool)

(assert (=> d!27355 m!111753))

(assert (=> d!27355 m!111645))

(assert (=> bm!10433 m!111657))

(declare-fun m!111755 () Bool)

(assert (=> bm!10433 m!111755))

(declare-fun m!111757 () Bool)

(assert (=> b!100953 m!111757))

(declare-fun m!111759 () Bool)

(assert (=> b!100951 m!111759))

(declare-fun m!111761 () Bool)

(assert (=> bm!10429 m!111761))

(declare-fun m!111763 () Bool)

(assert (=> b!100974 m!111763))

(declare-fun m!111765 () Bool)

(assert (=> b!100977 m!111765))

(assert (=> b!100989 m!111657))

(declare-fun m!111767 () Bool)

(assert (=> b!100989 m!111767))

(declare-fun m!111769 () Bool)

(assert (=> bm!10445 m!111769))

(declare-fun m!111771 () Bool)

(assert (=> bm!10445 m!111771))

(assert (=> b!100961 m!111657))

(declare-fun m!111773 () Bool)

(assert (=> b!100961 m!111773))

(declare-fun m!111775 () Bool)

(assert (=> b!100973 m!111775))

(assert (=> bm!10427 m!111657))

(declare-fun m!111777 () Bool)

(assert (=> bm!10427 m!111777))

(assert (=> bm!10428 m!111657))

(assert (=> bm!10428 m!111655))

(declare-fun m!111779 () Bool)

(assert (=> bm!10428 m!111779))

(declare-fun m!111781 () Bool)

(assert (=> b!100982 m!111781))

(assert (=> b!100958 m!111655))

(declare-fun m!111783 () Bool)

(assert (=> b!100958 m!111783))

(assert (=> b!100980 m!111655))

(declare-fun m!111785 () Bool)

(assert (=> b!100980 m!111785))

(declare-fun m!111787 () Bool)

(assert (=> b!100955 m!111787))

(assert (=> b!100969 m!111757))

(declare-fun m!111789 () Bool)

(assert (=> bm!10437 m!111789))

(declare-fun m!111791 () Bool)

(assert (=> bm!10424 m!111791))

(assert (=> bm!10440 m!111657))

(assert (=> bm!10440 m!111773))

(declare-fun m!111793 () Bool)

(assert (=> bm!10436 m!111793))

(declare-fun m!111795 () Bool)

(assert (=> b!100962 m!111795))

(declare-fun m!111797 () Bool)

(assert (=> b!100978 m!111797))

(declare-fun m!111799 () Bool)

(assert (=> b!100978 m!111799))

(declare-fun m!111801 () Bool)

(assert (=> b!100978 m!111801))

(assert (=> b!100978 m!111769))

(assert (=> b!100978 m!111799))

(assert (=> b!100978 m!111657))

(assert (=> b!100978 m!111655))

(declare-fun m!111803 () Bool)

(assert (=> b!100978 m!111803))

(assert (=> bm!10444 m!111657))

(declare-fun m!111805 () Bool)

(assert (=> bm!10444 m!111805))

(assert (=> bm!10435 m!111677))

(assert (=> b!100769 d!27355))

(declare-fun d!27357 () Bool)

(declare-fun c!17364 () Bool)

(assert (=> d!27357 (= c!17364 ((_ is ValueCellFull!978) (select (arr!2027 (_values!2506 (v!2833 (underlying!345 thiss!992)))) from!355)))))

(declare-fun e!65762 () V!3171)

(assert (=> d!27357 (= (get!1310 (select (arr!2027 (_values!2506 (v!2833 (underlying!345 thiss!992)))) from!355) (dynLambda!382 (defaultEntry!2523 (v!2833 (underlying!345 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) e!65762)))

(declare-fun b!100995 () Bool)

(declare-fun get!1311 (ValueCell!978 V!3171) V!3171)

(assert (=> b!100995 (= e!65762 (get!1311 (select (arr!2027 (_values!2506 (v!2833 (underlying!345 thiss!992)))) from!355) (dynLambda!382 (defaultEntry!2523 (v!2833 (underlying!345 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!100996 () Bool)

(declare-fun get!1312 (ValueCell!978 V!3171) V!3171)

(assert (=> b!100996 (= e!65762 (get!1312 (select (arr!2027 (_values!2506 (v!2833 (underlying!345 thiss!992)))) from!355) (dynLambda!382 (defaultEntry!2523 (v!2833 (underlying!345 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!27357 c!17364) b!100995))

(assert (= (and d!27357 (not c!17364)) b!100996))

(assert (=> b!100995 m!111651))

(assert (=> b!100995 m!111653))

(declare-fun m!111807 () Bool)

(assert (=> b!100995 m!111807))

(assert (=> b!100996 m!111651))

(assert (=> b!100996 m!111653))

(declare-fun m!111809 () Bool)

(assert (=> b!100996 m!111809))

(assert (=> b!100769 d!27357))

(declare-fun d!27359 () Bool)

(assert (=> d!27359 (= (validMask!0 (mask!6640 (v!2833 (underlying!345 thiss!992)))) (and (or (= (mask!6640 (v!2833 (underlying!345 thiss!992))) #b00000000000000000000000000000111) (= (mask!6640 (v!2833 (underlying!345 thiss!992))) #b00000000000000000000000000001111) (= (mask!6640 (v!2833 (underlying!345 thiss!992))) #b00000000000000000000000000011111) (= (mask!6640 (v!2833 (underlying!345 thiss!992))) #b00000000000000000000000000111111) (= (mask!6640 (v!2833 (underlying!345 thiss!992))) #b00000000000000000000000001111111) (= (mask!6640 (v!2833 (underlying!345 thiss!992))) #b00000000000000000000000011111111) (= (mask!6640 (v!2833 (underlying!345 thiss!992))) #b00000000000000000000000111111111) (= (mask!6640 (v!2833 (underlying!345 thiss!992))) #b00000000000000000000001111111111) (= (mask!6640 (v!2833 (underlying!345 thiss!992))) #b00000000000000000000011111111111) (= (mask!6640 (v!2833 (underlying!345 thiss!992))) #b00000000000000000000111111111111) (= (mask!6640 (v!2833 (underlying!345 thiss!992))) #b00000000000000000001111111111111) (= (mask!6640 (v!2833 (underlying!345 thiss!992))) #b00000000000000000011111111111111) (= (mask!6640 (v!2833 (underlying!345 thiss!992))) #b00000000000000000111111111111111) (= (mask!6640 (v!2833 (underlying!345 thiss!992))) #b00000000000000001111111111111111) (= (mask!6640 (v!2833 (underlying!345 thiss!992))) #b00000000000000011111111111111111) (= (mask!6640 (v!2833 (underlying!345 thiss!992))) #b00000000000000111111111111111111) (= (mask!6640 (v!2833 (underlying!345 thiss!992))) #b00000000000001111111111111111111) (= (mask!6640 (v!2833 (underlying!345 thiss!992))) #b00000000000011111111111111111111) (= (mask!6640 (v!2833 (underlying!345 thiss!992))) #b00000000000111111111111111111111) (= (mask!6640 (v!2833 (underlying!345 thiss!992))) #b00000000001111111111111111111111) (= (mask!6640 (v!2833 (underlying!345 thiss!992))) #b00000000011111111111111111111111) (= (mask!6640 (v!2833 (underlying!345 thiss!992))) #b00000000111111111111111111111111) (= (mask!6640 (v!2833 (underlying!345 thiss!992))) #b00000001111111111111111111111111) (= (mask!6640 (v!2833 (underlying!345 thiss!992))) #b00000011111111111111111111111111) (= (mask!6640 (v!2833 (underlying!345 thiss!992))) #b00000111111111111111111111111111) (= (mask!6640 (v!2833 (underlying!345 thiss!992))) #b00001111111111111111111111111111) (= (mask!6640 (v!2833 (underlying!345 thiss!992))) #b00011111111111111111111111111111) (= (mask!6640 (v!2833 (underlying!345 thiss!992))) #b00111111111111111111111111111111)) (bvsle (mask!6640 (v!2833 (underlying!345 thiss!992))) #b00111111111111111111111111111111)))))

(assert (=> b!100774 d!27359))

(declare-fun b!101005 () Bool)

(declare-fun e!65769 () Bool)

(declare-fun call!10453 () Bool)

(assert (=> b!101005 (= e!65769 call!10453)))

(declare-fun d!27361 () Bool)

(declare-fun res!50606 () Bool)

(declare-fun e!65770 () Bool)

(assert (=> d!27361 (=> res!50606 e!65770)))

(assert (=> d!27361 (= res!50606 (bvsge #b00000000000000000000000000000000 (size!2278 (_keys!4221 (v!2833 (underlying!345 thiss!992))))))))

(assert (=> d!27361 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!4221 (v!2833 (underlying!345 thiss!992))) (mask!6640 (v!2833 (underlying!345 thiss!992)))) e!65770)))

(declare-fun bm!10450 () Bool)

(assert (=> bm!10450 (= call!10453 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (_keys!4221 (v!2833 (underlying!345 thiss!992))) (mask!6640 (v!2833 (underlying!345 thiss!992)))))))

(declare-fun b!101006 () Bool)

(declare-fun e!65771 () Bool)

(assert (=> b!101006 (= e!65771 e!65769)))

(declare-fun lt!51068 () (_ BitVec 64))

(assert (=> b!101006 (= lt!51068 (select (arr!2026 (_keys!4221 (v!2833 (underlying!345 thiss!992)))) #b00000000000000000000000000000000))))

(declare-fun lt!51070 () Unit!3091)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!4268 (_ BitVec 64) (_ BitVec 32)) Unit!3091)

(assert (=> b!101006 (= lt!51070 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!4221 (v!2833 (underlying!345 thiss!992))) lt!51068 #b00000000000000000000000000000000))))

(assert (=> b!101006 (arrayContainsKey!0 (_keys!4221 (v!2833 (underlying!345 thiss!992))) lt!51068 #b00000000000000000000000000000000)))

(declare-fun lt!51069 () Unit!3091)

(assert (=> b!101006 (= lt!51069 lt!51070)))

(declare-fun res!50605 () Bool)

(assert (=> b!101006 (= res!50605 (= (seekEntryOrOpen!0 (select (arr!2026 (_keys!4221 (v!2833 (underlying!345 thiss!992)))) #b00000000000000000000000000000000) (_keys!4221 (v!2833 (underlying!345 thiss!992))) (mask!6640 (v!2833 (underlying!345 thiss!992)))) (Found!265 #b00000000000000000000000000000000)))))

(assert (=> b!101006 (=> (not res!50605) (not e!65769))))

(declare-fun b!101007 () Bool)

(assert (=> b!101007 (= e!65771 call!10453)))

(declare-fun b!101008 () Bool)

(assert (=> b!101008 (= e!65770 e!65771)))

(declare-fun c!17367 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!101008 (= c!17367 (validKeyInArray!0 (select (arr!2026 (_keys!4221 (v!2833 (underlying!345 thiss!992)))) #b00000000000000000000000000000000)))))

(assert (= (and d!27361 (not res!50606)) b!101008))

(assert (= (and b!101008 c!17367) b!101006))

(assert (= (and b!101008 (not c!17367)) b!101007))

(assert (= (and b!101006 res!50605) b!101005))

(assert (= (or b!101005 b!101007) bm!10450))

(declare-fun m!111811 () Bool)

(assert (=> bm!10450 m!111811))

(declare-fun m!111813 () Bool)

(assert (=> b!101006 m!111813))

(declare-fun m!111815 () Bool)

(assert (=> b!101006 m!111815))

(declare-fun m!111817 () Bool)

(assert (=> b!101006 m!111817))

(assert (=> b!101006 m!111813))

(declare-fun m!111819 () Bool)

(assert (=> b!101006 m!111819))

(assert (=> b!101008 m!111813))

(assert (=> b!101008 m!111813))

(declare-fun m!111821 () Bool)

(assert (=> b!101008 m!111821))

(assert (=> b!100772 d!27361))

(declare-fun d!27363 () Bool)

(assert (=> d!27363 (= (valid!390 thiss!992) (valid!391 (v!2833 (underlying!345 thiss!992))))))

(declare-fun bs!4173 () Bool)

(assert (= bs!4173 d!27363))

(declare-fun m!111823 () Bool)

(assert (=> bs!4173 m!111823))

(assert (=> start!11960 d!27363))

(declare-fun d!27365 () Bool)

(assert (=> d!27365 (= (map!1263 newMap!16) (getCurrentListMap!476 (_keys!4221 newMap!16) (_values!2506 newMap!16) (mask!6640 newMap!16) (extraKeys!2336 newMap!16) (zeroValue!2402 newMap!16) (minValue!2402 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2523 newMap!16)))))

(declare-fun bs!4174 () Bool)

(assert (= bs!4174 d!27365))

(assert (=> bs!4174 m!111757))

(assert (=> b!100763 d!27365))

(declare-fun b!101051 () Bool)

(declare-fun e!65810 () Bool)

(assert (=> b!101051 (= e!65810 (validKeyInArray!0 (select (arr!2026 (_keys!4221 (v!2833 (underlying!345 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))))))

(declare-fun b!101052 () Bool)

(declare-fun e!65805 () Bool)

(declare-fun e!65808 () Bool)

(assert (=> b!101052 (= e!65805 e!65808)))

(declare-fun c!17381 () Bool)

(assert (=> b!101052 (= c!17381 (not (= (bvand (extraKeys!2336 (v!2833 (underlying!345 thiss!992))) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!101053 () Bool)

(declare-fun e!65802 () Bool)

(declare-fun e!65800 () Bool)

(assert (=> b!101053 (= e!65802 e!65800)))

(declare-fun res!50630 () Bool)

(declare-fun call!10472 () Bool)

(assert (=> b!101053 (= res!50630 call!10472)))

(assert (=> b!101053 (=> (not res!50630) (not e!65800))))

(declare-fun b!101054 () Bool)

(declare-fun res!50625 () Bool)

(assert (=> b!101054 (=> (not res!50625) (not e!65805))))

(declare-fun e!65806 () Bool)

(assert (=> b!101054 (= res!50625 e!65806)))

(declare-fun res!50627 () Bool)

(assert (=> b!101054 (=> res!50627 e!65806)))

(declare-fun e!65801 () Bool)

(assert (=> b!101054 (= res!50627 (not e!65801))))

(declare-fun res!50628 () Bool)

(assert (=> b!101054 (=> (not res!50628) (not e!65801))))

(assert (=> b!101054 (= res!50628 (bvslt (bvadd #b00000000000000000000000000000001 from!355) (size!2278 (_keys!4221 (v!2833 (underlying!345 thiss!992))))))))

(declare-fun b!101055 () Bool)

(declare-fun e!65799 () Bool)

(declare-fun lt!51131 () ListLongMap!1561)

(declare-fun apply!94 (ListLongMap!1561 (_ BitVec 64)) V!3171)

(assert (=> b!101055 (= e!65799 (= (apply!94 lt!51131 #b1000000000000000000000000000000000000000000000000000000000000000) (minValue!2402 (v!2833 (underlying!345 thiss!992)))))))

(declare-fun b!101056 () Bool)

(declare-fun e!65804 () ListLongMap!1561)

(declare-fun e!65803 () ListLongMap!1561)

(assert (=> b!101056 (= e!65804 e!65803)))

(declare-fun c!17382 () Bool)

(assert (=> b!101056 (= c!17382 (and (not (= (bvand (extraKeys!2336 (v!2833 (underlying!345 thiss!992))) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand (extraKeys!2336 (v!2833 (underlying!345 thiss!992))) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!101057 () Bool)

(declare-fun e!65807 () ListLongMap!1561)

(declare-fun call!10470 () ListLongMap!1561)

(assert (=> b!101057 (= e!65807 call!10470)))

(declare-fun b!101058 () Bool)

(declare-fun e!65798 () Bool)

(assert (=> b!101058 (= e!65798 (= (apply!94 lt!51131 (select (arr!2026 (_keys!4221 (v!2833 (underlying!345 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))) (get!1310 (select (arr!2027 (_values!2506 (v!2833 (underlying!345 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (dynLambda!382 (defaultEntry!2523 (v!2833 (underlying!345 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!101058 (and (bvsge (bvadd #b00000000000000000000000000000001 from!355) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!355) (size!2279 (_values!2506 (v!2833 (underlying!345 thiss!992))))))))

(assert (=> b!101058 (and (bvsge (bvadd #b00000000000000000000000000000001 from!355) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!355) (size!2278 (_keys!4221 (v!2833 (underlying!345 thiss!992))))))))

(declare-fun bm!10466 () Bool)

(declare-fun call!10473 () ListLongMap!1561)

(assert (=> bm!10466 (= call!10470 call!10473)))

(declare-fun b!101059 () Bool)

(declare-fun res!50629 () Bool)

(assert (=> b!101059 (=> (not res!50629) (not e!65805))))

(assert (=> b!101059 (= res!50629 e!65802)))

(declare-fun c!17385 () Bool)

(assert (=> b!101059 (= c!17385 (not (= (bvand (extraKeys!2336 (v!2833 (underlying!345 thiss!992))) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun bm!10467 () Bool)

(declare-fun call!10471 () ListLongMap!1561)

(declare-fun call!10474 () ListLongMap!1561)

(assert (=> bm!10467 (= call!10471 call!10474)))

(declare-fun bm!10468 () Bool)

(declare-fun call!10469 () ListLongMap!1561)

(assert (=> bm!10468 (= call!10474 call!10469)))

(declare-fun b!101060 () Bool)

(assert (=> b!101060 (= e!65807 call!10471)))

(declare-fun b!101061 () Bool)

(assert (=> b!101061 (= e!65800 (= (apply!94 lt!51131 #b0000000000000000000000000000000000000000000000000000000000000000) (zeroValue!2402 (v!2833 (underlying!345 thiss!992)))))))

(declare-fun b!101062 () Bool)

(assert (=> b!101062 (= e!65803 call!10470)))

(declare-fun bm!10469 () Bool)

(declare-fun call!10468 () Bool)

(assert (=> bm!10469 (= call!10468 (contains!813 lt!51131 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!101063 () Bool)

(assert (=> b!101063 (= e!65801 (validKeyInArray!0 (select (arr!2026 (_keys!4221 (v!2833 (underlying!345 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))))))

(declare-fun b!101064 () Bool)

(assert (=> b!101064 (= e!65808 e!65799)))

(declare-fun res!50632 () Bool)

(assert (=> b!101064 (= res!50632 call!10468)))

(assert (=> b!101064 (=> (not res!50632) (not e!65799))))

(declare-fun b!101065 () Bool)

(declare-fun c!17384 () Bool)

(assert (=> b!101065 (= c!17384 (and (not (= (bvand (extraKeys!2336 (v!2833 (underlying!345 thiss!992))) #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand (extraKeys!2336 (v!2833 (underlying!345 thiss!992))) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!101065 (= e!65803 e!65807)))

(declare-fun d!27367 () Bool)

(assert (=> d!27367 e!65805))

(declare-fun res!50631 () Bool)

(assert (=> d!27367 (=> (not res!50631) (not e!65805))))

(assert (=> d!27367 (= res!50631 (or (bvsge (bvadd #b00000000000000000000000000000001 from!355) (size!2278 (_keys!4221 (v!2833 (underlying!345 thiss!992))))) (and (bvsge (bvadd #b00000000000000000000000000000001 from!355) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!355) (size!2278 (_keys!4221 (v!2833 (underlying!345 thiss!992))))))))))

(declare-fun lt!51132 () ListLongMap!1561)

(assert (=> d!27367 (= lt!51131 lt!51132)))

(declare-fun lt!51135 () Unit!3091)

(declare-fun e!65809 () Unit!3091)

(assert (=> d!27367 (= lt!51135 e!65809)))

(declare-fun c!17383 () Bool)

(assert (=> d!27367 (= c!17383 e!65810)))

(declare-fun res!50633 () Bool)

(assert (=> d!27367 (=> (not res!50633) (not e!65810))))

(assert (=> d!27367 (= res!50633 (bvslt (bvadd #b00000000000000000000000000000001 from!355) (size!2278 (_keys!4221 (v!2833 (underlying!345 thiss!992))))))))

(assert (=> d!27367 (= lt!51132 e!65804)))

(declare-fun c!17380 () Bool)

(assert (=> d!27367 (= c!17380 (and (not (= (bvand (extraKeys!2336 (v!2833 (underlying!345 thiss!992))) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (extraKeys!2336 (v!2833 (underlying!345 thiss!992))) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!27367 (validMask!0 (mask!6640 (v!2833 (underlying!345 thiss!992))))))

(assert (=> d!27367 (= (getCurrentListMap!476 (_keys!4221 (v!2833 (underlying!345 thiss!992))) (_values!2506 (v!2833 (underlying!345 thiss!992))) (mask!6640 (v!2833 (underlying!345 thiss!992))) (extraKeys!2336 (v!2833 (underlying!345 thiss!992))) (zeroValue!2402 (v!2833 (underlying!345 thiss!992))) (minValue!2402 (v!2833 (underlying!345 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2523 (v!2833 (underlying!345 thiss!992)))) lt!51131)))

(declare-fun bm!10465 () Bool)

(declare-fun getCurrentListMapNoExtraKeys!104 (array!4268 array!4270 (_ BitVec 32) (_ BitVec 32) V!3171 V!3171 (_ BitVec 32) Int) ListLongMap!1561)

(assert (=> bm!10465 (= call!10469 (getCurrentListMapNoExtraKeys!104 (_keys!4221 (v!2833 (underlying!345 thiss!992))) (_values!2506 (v!2833 (underlying!345 thiss!992))) (mask!6640 (v!2833 (underlying!345 thiss!992))) (extraKeys!2336 (v!2833 (underlying!345 thiss!992))) (zeroValue!2402 (v!2833 (underlying!345 thiss!992))) (minValue!2402 (v!2833 (underlying!345 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2523 (v!2833 (underlying!345 thiss!992)))))))

(declare-fun bm!10470 () Bool)

(assert (=> bm!10470 (= call!10472 (contains!813 lt!51131 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!101066 () Bool)

(assert (=> b!101066 (= e!65802 (not call!10472))))

(declare-fun b!101067 () Bool)

(assert (=> b!101067 (= e!65808 (not call!10468))))

(declare-fun b!101068 () Bool)

(assert (=> b!101068 (= e!65804 (+!140 call!10473 (tuple2!2371 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2402 (v!2833 (underlying!345 thiss!992))))))))

(declare-fun b!101069 () Bool)

(assert (=> b!101069 (= e!65806 e!65798)))

(declare-fun res!50626 () Bool)

(assert (=> b!101069 (=> (not res!50626) (not e!65798))))

(assert (=> b!101069 (= res!50626 (contains!813 lt!51131 (select (arr!2026 (_keys!4221 (v!2833 (underlying!345 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))))))

(assert (=> b!101069 (and (bvsge (bvadd #b00000000000000000000000000000001 from!355) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!355) (size!2278 (_keys!4221 (v!2833 (underlying!345 thiss!992))))))))

(declare-fun b!101070 () Bool)

(declare-fun Unit!3098 () Unit!3091)

(assert (=> b!101070 (= e!65809 Unit!3098)))

(declare-fun bm!10471 () Bool)

(assert (=> bm!10471 (= call!10473 (+!140 (ite c!17380 call!10469 (ite c!17382 call!10474 call!10471)) (ite (or c!17380 c!17382) (tuple2!2371 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2402 (v!2833 (underlying!345 thiss!992)))) (tuple2!2371 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2402 (v!2833 (underlying!345 thiss!992)))))))))

(declare-fun b!101071 () Bool)

(declare-fun lt!51116 () Unit!3091)

(assert (=> b!101071 (= e!65809 lt!51116)))

(declare-fun lt!51121 () ListLongMap!1561)

(assert (=> b!101071 (= lt!51121 (getCurrentListMapNoExtraKeys!104 (_keys!4221 (v!2833 (underlying!345 thiss!992))) (_values!2506 (v!2833 (underlying!345 thiss!992))) (mask!6640 (v!2833 (underlying!345 thiss!992))) (extraKeys!2336 (v!2833 (underlying!345 thiss!992))) (zeroValue!2402 (v!2833 (underlying!345 thiss!992))) (minValue!2402 (v!2833 (underlying!345 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2523 (v!2833 (underlying!345 thiss!992)))))))

(declare-fun lt!51130 () (_ BitVec 64))

(assert (=> b!101071 (= lt!51130 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!51134 () (_ BitVec 64))

(assert (=> b!101071 (= lt!51134 (select (arr!2026 (_keys!4221 (v!2833 (underlying!345 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)))))

(declare-fun lt!51136 () Unit!3091)

(declare-fun addStillContains!70 (ListLongMap!1561 (_ BitVec 64) V!3171 (_ BitVec 64)) Unit!3091)

(assert (=> b!101071 (= lt!51136 (addStillContains!70 lt!51121 lt!51130 (zeroValue!2402 (v!2833 (underlying!345 thiss!992))) lt!51134))))

(assert (=> b!101071 (contains!813 (+!140 lt!51121 (tuple2!2371 lt!51130 (zeroValue!2402 (v!2833 (underlying!345 thiss!992))))) lt!51134)))

(declare-fun lt!51129 () Unit!3091)

(assert (=> b!101071 (= lt!51129 lt!51136)))

(declare-fun lt!51125 () ListLongMap!1561)

(assert (=> b!101071 (= lt!51125 (getCurrentListMapNoExtraKeys!104 (_keys!4221 (v!2833 (underlying!345 thiss!992))) (_values!2506 (v!2833 (underlying!345 thiss!992))) (mask!6640 (v!2833 (underlying!345 thiss!992))) (extraKeys!2336 (v!2833 (underlying!345 thiss!992))) (zeroValue!2402 (v!2833 (underlying!345 thiss!992))) (minValue!2402 (v!2833 (underlying!345 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2523 (v!2833 (underlying!345 thiss!992)))))))

(declare-fun lt!51117 () (_ BitVec 64))

(assert (=> b!101071 (= lt!51117 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!51127 () (_ BitVec 64))

(assert (=> b!101071 (= lt!51127 (select (arr!2026 (_keys!4221 (v!2833 (underlying!345 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)))))

(declare-fun lt!51133 () Unit!3091)

(declare-fun addApplyDifferent!70 (ListLongMap!1561 (_ BitVec 64) V!3171 (_ BitVec 64)) Unit!3091)

(assert (=> b!101071 (= lt!51133 (addApplyDifferent!70 lt!51125 lt!51117 (minValue!2402 (v!2833 (underlying!345 thiss!992))) lt!51127))))

(assert (=> b!101071 (= (apply!94 (+!140 lt!51125 (tuple2!2371 lt!51117 (minValue!2402 (v!2833 (underlying!345 thiss!992))))) lt!51127) (apply!94 lt!51125 lt!51127))))

(declare-fun lt!51122 () Unit!3091)

(assert (=> b!101071 (= lt!51122 lt!51133)))

(declare-fun lt!51128 () ListLongMap!1561)

(assert (=> b!101071 (= lt!51128 (getCurrentListMapNoExtraKeys!104 (_keys!4221 (v!2833 (underlying!345 thiss!992))) (_values!2506 (v!2833 (underlying!345 thiss!992))) (mask!6640 (v!2833 (underlying!345 thiss!992))) (extraKeys!2336 (v!2833 (underlying!345 thiss!992))) (zeroValue!2402 (v!2833 (underlying!345 thiss!992))) (minValue!2402 (v!2833 (underlying!345 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2523 (v!2833 (underlying!345 thiss!992)))))))

(declare-fun lt!51124 () (_ BitVec 64))

(assert (=> b!101071 (= lt!51124 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!51118 () (_ BitVec 64))

(assert (=> b!101071 (= lt!51118 (select (arr!2026 (_keys!4221 (v!2833 (underlying!345 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)))))

(declare-fun lt!51126 () Unit!3091)

(assert (=> b!101071 (= lt!51126 (addApplyDifferent!70 lt!51128 lt!51124 (zeroValue!2402 (v!2833 (underlying!345 thiss!992))) lt!51118))))

(assert (=> b!101071 (= (apply!94 (+!140 lt!51128 (tuple2!2371 lt!51124 (zeroValue!2402 (v!2833 (underlying!345 thiss!992))))) lt!51118) (apply!94 lt!51128 lt!51118))))

(declare-fun lt!51123 () Unit!3091)

(assert (=> b!101071 (= lt!51123 lt!51126)))

(declare-fun lt!51119 () ListLongMap!1561)

(assert (=> b!101071 (= lt!51119 (getCurrentListMapNoExtraKeys!104 (_keys!4221 (v!2833 (underlying!345 thiss!992))) (_values!2506 (v!2833 (underlying!345 thiss!992))) (mask!6640 (v!2833 (underlying!345 thiss!992))) (extraKeys!2336 (v!2833 (underlying!345 thiss!992))) (zeroValue!2402 (v!2833 (underlying!345 thiss!992))) (minValue!2402 (v!2833 (underlying!345 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2523 (v!2833 (underlying!345 thiss!992)))))))

(declare-fun lt!51120 () (_ BitVec 64))

(assert (=> b!101071 (= lt!51120 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!51115 () (_ BitVec 64))

(assert (=> b!101071 (= lt!51115 (select (arr!2026 (_keys!4221 (v!2833 (underlying!345 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)))))

(assert (=> b!101071 (= lt!51116 (addApplyDifferent!70 lt!51119 lt!51120 (minValue!2402 (v!2833 (underlying!345 thiss!992))) lt!51115))))

(assert (=> b!101071 (= (apply!94 (+!140 lt!51119 (tuple2!2371 lt!51120 (minValue!2402 (v!2833 (underlying!345 thiss!992))))) lt!51115) (apply!94 lt!51119 lt!51115))))

(assert (= (and d!27367 c!17380) b!101068))

(assert (= (and d!27367 (not c!17380)) b!101056))

(assert (= (and b!101056 c!17382) b!101062))

(assert (= (and b!101056 (not c!17382)) b!101065))

(assert (= (and b!101065 c!17384) b!101057))

(assert (= (and b!101065 (not c!17384)) b!101060))

(assert (= (or b!101057 b!101060) bm!10467))

(assert (= (or b!101062 bm!10467) bm!10468))

(assert (= (or b!101062 b!101057) bm!10466))

(assert (= (or b!101068 bm!10468) bm!10465))

(assert (= (or b!101068 bm!10466) bm!10471))

(assert (= (and d!27367 res!50633) b!101051))

(assert (= (and d!27367 c!17383) b!101071))

(assert (= (and d!27367 (not c!17383)) b!101070))

(assert (= (and d!27367 res!50631) b!101054))

(assert (= (and b!101054 res!50628) b!101063))

(assert (= (and b!101054 (not res!50627)) b!101069))

(assert (= (and b!101069 res!50626) b!101058))

(assert (= (and b!101054 res!50625) b!101059))

(assert (= (and b!101059 c!17385) b!101053))

(assert (= (and b!101059 (not c!17385)) b!101066))

(assert (= (and b!101053 res!50630) b!101061))

(assert (= (or b!101053 b!101066) bm!10470))

(assert (= (and b!101059 res!50629) b!101052))

(assert (= (and b!101052 c!17381) b!101064))

(assert (= (and b!101052 (not c!17381)) b!101067))

(assert (= (and b!101064 res!50632) b!101055))

(assert (= (or b!101064 b!101067) bm!10469))

(declare-fun b_lambda!4541 () Bool)

(assert (=> (not b_lambda!4541) (not b!101058)))

(assert (=> b!101058 t!5621))

(declare-fun b_and!6229 () Bool)

(assert (= b_and!6217 (and (=> t!5621 result!3329) b_and!6229)))

(assert (=> b!101058 t!5623))

(declare-fun b_and!6231 () Bool)

(assert (= b_and!6219 (and (=> t!5623 result!3333) b_and!6231)))

(declare-fun m!111825 () Bool)

(assert (=> b!101051 m!111825))

(assert (=> b!101051 m!111825))

(declare-fun m!111827 () Bool)

(assert (=> b!101051 m!111827))

(assert (=> b!101058 m!111653))

(declare-fun m!111829 () Bool)

(assert (=> b!101058 m!111829))

(assert (=> b!101058 m!111653))

(declare-fun m!111831 () Bool)

(assert (=> b!101058 m!111831))

(assert (=> b!101058 m!111829))

(assert (=> b!101058 m!111825))

(assert (=> b!101058 m!111825))

(declare-fun m!111833 () Bool)

(assert (=> b!101058 m!111833))

(declare-fun m!111835 () Bool)

(assert (=> bm!10470 m!111835))

(assert (=> b!101069 m!111825))

(assert (=> b!101069 m!111825))

(declare-fun m!111837 () Bool)

(assert (=> b!101069 m!111837))

(declare-fun m!111839 () Bool)

(assert (=> b!101068 m!111839))

(assert (=> d!27367 m!111647))

(declare-fun m!111841 () Bool)

(assert (=> b!101055 m!111841))

(assert (=> b!101063 m!111825))

(assert (=> b!101063 m!111825))

(assert (=> b!101063 m!111827))

(declare-fun m!111843 () Bool)

(assert (=> bm!10465 m!111843))

(declare-fun m!111845 () Bool)

(assert (=> bm!10469 m!111845))

(declare-fun m!111847 () Bool)

(assert (=> b!101061 m!111847))

(declare-fun m!111849 () Bool)

(assert (=> bm!10471 m!111849))

(declare-fun m!111851 () Bool)

(assert (=> b!101071 m!111851))

(declare-fun m!111853 () Bool)

(assert (=> b!101071 m!111853))

(declare-fun m!111855 () Bool)

(assert (=> b!101071 m!111855))

(declare-fun m!111857 () Bool)

(assert (=> b!101071 m!111857))

(declare-fun m!111859 () Bool)

(assert (=> b!101071 m!111859))

(declare-fun m!111861 () Bool)

(assert (=> b!101071 m!111861))

(declare-fun m!111863 () Bool)

(assert (=> b!101071 m!111863))

(assert (=> b!101071 m!111825))

(assert (=> b!101071 m!111853))

(declare-fun m!111865 () Bool)

(assert (=> b!101071 m!111865))

(declare-fun m!111867 () Bool)

(assert (=> b!101071 m!111867))

(assert (=> b!101071 m!111843))

(assert (=> b!101071 m!111861))

(assert (=> b!101071 m!111857))

(declare-fun m!111869 () Bool)

(assert (=> b!101071 m!111869))

(declare-fun m!111871 () Bool)

(assert (=> b!101071 m!111871))

(declare-fun m!111873 () Bool)

(assert (=> b!101071 m!111873))

(assert (=> b!101071 m!111851))

(declare-fun m!111875 () Bool)

(assert (=> b!101071 m!111875))

(declare-fun m!111877 () Bool)

(assert (=> b!101071 m!111877))

(declare-fun m!111879 () Bool)

(assert (=> b!101071 m!111879))

(assert (=> b!100763 d!27367))

(declare-fun d!27369 () Bool)

(assert (=> d!27369 (= (array_inv!1219 (_keys!4221 newMap!16)) (bvsge (size!2278 (_keys!4221 newMap!16)) #b00000000000000000000000000000000))))

(assert (=> b!100781 d!27369))

(declare-fun d!27371 () Bool)

(assert (=> d!27371 (= (array_inv!1220 (_values!2506 newMap!16)) (bvsge (size!2279 (_values!2506 newMap!16)) #b00000000000000000000000000000000))))

(assert (=> b!100781 d!27371))

(declare-fun d!27373 () Bool)

(assert (=> d!27373 (not (arrayContainsKey!0 (_keys!4221 (v!2833 (underlying!345 thiss!992))) (select (arr!2026 (_keys!4221 (v!2833 (underlying!345 thiss!992)))) from!355) (bvadd #b00000000000000000000000000000001 from!355)))))

(declare-fun lt!51139 () Unit!3091)

(declare-fun choose!68 (array!4268 (_ BitVec 32) (_ BitVec 64) List!1619) Unit!3091)

(assert (=> d!27373 (= lt!51139 (choose!68 (_keys!4221 (v!2833 (underlying!345 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (select (arr!2026 (_keys!4221 (v!2833 (underlying!345 thiss!992)))) from!355) (Cons!1615 (select (arr!2026 (_keys!4221 (v!2833 (underlying!345 thiss!992)))) from!355) Nil!1616)))))

(assert (=> d!27373 (bvslt (size!2278 (_keys!4221 (v!2833 (underlying!345 thiss!992)))) #b01111111111111111111111111111111)))

(assert (=> d!27373 (= (lemmaArrayNoDuplicateFromNotContainsKeysInAcc!0 (_keys!4221 (v!2833 (underlying!345 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (select (arr!2026 (_keys!4221 (v!2833 (underlying!345 thiss!992)))) from!355) (Cons!1615 (select (arr!2026 (_keys!4221 (v!2833 (underlying!345 thiss!992)))) from!355) Nil!1616)) lt!51139)))

(declare-fun bs!4175 () Bool)

(assert (= bs!4175 d!27373))

(assert (=> bs!4175 m!111657))

(assert (=> bs!4175 m!111673))

(assert (=> bs!4175 m!111657))

(declare-fun m!111881 () Bool)

(assert (=> bs!4175 m!111881))

(assert (=> b!100764 d!27373))

(declare-fun d!27375 () Bool)

(assert (=> d!27375 (arrayNoDuplicates!0 (_keys!4221 (v!2833 (underlying!345 thiss!992))) from!355 Nil!1616)))

(declare-fun lt!51142 () Unit!3091)

(declare-fun choose!39 (array!4268 (_ BitVec 32) (_ BitVec 32)) Unit!3091)

(assert (=> d!27375 (= lt!51142 (choose!39 (_keys!4221 (v!2833 (underlying!345 thiss!992))) #b00000000000000000000000000000000 from!355))))

(assert (=> d!27375 (bvslt (size!2278 (_keys!4221 (v!2833 (underlying!345 thiss!992)))) #b01111111111111111111111111111111)))

(assert (=> d!27375 (= (lemmaNoDuplicateFromThenFromBigger!0 (_keys!4221 (v!2833 (underlying!345 thiss!992))) #b00000000000000000000000000000000 from!355) lt!51142)))

(declare-fun bs!4176 () Bool)

(assert (= bs!4176 d!27375))

(assert (=> bs!4176 m!111669))

(declare-fun m!111883 () Bool)

(assert (=> bs!4176 m!111883))

(assert (=> b!100764 d!27375))

(declare-fun d!27377 () Bool)

(declare-fun res!50638 () Bool)

(declare-fun e!65815 () Bool)

(assert (=> d!27377 (=> res!50638 e!65815)))

(assert (=> d!27377 (= res!50638 (= (select (arr!2026 (_keys!4221 (v!2833 (underlying!345 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (select (arr!2026 (_keys!4221 (v!2833 (underlying!345 thiss!992)))) from!355)))))

(assert (=> d!27377 (= (arrayContainsKey!0 (_keys!4221 (v!2833 (underlying!345 thiss!992))) (select (arr!2026 (_keys!4221 (v!2833 (underlying!345 thiss!992)))) from!355) (bvadd #b00000000000000000000000000000001 from!355)) e!65815)))

(declare-fun b!101076 () Bool)

(declare-fun e!65816 () Bool)

(assert (=> b!101076 (= e!65815 e!65816)))

(declare-fun res!50639 () Bool)

(assert (=> b!101076 (=> (not res!50639) (not e!65816))))

(assert (=> b!101076 (= res!50639 (bvslt (bvadd #b00000000000000000000000000000001 from!355 #b00000000000000000000000000000001) (size!2278 (_keys!4221 (v!2833 (underlying!345 thiss!992))))))))

(declare-fun b!101077 () Bool)

(assert (=> b!101077 (= e!65816 (arrayContainsKey!0 (_keys!4221 (v!2833 (underlying!345 thiss!992))) (select (arr!2026 (_keys!4221 (v!2833 (underlying!345 thiss!992)))) from!355) (bvadd #b00000000000000000000000000000001 from!355 #b00000000000000000000000000000001)))))

(assert (= (and d!27377 (not res!50638)) b!101076))

(assert (= (and b!101076 res!50639) b!101077))

(assert (=> d!27377 m!111825))

(assert (=> b!101077 m!111657))

(declare-fun m!111885 () Bool)

(assert (=> b!101077 m!111885))

(assert (=> b!100764 d!27377))

(declare-fun d!27379 () Bool)

(declare-fun e!65819 () Bool)

(assert (=> d!27379 e!65819))

(declare-fun c!17388 () Bool)

(assert (=> d!27379 (= c!17388 (and (not (= (select (arr!2026 (_keys!4221 (v!2833 (underlying!345 thiss!992)))) from!355) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!2026 (_keys!4221 (v!2833 (underlying!345 thiss!992)))) from!355) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun lt!51145 () Unit!3091)

(declare-fun choose!623 (array!4268 array!4270 (_ BitVec 32) (_ BitVec 32) V!3171 V!3171 (_ BitVec 64) (_ BitVec 32) Int) Unit!3091)

(assert (=> d!27379 (= lt!51145 (choose!623 (_keys!4221 (v!2833 (underlying!345 thiss!992))) (_values!2506 (v!2833 (underlying!345 thiss!992))) (mask!6640 (v!2833 (underlying!345 thiss!992))) (extraKeys!2336 (v!2833 (underlying!345 thiss!992))) (zeroValue!2402 (v!2833 (underlying!345 thiss!992))) (minValue!2402 (v!2833 (underlying!345 thiss!992))) (select (arr!2026 (_keys!4221 (v!2833 (underlying!345 thiss!992)))) from!355) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2523 (v!2833 (underlying!345 thiss!992)))))))

(assert (=> d!27379 (validMask!0 (mask!6640 (v!2833 (underlying!345 thiss!992))))))

(assert (=> d!27379 (= (lemmaListMapContainsThenArrayContainsFrom!100 (_keys!4221 (v!2833 (underlying!345 thiss!992))) (_values!2506 (v!2833 (underlying!345 thiss!992))) (mask!6640 (v!2833 (underlying!345 thiss!992))) (extraKeys!2336 (v!2833 (underlying!345 thiss!992))) (zeroValue!2402 (v!2833 (underlying!345 thiss!992))) (minValue!2402 (v!2833 (underlying!345 thiss!992))) (select (arr!2026 (_keys!4221 (v!2833 (underlying!345 thiss!992)))) from!355) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2523 (v!2833 (underlying!345 thiss!992)))) lt!51145)))

(declare-fun b!101082 () Bool)

(assert (=> b!101082 (= e!65819 (arrayContainsKey!0 (_keys!4221 (v!2833 (underlying!345 thiss!992))) (select (arr!2026 (_keys!4221 (v!2833 (underlying!345 thiss!992)))) from!355) (bvadd #b00000000000000000000000000000001 from!355)))))

(declare-fun b!101083 () Bool)

(assert (=> b!101083 (= e!65819 (ite (= (select (arr!2026 (_keys!4221 (v!2833 (underlying!345 thiss!992)))) from!355) #b0000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand (extraKeys!2336 (v!2833 (underlying!345 thiss!992))) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (extraKeys!2336 (v!2833 (underlying!345 thiss!992))) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (= (and d!27379 c!17388) b!101082))

(assert (= (and d!27379 (not c!17388)) b!101083))

(assert (=> d!27379 m!111657))

(declare-fun m!111887 () Bool)

(assert (=> d!27379 m!111887))

(assert (=> d!27379 m!111647))

(assert (=> b!101082 m!111657))

(assert (=> b!101082 m!111673))

(assert (=> b!100764 d!27379))

(declare-fun c!17391 () Bool)

(declare-fun call!10477 () Bool)

(declare-fun bm!10474 () Bool)

(assert (=> bm!10474 (= call!10477 (arrayNoDuplicates!0 (_keys!4221 (v!2833 (underlying!345 thiss!992))) (bvadd from!355 #b00000000000000000000000000000001) (ite c!17391 (Cons!1615 (select (arr!2026 (_keys!4221 (v!2833 (underlying!345 thiss!992)))) from!355) Nil!1616) Nil!1616)))))

(declare-fun b!101094 () Bool)

(declare-fun e!65830 () Bool)

(declare-fun contains!814 (List!1619 (_ BitVec 64)) Bool)

(assert (=> b!101094 (= e!65830 (contains!814 Nil!1616 (select (arr!2026 (_keys!4221 (v!2833 (underlying!345 thiss!992)))) from!355)))))

(declare-fun b!101095 () Bool)

(declare-fun e!65831 () Bool)

(assert (=> b!101095 (= e!65831 call!10477)))

(declare-fun b!101097 () Bool)

(assert (=> b!101097 (= e!65831 call!10477)))

(declare-fun b!101098 () Bool)

(declare-fun e!65828 () Bool)

(assert (=> b!101098 (= e!65828 e!65831)))

(assert (=> b!101098 (= c!17391 (validKeyInArray!0 (select (arr!2026 (_keys!4221 (v!2833 (underlying!345 thiss!992)))) from!355)))))

(declare-fun b!101096 () Bool)

(declare-fun e!65829 () Bool)

(assert (=> b!101096 (= e!65829 e!65828)))

(declare-fun res!50648 () Bool)

(assert (=> b!101096 (=> (not res!50648) (not e!65828))))

(assert (=> b!101096 (= res!50648 (not e!65830))))

(declare-fun res!50647 () Bool)

(assert (=> b!101096 (=> (not res!50647) (not e!65830))))

(assert (=> b!101096 (= res!50647 (validKeyInArray!0 (select (arr!2026 (_keys!4221 (v!2833 (underlying!345 thiss!992)))) from!355)))))

(declare-fun d!27381 () Bool)

(declare-fun res!50646 () Bool)

(assert (=> d!27381 (=> res!50646 e!65829)))

(assert (=> d!27381 (= res!50646 (bvsge from!355 (size!2278 (_keys!4221 (v!2833 (underlying!345 thiss!992))))))))

(assert (=> d!27381 (= (arrayNoDuplicates!0 (_keys!4221 (v!2833 (underlying!345 thiss!992))) from!355 Nil!1616) e!65829)))

(assert (= (and d!27381 (not res!50646)) b!101096))

(assert (= (and b!101096 res!50647) b!101094))

(assert (= (and b!101096 res!50648) b!101098))

(assert (= (and b!101098 c!17391) b!101095))

(assert (= (and b!101098 (not c!17391)) b!101097))

(assert (= (or b!101095 b!101097) bm!10474))

(assert (=> bm!10474 m!111657))

(declare-fun m!111889 () Bool)

(assert (=> bm!10474 m!111889))

(assert (=> b!101094 m!111657))

(assert (=> b!101094 m!111657))

(declare-fun m!111891 () Bool)

(assert (=> b!101094 m!111891))

(assert (=> b!101098 m!111657))

(assert (=> b!101098 m!111657))

(declare-fun m!111893 () Bool)

(assert (=> b!101098 m!111893))

(assert (=> b!101096 m!111657))

(assert (=> b!101096 m!111657))

(assert (=> b!101096 m!111893))

(assert (=> b!100764 d!27381))

(declare-fun d!27383 () Bool)

(assert (=> d!27383 (= (array_inv!1219 (_keys!4221 (v!2833 (underlying!345 thiss!992)))) (bvsge (size!2278 (_keys!4221 (v!2833 (underlying!345 thiss!992)))) #b00000000000000000000000000000000))))

(assert (=> b!100776 d!27383))

(declare-fun d!27385 () Bool)

(assert (=> d!27385 (= (array_inv!1220 (_values!2506 (v!2833 (underlying!345 thiss!992)))) (bvsge (size!2279 (_values!2506 (v!2833 (underlying!345 thiss!992)))) #b00000000000000000000000000000000))))

(assert (=> b!100776 d!27385))

(declare-fun mapNonEmpty!3807 () Bool)

(declare-fun mapRes!3807 () Bool)

(declare-fun tp!9675 () Bool)

(declare-fun e!65836 () Bool)

(assert (=> mapNonEmpty!3807 (= mapRes!3807 (and tp!9675 e!65836))))

(declare-fun mapKey!3807 () (_ BitVec 32))

(declare-fun mapRest!3807 () (Array (_ BitVec 32) ValueCell!978))

(declare-fun mapValue!3807 () ValueCell!978)

(assert (=> mapNonEmpty!3807 (= mapRest!3797 (store mapRest!3807 mapKey!3807 mapValue!3807))))

(declare-fun b!101106 () Bool)

(declare-fun e!65837 () Bool)

(assert (=> b!101106 (= e!65837 tp_is_empty!2643)))

(declare-fun b!101105 () Bool)

(assert (=> b!101105 (= e!65836 tp_is_empty!2643)))

(declare-fun condMapEmpty!3807 () Bool)

(declare-fun mapDefault!3807 () ValueCell!978)

(assert (=> mapNonEmpty!3797 (= condMapEmpty!3807 (= mapRest!3797 ((as const (Array (_ BitVec 32) ValueCell!978)) mapDefault!3807)))))

(assert (=> mapNonEmpty!3797 (= tp!9658 (and e!65837 mapRes!3807))))

(declare-fun mapIsEmpty!3807 () Bool)

(assert (=> mapIsEmpty!3807 mapRes!3807))

(assert (= (and mapNonEmpty!3797 condMapEmpty!3807) mapIsEmpty!3807))

(assert (= (and mapNonEmpty!3797 (not condMapEmpty!3807)) mapNonEmpty!3807))

(assert (= (and mapNonEmpty!3807 ((_ is ValueCellFull!978) mapValue!3807)) b!101105))

(assert (= (and mapNonEmpty!3797 ((_ is ValueCellFull!978) mapDefault!3807)) b!101106))

(declare-fun m!111895 () Bool)

(assert (=> mapNonEmpty!3807 m!111895))

(declare-fun mapNonEmpty!3808 () Bool)

(declare-fun mapRes!3808 () Bool)

(declare-fun tp!9676 () Bool)

(declare-fun e!65838 () Bool)

(assert (=> mapNonEmpty!3808 (= mapRes!3808 (and tp!9676 e!65838))))

(declare-fun mapValue!3808 () ValueCell!978)

(declare-fun mapRest!3808 () (Array (_ BitVec 32) ValueCell!978))

(declare-fun mapKey!3808 () (_ BitVec 32))

(assert (=> mapNonEmpty!3808 (= mapRest!3798 (store mapRest!3808 mapKey!3808 mapValue!3808))))

(declare-fun b!101108 () Bool)

(declare-fun e!65839 () Bool)

(assert (=> b!101108 (= e!65839 tp_is_empty!2643)))

(declare-fun b!101107 () Bool)

(assert (=> b!101107 (= e!65838 tp_is_empty!2643)))

(declare-fun condMapEmpty!3808 () Bool)

(declare-fun mapDefault!3808 () ValueCell!978)

(assert (=> mapNonEmpty!3798 (= condMapEmpty!3808 (= mapRest!3798 ((as const (Array (_ BitVec 32) ValueCell!978)) mapDefault!3808)))))

(assert (=> mapNonEmpty!3798 (= tp!9657 (and e!65839 mapRes!3808))))

(declare-fun mapIsEmpty!3808 () Bool)

(assert (=> mapIsEmpty!3808 mapRes!3808))

(assert (= (and mapNonEmpty!3798 condMapEmpty!3808) mapIsEmpty!3808))

(assert (= (and mapNonEmpty!3798 (not condMapEmpty!3808)) mapNonEmpty!3808))

(assert (= (and mapNonEmpty!3808 ((_ is ValueCellFull!978) mapValue!3808)) b!101107))

(assert (= (and mapNonEmpty!3798 ((_ is ValueCellFull!978) mapDefault!3808)) b!101108))

(declare-fun m!111897 () Bool)

(assert (=> mapNonEmpty!3808 m!111897))

(declare-fun b_lambda!4543 () Bool)

(assert (= b_lambda!4541 (or (and b!100776 b_free!2453) (and b!100781 b_free!2455 (= (defaultEntry!2523 newMap!16) (defaultEntry!2523 (v!2833 (underlying!345 thiss!992))))) b_lambda!4543)))

(check-sat (not b!100953) (not b!100989) (not b!100853) (not b!100969) (not b!100961) (not bm!10433) (not b!101008) (not b!100973) (not d!27355) b_and!6229 (not b!101098) (not mapNonEmpty!3807) (not b!100862) (not b!101094) (not d!27373) (not b!101082) (not b!100958) (not d!27351) (not d!27379) (not bm!10428) (not b!101058) (not bm!10450) (not d!27375) (not b!100855) (not b!101069) (not b_next!2455) (not b_lambda!4543) (not d!27367) (not bm!10440) (not b!101055) tp_is_empty!2643 (not bm!10465) (not bm!10431) (not b!100978) (not bm!10470) (not bm!10469) (not mapNonEmpty!3808) (not b!101051) (not b!100996) (not d!27363) (not bm!10427) (not bm!10444) (not b!100864) (not bm!10474) (not b!101063) (not b_lambda!4539) (not b!101077) (not b!100854) (not b!101006) b_and!6231 (not bm!10437) (not bm!10429) (not b!101071) (not b!100980) (not bm!10445) (not b!101068) (not bm!10435) (not d!27353) (not bm!10436) (not bm!10471) (not b!100995) (not d!27365) (not bm!10424) (not b!101061) (not b_next!2453) (not b!101096))
(check-sat b_and!6229 b_and!6231 (not b_next!2453) (not b_next!2455))
(get-model)

(declare-fun d!27387 () Bool)

(assert (=> d!27387 (arrayContainsKey!0 (_keys!4221 (v!2833 (underlying!345 thiss!992))) lt!51068 #b00000000000000000000000000000000)))

(declare-fun lt!51148 () Unit!3091)

(declare-fun choose!13 (array!4268 (_ BitVec 64) (_ BitVec 32)) Unit!3091)

(assert (=> d!27387 (= lt!51148 (choose!13 (_keys!4221 (v!2833 (underlying!345 thiss!992))) lt!51068 #b00000000000000000000000000000000))))

(assert (=> d!27387 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(assert (=> d!27387 (= (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!4221 (v!2833 (underlying!345 thiss!992))) lt!51068 #b00000000000000000000000000000000) lt!51148)))

(declare-fun bs!4177 () Bool)

(assert (= bs!4177 d!27387))

(assert (=> bs!4177 m!111817))

(declare-fun m!111899 () Bool)

(assert (=> bs!4177 m!111899))

(assert (=> b!101006 d!27387))

(declare-fun d!27389 () Bool)

(declare-fun res!50649 () Bool)

(declare-fun e!65840 () Bool)

(assert (=> d!27389 (=> res!50649 e!65840)))

(assert (=> d!27389 (= res!50649 (= (select (arr!2026 (_keys!4221 (v!2833 (underlying!345 thiss!992)))) #b00000000000000000000000000000000) lt!51068))))

(assert (=> d!27389 (= (arrayContainsKey!0 (_keys!4221 (v!2833 (underlying!345 thiss!992))) lt!51068 #b00000000000000000000000000000000) e!65840)))

(declare-fun b!101109 () Bool)

(declare-fun e!65841 () Bool)

(assert (=> b!101109 (= e!65840 e!65841)))

(declare-fun res!50650 () Bool)

(assert (=> b!101109 (=> (not res!50650) (not e!65841))))

(assert (=> b!101109 (= res!50650 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!2278 (_keys!4221 (v!2833 (underlying!345 thiss!992))))))))

(declare-fun b!101110 () Bool)

(assert (=> b!101110 (= e!65841 (arrayContainsKey!0 (_keys!4221 (v!2833 (underlying!345 thiss!992))) lt!51068 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!27389 (not res!50649)) b!101109))

(assert (= (and b!101109 res!50650) b!101110))

(assert (=> d!27389 m!111813))

(declare-fun m!111901 () Bool)

(assert (=> b!101110 m!111901))

(assert (=> b!101006 d!27389))

(declare-fun b!101123 () Bool)

(declare-fun e!65849 () SeekEntryResult!265)

(declare-fun lt!51155 () SeekEntryResult!265)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!4268 (_ BitVec 32)) SeekEntryResult!265)

(assert (=> b!101123 (= e!65849 (seekKeyOrZeroReturnVacant!0 (x!13259 lt!51155) (index!3207 lt!51155) (index!3207 lt!51155) (select (arr!2026 (_keys!4221 (v!2833 (underlying!345 thiss!992)))) #b00000000000000000000000000000000) (_keys!4221 (v!2833 (underlying!345 thiss!992))) (mask!6640 (v!2833 (underlying!345 thiss!992)))))))

(declare-fun b!101124 () Bool)

(declare-fun e!65850 () SeekEntryResult!265)

(declare-fun e!65848 () SeekEntryResult!265)

(assert (=> b!101124 (= e!65850 e!65848)))

(declare-fun lt!51156 () (_ BitVec 64))

(assert (=> b!101124 (= lt!51156 (select (arr!2026 (_keys!4221 (v!2833 (underlying!345 thiss!992)))) (index!3207 lt!51155)))))

(declare-fun c!17398 () Bool)

(assert (=> b!101124 (= c!17398 (= lt!51156 (select (arr!2026 (_keys!4221 (v!2833 (underlying!345 thiss!992)))) #b00000000000000000000000000000000)))))

(declare-fun b!101125 () Bool)

(assert (=> b!101125 (= e!65848 (Found!265 (index!3207 lt!51155)))))

(declare-fun d!27391 () Bool)

(declare-fun lt!51157 () SeekEntryResult!265)

(assert (=> d!27391 (and (or ((_ is Undefined!265) lt!51157) (not ((_ is Found!265) lt!51157)) (and (bvsge (index!3206 lt!51157) #b00000000000000000000000000000000) (bvslt (index!3206 lt!51157) (size!2278 (_keys!4221 (v!2833 (underlying!345 thiss!992))))))) (or ((_ is Undefined!265) lt!51157) ((_ is Found!265) lt!51157) (not ((_ is MissingZero!265) lt!51157)) (and (bvsge (index!3205 lt!51157) #b00000000000000000000000000000000) (bvslt (index!3205 lt!51157) (size!2278 (_keys!4221 (v!2833 (underlying!345 thiss!992))))))) (or ((_ is Undefined!265) lt!51157) ((_ is Found!265) lt!51157) ((_ is MissingZero!265) lt!51157) (not ((_ is MissingVacant!265) lt!51157)) (and (bvsge (index!3208 lt!51157) #b00000000000000000000000000000000) (bvslt (index!3208 lt!51157) (size!2278 (_keys!4221 (v!2833 (underlying!345 thiss!992))))))) (or ((_ is Undefined!265) lt!51157) (ite ((_ is Found!265) lt!51157) (= (select (arr!2026 (_keys!4221 (v!2833 (underlying!345 thiss!992)))) (index!3206 lt!51157)) (select (arr!2026 (_keys!4221 (v!2833 (underlying!345 thiss!992)))) #b00000000000000000000000000000000)) (ite ((_ is MissingZero!265) lt!51157) (= (select (arr!2026 (_keys!4221 (v!2833 (underlying!345 thiss!992)))) (index!3205 lt!51157)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!265) lt!51157) (= (select (arr!2026 (_keys!4221 (v!2833 (underlying!345 thiss!992)))) (index!3208 lt!51157)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!27391 (= lt!51157 e!65850)))

(declare-fun c!17399 () Bool)

(assert (=> d!27391 (= c!17399 (and ((_ is Intermediate!265) lt!51155) (undefined!1077 lt!51155)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!4268 (_ BitVec 32)) SeekEntryResult!265)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!27391 (= lt!51155 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!2026 (_keys!4221 (v!2833 (underlying!345 thiss!992)))) #b00000000000000000000000000000000) (mask!6640 (v!2833 (underlying!345 thiss!992)))) (select (arr!2026 (_keys!4221 (v!2833 (underlying!345 thiss!992)))) #b00000000000000000000000000000000) (_keys!4221 (v!2833 (underlying!345 thiss!992))) (mask!6640 (v!2833 (underlying!345 thiss!992)))))))

(assert (=> d!27391 (validMask!0 (mask!6640 (v!2833 (underlying!345 thiss!992))))))

(assert (=> d!27391 (= (seekEntryOrOpen!0 (select (arr!2026 (_keys!4221 (v!2833 (underlying!345 thiss!992)))) #b00000000000000000000000000000000) (_keys!4221 (v!2833 (underlying!345 thiss!992))) (mask!6640 (v!2833 (underlying!345 thiss!992)))) lt!51157)))

(declare-fun b!101126 () Bool)

(assert (=> b!101126 (= e!65850 Undefined!265)))

(declare-fun b!101127 () Bool)

(declare-fun c!17400 () Bool)

(assert (=> b!101127 (= c!17400 (= lt!51156 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!101127 (= e!65848 e!65849)))

(declare-fun b!101128 () Bool)

(assert (=> b!101128 (= e!65849 (MissingZero!265 (index!3207 lt!51155)))))

(assert (= (and d!27391 c!17399) b!101126))

(assert (= (and d!27391 (not c!17399)) b!101124))

(assert (= (and b!101124 c!17398) b!101125))

(assert (= (and b!101124 (not c!17398)) b!101127))

(assert (= (and b!101127 c!17400) b!101128))

(assert (= (and b!101127 (not c!17400)) b!101123))

(assert (=> b!101123 m!111813))

(declare-fun m!111903 () Bool)

(assert (=> b!101123 m!111903))

(declare-fun m!111905 () Bool)

(assert (=> b!101124 m!111905))

(declare-fun m!111907 () Bool)

(assert (=> d!27391 m!111907))

(declare-fun m!111909 () Bool)

(assert (=> d!27391 m!111909))

(declare-fun m!111911 () Bool)

(assert (=> d!27391 m!111911))

(assert (=> d!27391 m!111813))

(declare-fun m!111913 () Bool)

(assert (=> d!27391 m!111913))

(assert (=> d!27391 m!111647))

(assert (=> d!27391 m!111813))

(assert (=> d!27391 m!111911))

(declare-fun m!111915 () Bool)

(assert (=> d!27391 m!111915))

(assert (=> b!101006 d!27391))

(declare-fun d!27393 () Bool)

(assert (=> d!27393 (= (validKeyInArray!0 (select (arr!2026 (_keys!4221 (v!2833 (underlying!345 thiss!992)))) #b00000000000000000000000000000000)) (and (not (= (select (arr!2026 (_keys!4221 (v!2833 (underlying!345 thiss!992)))) #b00000000000000000000000000000000) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!2026 (_keys!4221 (v!2833 (underlying!345 thiss!992)))) #b00000000000000000000000000000000) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!101008 d!27393))

(declare-fun b!101129 () Bool)

(declare-fun e!65852 () SeekEntryResult!265)

(declare-fun lt!51158 () SeekEntryResult!265)

(assert (=> b!101129 (= e!65852 (seekKeyOrZeroReturnVacant!0 (x!13259 lt!51158) (index!3207 lt!51158) (index!3207 lt!51158) (select (arr!2026 (_keys!4221 (v!2833 (underlying!345 thiss!992)))) from!355) (_keys!4221 newMap!16) (mask!6640 newMap!16)))))

(declare-fun b!101130 () Bool)

(declare-fun e!65853 () SeekEntryResult!265)

(declare-fun e!65851 () SeekEntryResult!265)

(assert (=> b!101130 (= e!65853 e!65851)))

(declare-fun lt!51159 () (_ BitVec 64))

(assert (=> b!101130 (= lt!51159 (select (arr!2026 (_keys!4221 newMap!16)) (index!3207 lt!51158)))))

(declare-fun c!17401 () Bool)

(assert (=> b!101130 (= c!17401 (= lt!51159 (select (arr!2026 (_keys!4221 (v!2833 (underlying!345 thiss!992)))) from!355)))))

(declare-fun b!101131 () Bool)

(assert (=> b!101131 (= e!65851 (Found!265 (index!3207 lt!51158)))))

(declare-fun lt!51160 () SeekEntryResult!265)

(declare-fun d!27395 () Bool)

(assert (=> d!27395 (and (or ((_ is Undefined!265) lt!51160) (not ((_ is Found!265) lt!51160)) (and (bvsge (index!3206 lt!51160) #b00000000000000000000000000000000) (bvslt (index!3206 lt!51160) (size!2278 (_keys!4221 newMap!16))))) (or ((_ is Undefined!265) lt!51160) ((_ is Found!265) lt!51160) (not ((_ is MissingZero!265) lt!51160)) (and (bvsge (index!3205 lt!51160) #b00000000000000000000000000000000) (bvslt (index!3205 lt!51160) (size!2278 (_keys!4221 newMap!16))))) (or ((_ is Undefined!265) lt!51160) ((_ is Found!265) lt!51160) ((_ is MissingZero!265) lt!51160) (not ((_ is MissingVacant!265) lt!51160)) (and (bvsge (index!3208 lt!51160) #b00000000000000000000000000000000) (bvslt (index!3208 lt!51160) (size!2278 (_keys!4221 newMap!16))))) (or ((_ is Undefined!265) lt!51160) (ite ((_ is Found!265) lt!51160) (= (select (arr!2026 (_keys!4221 newMap!16)) (index!3206 lt!51160)) (select (arr!2026 (_keys!4221 (v!2833 (underlying!345 thiss!992)))) from!355)) (ite ((_ is MissingZero!265) lt!51160) (= (select (arr!2026 (_keys!4221 newMap!16)) (index!3205 lt!51160)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!265) lt!51160) (= (select (arr!2026 (_keys!4221 newMap!16)) (index!3208 lt!51160)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!27395 (= lt!51160 e!65853)))

(declare-fun c!17402 () Bool)

(assert (=> d!27395 (= c!17402 (and ((_ is Intermediate!265) lt!51158) (undefined!1077 lt!51158)))))

(assert (=> d!27395 (= lt!51158 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!2026 (_keys!4221 (v!2833 (underlying!345 thiss!992)))) from!355) (mask!6640 newMap!16)) (select (arr!2026 (_keys!4221 (v!2833 (underlying!345 thiss!992)))) from!355) (_keys!4221 newMap!16) (mask!6640 newMap!16)))))

(assert (=> d!27395 (validMask!0 (mask!6640 newMap!16))))

(assert (=> d!27395 (= (seekEntryOrOpen!0 (select (arr!2026 (_keys!4221 (v!2833 (underlying!345 thiss!992)))) from!355) (_keys!4221 newMap!16) (mask!6640 newMap!16)) lt!51160)))

(declare-fun b!101132 () Bool)

(assert (=> b!101132 (= e!65853 Undefined!265)))

(declare-fun b!101133 () Bool)

(declare-fun c!17403 () Bool)

(assert (=> b!101133 (= c!17403 (= lt!51159 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!101133 (= e!65851 e!65852)))

(declare-fun b!101134 () Bool)

(assert (=> b!101134 (= e!65852 (MissingZero!265 (index!3207 lt!51158)))))

(assert (= (and d!27395 c!17402) b!101132))

(assert (= (and d!27395 (not c!17402)) b!101130))

(assert (= (and b!101130 c!17401) b!101131))

(assert (= (and b!101130 (not c!17401)) b!101133))

(assert (= (and b!101133 c!17403) b!101134))

(assert (= (and b!101133 (not c!17403)) b!101129))

(assert (=> b!101129 m!111657))

(declare-fun m!111917 () Bool)

(assert (=> b!101129 m!111917))

(declare-fun m!111919 () Bool)

(assert (=> b!101130 m!111919))

(declare-fun m!111921 () Bool)

(assert (=> d!27395 m!111921))

(declare-fun m!111923 () Bool)

(assert (=> d!27395 m!111923))

(declare-fun m!111925 () Bool)

(assert (=> d!27395 m!111925))

(assert (=> d!27395 m!111657))

(declare-fun m!111927 () Bool)

(assert (=> d!27395 m!111927))

(declare-fun m!111929 () Bool)

(assert (=> d!27395 m!111929))

(assert (=> d!27395 m!111657))

(assert (=> d!27395 m!111925))

(declare-fun m!111931 () Bool)

(assert (=> d!27395 m!111931))

(assert (=> bm!10440 d!27395))

(assert (=> d!27373 d!27377))

(declare-fun d!27397 () Bool)

(assert (=> d!27397 (not (arrayContainsKey!0 (_keys!4221 (v!2833 (underlying!345 thiss!992))) (select (arr!2026 (_keys!4221 (v!2833 (underlying!345 thiss!992)))) from!355) (bvadd #b00000000000000000000000000000001 from!355)))))

(assert (=> d!27397 true))

(declare-fun _$68!97 () Unit!3091)

(assert (=> d!27397 (= (choose!68 (_keys!4221 (v!2833 (underlying!345 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (select (arr!2026 (_keys!4221 (v!2833 (underlying!345 thiss!992)))) from!355) (Cons!1615 (select (arr!2026 (_keys!4221 (v!2833 (underlying!345 thiss!992)))) from!355) Nil!1616)) _$68!97)))

(declare-fun bs!4178 () Bool)

(assert (= bs!4178 d!27397))

(assert (=> bs!4178 m!111657))

(assert (=> bs!4178 m!111673))

(assert (=> d!27373 d!27397))

(declare-fun b!101143 () Bool)

(declare-fun res!50660 () Bool)

(declare-fun e!65856 () Bool)

(assert (=> b!101143 (=> (not res!50660) (not e!65856))))

(assert (=> b!101143 (= res!50660 (and (= (size!2279 (_values!2506 newMap!16)) (bvadd (mask!6640 newMap!16) #b00000000000000000000000000000001)) (= (size!2278 (_keys!4221 newMap!16)) (size!2279 (_values!2506 newMap!16))) (bvsge (_size!481 newMap!16) #b00000000000000000000000000000000) (bvsle (_size!481 newMap!16) (bvadd (mask!6640 newMap!16) #b00000000000000000000000000000001))))))

(declare-fun b!101146 () Bool)

(assert (=> b!101146 (= e!65856 (and (bvsge (extraKeys!2336 newMap!16) #b00000000000000000000000000000000) (bvsle (extraKeys!2336 newMap!16) #b00000000000000000000000000000011) (bvsge (_vacant!481 newMap!16) #b00000000000000000000000000000000)))))

(declare-fun b!101145 () Bool)

(declare-fun res!50659 () Bool)

(assert (=> b!101145 (=> (not res!50659) (not e!65856))))

(declare-fun size!2282 (LongMapFixedSize!864) (_ BitVec 32))

(assert (=> b!101145 (= res!50659 (= (size!2282 newMap!16) (bvadd (_size!481 newMap!16) (bvsdiv (bvadd (extraKeys!2336 newMap!16) #b00000000000000000000000000000001) #b00000000000000000000000000000010))))))

(declare-fun b!101144 () Bool)

(declare-fun res!50661 () Bool)

(assert (=> b!101144 (=> (not res!50661) (not e!65856))))

(assert (=> b!101144 (= res!50661 (bvsge (size!2282 newMap!16) (_size!481 newMap!16)))))

(declare-fun d!27399 () Bool)

(declare-fun res!50662 () Bool)

(assert (=> d!27399 (=> (not res!50662) (not e!65856))))

(assert (=> d!27399 (= res!50662 (validMask!0 (mask!6640 newMap!16)))))

(assert (=> d!27399 (= (simpleValid!69 newMap!16) e!65856)))

(assert (= (and d!27399 res!50662) b!101143))

(assert (= (and b!101143 res!50660) b!101144))

(assert (= (and b!101144 res!50661) b!101145))

(assert (= (and b!101145 res!50659) b!101146))

(declare-fun m!111933 () Bool)

(assert (=> b!101145 m!111933))

(assert (=> b!101144 m!111933))

(assert (=> d!27399 m!111929))

(assert (=> d!27351 d!27399))

(declare-fun d!27401 () Bool)

(assert (=> d!27401 (= (validKeyInArray!0 (select (arr!2026 (_keys!4221 (v!2833 (underlying!345 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))) (and (not (= (select (arr!2026 (_keys!4221 (v!2833 (underlying!345 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!2026 (_keys!4221 (v!2833 (underlying!345 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!101063 d!27401))

(declare-fun b!101147 () Bool)

(declare-fun e!65857 () Bool)

(declare-fun call!10478 () Bool)

(assert (=> b!101147 (= e!65857 call!10478)))

(declare-fun d!27403 () Bool)

(declare-fun res!50664 () Bool)

(declare-fun e!65858 () Bool)

(assert (=> d!27403 (=> res!50664 e!65858)))

(assert (=> d!27403 (= res!50664 (bvsge #b00000000000000000000000000000000 (size!2278 (_keys!4221 newMap!16))))))

(assert (=> d!27403 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!4221 newMap!16) (mask!6640 newMap!16)) e!65858)))

(declare-fun bm!10475 () Bool)

(assert (=> bm!10475 (= call!10478 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (_keys!4221 newMap!16) (mask!6640 newMap!16)))))

(declare-fun b!101148 () Bool)

(declare-fun e!65859 () Bool)

(assert (=> b!101148 (= e!65859 e!65857)))

(declare-fun lt!51161 () (_ BitVec 64))

(assert (=> b!101148 (= lt!51161 (select (arr!2026 (_keys!4221 newMap!16)) #b00000000000000000000000000000000))))

(declare-fun lt!51163 () Unit!3091)

(assert (=> b!101148 (= lt!51163 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!4221 newMap!16) lt!51161 #b00000000000000000000000000000000))))

(assert (=> b!101148 (arrayContainsKey!0 (_keys!4221 newMap!16) lt!51161 #b00000000000000000000000000000000)))

(declare-fun lt!51162 () Unit!3091)

(assert (=> b!101148 (= lt!51162 lt!51163)))

(declare-fun res!50663 () Bool)

(assert (=> b!101148 (= res!50663 (= (seekEntryOrOpen!0 (select (arr!2026 (_keys!4221 newMap!16)) #b00000000000000000000000000000000) (_keys!4221 newMap!16) (mask!6640 newMap!16)) (Found!265 #b00000000000000000000000000000000)))))

(assert (=> b!101148 (=> (not res!50663) (not e!65857))))

(declare-fun b!101149 () Bool)

(assert (=> b!101149 (= e!65859 call!10478)))

(declare-fun b!101150 () Bool)

(assert (=> b!101150 (= e!65858 e!65859)))

(declare-fun c!17404 () Bool)

(assert (=> b!101150 (= c!17404 (validKeyInArray!0 (select (arr!2026 (_keys!4221 newMap!16)) #b00000000000000000000000000000000)))))

(assert (= (and d!27403 (not res!50664)) b!101150))

(assert (= (and b!101150 c!17404) b!101148))

(assert (= (and b!101150 (not c!17404)) b!101149))

(assert (= (and b!101148 res!50663) b!101147))

(assert (= (or b!101147 b!101149) bm!10475))

(declare-fun m!111935 () Bool)

(assert (=> bm!10475 m!111935))

(declare-fun m!111937 () Bool)

(assert (=> b!101148 m!111937))

(declare-fun m!111939 () Bool)

(assert (=> b!101148 m!111939))

(declare-fun m!111941 () Bool)

(assert (=> b!101148 m!111941))

(assert (=> b!101148 m!111937))

(declare-fun m!111943 () Bool)

(assert (=> b!101148 m!111943))

(assert (=> b!101150 m!111937))

(assert (=> b!101150 m!111937))

(declare-fun m!111945 () Bool)

(assert (=> b!101150 m!111945))

(assert (=> b!100854 d!27403))

(declare-fun d!27405 () Bool)

(assert (=> d!27405 (= (get!1312 (select (arr!2027 (_values!2506 (v!2833 (underlying!345 thiss!992)))) from!355) (dynLambda!382 (defaultEntry!2523 (v!2833 (underlying!345 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (dynLambda!382 (defaultEntry!2523 (v!2833 (underlying!345 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!100996 d!27405))

(declare-fun d!27407 () Bool)

(assert (=> d!27407 (= (inRange!0 (ite c!17348 (ite c!17351 (index!3206 lt!51039) (ite c!17353 (index!3205 lt!51038) (index!3208 lt!51038))) (ite c!17354 (index!3206 lt!51043) (ite c!17358 (index!3205 lt!51048) (index!3208 lt!51048)))) (mask!6640 newMap!16)) (and (bvsge (ite c!17348 (ite c!17351 (index!3206 lt!51039) (ite c!17353 (index!3205 lt!51038) (index!3208 lt!51038))) (ite c!17354 (index!3206 lt!51043) (ite c!17358 (index!3205 lt!51048) (index!3208 lt!51048)))) #b00000000000000000000000000000000) (bvslt (ite c!17348 (ite c!17351 (index!3206 lt!51039) (ite c!17353 (index!3205 lt!51038) (index!3208 lt!51038))) (ite c!17354 (index!3206 lt!51043) (ite c!17358 (index!3205 lt!51048) (index!3208 lt!51048)))) (bvadd (mask!6640 newMap!16) #b00000000000000000000000000000001))))))

(assert (=> bm!10429 d!27407))

(declare-fun d!27409 () Bool)

(declare-fun res!50665 () Bool)

(declare-fun e!65860 () Bool)

(assert (=> d!27409 (=> res!50665 e!65860)))

(assert (=> d!27409 (= res!50665 (= (select (arr!2026 (_keys!4221 newMap!16)) #b00000000000000000000000000000000) (select (arr!2026 (_keys!4221 (v!2833 (underlying!345 thiss!992)))) from!355)))))

(assert (=> d!27409 (= (arrayContainsKey!0 (_keys!4221 newMap!16) (select (arr!2026 (_keys!4221 (v!2833 (underlying!345 thiss!992)))) from!355) #b00000000000000000000000000000000) e!65860)))

(declare-fun b!101151 () Bool)

(declare-fun e!65861 () Bool)

(assert (=> b!101151 (= e!65860 e!65861)))

(declare-fun res!50666 () Bool)

(assert (=> b!101151 (=> (not res!50666) (not e!65861))))

(assert (=> b!101151 (= res!50666 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!2278 (_keys!4221 newMap!16))))))

(declare-fun b!101152 () Bool)

(assert (=> b!101152 (= e!65861 (arrayContainsKey!0 (_keys!4221 newMap!16) (select (arr!2026 (_keys!4221 (v!2833 (underlying!345 thiss!992)))) from!355) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!27409 (not res!50665)) b!101151))

(assert (= (and b!101151 res!50666) b!101152))

(assert (=> d!27409 m!111937))

(assert (=> b!101152 m!111657))

(declare-fun m!111947 () Bool)

(assert (=> b!101152 m!111947))

(assert (=> bm!10431 d!27409))

(declare-fun d!27411 () Bool)

(declare-fun e!65862 () Bool)

(assert (=> d!27411 e!65862))

(declare-fun res!50667 () Bool)

(assert (=> d!27411 (=> res!50667 e!65862)))

(declare-fun lt!51165 () Bool)

(assert (=> d!27411 (= res!50667 (not lt!51165))))

(declare-fun lt!51164 () Bool)

(assert (=> d!27411 (= lt!51165 lt!51164)))

(declare-fun lt!51167 () Unit!3091)

(declare-fun e!65863 () Unit!3091)

(assert (=> d!27411 (= lt!51167 e!65863)))

(declare-fun c!17405 () Bool)

(assert (=> d!27411 (= c!17405 lt!51164)))

(assert (=> d!27411 (= lt!51164 (containsKey!155 (toList!796 call!10447) (select (arr!2026 (_keys!4221 (v!2833 (underlying!345 thiss!992)))) from!355)))))

(assert (=> d!27411 (= (contains!813 call!10447 (select (arr!2026 (_keys!4221 (v!2833 (underlying!345 thiss!992)))) from!355)) lt!51165)))

(declare-fun b!101153 () Bool)

(declare-fun lt!51166 () Unit!3091)

(assert (=> b!101153 (= e!65863 lt!51166)))

(assert (=> b!101153 (= lt!51166 (lemmaContainsKeyImpliesGetValueByKeyDefined!104 (toList!796 call!10447) (select (arr!2026 (_keys!4221 (v!2833 (underlying!345 thiss!992)))) from!355)))))

(assert (=> b!101153 (isDefined!105 (getValueByKey!151 (toList!796 call!10447) (select (arr!2026 (_keys!4221 (v!2833 (underlying!345 thiss!992)))) from!355)))))

(declare-fun b!101154 () Bool)

(declare-fun Unit!3099 () Unit!3091)

(assert (=> b!101154 (= e!65863 Unit!3099)))

(declare-fun b!101155 () Bool)

(assert (=> b!101155 (= e!65862 (isDefined!105 (getValueByKey!151 (toList!796 call!10447) (select (arr!2026 (_keys!4221 (v!2833 (underlying!345 thiss!992)))) from!355))))))

(assert (= (and d!27411 c!17405) b!101153))

(assert (= (and d!27411 (not c!17405)) b!101154))

(assert (= (and d!27411 (not res!50667)) b!101155))

(assert (=> d!27411 m!111657))

(declare-fun m!111949 () Bool)

(assert (=> d!27411 m!111949))

(assert (=> b!101153 m!111657))

(declare-fun m!111951 () Bool)

(assert (=> b!101153 m!111951))

(assert (=> b!101153 m!111657))

(declare-fun m!111953 () Bool)

(assert (=> b!101153 m!111953))

(assert (=> b!101153 m!111953))

(declare-fun m!111955 () Bool)

(assert (=> b!101153 m!111955))

(assert (=> b!101155 m!111657))

(assert (=> b!101155 m!111953))

(assert (=> b!101155 m!111953))

(assert (=> b!101155 m!111955))

(assert (=> b!100989 d!27411))

(declare-fun d!27413 () Bool)

(declare-fun isEmpty!367 (Option!157) Bool)

(assert (=> d!27413 (= (isDefined!105 (getValueByKey!151 (toList!796 lt!50947) (select (arr!2026 (_keys!4221 (v!2833 (underlying!345 thiss!992)))) from!355))) (not (isEmpty!367 (getValueByKey!151 (toList!796 lt!50947) (select (arr!2026 (_keys!4221 (v!2833 (underlying!345 thiss!992)))) from!355)))))))

(declare-fun bs!4179 () Bool)

(assert (= bs!4179 d!27413))

(assert (=> bs!4179 m!111747))

(declare-fun m!111957 () Bool)

(assert (=> bs!4179 m!111957))

(assert (=> b!100864 d!27413))

(declare-fun b!101166 () Bool)

(declare-fun e!65869 () Option!157)

(assert (=> b!101166 (= e!65869 (getValueByKey!151 (t!5624 (toList!796 lt!50947)) (select (arr!2026 (_keys!4221 (v!2833 (underlying!345 thiss!992)))) from!355)))))

(declare-fun d!27415 () Bool)

(declare-fun c!17410 () Bool)

(assert (=> d!27415 (= c!17410 (and ((_ is Cons!1614) (toList!796 lt!50947)) (= (_1!1195 (h!2210 (toList!796 lt!50947))) (select (arr!2026 (_keys!4221 (v!2833 (underlying!345 thiss!992)))) from!355))))))

(declare-fun e!65868 () Option!157)

(assert (=> d!27415 (= (getValueByKey!151 (toList!796 lt!50947) (select (arr!2026 (_keys!4221 (v!2833 (underlying!345 thiss!992)))) from!355)) e!65868)))

(declare-fun b!101167 () Bool)

(assert (=> b!101167 (= e!65869 None!155)))

(declare-fun b!101164 () Bool)

(assert (=> b!101164 (= e!65868 (Some!156 (_2!1195 (h!2210 (toList!796 lt!50947)))))))

(declare-fun b!101165 () Bool)

(assert (=> b!101165 (= e!65868 e!65869)))

(declare-fun c!17411 () Bool)

(assert (=> b!101165 (= c!17411 (and ((_ is Cons!1614) (toList!796 lt!50947)) (not (= (_1!1195 (h!2210 (toList!796 lt!50947))) (select (arr!2026 (_keys!4221 (v!2833 (underlying!345 thiss!992)))) from!355)))))))

(assert (= (and d!27415 c!17410) b!101164))

(assert (= (and d!27415 (not c!17410)) b!101165))

(assert (= (and b!101165 c!17411) b!101166))

(assert (= (and b!101165 (not c!17411)) b!101167))

(assert (=> b!101166 m!111657))

(declare-fun m!111959 () Bool)

(assert (=> b!101166 m!111959))

(assert (=> b!100864 d!27415))

(assert (=> b!101051 d!27401))

(declare-fun d!27417 () Bool)

(assert (=> d!27417 (= (validKeyInArray!0 (select (arr!2026 (_keys!4221 (v!2833 (underlying!345 thiss!992)))) from!355)) (and (not (= (select (arr!2026 (_keys!4221 (v!2833 (underlying!345 thiss!992)))) from!355) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!2026 (_keys!4221 (v!2833 (underlying!345 thiss!992)))) from!355) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!101098 d!27417))

(declare-fun d!27419 () Bool)

(declare-fun e!65872 () Bool)

(assert (=> d!27419 e!65872))

(declare-fun res!50672 () Bool)

(assert (=> d!27419 (=> (not res!50672) (not e!65872))))

(declare-fun lt!51172 () SeekEntryResult!265)

(assert (=> d!27419 (= res!50672 ((_ is Found!265) lt!51172))))

(assert (=> d!27419 (= lt!51172 (seekEntryOrOpen!0 (select (arr!2026 (_keys!4221 (v!2833 (underlying!345 thiss!992)))) from!355) (_keys!4221 newMap!16) (mask!6640 newMap!16)))))

(declare-fun lt!51173 () Unit!3091)

(declare-fun choose!624 (array!4268 array!4270 (_ BitVec 32) (_ BitVec 32) V!3171 V!3171 (_ BitVec 64) Int) Unit!3091)

(assert (=> d!27419 (= lt!51173 (choose!624 (_keys!4221 newMap!16) (_values!2506 newMap!16) (mask!6640 newMap!16) (extraKeys!2336 newMap!16) (zeroValue!2402 newMap!16) (minValue!2402 newMap!16) (select (arr!2026 (_keys!4221 (v!2833 (underlying!345 thiss!992)))) from!355) (defaultEntry!2523 newMap!16)))))

(assert (=> d!27419 (validMask!0 (mask!6640 newMap!16))))

(assert (=> d!27419 (= (lemmaInListMapThenSeekEntryOrOpenFindsIt!43 (_keys!4221 newMap!16) (_values!2506 newMap!16) (mask!6640 newMap!16) (extraKeys!2336 newMap!16) (zeroValue!2402 newMap!16) (minValue!2402 newMap!16) (select (arr!2026 (_keys!4221 (v!2833 (underlying!345 thiss!992)))) from!355) (defaultEntry!2523 newMap!16)) lt!51173)))

(declare-fun b!101172 () Bool)

(declare-fun res!50673 () Bool)

(assert (=> b!101172 (=> (not res!50673) (not e!65872))))

(assert (=> b!101172 (= res!50673 (inRange!0 (index!3206 lt!51172) (mask!6640 newMap!16)))))

(declare-fun b!101173 () Bool)

(assert (=> b!101173 (= e!65872 (= (select (arr!2026 (_keys!4221 newMap!16)) (index!3206 lt!51172)) (select (arr!2026 (_keys!4221 (v!2833 (underlying!345 thiss!992)))) from!355)))))

(assert (=> b!101173 (and (bvsge (index!3206 lt!51172) #b00000000000000000000000000000000) (bvslt (index!3206 lt!51172) (size!2278 (_keys!4221 newMap!16))))))

(assert (= (and d!27419 res!50672) b!101172))

(assert (= (and b!101172 res!50673) b!101173))

(assert (=> d!27419 m!111657))

(assert (=> d!27419 m!111773))

(assert (=> d!27419 m!111657))

(declare-fun m!111961 () Bool)

(assert (=> d!27419 m!111961))

(assert (=> d!27419 m!111929))

(declare-fun m!111963 () Bool)

(assert (=> b!101172 m!111963))

(declare-fun m!111965 () Bool)

(assert (=> b!101173 m!111965))

(assert (=> bm!10427 d!27419))

(declare-fun d!27421 () Bool)

(declare-fun lt!51176 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!104 (List!1619) (InoxSet (_ BitVec 64)))

(assert (=> d!27421 (= lt!51176 (select (content!104 Nil!1616) (select (arr!2026 (_keys!4221 (v!2833 (underlying!345 thiss!992)))) from!355)))))

(declare-fun e!65877 () Bool)

(assert (=> d!27421 (= lt!51176 e!65877)))

(declare-fun res!50679 () Bool)

(assert (=> d!27421 (=> (not res!50679) (not e!65877))))

(assert (=> d!27421 (= res!50679 ((_ is Cons!1615) Nil!1616))))

(assert (=> d!27421 (= (contains!814 Nil!1616 (select (arr!2026 (_keys!4221 (v!2833 (underlying!345 thiss!992)))) from!355)) lt!51176)))

(declare-fun b!101178 () Bool)

(declare-fun e!65878 () Bool)

(assert (=> b!101178 (= e!65877 e!65878)))

(declare-fun res!50678 () Bool)

(assert (=> b!101178 (=> res!50678 e!65878)))

(assert (=> b!101178 (= res!50678 (= (h!2211 Nil!1616) (select (arr!2026 (_keys!4221 (v!2833 (underlying!345 thiss!992)))) from!355)))))

(declare-fun b!101179 () Bool)

(assert (=> b!101179 (= e!65878 (contains!814 (t!5625 Nil!1616) (select (arr!2026 (_keys!4221 (v!2833 (underlying!345 thiss!992)))) from!355)))))

(assert (= (and d!27421 res!50679) b!101178))

(assert (= (and b!101178 (not res!50678)) b!101179))

(declare-fun m!111967 () Bool)

(assert (=> d!27421 m!111967))

(assert (=> d!27421 m!111657))

(declare-fun m!111969 () Bool)

(assert (=> d!27421 m!111969))

(assert (=> b!101179 m!111657))

(declare-fun m!111971 () Bool)

(assert (=> b!101179 m!111971))

(assert (=> b!101094 d!27421))

(declare-fun b!101196 () Bool)

(declare-fun e!65889 () Bool)

(declare-fun call!10484 () Bool)

(assert (=> b!101196 (= e!65889 (not call!10484))))

(declare-fun b!101197 () Bool)

(declare-fun lt!51182 () SeekEntryResult!265)

(assert (=> b!101197 (and (bvsge (index!3205 lt!51182) #b00000000000000000000000000000000) (bvslt (index!3205 lt!51182) (size!2278 (_keys!4221 newMap!16))))))

(declare-fun res!50691 () Bool)

(assert (=> b!101197 (= res!50691 (= (select (arr!2026 (_keys!4221 newMap!16)) (index!3205 lt!51182)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!65887 () Bool)

(assert (=> b!101197 (=> (not res!50691) (not e!65887))))

(declare-fun bm!10480 () Bool)

(assert (=> bm!10480 (= call!10484 (arrayContainsKey!0 (_keys!4221 newMap!16) (select (arr!2026 (_keys!4221 (v!2833 (underlying!345 thiss!992)))) from!355) #b00000000000000000000000000000000))))

(declare-fun b!101198 () Bool)

(declare-fun res!50688 () Bool)

(assert (=> b!101198 (=> (not res!50688) (not e!65889))))

(declare-fun call!10483 () Bool)

(assert (=> b!101198 (= res!50688 call!10483)))

(declare-fun e!65890 () Bool)

(assert (=> b!101198 (= e!65890 e!65889)))

(declare-fun b!101199 () Bool)

(declare-fun e!65888 () Bool)

(assert (=> b!101199 (= e!65888 e!65887)))

(declare-fun res!50690 () Bool)

(assert (=> b!101199 (= res!50690 call!10483)))

(assert (=> b!101199 (=> (not res!50690) (not e!65887))))

(declare-fun d!27423 () Bool)

(assert (=> d!27423 e!65888))

(declare-fun c!17416 () Bool)

(assert (=> d!27423 (= c!17416 ((_ is MissingZero!265) lt!51182))))

(assert (=> d!27423 (= lt!51182 (seekEntryOrOpen!0 (select (arr!2026 (_keys!4221 (v!2833 (underlying!345 thiss!992)))) from!355) (_keys!4221 newMap!16) (mask!6640 newMap!16)))))

(declare-fun lt!51181 () Unit!3091)

(declare-fun choose!625 (array!4268 array!4270 (_ BitVec 32) (_ BitVec 32) V!3171 V!3171 (_ BitVec 64) Int) Unit!3091)

(assert (=> d!27423 (= lt!51181 (choose!625 (_keys!4221 newMap!16) (_values!2506 newMap!16) (mask!6640 newMap!16) (extraKeys!2336 newMap!16) (zeroValue!2402 newMap!16) (minValue!2402 newMap!16) (select (arr!2026 (_keys!4221 (v!2833 (underlying!345 thiss!992)))) from!355) (defaultEntry!2523 newMap!16)))))

(assert (=> d!27423 (validMask!0 (mask!6640 newMap!16))))

(assert (=> d!27423 (= (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!43 (_keys!4221 newMap!16) (_values!2506 newMap!16) (mask!6640 newMap!16) (extraKeys!2336 newMap!16) (zeroValue!2402 newMap!16) (minValue!2402 newMap!16) (select (arr!2026 (_keys!4221 (v!2833 (underlying!345 thiss!992)))) from!355) (defaultEntry!2523 newMap!16)) lt!51181)))

(declare-fun b!101200 () Bool)

(assert (=> b!101200 (= e!65890 ((_ is Undefined!265) lt!51182))))

(declare-fun b!101201 () Bool)

(assert (=> b!101201 (= e!65887 (not call!10484))))

(declare-fun b!101202 () Bool)

(assert (=> b!101202 (= e!65888 e!65890)))

(declare-fun c!17417 () Bool)

(assert (=> b!101202 (= c!17417 ((_ is MissingVacant!265) lt!51182))))

(declare-fun bm!10481 () Bool)

(assert (=> bm!10481 (= call!10483 (inRange!0 (ite c!17416 (index!3205 lt!51182) (index!3208 lt!51182)) (mask!6640 newMap!16)))))

(declare-fun b!101203 () Bool)

(declare-fun res!50689 () Bool)

(assert (=> b!101203 (=> (not res!50689) (not e!65889))))

(assert (=> b!101203 (= res!50689 (= (select (arr!2026 (_keys!4221 newMap!16)) (index!3208 lt!51182)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!101203 (and (bvsge (index!3208 lt!51182) #b00000000000000000000000000000000) (bvslt (index!3208 lt!51182) (size!2278 (_keys!4221 newMap!16))))))

(assert (= (and d!27423 c!17416) b!101199))

(assert (= (and d!27423 (not c!17416)) b!101202))

(assert (= (and b!101199 res!50690) b!101197))

(assert (= (and b!101197 res!50691) b!101201))

(assert (= (and b!101202 c!17417) b!101198))

(assert (= (and b!101202 (not c!17417)) b!101200))

(assert (= (and b!101198 res!50688) b!101203))

(assert (= (and b!101203 res!50689) b!101196))

(assert (= (or b!101199 b!101198) bm!10481))

(assert (= (or b!101201 b!101196) bm!10480))

(declare-fun m!111973 () Bool)

(assert (=> b!101197 m!111973))

(declare-fun m!111975 () Bool)

(assert (=> bm!10481 m!111975))

(declare-fun m!111977 () Bool)

(assert (=> b!101203 m!111977))

(assert (=> d!27423 m!111657))

(assert (=> d!27423 m!111773))

(assert (=> d!27423 m!111657))

(declare-fun m!111979 () Bool)

(assert (=> d!27423 m!111979))

(assert (=> d!27423 m!111929))

(assert (=> bm!10480 m!111657))

(assert (=> bm!10480 m!111751))

(assert (=> bm!10444 d!27423))

(declare-fun d!27425 () Bool)

(assert (=> d!27425 (isDefined!105 (getValueByKey!151 (toList!796 lt!50947) (select (arr!2026 (_keys!4221 (v!2833 (underlying!345 thiss!992)))) from!355)))))

(declare-fun lt!51185 () Unit!3091)

(declare-fun choose!626 (List!1618 (_ BitVec 64)) Unit!3091)

(assert (=> d!27425 (= lt!51185 (choose!626 (toList!796 lt!50947) (select (arr!2026 (_keys!4221 (v!2833 (underlying!345 thiss!992)))) from!355)))))

(declare-fun e!65893 () Bool)

(assert (=> d!27425 e!65893))

(declare-fun res!50694 () Bool)

(assert (=> d!27425 (=> (not res!50694) (not e!65893))))

(declare-fun isStrictlySorted!301 (List!1618) Bool)

(assert (=> d!27425 (= res!50694 (isStrictlySorted!301 (toList!796 lt!50947)))))

(assert (=> d!27425 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!104 (toList!796 lt!50947) (select (arr!2026 (_keys!4221 (v!2833 (underlying!345 thiss!992)))) from!355)) lt!51185)))

(declare-fun b!101206 () Bool)

(assert (=> b!101206 (= e!65893 (containsKey!155 (toList!796 lt!50947) (select (arr!2026 (_keys!4221 (v!2833 (underlying!345 thiss!992)))) from!355)))))

(assert (= (and d!27425 res!50694) b!101206))

(assert (=> d!27425 m!111657))

(assert (=> d!27425 m!111747))

(assert (=> d!27425 m!111747))

(assert (=> d!27425 m!111749))

(assert (=> d!27425 m!111657))

(declare-fun m!111981 () Bool)

(assert (=> d!27425 m!111981))

(declare-fun m!111983 () Bool)

(assert (=> d!27425 m!111983))

(assert (=> b!101206 m!111657))

(assert (=> b!101206 m!111743))

(assert (=> b!100862 d!27425))

(assert (=> b!100862 d!27413))

(assert (=> b!100862 d!27415))

(assert (=> b!101096 d!27417))

(declare-fun d!27427 () Bool)

(declare-fun e!65894 () Bool)

(assert (=> d!27427 e!65894))

(declare-fun res!50695 () Bool)

(assert (=> d!27427 (=> res!50695 e!65894)))

(declare-fun lt!51187 () Bool)

(assert (=> d!27427 (= res!50695 (not lt!51187))))

(declare-fun lt!51186 () Bool)

(assert (=> d!27427 (= lt!51187 lt!51186)))

(declare-fun lt!51189 () Unit!3091)

(declare-fun e!65895 () Unit!3091)

(assert (=> d!27427 (= lt!51189 e!65895)))

(declare-fun c!17418 () Bool)

(assert (=> d!27427 (= c!17418 lt!51186)))

(assert (=> d!27427 (= lt!51186 (containsKey!155 (toList!796 e!65753) (select (arr!2026 (_keys!4221 (v!2833 (underlying!345 thiss!992)))) from!355)))))

(assert (=> d!27427 (= (contains!813 e!65753 (select (arr!2026 (_keys!4221 (v!2833 (underlying!345 thiss!992)))) from!355)) lt!51187)))

(declare-fun b!101207 () Bool)

(declare-fun lt!51188 () Unit!3091)

(assert (=> b!101207 (= e!65895 lt!51188)))

(assert (=> b!101207 (= lt!51188 (lemmaContainsKeyImpliesGetValueByKeyDefined!104 (toList!796 e!65753) (select (arr!2026 (_keys!4221 (v!2833 (underlying!345 thiss!992)))) from!355)))))

(assert (=> b!101207 (isDefined!105 (getValueByKey!151 (toList!796 e!65753) (select (arr!2026 (_keys!4221 (v!2833 (underlying!345 thiss!992)))) from!355)))))

(declare-fun b!101208 () Bool)

(declare-fun Unit!3100 () Unit!3091)

(assert (=> b!101208 (= e!65895 Unit!3100)))

(declare-fun b!101209 () Bool)

(assert (=> b!101209 (= e!65894 (isDefined!105 (getValueByKey!151 (toList!796 e!65753) (select (arr!2026 (_keys!4221 (v!2833 (underlying!345 thiss!992)))) from!355))))))

(assert (= (and d!27427 c!17418) b!101207))

(assert (= (and d!27427 (not c!17418)) b!101208))

(assert (= (and d!27427 (not res!50695)) b!101209))

(assert (=> d!27427 m!111657))

(declare-fun m!111985 () Bool)

(assert (=> d!27427 m!111985))

(assert (=> b!101207 m!111657))

(declare-fun m!111987 () Bool)

(assert (=> b!101207 m!111987))

(assert (=> b!101207 m!111657))

(declare-fun m!111989 () Bool)

(assert (=> b!101207 m!111989))

(assert (=> b!101207 m!111989))

(declare-fun m!111991 () Bool)

(assert (=> b!101207 m!111991))

(assert (=> b!101209 m!111657))

(assert (=> b!101209 m!111989))

(assert (=> b!101209 m!111989))

(assert (=> b!101209 m!111991))

(assert (=> bm!10433 d!27427))

(declare-fun d!27429 () Bool)

(declare-fun e!65896 () Bool)

(assert (=> d!27429 e!65896))

(declare-fun res!50696 () Bool)

(assert (=> d!27429 (=> res!50696 e!65896)))

(declare-fun lt!51191 () Bool)

(assert (=> d!27429 (= res!50696 (not lt!51191))))

(declare-fun lt!51190 () Bool)

(assert (=> d!27429 (= lt!51191 lt!51190)))

(declare-fun lt!51193 () Unit!3091)

(declare-fun e!65897 () Unit!3091)

(assert (=> d!27429 (= lt!51193 e!65897)))

(declare-fun c!17419 () Bool)

(assert (=> d!27429 (= c!17419 lt!51190)))

(assert (=> d!27429 (= lt!51190 (containsKey!155 (toList!796 call!10428) (select (arr!2026 (_keys!4221 newMap!16)) (index!3206 lt!51046))))))

(assert (=> d!27429 (= (contains!813 call!10428 (select (arr!2026 (_keys!4221 newMap!16)) (index!3206 lt!51046))) lt!51191)))

(declare-fun b!101210 () Bool)

(declare-fun lt!51192 () Unit!3091)

(assert (=> b!101210 (= e!65897 lt!51192)))

(assert (=> b!101210 (= lt!51192 (lemmaContainsKeyImpliesGetValueByKeyDefined!104 (toList!796 call!10428) (select (arr!2026 (_keys!4221 newMap!16)) (index!3206 lt!51046))))))

(assert (=> b!101210 (isDefined!105 (getValueByKey!151 (toList!796 call!10428) (select (arr!2026 (_keys!4221 newMap!16)) (index!3206 lt!51046))))))

(declare-fun b!101211 () Bool)

(declare-fun Unit!3101 () Unit!3091)

(assert (=> b!101211 (= e!65897 Unit!3101)))

(declare-fun b!101212 () Bool)

(assert (=> b!101212 (= e!65896 (isDefined!105 (getValueByKey!151 (toList!796 call!10428) (select (arr!2026 (_keys!4221 newMap!16)) (index!3206 lt!51046)))))))

(assert (= (and d!27429 c!17419) b!101210))

(assert (= (and d!27429 (not c!17419)) b!101211))

(assert (= (and d!27429 (not res!50696)) b!101212))

(assert (=> d!27429 m!111799))

(declare-fun m!111993 () Bool)

(assert (=> d!27429 m!111993))

(assert (=> b!101210 m!111799))

(declare-fun m!111995 () Bool)

(assert (=> b!101210 m!111995))

(assert (=> b!101210 m!111799))

(declare-fun m!111997 () Bool)

(assert (=> b!101210 m!111997))

(assert (=> b!101210 m!111997))

(declare-fun m!111999 () Bool)

(assert (=> b!101210 m!111999))

(assert (=> b!101212 m!111799))

(assert (=> b!101212 m!111997))

(assert (=> b!101212 m!111997))

(assert (=> b!101212 m!111999))

(assert (=> b!100978 d!27429))

(declare-fun d!27431 () Bool)

(declare-fun e!65900 () Bool)

(assert (=> d!27431 e!65900))

(declare-fun res!50699 () Bool)

(assert (=> d!27431 (=> (not res!50699) (not e!65900))))

(assert (=> d!27431 (= res!50699 (and (bvsge (index!3206 lt!51046) #b00000000000000000000000000000000) (bvslt (index!3206 lt!51046) (size!2278 (_keys!4221 newMap!16)))))))

(declare-fun lt!51196 () Unit!3091)

(declare-fun choose!627 (array!4268 array!4270 (_ BitVec 32) (_ BitVec 32) V!3171 V!3171 (_ BitVec 32) Int) Unit!3091)

(assert (=> d!27431 (= lt!51196 (choose!627 (_keys!4221 newMap!16) lt!51056 (mask!6640 newMap!16) (extraKeys!2336 newMap!16) (zeroValue!2402 newMap!16) (minValue!2402 newMap!16) (index!3206 lt!51046) (defaultEntry!2523 newMap!16)))))

(assert (=> d!27431 (validMask!0 (mask!6640 newMap!16))))

(assert (=> d!27431 (= (lemmaValidKeyInArrayIsInListMap!101 (_keys!4221 newMap!16) lt!51056 (mask!6640 newMap!16) (extraKeys!2336 newMap!16) (zeroValue!2402 newMap!16) (minValue!2402 newMap!16) (index!3206 lt!51046) (defaultEntry!2523 newMap!16)) lt!51196)))

(declare-fun b!101215 () Bool)

(assert (=> b!101215 (= e!65900 (contains!813 (getCurrentListMap!476 (_keys!4221 newMap!16) lt!51056 (mask!6640 newMap!16) (extraKeys!2336 newMap!16) (zeroValue!2402 newMap!16) (minValue!2402 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2523 newMap!16)) (select (arr!2026 (_keys!4221 newMap!16)) (index!3206 lt!51046))))))

(assert (= (and d!27431 res!50699) b!101215))

(declare-fun m!112001 () Bool)

(assert (=> d!27431 m!112001))

(assert (=> d!27431 m!111929))

(declare-fun m!112003 () Bool)

(assert (=> b!101215 m!112003))

(assert (=> b!101215 m!111799))

(assert (=> b!101215 m!112003))

(assert (=> b!101215 m!111799))

(declare-fun m!112005 () Bool)

(assert (=> b!101215 m!112005))

(assert (=> b!100978 d!27431))

(declare-fun d!27433 () Bool)

(declare-fun e!65903 () Bool)

(assert (=> d!27433 e!65903))

(declare-fun res!50702 () Bool)

(assert (=> d!27433 (=> (not res!50702) (not e!65903))))

(assert (=> d!27433 (= res!50702 (and (bvsge (index!3206 lt!51046) #b00000000000000000000000000000000) (bvslt (index!3206 lt!51046) (size!2279 (_values!2506 newMap!16)))))))

(declare-fun lt!51199 () Unit!3091)

(declare-fun choose!628 (array!4268 array!4270 (_ BitVec 32) (_ BitVec 32) V!3171 V!3171 (_ BitVec 32) (_ BitVec 64) V!3171 Int) Unit!3091)

(assert (=> d!27433 (= lt!51199 (choose!628 (_keys!4221 newMap!16) (_values!2506 newMap!16) (mask!6640 newMap!16) (extraKeys!2336 newMap!16) (zeroValue!2402 newMap!16) (minValue!2402 newMap!16) (index!3206 lt!51046) (select (arr!2026 (_keys!4221 (v!2833 (underlying!345 thiss!992)))) from!355) (get!1310 (select (arr!2027 (_values!2506 (v!2833 (underlying!345 thiss!992)))) from!355) (dynLambda!382 (defaultEntry!2523 (v!2833 (underlying!345 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (defaultEntry!2523 newMap!16)))))

(assert (=> d!27433 (validMask!0 (mask!6640 newMap!16))))

(assert (=> d!27433 (= (lemmaChangeValueExistingKeyToArrayThenAddPairToListMap!43 (_keys!4221 newMap!16) (_values!2506 newMap!16) (mask!6640 newMap!16) (extraKeys!2336 newMap!16) (zeroValue!2402 newMap!16) (minValue!2402 newMap!16) (index!3206 lt!51046) (select (arr!2026 (_keys!4221 (v!2833 (underlying!345 thiss!992)))) from!355) (get!1310 (select (arr!2027 (_values!2506 (v!2833 (underlying!345 thiss!992)))) from!355) (dynLambda!382 (defaultEntry!2523 (v!2833 (underlying!345 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (defaultEntry!2523 newMap!16)) lt!51199)))

(declare-fun b!101218 () Bool)

(assert (=> b!101218 (= e!65903 (= (+!140 (getCurrentListMap!476 (_keys!4221 newMap!16) (_values!2506 newMap!16) (mask!6640 newMap!16) (extraKeys!2336 newMap!16) (zeroValue!2402 newMap!16) (minValue!2402 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2523 newMap!16)) (tuple2!2371 (select (arr!2026 (_keys!4221 (v!2833 (underlying!345 thiss!992)))) from!355) (get!1310 (select (arr!2027 (_values!2506 (v!2833 (underlying!345 thiss!992)))) from!355) (dynLambda!382 (defaultEntry!2523 (v!2833 (underlying!345 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (getCurrentListMap!476 (_keys!4221 newMap!16) (array!4271 (store (arr!2027 (_values!2506 newMap!16)) (index!3206 lt!51046) (ValueCellFull!978 (get!1310 (select (arr!2027 (_values!2506 (v!2833 (underlying!345 thiss!992)))) from!355) (dynLambda!382 (defaultEntry!2523 (v!2833 (underlying!345 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (size!2279 (_values!2506 newMap!16))) (mask!6640 newMap!16) (extraKeys!2336 newMap!16) (zeroValue!2402 newMap!16) (minValue!2402 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2523 newMap!16))))))

(assert (= (and d!27433 res!50702) b!101218))

(assert (=> d!27433 m!111657))

(assert (=> d!27433 m!111655))

(declare-fun m!112007 () Bool)

(assert (=> d!27433 m!112007))

(assert (=> d!27433 m!111929))

(assert (=> b!101218 m!111757))

(assert (=> b!101218 m!111757))

(declare-fun m!112009 () Bool)

(assert (=> b!101218 m!112009))

(assert (=> b!101218 m!111769))

(declare-fun m!112011 () Bool)

(assert (=> b!101218 m!112011))

(assert (=> b!100978 d!27433))

(declare-fun d!27435 () Bool)

(declare-fun get!1313 (Option!157) V!3171)

(assert (=> d!27435 (= (apply!94 lt!51131 #b1000000000000000000000000000000000000000000000000000000000000000) (get!1313 (getValueByKey!151 (toList!796 lt!51131) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun bs!4180 () Bool)

(assert (= bs!4180 d!27435))

(declare-fun m!112013 () Bool)

(assert (=> bs!4180 m!112013))

(assert (=> bs!4180 m!112013))

(declare-fun m!112015 () Bool)

(assert (=> bs!4180 m!112015))

(assert (=> b!101055 d!27435))

(declare-fun d!27437 () Bool)

(declare-fun res!50703 () Bool)

(declare-fun e!65904 () Bool)

(assert (=> d!27437 (=> (not res!50703) (not e!65904))))

(assert (=> d!27437 (= res!50703 (simpleValid!69 (v!2833 (underlying!345 thiss!992))))))

(assert (=> d!27437 (= (valid!391 (v!2833 (underlying!345 thiss!992))) e!65904)))

(declare-fun b!101219 () Bool)

(declare-fun res!50704 () Bool)

(assert (=> b!101219 (=> (not res!50704) (not e!65904))))

(assert (=> b!101219 (= res!50704 (= (arrayCountValidKeys!0 (_keys!4221 (v!2833 (underlying!345 thiss!992))) #b00000000000000000000000000000000 (size!2278 (_keys!4221 (v!2833 (underlying!345 thiss!992))))) (_size!481 (v!2833 (underlying!345 thiss!992)))))))

(declare-fun b!101220 () Bool)

(declare-fun res!50705 () Bool)

(assert (=> b!101220 (=> (not res!50705) (not e!65904))))

(assert (=> b!101220 (= res!50705 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!4221 (v!2833 (underlying!345 thiss!992))) (mask!6640 (v!2833 (underlying!345 thiss!992)))))))

(declare-fun b!101221 () Bool)

(assert (=> b!101221 (= e!65904 (arrayNoDuplicates!0 (_keys!4221 (v!2833 (underlying!345 thiss!992))) #b00000000000000000000000000000000 Nil!1616))))

(assert (= (and d!27437 res!50703) b!101219))

(assert (= (and b!101219 res!50704) b!101220))

(assert (= (and b!101220 res!50705) b!101221))

(declare-fun m!112017 () Bool)

(assert (=> d!27437 m!112017))

(declare-fun m!112019 () Bool)

(assert (=> b!101219 m!112019))

(assert (=> b!101220 m!111663))

(declare-fun m!112021 () Bool)

(assert (=> b!101221 m!112021))

(assert (=> d!27363 d!27437))

(declare-fun d!27439 () Bool)

(declare-fun e!65920 () Bool)

(assert (=> d!27439 e!65920))

(declare-fun res!50717 () Bool)

(assert (=> d!27439 (=> (not res!50717) (not e!65920))))

(declare-fun lt!51218 () ListLongMap!1561)

(assert (=> d!27439 (= res!50717 (not (contains!813 lt!51218 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun e!65923 () ListLongMap!1561)

(assert (=> d!27439 (= lt!51218 e!65923)))

(declare-fun c!17429 () Bool)

(assert (=> d!27439 (= c!17429 (bvsge (bvadd #b00000000000000000000000000000001 from!355) (size!2278 (_keys!4221 (v!2833 (underlying!345 thiss!992))))))))

(assert (=> d!27439 (validMask!0 (mask!6640 (v!2833 (underlying!345 thiss!992))))))

(assert (=> d!27439 (= (getCurrentListMapNoExtraKeys!104 (_keys!4221 (v!2833 (underlying!345 thiss!992))) (_values!2506 (v!2833 (underlying!345 thiss!992))) (mask!6640 (v!2833 (underlying!345 thiss!992))) (extraKeys!2336 (v!2833 (underlying!345 thiss!992))) (zeroValue!2402 (v!2833 (underlying!345 thiss!992))) (minValue!2402 (v!2833 (underlying!345 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2523 (v!2833 (underlying!345 thiss!992)))) lt!51218)))

(declare-fun b!101246 () Bool)

(assert (=> b!101246 (and (bvsge (bvadd #b00000000000000000000000000000001 from!355) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!355) (size!2278 (_keys!4221 (v!2833 (underlying!345 thiss!992))))))))

(assert (=> b!101246 (and (bvsge (bvadd #b00000000000000000000000000000001 from!355) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!355) (size!2279 (_values!2506 (v!2833 (underlying!345 thiss!992))))))))

(declare-fun e!65924 () Bool)

(assert (=> b!101246 (= e!65924 (= (apply!94 lt!51218 (select (arr!2026 (_keys!4221 (v!2833 (underlying!345 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))) (get!1310 (select (arr!2027 (_values!2506 (v!2833 (underlying!345 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (dynLambda!382 (defaultEntry!2523 (v!2833 (underlying!345 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!101247 () Bool)

(declare-fun e!65925 () ListLongMap!1561)

(assert (=> b!101247 (= e!65923 e!65925)))

(declare-fun c!17428 () Bool)

(assert (=> b!101247 (= c!17428 (validKeyInArray!0 (select (arr!2026 (_keys!4221 (v!2833 (underlying!345 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))))))

(declare-fun b!101248 () Bool)

(declare-fun lt!51219 () Unit!3091)

(declare-fun lt!51214 () Unit!3091)

(assert (=> b!101248 (= lt!51219 lt!51214)))

(declare-fun lt!51216 () ListLongMap!1561)

(declare-fun lt!51215 () V!3171)

(declare-fun lt!51220 () (_ BitVec 64))

(declare-fun lt!51217 () (_ BitVec 64))

(assert (=> b!101248 (not (contains!813 (+!140 lt!51216 (tuple2!2371 lt!51220 lt!51215)) lt!51217))))

(declare-fun addStillNotContains!44 (ListLongMap!1561 (_ BitVec 64) V!3171 (_ BitVec 64)) Unit!3091)

(assert (=> b!101248 (= lt!51214 (addStillNotContains!44 lt!51216 lt!51220 lt!51215 lt!51217))))

(assert (=> b!101248 (= lt!51217 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!101248 (= lt!51215 (get!1310 (select (arr!2027 (_values!2506 (v!2833 (underlying!345 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (dynLambda!382 (defaultEntry!2523 (v!2833 (underlying!345 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!101248 (= lt!51220 (select (arr!2026 (_keys!4221 (v!2833 (underlying!345 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)))))

(declare-fun call!10487 () ListLongMap!1561)

(assert (=> b!101248 (= lt!51216 call!10487)))

(assert (=> b!101248 (= e!65925 (+!140 call!10487 (tuple2!2371 (select (arr!2026 (_keys!4221 (v!2833 (underlying!345 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (get!1310 (select (arr!2027 (_values!2506 (v!2833 (underlying!345 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (dynLambda!382 (defaultEntry!2523 (v!2833 (underlying!345 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!101249 () Bool)

(declare-fun e!65921 () Bool)

(assert (=> b!101249 (= e!65920 e!65921)))

(declare-fun c!17431 () Bool)

(declare-fun e!65922 () Bool)

(assert (=> b!101249 (= c!17431 e!65922)))

(declare-fun res!50714 () Bool)

(assert (=> b!101249 (=> (not res!50714) (not e!65922))))

(assert (=> b!101249 (= res!50714 (bvslt (bvadd #b00000000000000000000000000000001 from!355) (size!2278 (_keys!4221 (v!2833 (underlying!345 thiss!992))))))))

(declare-fun b!101250 () Bool)

(assert (=> b!101250 (= e!65922 (validKeyInArray!0 (select (arr!2026 (_keys!4221 (v!2833 (underlying!345 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))))))

(assert (=> b!101250 (bvsge (bvadd #b00000000000000000000000000000001 from!355) #b00000000000000000000000000000000)))

(declare-fun bm!10484 () Bool)

(assert (=> bm!10484 (= call!10487 (getCurrentListMapNoExtraKeys!104 (_keys!4221 (v!2833 (underlying!345 thiss!992))) (_values!2506 (v!2833 (underlying!345 thiss!992))) (mask!6640 (v!2833 (underlying!345 thiss!992))) (extraKeys!2336 (v!2833 (underlying!345 thiss!992))) (zeroValue!2402 (v!2833 (underlying!345 thiss!992))) (minValue!2402 (v!2833 (underlying!345 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355 #b00000000000000000000000000000001) (defaultEntry!2523 (v!2833 (underlying!345 thiss!992)))))))

(declare-fun b!101251 () Bool)

(declare-fun e!65919 () Bool)

(assert (=> b!101251 (= e!65921 e!65919)))

(declare-fun c!17430 () Bool)

(assert (=> b!101251 (= c!17430 (bvslt (bvadd #b00000000000000000000000000000001 from!355) (size!2278 (_keys!4221 (v!2833 (underlying!345 thiss!992))))))))

(declare-fun b!101252 () Bool)

(assert (=> b!101252 (= e!65921 e!65924)))

(assert (=> b!101252 (and (bvsge (bvadd #b00000000000000000000000000000001 from!355) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!355) (size!2278 (_keys!4221 (v!2833 (underlying!345 thiss!992))))))))

(declare-fun res!50715 () Bool)

(assert (=> b!101252 (= res!50715 (contains!813 lt!51218 (select (arr!2026 (_keys!4221 (v!2833 (underlying!345 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))))))

(assert (=> b!101252 (=> (not res!50715) (not e!65924))))

(declare-fun b!101253 () Bool)

(declare-fun res!50716 () Bool)

(assert (=> b!101253 (=> (not res!50716) (not e!65920))))

(assert (=> b!101253 (= res!50716 (not (contains!813 lt!51218 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!101254 () Bool)

(assert (=> b!101254 (= e!65925 call!10487)))

(declare-fun b!101255 () Bool)

(assert (=> b!101255 (= e!65923 (ListLongMap!1562 Nil!1615))))

(declare-fun b!101256 () Bool)

(assert (=> b!101256 (= e!65919 (= lt!51218 (getCurrentListMapNoExtraKeys!104 (_keys!4221 (v!2833 (underlying!345 thiss!992))) (_values!2506 (v!2833 (underlying!345 thiss!992))) (mask!6640 (v!2833 (underlying!345 thiss!992))) (extraKeys!2336 (v!2833 (underlying!345 thiss!992))) (zeroValue!2402 (v!2833 (underlying!345 thiss!992))) (minValue!2402 (v!2833 (underlying!345 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355 #b00000000000000000000000000000001) (defaultEntry!2523 (v!2833 (underlying!345 thiss!992))))))))

(declare-fun b!101257 () Bool)

(declare-fun isEmpty!368 (ListLongMap!1561) Bool)

(assert (=> b!101257 (= e!65919 (isEmpty!368 lt!51218))))

(assert (= (and d!27439 c!17429) b!101255))

(assert (= (and d!27439 (not c!17429)) b!101247))

(assert (= (and b!101247 c!17428) b!101248))

(assert (= (and b!101247 (not c!17428)) b!101254))

(assert (= (or b!101248 b!101254) bm!10484))

(assert (= (and d!27439 res!50717) b!101253))

(assert (= (and b!101253 res!50716) b!101249))

(assert (= (and b!101249 res!50714) b!101250))

(assert (= (and b!101249 c!17431) b!101252))

(assert (= (and b!101249 (not c!17431)) b!101251))

(assert (= (and b!101252 res!50715) b!101246))

(assert (= (and b!101251 c!17430) b!101256))

(assert (= (and b!101251 (not c!17430)) b!101257))

(declare-fun b_lambda!4545 () Bool)

(assert (=> (not b_lambda!4545) (not b!101246)))

(assert (=> b!101246 t!5621))

(declare-fun b_and!6233 () Bool)

(assert (= b_and!6229 (and (=> t!5621 result!3329) b_and!6233)))

(assert (=> b!101246 t!5623))

(declare-fun b_and!6235 () Bool)

(assert (= b_and!6231 (and (=> t!5623 result!3333) b_and!6235)))

(declare-fun b_lambda!4547 () Bool)

(assert (=> (not b_lambda!4547) (not b!101248)))

(assert (=> b!101248 t!5621))

(declare-fun b_and!6237 () Bool)

(assert (= b_and!6233 (and (=> t!5621 result!3329) b_and!6237)))

(assert (=> b!101248 t!5623))

(declare-fun b_and!6239 () Bool)

(assert (= b_and!6235 (and (=> t!5623 result!3333) b_and!6239)))

(declare-fun m!112023 () Bool)

(assert (=> b!101253 m!112023))

(declare-fun m!112025 () Bool)

(assert (=> bm!10484 m!112025))

(assert (=> b!101250 m!111825))

(assert (=> b!101250 m!111825))

(assert (=> b!101250 m!111827))

(assert (=> b!101252 m!111825))

(assert (=> b!101252 m!111825))

(declare-fun m!112027 () Bool)

(assert (=> b!101252 m!112027))

(assert (=> b!101246 m!111825))

(declare-fun m!112029 () Bool)

(assert (=> b!101246 m!112029))

(assert (=> b!101246 m!111829))

(assert (=> b!101246 m!111825))

(assert (=> b!101246 m!111653))

(assert (=> b!101246 m!111829))

(assert (=> b!101246 m!111653))

(assert (=> b!101246 m!111831))

(declare-fun m!112031 () Bool)

(assert (=> d!27439 m!112031))

(assert (=> d!27439 m!111647))

(assert (=> b!101256 m!112025))

(declare-fun m!112033 () Bool)

(assert (=> b!101248 m!112033))

(declare-fun m!112035 () Bool)

(assert (=> b!101248 m!112035))

(declare-fun m!112037 () Bool)

(assert (=> b!101248 m!112037))

(assert (=> b!101248 m!111829))

(assert (=> b!101248 m!111825))

(declare-fun m!112039 () Bool)

(assert (=> b!101248 m!112039))

(assert (=> b!101248 m!111653))

(assert (=> b!101248 m!111829))

(assert (=> b!101248 m!111653))

(assert (=> b!101248 m!111831))

(assert (=> b!101248 m!112033))

(assert (=> b!101247 m!111825))

(assert (=> b!101247 m!111825))

(assert (=> b!101247 m!111827))

(declare-fun m!112041 () Bool)

(assert (=> b!101257 m!112041))

(assert (=> bm!10465 d!27439))

(declare-fun d!27441 () Bool)

(declare-fun e!65928 () Bool)

(assert (=> d!27441 e!65928))

(declare-fun c!17434 () Bool)

(assert (=> d!27441 (= c!17434 (and (not (= (select (arr!2026 (_keys!4221 (v!2833 (underlying!345 thiss!992)))) from!355) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!2026 (_keys!4221 (v!2833 (underlying!345 thiss!992)))) from!355) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> d!27441 true))

(declare-fun _$29!132 () Unit!3091)

(assert (=> d!27441 (= (choose!623 (_keys!4221 (v!2833 (underlying!345 thiss!992))) (_values!2506 (v!2833 (underlying!345 thiss!992))) (mask!6640 (v!2833 (underlying!345 thiss!992))) (extraKeys!2336 (v!2833 (underlying!345 thiss!992))) (zeroValue!2402 (v!2833 (underlying!345 thiss!992))) (minValue!2402 (v!2833 (underlying!345 thiss!992))) (select (arr!2026 (_keys!4221 (v!2833 (underlying!345 thiss!992)))) from!355) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2523 (v!2833 (underlying!345 thiss!992)))) _$29!132)))

(declare-fun b!101262 () Bool)

(assert (=> b!101262 (= e!65928 (arrayContainsKey!0 (_keys!4221 (v!2833 (underlying!345 thiss!992))) (select (arr!2026 (_keys!4221 (v!2833 (underlying!345 thiss!992)))) from!355) (bvadd #b00000000000000000000000000000001 from!355)))))

(declare-fun b!101263 () Bool)

(assert (=> b!101263 (= e!65928 (ite (= (select (arr!2026 (_keys!4221 (v!2833 (underlying!345 thiss!992)))) from!355) #b0000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand (extraKeys!2336 (v!2833 (underlying!345 thiss!992))) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (extraKeys!2336 (v!2833 (underlying!345 thiss!992))) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (= (and d!27441 c!17434) b!101262))

(assert (= (and d!27441 (not c!17434)) b!101263))

(assert (=> b!101262 m!111657))

(assert (=> b!101262 m!111673))

(assert (=> d!27379 d!27441))

(assert (=> d!27379 d!27359))

(declare-fun d!27443 () Bool)

(assert (=> d!27443 (= (apply!94 (+!140 lt!51125 (tuple2!2371 lt!51117 (minValue!2402 (v!2833 (underlying!345 thiss!992))))) lt!51127) (get!1313 (getValueByKey!151 (toList!796 (+!140 lt!51125 (tuple2!2371 lt!51117 (minValue!2402 (v!2833 (underlying!345 thiss!992)))))) lt!51127)))))

(declare-fun bs!4181 () Bool)

(assert (= bs!4181 d!27443))

(declare-fun m!112043 () Bool)

(assert (=> bs!4181 m!112043))

(assert (=> bs!4181 m!112043))

(declare-fun m!112045 () Bool)

(assert (=> bs!4181 m!112045))

(assert (=> b!101071 d!27443))

(declare-fun d!27445 () Bool)

(assert (=> d!27445 (= (apply!94 (+!140 lt!51119 (tuple2!2371 lt!51120 (minValue!2402 (v!2833 (underlying!345 thiss!992))))) lt!51115) (apply!94 lt!51119 lt!51115))))

(declare-fun lt!51223 () Unit!3091)

(declare-fun choose!629 (ListLongMap!1561 (_ BitVec 64) V!3171 (_ BitVec 64)) Unit!3091)

(assert (=> d!27445 (= lt!51223 (choose!629 lt!51119 lt!51120 (minValue!2402 (v!2833 (underlying!345 thiss!992))) lt!51115))))

(declare-fun e!65931 () Bool)

(assert (=> d!27445 e!65931))

(declare-fun res!50720 () Bool)

(assert (=> d!27445 (=> (not res!50720) (not e!65931))))

(assert (=> d!27445 (= res!50720 (contains!813 lt!51119 lt!51115))))

(assert (=> d!27445 (= (addApplyDifferent!70 lt!51119 lt!51120 (minValue!2402 (v!2833 (underlying!345 thiss!992))) lt!51115) lt!51223)))

(declare-fun b!101267 () Bool)

(assert (=> b!101267 (= e!65931 (not (= lt!51115 lt!51120)))))

(assert (= (and d!27445 res!50720) b!101267))

(assert (=> d!27445 m!111871))

(declare-fun m!112047 () Bool)

(assert (=> d!27445 m!112047))

(assert (=> d!27445 m!111853))

(declare-fun m!112049 () Bool)

(assert (=> d!27445 m!112049))

(assert (=> d!27445 m!111853))

(assert (=> d!27445 m!111855))

(assert (=> b!101071 d!27445))

(declare-fun d!27447 () Bool)

(assert (=> d!27447 (= (apply!94 lt!51125 lt!51127) (get!1313 (getValueByKey!151 (toList!796 lt!51125) lt!51127)))))

(declare-fun bs!4182 () Bool)

(assert (= bs!4182 d!27447))

(declare-fun m!112051 () Bool)

(assert (=> bs!4182 m!112051))

(assert (=> bs!4182 m!112051))

(declare-fun m!112053 () Bool)

(assert (=> bs!4182 m!112053))

(assert (=> b!101071 d!27447))

(declare-fun d!27449 () Bool)

(declare-fun e!65934 () Bool)

(assert (=> d!27449 e!65934))

(declare-fun res!50726 () Bool)

(assert (=> d!27449 (=> (not res!50726) (not e!65934))))

(declare-fun lt!51234 () ListLongMap!1561)

(assert (=> d!27449 (= res!50726 (contains!813 lt!51234 (_1!1195 (tuple2!2371 lt!51117 (minValue!2402 (v!2833 (underlying!345 thiss!992)))))))))

(declare-fun lt!51232 () List!1618)

(assert (=> d!27449 (= lt!51234 (ListLongMap!1562 lt!51232))))

(declare-fun lt!51235 () Unit!3091)

(declare-fun lt!51233 () Unit!3091)

(assert (=> d!27449 (= lt!51235 lt!51233)))

(assert (=> d!27449 (= (getValueByKey!151 lt!51232 (_1!1195 (tuple2!2371 lt!51117 (minValue!2402 (v!2833 (underlying!345 thiss!992)))))) (Some!156 (_2!1195 (tuple2!2371 lt!51117 (minValue!2402 (v!2833 (underlying!345 thiss!992)))))))))

(declare-fun lemmaContainsTupThenGetReturnValue!69 (List!1618 (_ BitVec 64) V!3171) Unit!3091)

(assert (=> d!27449 (= lt!51233 (lemmaContainsTupThenGetReturnValue!69 lt!51232 (_1!1195 (tuple2!2371 lt!51117 (minValue!2402 (v!2833 (underlying!345 thiss!992))))) (_2!1195 (tuple2!2371 lt!51117 (minValue!2402 (v!2833 (underlying!345 thiss!992)))))))))

(declare-fun insertStrictlySorted!71 (List!1618 (_ BitVec 64) V!3171) List!1618)

(assert (=> d!27449 (= lt!51232 (insertStrictlySorted!71 (toList!796 lt!51125) (_1!1195 (tuple2!2371 lt!51117 (minValue!2402 (v!2833 (underlying!345 thiss!992))))) (_2!1195 (tuple2!2371 lt!51117 (minValue!2402 (v!2833 (underlying!345 thiss!992)))))))))

(assert (=> d!27449 (= (+!140 lt!51125 (tuple2!2371 lt!51117 (minValue!2402 (v!2833 (underlying!345 thiss!992))))) lt!51234)))

(declare-fun b!101272 () Bool)

(declare-fun res!50725 () Bool)

(assert (=> b!101272 (=> (not res!50725) (not e!65934))))

(assert (=> b!101272 (= res!50725 (= (getValueByKey!151 (toList!796 lt!51234) (_1!1195 (tuple2!2371 lt!51117 (minValue!2402 (v!2833 (underlying!345 thiss!992)))))) (Some!156 (_2!1195 (tuple2!2371 lt!51117 (minValue!2402 (v!2833 (underlying!345 thiss!992))))))))))

(declare-fun b!101273 () Bool)

(declare-fun contains!815 (List!1618 tuple2!2370) Bool)

(assert (=> b!101273 (= e!65934 (contains!815 (toList!796 lt!51234) (tuple2!2371 lt!51117 (minValue!2402 (v!2833 (underlying!345 thiss!992))))))))

(assert (= (and d!27449 res!50726) b!101272))

(assert (= (and b!101272 res!50725) b!101273))

(declare-fun m!112055 () Bool)

(assert (=> d!27449 m!112055))

(declare-fun m!112057 () Bool)

(assert (=> d!27449 m!112057))

(declare-fun m!112059 () Bool)

(assert (=> d!27449 m!112059))

(declare-fun m!112061 () Bool)

(assert (=> d!27449 m!112061))

(declare-fun m!112063 () Bool)

(assert (=> b!101272 m!112063))

(declare-fun m!112065 () Bool)

(assert (=> b!101273 m!112065))

(assert (=> b!101071 d!27449))

(declare-fun d!27451 () Bool)

(assert (=> d!27451 (= (apply!94 (+!140 lt!51128 (tuple2!2371 lt!51124 (zeroValue!2402 (v!2833 (underlying!345 thiss!992))))) lt!51118) (get!1313 (getValueByKey!151 (toList!796 (+!140 lt!51128 (tuple2!2371 lt!51124 (zeroValue!2402 (v!2833 (underlying!345 thiss!992)))))) lt!51118)))))

(declare-fun bs!4183 () Bool)

(assert (= bs!4183 d!27451))

(declare-fun m!112067 () Bool)

(assert (=> bs!4183 m!112067))

(assert (=> bs!4183 m!112067))

(declare-fun m!112069 () Bool)

(assert (=> bs!4183 m!112069))

(assert (=> b!101071 d!27451))

(assert (=> b!101071 d!27439))

(declare-fun d!27453 () Bool)

(assert (=> d!27453 (= (apply!94 lt!51128 lt!51118) (get!1313 (getValueByKey!151 (toList!796 lt!51128) lt!51118)))))

(declare-fun bs!4184 () Bool)

(assert (= bs!4184 d!27453))

(declare-fun m!112071 () Bool)

(assert (=> bs!4184 m!112071))

(assert (=> bs!4184 m!112071))

(declare-fun m!112073 () Bool)

(assert (=> bs!4184 m!112073))

(assert (=> b!101071 d!27453))

(declare-fun d!27455 () Bool)

(declare-fun e!65935 () Bool)

(assert (=> d!27455 e!65935))

(declare-fun res!50728 () Bool)

(assert (=> d!27455 (=> (not res!50728) (not e!65935))))

(declare-fun lt!51238 () ListLongMap!1561)

(assert (=> d!27455 (= res!50728 (contains!813 lt!51238 (_1!1195 (tuple2!2371 lt!51124 (zeroValue!2402 (v!2833 (underlying!345 thiss!992)))))))))

(declare-fun lt!51236 () List!1618)

(assert (=> d!27455 (= lt!51238 (ListLongMap!1562 lt!51236))))

(declare-fun lt!51239 () Unit!3091)

(declare-fun lt!51237 () Unit!3091)

(assert (=> d!27455 (= lt!51239 lt!51237)))

(assert (=> d!27455 (= (getValueByKey!151 lt!51236 (_1!1195 (tuple2!2371 lt!51124 (zeroValue!2402 (v!2833 (underlying!345 thiss!992)))))) (Some!156 (_2!1195 (tuple2!2371 lt!51124 (zeroValue!2402 (v!2833 (underlying!345 thiss!992)))))))))

(assert (=> d!27455 (= lt!51237 (lemmaContainsTupThenGetReturnValue!69 lt!51236 (_1!1195 (tuple2!2371 lt!51124 (zeroValue!2402 (v!2833 (underlying!345 thiss!992))))) (_2!1195 (tuple2!2371 lt!51124 (zeroValue!2402 (v!2833 (underlying!345 thiss!992)))))))))

(assert (=> d!27455 (= lt!51236 (insertStrictlySorted!71 (toList!796 lt!51128) (_1!1195 (tuple2!2371 lt!51124 (zeroValue!2402 (v!2833 (underlying!345 thiss!992))))) (_2!1195 (tuple2!2371 lt!51124 (zeroValue!2402 (v!2833 (underlying!345 thiss!992)))))))))

(assert (=> d!27455 (= (+!140 lt!51128 (tuple2!2371 lt!51124 (zeroValue!2402 (v!2833 (underlying!345 thiss!992))))) lt!51238)))

(declare-fun b!101274 () Bool)

(declare-fun res!50727 () Bool)

(assert (=> b!101274 (=> (not res!50727) (not e!65935))))

(assert (=> b!101274 (= res!50727 (= (getValueByKey!151 (toList!796 lt!51238) (_1!1195 (tuple2!2371 lt!51124 (zeroValue!2402 (v!2833 (underlying!345 thiss!992)))))) (Some!156 (_2!1195 (tuple2!2371 lt!51124 (zeroValue!2402 (v!2833 (underlying!345 thiss!992))))))))))

(declare-fun b!101275 () Bool)

(assert (=> b!101275 (= e!65935 (contains!815 (toList!796 lt!51238) (tuple2!2371 lt!51124 (zeroValue!2402 (v!2833 (underlying!345 thiss!992))))))))

(assert (= (and d!27455 res!50728) b!101274))

(assert (= (and b!101274 res!50727) b!101275))

(declare-fun m!112075 () Bool)

(assert (=> d!27455 m!112075))

(declare-fun m!112077 () Bool)

(assert (=> d!27455 m!112077))

(declare-fun m!112079 () Bool)

(assert (=> d!27455 m!112079))

(declare-fun m!112081 () Bool)

(assert (=> d!27455 m!112081))

(declare-fun m!112083 () Bool)

(assert (=> b!101274 m!112083))

(declare-fun m!112085 () Bool)

(assert (=> b!101275 m!112085))

(assert (=> b!101071 d!27455))

(declare-fun d!27457 () Bool)

(assert (=> d!27457 (= (apply!94 (+!140 lt!51125 (tuple2!2371 lt!51117 (minValue!2402 (v!2833 (underlying!345 thiss!992))))) lt!51127) (apply!94 lt!51125 lt!51127))))

(declare-fun lt!51240 () Unit!3091)

(assert (=> d!27457 (= lt!51240 (choose!629 lt!51125 lt!51117 (minValue!2402 (v!2833 (underlying!345 thiss!992))) lt!51127))))

(declare-fun e!65936 () Bool)

(assert (=> d!27457 e!65936))

(declare-fun res!50729 () Bool)

(assert (=> d!27457 (=> (not res!50729) (not e!65936))))

(assert (=> d!27457 (= res!50729 (contains!813 lt!51125 lt!51127))))

(assert (=> d!27457 (= (addApplyDifferent!70 lt!51125 lt!51117 (minValue!2402 (v!2833 (underlying!345 thiss!992))) lt!51127) lt!51240)))

(declare-fun b!101276 () Bool)

(assert (=> b!101276 (= e!65936 (not (= lt!51127 lt!51117)))))

(assert (= (and d!27457 res!50729) b!101276))

(assert (=> d!27457 m!111869))

(declare-fun m!112087 () Bool)

(assert (=> d!27457 m!112087))

(assert (=> d!27457 m!111857))

(declare-fun m!112089 () Bool)

(assert (=> d!27457 m!112089))

(assert (=> d!27457 m!111857))

(assert (=> d!27457 m!111859))

(assert (=> b!101071 d!27457))

(declare-fun d!27459 () Bool)

(assert (=> d!27459 (= (apply!94 (+!140 lt!51119 (tuple2!2371 lt!51120 (minValue!2402 (v!2833 (underlying!345 thiss!992))))) lt!51115) (get!1313 (getValueByKey!151 (toList!796 (+!140 lt!51119 (tuple2!2371 lt!51120 (minValue!2402 (v!2833 (underlying!345 thiss!992)))))) lt!51115)))))

(declare-fun bs!4185 () Bool)

(assert (= bs!4185 d!27459))

(declare-fun m!112091 () Bool)

(assert (=> bs!4185 m!112091))

(assert (=> bs!4185 m!112091))

(declare-fun m!112093 () Bool)

(assert (=> bs!4185 m!112093))

(assert (=> b!101071 d!27459))

(declare-fun d!27461 () Bool)

(assert (=> d!27461 (= (apply!94 (+!140 lt!51128 (tuple2!2371 lt!51124 (zeroValue!2402 (v!2833 (underlying!345 thiss!992))))) lt!51118) (apply!94 lt!51128 lt!51118))))

(declare-fun lt!51241 () Unit!3091)

(assert (=> d!27461 (= lt!51241 (choose!629 lt!51128 lt!51124 (zeroValue!2402 (v!2833 (underlying!345 thiss!992))) lt!51118))))

(declare-fun e!65937 () Bool)

(assert (=> d!27461 e!65937))

(declare-fun res!50730 () Bool)

(assert (=> d!27461 (=> (not res!50730) (not e!65937))))

(assert (=> d!27461 (= res!50730 (contains!813 lt!51128 lt!51118))))

(assert (=> d!27461 (= (addApplyDifferent!70 lt!51128 lt!51124 (zeroValue!2402 (v!2833 (underlying!345 thiss!992))) lt!51118) lt!51241)))

(declare-fun b!101277 () Bool)

(assert (=> b!101277 (= e!65937 (not (= lt!51118 lt!51124)))))

(assert (= (and d!27461 res!50730) b!101277))

(assert (=> d!27461 m!111879))

(declare-fun m!112095 () Bool)

(assert (=> d!27461 m!112095))

(assert (=> d!27461 m!111851))

(declare-fun m!112097 () Bool)

(assert (=> d!27461 m!112097))

(assert (=> d!27461 m!111851))

(assert (=> d!27461 m!111875))

(assert (=> b!101071 d!27461))

(declare-fun d!27463 () Bool)

(declare-fun e!65938 () Bool)

(assert (=> d!27463 e!65938))

(declare-fun res!50732 () Bool)

(assert (=> d!27463 (=> (not res!50732) (not e!65938))))

(declare-fun lt!51244 () ListLongMap!1561)

(assert (=> d!27463 (= res!50732 (contains!813 lt!51244 (_1!1195 (tuple2!2371 lt!51120 (minValue!2402 (v!2833 (underlying!345 thiss!992)))))))))

(declare-fun lt!51242 () List!1618)

(assert (=> d!27463 (= lt!51244 (ListLongMap!1562 lt!51242))))

(declare-fun lt!51245 () Unit!3091)

(declare-fun lt!51243 () Unit!3091)

(assert (=> d!27463 (= lt!51245 lt!51243)))

(assert (=> d!27463 (= (getValueByKey!151 lt!51242 (_1!1195 (tuple2!2371 lt!51120 (minValue!2402 (v!2833 (underlying!345 thiss!992)))))) (Some!156 (_2!1195 (tuple2!2371 lt!51120 (minValue!2402 (v!2833 (underlying!345 thiss!992)))))))))

(assert (=> d!27463 (= lt!51243 (lemmaContainsTupThenGetReturnValue!69 lt!51242 (_1!1195 (tuple2!2371 lt!51120 (minValue!2402 (v!2833 (underlying!345 thiss!992))))) (_2!1195 (tuple2!2371 lt!51120 (minValue!2402 (v!2833 (underlying!345 thiss!992)))))))))

(assert (=> d!27463 (= lt!51242 (insertStrictlySorted!71 (toList!796 lt!51119) (_1!1195 (tuple2!2371 lt!51120 (minValue!2402 (v!2833 (underlying!345 thiss!992))))) (_2!1195 (tuple2!2371 lt!51120 (minValue!2402 (v!2833 (underlying!345 thiss!992)))))))))

(assert (=> d!27463 (= (+!140 lt!51119 (tuple2!2371 lt!51120 (minValue!2402 (v!2833 (underlying!345 thiss!992))))) lt!51244)))

(declare-fun b!101278 () Bool)

(declare-fun res!50731 () Bool)

(assert (=> b!101278 (=> (not res!50731) (not e!65938))))

(assert (=> b!101278 (= res!50731 (= (getValueByKey!151 (toList!796 lt!51244) (_1!1195 (tuple2!2371 lt!51120 (minValue!2402 (v!2833 (underlying!345 thiss!992)))))) (Some!156 (_2!1195 (tuple2!2371 lt!51120 (minValue!2402 (v!2833 (underlying!345 thiss!992))))))))))

(declare-fun b!101279 () Bool)

(assert (=> b!101279 (= e!65938 (contains!815 (toList!796 lt!51244) (tuple2!2371 lt!51120 (minValue!2402 (v!2833 (underlying!345 thiss!992))))))))

(assert (= (and d!27463 res!50732) b!101278))

(assert (= (and b!101278 res!50731) b!101279))

(declare-fun m!112099 () Bool)

(assert (=> d!27463 m!112099))

(declare-fun m!112101 () Bool)

(assert (=> d!27463 m!112101))

(declare-fun m!112103 () Bool)

(assert (=> d!27463 m!112103))

(declare-fun m!112105 () Bool)

(assert (=> d!27463 m!112105))

(declare-fun m!112107 () Bool)

(assert (=> b!101278 m!112107))

(declare-fun m!112109 () Bool)

(assert (=> b!101279 m!112109))

(assert (=> b!101071 d!27463))

(declare-fun d!27465 () Bool)

(assert (=> d!27465 (= (apply!94 lt!51119 lt!51115) (get!1313 (getValueByKey!151 (toList!796 lt!51119) lt!51115)))))

(declare-fun bs!4186 () Bool)

(assert (= bs!4186 d!27465))

(declare-fun m!112111 () Bool)

(assert (=> bs!4186 m!112111))

(assert (=> bs!4186 m!112111))

(declare-fun m!112113 () Bool)

(assert (=> bs!4186 m!112113))

(assert (=> b!101071 d!27465))

(declare-fun d!27467 () Bool)

(assert (=> d!27467 (contains!813 (+!140 lt!51121 (tuple2!2371 lt!51130 (zeroValue!2402 (v!2833 (underlying!345 thiss!992))))) lt!51134)))

(declare-fun lt!51248 () Unit!3091)

(declare-fun choose!630 (ListLongMap!1561 (_ BitVec 64) V!3171 (_ BitVec 64)) Unit!3091)

(assert (=> d!27467 (= lt!51248 (choose!630 lt!51121 lt!51130 (zeroValue!2402 (v!2833 (underlying!345 thiss!992))) lt!51134))))

(assert (=> d!27467 (contains!813 lt!51121 lt!51134)))

(assert (=> d!27467 (= (addStillContains!70 lt!51121 lt!51130 (zeroValue!2402 (v!2833 (underlying!345 thiss!992))) lt!51134) lt!51248)))

(declare-fun bs!4187 () Bool)

(assert (= bs!4187 d!27467))

(assert (=> bs!4187 m!111861))

(assert (=> bs!4187 m!111861))

(assert (=> bs!4187 m!111863))

(declare-fun m!112115 () Bool)

(assert (=> bs!4187 m!112115))

(declare-fun m!112117 () Bool)

(assert (=> bs!4187 m!112117))

(assert (=> b!101071 d!27467))

(declare-fun d!27469 () Bool)

(declare-fun e!65939 () Bool)

(assert (=> d!27469 e!65939))

(declare-fun res!50733 () Bool)

(assert (=> d!27469 (=> res!50733 e!65939)))

(declare-fun lt!51250 () Bool)

(assert (=> d!27469 (= res!50733 (not lt!51250))))

(declare-fun lt!51249 () Bool)

(assert (=> d!27469 (= lt!51250 lt!51249)))

(declare-fun lt!51252 () Unit!3091)

(declare-fun e!65940 () Unit!3091)

(assert (=> d!27469 (= lt!51252 e!65940)))

(declare-fun c!17435 () Bool)

(assert (=> d!27469 (= c!17435 lt!51249)))

(assert (=> d!27469 (= lt!51249 (containsKey!155 (toList!796 (+!140 lt!51121 (tuple2!2371 lt!51130 (zeroValue!2402 (v!2833 (underlying!345 thiss!992)))))) lt!51134))))

(assert (=> d!27469 (= (contains!813 (+!140 lt!51121 (tuple2!2371 lt!51130 (zeroValue!2402 (v!2833 (underlying!345 thiss!992))))) lt!51134) lt!51250)))

(declare-fun b!101281 () Bool)

(declare-fun lt!51251 () Unit!3091)

(assert (=> b!101281 (= e!65940 lt!51251)))

(assert (=> b!101281 (= lt!51251 (lemmaContainsKeyImpliesGetValueByKeyDefined!104 (toList!796 (+!140 lt!51121 (tuple2!2371 lt!51130 (zeroValue!2402 (v!2833 (underlying!345 thiss!992)))))) lt!51134))))

(assert (=> b!101281 (isDefined!105 (getValueByKey!151 (toList!796 (+!140 lt!51121 (tuple2!2371 lt!51130 (zeroValue!2402 (v!2833 (underlying!345 thiss!992)))))) lt!51134))))

(declare-fun b!101282 () Bool)

(declare-fun Unit!3102 () Unit!3091)

(assert (=> b!101282 (= e!65940 Unit!3102)))

(declare-fun b!101283 () Bool)

(assert (=> b!101283 (= e!65939 (isDefined!105 (getValueByKey!151 (toList!796 (+!140 lt!51121 (tuple2!2371 lt!51130 (zeroValue!2402 (v!2833 (underlying!345 thiss!992)))))) lt!51134)))))

(assert (= (and d!27469 c!17435) b!101281))

(assert (= (and d!27469 (not c!17435)) b!101282))

(assert (= (and d!27469 (not res!50733)) b!101283))

(declare-fun m!112119 () Bool)

(assert (=> d!27469 m!112119))

(declare-fun m!112121 () Bool)

(assert (=> b!101281 m!112121))

(declare-fun m!112123 () Bool)

(assert (=> b!101281 m!112123))

(assert (=> b!101281 m!112123))

(declare-fun m!112125 () Bool)

(assert (=> b!101281 m!112125))

(assert (=> b!101283 m!112123))

(assert (=> b!101283 m!112123))

(assert (=> b!101283 m!112125))

(assert (=> b!101071 d!27469))

(declare-fun d!27471 () Bool)

(declare-fun e!65941 () Bool)

(assert (=> d!27471 e!65941))

(declare-fun res!50735 () Bool)

(assert (=> d!27471 (=> (not res!50735) (not e!65941))))

(declare-fun lt!51255 () ListLongMap!1561)

(assert (=> d!27471 (= res!50735 (contains!813 lt!51255 (_1!1195 (tuple2!2371 lt!51130 (zeroValue!2402 (v!2833 (underlying!345 thiss!992)))))))))

(declare-fun lt!51253 () List!1618)

(assert (=> d!27471 (= lt!51255 (ListLongMap!1562 lt!51253))))

(declare-fun lt!51256 () Unit!3091)

(declare-fun lt!51254 () Unit!3091)

(assert (=> d!27471 (= lt!51256 lt!51254)))

(assert (=> d!27471 (= (getValueByKey!151 lt!51253 (_1!1195 (tuple2!2371 lt!51130 (zeroValue!2402 (v!2833 (underlying!345 thiss!992)))))) (Some!156 (_2!1195 (tuple2!2371 lt!51130 (zeroValue!2402 (v!2833 (underlying!345 thiss!992)))))))))

(assert (=> d!27471 (= lt!51254 (lemmaContainsTupThenGetReturnValue!69 lt!51253 (_1!1195 (tuple2!2371 lt!51130 (zeroValue!2402 (v!2833 (underlying!345 thiss!992))))) (_2!1195 (tuple2!2371 lt!51130 (zeroValue!2402 (v!2833 (underlying!345 thiss!992)))))))))

(assert (=> d!27471 (= lt!51253 (insertStrictlySorted!71 (toList!796 lt!51121) (_1!1195 (tuple2!2371 lt!51130 (zeroValue!2402 (v!2833 (underlying!345 thiss!992))))) (_2!1195 (tuple2!2371 lt!51130 (zeroValue!2402 (v!2833 (underlying!345 thiss!992)))))))))

(assert (=> d!27471 (= (+!140 lt!51121 (tuple2!2371 lt!51130 (zeroValue!2402 (v!2833 (underlying!345 thiss!992))))) lt!51255)))

(declare-fun b!101284 () Bool)

(declare-fun res!50734 () Bool)

(assert (=> b!101284 (=> (not res!50734) (not e!65941))))

(assert (=> b!101284 (= res!50734 (= (getValueByKey!151 (toList!796 lt!51255) (_1!1195 (tuple2!2371 lt!51130 (zeroValue!2402 (v!2833 (underlying!345 thiss!992)))))) (Some!156 (_2!1195 (tuple2!2371 lt!51130 (zeroValue!2402 (v!2833 (underlying!345 thiss!992))))))))))

(declare-fun b!101285 () Bool)

(assert (=> b!101285 (= e!65941 (contains!815 (toList!796 lt!51255) (tuple2!2371 lt!51130 (zeroValue!2402 (v!2833 (underlying!345 thiss!992))))))))

(assert (= (and d!27471 res!50735) b!101284))

(assert (= (and b!101284 res!50734) b!101285))

(declare-fun m!112127 () Bool)

(assert (=> d!27471 m!112127))

(declare-fun m!112129 () Bool)

(assert (=> d!27471 m!112129))

(declare-fun m!112131 () Bool)

(assert (=> d!27471 m!112131))

(declare-fun m!112133 () Bool)

(assert (=> d!27471 m!112133))

(declare-fun m!112135 () Bool)

(assert (=> b!101284 m!112135))

(declare-fun m!112137 () Bool)

(assert (=> b!101285 m!112137))

(assert (=> b!101071 d!27471))

(declare-fun d!27473 () Bool)

(declare-fun res!50736 () Bool)

(declare-fun e!65942 () Bool)

(assert (=> d!27473 (=> res!50736 e!65942)))

(assert (=> d!27473 (= res!50736 (= (select (arr!2026 (_keys!4221 (v!2833 (underlying!345 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355 #b00000000000000000000000000000001)) (select (arr!2026 (_keys!4221 (v!2833 (underlying!345 thiss!992)))) from!355)))))

(assert (=> d!27473 (= (arrayContainsKey!0 (_keys!4221 (v!2833 (underlying!345 thiss!992))) (select (arr!2026 (_keys!4221 (v!2833 (underlying!345 thiss!992)))) from!355) (bvadd #b00000000000000000000000000000001 from!355 #b00000000000000000000000000000001)) e!65942)))

(declare-fun b!101286 () Bool)

(declare-fun e!65943 () Bool)

(assert (=> b!101286 (= e!65942 e!65943)))

(declare-fun res!50737 () Bool)

(assert (=> b!101286 (=> (not res!50737) (not e!65943))))

(assert (=> b!101286 (= res!50737 (bvslt (bvadd #b00000000000000000000000000000001 from!355 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (size!2278 (_keys!4221 (v!2833 (underlying!345 thiss!992))))))))

(declare-fun b!101287 () Bool)

(assert (=> b!101287 (= e!65943 (arrayContainsKey!0 (_keys!4221 (v!2833 (underlying!345 thiss!992))) (select (arr!2026 (_keys!4221 (v!2833 (underlying!345 thiss!992)))) from!355) (bvadd #b00000000000000000000000000000001 from!355 #b00000000000000000000000000000001 #b00000000000000000000000000000001)))))

(assert (= (and d!27473 (not res!50736)) b!101286))

(assert (= (and b!101286 res!50737) b!101287))

(declare-fun m!112139 () Bool)

(assert (=> d!27473 m!112139))

(assert (=> b!101287 m!111657))

(declare-fun m!112141 () Bool)

(assert (=> b!101287 m!112141))

(assert (=> b!101077 d!27473))

(declare-fun d!27475 () Bool)

(declare-fun e!65944 () Bool)

(assert (=> d!27475 e!65944))

(declare-fun res!50739 () Bool)

(assert (=> d!27475 (=> (not res!50739) (not e!65944))))

(declare-fun lt!51259 () ListLongMap!1561)

(assert (=> d!27475 (= res!50739 (contains!813 lt!51259 (_1!1195 (tuple2!2371 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2402 (v!2833 (underlying!345 thiss!992)))))))))

(declare-fun lt!51257 () List!1618)

(assert (=> d!27475 (= lt!51259 (ListLongMap!1562 lt!51257))))

(declare-fun lt!51260 () Unit!3091)

(declare-fun lt!51258 () Unit!3091)

(assert (=> d!27475 (= lt!51260 lt!51258)))

(assert (=> d!27475 (= (getValueByKey!151 lt!51257 (_1!1195 (tuple2!2371 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2402 (v!2833 (underlying!345 thiss!992)))))) (Some!156 (_2!1195 (tuple2!2371 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2402 (v!2833 (underlying!345 thiss!992)))))))))

(assert (=> d!27475 (= lt!51258 (lemmaContainsTupThenGetReturnValue!69 lt!51257 (_1!1195 (tuple2!2371 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2402 (v!2833 (underlying!345 thiss!992))))) (_2!1195 (tuple2!2371 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2402 (v!2833 (underlying!345 thiss!992)))))))))

(assert (=> d!27475 (= lt!51257 (insertStrictlySorted!71 (toList!796 call!10473) (_1!1195 (tuple2!2371 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2402 (v!2833 (underlying!345 thiss!992))))) (_2!1195 (tuple2!2371 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2402 (v!2833 (underlying!345 thiss!992)))))))))

(assert (=> d!27475 (= (+!140 call!10473 (tuple2!2371 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2402 (v!2833 (underlying!345 thiss!992))))) lt!51259)))

(declare-fun b!101288 () Bool)

(declare-fun res!50738 () Bool)

(assert (=> b!101288 (=> (not res!50738) (not e!65944))))

(assert (=> b!101288 (= res!50738 (= (getValueByKey!151 (toList!796 lt!51259) (_1!1195 (tuple2!2371 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2402 (v!2833 (underlying!345 thiss!992)))))) (Some!156 (_2!1195 (tuple2!2371 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2402 (v!2833 (underlying!345 thiss!992))))))))))

(declare-fun b!101289 () Bool)

(assert (=> b!101289 (= e!65944 (contains!815 (toList!796 lt!51259) (tuple2!2371 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2402 (v!2833 (underlying!345 thiss!992))))))))

(assert (= (and d!27475 res!50739) b!101288))

(assert (= (and b!101288 res!50738) b!101289))

(declare-fun m!112143 () Bool)

(assert (=> d!27475 m!112143))

(declare-fun m!112145 () Bool)

(assert (=> d!27475 m!112145))

(declare-fun m!112147 () Bool)

(assert (=> d!27475 m!112147))

(declare-fun m!112149 () Bool)

(assert (=> d!27475 m!112149))

(declare-fun m!112151 () Bool)

(assert (=> b!101288 m!112151))

(declare-fun m!112153 () Bool)

(assert (=> b!101289 m!112153))

(assert (=> b!101068 d!27475))

(declare-fun d!27477 () Bool)

(declare-fun res!50740 () Bool)

(declare-fun e!65945 () Bool)

(assert (=> d!27477 (=> (not res!50740) (not e!65945))))

(assert (=> d!27477 (= res!50740 (simpleValid!69 (_2!1196 lt!51057)))))

(assert (=> d!27477 (= (valid!391 (_2!1196 lt!51057)) e!65945)))

(declare-fun b!101290 () Bool)

(declare-fun res!50741 () Bool)

(assert (=> b!101290 (=> (not res!50741) (not e!65945))))

(assert (=> b!101290 (= res!50741 (= (arrayCountValidKeys!0 (_keys!4221 (_2!1196 lt!51057)) #b00000000000000000000000000000000 (size!2278 (_keys!4221 (_2!1196 lt!51057)))) (_size!481 (_2!1196 lt!51057))))))

(declare-fun b!101291 () Bool)

(declare-fun res!50742 () Bool)

(assert (=> b!101291 (=> (not res!50742) (not e!65945))))

(assert (=> b!101291 (= res!50742 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!4221 (_2!1196 lt!51057)) (mask!6640 (_2!1196 lt!51057))))))

(declare-fun b!101292 () Bool)

(assert (=> b!101292 (= e!65945 (arrayNoDuplicates!0 (_keys!4221 (_2!1196 lt!51057)) #b00000000000000000000000000000000 Nil!1616))))

(assert (= (and d!27477 res!50740) b!101290))

(assert (= (and b!101290 res!50741) b!101291))

(assert (= (and b!101291 res!50742) b!101292))

(declare-fun m!112155 () Bool)

(assert (=> d!27477 m!112155))

(declare-fun m!112157 () Bool)

(assert (=> b!101290 m!112157))

(declare-fun m!112159 () Bool)

(assert (=> b!101291 m!112159))

(declare-fun m!112161 () Bool)

(assert (=> b!101292 m!112161))

(assert (=> d!27355 d!27477))

(assert (=> d!27355 d!27351))

(assert (=> b!101082 d!27377))

(declare-fun b!101293 () Bool)

(declare-fun e!65958 () Bool)

(assert (=> b!101293 (= e!65958 (validKeyInArray!0 (select (arr!2026 (_keys!4221 newMap!16)) #b00000000000000000000000000000000)))))

(declare-fun b!101294 () Bool)

(declare-fun e!65953 () Bool)

(declare-fun e!65956 () Bool)

(assert (=> b!101294 (= e!65953 e!65956)))

(declare-fun c!17437 () Bool)

(assert (=> b!101294 (= c!17437 (not (= (bvand (extraKeys!2336 newMap!16) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!101295 () Bool)

(declare-fun e!65950 () Bool)

(declare-fun e!65948 () Bool)

(assert (=> b!101295 (= e!65950 e!65948)))

(declare-fun res!50748 () Bool)

(declare-fun call!10492 () Bool)

(assert (=> b!101295 (= res!50748 call!10492)))

(assert (=> b!101295 (=> (not res!50748) (not e!65948))))

(declare-fun b!101296 () Bool)

(declare-fun res!50743 () Bool)

(assert (=> b!101296 (=> (not res!50743) (not e!65953))))

(declare-fun e!65954 () Bool)

(assert (=> b!101296 (= res!50743 e!65954)))

(declare-fun res!50745 () Bool)

(assert (=> b!101296 (=> res!50745 e!65954)))

(declare-fun e!65949 () Bool)

(assert (=> b!101296 (= res!50745 (not e!65949))))

(declare-fun res!50746 () Bool)

(assert (=> b!101296 (=> (not res!50746) (not e!65949))))

(assert (=> b!101296 (= res!50746 (bvslt #b00000000000000000000000000000000 (size!2278 (_keys!4221 newMap!16))))))

(declare-fun b!101297 () Bool)

(declare-fun e!65947 () Bool)

(declare-fun lt!51277 () ListLongMap!1561)

(assert (=> b!101297 (= e!65947 (= (apply!94 lt!51277 #b1000000000000000000000000000000000000000000000000000000000000000) (minValue!2402 newMap!16)))))

(declare-fun b!101298 () Bool)

(declare-fun e!65952 () ListLongMap!1561)

(declare-fun e!65951 () ListLongMap!1561)

(assert (=> b!101298 (= e!65952 e!65951)))

(declare-fun c!17438 () Bool)

(assert (=> b!101298 (= c!17438 (and (not (= (bvand (extraKeys!2336 newMap!16) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand (extraKeys!2336 newMap!16) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!101299 () Bool)

(declare-fun e!65955 () ListLongMap!1561)

(declare-fun call!10490 () ListLongMap!1561)

(assert (=> b!101299 (= e!65955 call!10490)))

(declare-fun b!101300 () Bool)

(declare-fun e!65946 () Bool)

(assert (=> b!101300 (= e!65946 (= (apply!94 lt!51277 (select (arr!2026 (_keys!4221 newMap!16)) #b00000000000000000000000000000000)) (get!1310 (select (arr!2027 (_values!2506 newMap!16)) #b00000000000000000000000000000000) (dynLambda!382 (defaultEntry!2523 newMap!16) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!101300 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!2279 (_values!2506 newMap!16))))))

(assert (=> b!101300 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!2278 (_keys!4221 newMap!16))))))

(declare-fun bm!10486 () Bool)

(declare-fun call!10493 () ListLongMap!1561)

(assert (=> bm!10486 (= call!10490 call!10493)))

(declare-fun b!101301 () Bool)

(declare-fun res!50747 () Bool)

(assert (=> b!101301 (=> (not res!50747) (not e!65953))))

(assert (=> b!101301 (= res!50747 e!65950)))

(declare-fun c!17441 () Bool)

(assert (=> b!101301 (= c!17441 (not (= (bvand (extraKeys!2336 newMap!16) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun bm!10487 () Bool)

(declare-fun call!10491 () ListLongMap!1561)

(declare-fun call!10494 () ListLongMap!1561)

(assert (=> bm!10487 (= call!10491 call!10494)))

(declare-fun bm!10488 () Bool)

(declare-fun call!10489 () ListLongMap!1561)

(assert (=> bm!10488 (= call!10494 call!10489)))

(declare-fun b!101302 () Bool)

(assert (=> b!101302 (= e!65955 call!10491)))

(declare-fun b!101303 () Bool)

(assert (=> b!101303 (= e!65948 (= (apply!94 lt!51277 #b0000000000000000000000000000000000000000000000000000000000000000) (zeroValue!2402 newMap!16)))))

(declare-fun b!101304 () Bool)

(assert (=> b!101304 (= e!65951 call!10490)))

(declare-fun bm!10489 () Bool)

(declare-fun call!10488 () Bool)

(assert (=> bm!10489 (= call!10488 (contains!813 lt!51277 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!101305 () Bool)

(assert (=> b!101305 (= e!65949 (validKeyInArray!0 (select (arr!2026 (_keys!4221 newMap!16)) #b00000000000000000000000000000000)))))

(declare-fun b!101306 () Bool)

(assert (=> b!101306 (= e!65956 e!65947)))

(declare-fun res!50750 () Bool)

(assert (=> b!101306 (= res!50750 call!10488)))

(assert (=> b!101306 (=> (not res!50750) (not e!65947))))

(declare-fun b!101307 () Bool)

(declare-fun c!17440 () Bool)

(assert (=> b!101307 (= c!17440 (and (not (= (bvand (extraKeys!2336 newMap!16) #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand (extraKeys!2336 newMap!16) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!101307 (= e!65951 e!65955)))

(declare-fun d!27479 () Bool)

(assert (=> d!27479 e!65953))

(declare-fun res!50749 () Bool)

(assert (=> d!27479 (=> (not res!50749) (not e!65953))))

(assert (=> d!27479 (= res!50749 (or (bvsge #b00000000000000000000000000000000 (size!2278 (_keys!4221 newMap!16))) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!2278 (_keys!4221 newMap!16))))))))

(declare-fun lt!51278 () ListLongMap!1561)

(assert (=> d!27479 (= lt!51277 lt!51278)))

(declare-fun lt!51281 () Unit!3091)

(declare-fun e!65957 () Unit!3091)

(assert (=> d!27479 (= lt!51281 e!65957)))

(declare-fun c!17439 () Bool)

(assert (=> d!27479 (= c!17439 e!65958)))

(declare-fun res!50751 () Bool)

(assert (=> d!27479 (=> (not res!50751) (not e!65958))))

(assert (=> d!27479 (= res!50751 (bvslt #b00000000000000000000000000000000 (size!2278 (_keys!4221 newMap!16))))))

(assert (=> d!27479 (= lt!51278 e!65952)))

(declare-fun c!17436 () Bool)

(assert (=> d!27479 (= c!17436 (and (not (= (bvand (extraKeys!2336 newMap!16) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (extraKeys!2336 newMap!16) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!27479 (validMask!0 (mask!6640 newMap!16))))

(assert (=> d!27479 (= (getCurrentListMap!476 (_keys!4221 newMap!16) (_values!2506 newMap!16) (mask!6640 newMap!16) (extraKeys!2336 newMap!16) (zeroValue!2402 newMap!16) (minValue!2402 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2523 newMap!16)) lt!51277)))

(declare-fun bm!10485 () Bool)

(assert (=> bm!10485 (= call!10489 (getCurrentListMapNoExtraKeys!104 (_keys!4221 newMap!16) (_values!2506 newMap!16) (mask!6640 newMap!16) (extraKeys!2336 newMap!16) (zeroValue!2402 newMap!16) (minValue!2402 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2523 newMap!16)))))

(declare-fun bm!10490 () Bool)

(assert (=> bm!10490 (= call!10492 (contains!813 lt!51277 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!101308 () Bool)

(assert (=> b!101308 (= e!65950 (not call!10492))))

(declare-fun b!101309 () Bool)

(assert (=> b!101309 (= e!65956 (not call!10488))))

(declare-fun b!101310 () Bool)

(assert (=> b!101310 (= e!65952 (+!140 call!10493 (tuple2!2371 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2402 newMap!16))))))

(declare-fun b!101311 () Bool)

(assert (=> b!101311 (= e!65954 e!65946)))

(declare-fun res!50744 () Bool)

(assert (=> b!101311 (=> (not res!50744) (not e!65946))))

(assert (=> b!101311 (= res!50744 (contains!813 lt!51277 (select (arr!2026 (_keys!4221 newMap!16)) #b00000000000000000000000000000000)))))

(assert (=> b!101311 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!2278 (_keys!4221 newMap!16))))))

(declare-fun b!101312 () Bool)

(declare-fun Unit!3103 () Unit!3091)

(assert (=> b!101312 (= e!65957 Unit!3103)))

(declare-fun bm!10491 () Bool)

(assert (=> bm!10491 (= call!10493 (+!140 (ite c!17436 call!10489 (ite c!17438 call!10494 call!10491)) (ite (or c!17436 c!17438) (tuple2!2371 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2402 newMap!16)) (tuple2!2371 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2402 newMap!16)))))))

(declare-fun b!101313 () Bool)

(declare-fun lt!51262 () Unit!3091)

(assert (=> b!101313 (= e!65957 lt!51262)))

(declare-fun lt!51267 () ListLongMap!1561)

(assert (=> b!101313 (= lt!51267 (getCurrentListMapNoExtraKeys!104 (_keys!4221 newMap!16) (_values!2506 newMap!16) (mask!6640 newMap!16) (extraKeys!2336 newMap!16) (zeroValue!2402 newMap!16) (minValue!2402 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2523 newMap!16)))))

(declare-fun lt!51276 () (_ BitVec 64))

(assert (=> b!101313 (= lt!51276 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!51280 () (_ BitVec 64))

(assert (=> b!101313 (= lt!51280 (select (arr!2026 (_keys!4221 newMap!16)) #b00000000000000000000000000000000))))

(declare-fun lt!51282 () Unit!3091)

(assert (=> b!101313 (= lt!51282 (addStillContains!70 lt!51267 lt!51276 (zeroValue!2402 newMap!16) lt!51280))))

(assert (=> b!101313 (contains!813 (+!140 lt!51267 (tuple2!2371 lt!51276 (zeroValue!2402 newMap!16))) lt!51280)))

(declare-fun lt!51275 () Unit!3091)

(assert (=> b!101313 (= lt!51275 lt!51282)))

(declare-fun lt!51271 () ListLongMap!1561)

(assert (=> b!101313 (= lt!51271 (getCurrentListMapNoExtraKeys!104 (_keys!4221 newMap!16) (_values!2506 newMap!16) (mask!6640 newMap!16) (extraKeys!2336 newMap!16) (zeroValue!2402 newMap!16) (minValue!2402 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2523 newMap!16)))))

(declare-fun lt!51263 () (_ BitVec 64))

(assert (=> b!101313 (= lt!51263 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!51273 () (_ BitVec 64))

(assert (=> b!101313 (= lt!51273 (select (arr!2026 (_keys!4221 newMap!16)) #b00000000000000000000000000000000))))

(declare-fun lt!51279 () Unit!3091)

(assert (=> b!101313 (= lt!51279 (addApplyDifferent!70 lt!51271 lt!51263 (minValue!2402 newMap!16) lt!51273))))

(assert (=> b!101313 (= (apply!94 (+!140 lt!51271 (tuple2!2371 lt!51263 (minValue!2402 newMap!16))) lt!51273) (apply!94 lt!51271 lt!51273))))

(declare-fun lt!51268 () Unit!3091)

(assert (=> b!101313 (= lt!51268 lt!51279)))

(declare-fun lt!51274 () ListLongMap!1561)

(assert (=> b!101313 (= lt!51274 (getCurrentListMapNoExtraKeys!104 (_keys!4221 newMap!16) (_values!2506 newMap!16) (mask!6640 newMap!16) (extraKeys!2336 newMap!16) (zeroValue!2402 newMap!16) (minValue!2402 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2523 newMap!16)))))

(declare-fun lt!51270 () (_ BitVec 64))

(assert (=> b!101313 (= lt!51270 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!51264 () (_ BitVec 64))

(assert (=> b!101313 (= lt!51264 (select (arr!2026 (_keys!4221 newMap!16)) #b00000000000000000000000000000000))))

(declare-fun lt!51272 () Unit!3091)

(assert (=> b!101313 (= lt!51272 (addApplyDifferent!70 lt!51274 lt!51270 (zeroValue!2402 newMap!16) lt!51264))))

(assert (=> b!101313 (= (apply!94 (+!140 lt!51274 (tuple2!2371 lt!51270 (zeroValue!2402 newMap!16))) lt!51264) (apply!94 lt!51274 lt!51264))))

(declare-fun lt!51269 () Unit!3091)

(assert (=> b!101313 (= lt!51269 lt!51272)))

(declare-fun lt!51265 () ListLongMap!1561)

(assert (=> b!101313 (= lt!51265 (getCurrentListMapNoExtraKeys!104 (_keys!4221 newMap!16) (_values!2506 newMap!16) (mask!6640 newMap!16) (extraKeys!2336 newMap!16) (zeroValue!2402 newMap!16) (minValue!2402 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2523 newMap!16)))))

(declare-fun lt!51266 () (_ BitVec 64))

(assert (=> b!101313 (= lt!51266 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!51261 () (_ BitVec 64))

(assert (=> b!101313 (= lt!51261 (select (arr!2026 (_keys!4221 newMap!16)) #b00000000000000000000000000000000))))

(assert (=> b!101313 (= lt!51262 (addApplyDifferent!70 lt!51265 lt!51266 (minValue!2402 newMap!16) lt!51261))))

(assert (=> b!101313 (= (apply!94 (+!140 lt!51265 (tuple2!2371 lt!51266 (minValue!2402 newMap!16))) lt!51261) (apply!94 lt!51265 lt!51261))))

(assert (= (and d!27479 c!17436) b!101310))

(assert (= (and d!27479 (not c!17436)) b!101298))

(assert (= (and b!101298 c!17438) b!101304))

(assert (= (and b!101298 (not c!17438)) b!101307))

(assert (= (and b!101307 c!17440) b!101299))

(assert (= (and b!101307 (not c!17440)) b!101302))

(assert (= (or b!101299 b!101302) bm!10487))

(assert (= (or b!101304 bm!10487) bm!10488))

(assert (= (or b!101304 b!101299) bm!10486))

(assert (= (or b!101310 bm!10488) bm!10485))

(assert (= (or b!101310 bm!10486) bm!10491))

(assert (= (and d!27479 res!50751) b!101293))

(assert (= (and d!27479 c!17439) b!101313))

(assert (= (and d!27479 (not c!17439)) b!101312))

(assert (= (and d!27479 res!50749) b!101296))

(assert (= (and b!101296 res!50746) b!101305))

(assert (= (and b!101296 (not res!50745)) b!101311))

(assert (= (and b!101311 res!50744) b!101300))

(assert (= (and b!101296 res!50743) b!101301))

(assert (= (and b!101301 c!17441) b!101295))

(assert (= (and b!101301 (not c!17441)) b!101308))

(assert (= (and b!101295 res!50748) b!101303))

(assert (= (or b!101295 b!101308) bm!10490))

(assert (= (and b!101301 res!50747) b!101294))

(assert (= (and b!101294 c!17437) b!101306))

(assert (= (and b!101294 (not c!17437)) b!101309))

(assert (= (and b!101306 res!50750) b!101297))

(assert (= (or b!101306 b!101309) bm!10489))

(declare-fun b_lambda!4549 () Bool)

(assert (=> (not b_lambda!4549) (not b!101300)))

(declare-fun t!5631 () Bool)

(declare-fun tb!1981 () Bool)

(assert (=> (and b!100776 (= (defaultEntry!2523 (v!2833 (underlying!345 thiss!992))) (defaultEntry!2523 newMap!16)) t!5631) tb!1981))

(declare-fun result!3343 () Bool)

(assert (=> tb!1981 (= result!3343 tp_is_empty!2643)))

(assert (=> b!101300 t!5631))

(declare-fun b_and!6241 () Bool)

(assert (= b_and!6237 (and (=> t!5631 result!3343) b_and!6241)))

(declare-fun t!5633 () Bool)

(declare-fun tb!1983 () Bool)

(assert (=> (and b!100781 (= (defaultEntry!2523 newMap!16) (defaultEntry!2523 newMap!16)) t!5633) tb!1983))

(declare-fun result!3345 () Bool)

(assert (= result!3345 result!3343))

(assert (=> b!101300 t!5633))

(declare-fun b_and!6243 () Bool)

(assert (= b_and!6239 (and (=> t!5633 result!3345) b_and!6243)))

(assert (=> b!101293 m!111937))

(assert (=> b!101293 m!111937))

(assert (=> b!101293 m!111945))

(declare-fun m!112163 () Bool)

(assert (=> b!101300 m!112163))

(declare-fun m!112165 () Bool)

(assert (=> b!101300 m!112165))

(assert (=> b!101300 m!112163))

(declare-fun m!112167 () Bool)

(assert (=> b!101300 m!112167))

(assert (=> b!101300 m!112165))

(assert (=> b!101300 m!111937))

(assert (=> b!101300 m!111937))

(declare-fun m!112169 () Bool)

(assert (=> b!101300 m!112169))

(declare-fun m!112171 () Bool)

(assert (=> bm!10490 m!112171))

(assert (=> b!101311 m!111937))

(assert (=> b!101311 m!111937))

(declare-fun m!112173 () Bool)

(assert (=> b!101311 m!112173))

(declare-fun m!112175 () Bool)

(assert (=> b!101310 m!112175))

(assert (=> d!27479 m!111929))

(declare-fun m!112177 () Bool)

(assert (=> b!101297 m!112177))

(assert (=> b!101305 m!111937))

(assert (=> b!101305 m!111937))

(assert (=> b!101305 m!111945))

(declare-fun m!112179 () Bool)

(assert (=> bm!10485 m!112179))

(declare-fun m!112181 () Bool)

(assert (=> bm!10489 m!112181))

(declare-fun m!112183 () Bool)

(assert (=> b!101303 m!112183))

(declare-fun m!112185 () Bool)

(assert (=> bm!10491 m!112185))

(declare-fun m!112187 () Bool)

(assert (=> b!101313 m!112187))

(declare-fun m!112189 () Bool)

(assert (=> b!101313 m!112189))

(declare-fun m!112191 () Bool)

(assert (=> b!101313 m!112191))

(declare-fun m!112193 () Bool)

(assert (=> b!101313 m!112193))

(declare-fun m!112195 () Bool)

(assert (=> b!101313 m!112195))

(declare-fun m!112197 () Bool)

(assert (=> b!101313 m!112197))

(declare-fun m!112199 () Bool)

(assert (=> b!101313 m!112199))

(assert (=> b!101313 m!111937))

(assert (=> b!101313 m!112189))

(declare-fun m!112201 () Bool)

(assert (=> b!101313 m!112201))

(declare-fun m!112203 () Bool)

(assert (=> b!101313 m!112203))

(assert (=> b!101313 m!112179))

(assert (=> b!101313 m!112197))

(assert (=> b!101313 m!112193))

(declare-fun m!112205 () Bool)

(assert (=> b!101313 m!112205))

(declare-fun m!112207 () Bool)

(assert (=> b!101313 m!112207))

(declare-fun m!112209 () Bool)

(assert (=> b!101313 m!112209))

(assert (=> b!101313 m!112187))

(declare-fun m!112211 () Bool)

(assert (=> b!101313 m!112211))

(declare-fun m!112213 () Bool)

(assert (=> b!101313 m!112213))

(declare-fun m!112215 () Bool)

(assert (=> b!101313 m!112215))

(assert (=> b!100953 d!27479))

(assert (=> bm!10435 d!27365))

(declare-fun d!27481 () Bool)

(assert (=> d!27481 (= (map!1263 (_2!1196 lt!51057)) (getCurrentListMap!476 (_keys!4221 (_2!1196 lt!51057)) (_values!2506 (_2!1196 lt!51057)) (mask!6640 (_2!1196 lt!51057)) (extraKeys!2336 (_2!1196 lt!51057)) (zeroValue!2402 (_2!1196 lt!51057)) (minValue!2402 (_2!1196 lt!51057)) #b00000000000000000000000000000000 (defaultEntry!2523 (_2!1196 lt!51057))))))

(declare-fun bs!4188 () Bool)

(assert (= bs!4188 d!27481))

(declare-fun m!112217 () Bool)

(assert (=> bs!4188 m!112217))

(assert (=> bm!10436 d!27481))

(declare-fun d!27483 () Bool)

(assert (=> d!27483 (= (+!140 (getCurrentListMap!476 (_keys!4221 newMap!16) (_values!2506 newMap!16) (mask!6640 newMap!16) (extraKeys!2336 newMap!16) (zeroValue!2402 newMap!16) (minValue!2402 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2523 newMap!16)) (tuple2!2371 #b0000000000000000000000000000000000000000000000000000000000000000 (get!1310 (select (arr!2027 (_values!2506 (v!2833 (underlying!345 thiss!992)))) from!355) (dynLambda!382 (defaultEntry!2523 (v!2833 (underlying!345 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (getCurrentListMap!476 (_keys!4221 newMap!16) (_values!2506 newMap!16) (mask!6640 newMap!16) lt!51047 (get!1310 (select (arr!2027 (_values!2506 (v!2833 (underlying!345 thiss!992)))) from!355) (dynLambda!382 (defaultEntry!2523 (v!2833 (underlying!345 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (minValue!2402 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2523 newMap!16)))))

(declare-fun lt!51285 () Unit!3091)

(declare-fun choose!631 (array!4268 array!4270 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!3171 V!3171 V!3171 Int) Unit!3091)

(assert (=> d!27483 (= lt!51285 (choose!631 (_keys!4221 newMap!16) (_values!2506 newMap!16) (mask!6640 newMap!16) (extraKeys!2336 newMap!16) lt!51047 (zeroValue!2402 newMap!16) (get!1310 (select (arr!2027 (_values!2506 (v!2833 (underlying!345 thiss!992)))) from!355) (dynLambda!382 (defaultEntry!2523 (v!2833 (underlying!345 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (minValue!2402 newMap!16) (defaultEntry!2523 newMap!16)))))

(assert (=> d!27483 (validMask!0 (mask!6640 newMap!16))))

(assert (=> d!27483 (= (lemmaChangeZeroKeyThenAddPairToListMap!43 (_keys!4221 newMap!16) (_values!2506 newMap!16) (mask!6640 newMap!16) (extraKeys!2336 newMap!16) lt!51047 (zeroValue!2402 newMap!16) (get!1310 (select (arr!2027 (_values!2506 (v!2833 (underlying!345 thiss!992)))) from!355) (dynLambda!382 (defaultEntry!2523 (v!2833 (underlying!345 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (minValue!2402 newMap!16) (defaultEntry!2523 newMap!16)) lt!51285)))

(declare-fun bs!4189 () Bool)

(assert (= bs!4189 d!27483))

(assert (=> bs!4189 m!111655))

(declare-fun m!112219 () Bool)

(assert (=> bs!4189 m!112219))

(assert (=> bs!4189 m!111655))

(declare-fun m!112221 () Bool)

(assert (=> bs!4189 m!112221))

(assert (=> bs!4189 m!111929))

(assert (=> bs!4189 m!111757))

(declare-fun m!112223 () Bool)

(assert (=> bs!4189 m!112223))

(assert (=> bs!4189 m!111757))

(assert (=> b!100980 d!27483))

(declare-fun b!101314 () Bool)

(declare-fun e!65959 () Bool)

(declare-fun call!10495 () Bool)

(assert (=> b!101314 (= e!65959 call!10495)))

(declare-fun d!27485 () Bool)

(declare-fun res!50753 () Bool)

(declare-fun e!65960 () Bool)

(assert (=> d!27485 (=> res!50753 e!65960)))

(assert (=> d!27485 (= res!50753 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!2278 (_keys!4221 (v!2833 (underlying!345 thiss!992))))))))

(assert (=> d!27485 (= (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (_keys!4221 (v!2833 (underlying!345 thiss!992))) (mask!6640 (v!2833 (underlying!345 thiss!992)))) e!65960)))

(declare-fun bm!10492 () Bool)

(assert (=> bm!10492 (= call!10495 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (_keys!4221 (v!2833 (underlying!345 thiss!992))) (mask!6640 (v!2833 (underlying!345 thiss!992)))))))

(declare-fun b!101315 () Bool)

(declare-fun e!65961 () Bool)

(assert (=> b!101315 (= e!65961 e!65959)))

(declare-fun lt!51286 () (_ BitVec 64))

(assert (=> b!101315 (= lt!51286 (select (arr!2026 (_keys!4221 (v!2833 (underlying!345 thiss!992)))) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(declare-fun lt!51288 () Unit!3091)

(assert (=> b!101315 (= lt!51288 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!4221 (v!2833 (underlying!345 thiss!992))) lt!51286 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (=> b!101315 (arrayContainsKey!0 (_keys!4221 (v!2833 (underlying!345 thiss!992))) lt!51286 #b00000000000000000000000000000000)))

(declare-fun lt!51287 () Unit!3091)

(assert (=> b!101315 (= lt!51287 lt!51288)))

(declare-fun res!50752 () Bool)

(assert (=> b!101315 (= res!50752 (= (seekEntryOrOpen!0 (select (arr!2026 (_keys!4221 (v!2833 (underlying!345 thiss!992)))) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) (_keys!4221 (v!2833 (underlying!345 thiss!992))) (mask!6640 (v!2833 (underlying!345 thiss!992)))) (Found!265 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(assert (=> b!101315 (=> (not res!50752) (not e!65959))))

(declare-fun b!101316 () Bool)

(assert (=> b!101316 (= e!65961 call!10495)))

(declare-fun b!101317 () Bool)

(assert (=> b!101317 (= e!65960 e!65961)))

(declare-fun c!17442 () Bool)

(assert (=> b!101317 (= c!17442 (validKeyInArray!0 (select (arr!2026 (_keys!4221 (v!2833 (underlying!345 thiss!992)))) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(assert (= (and d!27485 (not res!50753)) b!101317))

(assert (= (and b!101317 c!17442) b!101315))

(assert (= (and b!101317 (not c!17442)) b!101316))

(assert (= (and b!101315 res!50752) b!101314))

(assert (= (or b!101314 b!101316) bm!10492))

(declare-fun m!112225 () Bool)

(assert (=> bm!10492 m!112225))

(declare-fun m!112227 () Bool)

(assert (=> b!101315 m!112227))

(declare-fun m!112229 () Bool)

(assert (=> b!101315 m!112229))

(declare-fun m!112231 () Bool)

(assert (=> b!101315 m!112231))

(assert (=> b!101315 m!112227))

(declare-fun m!112233 () Bool)

(assert (=> b!101315 m!112233))

(assert (=> b!101317 m!112227))

(assert (=> b!101317 m!112227))

(declare-fun m!112235 () Bool)

(assert (=> b!101317 m!112235))

(assert (=> bm!10450 d!27485))

(declare-fun d!27487 () Bool)

(assert (=> d!27487 (= (apply!94 lt!51131 (select (arr!2026 (_keys!4221 (v!2833 (underlying!345 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))) (get!1313 (getValueByKey!151 (toList!796 lt!51131) (select (arr!2026 (_keys!4221 (v!2833 (underlying!345 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)))))))

(declare-fun bs!4190 () Bool)

(assert (= bs!4190 d!27487))

(assert (=> bs!4190 m!111825))

(declare-fun m!112237 () Bool)

(assert (=> bs!4190 m!112237))

(assert (=> bs!4190 m!112237))

(declare-fun m!112239 () Bool)

(assert (=> bs!4190 m!112239))

(assert (=> b!101058 d!27487))

(declare-fun d!27489 () Bool)

(declare-fun c!17443 () Bool)

(assert (=> d!27489 (= c!17443 ((_ is ValueCellFull!978) (select (arr!2027 (_values!2506 (v!2833 (underlying!345 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))))))

(declare-fun e!65962 () V!3171)

(assert (=> d!27489 (= (get!1310 (select (arr!2027 (_values!2506 (v!2833 (underlying!345 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (dynLambda!382 (defaultEntry!2523 (v!2833 (underlying!345 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) e!65962)))

(declare-fun b!101318 () Bool)

(assert (=> b!101318 (= e!65962 (get!1311 (select (arr!2027 (_values!2506 (v!2833 (underlying!345 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (dynLambda!382 (defaultEntry!2523 (v!2833 (underlying!345 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!101319 () Bool)

(assert (=> b!101319 (= e!65962 (get!1312 (select (arr!2027 (_values!2506 (v!2833 (underlying!345 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (dynLambda!382 (defaultEntry!2523 (v!2833 (underlying!345 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!27489 c!17443) b!101318))

(assert (= (and d!27489 (not c!17443)) b!101319))

(assert (=> b!101318 m!111829))

(assert (=> b!101318 m!111653))

(declare-fun m!112241 () Bool)

(assert (=> b!101318 m!112241))

(assert (=> b!101319 m!111829))

(assert (=> b!101319 m!111653))

(declare-fun m!112243 () Bool)

(assert (=> b!101319 m!112243))

(assert (=> b!101058 d!27489))

(assert (=> d!27375 d!27381))

(declare-fun d!27491 () Bool)

(assert (=> d!27491 (arrayNoDuplicates!0 (_keys!4221 (v!2833 (underlying!345 thiss!992))) from!355 Nil!1616)))

(assert (=> d!27491 true))

(declare-fun _$71!138 () Unit!3091)

(assert (=> d!27491 (= (choose!39 (_keys!4221 (v!2833 (underlying!345 thiss!992))) #b00000000000000000000000000000000 from!355) _$71!138)))

(declare-fun bs!4191 () Bool)

(assert (= bs!4191 d!27491))

(assert (=> bs!4191 m!111669))

(assert (=> d!27375 d!27491))

(declare-fun d!27493 () Bool)

(assert (=> d!27493 (= (+!140 (getCurrentListMap!476 (_keys!4221 newMap!16) (_values!2506 newMap!16) (mask!6640 newMap!16) (extraKeys!2336 newMap!16) (zeroValue!2402 newMap!16) (minValue!2402 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2523 newMap!16)) (tuple2!2371 #b1000000000000000000000000000000000000000000000000000000000000000 (get!1310 (select (arr!2027 (_values!2506 (v!2833 (underlying!345 thiss!992)))) from!355) (dynLambda!382 (defaultEntry!2523 (v!2833 (underlying!345 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (getCurrentListMap!476 (_keys!4221 newMap!16) (_values!2506 newMap!16) (mask!6640 newMap!16) lt!51044 (zeroValue!2402 newMap!16) (get!1310 (select (arr!2027 (_values!2506 (v!2833 (underlying!345 thiss!992)))) from!355) (dynLambda!382 (defaultEntry!2523 (v!2833 (underlying!345 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) #b00000000000000000000000000000000 (defaultEntry!2523 newMap!16)))))

(declare-fun lt!51291 () Unit!3091)

(declare-fun choose!632 (array!4268 array!4270 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!3171 V!3171 V!3171 Int) Unit!3091)

(assert (=> d!27493 (= lt!51291 (choose!632 (_keys!4221 newMap!16) (_values!2506 newMap!16) (mask!6640 newMap!16) (extraKeys!2336 newMap!16) lt!51044 (zeroValue!2402 newMap!16) (minValue!2402 newMap!16) (get!1310 (select (arr!2027 (_values!2506 (v!2833 (underlying!345 thiss!992)))) from!355) (dynLambda!382 (defaultEntry!2523 (v!2833 (underlying!345 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (defaultEntry!2523 newMap!16)))))

(assert (=> d!27493 (validMask!0 (mask!6640 newMap!16))))

(assert (=> d!27493 (= (lemmaChangeLongMinValueKeyThenAddPairToListMap!43 (_keys!4221 newMap!16) (_values!2506 newMap!16) (mask!6640 newMap!16) (extraKeys!2336 newMap!16) lt!51044 (zeroValue!2402 newMap!16) (minValue!2402 newMap!16) (get!1310 (select (arr!2027 (_values!2506 (v!2833 (underlying!345 thiss!992)))) from!355) (dynLambda!382 (defaultEntry!2523 (v!2833 (underlying!345 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (defaultEntry!2523 newMap!16)) lt!51291)))

(declare-fun bs!4192 () Bool)

(assert (= bs!4192 d!27493))

(assert (=> bs!4192 m!111655))

(declare-fun m!112245 () Bool)

(assert (=> bs!4192 m!112245))

(assert (=> bs!4192 m!111655))

(declare-fun m!112247 () Bool)

(assert (=> bs!4192 m!112247))

(assert (=> bs!4192 m!111757))

(assert (=> bs!4192 m!111929))

(assert (=> bs!4192 m!111757))

(declare-fun m!112249 () Bool)

(assert (=> bs!4192 m!112249))

(assert (=> b!100958 d!27493))

(declare-fun b!101328 () Bool)

(declare-fun e!65968 () (_ BitVec 32))

(declare-fun e!65967 () (_ BitVec 32))

(assert (=> b!101328 (= e!65968 e!65967)))

(declare-fun c!17449 () Bool)

(assert (=> b!101328 (= c!17449 (validKeyInArray!0 (select (arr!2026 (_keys!4221 newMap!16)) #b00000000000000000000000000000000)))))

(declare-fun b!101329 () Bool)

(assert (=> b!101329 (= e!65968 #b00000000000000000000000000000000)))

(declare-fun d!27495 () Bool)

(declare-fun lt!51294 () (_ BitVec 32))

(assert (=> d!27495 (and (bvsge lt!51294 #b00000000000000000000000000000000) (bvsle lt!51294 (bvsub (size!2278 (_keys!4221 newMap!16)) #b00000000000000000000000000000000)))))

(assert (=> d!27495 (= lt!51294 e!65968)))

(declare-fun c!17448 () Bool)

(assert (=> d!27495 (= c!17448 (bvsge #b00000000000000000000000000000000 (size!2278 (_keys!4221 newMap!16))))))

(assert (=> d!27495 (and (bvsle #b00000000000000000000000000000000 (size!2278 (_keys!4221 newMap!16))) (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvsle (size!2278 (_keys!4221 newMap!16)) (size!2278 (_keys!4221 newMap!16))))))

(assert (=> d!27495 (= (arrayCountValidKeys!0 (_keys!4221 newMap!16) #b00000000000000000000000000000000 (size!2278 (_keys!4221 newMap!16))) lt!51294)))

(declare-fun bm!10495 () Bool)

(declare-fun call!10498 () (_ BitVec 32))

(assert (=> bm!10495 (= call!10498 (arrayCountValidKeys!0 (_keys!4221 newMap!16) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!2278 (_keys!4221 newMap!16))))))

(declare-fun b!101330 () Bool)

(assert (=> b!101330 (= e!65967 (bvadd #b00000000000000000000000000000001 call!10498))))

(declare-fun b!101331 () Bool)

(assert (=> b!101331 (= e!65967 call!10498)))

(assert (= (and d!27495 c!17448) b!101329))

(assert (= (and d!27495 (not c!17448)) b!101328))

(assert (= (and b!101328 c!17449) b!101330))

(assert (= (and b!101328 (not c!17449)) b!101331))

(assert (= (or b!101330 b!101331) bm!10495))

(assert (=> b!101328 m!111937))

(assert (=> b!101328 m!111937))

(assert (=> b!101328 m!111945))

(declare-fun m!112251 () Bool)

(assert (=> bm!10495 m!112251))

(assert (=> b!100853 d!27495))

(declare-fun b!101332 () Bool)

(declare-fun e!65981 () Bool)

(assert (=> b!101332 (= e!65981 (validKeyInArray!0 (select (arr!2026 (_keys!4221 newMap!16)) #b00000000000000000000000000000000)))))

(declare-fun b!101333 () Bool)

(declare-fun e!65976 () Bool)

(declare-fun e!65979 () Bool)

(assert (=> b!101333 (= e!65976 e!65979)))

(declare-fun c!17451 () Bool)

(assert (=> b!101333 (= c!17451 (not (= (bvand (ite c!17360 (ite c!17361 (extraKeys!2336 newMap!16) lt!51044) (extraKeys!2336 newMap!16)) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!101334 () Bool)

(declare-fun e!65973 () Bool)

(declare-fun e!65971 () Bool)

(assert (=> b!101334 (= e!65973 e!65971)))

(declare-fun res!50759 () Bool)

(declare-fun call!10503 () Bool)

(assert (=> b!101334 (= res!50759 call!10503)))

(assert (=> b!101334 (=> (not res!50759) (not e!65971))))

(declare-fun b!101335 () Bool)

(declare-fun res!50754 () Bool)

(assert (=> b!101335 (=> (not res!50754) (not e!65976))))

(declare-fun e!65977 () Bool)

(assert (=> b!101335 (= res!50754 e!65977)))

(declare-fun res!50756 () Bool)

(assert (=> b!101335 (=> res!50756 e!65977)))

(declare-fun e!65972 () Bool)

(assert (=> b!101335 (= res!50756 (not e!65972))))

(declare-fun res!50757 () Bool)

(assert (=> b!101335 (=> (not res!50757) (not e!65972))))

(assert (=> b!101335 (= res!50757 (bvslt #b00000000000000000000000000000000 (size!2278 (_keys!4221 newMap!16))))))

(declare-fun e!65970 () Bool)

(declare-fun lt!51311 () ListLongMap!1561)

(declare-fun b!101336 () Bool)

(assert (=> b!101336 (= e!65970 (= (apply!94 lt!51311 #b1000000000000000000000000000000000000000000000000000000000000000) (ite c!17360 (ite c!17361 (minValue!2402 newMap!16) (get!1310 (select (arr!2027 (_values!2506 (v!2833 (underlying!345 thiss!992)))) from!355) (dynLambda!382 (defaultEntry!2523 (v!2833 (underlying!345 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (minValue!2402 newMap!16))))))

(declare-fun b!101337 () Bool)

(declare-fun e!65975 () ListLongMap!1561)

(declare-fun e!65974 () ListLongMap!1561)

(assert (=> b!101337 (= e!65975 e!65974)))

(declare-fun c!17452 () Bool)

(assert (=> b!101337 (= c!17452 (and (not (= (bvand (ite c!17360 (ite c!17361 (extraKeys!2336 newMap!16) lt!51044) (extraKeys!2336 newMap!16)) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand (ite c!17360 (ite c!17361 (extraKeys!2336 newMap!16) lt!51044) (extraKeys!2336 newMap!16)) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!101338 () Bool)

(declare-fun e!65978 () ListLongMap!1561)

(declare-fun call!10501 () ListLongMap!1561)

(assert (=> b!101338 (= e!65978 call!10501)))

(declare-fun b!101339 () Bool)

(declare-fun e!65969 () Bool)

(assert (=> b!101339 (= e!65969 (= (apply!94 lt!51311 (select (arr!2026 (_keys!4221 newMap!16)) #b00000000000000000000000000000000)) (get!1310 (select (arr!2027 (ite (or c!17360 c!17348) (_values!2506 newMap!16) lt!51056)) #b00000000000000000000000000000000) (dynLambda!382 (defaultEntry!2523 newMap!16) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!101339 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!2279 (ite (or c!17360 c!17348) (_values!2506 newMap!16) lt!51056))))))

(assert (=> b!101339 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!2278 (_keys!4221 newMap!16))))))

(declare-fun bm!10497 () Bool)

(declare-fun call!10504 () ListLongMap!1561)

(assert (=> bm!10497 (= call!10501 call!10504)))

(declare-fun b!101340 () Bool)

(declare-fun res!50758 () Bool)

(assert (=> b!101340 (=> (not res!50758) (not e!65976))))

(assert (=> b!101340 (= res!50758 e!65973)))

(declare-fun c!17455 () Bool)

(assert (=> b!101340 (= c!17455 (not (= (bvand (ite c!17360 (ite c!17361 (extraKeys!2336 newMap!16) lt!51044) (extraKeys!2336 newMap!16)) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun bm!10498 () Bool)

(declare-fun call!10502 () ListLongMap!1561)

(declare-fun call!10505 () ListLongMap!1561)

(assert (=> bm!10498 (= call!10502 call!10505)))

(declare-fun bm!10499 () Bool)

(declare-fun call!10500 () ListLongMap!1561)

(assert (=> bm!10499 (= call!10505 call!10500)))

(declare-fun b!101341 () Bool)

(assert (=> b!101341 (= e!65978 call!10502)))

(declare-fun b!101342 () Bool)

(assert (=> b!101342 (= e!65971 (= (apply!94 lt!51311 #b0000000000000000000000000000000000000000000000000000000000000000) (zeroValue!2402 newMap!16)))))

(declare-fun b!101343 () Bool)

(assert (=> b!101343 (= e!65974 call!10501)))

(declare-fun bm!10500 () Bool)

(declare-fun call!10499 () Bool)

(assert (=> bm!10500 (= call!10499 (contains!813 lt!51311 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!101344 () Bool)

(assert (=> b!101344 (= e!65972 (validKeyInArray!0 (select (arr!2026 (_keys!4221 newMap!16)) #b00000000000000000000000000000000)))))

(declare-fun b!101345 () Bool)

(assert (=> b!101345 (= e!65979 e!65970)))

(declare-fun res!50761 () Bool)

(assert (=> b!101345 (= res!50761 call!10499)))

(assert (=> b!101345 (=> (not res!50761) (not e!65970))))

(declare-fun b!101346 () Bool)

(declare-fun c!17454 () Bool)

(assert (=> b!101346 (= c!17454 (and (not (= (bvand (ite c!17360 (ite c!17361 (extraKeys!2336 newMap!16) lt!51044) (extraKeys!2336 newMap!16)) #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand (ite c!17360 (ite c!17361 (extraKeys!2336 newMap!16) lt!51044) (extraKeys!2336 newMap!16)) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!101346 (= e!65974 e!65978)))

(declare-fun d!27497 () Bool)

(assert (=> d!27497 e!65976))

(declare-fun res!50760 () Bool)

(assert (=> d!27497 (=> (not res!50760) (not e!65976))))

(assert (=> d!27497 (= res!50760 (or (bvsge #b00000000000000000000000000000000 (size!2278 (_keys!4221 newMap!16))) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!2278 (_keys!4221 newMap!16))))))))

(declare-fun lt!51312 () ListLongMap!1561)

(assert (=> d!27497 (= lt!51311 lt!51312)))

(declare-fun lt!51315 () Unit!3091)

(declare-fun e!65980 () Unit!3091)

(assert (=> d!27497 (= lt!51315 e!65980)))

(declare-fun c!17453 () Bool)

(assert (=> d!27497 (= c!17453 e!65981)))

(declare-fun res!50762 () Bool)

(assert (=> d!27497 (=> (not res!50762) (not e!65981))))

(assert (=> d!27497 (= res!50762 (bvslt #b00000000000000000000000000000000 (size!2278 (_keys!4221 newMap!16))))))

(assert (=> d!27497 (= lt!51312 e!65975)))

(declare-fun c!17450 () Bool)

(assert (=> d!27497 (= c!17450 (and (not (= (bvand (ite c!17360 (ite c!17361 (extraKeys!2336 newMap!16) lt!51044) (extraKeys!2336 newMap!16)) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (ite c!17360 (ite c!17361 (extraKeys!2336 newMap!16) lt!51044) (extraKeys!2336 newMap!16)) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!27497 (validMask!0 (mask!6640 newMap!16))))

(assert (=> d!27497 (= (getCurrentListMap!476 (_keys!4221 newMap!16) (ite (or c!17360 c!17348) (_values!2506 newMap!16) lt!51056) (mask!6640 newMap!16) (ite c!17360 (ite c!17361 (extraKeys!2336 newMap!16) lt!51044) (extraKeys!2336 newMap!16)) (zeroValue!2402 newMap!16) (ite c!17360 (ite c!17361 (minValue!2402 newMap!16) (get!1310 (select (arr!2027 (_values!2506 (v!2833 (underlying!345 thiss!992)))) from!355) (dynLambda!382 (defaultEntry!2523 (v!2833 (underlying!345 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (minValue!2402 newMap!16)) #b00000000000000000000000000000000 (defaultEntry!2523 newMap!16)) lt!51311)))

(declare-fun bm!10496 () Bool)

(assert (=> bm!10496 (= call!10500 (getCurrentListMapNoExtraKeys!104 (_keys!4221 newMap!16) (ite (or c!17360 c!17348) (_values!2506 newMap!16) lt!51056) (mask!6640 newMap!16) (ite c!17360 (ite c!17361 (extraKeys!2336 newMap!16) lt!51044) (extraKeys!2336 newMap!16)) (zeroValue!2402 newMap!16) (ite c!17360 (ite c!17361 (minValue!2402 newMap!16) (get!1310 (select (arr!2027 (_values!2506 (v!2833 (underlying!345 thiss!992)))) from!355) (dynLambda!382 (defaultEntry!2523 (v!2833 (underlying!345 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (minValue!2402 newMap!16)) #b00000000000000000000000000000000 (defaultEntry!2523 newMap!16)))))

(declare-fun bm!10501 () Bool)

(assert (=> bm!10501 (= call!10503 (contains!813 lt!51311 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!101347 () Bool)

(assert (=> b!101347 (= e!65973 (not call!10503))))

(declare-fun b!101348 () Bool)

(assert (=> b!101348 (= e!65979 (not call!10499))))

(declare-fun b!101349 () Bool)

(assert (=> b!101349 (= e!65975 (+!140 call!10504 (tuple2!2371 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!17360 (ite c!17361 (minValue!2402 newMap!16) (get!1310 (select (arr!2027 (_values!2506 (v!2833 (underlying!345 thiss!992)))) from!355) (dynLambda!382 (defaultEntry!2523 (v!2833 (underlying!345 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (minValue!2402 newMap!16)))))))

(declare-fun b!101350 () Bool)

(assert (=> b!101350 (= e!65977 e!65969)))

(declare-fun res!50755 () Bool)

(assert (=> b!101350 (=> (not res!50755) (not e!65969))))

(assert (=> b!101350 (= res!50755 (contains!813 lt!51311 (select (arr!2026 (_keys!4221 newMap!16)) #b00000000000000000000000000000000)))))

(assert (=> b!101350 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!2278 (_keys!4221 newMap!16))))))

(declare-fun b!101351 () Bool)

(declare-fun Unit!3104 () Unit!3091)

(assert (=> b!101351 (= e!65980 Unit!3104)))

(declare-fun bm!10502 () Bool)

(assert (=> bm!10502 (= call!10504 (+!140 (ite c!17450 call!10500 (ite c!17452 call!10505 call!10502)) (ite (or c!17450 c!17452) (tuple2!2371 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2402 newMap!16)) (tuple2!2371 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!17360 (ite c!17361 (minValue!2402 newMap!16) (get!1310 (select (arr!2027 (_values!2506 (v!2833 (underlying!345 thiss!992)))) from!355) (dynLambda!382 (defaultEntry!2523 (v!2833 (underlying!345 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (minValue!2402 newMap!16))))))))

(declare-fun b!101352 () Bool)

(declare-fun lt!51296 () Unit!3091)

(assert (=> b!101352 (= e!65980 lt!51296)))

(declare-fun lt!51301 () ListLongMap!1561)

(assert (=> b!101352 (= lt!51301 (getCurrentListMapNoExtraKeys!104 (_keys!4221 newMap!16) (ite (or c!17360 c!17348) (_values!2506 newMap!16) lt!51056) (mask!6640 newMap!16) (ite c!17360 (ite c!17361 (extraKeys!2336 newMap!16) lt!51044) (extraKeys!2336 newMap!16)) (zeroValue!2402 newMap!16) (ite c!17360 (ite c!17361 (minValue!2402 newMap!16) (get!1310 (select (arr!2027 (_values!2506 (v!2833 (underlying!345 thiss!992)))) from!355) (dynLambda!382 (defaultEntry!2523 (v!2833 (underlying!345 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (minValue!2402 newMap!16)) #b00000000000000000000000000000000 (defaultEntry!2523 newMap!16)))))

(declare-fun lt!51310 () (_ BitVec 64))

(assert (=> b!101352 (= lt!51310 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!51314 () (_ BitVec 64))

(assert (=> b!101352 (= lt!51314 (select (arr!2026 (_keys!4221 newMap!16)) #b00000000000000000000000000000000))))

(declare-fun lt!51316 () Unit!3091)

(assert (=> b!101352 (= lt!51316 (addStillContains!70 lt!51301 lt!51310 (zeroValue!2402 newMap!16) lt!51314))))

(assert (=> b!101352 (contains!813 (+!140 lt!51301 (tuple2!2371 lt!51310 (zeroValue!2402 newMap!16))) lt!51314)))

(declare-fun lt!51309 () Unit!3091)

(assert (=> b!101352 (= lt!51309 lt!51316)))

(declare-fun lt!51305 () ListLongMap!1561)

(assert (=> b!101352 (= lt!51305 (getCurrentListMapNoExtraKeys!104 (_keys!4221 newMap!16) (ite (or c!17360 c!17348) (_values!2506 newMap!16) lt!51056) (mask!6640 newMap!16) (ite c!17360 (ite c!17361 (extraKeys!2336 newMap!16) lt!51044) (extraKeys!2336 newMap!16)) (zeroValue!2402 newMap!16) (ite c!17360 (ite c!17361 (minValue!2402 newMap!16) (get!1310 (select (arr!2027 (_values!2506 (v!2833 (underlying!345 thiss!992)))) from!355) (dynLambda!382 (defaultEntry!2523 (v!2833 (underlying!345 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (minValue!2402 newMap!16)) #b00000000000000000000000000000000 (defaultEntry!2523 newMap!16)))))

(declare-fun lt!51297 () (_ BitVec 64))

(assert (=> b!101352 (= lt!51297 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!51307 () (_ BitVec 64))

(assert (=> b!101352 (= lt!51307 (select (arr!2026 (_keys!4221 newMap!16)) #b00000000000000000000000000000000))))

(declare-fun lt!51313 () Unit!3091)

(assert (=> b!101352 (= lt!51313 (addApplyDifferent!70 lt!51305 lt!51297 (ite c!17360 (ite c!17361 (minValue!2402 newMap!16) (get!1310 (select (arr!2027 (_values!2506 (v!2833 (underlying!345 thiss!992)))) from!355) (dynLambda!382 (defaultEntry!2523 (v!2833 (underlying!345 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (minValue!2402 newMap!16)) lt!51307))))

(assert (=> b!101352 (= (apply!94 (+!140 lt!51305 (tuple2!2371 lt!51297 (ite c!17360 (ite c!17361 (minValue!2402 newMap!16) (get!1310 (select (arr!2027 (_values!2506 (v!2833 (underlying!345 thiss!992)))) from!355) (dynLambda!382 (defaultEntry!2523 (v!2833 (underlying!345 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (minValue!2402 newMap!16)))) lt!51307) (apply!94 lt!51305 lt!51307))))

(declare-fun lt!51302 () Unit!3091)

(assert (=> b!101352 (= lt!51302 lt!51313)))

(declare-fun lt!51308 () ListLongMap!1561)

(assert (=> b!101352 (= lt!51308 (getCurrentListMapNoExtraKeys!104 (_keys!4221 newMap!16) (ite (or c!17360 c!17348) (_values!2506 newMap!16) lt!51056) (mask!6640 newMap!16) (ite c!17360 (ite c!17361 (extraKeys!2336 newMap!16) lt!51044) (extraKeys!2336 newMap!16)) (zeroValue!2402 newMap!16) (ite c!17360 (ite c!17361 (minValue!2402 newMap!16) (get!1310 (select (arr!2027 (_values!2506 (v!2833 (underlying!345 thiss!992)))) from!355) (dynLambda!382 (defaultEntry!2523 (v!2833 (underlying!345 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (minValue!2402 newMap!16)) #b00000000000000000000000000000000 (defaultEntry!2523 newMap!16)))))

(declare-fun lt!51304 () (_ BitVec 64))

(assert (=> b!101352 (= lt!51304 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!51298 () (_ BitVec 64))

(assert (=> b!101352 (= lt!51298 (select (arr!2026 (_keys!4221 newMap!16)) #b00000000000000000000000000000000))))

(declare-fun lt!51306 () Unit!3091)

(assert (=> b!101352 (= lt!51306 (addApplyDifferent!70 lt!51308 lt!51304 (zeroValue!2402 newMap!16) lt!51298))))

(assert (=> b!101352 (= (apply!94 (+!140 lt!51308 (tuple2!2371 lt!51304 (zeroValue!2402 newMap!16))) lt!51298) (apply!94 lt!51308 lt!51298))))

(declare-fun lt!51303 () Unit!3091)

(assert (=> b!101352 (= lt!51303 lt!51306)))

(declare-fun lt!51299 () ListLongMap!1561)

(assert (=> b!101352 (= lt!51299 (getCurrentListMapNoExtraKeys!104 (_keys!4221 newMap!16) (ite (or c!17360 c!17348) (_values!2506 newMap!16) lt!51056) (mask!6640 newMap!16) (ite c!17360 (ite c!17361 (extraKeys!2336 newMap!16) lt!51044) (extraKeys!2336 newMap!16)) (zeroValue!2402 newMap!16) (ite c!17360 (ite c!17361 (minValue!2402 newMap!16) (get!1310 (select (arr!2027 (_values!2506 (v!2833 (underlying!345 thiss!992)))) from!355) (dynLambda!382 (defaultEntry!2523 (v!2833 (underlying!345 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (minValue!2402 newMap!16)) #b00000000000000000000000000000000 (defaultEntry!2523 newMap!16)))))

(declare-fun lt!51300 () (_ BitVec 64))

(assert (=> b!101352 (= lt!51300 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!51295 () (_ BitVec 64))

(assert (=> b!101352 (= lt!51295 (select (arr!2026 (_keys!4221 newMap!16)) #b00000000000000000000000000000000))))

(assert (=> b!101352 (= lt!51296 (addApplyDifferent!70 lt!51299 lt!51300 (ite c!17360 (ite c!17361 (minValue!2402 newMap!16) (get!1310 (select (arr!2027 (_values!2506 (v!2833 (underlying!345 thiss!992)))) from!355) (dynLambda!382 (defaultEntry!2523 (v!2833 (underlying!345 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (minValue!2402 newMap!16)) lt!51295))))

(assert (=> b!101352 (= (apply!94 (+!140 lt!51299 (tuple2!2371 lt!51300 (ite c!17360 (ite c!17361 (minValue!2402 newMap!16) (get!1310 (select (arr!2027 (_values!2506 (v!2833 (underlying!345 thiss!992)))) from!355) (dynLambda!382 (defaultEntry!2523 (v!2833 (underlying!345 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (minValue!2402 newMap!16)))) lt!51295) (apply!94 lt!51299 lt!51295))))

(assert (= (and d!27497 c!17450) b!101349))

(assert (= (and d!27497 (not c!17450)) b!101337))

(assert (= (and b!101337 c!17452) b!101343))

(assert (= (and b!101337 (not c!17452)) b!101346))

(assert (= (and b!101346 c!17454) b!101338))

(assert (= (and b!101346 (not c!17454)) b!101341))

(assert (= (or b!101338 b!101341) bm!10498))

(assert (= (or b!101343 bm!10498) bm!10499))

(assert (= (or b!101343 b!101338) bm!10497))

(assert (= (or b!101349 bm!10499) bm!10496))

(assert (= (or b!101349 bm!10497) bm!10502))

(assert (= (and d!27497 res!50762) b!101332))

(assert (= (and d!27497 c!17453) b!101352))

(assert (= (and d!27497 (not c!17453)) b!101351))

(assert (= (and d!27497 res!50760) b!101335))

(assert (= (and b!101335 res!50757) b!101344))

(assert (= (and b!101335 (not res!50756)) b!101350))

(assert (= (and b!101350 res!50755) b!101339))

(assert (= (and b!101335 res!50754) b!101340))

(assert (= (and b!101340 c!17455) b!101334))

(assert (= (and b!101340 (not c!17455)) b!101347))

(assert (= (and b!101334 res!50759) b!101342))

(assert (= (or b!101334 b!101347) bm!10501))

(assert (= (and b!101340 res!50758) b!101333))

(assert (= (and b!101333 c!17451) b!101345))

(assert (= (and b!101333 (not c!17451)) b!101348))

(assert (= (and b!101345 res!50761) b!101336))

(assert (= (or b!101345 b!101348) bm!10500))

(declare-fun b_lambda!4551 () Bool)

(assert (=> (not b_lambda!4551) (not b!101339)))

(assert (=> b!101339 t!5631))

(declare-fun b_and!6245 () Bool)

(assert (= b_and!6241 (and (=> t!5631 result!3343) b_and!6245)))

(assert (=> b!101339 t!5633))

(declare-fun b_and!6247 () Bool)

(assert (= b_and!6243 (and (=> t!5633 result!3345) b_and!6247)))

(assert (=> b!101332 m!111937))

(assert (=> b!101332 m!111937))

(assert (=> b!101332 m!111945))

(assert (=> b!101339 m!112163))

(declare-fun m!112253 () Bool)

(assert (=> b!101339 m!112253))

(assert (=> b!101339 m!112163))

(declare-fun m!112255 () Bool)

(assert (=> b!101339 m!112255))

(assert (=> b!101339 m!112253))

(assert (=> b!101339 m!111937))

(assert (=> b!101339 m!111937))

(declare-fun m!112257 () Bool)

(assert (=> b!101339 m!112257))

(declare-fun m!112259 () Bool)

(assert (=> bm!10501 m!112259))

(assert (=> b!101350 m!111937))

(assert (=> b!101350 m!111937))

(declare-fun m!112261 () Bool)

(assert (=> b!101350 m!112261))

(declare-fun m!112263 () Bool)

(assert (=> b!101349 m!112263))

(assert (=> d!27497 m!111929))

(declare-fun m!112265 () Bool)

(assert (=> b!101336 m!112265))

(assert (=> b!101344 m!111937))

(assert (=> b!101344 m!111937))

(assert (=> b!101344 m!111945))

(declare-fun m!112267 () Bool)

(assert (=> bm!10496 m!112267))

(declare-fun m!112269 () Bool)

(assert (=> bm!10500 m!112269))

(declare-fun m!112271 () Bool)

(assert (=> b!101342 m!112271))

(declare-fun m!112273 () Bool)

(assert (=> bm!10502 m!112273))

(declare-fun m!112275 () Bool)

(assert (=> b!101352 m!112275))

(declare-fun m!112277 () Bool)

(assert (=> b!101352 m!112277))

(declare-fun m!112279 () Bool)

(assert (=> b!101352 m!112279))

(declare-fun m!112281 () Bool)

(assert (=> b!101352 m!112281))

(declare-fun m!112283 () Bool)

(assert (=> b!101352 m!112283))

(declare-fun m!112285 () Bool)

(assert (=> b!101352 m!112285))

(declare-fun m!112287 () Bool)

(assert (=> b!101352 m!112287))

(assert (=> b!101352 m!111937))

(assert (=> b!101352 m!112277))

(declare-fun m!112289 () Bool)

(assert (=> b!101352 m!112289))

(declare-fun m!112291 () Bool)

(assert (=> b!101352 m!112291))

(assert (=> b!101352 m!112267))

(assert (=> b!101352 m!112285))

(assert (=> b!101352 m!112281))

(declare-fun m!112293 () Bool)

(assert (=> b!101352 m!112293))

(declare-fun m!112295 () Bool)

(assert (=> b!101352 m!112295))

(declare-fun m!112297 () Bool)

(assert (=> b!101352 m!112297))

(assert (=> b!101352 m!112275))

(declare-fun m!112299 () Bool)

(assert (=> b!101352 m!112299))

(declare-fun m!112301 () Bool)

(assert (=> b!101352 m!112301))

(declare-fun m!112303 () Bool)

(assert (=> b!101352 m!112303))

(assert (=> bm!10437 d!27497))

(assert (=> b!100969 d!27479))

(declare-fun c!17456 () Bool)

(declare-fun bm!10503 () Bool)

(declare-fun call!10506 () Bool)

(assert (=> bm!10503 (= call!10506 (arrayNoDuplicates!0 (_keys!4221 (v!2833 (underlying!345 thiss!992))) (bvadd from!355 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (ite c!17456 (Cons!1615 (select (arr!2026 (_keys!4221 (v!2833 (underlying!345 thiss!992)))) (bvadd from!355 #b00000000000000000000000000000001)) (ite c!17391 (Cons!1615 (select (arr!2026 (_keys!4221 (v!2833 (underlying!345 thiss!992)))) from!355) Nil!1616) Nil!1616)) (ite c!17391 (Cons!1615 (select (arr!2026 (_keys!4221 (v!2833 (underlying!345 thiss!992)))) from!355) Nil!1616) Nil!1616))))))

(declare-fun e!65984 () Bool)

(declare-fun b!101353 () Bool)

(assert (=> b!101353 (= e!65984 (contains!814 (ite c!17391 (Cons!1615 (select (arr!2026 (_keys!4221 (v!2833 (underlying!345 thiss!992)))) from!355) Nil!1616) Nil!1616) (select (arr!2026 (_keys!4221 (v!2833 (underlying!345 thiss!992)))) (bvadd from!355 #b00000000000000000000000000000001))))))

(declare-fun b!101354 () Bool)

(declare-fun e!65985 () Bool)

(assert (=> b!101354 (= e!65985 call!10506)))

(declare-fun b!101356 () Bool)

(assert (=> b!101356 (= e!65985 call!10506)))

(declare-fun b!101357 () Bool)

(declare-fun e!65982 () Bool)

(assert (=> b!101357 (= e!65982 e!65985)))

(assert (=> b!101357 (= c!17456 (validKeyInArray!0 (select (arr!2026 (_keys!4221 (v!2833 (underlying!345 thiss!992)))) (bvadd from!355 #b00000000000000000000000000000001))))))

(declare-fun b!101355 () Bool)

(declare-fun e!65983 () Bool)

(assert (=> b!101355 (= e!65983 e!65982)))

(declare-fun res!50765 () Bool)

(assert (=> b!101355 (=> (not res!50765) (not e!65982))))

(assert (=> b!101355 (= res!50765 (not e!65984))))

(declare-fun res!50764 () Bool)

(assert (=> b!101355 (=> (not res!50764) (not e!65984))))

(assert (=> b!101355 (= res!50764 (validKeyInArray!0 (select (arr!2026 (_keys!4221 (v!2833 (underlying!345 thiss!992)))) (bvadd from!355 #b00000000000000000000000000000001))))))

(declare-fun d!27499 () Bool)

(declare-fun res!50763 () Bool)

(assert (=> d!27499 (=> res!50763 e!65983)))

(assert (=> d!27499 (= res!50763 (bvsge (bvadd from!355 #b00000000000000000000000000000001) (size!2278 (_keys!4221 (v!2833 (underlying!345 thiss!992))))))))

(assert (=> d!27499 (= (arrayNoDuplicates!0 (_keys!4221 (v!2833 (underlying!345 thiss!992))) (bvadd from!355 #b00000000000000000000000000000001) (ite c!17391 (Cons!1615 (select (arr!2026 (_keys!4221 (v!2833 (underlying!345 thiss!992)))) from!355) Nil!1616) Nil!1616)) e!65983)))

(assert (= (and d!27499 (not res!50763)) b!101355))

(assert (= (and b!101355 res!50764) b!101353))

(assert (= (and b!101355 res!50765) b!101357))

(assert (= (and b!101357 c!17456) b!101354))

(assert (= (and b!101357 (not c!17456)) b!101356))

(assert (= (or b!101354 b!101356) bm!10503))

(declare-fun m!112305 () Bool)

(assert (=> bm!10503 m!112305))

(declare-fun m!112307 () Bool)

(assert (=> bm!10503 m!112307))

(assert (=> b!101353 m!112305))

(assert (=> b!101353 m!112305))

(declare-fun m!112309 () Bool)

(assert (=> b!101353 m!112309))

(assert (=> b!101357 m!112305))

(assert (=> b!101357 m!112305))

(declare-fun m!112311 () Bool)

(assert (=> b!101357 m!112311))

(assert (=> b!101355 m!112305))

(assert (=> b!101355 m!112305))

(assert (=> b!101355 m!112311))

(assert (=> bm!10474 d!27499))

(declare-fun d!27501 () Bool)

(declare-fun e!65986 () Bool)

(assert (=> d!27501 e!65986))

(declare-fun res!50766 () Bool)

(assert (=> d!27501 (=> res!50766 e!65986)))

(declare-fun lt!51318 () Bool)

(assert (=> d!27501 (= res!50766 (not lt!51318))))

(declare-fun lt!51317 () Bool)

(assert (=> d!27501 (= lt!51318 lt!51317)))

(declare-fun lt!51320 () Unit!3091)

(declare-fun e!65987 () Unit!3091)

(assert (=> d!27501 (= lt!51320 e!65987)))

(declare-fun c!17457 () Bool)

(assert (=> d!27501 (= c!17457 lt!51317)))

(assert (=> d!27501 (= lt!51317 (containsKey!155 (toList!796 lt!51131) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!27501 (= (contains!813 lt!51131 #b1000000000000000000000000000000000000000000000000000000000000000) lt!51318)))

(declare-fun b!101358 () Bool)

(declare-fun lt!51319 () Unit!3091)

(assert (=> b!101358 (= e!65987 lt!51319)))

(assert (=> b!101358 (= lt!51319 (lemmaContainsKeyImpliesGetValueByKeyDefined!104 (toList!796 lt!51131) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!101358 (isDefined!105 (getValueByKey!151 (toList!796 lt!51131) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!101359 () Bool)

(declare-fun Unit!3105 () Unit!3091)

(assert (=> b!101359 (= e!65987 Unit!3105)))

(declare-fun b!101360 () Bool)

(assert (=> b!101360 (= e!65986 (isDefined!105 (getValueByKey!151 (toList!796 lt!51131) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!27501 c!17457) b!101358))

(assert (= (and d!27501 (not c!17457)) b!101359))

(assert (= (and d!27501 (not res!50766)) b!101360))

(declare-fun m!112313 () Bool)

(assert (=> d!27501 m!112313))

(declare-fun m!112315 () Bool)

(assert (=> b!101358 m!112315))

(assert (=> b!101358 m!112013))

(assert (=> b!101358 m!112013))

(declare-fun m!112317 () Bool)

(assert (=> b!101358 m!112317))

(assert (=> b!101360 m!112013))

(assert (=> b!101360 m!112013))

(assert (=> b!101360 m!112317))

(assert (=> bm!10469 d!27501))

(assert (=> d!27365 d!27479))

(declare-fun d!27503 () Bool)

(assert (=> d!27503 (= (apply!94 lt!51131 #b0000000000000000000000000000000000000000000000000000000000000000) (get!1313 (getValueByKey!151 (toList!796 lt!51131) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun bs!4193 () Bool)

(assert (= bs!4193 d!27503))

(declare-fun m!112319 () Bool)

(assert (=> bs!4193 m!112319))

(assert (=> bs!4193 m!112319))

(declare-fun m!112321 () Bool)

(assert (=> bs!4193 m!112321))

(assert (=> b!101061 d!27503))

(declare-fun d!27505 () Bool)

(assert (=> d!27505 (= (get!1311 (select (arr!2027 (_values!2506 (v!2833 (underlying!345 thiss!992)))) from!355) (dynLambda!382 (defaultEntry!2523 (v!2833 (underlying!345 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (v!2832 (select (arr!2027 (_values!2506 (v!2833 (underlying!345 thiss!992)))) from!355)))))

(assert (=> b!100995 d!27505))

(declare-fun d!27507 () Bool)

(declare-fun e!65988 () Bool)

(assert (=> d!27507 e!65988))

(declare-fun res!50768 () Bool)

(assert (=> d!27507 (=> (not res!50768) (not e!65988))))

(declare-fun lt!51323 () ListLongMap!1561)

(assert (=> d!27507 (= res!50768 (contains!813 lt!51323 (_1!1195 (tuple2!2371 (select (arr!2026 (_keys!4221 (v!2833 (underlying!345 thiss!992)))) from!355) (get!1310 (select (arr!2027 (_values!2506 (v!2833 (underlying!345 thiss!992)))) from!355) (dynLambda!382 (defaultEntry!2523 (v!2833 (underlying!345 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun lt!51321 () List!1618)

(assert (=> d!27507 (= lt!51323 (ListLongMap!1562 lt!51321))))

(declare-fun lt!51324 () Unit!3091)

(declare-fun lt!51322 () Unit!3091)

(assert (=> d!27507 (= lt!51324 lt!51322)))

(assert (=> d!27507 (= (getValueByKey!151 lt!51321 (_1!1195 (tuple2!2371 (select (arr!2026 (_keys!4221 (v!2833 (underlying!345 thiss!992)))) from!355) (get!1310 (select (arr!2027 (_values!2506 (v!2833 (underlying!345 thiss!992)))) from!355) (dynLambda!382 (defaultEntry!2523 (v!2833 (underlying!345 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))) (Some!156 (_2!1195 (tuple2!2371 (select (arr!2026 (_keys!4221 (v!2833 (underlying!345 thiss!992)))) from!355) (get!1310 (select (arr!2027 (_values!2506 (v!2833 (underlying!345 thiss!992)))) from!355) (dynLambda!382 (defaultEntry!2523 (v!2833 (underlying!345 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!27507 (= lt!51322 (lemmaContainsTupThenGetReturnValue!69 lt!51321 (_1!1195 (tuple2!2371 (select (arr!2026 (_keys!4221 (v!2833 (underlying!345 thiss!992)))) from!355) (get!1310 (select (arr!2027 (_values!2506 (v!2833 (underlying!345 thiss!992)))) from!355) (dynLambda!382 (defaultEntry!2523 (v!2833 (underlying!345 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (_2!1195 (tuple2!2371 (select (arr!2026 (_keys!4221 (v!2833 (underlying!345 thiss!992)))) from!355) (get!1310 (select (arr!2027 (_values!2506 (v!2833 (underlying!345 thiss!992)))) from!355) (dynLambda!382 (defaultEntry!2523 (v!2833 (underlying!345 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!27507 (= lt!51321 (insertStrictlySorted!71 (toList!796 call!10438) (_1!1195 (tuple2!2371 (select (arr!2026 (_keys!4221 (v!2833 (underlying!345 thiss!992)))) from!355) (get!1310 (select (arr!2027 (_values!2506 (v!2833 (underlying!345 thiss!992)))) from!355) (dynLambda!382 (defaultEntry!2523 (v!2833 (underlying!345 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (_2!1195 (tuple2!2371 (select (arr!2026 (_keys!4221 (v!2833 (underlying!345 thiss!992)))) from!355) (get!1310 (select (arr!2027 (_values!2506 (v!2833 (underlying!345 thiss!992)))) from!355) (dynLambda!382 (defaultEntry!2523 (v!2833 (underlying!345 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!27507 (= (+!140 call!10438 (tuple2!2371 (select (arr!2026 (_keys!4221 (v!2833 (underlying!345 thiss!992)))) from!355) (get!1310 (select (arr!2027 (_values!2506 (v!2833 (underlying!345 thiss!992)))) from!355) (dynLambda!382 (defaultEntry!2523 (v!2833 (underlying!345 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) lt!51323)))

(declare-fun b!101361 () Bool)

(declare-fun res!50767 () Bool)

(assert (=> b!101361 (=> (not res!50767) (not e!65988))))

(assert (=> b!101361 (= res!50767 (= (getValueByKey!151 (toList!796 lt!51323) (_1!1195 (tuple2!2371 (select (arr!2026 (_keys!4221 (v!2833 (underlying!345 thiss!992)))) from!355) (get!1310 (select (arr!2027 (_values!2506 (v!2833 (underlying!345 thiss!992)))) from!355) (dynLambda!382 (defaultEntry!2523 (v!2833 (underlying!345 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))) (Some!156 (_2!1195 (tuple2!2371 (select (arr!2026 (_keys!4221 (v!2833 (underlying!345 thiss!992)))) from!355) (get!1310 (select (arr!2027 (_values!2506 (v!2833 (underlying!345 thiss!992)))) from!355) (dynLambda!382 (defaultEntry!2523 (v!2833 (underlying!345 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))))))))

(declare-fun b!101362 () Bool)

(assert (=> b!101362 (= e!65988 (contains!815 (toList!796 lt!51323) (tuple2!2371 (select (arr!2026 (_keys!4221 (v!2833 (underlying!345 thiss!992)))) from!355) (get!1310 (select (arr!2027 (_values!2506 (v!2833 (underlying!345 thiss!992)))) from!355) (dynLambda!382 (defaultEntry!2523 (v!2833 (underlying!345 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (= (and d!27507 res!50768) b!101361))

(assert (= (and b!101361 res!50767) b!101362))

(declare-fun m!112323 () Bool)

(assert (=> d!27507 m!112323))

(declare-fun m!112325 () Bool)

(assert (=> d!27507 m!112325))

(declare-fun m!112327 () Bool)

(assert (=> d!27507 m!112327))

(declare-fun m!112329 () Bool)

(assert (=> d!27507 m!112329))

(declare-fun m!112331 () Bool)

(assert (=> b!101361 m!112331))

(declare-fun m!112333 () Bool)

(assert (=> b!101362 m!112333))

(assert (=> b!100973 d!27507))

(declare-fun d!27509 () Bool)

(declare-fun e!65989 () Bool)

(assert (=> d!27509 e!65989))

(declare-fun res!50769 () Bool)

(assert (=> d!27509 (=> res!50769 e!65989)))

(declare-fun lt!51326 () Bool)

(assert (=> d!27509 (= res!50769 (not lt!51326))))

(declare-fun lt!51325 () Bool)

(assert (=> d!27509 (= lt!51326 lt!51325)))

(declare-fun lt!51328 () Unit!3091)

(declare-fun e!65990 () Unit!3091)

(assert (=> d!27509 (= lt!51328 e!65990)))

(declare-fun c!17458 () Bool)

(assert (=> d!27509 (= c!17458 lt!51325)))

(assert (=> d!27509 (= lt!51325 (containsKey!155 (toList!796 lt!51131) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!27509 (= (contains!813 lt!51131 #b0000000000000000000000000000000000000000000000000000000000000000) lt!51326)))

(declare-fun b!101363 () Bool)

(declare-fun lt!51327 () Unit!3091)

(assert (=> b!101363 (= e!65990 lt!51327)))

(assert (=> b!101363 (= lt!51327 (lemmaContainsKeyImpliesGetValueByKeyDefined!104 (toList!796 lt!51131) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!101363 (isDefined!105 (getValueByKey!151 (toList!796 lt!51131) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!101364 () Bool)

(declare-fun Unit!3106 () Unit!3091)

(assert (=> b!101364 (= e!65990 Unit!3106)))

(declare-fun b!101365 () Bool)

(assert (=> b!101365 (= e!65989 (isDefined!105 (getValueByKey!151 (toList!796 lt!51131) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!27509 c!17458) b!101363))

(assert (= (and d!27509 (not c!17458)) b!101364))

(assert (= (and d!27509 (not res!50769)) b!101365))

(declare-fun m!112335 () Bool)

(assert (=> d!27509 m!112335))

(declare-fun m!112337 () Bool)

(assert (=> b!101363 m!112337))

(assert (=> b!101363 m!112319))

(assert (=> b!101363 m!112319))

(declare-fun m!112339 () Bool)

(assert (=> b!101363 m!112339))

(assert (=> b!101365 m!112319))

(assert (=> b!101365 m!112319))

(assert (=> b!101365 m!112339))

(assert (=> bm!10470 d!27509))

(assert (=> d!27367 d!27359))

(declare-fun bm!10504 () Bool)

(declare-fun call!10507 () Bool)

(declare-fun c!17459 () Bool)

(assert (=> bm!10504 (= call!10507 (arrayNoDuplicates!0 (_keys!4221 newMap!16) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!17459 (Cons!1615 (select (arr!2026 (_keys!4221 newMap!16)) #b00000000000000000000000000000000) Nil!1616) Nil!1616)))))

(declare-fun b!101366 () Bool)

(declare-fun e!65993 () Bool)

(assert (=> b!101366 (= e!65993 (contains!814 Nil!1616 (select (arr!2026 (_keys!4221 newMap!16)) #b00000000000000000000000000000000)))))

(declare-fun b!101367 () Bool)

(declare-fun e!65994 () Bool)

(assert (=> b!101367 (= e!65994 call!10507)))

(declare-fun b!101369 () Bool)

(assert (=> b!101369 (= e!65994 call!10507)))

(declare-fun b!101370 () Bool)

(declare-fun e!65991 () Bool)

(assert (=> b!101370 (= e!65991 e!65994)))

(assert (=> b!101370 (= c!17459 (validKeyInArray!0 (select (arr!2026 (_keys!4221 newMap!16)) #b00000000000000000000000000000000)))))

(declare-fun b!101368 () Bool)

(declare-fun e!65992 () Bool)

(assert (=> b!101368 (= e!65992 e!65991)))

(declare-fun res!50772 () Bool)

(assert (=> b!101368 (=> (not res!50772) (not e!65991))))

(assert (=> b!101368 (= res!50772 (not e!65993))))

(declare-fun res!50771 () Bool)

(assert (=> b!101368 (=> (not res!50771) (not e!65993))))

(assert (=> b!101368 (= res!50771 (validKeyInArray!0 (select (arr!2026 (_keys!4221 newMap!16)) #b00000000000000000000000000000000)))))

(declare-fun d!27511 () Bool)

(declare-fun res!50770 () Bool)

(assert (=> d!27511 (=> res!50770 e!65992)))

(assert (=> d!27511 (= res!50770 (bvsge #b00000000000000000000000000000000 (size!2278 (_keys!4221 newMap!16))))))

(assert (=> d!27511 (= (arrayNoDuplicates!0 (_keys!4221 newMap!16) #b00000000000000000000000000000000 Nil!1616) e!65992)))

(assert (= (and d!27511 (not res!50770)) b!101368))

(assert (= (and b!101368 res!50771) b!101366))

(assert (= (and b!101368 res!50772) b!101370))

(assert (= (and b!101370 c!17459) b!101367))

(assert (= (and b!101370 (not c!17459)) b!101369))

(assert (= (or b!101367 b!101369) bm!10504))

(assert (=> bm!10504 m!111937))

(declare-fun m!112341 () Bool)

(assert (=> bm!10504 m!112341))

(assert (=> b!101366 m!111937))

(assert (=> b!101366 m!111937))

(declare-fun m!112343 () Bool)

(assert (=> b!101366 m!112343))

(assert (=> b!101370 m!111937))

(assert (=> b!101370 m!111937))

(assert (=> b!101370 m!111945))

(assert (=> b!101368 m!111937))

(assert (=> b!101368 m!111937))

(assert (=> b!101368 m!111945))

(assert (=> b!100855 d!27511))

(declare-fun b!101405 () Bool)

(declare-fun e!66013 () Bool)

(declare-fun call!10517 () Bool)

(assert (=> b!101405 (= e!66013 (not call!10517))))

(declare-fun b!101406 () Bool)

(declare-fun res!50798 () Bool)

(declare-fun e!66015 () Bool)

(assert (=> b!101406 (=> (not res!50798) (not e!66015))))

(declare-fun lt!51394 () tuple2!2372)

(assert (=> b!101406 (= res!50798 (valid!391 (_2!1196 lt!51394)))))

(declare-fun b!101407 () Bool)

(declare-fun res!50794 () Bool)

(assert (=> b!101407 (=> (not res!50794) (not e!66015))))

(assert (=> b!101407 (= res!50794 (contains!813 (map!1263 (_2!1196 lt!51394)) (select (arr!2026 (_keys!4221 (v!2833 (underlying!345 thiss!992)))) from!355)))))

(declare-fun b!101408 () Bool)

(declare-fun e!66018 () Unit!3091)

(declare-fun Unit!3107 () Unit!3091)

(assert (=> b!101408 (= e!66018 Unit!3107)))

(declare-fun b!101409 () Bool)

(assert (=> b!101409 (= e!66015 (= (map!1263 (_2!1196 lt!51394)) (+!140 (map!1263 newMap!16) (tuple2!2371 (select (arr!2026 (_keys!4221 (v!2833 (underlying!345 thiss!992)))) from!355) (get!1310 (select (arr!2027 (_values!2506 (v!2833 (underlying!345 thiss!992)))) from!355) (dynLambda!382 (defaultEntry!2523 (v!2833 (underlying!345 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun b!101410 () Bool)

(declare-fun res!50793 () Bool)

(declare-fun e!66011 () Bool)

(assert (=> b!101410 (=> (not res!50793) (not e!66011))))

(declare-fun call!10518 () Bool)

(assert (=> b!101410 (= res!50793 call!10518)))

(declare-fun e!66012 () Bool)

(assert (=> b!101410 (= e!66012 e!66011)))

(declare-fun b!101411 () Bool)

(declare-fun e!66014 () Bool)

(declare-fun lt!51416 () SeekEntryResult!265)

(assert (=> b!101411 (= e!66014 ((_ is Undefined!265) lt!51416))))

(declare-fun b!101412 () Bool)

(declare-fun res!50796 () Bool)

(assert (=> b!101412 (=> (not res!50796) (not e!66011))))

(assert (=> b!101412 (= res!50796 (= (select (arr!2026 (_keys!4221 newMap!16)) (index!3205 lt!51416)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!101413 () Bool)

(declare-fun e!66017 () Unit!3091)

(declare-fun Unit!3108 () Unit!3091)

(assert (=> b!101413 (= e!66017 Unit!3108)))

(declare-fun lt!51410 () Unit!3091)

(assert (=> b!101413 (= lt!51410 (lemmaInListMapThenSeekEntryOrOpenFindsIt!43 (_keys!4221 newMap!16) (_values!2506 newMap!16) (mask!6640 newMap!16) (extraKeys!2336 newMap!16) (zeroValue!2402 newMap!16) (minValue!2402 newMap!16) (select (arr!2026 (_keys!4221 (v!2833 (underlying!345 thiss!992)))) from!355) (defaultEntry!2523 newMap!16)))))

(declare-fun lt!51415 () SeekEntryResult!265)

(declare-fun call!10519 () SeekEntryResult!265)

(assert (=> b!101413 (= lt!51415 call!10519)))

(declare-fun res!50799 () Bool)

(assert (=> b!101413 (= res!50799 ((_ is Found!265) lt!51415))))

(declare-fun e!66016 () Bool)

(assert (=> b!101413 (=> (not res!50799) (not e!66016))))

(assert (=> b!101413 e!66016))

(declare-fun lt!51412 () Unit!3091)

(assert (=> b!101413 (= lt!51412 lt!51410)))

(assert (=> b!101413 false))

(declare-fun b!101414 () Bool)

(declare-fun lt!51414 () Unit!3091)

(assert (=> b!101414 (= e!66017 lt!51414)))

(assert (=> b!101414 (= lt!51414 (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!43 (_keys!4221 newMap!16) (_values!2506 newMap!16) (mask!6640 newMap!16) (extraKeys!2336 newMap!16) (zeroValue!2402 newMap!16) (minValue!2402 newMap!16) (select (arr!2026 (_keys!4221 (v!2833 (underlying!345 thiss!992)))) from!355) (defaultEntry!2523 newMap!16)))))

(assert (=> b!101414 (= lt!51416 call!10519)))

(declare-fun c!17471 () Bool)

(assert (=> b!101414 (= c!17471 ((_ is MissingZero!265) lt!51416))))

(assert (=> b!101414 e!66012))

(declare-fun bm!10513 () Bool)

(assert (=> bm!10513 (= call!10519 (seekEntryOrOpen!0 (select (arr!2026 (_keys!4221 (v!2833 (underlying!345 thiss!992)))) from!355) (_keys!4221 newMap!16) (mask!6640 newMap!16)))))

(declare-fun bm!10514 () Bool)

(assert (=> bm!10514 (= call!10517 (arrayContainsKey!0 (_keys!4221 newMap!16) (select (arr!2026 (_keys!4221 (v!2833 (underlying!345 thiss!992)))) from!355) #b00000000000000000000000000000000))))

(declare-fun bm!10515 () Bool)

(declare-fun call!10516 () Bool)

(declare-fun c!17470 () Bool)

(assert (=> bm!10515 (= call!10516 (inRange!0 (ite c!17470 (index!3206 lt!51415) (ite c!17471 (index!3205 lt!51416) (index!3208 lt!51416))) (mask!6640 newMap!16)))))

(declare-fun b!101415 () Bool)

(assert (=> b!101415 (= e!66014 e!66013)))

(declare-fun res!50792 () Bool)

(assert (=> b!101415 (= res!50792 call!10518)))

(assert (=> b!101415 (=> (not res!50792) (not e!66013))))

(declare-fun d!27513 () Bool)

(assert (=> d!27513 e!66015))

(declare-fun res!50791 () Bool)

(assert (=> d!27513 (=> (not res!50791) (not e!66015))))

(assert (=> d!27513 (= res!50791 (_1!1196 lt!51394))))

(assert (=> d!27513 (= lt!51394 (tuple2!2373 true (LongMapFixedSize!865 (defaultEntry!2523 newMap!16) (mask!6640 newMap!16) (extraKeys!2336 newMap!16) (zeroValue!2402 newMap!16) (minValue!2402 newMap!16) (bvadd (_size!481 newMap!16) #b00000000000000000000000000000001) (array!4269 (store (arr!2026 (_keys!4221 newMap!16)) (ite c!17349 (index!3208 lt!51046) (index!3205 lt!51046)) (select (arr!2026 (_keys!4221 (v!2833 (underlying!345 thiss!992)))) from!355)) (size!2278 (_keys!4221 newMap!16))) (array!4271 (store (arr!2027 (_values!2506 newMap!16)) (ite c!17349 (index!3208 lt!51046) (index!3205 lt!51046)) (ValueCellFull!978 (get!1310 (select (arr!2027 (_values!2506 (v!2833 (underlying!345 thiss!992)))) from!355) (dynLambda!382 (defaultEntry!2523 (v!2833 (underlying!345 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (size!2279 (_values!2506 newMap!16))) (_vacant!481 newMap!16))))))

(declare-fun lt!51392 () Unit!3091)

(declare-fun lt!51389 () Unit!3091)

(assert (=> d!27513 (= lt!51392 lt!51389)))

(declare-fun lt!51411 () array!4268)

(declare-fun lt!51413 () array!4270)

(assert (=> d!27513 (contains!813 (getCurrentListMap!476 lt!51411 lt!51413 (mask!6640 newMap!16) (extraKeys!2336 newMap!16) (zeroValue!2402 newMap!16) (minValue!2402 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2523 newMap!16)) (select (store (arr!2026 (_keys!4221 newMap!16)) (ite c!17349 (index!3208 lt!51046) (index!3205 lt!51046)) (select (arr!2026 (_keys!4221 (v!2833 (underlying!345 thiss!992)))) from!355)) (ite c!17349 (index!3208 lt!51046) (index!3205 lt!51046))))))

(assert (=> d!27513 (= lt!51389 (lemmaValidKeyInArrayIsInListMap!101 lt!51411 lt!51413 (mask!6640 newMap!16) (extraKeys!2336 newMap!16) (zeroValue!2402 newMap!16) (minValue!2402 newMap!16) (ite c!17349 (index!3208 lt!51046) (index!3205 lt!51046)) (defaultEntry!2523 newMap!16)))))

(assert (=> d!27513 (= lt!51413 (array!4271 (store (arr!2027 (_values!2506 newMap!16)) (ite c!17349 (index!3208 lt!51046) (index!3205 lt!51046)) (ValueCellFull!978 (get!1310 (select (arr!2027 (_values!2506 (v!2833 (underlying!345 thiss!992)))) from!355) (dynLambda!382 (defaultEntry!2523 (v!2833 (underlying!345 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (size!2279 (_values!2506 newMap!16))))))

(assert (=> d!27513 (= lt!51411 (array!4269 (store (arr!2026 (_keys!4221 newMap!16)) (ite c!17349 (index!3208 lt!51046) (index!3205 lt!51046)) (select (arr!2026 (_keys!4221 (v!2833 (underlying!345 thiss!992)))) from!355)) (size!2278 (_keys!4221 newMap!16))))))

(declare-fun lt!51391 () Unit!3091)

(declare-fun lt!51390 () Unit!3091)

(assert (=> d!27513 (= lt!51391 lt!51390)))

(declare-fun lt!51417 () array!4268)

(assert (=> d!27513 (= (arrayCountValidKeys!0 lt!51417 (ite c!17349 (index!3208 lt!51046) (index!3205 lt!51046)) (bvadd (ite c!17349 (index!3208 lt!51046) (index!3205 lt!51046)) #b00000000000000000000000000000001)) #b00000000000000000000000000000001)))

(declare-fun lemmaValidKeyAtIImpliesCountKeysIsOne!0 (array!4268 (_ BitVec 32)) Unit!3091)

(assert (=> d!27513 (= lt!51390 (lemmaValidKeyAtIImpliesCountKeysIsOne!0 lt!51417 (ite c!17349 (index!3208 lt!51046) (index!3205 lt!51046))))))

(assert (=> d!27513 (= lt!51417 (array!4269 (store (arr!2026 (_keys!4221 newMap!16)) (ite c!17349 (index!3208 lt!51046) (index!3205 lt!51046)) (select (arr!2026 (_keys!4221 (v!2833 (underlying!345 thiss!992)))) from!355)) (size!2278 (_keys!4221 newMap!16))))))

(declare-fun lt!51400 () Unit!3091)

(declare-fun lt!51399 () Unit!3091)

(assert (=> d!27513 (= lt!51400 lt!51399)))

(declare-fun lt!51404 () array!4268)

(assert (=> d!27513 (arrayContainsKey!0 lt!51404 (select (arr!2026 (_keys!4221 (v!2833 (underlying!345 thiss!992)))) from!355) #b00000000000000000000000000000000)))

(assert (=> d!27513 (= lt!51399 (lemmaArrayContainsFromImpliesContainsFromZero!0 lt!51404 (select (arr!2026 (_keys!4221 (v!2833 (underlying!345 thiss!992)))) from!355) (ite c!17349 (index!3208 lt!51046) (index!3205 lt!51046))))))

(assert (=> d!27513 (= lt!51404 (array!4269 (store (arr!2026 (_keys!4221 newMap!16)) (ite c!17349 (index!3208 lt!51046) (index!3205 lt!51046)) (select (arr!2026 (_keys!4221 (v!2833 (underlying!345 thiss!992)))) from!355)) (size!2278 (_keys!4221 newMap!16))))))

(declare-fun lt!51409 () Unit!3091)

(declare-fun lt!51406 () Unit!3091)

(assert (=> d!27513 (= lt!51409 lt!51406)))

(assert (=> d!27513 (= (+!140 (getCurrentListMap!476 (_keys!4221 newMap!16) (_values!2506 newMap!16) (mask!6640 newMap!16) (extraKeys!2336 newMap!16) (zeroValue!2402 newMap!16) (minValue!2402 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2523 newMap!16)) (tuple2!2371 (select (arr!2026 (_keys!4221 (v!2833 (underlying!345 thiss!992)))) from!355) (get!1310 (select (arr!2027 (_values!2506 (v!2833 (underlying!345 thiss!992)))) from!355) (dynLambda!382 (defaultEntry!2523 (v!2833 (underlying!345 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (getCurrentListMap!476 (array!4269 (store (arr!2026 (_keys!4221 newMap!16)) (ite c!17349 (index!3208 lt!51046) (index!3205 lt!51046)) (select (arr!2026 (_keys!4221 (v!2833 (underlying!345 thiss!992)))) from!355)) (size!2278 (_keys!4221 newMap!16))) (array!4271 (store (arr!2027 (_values!2506 newMap!16)) (ite c!17349 (index!3208 lt!51046) (index!3205 lt!51046)) (ValueCellFull!978 (get!1310 (select (arr!2027 (_values!2506 (v!2833 (underlying!345 thiss!992)))) from!355) (dynLambda!382 (defaultEntry!2523 (v!2833 (underlying!345 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (size!2279 (_values!2506 newMap!16))) (mask!6640 newMap!16) (extraKeys!2336 newMap!16) (zeroValue!2402 newMap!16) (minValue!2402 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2523 newMap!16)))))

(declare-fun lemmaAddValidKeyToArrayThenAddPairToListMap!27 (array!4268 array!4270 (_ BitVec 32) (_ BitVec 32) V!3171 V!3171 (_ BitVec 32) (_ BitVec 64) V!3171 Int) Unit!3091)

(assert (=> d!27513 (= lt!51406 (lemmaAddValidKeyToArrayThenAddPairToListMap!27 (_keys!4221 newMap!16) (_values!2506 newMap!16) (mask!6640 newMap!16) (extraKeys!2336 newMap!16) (zeroValue!2402 newMap!16) (minValue!2402 newMap!16) (ite c!17349 (index!3208 lt!51046) (index!3205 lt!51046)) (select (arr!2026 (_keys!4221 (v!2833 (underlying!345 thiss!992)))) from!355) (get!1310 (select (arr!2027 (_values!2506 (v!2833 (underlying!345 thiss!992)))) from!355) (dynLambda!382 (defaultEntry!2523 (v!2833 (underlying!345 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (defaultEntry!2523 newMap!16)))))

(declare-fun lt!51405 () Unit!3091)

(declare-fun lt!51396 () Unit!3091)

(assert (=> d!27513 (= lt!51405 lt!51396)))

(assert (=> d!27513 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (array!4269 (store (arr!2026 (_keys!4221 newMap!16)) (ite c!17349 (index!3208 lt!51046) (index!3205 lt!51046)) (select (arr!2026 (_keys!4221 (v!2833 (underlying!345 thiss!992)))) from!355)) (size!2278 (_keys!4221 newMap!16))) (mask!6640 newMap!16))))

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpen!0 ((_ BitVec 64) array!4268 (_ BitVec 32) (_ BitVec 32)) Unit!3091)

(assert (=> d!27513 (= lt!51396 (lemmaPutValidKeyPreservesForallSeekEntryOrOpen!0 (select (arr!2026 (_keys!4221 (v!2833 (underlying!345 thiss!992)))) from!355) (_keys!4221 newMap!16) (ite c!17349 (index!3208 lt!51046) (index!3205 lt!51046)) (mask!6640 newMap!16)))))

(declare-fun lt!51407 () Unit!3091)

(declare-fun lt!51408 () Unit!3091)

(assert (=> d!27513 (= lt!51407 lt!51408)))

(assert (=> d!27513 (= (arrayCountValidKeys!0 (array!4269 (store (arr!2026 (_keys!4221 newMap!16)) (ite c!17349 (index!3208 lt!51046) (index!3205 lt!51046)) (select (arr!2026 (_keys!4221 (v!2833 (underlying!345 thiss!992)))) from!355)) (size!2278 (_keys!4221 newMap!16))) #b00000000000000000000000000000000 (size!2278 (_keys!4221 newMap!16))) (bvadd (arrayCountValidKeys!0 (_keys!4221 newMap!16) #b00000000000000000000000000000000 (size!2278 (_keys!4221 newMap!16))) #b00000000000000000000000000000001))))

(declare-fun lemmaAddValidKeyIncreasesNumberOfValidKeysInArray!0 (array!4268 (_ BitVec 32) (_ BitVec 64)) Unit!3091)

(assert (=> d!27513 (= lt!51408 (lemmaAddValidKeyIncreasesNumberOfValidKeysInArray!0 (_keys!4221 newMap!16) (ite c!17349 (index!3208 lt!51046) (index!3205 lt!51046)) (select (arr!2026 (_keys!4221 (v!2833 (underlying!345 thiss!992)))) from!355)))))

(declare-fun lt!51397 () Unit!3091)

(declare-fun lt!51418 () Unit!3091)

(assert (=> d!27513 (= lt!51397 lt!51418)))

(declare-fun lt!51401 () List!1619)

(declare-fun lt!51398 () (_ BitVec 32))

(assert (=> d!27513 (arrayNoDuplicates!0 (array!4269 (store (arr!2026 (_keys!4221 newMap!16)) (ite c!17349 (index!3208 lt!51046) (index!3205 lt!51046)) (select (arr!2026 (_keys!4221 (v!2833 (underlying!345 thiss!992)))) from!355)) (size!2278 (_keys!4221 newMap!16))) lt!51398 lt!51401)))

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!4268 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!1619) Unit!3091)

(assert (=> d!27513 (= lt!51418 (lemmaPutNewValidKeyPreservesNoDuplicate!0 (_keys!4221 newMap!16) (select (arr!2026 (_keys!4221 (v!2833 (underlying!345 thiss!992)))) from!355) (ite c!17349 (index!3208 lt!51046) (index!3205 lt!51046)) lt!51398 lt!51401))))

(assert (=> d!27513 (= lt!51401 Nil!1616)))

(assert (=> d!27513 (= lt!51398 #b00000000000000000000000000000000)))

(declare-fun lt!51403 () Unit!3091)

(assert (=> d!27513 (= lt!51403 e!66018)))

(declare-fun c!17468 () Bool)

(assert (=> d!27513 (= c!17468 (arrayContainsKey!0 (_keys!4221 newMap!16) (select (arr!2026 (_keys!4221 (v!2833 (underlying!345 thiss!992)))) from!355) #b00000000000000000000000000000000))))

(declare-fun lt!51395 () Unit!3091)

(assert (=> d!27513 (= lt!51395 e!66017)))

(assert (=> d!27513 (= c!17470 (contains!813 (getCurrentListMap!476 (_keys!4221 newMap!16) (_values!2506 newMap!16) (mask!6640 newMap!16) (extraKeys!2336 newMap!16) (zeroValue!2402 newMap!16) (minValue!2402 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2523 newMap!16)) (select (arr!2026 (_keys!4221 (v!2833 (underlying!345 thiss!992)))) from!355)))))

(assert (=> d!27513 (valid!391 newMap!16)))

(assert (=> d!27513 (= (updateHelperNewKey!43 newMap!16 (select (arr!2026 (_keys!4221 (v!2833 (underlying!345 thiss!992)))) from!355) (get!1310 (select (arr!2027 (_values!2506 (v!2833 (underlying!345 thiss!992)))) from!355) (dynLambda!382 (defaultEntry!2523 (v!2833 (underlying!345 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (ite c!17349 (index!3208 lt!51046) (index!3205 lt!51046))) lt!51394)))

(declare-fun b!101416 () Bool)

(declare-fun Unit!3109 () Unit!3091)

(assert (=> b!101416 (= e!66018 Unit!3109)))

(declare-fun lt!51393 () Unit!3091)

(declare-fun lemmaArrayContainsKeyThenInListMap!27 (array!4268 array!4270 (_ BitVec 32) (_ BitVec 32) V!3171 V!3171 (_ BitVec 64) (_ BitVec 32) Int) Unit!3091)

(assert (=> b!101416 (= lt!51393 (lemmaArrayContainsKeyThenInListMap!27 (_keys!4221 newMap!16) (_values!2506 newMap!16) (mask!6640 newMap!16) (extraKeys!2336 newMap!16) (zeroValue!2402 newMap!16) (minValue!2402 newMap!16) (select (arr!2026 (_keys!4221 (v!2833 (underlying!345 thiss!992)))) from!355) #b00000000000000000000000000000000 (defaultEntry!2523 newMap!16)))))

(assert (=> b!101416 (contains!813 (getCurrentListMap!476 (_keys!4221 newMap!16) (_values!2506 newMap!16) (mask!6640 newMap!16) (extraKeys!2336 newMap!16) (zeroValue!2402 newMap!16) (minValue!2402 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2523 newMap!16)) (select (arr!2026 (_keys!4221 (v!2833 (underlying!345 thiss!992)))) from!355))))

(declare-fun lt!51402 () Unit!3091)

(assert (=> b!101416 (= lt!51402 lt!51393)))

(assert (=> b!101416 false))

(declare-fun b!101417 () Bool)

(declare-fun c!17469 () Bool)

(assert (=> b!101417 (= c!17469 ((_ is MissingVacant!265) lt!51416))))

(assert (=> b!101417 (= e!66012 e!66014)))

(declare-fun b!101418 () Bool)

(declare-fun res!50795 () Bool)

(assert (=> b!101418 (= res!50795 (= (select (arr!2026 (_keys!4221 newMap!16)) (index!3208 lt!51416)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!101418 (=> (not res!50795) (not e!66013))))

(declare-fun b!101419 () Bool)

(declare-fun res!50797 () Bool)

(assert (=> b!101419 (= res!50797 call!10516)))

(assert (=> b!101419 (=> (not res!50797) (not e!66016))))

(declare-fun b!101420 () Bool)

(assert (=> b!101420 (= e!66011 (not call!10517))))

(declare-fun b!101421 () Bool)

(assert (=> b!101421 (= e!66016 (= (select (arr!2026 (_keys!4221 newMap!16)) (index!3206 lt!51415)) (select (arr!2026 (_keys!4221 (v!2833 (underlying!345 thiss!992)))) from!355)))))

(declare-fun bm!10516 () Bool)

(assert (=> bm!10516 (= call!10518 call!10516)))

(assert (= (and d!27513 c!17470) b!101413))

(assert (= (and d!27513 (not c!17470)) b!101414))

(assert (= (and b!101413 res!50799) b!101419))

(assert (= (and b!101419 res!50797) b!101421))

(assert (= (and b!101414 c!17471) b!101410))

(assert (= (and b!101414 (not c!17471)) b!101417))

(assert (= (and b!101410 res!50793) b!101412))

(assert (= (and b!101412 res!50796) b!101420))

(assert (= (and b!101417 c!17469) b!101415))

(assert (= (and b!101417 (not c!17469)) b!101411))

(assert (= (and b!101415 res!50792) b!101418))

(assert (= (and b!101418 res!50795) b!101405))

(assert (= (or b!101410 b!101415) bm!10516))

(assert (= (or b!101420 b!101405) bm!10514))

(assert (= (or b!101419 bm!10516) bm!10515))

(assert (= (or b!101413 b!101414) bm!10513))

(assert (= (and d!27513 c!17468) b!101416))

(assert (= (and d!27513 (not c!17468)) b!101408))

(assert (= (and d!27513 res!50791) b!101406))

(assert (= (and b!101406 res!50798) b!101407))

(assert (= (and b!101407 res!50794) b!101409))

(declare-fun m!112345 () Bool)

(assert (=> b!101412 m!112345))

(assert (=> b!101414 m!111657))

(assert (=> b!101414 m!111805))

(assert (=> b!101413 m!111657))

(assert (=> b!101413 m!111777))

(declare-fun m!112347 () Bool)

(assert (=> b!101418 m!112347))

(assert (=> b!101416 m!111657))

(declare-fun m!112349 () Bool)

(assert (=> b!101416 m!112349))

(assert (=> b!101416 m!111757))

(assert (=> b!101416 m!111757))

(assert (=> b!101416 m!111657))

(declare-fun m!112351 () Bool)

(assert (=> b!101416 m!112351))

(assert (=> bm!10513 m!111657))

(assert (=> bm!10513 m!111773))

(declare-fun m!112353 () Bool)

(assert (=> b!101407 m!112353))

(assert (=> b!101407 m!112353))

(assert (=> b!101407 m!111657))

(declare-fun m!112355 () Bool)

(assert (=> b!101407 m!112355))

(assert (=> b!101409 m!112353))

(assert (=> b!101409 m!111677))

(assert (=> b!101409 m!111677))

(declare-fun m!112357 () Bool)

(assert (=> b!101409 m!112357))

(declare-fun m!112359 () Bool)

(assert (=> bm!10515 m!112359))

(assert (=> d!27513 m!111657))

(declare-fun m!112361 () Bool)

(assert (=> d!27513 m!112361))

(assert (=> d!27513 m!111657))

(declare-fun m!112363 () Bool)

(assert (=> d!27513 m!112363))

(assert (=> d!27513 m!111645))

(assert (=> d!27513 m!111737))

(assert (=> d!27513 m!111657))

(assert (=> d!27513 m!111655))

(declare-fun m!112365 () Bool)

(assert (=> d!27513 m!112365))

(assert (=> d!27513 m!111657))

(assert (=> d!27513 m!111751))

(assert (=> d!27513 m!111757))

(assert (=> d!27513 m!111657))

(assert (=> d!27513 m!112351))

(declare-fun m!112367 () Bool)

(assert (=> d!27513 m!112367))

(declare-fun m!112369 () Bool)

(assert (=> d!27513 m!112369))

(declare-fun m!112371 () Bool)

(assert (=> d!27513 m!112371))

(assert (=> d!27513 m!111657))

(declare-fun m!112373 () Bool)

(assert (=> d!27513 m!112373))

(declare-fun m!112375 () Bool)

(assert (=> d!27513 m!112375))

(declare-fun m!112377 () Bool)

(assert (=> d!27513 m!112377))

(declare-fun m!112379 () Bool)

(assert (=> d!27513 m!112379))

(declare-fun m!112381 () Bool)

(assert (=> d!27513 m!112381))

(declare-fun m!112383 () Bool)

(assert (=> d!27513 m!112383))

(assert (=> d!27513 m!111757))

(declare-fun m!112385 () Bool)

(assert (=> d!27513 m!112385))

(declare-fun m!112387 () Bool)

(assert (=> d!27513 m!112387))

(assert (=> d!27513 m!112381))

(declare-fun m!112389 () Bool)

(assert (=> d!27513 m!112389))

(declare-fun m!112391 () Bool)

(assert (=> d!27513 m!112391))

(assert (=> d!27513 m!111657))

(declare-fun m!112393 () Bool)

(assert (=> d!27513 m!112393))

(assert (=> d!27513 m!111757))

(assert (=> d!27513 m!112009))

(assert (=> d!27513 m!112387))

(assert (=> d!27513 m!111657))

(declare-fun m!112395 () Bool)

(assert (=> d!27513 m!112395))

(declare-fun m!112397 () Bool)

(assert (=> b!101421 m!112397))

(assert (=> bm!10514 m!111657))

(assert (=> bm!10514 m!111751))

(declare-fun m!112399 () Bool)

(assert (=> b!101406 m!112399))

(assert (=> bm!10428 d!27513))

(declare-fun d!27515 () Bool)

(declare-fun e!66019 () Bool)

(assert (=> d!27515 e!66019))

(declare-fun res!50801 () Bool)

(assert (=> d!27515 (=> (not res!50801) (not e!66019))))

(declare-fun lt!51421 () ListLongMap!1561)

(assert (=> d!27515 (= res!50801 (contains!813 lt!51421 (_1!1195 (ite (or c!17380 c!17382) (tuple2!2371 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2402 (v!2833 (underlying!345 thiss!992)))) (tuple2!2371 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2402 (v!2833 (underlying!345 thiss!992))))))))))

(declare-fun lt!51419 () List!1618)

(assert (=> d!27515 (= lt!51421 (ListLongMap!1562 lt!51419))))

(declare-fun lt!51422 () Unit!3091)

(declare-fun lt!51420 () Unit!3091)

(assert (=> d!27515 (= lt!51422 lt!51420)))

(assert (=> d!27515 (= (getValueByKey!151 lt!51419 (_1!1195 (ite (or c!17380 c!17382) (tuple2!2371 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2402 (v!2833 (underlying!345 thiss!992)))) (tuple2!2371 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2402 (v!2833 (underlying!345 thiss!992))))))) (Some!156 (_2!1195 (ite (or c!17380 c!17382) (tuple2!2371 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2402 (v!2833 (underlying!345 thiss!992)))) (tuple2!2371 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2402 (v!2833 (underlying!345 thiss!992))))))))))

(assert (=> d!27515 (= lt!51420 (lemmaContainsTupThenGetReturnValue!69 lt!51419 (_1!1195 (ite (or c!17380 c!17382) (tuple2!2371 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2402 (v!2833 (underlying!345 thiss!992)))) (tuple2!2371 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2402 (v!2833 (underlying!345 thiss!992)))))) (_2!1195 (ite (or c!17380 c!17382) (tuple2!2371 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2402 (v!2833 (underlying!345 thiss!992)))) (tuple2!2371 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2402 (v!2833 (underlying!345 thiss!992))))))))))

(assert (=> d!27515 (= lt!51419 (insertStrictlySorted!71 (toList!796 (ite c!17380 call!10469 (ite c!17382 call!10474 call!10471))) (_1!1195 (ite (or c!17380 c!17382) (tuple2!2371 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2402 (v!2833 (underlying!345 thiss!992)))) (tuple2!2371 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2402 (v!2833 (underlying!345 thiss!992)))))) (_2!1195 (ite (or c!17380 c!17382) (tuple2!2371 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2402 (v!2833 (underlying!345 thiss!992)))) (tuple2!2371 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2402 (v!2833 (underlying!345 thiss!992))))))))))

(assert (=> d!27515 (= (+!140 (ite c!17380 call!10469 (ite c!17382 call!10474 call!10471)) (ite (or c!17380 c!17382) (tuple2!2371 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2402 (v!2833 (underlying!345 thiss!992)))) (tuple2!2371 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2402 (v!2833 (underlying!345 thiss!992)))))) lt!51421)))

(declare-fun b!101422 () Bool)

(declare-fun res!50800 () Bool)

(assert (=> b!101422 (=> (not res!50800) (not e!66019))))

(assert (=> b!101422 (= res!50800 (= (getValueByKey!151 (toList!796 lt!51421) (_1!1195 (ite (or c!17380 c!17382) (tuple2!2371 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2402 (v!2833 (underlying!345 thiss!992)))) (tuple2!2371 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2402 (v!2833 (underlying!345 thiss!992))))))) (Some!156 (_2!1195 (ite (or c!17380 c!17382) (tuple2!2371 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2402 (v!2833 (underlying!345 thiss!992)))) (tuple2!2371 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2402 (v!2833 (underlying!345 thiss!992)))))))))))

(declare-fun b!101423 () Bool)

(assert (=> b!101423 (= e!66019 (contains!815 (toList!796 lt!51421) (ite (or c!17380 c!17382) (tuple2!2371 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2402 (v!2833 (underlying!345 thiss!992)))) (tuple2!2371 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2402 (v!2833 (underlying!345 thiss!992)))))))))

(assert (= (and d!27515 res!50801) b!101422))

(assert (= (and b!101422 res!50800) b!101423))

(declare-fun m!112401 () Bool)

(assert (=> d!27515 m!112401))

(declare-fun m!112403 () Bool)

(assert (=> d!27515 m!112403))

(declare-fun m!112405 () Bool)

(assert (=> d!27515 m!112405))

(declare-fun m!112407 () Bool)

(assert (=> d!27515 m!112407))

(declare-fun m!112409 () Bool)

(assert (=> b!101422 m!112409))

(declare-fun m!112411 () Bool)

(assert (=> b!101423 m!112411))

(assert (=> bm!10471 d!27515))

(declare-fun d!27517 () Bool)

(declare-fun e!66020 () Bool)

(assert (=> d!27517 e!66020))

(declare-fun res!50803 () Bool)

(assert (=> d!27517 (=> (not res!50803) (not e!66020))))

(declare-fun lt!51425 () ListLongMap!1561)

(assert (=> d!27517 (= res!50803 (contains!813 lt!51425 (_1!1195 (ite c!17360 (ite c!17361 (tuple2!2371 #b0000000000000000000000000000000000000000000000000000000000000000 (get!1310 (select (arr!2027 (_values!2506 (v!2833 (underlying!345 thiss!992)))) from!355) (dynLambda!382 (defaultEntry!2523 (v!2833 (underlying!345 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (tuple2!2371 #b1000000000000000000000000000000000000000000000000000000000000000 (get!1310 (select (arr!2027 (_values!2506 (v!2833 (underlying!345 thiss!992)))) from!355) (dynLambda!382 (defaultEntry!2523 (v!2833 (underlying!345 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (tuple2!2371 (select (arr!2026 (_keys!4221 (v!2833 (underlying!345 thiss!992)))) from!355) (get!1310 (select (arr!2027 (_values!2506 (v!2833 (underlying!345 thiss!992)))) from!355) (dynLambda!382 (defaultEntry!2523 (v!2833 (underlying!345 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))))))))

(declare-fun lt!51423 () List!1618)

(assert (=> d!27517 (= lt!51425 (ListLongMap!1562 lt!51423))))

(declare-fun lt!51426 () Unit!3091)

(declare-fun lt!51424 () Unit!3091)

(assert (=> d!27517 (= lt!51426 lt!51424)))

(assert (=> d!27517 (= (getValueByKey!151 lt!51423 (_1!1195 (ite c!17360 (ite c!17361 (tuple2!2371 #b0000000000000000000000000000000000000000000000000000000000000000 (get!1310 (select (arr!2027 (_values!2506 (v!2833 (underlying!345 thiss!992)))) from!355) (dynLambda!382 (defaultEntry!2523 (v!2833 (underlying!345 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (tuple2!2371 #b1000000000000000000000000000000000000000000000000000000000000000 (get!1310 (select (arr!2027 (_values!2506 (v!2833 (underlying!345 thiss!992)))) from!355) (dynLambda!382 (defaultEntry!2523 (v!2833 (underlying!345 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (tuple2!2371 (select (arr!2026 (_keys!4221 (v!2833 (underlying!345 thiss!992)))) from!355) (get!1310 (select (arr!2027 (_values!2506 (v!2833 (underlying!345 thiss!992)))) from!355) (dynLambda!382 (defaultEntry!2523 (v!2833 (underlying!345 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))))) (Some!156 (_2!1195 (ite c!17360 (ite c!17361 (tuple2!2371 #b0000000000000000000000000000000000000000000000000000000000000000 (get!1310 (select (arr!2027 (_values!2506 (v!2833 (underlying!345 thiss!992)))) from!355) (dynLambda!382 (defaultEntry!2523 (v!2833 (underlying!345 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (tuple2!2371 #b1000000000000000000000000000000000000000000000000000000000000000 (get!1310 (select (arr!2027 (_values!2506 (v!2833 (underlying!345 thiss!992)))) from!355) (dynLambda!382 (defaultEntry!2523 (v!2833 (underlying!345 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (tuple2!2371 (select (arr!2026 (_keys!4221 (v!2833 (underlying!345 thiss!992)))) from!355) (get!1310 (select (arr!2027 (_values!2506 (v!2833 (underlying!345 thiss!992)))) from!355) (dynLambda!382 (defaultEntry!2523 (v!2833 (underlying!345 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))))))))

(assert (=> d!27517 (= lt!51424 (lemmaContainsTupThenGetReturnValue!69 lt!51423 (_1!1195 (ite c!17360 (ite c!17361 (tuple2!2371 #b0000000000000000000000000000000000000000000000000000000000000000 (get!1310 (select (arr!2027 (_values!2506 (v!2833 (underlying!345 thiss!992)))) from!355) (dynLambda!382 (defaultEntry!2523 (v!2833 (underlying!345 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (tuple2!2371 #b1000000000000000000000000000000000000000000000000000000000000000 (get!1310 (select (arr!2027 (_values!2506 (v!2833 (underlying!345 thiss!992)))) from!355) (dynLambda!382 (defaultEntry!2523 (v!2833 (underlying!345 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (tuple2!2371 (select (arr!2026 (_keys!4221 (v!2833 (underlying!345 thiss!992)))) from!355) (get!1310 (select (arr!2027 (_values!2506 (v!2833 (underlying!345 thiss!992)))) from!355) (dynLambda!382 (defaultEntry!2523 (v!2833 (underlying!345 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))) (_2!1195 (ite c!17360 (ite c!17361 (tuple2!2371 #b0000000000000000000000000000000000000000000000000000000000000000 (get!1310 (select (arr!2027 (_values!2506 (v!2833 (underlying!345 thiss!992)))) from!355) (dynLambda!382 (defaultEntry!2523 (v!2833 (underlying!345 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (tuple2!2371 #b1000000000000000000000000000000000000000000000000000000000000000 (get!1310 (select (arr!2027 (_values!2506 (v!2833 (underlying!345 thiss!992)))) from!355) (dynLambda!382 (defaultEntry!2523 (v!2833 (underlying!345 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (tuple2!2371 (select (arr!2026 (_keys!4221 (v!2833 (underlying!345 thiss!992)))) from!355) (get!1310 (select (arr!2027 (_values!2506 (v!2833 (underlying!345 thiss!992)))) from!355) (dynLambda!382 (defaultEntry!2523 (v!2833 (underlying!345 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))))))))

(assert (=> d!27517 (= lt!51423 (insertStrictlySorted!71 (toList!796 e!65744) (_1!1195 (ite c!17360 (ite c!17361 (tuple2!2371 #b0000000000000000000000000000000000000000000000000000000000000000 (get!1310 (select (arr!2027 (_values!2506 (v!2833 (underlying!345 thiss!992)))) from!355) (dynLambda!382 (defaultEntry!2523 (v!2833 (underlying!345 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (tuple2!2371 #b1000000000000000000000000000000000000000000000000000000000000000 (get!1310 (select (arr!2027 (_values!2506 (v!2833 (underlying!345 thiss!992)))) from!355) (dynLambda!382 (defaultEntry!2523 (v!2833 (underlying!345 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (tuple2!2371 (select (arr!2026 (_keys!4221 (v!2833 (underlying!345 thiss!992)))) from!355) (get!1310 (select (arr!2027 (_values!2506 (v!2833 (underlying!345 thiss!992)))) from!355) (dynLambda!382 (defaultEntry!2523 (v!2833 (underlying!345 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))) (_2!1195 (ite c!17360 (ite c!17361 (tuple2!2371 #b0000000000000000000000000000000000000000000000000000000000000000 (get!1310 (select (arr!2027 (_values!2506 (v!2833 (underlying!345 thiss!992)))) from!355) (dynLambda!382 (defaultEntry!2523 (v!2833 (underlying!345 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (tuple2!2371 #b1000000000000000000000000000000000000000000000000000000000000000 (get!1310 (select (arr!2027 (_values!2506 (v!2833 (underlying!345 thiss!992)))) from!355) (dynLambda!382 (defaultEntry!2523 (v!2833 (underlying!345 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (tuple2!2371 (select (arr!2026 (_keys!4221 (v!2833 (underlying!345 thiss!992)))) from!355) (get!1310 (select (arr!2027 (_values!2506 (v!2833 (underlying!345 thiss!992)))) from!355) (dynLambda!382 (defaultEntry!2523 (v!2833 (underlying!345 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))))))))

(assert (=> d!27517 (= (+!140 e!65744 (ite c!17360 (ite c!17361 (tuple2!2371 #b0000000000000000000000000000000000000000000000000000000000000000 (get!1310 (select (arr!2027 (_values!2506 (v!2833 (underlying!345 thiss!992)))) from!355) (dynLambda!382 (defaultEntry!2523 (v!2833 (underlying!345 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (tuple2!2371 #b1000000000000000000000000000000000000000000000000000000000000000 (get!1310 (select (arr!2027 (_values!2506 (v!2833 (underlying!345 thiss!992)))) from!355) (dynLambda!382 (defaultEntry!2523 (v!2833 (underlying!345 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (tuple2!2371 (select (arr!2026 (_keys!4221 (v!2833 (underlying!345 thiss!992)))) from!355) (get!1310 (select (arr!2027 (_values!2506 (v!2833 (underlying!345 thiss!992)))) from!355) (dynLambda!382 (defaultEntry!2523 (v!2833 (underlying!345 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))) lt!51425)))

(declare-fun b!101424 () Bool)

(declare-fun res!50802 () Bool)

(assert (=> b!101424 (=> (not res!50802) (not e!66020))))

(assert (=> b!101424 (= res!50802 (= (getValueByKey!151 (toList!796 lt!51425) (_1!1195 (ite c!17360 (ite c!17361 (tuple2!2371 #b0000000000000000000000000000000000000000000000000000000000000000 (get!1310 (select (arr!2027 (_values!2506 (v!2833 (underlying!345 thiss!992)))) from!355) (dynLambda!382 (defaultEntry!2523 (v!2833 (underlying!345 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (tuple2!2371 #b1000000000000000000000000000000000000000000000000000000000000000 (get!1310 (select (arr!2027 (_values!2506 (v!2833 (underlying!345 thiss!992)))) from!355) (dynLambda!382 (defaultEntry!2523 (v!2833 (underlying!345 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (tuple2!2371 (select (arr!2026 (_keys!4221 (v!2833 (underlying!345 thiss!992)))) from!355) (get!1310 (select (arr!2027 (_values!2506 (v!2833 (underlying!345 thiss!992)))) from!355) (dynLambda!382 (defaultEntry!2523 (v!2833 (underlying!345 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))))) (Some!156 (_2!1195 (ite c!17360 (ite c!17361 (tuple2!2371 #b0000000000000000000000000000000000000000000000000000000000000000 (get!1310 (select (arr!2027 (_values!2506 (v!2833 (underlying!345 thiss!992)))) from!355) (dynLambda!382 (defaultEntry!2523 (v!2833 (underlying!345 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (tuple2!2371 #b1000000000000000000000000000000000000000000000000000000000000000 (get!1310 (select (arr!2027 (_values!2506 (v!2833 (underlying!345 thiss!992)))) from!355) (dynLambda!382 (defaultEntry!2523 (v!2833 (underlying!345 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (tuple2!2371 (select (arr!2026 (_keys!4221 (v!2833 (underlying!345 thiss!992)))) from!355) (get!1310 (select (arr!2027 (_values!2506 (v!2833 (underlying!345 thiss!992)))) from!355) (dynLambda!382 (defaultEntry!2523 (v!2833 (underlying!345 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))))))))

(declare-fun b!101425 () Bool)

(assert (=> b!101425 (= e!66020 (contains!815 (toList!796 lt!51425) (ite c!17360 (ite c!17361 (tuple2!2371 #b0000000000000000000000000000000000000000000000000000000000000000 (get!1310 (select (arr!2027 (_values!2506 (v!2833 (underlying!345 thiss!992)))) from!355) (dynLambda!382 (defaultEntry!2523 (v!2833 (underlying!345 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (tuple2!2371 #b1000000000000000000000000000000000000000000000000000000000000000 (get!1310 (select (arr!2027 (_values!2506 (v!2833 (underlying!345 thiss!992)))) from!355) (dynLambda!382 (defaultEntry!2523 (v!2833 (underlying!345 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (tuple2!2371 (select (arr!2026 (_keys!4221 (v!2833 (underlying!345 thiss!992)))) from!355) (get!1310 (select (arr!2027 (_values!2506 (v!2833 (underlying!345 thiss!992)))) from!355) (dynLambda!382 (defaultEntry!2523 (v!2833 (underlying!345 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (= (and d!27517 res!50803) b!101424))

(assert (= (and b!101424 res!50802) b!101425))

(declare-fun m!112413 () Bool)

(assert (=> d!27517 m!112413))

(declare-fun m!112415 () Bool)

(assert (=> d!27517 m!112415))

(declare-fun m!112417 () Bool)

(assert (=> d!27517 m!112417))

(declare-fun m!112419 () Bool)

(assert (=> d!27517 m!112419))

(declare-fun m!112421 () Bool)

(assert (=> b!101424 m!112421))

(declare-fun m!112423 () Bool)

(assert (=> b!101425 m!112423))

(assert (=> bm!10424 d!27517))

(declare-fun d!27519 () Bool)

(declare-fun res!50808 () Bool)

(declare-fun e!66025 () Bool)

(assert (=> d!27519 (=> res!50808 e!66025)))

(assert (=> d!27519 (= res!50808 (and ((_ is Cons!1614) (toList!796 lt!50947)) (= (_1!1195 (h!2210 (toList!796 lt!50947))) (select (arr!2026 (_keys!4221 (v!2833 (underlying!345 thiss!992)))) from!355))))))

(assert (=> d!27519 (= (containsKey!155 (toList!796 lt!50947) (select (arr!2026 (_keys!4221 (v!2833 (underlying!345 thiss!992)))) from!355)) e!66025)))

(declare-fun b!101430 () Bool)

(declare-fun e!66026 () Bool)

(assert (=> b!101430 (= e!66025 e!66026)))

(declare-fun res!50809 () Bool)

(assert (=> b!101430 (=> (not res!50809) (not e!66026))))

(assert (=> b!101430 (= res!50809 (and (or (not ((_ is Cons!1614) (toList!796 lt!50947))) (bvsle (_1!1195 (h!2210 (toList!796 lt!50947))) (select (arr!2026 (_keys!4221 (v!2833 (underlying!345 thiss!992)))) from!355))) ((_ is Cons!1614) (toList!796 lt!50947)) (bvslt (_1!1195 (h!2210 (toList!796 lt!50947))) (select (arr!2026 (_keys!4221 (v!2833 (underlying!345 thiss!992)))) from!355))))))

(declare-fun b!101431 () Bool)

(assert (=> b!101431 (= e!66026 (containsKey!155 (t!5624 (toList!796 lt!50947)) (select (arr!2026 (_keys!4221 (v!2833 (underlying!345 thiss!992)))) from!355)))))

(assert (= (and d!27519 (not res!50808)) b!101430))

(assert (= (and b!101430 res!50809) b!101431))

(assert (=> b!101431 m!111657))

(declare-fun m!112425 () Bool)

(assert (=> b!101431 m!112425))

(assert (=> d!27353 d!27519))

(assert (=> b!100961 d!27395))

(declare-fun b!101432 () Bool)

(declare-fun e!66039 () Bool)

(assert (=> b!101432 (= e!66039 (validKeyInArray!0 (select (arr!2026 (_keys!4221 newMap!16)) #b00000000000000000000000000000000)))))

(declare-fun b!101433 () Bool)

(declare-fun e!66034 () Bool)

(declare-fun e!66037 () Bool)

(assert (=> b!101433 (= e!66034 e!66037)))

(declare-fun c!17473 () Bool)

(assert (=> b!101433 (= c!17473 (not (= (bvand (ite (and c!17360 c!17361) lt!51047 (extraKeys!2336 newMap!16)) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!101434 () Bool)

(declare-fun e!66031 () Bool)

(declare-fun e!66029 () Bool)

(assert (=> b!101434 (= e!66031 e!66029)))

(declare-fun res!50815 () Bool)

(declare-fun call!10524 () Bool)

(assert (=> b!101434 (= res!50815 call!10524)))

(assert (=> b!101434 (=> (not res!50815) (not e!66029))))

(declare-fun b!101435 () Bool)

(declare-fun res!50810 () Bool)

(assert (=> b!101435 (=> (not res!50810) (not e!66034))))

(declare-fun e!66035 () Bool)

(assert (=> b!101435 (= res!50810 e!66035)))

(declare-fun res!50812 () Bool)

(assert (=> b!101435 (=> res!50812 e!66035)))

(declare-fun e!66030 () Bool)

(assert (=> b!101435 (= res!50812 (not e!66030))))

(declare-fun res!50813 () Bool)

(assert (=> b!101435 (=> (not res!50813) (not e!66030))))

(assert (=> b!101435 (= res!50813 (bvslt #b00000000000000000000000000000000 (size!2278 (_keys!4221 newMap!16))))))

(declare-fun b!101436 () Bool)

(declare-fun e!66028 () Bool)

(declare-fun lt!51443 () ListLongMap!1561)

(assert (=> b!101436 (= e!66028 (= (apply!94 lt!51443 #b1000000000000000000000000000000000000000000000000000000000000000) (minValue!2402 newMap!16)))))

(declare-fun b!101437 () Bool)

(declare-fun e!66033 () ListLongMap!1561)

(declare-fun e!66032 () ListLongMap!1561)

(assert (=> b!101437 (= e!66033 e!66032)))

(declare-fun c!17474 () Bool)

(assert (=> b!101437 (= c!17474 (and (not (= (bvand (ite (and c!17360 c!17361) lt!51047 (extraKeys!2336 newMap!16)) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand (ite (and c!17360 c!17361) lt!51047 (extraKeys!2336 newMap!16)) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!101438 () Bool)

(declare-fun e!66036 () ListLongMap!1561)

(declare-fun call!10522 () ListLongMap!1561)

(assert (=> b!101438 (= e!66036 call!10522)))

(declare-fun b!101439 () Bool)

(declare-fun e!66027 () Bool)

(assert (=> b!101439 (= e!66027 (= (apply!94 lt!51443 (select (arr!2026 (_keys!4221 newMap!16)) #b00000000000000000000000000000000)) (get!1310 (select (arr!2027 (ite c!17360 (_values!2506 newMap!16) (array!4271 (store (arr!2027 (_values!2506 newMap!16)) (index!3206 lt!51046) (ValueCellFull!978 (get!1310 (select (arr!2027 (_values!2506 (v!2833 (underlying!345 thiss!992)))) from!355) (dynLambda!382 (defaultEntry!2523 (v!2833 (underlying!345 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (size!2279 (_values!2506 newMap!16))))) #b00000000000000000000000000000000) (dynLambda!382 (defaultEntry!2523 newMap!16) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!101439 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!2279 (ite c!17360 (_values!2506 newMap!16) (array!4271 (store (arr!2027 (_values!2506 newMap!16)) (index!3206 lt!51046) (ValueCellFull!978 (get!1310 (select (arr!2027 (_values!2506 (v!2833 (underlying!345 thiss!992)))) from!355) (dynLambda!382 (defaultEntry!2523 (v!2833 (underlying!345 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (size!2279 (_values!2506 newMap!16)))))))))

(assert (=> b!101439 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!2278 (_keys!4221 newMap!16))))))

(declare-fun bm!10518 () Bool)

(declare-fun call!10525 () ListLongMap!1561)

(assert (=> bm!10518 (= call!10522 call!10525)))

(declare-fun b!101440 () Bool)

(declare-fun res!50814 () Bool)

(assert (=> b!101440 (=> (not res!50814) (not e!66034))))

(assert (=> b!101440 (= res!50814 e!66031)))

(declare-fun c!17477 () Bool)

(assert (=> b!101440 (= c!17477 (not (= (bvand (ite (and c!17360 c!17361) lt!51047 (extraKeys!2336 newMap!16)) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun bm!10519 () Bool)

(declare-fun call!10523 () ListLongMap!1561)

(declare-fun call!10526 () ListLongMap!1561)

(assert (=> bm!10519 (= call!10523 call!10526)))

(declare-fun bm!10520 () Bool)

(declare-fun call!10521 () ListLongMap!1561)

(assert (=> bm!10520 (= call!10526 call!10521)))

(declare-fun b!101441 () Bool)

(assert (=> b!101441 (= e!66036 call!10523)))

(declare-fun b!101442 () Bool)

(assert (=> b!101442 (= e!66029 (= (apply!94 lt!51443 #b0000000000000000000000000000000000000000000000000000000000000000) (ite (and c!17360 c!17361) (get!1310 (select (arr!2027 (_values!2506 (v!2833 (underlying!345 thiss!992)))) from!355) (dynLambda!382 (defaultEntry!2523 (v!2833 (underlying!345 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (zeroValue!2402 newMap!16))))))

(declare-fun b!101443 () Bool)

(assert (=> b!101443 (= e!66032 call!10522)))

(declare-fun bm!10521 () Bool)

(declare-fun call!10520 () Bool)

(assert (=> bm!10521 (= call!10520 (contains!813 lt!51443 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!101444 () Bool)

(assert (=> b!101444 (= e!66030 (validKeyInArray!0 (select (arr!2026 (_keys!4221 newMap!16)) #b00000000000000000000000000000000)))))

(declare-fun b!101445 () Bool)

(assert (=> b!101445 (= e!66037 e!66028)))

(declare-fun res!50817 () Bool)

(assert (=> b!101445 (= res!50817 call!10520)))

(assert (=> b!101445 (=> (not res!50817) (not e!66028))))

(declare-fun b!101446 () Bool)

(declare-fun c!17476 () Bool)

(assert (=> b!101446 (= c!17476 (and (not (= (bvand (ite (and c!17360 c!17361) lt!51047 (extraKeys!2336 newMap!16)) #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand (ite (and c!17360 c!17361) lt!51047 (extraKeys!2336 newMap!16)) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!101446 (= e!66032 e!66036)))

(declare-fun d!27521 () Bool)

(assert (=> d!27521 e!66034))

(declare-fun res!50816 () Bool)

(assert (=> d!27521 (=> (not res!50816) (not e!66034))))

(assert (=> d!27521 (= res!50816 (or (bvsge #b00000000000000000000000000000000 (size!2278 (_keys!4221 newMap!16))) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!2278 (_keys!4221 newMap!16))))))))

(declare-fun lt!51444 () ListLongMap!1561)

(assert (=> d!27521 (= lt!51443 lt!51444)))

(declare-fun lt!51447 () Unit!3091)

(declare-fun e!66038 () Unit!3091)

(assert (=> d!27521 (= lt!51447 e!66038)))

(declare-fun c!17475 () Bool)

(assert (=> d!27521 (= c!17475 e!66039)))

(declare-fun res!50818 () Bool)

(assert (=> d!27521 (=> (not res!50818) (not e!66039))))

(assert (=> d!27521 (= res!50818 (bvslt #b00000000000000000000000000000000 (size!2278 (_keys!4221 newMap!16))))))

(assert (=> d!27521 (= lt!51444 e!66033)))

(declare-fun c!17472 () Bool)

(assert (=> d!27521 (= c!17472 (and (not (= (bvand (ite (and c!17360 c!17361) lt!51047 (extraKeys!2336 newMap!16)) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (ite (and c!17360 c!17361) lt!51047 (extraKeys!2336 newMap!16)) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!27521 (validMask!0 (mask!6640 newMap!16))))

(assert (=> d!27521 (= (getCurrentListMap!476 (_keys!4221 newMap!16) (ite c!17360 (_values!2506 newMap!16) (array!4271 (store (arr!2027 (_values!2506 newMap!16)) (index!3206 lt!51046) (ValueCellFull!978 (get!1310 (select (arr!2027 (_values!2506 (v!2833 (underlying!345 thiss!992)))) from!355) (dynLambda!382 (defaultEntry!2523 (v!2833 (underlying!345 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (size!2279 (_values!2506 newMap!16)))) (mask!6640 newMap!16) (ite (and c!17360 c!17361) lt!51047 (extraKeys!2336 newMap!16)) (ite (and c!17360 c!17361) (get!1310 (select (arr!2027 (_values!2506 (v!2833 (underlying!345 thiss!992)))) from!355) (dynLambda!382 (defaultEntry!2523 (v!2833 (underlying!345 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (zeroValue!2402 newMap!16)) (minValue!2402 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2523 newMap!16)) lt!51443)))

(declare-fun bm!10517 () Bool)

(assert (=> bm!10517 (= call!10521 (getCurrentListMapNoExtraKeys!104 (_keys!4221 newMap!16) (ite c!17360 (_values!2506 newMap!16) (array!4271 (store (arr!2027 (_values!2506 newMap!16)) (index!3206 lt!51046) (ValueCellFull!978 (get!1310 (select (arr!2027 (_values!2506 (v!2833 (underlying!345 thiss!992)))) from!355) (dynLambda!382 (defaultEntry!2523 (v!2833 (underlying!345 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (size!2279 (_values!2506 newMap!16)))) (mask!6640 newMap!16) (ite (and c!17360 c!17361) lt!51047 (extraKeys!2336 newMap!16)) (ite (and c!17360 c!17361) (get!1310 (select (arr!2027 (_values!2506 (v!2833 (underlying!345 thiss!992)))) from!355) (dynLambda!382 (defaultEntry!2523 (v!2833 (underlying!345 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (zeroValue!2402 newMap!16)) (minValue!2402 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2523 newMap!16)))))

(declare-fun bm!10522 () Bool)

(assert (=> bm!10522 (= call!10524 (contains!813 lt!51443 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!101447 () Bool)

(assert (=> b!101447 (= e!66031 (not call!10524))))

(declare-fun b!101448 () Bool)

(assert (=> b!101448 (= e!66037 (not call!10520))))

(declare-fun b!101449 () Bool)

(assert (=> b!101449 (= e!66033 (+!140 call!10525 (tuple2!2371 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2402 newMap!16))))))

(declare-fun b!101450 () Bool)

(assert (=> b!101450 (= e!66035 e!66027)))

(declare-fun res!50811 () Bool)

(assert (=> b!101450 (=> (not res!50811) (not e!66027))))

(assert (=> b!101450 (= res!50811 (contains!813 lt!51443 (select (arr!2026 (_keys!4221 newMap!16)) #b00000000000000000000000000000000)))))

(assert (=> b!101450 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!2278 (_keys!4221 newMap!16))))))

(declare-fun b!101451 () Bool)

(declare-fun Unit!3110 () Unit!3091)

(assert (=> b!101451 (= e!66038 Unit!3110)))

(declare-fun bm!10523 () Bool)

(assert (=> bm!10523 (= call!10525 (+!140 (ite c!17472 call!10521 (ite c!17474 call!10526 call!10523)) (ite (or c!17472 c!17474) (tuple2!2371 #b0000000000000000000000000000000000000000000000000000000000000000 (ite (and c!17360 c!17361) (get!1310 (select (arr!2027 (_values!2506 (v!2833 (underlying!345 thiss!992)))) from!355) (dynLambda!382 (defaultEntry!2523 (v!2833 (underlying!345 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (zeroValue!2402 newMap!16))) (tuple2!2371 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2402 newMap!16)))))))

(declare-fun b!101452 () Bool)

(declare-fun lt!51428 () Unit!3091)

(assert (=> b!101452 (= e!66038 lt!51428)))

(declare-fun lt!51433 () ListLongMap!1561)

(assert (=> b!101452 (= lt!51433 (getCurrentListMapNoExtraKeys!104 (_keys!4221 newMap!16) (ite c!17360 (_values!2506 newMap!16) (array!4271 (store (arr!2027 (_values!2506 newMap!16)) (index!3206 lt!51046) (ValueCellFull!978 (get!1310 (select (arr!2027 (_values!2506 (v!2833 (underlying!345 thiss!992)))) from!355) (dynLambda!382 (defaultEntry!2523 (v!2833 (underlying!345 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (size!2279 (_values!2506 newMap!16)))) (mask!6640 newMap!16) (ite (and c!17360 c!17361) lt!51047 (extraKeys!2336 newMap!16)) (ite (and c!17360 c!17361) (get!1310 (select (arr!2027 (_values!2506 (v!2833 (underlying!345 thiss!992)))) from!355) (dynLambda!382 (defaultEntry!2523 (v!2833 (underlying!345 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (zeroValue!2402 newMap!16)) (minValue!2402 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2523 newMap!16)))))

(declare-fun lt!51442 () (_ BitVec 64))

(assert (=> b!101452 (= lt!51442 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!51446 () (_ BitVec 64))

(assert (=> b!101452 (= lt!51446 (select (arr!2026 (_keys!4221 newMap!16)) #b00000000000000000000000000000000))))

(declare-fun lt!51448 () Unit!3091)

(assert (=> b!101452 (= lt!51448 (addStillContains!70 lt!51433 lt!51442 (ite (and c!17360 c!17361) (get!1310 (select (arr!2027 (_values!2506 (v!2833 (underlying!345 thiss!992)))) from!355) (dynLambda!382 (defaultEntry!2523 (v!2833 (underlying!345 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (zeroValue!2402 newMap!16)) lt!51446))))

(assert (=> b!101452 (contains!813 (+!140 lt!51433 (tuple2!2371 lt!51442 (ite (and c!17360 c!17361) (get!1310 (select (arr!2027 (_values!2506 (v!2833 (underlying!345 thiss!992)))) from!355) (dynLambda!382 (defaultEntry!2523 (v!2833 (underlying!345 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (zeroValue!2402 newMap!16)))) lt!51446)))

(declare-fun lt!51441 () Unit!3091)

(assert (=> b!101452 (= lt!51441 lt!51448)))

(declare-fun lt!51437 () ListLongMap!1561)

(assert (=> b!101452 (= lt!51437 (getCurrentListMapNoExtraKeys!104 (_keys!4221 newMap!16) (ite c!17360 (_values!2506 newMap!16) (array!4271 (store (arr!2027 (_values!2506 newMap!16)) (index!3206 lt!51046) (ValueCellFull!978 (get!1310 (select (arr!2027 (_values!2506 (v!2833 (underlying!345 thiss!992)))) from!355) (dynLambda!382 (defaultEntry!2523 (v!2833 (underlying!345 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (size!2279 (_values!2506 newMap!16)))) (mask!6640 newMap!16) (ite (and c!17360 c!17361) lt!51047 (extraKeys!2336 newMap!16)) (ite (and c!17360 c!17361) (get!1310 (select (arr!2027 (_values!2506 (v!2833 (underlying!345 thiss!992)))) from!355) (dynLambda!382 (defaultEntry!2523 (v!2833 (underlying!345 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (zeroValue!2402 newMap!16)) (minValue!2402 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2523 newMap!16)))))

(declare-fun lt!51429 () (_ BitVec 64))

(assert (=> b!101452 (= lt!51429 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!51439 () (_ BitVec 64))

(assert (=> b!101452 (= lt!51439 (select (arr!2026 (_keys!4221 newMap!16)) #b00000000000000000000000000000000))))

(declare-fun lt!51445 () Unit!3091)

(assert (=> b!101452 (= lt!51445 (addApplyDifferent!70 lt!51437 lt!51429 (minValue!2402 newMap!16) lt!51439))))

(assert (=> b!101452 (= (apply!94 (+!140 lt!51437 (tuple2!2371 lt!51429 (minValue!2402 newMap!16))) lt!51439) (apply!94 lt!51437 lt!51439))))

(declare-fun lt!51434 () Unit!3091)

(assert (=> b!101452 (= lt!51434 lt!51445)))

(declare-fun lt!51440 () ListLongMap!1561)

(assert (=> b!101452 (= lt!51440 (getCurrentListMapNoExtraKeys!104 (_keys!4221 newMap!16) (ite c!17360 (_values!2506 newMap!16) (array!4271 (store (arr!2027 (_values!2506 newMap!16)) (index!3206 lt!51046) (ValueCellFull!978 (get!1310 (select (arr!2027 (_values!2506 (v!2833 (underlying!345 thiss!992)))) from!355) (dynLambda!382 (defaultEntry!2523 (v!2833 (underlying!345 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (size!2279 (_values!2506 newMap!16)))) (mask!6640 newMap!16) (ite (and c!17360 c!17361) lt!51047 (extraKeys!2336 newMap!16)) (ite (and c!17360 c!17361) (get!1310 (select (arr!2027 (_values!2506 (v!2833 (underlying!345 thiss!992)))) from!355) (dynLambda!382 (defaultEntry!2523 (v!2833 (underlying!345 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (zeroValue!2402 newMap!16)) (minValue!2402 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2523 newMap!16)))))

(declare-fun lt!51436 () (_ BitVec 64))

(assert (=> b!101452 (= lt!51436 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!51430 () (_ BitVec 64))

(assert (=> b!101452 (= lt!51430 (select (arr!2026 (_keys!4221 newMap!16)) #b00000000000000000000000000000000))))

(declare-fun lt!51438 () Unit!3091)

(assert (=> b!101452 (= lt!51438 (addApplyDifferent!70 lt!51440 lt!51436 (ite (and c!17360 c!17361) (get!1310 (select (arr!2027 (_values!2506 (v!2833 (underlying!345 thiss!992)))) from!355) (dynLambda!382 (defaultEntry!2523 (v!2833 (underlying!345 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (zeroValue!2402 newMap!16)) lt!51430))))

(assert (=> b!101452 (= (apply!94 (+!140 lt!51440 (tuple2!2371 lt!51436 (ite (and c!17360 c!17361) (get!1310 (select (arr!2027 (_values!2506 (v!2833 (underlying!345 thiss!992)))) from!355) (dynLambda!382 (defaultEntry!2523 (v!2833 (underlying!345 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (zeroValue!2402 newMap!16)))) lt!51430) (apply!94 lt!51440 lt!51430))))

(declare-fun lt!51435 () Unit!3091)

(assert (=> b!101452 (= lt!51435 lt!51438)))

(declare-fun lt!51431 () ListLongMap!1561)

(assert (=> b!101452 (= lt!51431 (getCurrentListMapNoExtraKeys!104 (_keys!4221 newMap!16) (ite c!17360 (_values!2506 newMap!16) (array!4271 (store (arr!2027 (_values!2506 newMap!16)) (index!3206 lt!51046) (ValueCellFull!978 (get!1310 (select (arr!2027 (_values!2506 (v!2833 (underlying!345 thiss!992)))) from!355) (dynLambda!382 (defaultEntry!2523 (v!2833 (underlying!345 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (size!2279 (_values!2506 newMap!16)))) (mask!6640 newMap!16) (ite (and c!17360 c!17361) lt!51047 (extraKeys!2336 newMap!16)) (ite (and c!17360 c!17361) (get!1310 (select (arr!2027 (_values!2506 (v!2833 (underlying!345 thiss!992)))) from!355) (dynLambda!382 (defaultEntry!2523 (v!2833 (underlying!345 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (zeroValue!2402 newMap!16)) (minValue!2402 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2523 newMap!16)))))

(declare-fun lt!51432 () (_ BitVec 64))

(assert (=> b!101452 (= lt!51432 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!51427 () (_ BitVec 64))

(assert (=> b!101452 (= lt!51427 (select (arr!2026 (_keys!4221 newMap!16)) #b00000000000000000000000000000000))))

(assert (=> b!101452 (= lt!51428 (addApplyDifferent!70 lt!51431 lt!51432 (minValue!2402 newMap!16) lt!51427))))

(assert (=> b!101452 (= (apply!94 (+!140 lt!51431 (tuple2!2371 lt!51432 (minValue!2402 newMap!16))) lt!51427) (apply!94 lt!51431 lt!51427))))

(assert (= (and d!27521 c!17472) b!101449))

(assert (= (and d!27521 (not c!17472)) b!101437))

(assert (= (and b!101437 c!17474) b!101443))

(assert (= (and b!101437 (not c!17474)) b!101446))

(assert (= (and b!101446 c!17476) b!101438))

(assert (= (and b!101446 (not c!17476)) b!101441))

(assert (= (or b!101438 b!101441) bm!10519))

(assert (= (or b!101443 bm!10519) bm!10520))

(assert (= (or b!101443 b!101438) bm!10518))

(assert (= (or b!101449 bm!10520) bm!10517))

(assert (= (or b!101449 bm!10518) bm!10523))

(assert (= (and d!27521 res!50818) b!101432))

(assert (= (and d!27521 c!17475) b!101452))

(assert (= (and d!27521 (not c!17475)) b!101451))

(assert (= (and d!27521 res!50816) b!101435))

(assert (= (and b!101435 res!50813) b!101444))

(assert (= (and b!101435 (not res!50812)) b!101450))

(assert (= (and b!101450 res!50811) b!101439))

(assert (= (and b!101435 res!50810) b!101440))

(assert (= (and b!101440 c!17477) b!101434))

(assert (= (and b!101440 (not c!17477)) b!101447))

(assert (= (and b!101434 res!50815) b!101442))

(assert (= (or b!101434 b!101447) bm!10522))

(assert (= (and b!101440 res!50814) b!101433))

(assert (= (and b!101433 c!17473) b!101445))

(assert (= (and b!101433 (not c!17473)) b!101448))

(assert (= (and b!101445 res!50817) b!101436))

(assert (= (or b!101445 b!101448) bm!10521))

(declare-fun b_lambda!4553 () Bool)

(assert (=> (not b_lambda!4553) (not b!101439)))

(assert (=> b!101439 t!5631))

(declare-fun b_and!6249 () Bool)

(assert (= b_and!6245 (and (=> t!5631 result!3343) b_and!6249)))

(assert (=> b!101439 t!5633))

(declare-fun b_and!6251 () Bool)

(assert (= b_and!6247 (and (=> t!5633 result!3345) b_and!6251)))

(assert (=> b!101432 m!111937))

(assert (=> b!101432 m!111937))

(assert (=> b!101432 m!111945))

(assert (=> b!101439 m!112163))

(declare-fun m!112427 () Bool)

(assert (=> b!101439 m!112427))

(assert (=> b!101439 m!112163))

(declare-fun m!112429 () Bool)

(assert (=> b!101439 m!112429))

(assert (=> b!101439 m!112427))

(assert (=> b!101439 m!111937))

(assert (=> b!101439 m!111937))

(declare-fun m!112431 () Bool)

(assert (=> b!101439 m!112431))

(declare-fun m!112433 () Bool)

(assert (=> bm!10522 m!112433))

(assert (=> b!101450 m!111937))

(assert (=> b!101450 m!111937))

(declare-fun m!112435 () Bool)

(assert (=> b!101450 m!112435))

(declare-fun m!112437 () Bool)

(assert (=> b!101449 m!112437))

(assert (=> d!27521 m!111929))

(declare-fun m!112439 () Bool)

(assert (=> b!101436 m!112439))

(assert (=> b!101444 m!111937))

(assert (=> b!101444 m!111937))

(assert (=> b!101444 m!111945))

(declare-fun m!112441 () Bool)

(assert (=> bm!10517 m!112441))

(declare-fun m!112443 () Bool)

(assert (=> bm!10521 m!112443))

(declare-fun m!112445 () Bool)

(assert (=> b!101442 m!112445))

(declare-fun m!112447 () Bool)

(assert (=> bm!10523 m!112447))

(declare-fun m!112449 () Bool)

(assert (=> b!101452 m!112449))

(declare-fun m!112451 () Bool)

(assert (=> b!101452 m!112451))

(declare-fun m!112453 () Bool)

(assert (=> b!101452 m!112453))

(declare-fun m!112455 () Bool)

(assert (=> b!101452 m!112455))

(declare-fun m!112457 () Bool)

(assert (=> b!101452 m!112457))

(declare-fun m!112459 () Bool)

(assert (=> b!101452 m!112459))

(declare-fun m!112461 () Bool)

(assert (=> b!101452 m!112461))

(assert (=> b!101452 m!111937))

(assert (=> b!101452 m!112451))

(declare-fun m!112463 () Bool)

(assert (=> b!101452 m!112463))

(declare-fun m!112465 () Bool)

(assert (=> b!101452 m!112465))

(assert (=> b!101452 m!112441))

(assert (=> b!101452 m!112459))

(assert (=> b!101452 m!112455))

(declare-fun m!112467 () Bool)

(assert (=> b!101452 m!112467))

(declare-fun m!112469 () Bool)

(assert (=> b!101452 m!112469))

(declare-fun m!112471 () Bool)

(assert (=> b!101452 m!112471))

(assert (=> b!101452 m!112449))

(declare-fun m!112473 () Bool)

(assert (=> b!101452 m!112473))

(declare-fun m!112475 () Bool)

(assert (=> b!101452 m!112475))

(declare-fun m!112477 () Bool)

(assert (=> b!101452 m!112477))

(assert (=> bm!10445 d!27521))

(declare-fun d!27523 () Bool)

(declare-fun e!66040 () Bool)

(assert (=> d!27523 e!66040))

(declare-fun res!50819 () Bool)

(assert (=> d!27523 (=> res!50819 e!66040)))

(declare-fun lt!51450 () Bool)

(assert (=> d!27523 (= res!50819 (not lt!51450))))

(declare-fun lt!51449 () Bool)

(assert (=> d!27523 (= lt!51450 lt!51449)))

(declare-fun lt!51452 () Unit!3091)

(declare-fun e!66041 () Unit!3091)

(assert (=> d!27523 (= lt!51452 e!66041)))

(declare-fun c!17478 () Bool)

(assert (=> d!27523 (= c!17478 lt!51449)))

(assert (=> d!27523 (= lt!51449 (containsKey!155 (toList!796 lt!51131) (select (arr!2026 (_keys!4221 (v!2833 (underlying!345 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))))))

(assert (=> d!27523 (= (contains!813 lt!51131 (select (arr!2026 (_keys!4221 (v!2833 (underlying!345 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))) lt!51450)))

(declare-fun b!101453 () Bool)

(declare-fun lt!51451 () Unit!3091)

(assert (=> b!101453 (= e!66041 lt!51451)))

(assert (=> b!101453 (= lt!51451 (lemmaContainsKeyImpliesGetValueByKeyDefined!104 (toList!796 lt!51131) (select (arr!2026 (_keys!4221 (v!2833 (underlying!345 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))))))

(assert (=> b!101453 (isDefined!105 (getValueByKey!151 (toList!796 lt!51131) (select (arr!2026 (_keys!4221 (v!2833 (underlying!345 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))))))

(declare-fun b!101454 () Bool)

(declare-fun Unit!3111 () Unit!3091)

(assert (=> b!101454 (= e!66041 Unit!3111)))

(declare-fun b!101455 () Bool)

(assert (=> b!101455 (= e!66040 (isDefined!105 (getValueByKey!151 (toList!796 lt!51131) (select (arr!2026 (_keys!4221 (v!2833 (underlying!345 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)))))))

(assert (= (and d!27523 c!17478) b!101453))

(assert (= (and d!27523 (not c!17478)) b!101454))

(assert (= (and d!27523 (not res!50819)) b!101455))

(assert (=> d!27523 m!111825))

(declare-fun m!112479 () Bool)

(assert (=> d!27523 m!112479))

(assert (=> b!101453 m!111825))

(declare-fun m!112481 () Bool)

(assert (=> b!101453 m!112481))

(assert (=> b!101453 m!111825))

(assert (=> b!101453 m!112237))

(assert (=> b!101453 m!112237))

(declare-fun m!112483 () Bool)

(assert (=> b!101453 m!112483))

(assert (=> b!101455 m!111825))

(assert (=> b!101455 m!112237))

(assert (=> b!101455 m!112237))

(assert (=> b!101455 m!112483))

(assert (=> b!101069 d!27523))

(declare-fun mapNonEmpty!3809 () Bool)

(declare-fun mapRes!3809 () Bool)

(declare-fun tp!9677 () Bool)

(declare-fun e!66042 () Bool)

(assert (=> mapNonEmpty!3809 (= mapRes!3809 (and tp!9677 e!66042))))

(declare-fun mapValue!3809 () ValueCell!978)

(declare-fun mapKey!3809 () (_ BitVec 32))

(declare-fun mapRest!3809 () (Array (_ BitVec 32) ValueCell!978))

(assert (=> mapNonEmpty!3809 (= mapRest!3808 (store mapRest!3809 mapKey!3809 mapValue!3809))))

(declare-fun b!101457 () Bool)

(declare-fun e!66043 () Bool)

(assert (=> b!101457 (= e!66043 tp_is_empty!2643)))

(declare-fun b!101456 () Bool)

(assert (=> b!101456 (= e!66042 tp_is_empty!2643)))

(declare-fun condMapEmpty!3809 () Bool)

(declare-fun mapDefault!3809 () ValueCell!978)

(assert (=> mapNonEmpty!3808 (= condMapEmpty!3809 (= mapRest!3808 ((as const (Array (_ BitVec 32) ValueCell!978)) mapDefault!3809)))))

(assert (=> mapNonEmpty!3808 (= tp!9676 (and e!66043 mapRes!3809))))

(declare-fun mapIsEmpty!3809 () Bool)

(assert (=> mapIsEmpty!3809 mapRes!3809))

(assert (= (and mapNonEmpty!3808 condMapEmpty!3809) mapIsEmpty!3809))

(assert (= (and mapNonEmpty!3808 (not condMapEmpty!3809)) mapNonEmpty!3809))

(assert (= (and mapNonEmpty!3809 ((_ is ValueCellFull!978) mapValue!3809)) b!101456))

(assert (= (and mapNonEmpty!3808 ((_ is ValueCellFull!978) mapDefault!3809)) b!101457))

(declare-fun m!112485 () Bool)

(assert (=> mapNonEmpty!3809 m!112485))

(declare-fun mapNonEmpty!3810 () Bool)

(declare-fun mapRes!3810 () Bool)

(declare-fun tp!9678 () Bool)

(declare-fun e!66044 () Bool)

(assert (=> mapNonEmpty!3810 (= mapRes!3810 (and tp!9678 e!66044))))

(declare-fun mapValue!3810 () ValueCell!978)

(declare-fun mapKey!3810 () (_ BitVec 32))

(declare-fun mapRest!3810 () (Array (_ BitVec 32) ValueCell!978))

(assert (=> mapNonEmpty!3810 (= mapRest!3807 (store mapRest!3810 mapKey!3810 mapValue!3810))))

(declare-fun b!101459 () Bool)

(declare-fun e!66045 () Bool)

(assert (=> b!101459 (= e!66045 tp_is_empty!2643)))

(declare-fun b!101458 () Bool)

(assert (=> b!101458 (= e!66044 tp_is_empty!2643)))

(declare-fun condMapEmpty!3810 () Bool)

(declare-fun mapDefault!3810 () ValueCell!978)

(assert (=> mapNonEmpty!3807 (= condMapEmpty!3810 (= mapRest!3807 ((as const (Array (_ BitVec 32) ValueCell!978)) mapDefault!3810)))))

(assert (=> mapNonEmpty!3807 (= tp!9675 (and e!66045 mapRes!3810))))

(declare-fun mapIsEmpty!3810 () Bool)

(assert (=> mapIsEmpty!3810 mapRes!3810))

(assert (= (and mapNonEmpty!3807 condMapEmpty!3810) mapIsEmpty!3810))

(assert (= (and mapNonEmpty!3807 (not condMapEmpty!3810)) mapNonEmpty!3810))

(assert (= (and mapNonEmpty!3810 ((_ is ValueCellFull!978) mapValue!3810)) b!101458))

(assert (= (and mapNonEmpty!3807 ((_ is ValueCellFull!978) mapDefault!3810)) b!101459))

(declare-fun m!112487 () Bool)

(assert (=> mapNonEmpty!3810 m!112487))

(declare-fun b_lambda!4555 () Bool)

(assert (= b_lambda!4545 (or (and b!100776 b_free!2453) (and b!100781 b_free!2455 (= (defaultEntry!2523 newMap!16) (defaultEntry!2523 (v!2833 (underlying!345 thiss!992))))) b_lambda!4555)))

(declare-fun b_lambda!4557 () Bool)

(assert (= b_lambda!4547 (or (and b!100776 b_free!2453) (and b!100781 b_free!2455 (= (defaultEntry!2523 newMap!16) (defaultEntry!2523 (v!2833 (underlying!345 thiss!992))))) b_lambda!4557)))

(declare-fun b_lambda!4559 () Bool)

(assert (= b_lambda!4549 (or (and b!100776 b_free!2453 (= (defaultEntry!2523 (v!2833 (underlying!345 thiss!992))) (defaultEntry!2523 newMap!16))) (and b!100781 b_free!2455) b_lambda!4559)))

(declare-fun b_lambda!4561 () Bool)

(assert (= b_lambda!4551 (or (and b!100776 b_free!2453 (= (defaultEntry!2523 (v!2833 (underlying!345 thiss!992))) (defaultEntry!2523 newMap!16))) (and b!100781 b_free!2455) b_lambda!4561)))

(declare-fun b_lambda!4563 () Bool)

(assert (= b_lambda!4553 (or (and b!100776 b_free!2453 (= (defaultEntry!2523 (v!2833 (underlying!345 thiss!992))) (defaultEntry!2523 newMap!16))) (and b!100781 b_free!2455) b_lambda!4563)))

(check-sat (not b!101123) (not d!27421) (not b!101352) (not b!101432) (not b!101283) (not d!27411) (not b!101129) (not d!27443) (not b!101332) (not b!101444) (not d!27517) (not b!101293) (not b!101431) (not b!101257) (not bm!10523) (not bm!10517) (not d!27471) (not b!101365) (not d!27459) (not d!27479) (not b!101297) (not bm!10522) (not b!101284) (not bm!10496) (not b!101220) (not b!101148) (not b!101272) (not b!101262) (not d!27475) (not b!101344) (not b!101144) (not b!101311) (not b!101453) (not b!101353) (not bm!10504) (not d!27493) (not b!101319) (not b!101248) (not b!101278) (not b_lambda!4543) (not b!101256) (not b!101219) (not b_next!2455) (not d!27413) (not b!101363) (not d!27491) (not b!101336) (not b!101166) (not b!101452) (not b!101290) (not d!27465) (not bm!10489) (not d!27427) (not d!27431) (not b!101407) (not b_lambda!4563) (not b!101449) (not b!101152) (not b!101305) (not b!101274) (not b!101424) (not bm!10491) (not b!101172) (not b!101409) tp_is_empty!2643 (not d!27523) (not b!101155) (not d!27433) (not b!101355) (not b_lambda!4561) (not d!27453) (not bm!10475) (not bm!10513) (not b!101273) (not d!27449) (not b!101150) (not d!27429) (not d!27399) (not bm!10481) (not d!27463) (not d!27461) (not b!101145) (not b!101413) (not d!27457) (not b!101358) (not b!101362) (not b!101318) (not bm!10485) (not b!101210) (not b!101422) (not d!27391) (not b_lambda!4557) (not b!101455) (not d!27483) (not d!27487) (not b!101350) (not d!27395) (not b!101328) (not b!101436) (not b!101281) b_and!6251 (not bm!10502) (not b!101450) (not d!27447) (not b_lambda!4559) (not d!27423) (not b!101368) (not b_lambda!4539) (not b!101218) (not b!101439) (not d!27419) (not bm!10492) (not d!27397) (not d!27481) (not b!101423) (not d!27435) (not bm!10521) (not b!101110) (not d!27467) (not b!101209) (not b!101370) (not b!101313) (not b!101425) (not b!101206) (not b!101442) (not b!101317) (not mapNonEmpty!3810) (not b!101342) (not d!27425) (not b!101366) (not d!27507) (not bm!10500) (not d!27477) (not bm!10484) (not d!27521) (not b!101406) (not b!101221) (not bm!10515) (not bm!10490) (not d!27445) (not d!27509) (not d!27387) (not b!101215) (not b!101339) (not d!27455) (not b!101287) (not bm!10501) (not d!27451) (not b!101246) (not b!101315) (not b!101250) (not b!101179) (not b!101292) (not b!101414) (not d!27501) (not b!101357) (not b!101207) (not d!27513) (not b!101253) (not b!101288) (not b!101361) (not d!27437) (not b_lambda!4555) (not b!101416) (not bm!10514) (not b!101279) (not d!27497) (not d!27515) (not b!101212) (not b!101291) (not d!27439) (not mapNonEmpty!3809) b_and!6249 (not bm!10503) (not bm!10480) (not d!27469) (not b!101300) (not b!101349) (not b!101275) (not bm!10495) (not b!101285) (not b!101310) (not b!101360) (not d!27503) (not b!101252) (not b!101153) (not b!101289) (not b!101247) (not b_next!2453) (not b!101303))
(check-sat b_and!6249 b_and!6251 (not b_next!2453) (not b_next!2455))

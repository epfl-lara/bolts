; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!8730 () Bool)

(assert start!8730)

(declare-fun b!60430 () Bool)

(declare-fun b_free!1973 () Bool)

(declare-fun b_next!1973 () Bool)

(assert (=> b!60430 (= b_free!1973 (not b_next!1973))))

(declare-fun tp!8039 () Bool)

(declare-fun b_and!3669 () Bool)

(assert (=> b!60430 (= tp!8039 b_and!3669)))

(declare-fun b!60429 () Bool)

(declare-fun b_free!1975 () Bool)

(declare-fun b_next!1975 () Bool)

(assert (=> b!60429 (= b_free!1975 (not b_next!1975))))

(declare-fun tp!8041 () Bool)

(declare-fun b_and!3671 () Bool)

(assert (=> b!60429 (= tp!8041 b_and!3671)))

(declare-fun mapNonEmpty!2899 () Bool)

(declare-fun mapRes!2900 () Bool)

(declare-fun tp!8042 () Bool)

(declare-fun e!39721 () Bool)

(assert (=> mapNonEmpty!2899 (= mapRes!2900 (and tp!8042 e!39721))))

(declare-datatypes ((V!2851 0))(
  ( (V!2852 (val!1246 Int)) )
))
(declare-datatypes ((array!3734 0))(
  ( (array!3735 (arr!1786 (Array (_ BitVec 32) (_ BitVec 64))) (size!2017 (_ BitVec 32))) )
))
(declare-datatypes ((ValueCell!858 0))(
  ( (ValueCellFull!858 (v!2396 V!2851)) (EmptyCell!858) )
))
(declare-datatypes ((array!3736 0))(
  ( (array!3737 (arr!1787 (Array (_ BitVec 32) ValueCell!858)) (size!2018 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!624 0))(
  ( (LongMapFixedSize!625 (defaultEntry!2064 Int) (mask!5958 (_ BitVec 32)) (extraKeys!1947 (_ BitVec 32)) (zeroValue!1978 V!2851) (minValue!1978 V!2851) (_size!361 (_ BitVec 32)) (_keys!3692 array!3734) (_values!2047 array!3736) (_vacant!361 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!434 0))(
  ( (Cell!435 (v!2397 LongMapFixedSize!624)) )
))
(declare-datatypes ((LongMap!434 0))(
  ( (LongMap!435 (underlying!228 Cell!434)) )
))
(declare-fun thiss!992 () LongMap!434)

(declare-fun mapValue!2899 () ValueCell!858)

(declare-fun mapKey!2900 () (_ BitVec 32))

(declare-fun mapRest!2899 () (Array (_ BitVec 32) ValueCell!858))

(assert (=> mapNonEmpty!2899 (= (arr!1787 (_values!2047 (v!2397 (underlying!228 thiss!992)))) (store mapRest!2899 mapKey!2900 mapValue!2899))))

(declare-fun e!39725 () Bool)

(declare-fun e!39715 () Bool)

(declare-fun newMap!16 () LongMapFixedSize!624)

(declare-fun tp_is_empty!2403 () Bool)

(declare-fun array_inv!1053 (array!3734) Bool)

(declare-fun array_inv!1054 (array!3736) Bool)

(assert (=> b!60429 (= e!39715 (and tp!8041 tp_is_empty!2403 (array_inv!1053 (_keys!3692 newMap!16)) (array_inv!1054 (_values!2047 newMap!16)) e!39725))))

(declare-fun e!39730 () Bool)

(declare-fun e!39716 () Bool)

(assert (=> b!60430 (= e!39716 (and tp!8039 tp_is_empty!2403 (array_inv!1053 (_keys!3692 (v!2397 (underlying!228 thiss!992)))) (array_inv!1054 (_values!2047 (v!2397 (underlying!228 thiss!992)))) e!39730))))

(declare-fun b!60431 () Bool)

(declare-fun res!33421 () Bool)

(declare-fun e!39717 () Bool)

(assert (=> b!60431 (=> (not res!33421) (not e!39717))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!60431 (= res!33421 (validMask!0 (mask!5958 (v!2397 (underlying!228 thiss!992)))))))

(declare-fun mapNonEmpty!2900 () Bool)

(declare-fun mapRes!2899 () Bool)

(declare-fun tp!8040 () Bool)

(declare-fun e!39722 () Bool)

(assert (=> mapNonEmpty!2900 (= mapRes!2899 (and tp!8040 e!39722))))

(declare-fun mapValue!2900 () ValueCell!858)

(declare-fun mapKey!2899 () (_ BitVec 32))

(declare-fun mapRest!2900 () (Array (_ BitVec 32) ValueCell!858))

(assert (=> mapNonEmpty!2900 (= (arr!1787 (_values!2047 newMap!16)) (store mapRest!2900 mapKey!2899 mapValue!2900))))

(declare-fun b!60432 () Bool)

(declare-fun res!33418 () Bool)

(declare-fun e!39728 () Bool)

(assert (=> b!60432 (=> (not res!33418) (not e!39728))))

(declare-fun from!355 () (_ BitVec 32))

(assert (=> b!60432 (= res!33418 (and (bvsge from!355 #b00000000000000000000000000000000) (bvslt from!355 (size!2017 (_keys!3692 (v!2397 (underlying!228 thiss!992)))))))))

(declare-fun b!60433 () Bool)

(declare-fun e!39726 () Bool)

(declare-fun e!39719 () Bool)

(assert (=> b!60433 (= e!39726 e!39719)))

(declare-fun b!60434 () Bool)

(assert (=> b!60434 (= e!39721 tp_is_empty!2403)))

(declare-fun b!60435 () Bool)

(declare-fun res!33416 () Bool)

(assert (=> b!60435 (=> (not res!33416) (not e!39728))))

(assert (=> b!60435 (= res!33416 (bvsge (bvadd #b00000000000000000000000000000001 (mask!5958 newMap!16)) (_size!361 (v!2397 (underlying!228 thiss!992)))))))

(declare-fun b!60436 () Bool)

(assert (=> b!60436 (= e!39722 tp_is_empty!2403)))

(declare-fun mapIsEmpty!2899 () Bool)

(assert (=> mapIsEmpty!2899 mapRes!2900))

(declare-fun b!60437 () Bool)

(declare-datatypes ((Unit!1615 0))(
  ( (Unit!1616) )
))
(declare-fun e!39729 () Unit!1615)

(declare-fun Unit!1617 () Unit!1615)

(assert (=> b!60437 (= e!39729 Unit!1617)))

(declare-fun b!60438 () Bool)

(declare-fun Unit!1618 () Unit!1615)

(assert (=> b!60438 (= e!39729 Unit!1618)))

(declare-fun lt!24719 () Unit!1615)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!29 (array!3734 array!3736 (_ BitVec 32) (_ BitVec 32) V!2851 V!2851 (_ BitVec 64) (_ BitVec 32) Int) Unit!1615)

(assert (=> b!60438 (= lt!24719 (lemmaListMapContainsThenArrayContainsFrom!29 (_keys!3692 (v!2397 (underlying!228 thiss!992))) (_values!2047 (v!2397 (underlying!228 thiss!992))) (mask!5958 (v!2397 (underlying!228 thiss!992))) (extraKeys!1947 (v!2397 (underlying!228 thiss!992))) (zeroValue!1978 (v!2397 (underlying!228 thiss!992))) (minValue!1978 (v!2397 (underlying!228 thiss!992))) (select (arr!1786 (_keys!3692 (v!2397 (underlying!228 thiss!992)))) from!355) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2064 (v!2397 (underlying!228 thiss!992)))))))

(declare-fun arrayContainsKey!0 (array!3734 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!60438 (arrayContainsKey!0 (_keys!3692 (v!2397 (underlying!228 thiss!992))) (select (arr!1786 (_keys!3692 (v!2397 (underlying!228 thiss!992)))) from!355) (bvadd #b00000000000000000000000000000001 from!355))))

(declare-fun lt!24720 () Unit!1615)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!3734 (_ BitVec 32) (_ BitVec 32)) Unit!1615)

(assert (=> b!60438 (= lt!24720 (lemmaNoDuplicateFromThenFromBigger!0 (_keys!3692 (v!2397 (underlying!228 thiss!992))) #b00000000000000000000000000000000 from!355))))

(declare-datatypes ((List!1455 0))(
  ( (Nil!1452) (Cons!1451 (h!2033 (_ BitVec 64)) (t!4821 List!1455)) )
))
(declare-fun arrayNoDuplicates!0 (array!3734 (_ BitVec 32) List!1455) Bool)

(assert (=> b!60438 (arrayNoDuplicates!0 (_keys!3692 (v!2397 (underlying!228 thiss!992))) from!355 Nil!1452)))

(declare-fun lt!24721 () Unit!1615)

(declare-fun lemmaArrayNoDuplicateFromNotContainsKeysInAcc!0 (array!3734 (_ BitVec 32) (_ BitVec 64) List!1455) Unit!1615)

(assert (=> b!60438 (= lt!24721 (lemmaArrayNoDuplicateFromNotContainsKeysInAcc!0 (_keys!3692 (v!2397 (underlying!228 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (select (arr!1786 (_keys!3692 (v!2397 (underlying!228 thiss!992)))) from!355) (Cons!1451 (select (arr!1786 (_keys!3692 (v!2397 (underlying!228 thiss!992)))) from!355) Nil!1452)))))

(assert (=> b!60438 false))

(declare-fun b!60439 () Bool)

(declare-fun e!39718 () Bool)

(assert (=> b!60439 (= e!39725 (and e!39718 mapRes!2899))))

(declare-fun condMapEmpty!2900 () Bool)

(declare-fun mapDefault!2900 () ValueCell!858)

(assert (=> b!60439 (= condMapEmpty!2900 (= (arr!1787 (_values!2047 newMap!16)) ((as const (Array (_ BitVec 32) ValueCell!858)) mapDefault!2900)))))

(declare-fun b!60440 () Bool)

(declare-fun e!39720 () Bool)

(assert (=> b!60440 (= e!39720 tp_is_empty!2403)))

(declare-fun b!60441 () Bool)

(assert (=> b!60441 (= e!39730 (and e!39720 mapRes!2900))))

(declare-fun condMapEmpty!2899 () Bool)

(declare-fun mapDefault!2899 () ValueCell!858)

(assert (=> b!60441 (= condMapEmpty!2899 (= (arr!1787 (_values!2047 (v!2397 (underlying!228 thiss!992)))) ((as const (Array (_ BitVec 32) ValueCell!858)) mapDefault!2899)))))

(declare-fun b!60442 () Bool)

(declare-fun e!39727 () Bool)

(assert (=> b!60442 (= e!39727 e!39717)))

(declare-fun res!33420 () Bool)

(assert (=> b!60442 (=> (not res!33420) (not e!39717))))

(declare-datatypes ((tuple2!2050 0))(
  ( (tuple2!2051 (_1!1035 Bool) (_2!1035 LongMapFixedSize!624)) )
))
(declare-fun lt!24717 () tuple2!2050)

(assert (=> b!60442 (= res!33420 (and (_1!1035 lt!24717) (bvsgt from!355 #b00000000000000000000000000000000)))))

(declare-fun lt!24716 () Unit!1615)

(assert (=> b!60442 (= lt!24716 e!39729)))

(declare-fun c!7862 () Bool)

(declare-datatypes ((tuple2!2052 0))(
  ( (tuple2!2053 (_1!1036 (_ BitVec 64)) (_2!1036 V!2851)) )
))
(declare-datatypes ((List!1456 0))(
  ( (Nil!1453) (Cons!1452 (h!2034 tuple2!2052) (t!4822 List!1456)) )
))
(declare-datatypes ((ListLongMap!1379 0))(
  ( (ListLongMap!1380 (toList!705 List!1456)) )
))
(declare-fun lt!24722 () ListLongMap!1379)

(declare-fun contains!695 (ListLongMap!1379 (_ BitVec 64)) Bool)

(assert (=> b!60442 (= c!7862 (contains!695 lt!24722 (select (arr!1786 (_keys!3692 (v!2397 (underlying!228 thiss!992)))) from!355)))))

(declare-fun update!85 (LongMapFixedSize!624 (_ BitVec 64) V!2851) tuple2!2050)

(declare-fun get!1086 (ValueCell!858 V!2851) V!2851)

(declare-fun dynLambda!313 (Int (_ BitVec 64)) V!2851)

(assert (=> b!60442 (= lt!24717 (update!85 newMap!16 (select (arr!1786 (_keys!3692 (v!2397 (underlying!228 thiss!992)))) from!355) (get!1086 (select (arr!1787 (_values!2047 (v!2397 (underlying!228 thiss!992)))) from!355) (dynLambda!313 (defaultEntry!2064 (v!2397 (underlying!228 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!60443 () Bool)

(assert (=> b!60443 (= e!39718 tp_is_empty!2403)))

(declare-fun mapIsEmpty!2900 () Bool)

(assert (=> mapIsEmpty!2900 mapRes!2899))

(declare-fun b!60444 () Bool)

(assert (=> b!60444 (= e!39717 (and (= (size!2018 (_values!2047 (v!2397 (underlying!228 thiss!992)))) (bvadd #b00000000000000000000000000000001 (mask!5958 (v!2397 (underlying!228 thiss!992))))) (= (size!2017 (_keys!3692 (v!2397 (underlying!228 thiss!992)))) (size!2018 (_values!2047 (v!2397 (underlying!228 thiss!992))))) (bvslt (mask!5958 (v!2397 (underlying!228 thiss!992))) #b00000000000000000000000000000000)))))

(declare-fun res!33419 () Bool)

(assert (=> start!8730 (=> (not res!33419) (not e!39728))))

(declare-fun valid!254 (LongMap!434) Bool)

(assert (=> start!8730 (= res!33419 (valid!254 thiss!992))))

(assert (=> start!8730 e!39728))

(assert (=> start!8730 e!39726))

(assert (=> start!8730 true))

(assert (=> start!8730 e!39715))

(declare-fun b!60445 () Bool)

(declare-fun res!33422 () Bool)

(assert (=> b!60445 (=> (not res!33422) (not e!39728))))

(declare-fun valid!255 (LongMapFixedSize!624) Bool)

(assert (=> b!60445 (= res!33422 (valid!255 newMap!16))))

(declare-fun b!60446 () Bool)

(assert (=> b!60446 (= e!39728 e!39727)))

(declare-fun res!33417 () Bool)

(assert (=> b!60446 (=> (not res!33417) (not e!39727))))

(declare-fun lt!24718 () ListLongMap!1379)

(assert (=> b!60446 (= res!33417 (and (= lt!24718 lt!24722) (not (= (select (arr!1786 (_keys!3692 (v!2397 (underlying!228 thiss!992)))) from!355) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!1786 (_keys!3692 (v!2397 (underlying!228 thiss!992)))) from!355) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun map!1110 (LongMapFixedSize!624) ListLongMap!1379)

(assert (=> b!60446 (= lt!24722 (map!1110 newMap!16))))

(declare-fun getCurrentListMap!402 (array!3734 array!3736 (_ BitVec 32) (_ BitVec 32) V!2851 V!2851 (_ BitVec 32) Int) ListLongMap!1379)

(assert (=> b!60446 (= lt!24718 (getCurrentListMap!402 (_keys!3692 (v!2397 (underlying!228 thiss!992))) (_values!2047 (v!2397 (underlying!228 thiss!992))) (mask!5958 (v!2397 (underlying!228 thiss!992))) (extraKeys!1947 (v!2397 (underlying!228 thiss!992))) (zeroValue!1978 (v!2397 (underlying!228 thiss!992))) (minValue!1978 (v!2397 (underlying!228 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2064 (v!2397 (underlying!228 thiss!992)))))))

(declare-fun b!60447 () Bool)

(assert (=> b!60447 (= e!39719 e!39716)))

(assert (= (and start!8730 res!33419) b!60432))

(assert (= (and b!60432 res!33418) b!60445))

(assert (= (and b!60445 res!33422) b!60435))

(assert (= (and b!60435 res!33416) b!60446))

(assert (= (and b!60446 res!33417) b!60442))

(assert (= (and b!60442 c!7862) b!60438))

(assert (= (and b!60442 (not c!7862)) b!60437))

(assert (= (and b!60442 res!33420) b!60431))

(assert (= (and b!60431 res!33421) b!60444))

(assert (= (and b!60441 condMapEmpty!2899) mapIsEmpty!2899))

(assert (= (and b!60441 (not condMapEmpty!2899)) mapNonEmpty!2899))

(get-info :version)

(assert (= (and mapNonEmpty!2899 ((_ is ValueCellFull!858) mapValue!2899)) b!60434))

(assert (= (and b!60441 ((_ is ValueCellFull!858) mapDefault!2899)) b!60440))

(assert (= b!60430 b!60441))

(assert (= b!60447 b!60430))

(assert (= b!60433 b!60447))

(assert (= start!8730 b!60433))

(assert (= (and b!60439 condMapEmpty!2900) mapIsEmpty!2900))

(assert (= (and b!60439 (not condMapEmpty!2900)) mapNonEmpty!2900))

(assert (= (and mapNonEmpty!2900 ((_ is ValueCellFull!858) mapValue!2900)) b!60436))

(assert (= (and b!60439 ((_ is ValueCellFull!858) mapDefault!2900)) b!60443))

(assert (= b!60429 b!60439))

(assert (= start!8730 b!60429))

(declare-fun b_lambda!2691 () Bool)

(assert (=> (not b_lambda!2691) (not b!60442)))

(declare-fun t!4818 () Bool)

(declare-fun tb!1341 () Bool)

(assert (=> (and b!60430 (= (defaultEntry!2064 (v!2397 (underlying!228 thiss!992))) (defaultEntry!2064 (v!2397 (underlying!228 thiss!992)))) t!4818) tb!1341))

(declare-fun result!2403 () Bool)

(assert (=> tb!1341 (= result!2403 tp_is_empty!2403)))

(assert (=> b!60442 t!4818))

(declare-fun b_and!3673 () Bool)

(assert (= b_and!3669 (and (=> t!4818 result!2403) b_and!3673)))

(declare-fun tb!1343 () Bool)

(declare-fun t!4820 () Bool)

(assert (=> (and b!60429 (= (defaultEntry!2064 newMap!16) (defaultEntry!2064 (v!2397 (underlying!228 thiss!992)))) t!4820) tb!1343))

(declare-fun result!2407 () Bool)

(assert (= result!2407 result!2403))

(assert (=> b!60442 t!4820))

(declare-fun b_and!3675 () Bool)

(assert (= b_and!3671 (and (=> t!4820 result!2407) b_and!3675)))

(declare-fun m!53071 () Bool)

(assert (=> b!60438 m!53071))

(declare-fun m!53073 () Bool)

(assert (=> b!60438 m!53073))

(declare-fun m!53075 () Bool)

(assert (=> b!60438 m!53075))

(declare-fun m!53077 () Bool)

(assert (=> b!60438 m!53077))

(assert (=> b!60438 m!53075))

(assert (=> b!60438 m!53075))

(declare-fun m!53079 () Bool)

(assert (=> b!60438 m!53079))

(assert (=> b!60438 m!53075))

(declare-fun m!53081 () Bool)

(assert (=> b!60438 m!53081))

(declare-fun m!53083 () Bool)

(assert (=> mapNonEmpty!2900 m!53083))

(declare-fun m!53085 () Bool)

(assert (=> b!60429 m!53085))

(declare-fun m!53087 () Bool)

(assert (=> b!60429 m!53087))

(declare-fun m!53089 () Bool)

(assert (=> b!60445 m!53089))

(declare-fun m!53091 () Bool)

(assert (=> b!60431 m!53091))

(declare-fun m!53093 () Bool)

(assert (=> start!8730 m!53093))

(declare-fun m!53095 () Bool)

(assert (=> b!60430 m!53095))

(declare-fun m!53097 () Bool)

(assert (=> b!60430 m!53097))

(assert (=> b!60446 m!53075))

(declare-fun m!53099 () Bool)

(assert (=> b!60446 m!53099))

(declare-fun m!53101 () Bool)

(assert (=> b!60446 m!53101))

(assert (=> b!60442 m!53075))

(declare-fun m!53103 () Bool)

(assert (=> b!60442 m!53103))

(declare-fun m!53105 () Bool)

(assert (=> b!60442 m!53105))

(declare-fun m!53107 () Bool)

(assert (=> b!60442 m!53107))

(declare-fun m!53109 () Bool)

(assert (=> b!60442 m!53109))

(assert (=> b!60442 m!53075))

(assert (=> b!60442 m!53107))

(assert (=> b!60442 m!53075))

(assert (=> b!60442 m!53109))

(declare-fun m!53111 () Bool)

(assert (=> b!60442 m!53111))

(assert (=> b!60442 m!53105))

(declare-fun m!53113 () Bool)

(assert (=> mapNonEmpty!2899 m!53113))

(check-sat (not b_next!1975) b_and!3673 b_and!3675 (not b!60430) (not start!8730) (not b!60431) tp_is_empty!2403 (not b!60429) (not b!60442) (not b_lambda!2691) (not mapNonEmpty!2900) (not b_next!1973) (not b!60445) (not b!60446) (not mapNonEmpty!2899) (not b!60438))
(check-sat b_and!3673 b_and!3675 (not b_next!1973) (not b_next!1975))

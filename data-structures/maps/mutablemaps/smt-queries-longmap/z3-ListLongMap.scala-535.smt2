; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!13452 () Bool)

(assert start!13452)

(declare-fun b!123359 () Bool)

(declare-fun b_free!2813 () Bool)

(declare-fun b_next!2813 () Bool)

(assert (=> b!123359 (= b_free!2813 (not b_next!2813))))

(declare-fun tp!10827 () Bool)

(declare-fun b_and!7589 () Bool)

(assert (=> b!123359 (= tp!10827 b_and!7589)))

(declare-fun b!123355 () Bool)

(declare-fun b_free!2815 () Bool)

(declare-fun b_next!2815 () Bool)

(assert (=> b!123355 (= b_free!2815 (not b_next!2815))))

(declare-fun tp!10825 () Bool)

(declare-fun b_and!7591 () Bool)

(assert (=> b!123355 (= tp!10825 b_and!7591)))

(declare-fun b!123345 () Bool)

(declare-fun e!80630 () Bool)

(declare-fun e!80636 () Bool)

(declare-fun mapRes!4425 () Bool)

(assert (=> b!123345 (= e!80630 (and e!80636 mapRes!4425))))

(declare-fun condMapEmpty!4426 () Bool)

(declare-datatypes ((V!3411 0))(
  ( (V!3412 (val!1456 Int)) )
))
(declare-datatypes ((array!4656 0))(
  ( (array!4657 (arr!2206 (Array (_ BitVec 32) (_ BitVec 64))) (size!2468 (_ BitVec 32))) )
))
(declare-datatypes ((ValueCell!1068 0))(
  ( (ValueCellFull!1068 (v!3088 V!3411)) (EmptyCell!1068) )
))
(declare-datatypes ((array!4658 0))(
  ( (array!4659 (arr!2207 (Array (_ BitVec 32) ValueCell!1068)) (size!2469 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1044 0))(
  ( (LongMapFixedSize!1045 (defaultEntry!2755 Int) (mask!6993 (_ BitVec 32)) (extraKeys!2540 (_ BitVec 32)) (zeroValue!2620 V!3411) (minValue!2620 V!3411) (_size!571 (_ BitVec 32)) (_keys!4482 array!4656) (_values!2738 array!4658) (_vacant!571 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!836 0))(
  ( (Cell!837 (v!3089 LongMapFixedSize!1044)) )
))
(declare-datatypes ((LongMap!836 0))(
  ( (LongMap!837 (underlying!429 Cell!836)) )
))
(declare-fun thiss!992 () LongMap!836)

(declare-fun mapDefault!4426 () ValueCell!1068)

(assert (=> b!123345 (= condMapEmpty!4426 (= (arr!2207 (_values!2738 (v!3089 (underlying!429 thiss!992)))) ((as const (Array (_ BitVec 32) ValueCell!1068)) mapDefault!4426)))))

(declare-fun b!123346 () Bool)

(declare-fun e!80628 () Bool)

(declare-fun e!80625 () Bool)

(assert (=> b!123346 (= e!80628 e!80625)))

(declare-fun b!123347 () Bool)

(declare-fun res!59895 () Bool)

(declare-fun e!80632 () Bool)

(assert (=> b!123347 (=> (not res!59895) (not e!80632))))

(declare-fun newMap!16 () LongMapFixedSize!1044)

(declare-fun valid!491 (LongMapFixedSize!1044) Bool)

(assert (=> b!123347 (= res!59895 (valid!491 newMap!16))))

(declare-fun b!123348 () Bool)

(declare-fun e!80626 () Bool)

(declare-fun tp_is_empty!2823 () Bool)

(assert (=> b!123348 (= e!80626 tp_is_empty!2823)))

(declare-fun b!123349 () Bool)

(declare-fun res!59894 () Bool)

(assert (=> b!123349 (=> (not res!59894) (not e!80632))))

(declare-fun from!355 () (_ BitVec 32))

(assert (=> b!123349 (= res!59894 (and (bvsge from!355 #b00000000000000000000000000000000) (bvslt from!355 (size!2468 (_keys!4482 (v!3089 (underlying!429 thiss!992)))))))))

(declare-fun res!59897 () Bool)

(assert (=> start!13452 (=> (not res!59897) (not e!80632))))

(declare-fun valid!492 (LongMap!836) Bool)

(assert (=> start!13452 (= res!59897 (valid!492 thiss!992))))

(assert (=> start!13452 e!80632))

(assert (=> start!13452 e!80628))

(assert (=> start!13452 true))

(declare-fun e!80631 () Bool)

(assert (=> start!13452 e!80631))

(declare-fun b!123350 () Bool)

(assert (=> b!123350 (= e!80636 tp_is_empty!2823)))

(declare-fun b!123351 () Bool)

(declare-fun e!80634 () Bool)

(declare-fun mapRes!4426 () Bool)

(assert (=> b!123351 (= e!80634 (and e!80626 mapRes!4426))))

(declare-fun condMapEmpty!4425 () Bool)

(declare-fun mapDefault!4425 () ValueCell!1068)

(assert (=> b!123351 (= condMapEmpty!4425 (= (arr!2207 (_values!2738 newMap!16)) ((as const (Array (_ BitVec 32) ValueCell!1068)) mapDefault!4425)))))

(declare-fun mapNonEmpty!4425 () Bool)

(declare-fun tp!10828 () Bool)

(declare-fun e!80633 () Bool)

(assert (=> mapNonEmpty!4425 (= mapRes!4425 (and tp!10828 e!80633))))

(declare-fun mapRest!4426 () (Array (_ BitVec 32) ValueCell!1068))

(declare-fun mapKey!4425 () (_ BitVec 32))

(declare-fun mapValue!4425 () ValueCell!1068)

(assert (=> mapNonEmpty!4425 (= (arr!2207 (_values!2738 (v!3089 (underlying!429 thiss!992)))) (store mapRest!4426 mapKey!4425 mapValue!4425))))

(declare-fun b!123352 () Bool)

(assert (=> b!123352 (= e!80632 (bvsge from!355 (size!2469 (_values!2738 (v!3089 (underlying!429 thiss!992))))))))

(declare-fun b!123353 () Bool)

(assert (=> b!123353 (= e!80633 tp_is_empty!2823)))

(declare-fun b!123354 () Bool)

(declare-fun res!59898 () Bool)

(assert (=> b!123354 (=> (not res!59898) (not e!80632))))

(assert (=> b!123354 (= res!59898 (bvsge (bvadd #b00000000000000000000000000000001 (mask!6993 newMap!16)) (_size!571 (v!3089 (underlying!429 thiss!992)))))))

(declare-fun mapIsEmpty!4425 () Bool)

(assert (=> mapIsEmpty!4425 mapRes!4425))

(declare-fun array_inv!1349 (array!4656) Bool)

(declare-fun array_inv!1350 (array!4658) Bool)

(assert (=> b!123355 (= e!80631 (and tp!10825 tp_is_empty!2823 (array_inv!1349 (_keys!4482 newMap!16)) (array_inv!1350 (_values!2738 newMap!16)) e!80634))))

(declare-fun b!123356 () Bool)

(declare-fun e!80624 () Bool)

(assert (=> b!123356 (= e!80625 e!80624)))

(declare-fun b!123357 () Bool)

(declare-fun res!59896 () Bool)

(assert (=> b!123357 (=> (not res!59896) (not e!80632))))

(declare-datatypes ((tuple2!2546 0))(
  ( (tuple2!2547 (_1!1283 (_ BitVec 64)) (_2!1283 V!3411)) )
))
(declare-datatypes ((List!1709 0))(
  ( (Nil!1706) (Cons!1705 (h!2306 tuple2!2546) (t!6020 List!1709)) )
))
(declare-datatypes ((ListLongMap!1671 0))(
  ( (ListLongMap!1672 (toList!851 List!1709)) )
))
(declare-fun getCurrentListMap!524 (array!4656 array!4658 (_ BitVec 32) (_ BitVec 32) V!3411 V!3411 (_ BitVec 32) Int) ListLongMap!1671)

(declare-fun map!1371 (LongMapFixedSize!1044) ListLongMap!1671)

(assert (=> b!123357 (= res!59896 (= (getCurrentListMap!524 (_keys!4482 (v!3089 (underlying!429 thiss!992))) (_values!2738 (v!3089 (underlying!429 thiss!992))) (mask!6993 (v!3089 (underlying!429 thiss!992))) (extraKeys!2540 (v!3089 (underlying!429 thiss!992))) (zeroValue!2620 (v!3089 (underlying!429 thiss!992))) (minValue!2620 (v!3089 (underlying!429 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2755 (v!3089 (underlying!429 thiss!992)))) (map!1371 newMap!16)))))

(declare-fun b!123358 () Bool)

(declare-fun e!80635 () Bool)

(assert (=> b!123358 (= e!80635 tp_is_empty!2823)))

(declare-fun mapIsEmpty!4426 () Bool)

(assert (=> mapIsEmpty!4426 mapRes!4426))

(declare-fun mapNonEmpty!4426 () Bool)

(declare-fun tp!10826 () Bool)

(assert (=> mapNonEmpty!4426 (= mapRes!4426 (and tp!10826 e!80635))))

(declare-fun mapValue!4426 () ValueCell!1068)

(declare-fun mapRest!4425 () (Array (_ BitVec 32) ValueCell!1068))

(declare-fun mapKey!4426 () (_ BitVec 32))

(assert (=> mapNonEmpty!4426 (= (arr!2207 (_values!2738 newMap!16)) (store mapRest!4425 mapKey!4426 mapValue!4426))))

(assert (=> b!123359 (= e!80624 (and tp!10827 tp_is_empty!2823 (array_inv!1349 (_keys!4482 (v!3089 (underlying!429 thiss!992)))) (array_inv!1350 (_values!2738 (v!3089 (underlying!429 thiss!992)))) e!80630))))

(assert (= (and start!13452 res!59897) b!123349))

(assert (= (and b!123349 res!59894) b!123347))

(assert (= (and b!123347 res!59895) b!123354))

(assert (= (and b!123354 res!59898) b!123357))

(assert (= (and b!123357 res!59896) b!123352))

(assert (= (and b!123345 condMapEmpty!4426) mapIsEmpty!4425))

(assert (= (and b!123345 (not condMapEmpty!4426)) mapNonEmpty!4425))

(get-info :version)

(assert (= (and mapNonEmpty!4425 ((_ is ValueCellFull!1068) mapValue!4425)) b!123353))

(assert (= (and b!123345 ((_ is ValueCellFull!1068) mapDefault!4426)) b!123350))

(assert (= b!123359 b!123345))

(assert (= b!123356 b!123359))

(assert (= b!123346 b!123356))

(assert (= start!13452 b!123346))

(assert (= (and b!123351 condMapEmpty!4425) mapIsEmpty!4426))

(assert (= (and b!123351 (not condMapEmpty!4425)) mapNonEmpty!4426))

(assert (= (and mapNonEmpty!4426 ((_ is ValueCellFull!1068) mapValue!4426)) b!123358))

(assert (= (and b!123351 ((_ is ValueCellFull!1068) mapDefault!4425)) b!123348))

(assert (= b!123355 b!123351))

(assert (= start!13452 b!123355))

(declare-fun m!143387 () Bool)

(assert (=> mapNonEmpty!4425 m!143387))

(declare-fun m!143389 () Bool)

(assert (=> mapNonEmpty!4426 m!143389))

(declare-fun m!143391 () Bool)

(assert (=> b!123359 m!143391))

(declare-fun m!143393 () Bool)

(assert (=> b!123359 m!143393))

(declare-fun m!143395 () Bool)

(assert (=> b!123357 m!143395))

(declare-fun m!143397 () Bool)

(assert (=> b!123357 m!143397))

(declare-fun m!143399 () Bool)

(assert (=> b!123355 m!143399))

(declare-fun m!143401 () Bool)

(assert (=> b!123355 m!143401))

(declare-fun m!143403 () Bool)

(assert (=> b!123347 m!143403))

(declare-fun m!143405 () Bool)

(assert (=> start!13452 m!143405))

(check-sat (not b!123355) (not b_next!2813) (not mapNonEmpty!4425) (not b!123359) (not b!123357) tp_is_empty!2823 b_and!7591 (not start!13452) (not b_next!2815) (not b!123347) (not mapNonEmpty!4426) b_and!7589)
(check-sat b_and!7589 b_and!7591 (not b_next!2813) (not b_next!2815))
(get-model)

(declare-fun b!123447 () Bool)

(declare-fun res!59938 () Bool)

(declare-fun e!80708 () Bool)

(assert (=> b!123447 (=> (not res!59938) (not e!80708))))

(declare-fun e!80712 () Bool)

(assert (=> b!123447 (= res!59938 e!80712)))

(declare-fun c!22397 () Bool)

(assert (=> b!123447 (= c!22397 (not (= (bvand (extraKeys!2540 (v!3089 (underlying!429 thiss!992))) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!123448 () Bool)

(declare-fun e!80711 () ListLongMap!1671)

(declare-fun call!13122 () ListLongMap!1671)

(assert (=> b!123448 (= e!80711 call!13122)))

(declare-fun b!123449 () Bool)

(declare-fun call!13121 () Bool)

(assert (=> b!123449 (= e!80712 (not call!13121))))

(declare-fun bm!13117 () Bool)

(declare-fun call!13120 () ListLongMap!1671)

(assert (=> bm!13117 (= call!13122 call!13120)))

(declare-fun b!123450 () Bool)

(declare-fun e!80704 () Bool)

(assert (=> b!123450 (= e!80708 e!80704)))

(declare-fun c!22400 () Bool)

(assert (=> b!123450 (= c!22400 (not (= (bvand (extraKeys!2540 (v!3089 (underlying!429 thiss!992))) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!123451 () Bool)

(declare-fun e!80707 () ListLongMap!1671)

(declare-fun call!13125 () ListLongMap!1671)

(assert (=> b!123451 (= e!80707 call!13125)))

(declare-fun bm!13118 () Bool)

(declare-fun c!22399 () Bool)

(declare-fun call!13124 () ListLongMap!1671)

(declare-fun call!13126 () ListLongMap!1671)

(declare-fun c!22402 () Bool)

(declare-fun +!162 (ListLongMap!1671 tuple2!2546) ListLongMap!1671)

(assert (=> bm!13118 (= call!13120 (+!162 (ite c!22399 call!13124 (ite c!22402 call!13126 call!13125)) (ite (or c!22399 c!22402) (tuple2!2547 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2620 (v!3089 (underlying!429 thiss!992)))) (tuple2!2547 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2620 (v!3089 (underlying!429 thiss!992)))))))))

(declare-fun bm!13119 () Bool)

(assert (=> bm!13119 (= call!13126 call!13124)))

(declare-fun bm!13120 () Bool)

(declare-fun call!13123 () Bool)

(declare-fun lt!63525 () ListLongMap!1671)

(declare-fun contains!868 (ListLongMap!1671 (_ BitVec 64)) Bool)

(assert (=> bm!13120 (= call!13123 (contains!868 lt!63525 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!123452 () Bool)

(assert (=> b!123452 (= e!80707 call!13122)))

(declare-fun bm!13121 () Bool)

(declare-fun getCurrentListMapNoExtraKeys!129 (array!4656 array!4658 (_ BitVec 32) (_ BitVec 32) V!3411 V!3411 (_ BitVec 32) Int) ListLongMap!1671)

(assert (=> bm!13121 (= call!13124 (getCurrentListMapNoExtraKeys!129 (_keys!4482 (v!3089 (underlying!429 thiss!992))) (_values!2738 (v!3089 (underlying!429 thiss!992))) (mask!6993 (v!3089 (underlying!429 thiss!992))) (extraKeys!2540 (v!3089 (underlying!429 thiss!992))) (zeroValue!2620 (v!3089 (underlying!429 thiss!992))) (minValue!2620 (v!3089 (underlying!429 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2755 (v!3089 (underlying!429 thiss!992)))))))

(declare-fun b!123453 () Bool)

(declare-fun e!80702 () Bool)

(assert (=> b!123453 (= e!80704 e!80702)))

(declare-fun res!59933 () Bool)

(assert (=> b!123453 (= res!59933 call!13123)))

(assert (=> b!123453 (=> (not res!59933) (not e!80702))))

(declare-fun e!80714 () Bool)

(declare-fun b!123454 () Bool)

(declare-fun apply!108 (ListLongMap!1671 (_ BitVec 64)) V!3411)

(declare-fun get!1433 (ValueCell!1068 V!3411) V!3411)

(declare-fun dynLambda!411 (Int (_ BitVec 64)) V!3411)

(assert (=> b!123454 (= e!80714 (= (apply!108 lt!63525 (select (arr!2206 (_keys!4482 (v!3089 (underlying!429 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))) (get!1433 (select (arr!2207 (_values!2738 (v!3089 (underlying!429 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (dynLambda!411 (defaultEntry!2755 (v!3089 (underlying!429 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!123454 (and (bvsge (bvadd #b00000000000000000000000000000001 from!355) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!355) (size!2469 (_values!2738 (v!3089 (underlying!429 thiss!992))))))))

(assert (=> b!123454 (and (bvsge (bvadd #b00000000000000000000000000000001 from!355) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!355) (size!2468 (_keys!4482 (v!3089 (underlying!429 thiss!992))))))))

(declare-fun b!123455 () Bool)

(declare-fun res!59935 () Bool)

(assert (=> b!123455 (=> (not res!59935) (not e!80708))))

(declare-fun e!80709 () Bool)

(assert (=> b!123455 (= res!59935 e!80709)))

(declare-fun res!59936 () Bool)

(assert (=> b!123455 (=> res!59936 e!80709)))

(declare-fun e!80705 () Bool)

(assert (=> b!123455 (= res!59936 (not e!80705))))

(declare-fun res!59939 () Bool)

(assert (=> b!123455 (=> (not res!59939) (not e!80705))))

(assert (=> b!123455 (= res!59939 (bvslt (bvadd #b00000000000000000000000000000001 from!355) (size!2468 (_keys!4482 (v!3089 (underlying!429 thiss!992))))))))

(declare-fun b!123456 () Bool)

(declare-fun e!80713 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!123456 (= e!80713 (validKeyInArray!0 (select (arr!2206 (_keys!4482 (v!3089 (underlying!429 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))))))

(declare-fun bm!13122 () Bool)

(assert (=> bm!13122 (= call!13121 (contains!868 lt!63525 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!123457 () Bool)

(assert (=> b!123457 (= e!80702 (= (apply!108 lt!63525 #b1000000000000000000000000000000000000000000000000000000000000000) (minValue!2620 (v!3089 (underlying!429 thiss!992)))))))

(declare-fun b!123458 () Bool)

(declare-fun e!80706 () ListLongMap!1671)

(assert (=> b!123458 (= e!80706 (+!162 call!13120 (tuple2!2547 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2620 (v!3089 (underlying!429 thiss!992))))))))

(declare-fun b!123459 () Bool)

(assert (=> b!123459 (= e!80705 (validKeyInArray!0 (select (arr!2206 (_keys!4482 (v!3089 (underlying!429 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))))))

(declare-fun bm!13123 () Bool)

(assert (=> bm!13123 (= call!13125 call!13126)))

(declare-fun b!123460 () Bool)

(declare-fun c!22401 () Bool)

(assert (=> b!123460 (= c!22401 (and (not (= (bvand (extraKeys!2540 (v!3089 (underlying!429 thiss!992))) #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand (extraKeys!2540 (v!3089 (underlying!429 thiss!992))) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!123460 (= e!80711 e!80707)))

(declare-fun d!36973 () Bool)

(assert (=> d!36973 e!80708))

(declare-fun res!59937 () Bool)

(assert (=> d!36973 (=> (not res!59937) (not e!80708))))

(assert (=> d!36973 (= res!59937 (or (bvsge (bvadd #b00000000000000000000000000000001 from!355) (size!2468 (_keys!4482 (v!3089 (underlying!429 thiss!992))))) (and (bvsge (bvadd #b00000000000000000000000000000001 from!355) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!355) (size!2468 (_keys!4482 (v!3089 (underlying!429 thiss!992))))))))))

(declare-fun lt!63522 () ListLongMap!1671)

(assert (=> d!36973 (= lt!63525 lt!63522)))

(declare-datatypes ((Unit!3846 0))(
  ( (Unit!3847) )
))
(declare-fun lt!63524 () Unit!3846)

(declare-fun e!80703 () Unit!3846)

(assert (=> d!36973 (= lt!63524 e!80703)))

(declare-fun c!22398 () Bool)

(assert (=> d!36973 (= c!22398 e!80713)))

(declare-fun res!59940 () Bool)

(assert (=> d!36973 (=> (not res!59940) (not e!80713))))

(assert (=> d!36973 (= res!59940 (bvslt (bvadd #b00000000000000000000000000000001 from!355) (size!2468 (_keys!4482 (v!3089 (underlying!429 thiss!992))))))))

(assert (=> d!36973 (= lt!63522 e!80706)))

(assert (=> d!36973 (= c!22399 (and (not (= (bvand (extraKeys!2540 (v!3089 (underlying!429 thiss!992))) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (extraKeys!2540 (v!3089 (underlying!429 thiss!992))) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> d!36973 (validMask!0 (mask!6993 (v!3089 (underlying!429 thiss!992))))))

(assert (=> d!36973 (= (getCurrentListMap!524 (_keys!4482 (v!3089 (underlying!429 thiss!992))) (_values!2738 (v!3089 (underlying!429 thiss!992))) (mask!6993 (v!3089 (underlying!429 thiss!992))) (extraKeys!2540 (v!3089 (underlying!429 thiss!992))) (zeroValue!2620 (v!3089 (underlying!429 thiss!992))) (minValue!2620 (v!3089 (underlying!429 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2755 (v!3089 (underlying!429 thiss!992)))) lt!63525)))

(declare-fun b!123461 () Bool)

(declare-fun e!80710 () Bool)

(assert (=> b!123461 (= e!80712 e!80710)))

(declare-fun res!59934 () Bool)

(assert (=> b!123461 (= res!59934 call!13121)))

(assert (=> b!123461 (=> (not res!59934) (not e!80710))))

(declare-fun b!123462 () Bool)

(declare-fun lt!63515 () Unit!3846)

(assert (=> b!123462 (= e!80703 lt!63515)))

(declare-fun lt!63528 () ListLongMap!1671)

(assert (=> b!123462 (= lt!63528 (getCurrentListMapNoExtraKeys!129 (_keys!4482 (v!3089 (underlying!429 thiss!992))) (_values!2738 (v!3089 (underlying!429 thiss!992))) (mask!6993 (v!3089 (underlying!429 thiss!992))) (extraKeys!2540 (v!3089 (underlying!429 thiss!992))) (zeroValue!2620 (v!3089 (underlying!429 thiss!992))) (minValue!2620 (v!3089 (underlying!429 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2755 (v!3089 (underlying!429 thiss!992)))))))

(declare-fun lt!63513 () (_ BitVec 64))

(assert (=> b!123462 (= lt!63513 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!63526 () (_ BitVec 64))

(assert (=> b!123462 (= lt!63526 (select (arr!2206 (_keys!4482 (v!3089 (underlying!429 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)))))

(declare-fun lt!63517 () Unit!3846)

(declare-fun addStillContains!84 (ListLongMap!1671 (_ BitVec 64) V!3411 (_ BitVec 64)) Unit!3846)

(assert (=> b!123462 (= lt!63517 (addStillContains!84 lt!63528 lt!63513 (zeroValue!2620 (v!3089 (underlying!429 thiss!992))) lt!63526))))

(assert (=> b!123462 (contains!868 (+!162 lt!63528 (tuple2!2547 lt!63513 (zeroValue!2620 (v!3089 (underlying!429 thiss!992))))) lt!63526)))

(declare-fun lt!63520 () Unit!3846)

(assert (=> b!123462 (= lt!63520 lt!63517)))

(declare-fun lt!63519 () ListLongMap!1671)

(assert (=> b!123462 (= lt!63519 (getCurrentListMapNoExtraKeys!129 (_keys!4482 (v!3089 (underlying!429 thiss!992))) (_values!2738 (v!3089 (underlying!429 thiss!992))) (mask!6993 (v!3089 (underlying!429 thiss!992))) (extraKeys!2540 (v!3089 (underlying!429 thiss!992))) (zeroValue!2620 (v!3089 (underlying!429 thiss!992))) (minValue!2620 (v!3089 (underlying!429 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2755 (v!3089 (underlying!429 thiss!992)))))))

(declare-fun lt!63521 () (_ BitVec 64))

(assert (=> b!123462 (= lt!63521 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!63527 () (_ BitVec 64))

(assert (=> b!123462 (= lt!63527 (select (arr!2206 (_keys!4482 (v!3089 (underlying!429 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)))))

(declare-fun lt!63510 () Unit!3846)

(declare-fun addApplyDifferent!84 (ListLongMap!1671 (_ BitVec 64) V!3411 (_ BitVec 64)) Unit!3846)

(assert (=> b!123462 (= lt!63510 (addApplyDifferent!84 lt!63519 lt!63521 (minValue!2620 (v!3089 (underlying!429 thiss!992))) lt!63527))))

(assert (=> b!123462 (= (apply!108 (+!162 lt!63519 (tuple2!2547 lt!63521 (minValue!2620 (v!3089 (underlying!429 thiss!992))))) lt!63527) (apply!108 lt!63519 lt!63527))))

(declare-fun lt!63508 () Unit!3846)

(assert (=> b!123462 (= lt!63508 lt!63510)))

(declare-fun lt!63523 () ListLongMap!1671)

(assert (=> b!123462 (= lt!63523 (getCurrentListMapNoExtraKeys!129 (_keys!4482 (v!3089 (underlying!429 thiss!992))) (_values!2738 (v!3089 (underlying!429 thiss!992))) (mask!6993 (v!3089 (underlying!429 thiss!992))) (extraKeys!2540 (v!3089 (underlying!429 thiss!992))) (zeroValue!2620 (v!3089 (underlying!429 thiss!992))) (minValue!2620 (v!3089 (underlying!429 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2755 (v!3089 (underlying!429 thiss!992)))))))

(declare-fun lt!63529 () (_ BitVec 64))

(assert (=> b!123462 (= lt!63529 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!63514 () (_ BitVec 64))

(assert (=> b!123462 (= lt!63514 (select (arr!2206 (_keys!4482 (v!3089 (underlying!429 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)))))

(declare-fun lt!63516 () Unit!3846)

(assert (=> b!123462 (= lt!63516 (addApplyDifferent!84 lt!63523 lt!63529 (zeroValue!2620 (v!3089 (underlying!429 thiss!992))) lt!63514))))

(assert (=> b!123462 (= (apply!108 (+!162 lt!63523 (tuple2!2547 lt!63529 (zeroValue!2620 (v!3089 (underlying!429 thiss!992))))) lt!63514) (apply!108 lt!63523 lt!63514))))

(declare-fun lt!63511 () Unit!3846)

(assert (=> b!123462 (= lt!63511 lt!63516)))

(declare-fun lt!63509 () ListLongMap!1671)

(assert (=> b!123462 (= lt!63509 (getCurrentListMapNoExtraKeys!129 (_keys!4482 (v!3089 (underlying!429 thiss!992))) (_values!2738 (v!3089 (underlying!429 thiss!992))) (mask!6993 (v!3089 (underlying!429 thiss!992))) (extraKeys!2540 (v!3089 (underlying!429 thiss!992))) (zeroValue!2620 (v!3089 (underlying!429 thiss!992))) (minValue!2620 (v!3089 (underlying!429 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2755 (v!3089 (underlying!429 thiss!992)))))))

(declare-fun lt!63518 () (_ BitVec 64))

(assert (=> b!123462 (= lt!63518 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!63512 () (_ BitVec 64))

(assert (=> b!123462 (= lt!63512 (select (arr!2206 (_keys!4482 (v!3089 (underlying!429 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)))))

(assert (=> b!123462 (= lt!63515 (addApplyDifferent!84 lt!63509 lt!63518 (minValue!2620 (v!3089 (underlying!429 thiss!992))) lt!63512))))

(assert (=> b!123462 (= (apply!108 (+!162 lt!63509 (tuple2!2547 lt!63518 (minValue!2620 (v!3089 (underlying!429 thiss!992))))) lt!63512) (apply!108 lt!63509 lt!63512))))

(declare-fun b!123463 () Bool)

(assert (=> b!123463 (= e!80706 e!80711)))

(assert (=> b!123463 (= c!22402 (and (not (= (bvand (extraKeys!2540 (v!3089 (underlying!429 thiss!992))) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand (extraKeys!2540 (v!3089 (underlying!429 thiss!992))) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!123464 () Bool)

(assert (=> b!123464 (= e!80710 (= (apply!108 lt!63525 #b0000000000000000000000000000000000000000000000000000000000000000) (zeroValue!2620 (v!3089 (underlying!429 thiss!992)))))))

(declare-fun b!123465 () Bool)

(assert (=> b!123465 (= e!80704 (not call!13123))))

(declare-fun b!123466 () Bool)

(assert (=> b!123466 (= e!80709 e!80714)))

(declare-fun res!59932 () Bool)

(assert (=> b!123466 (=> (not res!59932) (not e!80714))))

(assert (=> b!123466 (= res!59932 (contains!868 lt!63525 (select (arr!2206 (_keys!4482 (v!3089 (underlying!429 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))))))

(assert (=> b!123466 (and (bvsge (bvadd #b00000000000000000000000000000001 from!355) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!355) (size!2468 (_keys!4482 (v!3089 (underlying!429 thiss!992))))))))

(declare-fun b!123467 () Bool)

(declare-fun Unit!3848 () Unit!3846)

(assert (=> b!123467 (= e!80703 Unit!3848)))

(assert (= (and d!36973 c!22399) b!123458))

(assert (= (and d!36973 (not c!22399)) b!123463))

(assert (= (and b!123463 c!22402) b!123448))

(assert (= (and b!123463 (not c!22402)) b!123460))

(assert (= (and b!123460 c!22401) b!123452))

(assert (= (and b!123460 (not c!22401)) b!123451))

(assert (= (or b!123452 b!123451) bm!13123))

(assert (= (or b!123448 bm!13123) bm!13119))

(assert (= (or b!123448 b!123452) bm!13117))

(assert (= (or b!123458 bm!13119) bm!13121))

(assert (= (or b!123458 bm!13117) bm!13118))

(assert (= (and d!36973 res!59940) b!123456))

(assert (= (and d!36973 c!22398) b!123462))

(assert (= (and d!36973 (not c!22398)) b!123467))

(assert (= (and d!36973 res!59937) b!123455))

(assert (= (and b!123455 res!59939) b!123459))

(assert (= (and b!123455 (not res!59936)) b!123466))

(assert (= (and b!123466 res!59932) b!123454))

(assert (= (and b!123455 res!59935) b!123447))

(assert (= (and b!123447 c!22397) b!123461))

(assert (= (and b!123447 (not c!22397)) b!123449))

(assert (= (and b!123461 res!59934) b!123464))

(assert (= (or b!123461 b!123449) bm!13122))

(assert (= (and b!123447 res!59938) b!123450))

(assert (= (and b!123450 c!22400) b!123453))

(assert (= (and b!123450 (not c!22400)) b!123465))

(assert (= (and b!123453 res!59933) b!123457))

(assert (= (or b!123453 b!123465) bm!13120))

(declare-fun b_lambda!5443 () Bool)

(assert (=> (not b_lambda!5443) (not b!123454)))

(declare-fun t!6023 () Bool)

(declare-fun tb!2277 () Bool)

(assert (=> (and b!123359 (= (defaultEntry!2755 (v!3089 (underlying!429 thiss!992))) (defaultEntry!2755 (v!3089 (underlying!429 thiss!992)))) t!6023) tb!2277))

(declare-fun result!3779 () Bool)

(assert (=> tb!2277 (= result!3779 tp_is_empty!2823)))

(assert (=> b!123454 t!6023))

(declare-fun b_and!7597 () Bool)

(assert (= b_and!7589 (and (=> t!6023 result!3779) b_and!7597)))

(declare-fun tb!2279 () Bool)

(declare-fun t!6025 () Bool)

(assert (=> (and b!123355 (= (defaultEntry!2755 newMap!16) (defaultEntry!2755 (v!3089 (underlying!429 thiss!992)))) t!6025) tb!2279))

(declare-fun result!3783 () Bool)

(assert (= result!3783 result!3779))

(assert (=> b!123454 t!6025))

(declare-fun b_and!7599 () Bool)

(assert (= b_and!7591 (and (=> t!6025 result!3783) b_and!7599)))

(declare-fun m!143427 () Bool)

(assert (=> b!123456 m!143427))

(assert (=> b!123456 m!143427))

(declare-fun m!143429 () Bool)

(assert (=> b!123456 m!143429))

(declare-fun m!143431 () Bool)

(assert (=> bm!13122 m!143431))

(declare-fun m!143433 () Bool)

(assert (=> b!123462 m!143433))

(declare-fun m!143435 () Bool)

(assert (=> b!123462 m!143435))

(declare-fun m!143437 () Bool)

(assert (=> b!123462 m!143437))

(declare-fun m!143439 () Bool)

(assert (=> b!123462 m!143439))

(declare-fun m!143441 () Bool)

(assert (=> b!123462 m!143441))

(declare-fun m!143443 () Bool)

(assert (=> b!123462 m!143443))

(declare-fun m!143445 () Bool)

(assert (=> b!123462 m!143445))

(declare-fun m!143447 () Bool)

(assert (=> b!123462 m!143447))

(declare-fun m!143449 () Bool)

(assert (=> b!123462 m!143449))

(declare-fun m!143451 () Bool)

(assert (=> b!123462 m!143451))

(declare-fun m!143453 () Bool)

(assert (=> b!123462 m!143453))

(declare-fun m!143455 () Bool)

(assert (=> b!123462 m!143455))

(assert (=> b!123462 m!143447))

(declare-fun m!143457 () Bool)

(assert (=> b!123462 m!143457))

(declare-fun m!143459 () Bool)

(assert (=> b!123462 m!143459))

(assert (=> b!123462 m!143453))

(declare-fun m!143461 () Bool)

(assert (=> b!123462 m!143461))

(assert (=> b!123462 m!143443))

(declare-fun m!143463 () Bool)

(assert (=> b!123462 m!143463))

(assert (=> b!123462 m!143427))

(assert (=> b!123462 m!143435))

(assert (=> b!123454 m!143427))

(declare-fun m!143465 () Bool)

(assert (=> b!123454 m!143465))

(declare-fun m!143467 () Bool)

(assert (=> b!123454 m!143467))

(assert (=> b!123454 m!143427))

(declare-fun m!143469 () Bool)

(assert (=> b!123454 m!143469))

(assert (=> b!123454 m!143469))

(assert (=> b!123454 m!143467))

(declare-fun m!143471 () Bool)

(assert (=> b!123454 m!143471))

(declare-fun m!143473 () Bool)

(assert (=> d!36973 m!143473))

(declare-fun m!143475 () Bool)

(assert (=> b!123458 m!143475))

(declare-fun m!143477 () Bool)

(assert (=> bm!13118 m!143477))

(assert (=> b!123466 m!143427))

(assert (=> b!123466 m!143427))

(declare-fun m!143479 () Bool)

(assert (=> b!123466 m!143479))

(assert (=> b!123459 m!143427))

(assert (=> b!123459 m!143427))

(assert (=> b!123459 m!143429))

(declare-fun m!143481 () Bool)

(assert (=> bm!13120 m!143481))

(declare-fun m!143483 () Bool)

(assert (=> b!123464 m!143483))

(assert (=> bm!13121 m!143433))

(declare-fun m!143485 () Bool)

(assert (=> b!123457 m!143485))

(assert (=> b!123357 d!36973))

(declare-fun d!36975 () Bool)

(assert (=> d!36975 (= (map!1371 newMap!16) (getCurrentListMap!524 (_keys!4482 newMap!16) (_values!2738 newMap!16) (mask!6993 newMap!16) (extraKeys!2540 newMap!16) (zeroValue!2620 newMap!16) (minValue!2620 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2755 newMap!16)))))

(declare-fun bs!5108 () Bool)

(assert (= bs!5108 d!36975))

(declare-fun m!143487 () Bool)

(assert (=> bs!5108 m!143487))

(assert (=> b!123357 d!36975))

(declare-fun d!36977 () Bool)

(assert (=> d!36977 (= (valid!492 thiss!992) (valid!491 (v!3089 (underlying!429 thiss!992))))))

(declare-fun bs!5109 () Bool)

(assert (= bs!5109 d!36977))

(declare-fun m!143489 () Bool)

(assert (=> bs!5109 m!143489))

(assert (=> start!13452 d!36977))

(declare-fun d!36979 () Bool)

(assert (=> d!36979 (= (array_inv!1349 (_keys!4482 newMap!16)) (bvsge (size!2468 (_keys!4482 newMap!16)) #b00000000000000000000000000000000))))

(assert (=> b!123355 d!36979))

(declare-fun d!36981 () Bool)

(assert (=> d!36981 (= (array_inv!1350 (_values!2738 newMap!16)) (bvsge (size!2469 (_values!2738 newMap!16)) #b00000000000000000000000000000000))))

(assert (=> b!123355 d!36981))

(declare-fun d!36983 () Bool)

(declare-fun res!59947 () Bool)

(declare-fun e!80717 () Bool)

(assert (=> d!36983 (=> (not res!59947) (not e!80717))))

(declare-fun simpleValid!83 (LongMapFixedSize!1044) Bool)

(assert (=> d!36983 (= res!59947 (simpleValid!83 newMap!16))))

(assert (=> d!36983 (= (valid!491 newMap!16) e!80717)))

(declare-fun b!123476 () Bool)

(declare-fun res!59948 () Bool)

(assert (=> b!123476 (=> (not res!59948) (not e!80717))))

(declare-fun arrayCountValidKeys!0 (array!4656 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!123476 (= res!59948 (= (arrayCountValidKeys!0 (_keys!4482 newMap!16) #b00000000000000000000000000000000 (size!2468 (_keys!4482 newMap!16))) (_size!571 newMap!16)))))

(declare-fun b!123477 () Bool)

(declare-fun res!59949 () Bool)

(assert (=> b!123477 (=> (not res!59949) (not e!80717))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!4656 (_ BitVec 32)) Bool)

(assert (=> b!123477 (= res!59949 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!4482 newMap!16) (mask!6993 newMap!16)))))

(declare-fun b!123478 () Bool)

(declare-datatypes ((List!1711 0))(
  ( (Nil!1708) (Cons!1707 (h!2308 (_ BitVec 64)) (t!6026 List!1711)) )
))
(declare-fun arrayNoDuplicates!0 (array!4656 (_ BitVec 32) List!1711) Bool)

(assert (=> b!123478 (= e!80717 (arrayNoDuplicates!0 (_keys!4482 newMap!16) #b00000000000000000000000000000000 Nil!1708))))

(assert (= (and d!36983 res!59947) b!123476))

(assert (= (and b!123476 res!59948) b!123477))

(assert (= (and b!123477 res!59949) b!123478))

(declare-fun m!143491 () Bool)

(assert (=> d!36983 m!143491))

(declare-fun m!143493 () Bool)

(assert (=> b!123476 m!143493))

(declare-fun m!143495 () Bool)

(assert (=> b!123477 m!143495))

(declare-fun m!143497 () Bool)

(assert (=> b!123478 m!143497))

(assert (=> b!123347 d!36983))

(declare-fun d!36985 () Bool)

(assert (=> d!36985 (= (array_inv!1349 (_keys!4482 (v!3089 (underlying!429 thiss!992)))) (bvsge (size!2468 (_keys!4482 (v!3089 (underlying!429 thiss!992)))) #b00000000000000000000000000000000))))

(assert (=> b!123359 d!36985))

(declare-fun d!36987 () Bool)

(assert (=> d!36987 (= (array_inv!1350 (_values!2738 (v!3089 (underlying!429 thiss!992)))) (bvsge (size!2469 (_values!2738 (v!3089 (underlying!429 thiss!992)))) #b00000000000000000000000000000000))))

(assert (=> b!123359 d!36987))

(declare-fun b!123485 () Bool)

(declare-fun e!80723 () Bool)

(assert (=> b!123485 (= e!80723 tp_is_empty!2823)))

(declare-fun condMapEmpty!4435 () Bool)

(declare-fun mapDefault!4435 () ValueCell!1068)

(assert (=> mapNonEmpty!4426 (= condMapEmpty!4435 (= mapRest!4425 ((as const (Array (_ BitVec 32) ValueCell!1068)) mapDefault!4435)))))

(declare-fun e!80722 () Bool)

(declare-fun mapRes!4435 () Bool)

(assert (=> mapNonEmpty!4426 (= tp!10826 (and e!80722 mapRes!4435))))

(declare-fun b!123486 () Bool)

(assert (=> b!123486 (= e!80722 tp_is_empty!2823)))

(declare-fun mapIsEmpty!4435 () Bool)

(assert (=> mapIsEmpty!4435 mapRes!4435))

(declare-fun mapNonEmpty!4435 () Bool)

(declare-fun tp!10843 () Bool)

(assert (=> mapNonEmpty!4435 (= mapRes!4435 (and tp!10843 e!80723))))

(declare-fun mapKey!4435 () (_ BitVec 32))

(declare-fun mapRest!4435 () (Array (_ BitVec 32) ValueCell!1068))

(declare-fun mapValue!4435 () ValueCell!1068)

(assert (=> mapNonEmpty!4435 (= mapRest!4425 (store mapRest!4435 mapKey!4435 mapValue!4435))))

(assert (= (and mapNonEmpty!4426 condMapEmpty!4435) mapIsEmpty!4435))

(assert (= (and mapNonEmpty!4426 (not condMapEmpty!4435)) mapNonEmpty!4435))

(assert (= (and mapNonEmpty!4435 ((_ is ValueCellFull!1068) mapValue!4435)) b!123485))

(assert (= (and mapNonEmpty!4426 ((_ is ValueCellFull!1068) mapDefault!4435)) b!123486))

(declare-fun m!143499 () Bool)

(assert (=> mapNonEmpty!4435 m!143499))

(declare-fun b!123487 () Bool)

(declare-fun e!80725 () Bool)

(assert (=> b!123487 (= e!80725 tp_is_empty!2823)))

(declare-fun condMapEmpty!4436 () Bool)

(declare-fun mapDefault!4436 () ValueCell!1068)

(assert (=> mapNonEmpty!4425 (= condMapEmpty!4436 (= mapRest!4426 ((as const (Array (_ BitVec 32) ValueCell!1068)) mapDefault!4436)))))

(declare-fun e!80724 () Bool)

(declare-fun mapRes!4436 () Bool)

(assert (=> mapNonEmpty!4425 (= tp!10828 (and e!80724 mapRes!4436))))

(declare-fun b!123488 () Bool)

(assert (=> b!123488 (= e!80724 tp_is_empty!2823)))

(declare-fun mapIsEmpty!4436 () Bool)

(assert (=> mapIsEmpty!4436 mapRes!4436))

(declare-fun mapNonEmpty!4436 () Bool)

(declare-fun tp!10844 () Bool)

(assert (=> mapNonEmpty!4436 (= mapRes!4436 (and tp!10844 e!80725))))

(declare-fun mapKey!4436 () (_ BitVec 32))

(declare-fun mapValue!4436 () ValueCell!1068)

(declare-fun mapRest!4436 () (Array (_ BitVec 32) ValueCell!1068))

(assert (=> mapNonEmpty!4436 (= mapRest!4426 (store mapRest!4436 mapKey!4436 mapValue!4436))))

(assert (= (and mapNonEmpty!4425 condMapEmpty!4436) mapIsEmpty!4436))

(assert (= (and mapNonEmpty!4425 (not condMapEmpty!4436)) mapNonEmpty!4436))

(assert (= (and mapNonEmpty!4436 ((_ is ValueCellFull!1068) mapValue!4436)) b!123487))

(assert (= (and mapNonEmpty!4425 ((_ is ValueCellFull!1068) mapDefault!4436)) b!123488))

(declare-fun m!143501 () Bool)

(assert (=> mapNonEmpty!4436 m!143501))

(declare-fun b_lambda!5445 () Bool)

(assert (= b_lambda!5443 (or (and b!123359 b_free!2813) (and b!123355 b_free!2815 (= (defaultEntry!2755 newMap!16) (defaultEntry!2755 (v!3089 (underlying!429 thiss!992))))) b_lambda!5445)))

(check-sat (not b!123458) (not bm!13122) (not d!36973) (not d!36983) (not b!123457) (not b!123478) (not b!123464) (not b!123462) (not bm!13118) (not b_next!2813) (not b!123466) (not b!123477) (not mapNonEmpty!4435) b_and!7599 (not bm!13121) (not b!123454) (not b_lambda!5445) (not b!123476) (not bm!13120) tp_is_empty!2823 (not d!36977) (not mapNonEmpty!4436) (not b!123459) (not b_next!2815) (not d!36975) (not b!123456) b_and!7597)
(check-sat b_and!7597 b_and!7599 (not b_next!2813) (not b_next!2815))
(get-model)

(declare-fun b!123498 () Bool)

(declare-fun res!59959 () Bool)

(declare-fun e!80728 () Bool)

(assert (=> b!123498 (=> (not res!59959) (not e!80728))))

(declare-fun size!2472 (LongMapFixedSize!1044) (_ BitVec 32))

(assert (=> b!123498 (= res!59959 (bvsge (size!2472 newMap!16) (_size!571 newMap!16)))))

(declare-fun b!123497 () Bool)

(declare-fun res!59961 () Bool)

(assert (=> b!123497 (=> (not res!59961) (not e!80728))))

(assert (=> b!123497 (= res!59961 (and (= (size!2469 (_values!2738 newMap!16)) (bvadd (mask!6993 newMap!16) #b00000000000000000000000000000001)) (= (size!2468 (_keys!4482 newMap!16)) (size!2469 (_values!2738 newMap!16))) (bvsge (_size!571 newMap!16) #b00000000000000000000000000000000) (bvsle (_size!571 newMap!16) (bvadd (mask!6993 newMap!16) #b00000000000000000000000000000001))))))

(declare-fun d!36989 () Bool)

(declare-fun res!59958 () Bool)

(assert (=> d!36989 (=> (not res!59958) (not e!80728))))

(assert (=> d!36989 (= res!59958 (validMask!0 (mask!6993 newMap!16)))))

(assert (=> d!36989 (= (simpleValid!83 newMap!16) e!80728)))

(declare-fun b!123499 () Bool)

(declare-fun res!59960 () Bool)

(assert (=> b!123499 (=> (not res!59960) (not e!80728))))

(assert (=> b!123499 (= res!59960 (= (size!2472 newMap!16) (bvadd (_size!571 newMap!16) (bvsdiv (bvadd (extraKeys!2540 newMap!16) #b00000000000000000000000000000001) #b00000000000000000000000000000010))))))

(declare-fun b!123500 () Bool)

(assert (=> b!123500 (= e!80728 (and (bvsge (extraKeys!2540 newMap!16) #b00000000000000000000000000000000) (bvsle (extraKeys!2540 newMap!16) #b00000000000000000000000000000011) (bvsge (_vacant!571 newMap!16) #b00000000000000000000000000000000)))))

(assert (= (and d!36989 res!59958) b!123497))

(assert (= (and b!123497 res!59961) b!123498))

(assert (= (and b!123498 res!59959) b!123499))

(assert (= (and b!123499 res!59960) b!123500))

(declare-fun m!143503 () Bool)

(assert (=> b!123498 m!143503))

(declare-fun m!143505 () Bool)

(assert (=> d!36989 m!143505))

(assert (=> b!123499 m!143503))

(assert (=> d!36983 d!36989))

(declare-fun b!123525 () Bool)

(declare-fun e!80745 () ListLongMap!1671)

(declare-fun e!80748 () ListLongMap!1671)

(assert (=> b!123525 (= e!80745 e!80748)))

(declare-fun c!22413 () Bool)

(assert (=> b!123525 (= c!22413 (validKeyInArray!0 (select (arr!2206 (_keys!4482 (v!3089 (underlying!429 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))))))

(declare-fun b!123526 () Bool)

(assert (=> b!123526 (= e!80745 (ListLongMap!1672 Nil!1706))))

(declare-fun b!123527 () Bool)

(declare-fun e!80744 () Bool)

(assert (=> b!123527 (= e!80744 (validKeyInArray!0 (select (arr!2206 (_keys!4482 (v!3089 (underlying!429 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))))))

(assert (=> b!123527 (bvsge (bvadd #b00000000000000000000000000000001 from!355) #b00000000000000000000000000000000)))

(declare-fun bm!13126 () Bool)

(declare-fun call!13129 () ListLongMap!1671)

(assert (=> bm!13126 (= call!13129 (getCurrentListMapNoExtraKeys!129 (_keys!4482 (v!3089 (underlying!429 thiss!992))) (_values!2738 (v!3089 (underlying!429 thiss!992))) (mask!6993 (v!3089 (underlying!429 thiss!992))) (extraKeys!2540 (v!3089 (underlying!429 thiss!992))) (zeroValue!2620 (v!3089 (underlying!429 thiss!992))) (minValue!2620 (v!3089 (underlying!429 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355 #b00000000000000000000000000000001) (defaultEntry!2755 (v!3089 (underlying!429 thiss!992)))))))

(declare-fun b!123528 () Bool)

(declare-fun e!80747 () Bool)

(declare-fun e!80746 () Bool)

(assert (=> b!123528 (= e!80747 e!80746)))

(assert (=> b!123528 (and (bvsge (bvadd #b00000000000000000000000000000001 from!355) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!355) (size!2468 (_keys!4482 (v!3089 (underlying!429 thiss!992))))))))

(declare-fun lt!63548 () ListLongMap!1671)

(declare-fun res!59972 () Bool)

(assert (=> b!123528 (= res!59972 (contains!868 lt!63548 (select (arr!2206 (_keys!4482 (v!3089 (underlying!429 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))))))

(assert (=> b!123528 (=> (not res!59972) (not e!80746))))

(declare-fun b!123529 () Bool)

(declare-fun e!80743 () Bool)

(assert (=> b!123529 (= e!80743 e!80747)))

(declare-fun c!22411 () Bool)

(assert (=> b!123529 (= c!22411 e!80744)))

(declare-fun res!59973 () Bool)

(assert (=> b!123529 (=> (not res!59973) (not e!80744))))

(assert (=> b!123529 (= res!59973 (bvslt (bvadd #b00000000000000000000000000000001 from!355) (size!2468 (_keys!4482 (v!3089 (underlying!429 thiss!992))))))))

(declare-fun b!123530 () Bool)

(declare-fun res!59971 () Bool)

(assert (=> b!123530 (=> (not res!59971) (not e!80743))))

(assert (=> b!123530 (= res!59971 (not (contains!868 lt!63548 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun d!36991 () Bool)

(assert (=> d!36991 e!80743))

(declare-fun res!59970 () Bool)

(assert (=> d!36991 (=> (not res!59970) (not e!80743))))

(assert (=> d!36991 (= res!59970 (not (contains!868 lt!63548 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!36991 (= lt!63548 e!80745)))

(declare-fun c!22414 () Bool)

(assert (=> d!36991 (= c!22414 (bvsge (bvadd #b00000000000000000000000000000001 from!355) (size!2468 (_keys!4482 (v!3089 (underlying!429 thiss!992))))))))

(assert (=> d!36991 (validMask!0 (mask!6993 (v!3089 (underlying!429 thiss!992))))))

(assert (=> d!36991 (= (getCurrentListMapNoExtraKeys!129 (_keys!4482 (v!3089 (underlying!429 thiss!992))) (_values!2738 (v!3089 (underlying!429 thiss!992))) (mask!6993 (v!3089 (underlying!429 thiss!992))) (extraKeys!2540 (v!3089 (underlying!429 thiss!992))) (zeroValue!2620 (v!3089 (underlying!429 thiss!992))) (minValue!2620 (v!3089 (underlying!429 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2755 (v!3089 (underlying!429 thiss!992)))) lt!63548)))

(declare-fun b!123531 () Bool)

(assert (=> b!123531 (and (bvsge (bvadd #b00000000000000000000000000000001 from!355) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!355) (size!2468 (_keys!4482 (v!3089 (underlying!429 thiss!992))))))))

(assert (=> b!123531 (and (bvsge (bvadd #b00000000000000000000000000000001 from!355) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!355) (size!2469 (_values!2738 (v!3089 (underlying!429 thiss!992))))))))

(assert (=> b!123531 (= e!80746 (= (apply!108 lt!63548 (select (arr!2206 (_keys!4482 (v!3089 (underlying!429 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))) (get!1433 (select (arr!2207 (_values!2738 (v!3089 (underlying!429 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (dynLambda!411 (defaultEntry!2755 (v!3089 (underlying!429 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!123532 () Bool)

(declare-fun e!80749 () Bool)

(assert (=> b!123532 (= e!80747 e!80749)))

(declare-fun c!22412 () Bool)

(assert (=> b!123532 (= c!22412 (bvslt (bvadd #b00000000000000000000000000000001 from!355) (size!2468 (_keys!4482 (v!3089 (underlying!429 thiss!992))))))))

(declare-fun b!123533 () Bool)

(assert (=> b!123533 (= e!80748 call!13129)))

(declare-fun b!123534 () Bool)

(declare-fun lt!63545 () Unit!3846)

(declare-fun lt!63550 () Unit!3846)

(assert (=> b!123534 (= lt!63545 lt!63550)))

(declare-fun lt!63549 () V!3411)

(declare-fun lt!63546 () (_ BitVec 64))

(declare-fun lt!63547 () (_ BitVec 64))

(declare-fun lt!63544 () ListLongMap!1671)

(assert (=> b!123534 (not (contains!868 (+!162 lt!63544 (tuple2!2547 lt!63547 lt!63549)) lt!63546))))

(declare-fun addStillNotContains!56 (ListLongMap!1671 (_ BitVec 64) V!3411 (_ BitVec 64)) Unit!3846)

(assert (=> b!123534 (= lt!63550 (addStillNotContains!56 lt!63544 lt!63547 lt!63549 lt!63546))))

(assert (=> b!123534 (= lt!63546 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!123534 (= lt!63549 (get!1433 (select (arr!2207 (_values!2738 (v!3089 (underlying!429 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (dynLambda!411 (defaultEntry!2755 (v!3089 (underlying!429 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!123534 (= lt!63547 (select (arr!2206 (_keys!4482 (v!3089 (underlying!429 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)))))

(assert (=> b!123534 (= lt!63544 call!13129)))

(assert (=> b!123534 (= e!80748 (+!162 call!13129 (tuple2!2547 (select (arr!2206 (_keys!4482 (v!3089 (underlying!429 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (get!1433 (select (arr!2207 (_values!2738 (v!3089 (underlying!429 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (dynLambda!411 (defaultEntry!2755 (v!3089 (underlying!429 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!123535 () Bool)

(assert (=> b!123535 (= e!80749 (= lt!63548 (getCurrentListMapNoExtraKeys!129 (_keys!4482 (v!3089 (underlying!429 thiss!992))) (_values!2738 (v!3089 (underlying!429 thiss!992))) (mask!6993 (v!3089 (underlying!429 thiss!992))) (extraKeys!2540 (v!3089 (underlying!429 thiss!992))) (zeroValue!2620 (v!3089 (underlying!429 thiss!992))) (minValue!2620 (v!3089 (underlying!429 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355 #b00000000000000000000000000000001) (defaultEntry!2755 (v!3089 (underlying!429 thiss!992))))))))

(declare-fun b!123536 () Bool)

(declare-fun isEmpty!395 (ListLongMap!1671) Bool)

(assert (=> b!123536 (= e!80749 (isEmpty!395 lt!63548))))

(assert (= (and d!36991 c!22414) b!123526))

(assert (= (and d!36991 (not c!22414)) b!123525))

(assert (= (and b!123525 c!22413) b!123534))

(assert (= (and b!123525 (not c!22413)) b!123533))

(assert (= (or b!123534 b!123533) bm!13126))

(assert (= (and d!36991 res!59970) b!123530))

(assert (= (and b!123530 res!59971) b!123529))

(assert (= (and b!123529 res!59973) b!123527))

(assert (= (and b!123529 c!22411) b!123528))

(assert (= (and b!123529 (not c!22411)) b!123532))

(assert (= (and b!123528 res!59972) b!123531))

(assert (= (and b!123532 c!22412) b!123535))

(assert (= (and b!123532 (not c!22412)) b!123536))

(declare-fun b_lambda!5447 () Bool)

(assert (=> (not b_lambda!5447) (not b!123531)))

(assert (=> b!123531 t!6023))

(declare-fun b_and!7601 () Bool)

(assert (= b_and!7597 (and (=> t!6023 result!3779) b_and!7601)))

(assert (=> b!123531 t!6025))

(declare-fun b_and!7603 () Bool)

(assert (= b_and!7599 (and (=> t!6025 result!3783) b_and!7603)))

(declare-fun b_lambda!5449 () Bool)

(assert (=> (not b_lambda!5449) (not b!123534)))

(assert (=> b!123534 t!6023))

(declare-fun b_and!7605 () Bool)

(assert (= b_and!7601 (and (=> t!6023 result!3779) b_and!7605)))

(assert (=> b!123534 t!6025))

(declare-fun b_and!7607 () Bool)

(assert (= b_and!7603 (and (=> t!6025 result!3783) b_and!7607)))

(declare-fun m!143507 () Bool)

(assert (=> b!123535 m!143507))

(declare-fun m!143509 () Bool)

(assert (=> d!36991 m!143509))

(assert (=> d!36991 m!143473))

(assert (=> b!123528 m!143427))

(assert (=> b!123528 m!143427))

(declare-fun m!143511 () Bool)

(assert (=> b!123528 m!143511))

(assert (=> b!123527 m!143427))

(assert (=> b!123527 m!143427))

(assert (=> b!123527 m!143429))

(declare-fun m!143513 () Bool)

(assert (=> b!123530 m!143513))

(assert (=> bm!13126 m!143507))

(assert (=> b!123525 m!143427))

(assert (=> b!123525 m!143427))

(assert (=> b!123525 m!143429))

(declare-fun m!143515 () Bool)

(assert (=> b!123536 m!143515))

(assert (=> b!123534 m!143469))

(assert (=> b!123534 m!143467))

(assert (=> b!123534 m!143471))

(assert (=> b!123534 m!143469))

(declare-fun m!143517 () Bool)

(assert (=> b!123534 m!143517))

(declare-fun m!143519 () Bool)

(assert (=> b!123534 m!143519))

(declare-fun m!143521 () Bool)

(assert (=> b!123534 m!143521))

(assert (=> b!123534 m!143467))

(declare-fun m!143523 () Bool)

(assert (=> b!123534 m!143523))

(assert (=> b!123534 m!143427))

(assert (=> b!123534 m!143517))

(assert (=> b!123531 m!143469))

(assert (=> b!123531 m!143467))

(assert (=> b!123531 m!143471))

(assert (=> b!123531 m!143427))

(declare-fun m!143525 () Bool)

(assert (=> b!123531 m!143525))

(assert (=> b!123531 m!143469))

(assert (=> b!123531 m!143467))

(assert (=> b!123531 m!143427))

(assert (=> bm!13121 d!36991))

(declare-fun d!36993 () Bool)

(declare-fun e!80752 () Bool)

(assert (=> d!36993 e!80752))

(declare-fun res!59979 () Bool)

(assert (=> d!36993 (=> (not res!59979) (not e!80752))))

(declare-fun lt!63561 () ListLongMap!1671)

(assert (=> d!36993 (= res!59979 (contains!868 lt!63561 (_1!1283 (ite (or c!22399 c!22402) (tuple2!2547 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2620 (v!3089 (underlying!429 thiss!992)))) (tuple2!2547 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2620 (v!3089 (underlying!429 thiss!992))))))))))

(declare-fun lt!63559 () List!1709)

(assert (=> d!36993 (= lt!63561 (ListLongMap!1672 lt!63559))))

(declare-fun lt!63562 () Unit!3846)

(declare-fun lt!63560 () Unit!3846)

(assert (=> d!36993 (= lt!63562 lt!63560)))

(declare-datatypes ((Option!169 0))(
  ( (Some!168 (v!3092 V!3411)) (None!167) )
))
(declare-fun getValueByKey!163 (List!1709 (_ BitVec 64)) Option!169)

(assert (=> d!36993 (= (getValueByKey!163 lt!63559 (_1!1283 (ite (or c!22399 c!22402) (tuple2!2547 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2620 (v!3089 (underlying!429 thiss!992)))) (tuple2!2547 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2620 (v!3089 (underlying!429 thiss!992))))))) (Some!168 (_2!1283 (ite (or c!22399 c!22402) (tuple2!2547 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2620 (v!3089 (underlying!429 thiss!992)))) (tuple2!2547 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2620 (v!3089 (underlying!429 thiss!992))))))))))

(declare-fun lemmaContainsTupThenGetReturnValue!81 (List!1709 (_ BitVec 64) V!3411) Unit!3846)

(assert (=> d!36993 (= lt!63560 (lemmaContainsTupThenGetReturnValue!81 lt!63559 (_1!1283 (ite (or c!22399 c!22402) (tuple2!2547 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2620 (v!3089 (underlying!429 thiss!992)))) (tuple2!2547 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2620 (v!3089 (underlying!429 thiss!992)))))) (_2!1283 (ite (or c!22399 c!22402) (tuple2!2547 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2620 (v!3089 (underlying!429 thiss!992)))) (tuple2!2547 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2620 (v!3089 (underlying!429 thiss!992))))))))))

(declare-fun insertStrictlySorted!83 (List!1709 (_ BitVec 64) V!3411) List!1709)

(assert (=> d!36993 (= lt!63559 (insertStrictlySorted!83 (toList!851 (ite c!22399 call!13124 (ite c!22402 call!13126 call!13125))) (_1!1283 (ite (or c!22399 c!22402) (tuple2!2547 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2620 (v!3089 (underlying!429 thiss!992)))) (tuple2!2547 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2620 (v!3089 (underlying!429 thiss!992)))))) (_2!1283 (ite (or c!22399 c!22402) (tuple2!2547 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2620 (v!3089 (underlying!429 thiss!992)))) (tuple2!2547 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2620 (v!3089 (underlying!429 thiss!992))))))))))

(assert (=> d!36993 (= (+!162 (ite c!22399 call!13124 (ite c!22402 call!13126 call!13125)) (ite (or c!22399 c!22402) (tuple2!2547 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2620 (v!3089 (underlying!429 thiss!992)))) (tuple2!2547 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2620 (v!3089 (underlying!429 thiss!992)))))) lt!63561)))

(declare-fun b!123541 () Bool)

(declare-fun res!59978 () Bool)

(assert (=> b!123541 (=> (not res!59978) (not e!80752))))

(assert (=> b!123541 (= res!59978 (= (getValueByKey!163 (toList!851 lt!63561) (_1!1283 (ite (or c!22399 c!22402) (tuple2!2547 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2620 (v!3089 (underlying!429 thiss!992)))) (tuple2!2547 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2620 (v!3089 (underlying!429 thiss!992))))))) (Some!168 (_2!1283 (ite (or c!22399 c!22402) (tuple2!2547 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2620 (v!3089 (underlying!429 thiss!992)))) (tuple2!2547 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2620 (v!3089 (underlying!429 thiss!992)))))))))))

(declare-fun b!123542 () Bool)

(declare-fun contains!869 (List!1709 tuple2!2546) Bool)

(assert (=> b!123542 (= e!80752 (contains!869 (toList!851 lt!63561) (ite (or c!22399 c!22402) (tuple2!2547 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2620 (v!3089 (underlying!429 thiss!992)))) (tuple2!2547 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2620 (v!3089 (underlying!429 thiss!992)))))))))

(assert (= (and d!36993 res!59979) b!123541))

(assert (= (and b!123541 res!59978) b!123542))

(declare-fun m!143527 () Bool)

(assert (=> d!36993 m!143527))

(declare-fun m!143529 () Bool)

(assert (=> d!36993 m!143529))

(declare-fun m!143531 () Bool)

(assert (=> d!36993 m!143531))

(declare-fun m!143533 () Bool)

(assert (=> d!36993 m!143533))

(declare-fun m!143535 () Bool)

(assert (=> b!123541 m!143535))

(declare-fun m!143537 () Bool)

(assert (=> b!123542 m!143537))

(assert (=> bm!13118 d!36993))

(declare-fun b!123543 () Bool)

(declare-fun res!59986 () Bool)

(declare-fun e!80759 () Bool)

(assert (=> b!123543 (=> (not res!59986) (not e!80759))))

(declare-fun e!80763 () Bool)

(assert (=> b!123543 (= res!59986 e!80763)))

(declare-fun c!22415 () Bool)

(assert (=> b!123543 (= c!22415 (not (= (bvand (extraKeys!2540 newMap!16) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!123544 () Bool)

(declare-fun e!80762 () ListLongMap!1671)

(declare-fun call!13132 () ListLongMap!1671)

(assert (=> b!123544 (= e!80762 call!13132)))

(declare-fun b!123545 () Bool)

(declare-fun call!13131 () Bool)

(assert (=> b!123545 (= e!80763 (not call!13131))))

(declare-fun bm!13127 () Bool)

(declare-fun call!13130 () ListLongMap!1671)

(assert (=> bm!13127 (= call!13132 call!13130)))

(declare-fun b!123546 () Bool)

(declare-fun e!80755 () Bool)

(assert (=> b!123546 (= e!80759 e!80755)))

(declare-fun c!22418 () Bool)

(assert (=> b!123546 (= c!22418 (not (= (bvand (extraKeys!2540 newMap!16) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!123547 () Bool)

(declare-fun e!80758 () ListLongMap!1671)

(declare-fun call!13135 () ListLongMap!1671)

(assert (=> b!123547 (= e!80758 call!13135)))

(declare-fun call!13134 () ListLongMap!1671)

(declare-fun bm!13128 () Bool)

(declare-fun call!13136 () ListLongMap!1671)

(declare-fun c!22420 () Bool)

(declare-fun c!22417 () Bool)

(assert (=> bm!13128 (= call!13130 (+!162 (ite c!22417 call!13134 (ite c!22420 call!13136 call!13135)) (ite (or c!22417 c!22420) (tuple2!2547 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2620 newMap!16)) (tuple2!2547 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2620 newMap!16)))))))

(declare-fun bm!13129 () Bool)

(assert (=> bm!13129 (= call!13136 call!13134)))

(declare-fun bm!13130 () Bool)

(declare-fun call!13133 () Bool)

(declare-fun lt!63580 () ListLongMap!1671)

(assert (=> bm!13130 (= call!13133 (contains!868 lt!63580 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!123548 () Bool)

(assert (=> b!123548 (= e!80758 call!13132)))

(declare-fun bm!13131 () Bool)

(assert (=> bm!13131 (= call!13134 (getCurrentListMapNoExtraKeys!129 (_keys!4482 newMap!16) (_values!2738 newMap!16) (mask!6993 newMap!16) (extraKeys!2540 newMap!16) (zeroValue!2620 newMap!16) (minValue!2620 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2755 newMap!16)))))

(declare-fun b!123549 () Bool)

(declare-fun e!80753 () Bool)

(assert (=> b!123549 (= e!80755 e!80753)))

(declare-fun res!59981 () Bool)

(assert (=> b!123549 (= res!59981 call!13133)))

(assert (=> b!123549 (=> (not res!59981) (not e!80753))))

(declare-fun b!123550 () Bool)

(declare-fun e!80765 () Bool)

(assert (=> b!123550 (= e!80765 (= (apply!108 lt!63580 (select (arr!2206 (_keys!4482 newMap!16)) #b00000000000000000000000000000000)) (get!1433 (select (arr!2207 (_values!2738 newMap!16)) #b00000000000000000000000000000000) (dynLambda!411 (defaultEntry!2755 newMap!16) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!123550 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!2469 (_values!2738 newMap!16))))))

(assert (=> b!123550 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!2468 (_keys!4482 newMap!16))))))

(declare-fun b!123551 () Bool)

(declare-fun res!59983 () Bool)

(assert (=> b!123551 (=> (not res!59983) (not e!80759))))

(declare-fun e!80760 () Bool)

(assert (=> b!123551 (= res!59983 e!80760)))

(declare-fun res!59984 () Bool)

(assert (=> b!123551 (=> res!59984 e!80760)))

(declare-fun e!80756 () Bool)

(assert (=> b!123551 (= res!59984 (not e!80756))))

(declare-fun res!59987 () Bool)

(assert (=> b!123551 (=> (not res!59987) (not e!80756))))

(assert (=> b!123551 (= res!59987 (bvslt #b00000000000000000000000000000000 (size!2468 (_keys!4482 newMap!16))))))

(declare-fun b!123552 () Bool)

(declare-fun e!80764 () Bool)

(assert (=> b!123552 (= e!80764 (validKeyInArray!0 (select (arr!2206 (_keys!4482 newMap!16)) #b00000000000000000000000000000000)))))

(declare-fun bm!13132 () Bool)

(assert (=> bm!13132 (= call!13131 (contains!868 lt!63580 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!123553 () Bool)

(assert (=> b!123553 (= e!80753 (= (apply!108 lt!63580 #b1000000000000000000000000000000000000000000000000000000000000000) (minValue!2620 newMap!16)))))

(declare-fun b!123554 () Bool)

(declare-fun e!80757 () ListLongMap!1671)

(assert (=> b!123554 (= e!80757 (+!162 call!13130 (tuple2!2547 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2620 newMap!16))))))

(declare-fun b!123555 () Bool)

(assert (=> b!123555 (= e!80756 (validKeyInArray!0 (select (arr!2206 (_keys!4482 newMap!16)) #b00000000000000000000000000000000)))))

(declare-fun bm!13133 () Bool)

(assert (=> bm!13133 (= call!13135 call!13136)))

(declare-fun b!123556 () Bool)

(declare-fun c!22419 () Bool)

(assert (=> b!123556 (= c!22419 (and (not (= (bvand (extraKeys!2540 newMap!16) #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand (extraKeys!2540 newMap!16) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!123556 (= e!80762 e!80758)))

(declare-fun d!36995 () Bool)

(assert (=> d!36995 e!80759))

(declare-fun res!59985 () Bool)

(assert (=> d!36995 (=> (not res!59985) (not e!80759))))

(assert (=> d!36995 (= res!59985 (or (bvsge #b00000000000000000000000000000000 (size!2468 (_keys!4482 newMap!16))) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!2468 (_keys!4482 newMap!16))))))))

(declare-fun lt!63577 () ListLongMap!1671)

(assert (=> d!36995 (= lt!63580 lt!63577)))

(declare-fun lt!63579 () Unit!3846)

(declare-fun e!80754 () Unit!3846)

(assert (=> d!36995 (= lt!63579 e!80754)))

(declare-fun c!22416 () Bool)

(assert (=> d!36995 (= c!22416 e!80764)))

(declare-fun res!59988 () Bool)

(assert (=> d!36995 (=> (not res!59988) (not e!80764))))

(assert (=> d!36995 (= res!59988 (bvslt #b00000000000000000000000000000000 (size!2468 (_keys!4482 newMap!16))))))

(assert (=> d!36995 (= lt!63577 e!80757)))

(assert (=> d!36995 (= c!22417 (and (not (= (bvand (extraKeys!2540 newMap!16) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (extraKeys!2540 newMap!16) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!36995 (validMask!0 (mask!6993 newMap!16))))

(assert (=> d!36995 (= (getCurrentListMap!524 (_keys!4482 newMap!16) (_values!2738 newMap!16) (mask!6993 newMap!16) (extraKeys!2540 newMap!16) (zeroValue!2620 newMap!16) (minValue!2620 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2755 newMap!16)) lt!63580)))

(declare-fun b!123557 () Bool)

(declare-fun e!80761 () Bool)

(assert (=> b!123557 (= e!80763 e!80761)))

(declare-fun res!59982 () Bool)

(assert (=> b!123557 (= res!59982 call!13131)))

(assert (=> b!123557 (=> (not res!59982) (not e!80761))))

(declare-fun b!123558 () Bool)

(declare-fun lt!63570 () Unit!3846)

(assert (=> b!123558 (= e!80754 lt!63570)))

(declare-fun lt!63583 () ListLongMap!1671)

(assert (=> b!123558 (= lt!63583 (getCurrentListMapNoExtraKeys!129 (_keys!4482 newMap!16) (_values!2738 newMap!16) (mask!6993 newMap!16) (extraKeys!2540 newMap!16) (zeroValue!2620 newMap!16) (minValue!2620 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2755 newMap!16)))))

(declare-fun lt!63568 () (_ BitVec 64))

(assert (=> b!123558 (= lt!63568 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!63581 () (_ BitVec 64))

(assert (=> b!123558 (= lt!63581 (select (arr!2206 (_keys!4482 newMap!16)) #b00000000000000000000000000000000))))

(declare-fun lt!63572 () Unit!3846)

(assert (=> b!123558 (= lt!63572 (addStillContains!84 lt!63583 lt!63568 (zeroValue!2620 newMap!16) lt!63581))))

(assert (=> b!123558 (contains!868 (+!162 lt!63583 (tuple2!2547 lt!63568 (zeroValue!2620 newMap!16))) lt!63581)))

(declare-fun lt!63575 () Unit!3846)

(assert (=> b!123558 (= lt!63575 lt!63572)))

(declare-fun lt!63574 () ListLongMap!1671)

(assert (=> b!123558 (= lt!63574 (getCurrentListMapNoExtraKeys!129 (_keys!4482 newMap!16) (_values!2738 newMap!16) (mask!6993 newMap!16) (extraKeys!2540 newMap!16) (zeroValue!2620 newMap!16) (minValue!2620 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2755 newMap!16)))))

(declare-fun lt!63576 () (_ BitVec 64))

(assert (=> b!123558 (= lt!63576 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!63582 () (_ BitVec 64))

(assert (=> b!123558 (= lt!63582 (select (arr!2206 (_keys!4482 newMap!16)) #b00000000000000000000000000000000))))

(declare-fun lt!63565 () Unit!3846)

(assert (=> b!123558 (= lt!63565 (addApplyDifferent!84 lt!63574 lt!63576 (minValue!2620 newMap!16) lt!63582))))

(assert (=> b!123558 (= (apply!108 (+!162 lt!63574 (tuple2!2547 lt!63576 (minValue!2620 newMap!16))) lt!63582) (apply!108 lt!63574 lt!63582))))

(declare-fun lt!63563 () Unit!3846)

(assert (=> b!123558 (= lt!63563 lt!63565)))

(declare-fun lt!63578 () ListLongMap!1671)

(assert (=> b!123558 (= lt!63578 (getCurrentListMapNoExtraKeys!129 (_keys!4482 newMap!16) (_values!2738 newMap!16) (mask!6993 newMap!16) (extraKeys!2540 newMap!16) (zeroValue!2620 newMap!16) (minValue!2620 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2755 newMap!16)))))

(declare-fun lt!63584 () (_ BitVec 64))

(assert (=> b!123558 (= lt!63584 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!63569 () (_ BitVec 64))

(assert (=> b!123558 (= lt!63569 (select (arr!2206 (_keys!4482 newMap!16)) #b00000000000000000000000000000000))))

(declare-fun lt!63571 () Unit!3846)

(assert (=> b!123558 (= lt!63571 (addApplyDifferent!84 lt!63578 lt!63584 (zeroValue!2620 newMap!16) lt!63569))))

(assert (=> b!123558 (= (apply!108 (+!162 lt!63578 (tuple2!2547 lt!63584 (zeroValue!2620 newMap!16))) lt!63569) (apply!108 lt!63578 lt!63569))))

(declare-fun lt!63566 () Unit!3846)

(assert (=> b!123558 (= lt!63566 lt!63571)))

(declare-fun lt!63564 () ListLongMap!1671)

(assert (=> b!123558 (= lt!63564 (getCurrentListMapNoExtraKeys!129 (_keys!4482 newMap!16) (_values!2738 newMap!16) (mask!6993 newMap!16) (extraKeys!2540 newMap!16) (zeroValue!2620 newMap!16) (minValue!2620 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2755 newMap!16)))))

(declare-fun lt!63573 () (_ BitVec 64))

(assert (=> b!123558 (= lt!63573 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!63567 () (_ BitVec 64))

(assert (=> b!123558 (= lt!63567 (select (arr!2206 (_keys!4482 newMap!16)) #b00000000000000000000000000000000))))

(assert (=> b!123558 (= lt!63570 (addApplyDifferent!84 lt!63564 lt!63573 (minValue!2620 newMap!16) lt!63567))))

(assert (=> b!123558 (= (apply!108 (+!162 lt!63564 (tuple2!2547 lt!63573 (minValue!2620 newMap!16))) lt!63567) (apply!108 lt!63564 lt!63567))))

(declare-fun b!123559 () Bool)

(assert (=> b!123559 (= e!80757 e!80762)))

(assert (=> b!123559 (= c!22420 (and (not (= (bvand (extraKeys!2540 newMap!16) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand (extraKeys!2540 newMap!16) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!123560 () Bool)

(assert (=> b!123560 (= e!80761 (= (apply!108 lt!63580 #b0000000000000000000000000000000000000000000000000000000000000000) (zeroValue!2620 newMap!16)))))

(declare-fun b!123561 () Bool)

(assert (=> b!123561 (= e!80755 (not call!13133))))

(declare-fun b!123562 () Bool)

(assert (=> b!123562 (= e!80760 e!80765)))

(declare-fun res!59980 () Bool)

(assert (=> b!123562 (=> (not res!59980) (not e!80765))))

(assert (=> b!123562 (= res!59980 (contains!868 lt!63580 (select (arr!2206 (_keys!4482 newMap!16)) #b00000000000000000000000000000000)))))

(assert (=> b!123562 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!2468 (_keys!4482 newMap!16))))))

(declare-fun b!123563 () Bool)

(declare-fun Unit!3849 () Unit!3846)

(assert (=> b!123563 (= e!80754 Unit!3849)))

(assert (= (and d!36995 c!22417) b!123554))

(assert (= (and d!36995 (not c!22417)) b!123559))

(assert (= (and b!123559 c!22420) b!123544))

(assert (= (and b!123559 (not c!22420)) b!123556))

(assert (= (and b!123556 c!22419) b!123548))

(assert (= (and b!123556 (not c!22419)) b!123547))

(assert (= (or b!123548 b!123547) bm!13133))

(assert (= (or b!123544 bm!13133) bm!13129))

(assert (= (or b!123544 b!123548) bm!13127))

(assert (= (or b!123554 bm!13129) bm!13131))

(assert (= (or b!123554 bm!13127) bm!13128))

(assert (= (and d!36995 res!59988) b!123552))

(assert (= (and d!36995 c!22416) b!123558))

(assert (= (and d!36995 (not c!22416)) b!123563))

(assert (= (and d!36995 res!59985) b!123551))

(assert (= (and b!123551 res!59987) b!123555))

(assert (= (and b!123551 (not res!59984)) b!123562))

(assert (= (and b!123562 res!59980) b!123550))

(assert (= (and b!123551 res!59983) b!123543))

(assert (= (and b!123543 c!22415) b!123557))

(assert (= (and b!123543 (not c!22415)) b!123545))

(assert (= (and b!123557 res!59982) b!123560))

(assert (= (or b!123557 b!123545) bm!13132))

(assert (= (and b!123543 res!59986) b!123546))

(assert (= (and b!123546 c!22418) b!123549))

(assert (= (and b!123546 (not c!22418)) b!123561))

(assert (= (and b!123549 res!59981) b!123553))

(assert (= (or b!123549 b!123561) bm!13130))

(declare-fun b_lambda!5451 () Bool)

(assert (=> (not b_lambda!5451) (not b!123550)))

(declare-fun tb!2281 () Bool)

(declare-fun t!6028 () Bool)

(assert (=> (and b!123359 (= (defaultEntry!2755 (v!3089 (underlying!429 thiss!992))) (defaultEntry!2755 newMap!16)) t!6028) tb!2281))

(declare-fun result!3787 () Bool)

(assert (=> tb!2281 (= result!3787 tp_is_empty!2823)))

(assert (=> b!123550 t!6028))

(declare-fun b_and!7609 () Bool)

(assert (= b_and!7605 (and (=> t!6028 result!3787) b_and!7609)))

(declare-fun t!6030 () Bool)

(declare-fun tb!2283 () Bool)

(assert (=> (and b!123355 (= (defaultEntry!2755 newMap!16) (defaultEntry!2755 newMap!16)) t!6030) tb!2283))

(declare-fun result!3789 () Bool)

(assert (= result!3789 result!3787))

(assert (=> b!123550 t!6030))

(declare-fun b_and!7611 () Bool)

(assert (= b_and!7607 (and (=> t!6030 result!3789) b_and!7611)))

(declare-fun m!143539 () Bool)

(assert (=> b!123552 m!143539))

(assert (=> b!123552 m!143539))

(declare-fun m!143541 () Bool)

(assert (=> b!123552 m!143541))

(declare-fun m!143543 () Bool)

(assert (=> bm!13132 m!143543))

(declare-fun m!143545 () Bool)

(assert (=> b!123558 m!143545))

(declare-fun m!143547 () Bool)

(assert (=> b!123558 m!143547))

(declare-fun m!143549 () Bool)

(assert (=> b!123558 m!143549))

(declare-fun m!143551 () Bool)

(assert (=> b!123558 m!143551))

(declare-fun m!143553 () Bool)

(assert (=> b!123558 m!143553))

(declare-fun m!143555 () Bool)

(assert (=> b!123558 m!143555))

(declare-fun m!143557 () Bool)

(assert (=> b!123558 m!143557))

(declare-fun m!143559 () Bool)

(assert (=> b!123558 m!143559))

(declare-fun m!143561 () Bool)

(assert (=> b!123558 m!143561))

(declare-fun m!143563 () Bool)

(assert (=> b!123558 m!143563))

(declare-fun m!143565 () Bool)

(assert (=> b!123558 m!143565))

(declare-fun m!143567 () Bool)

(assert (=> b!123558 m!143567))

(assert (=> b!123558 m!143559))

(declare-fun m!143569 () Bool)

(assert (=> b!123558 m!143569))

(declare-fun m!143571 () Bool)

(assert (=> b!123558 m!143571))

(assert (=> b!123558 m!143565))

(declare-fun m!143573 () Bool)

(assert (=> b!123558 m!143573))

(assert (=> b!123558 m!143555))

(declare-fun m!143575 () Bool)

(assert (=> b!123558 m!143575))

(assert (=> b!123558 m!143539))

(assert (=> b!123558 m!143547))

(assert (=> b!123550 m!143539))

(declare-fun m!143577 () Bool)

(assert (=> b!123550 m!143577))

(declare-fun m!143579 () Bool)

(assert (=> b!123550 m!143579))

(assert (=> b!123550 m!143539))

(declare-fun m!143581 () Bool)

(assert (=> b!123550 m!143581))

(assert (=> b!123550 m!143581))

(assert (=> b!123550 m!143579))

(declare-fun m!143583 () Bool)

(assert (=> b!123550 m!143583))

(assert (=> d!36995 m!143505))

(declare-fun m!143585 () Bool)

(assert (=> b!123554 m!143585))

(declare-fun m!143587 () Bool)

(assert (=> bm!13128 m!143587))

(assert (=> b!123562 m!143539))

(assert (=> b!123562 m!143539))

(declare-fun m!143589 () Bool)

(assert (=> b!123562 m!143589))

(assert (=> b!123555 m!143539))

(assert (=> b!123555 m!143539))

(assert (=> b!123555 m!143541))

(declare-fun m!143591 () Bool)

(assert (=> bm!13130 m!143591))

(declare-fun m!143593 () Bool)

(assert (=> b!123560 m!143593))

(assert (=> bm!13131 m!143545))

(declare-fun m!143595 () Bool)

(assert (=> b!123553 m!143595))

(assert (=> d!36975 d!36995))

(declare-fun d!36997 () Bool)

(declare-fun e!80766 () Bool)

(assert (=> d!36997 e!80766))

(declare-fun res!59990 () Bool)

(assert (=> d!36997 (=> (not res!59990) (not e!80766))))

(declare-fun lt!63587 () ListLongMap!1671)

(assert (=> d!36997 (= res!59990 (contains!868 lt!63587 (_1!1283 (tuple2!2547 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2620 (v!3089 (underlying!429 thiss!992)))))))))

(declare-fun lt!63585 () List!1709)

(assert (=> d!36997 (= lt!63587 (ListLongMap!1672 lt!63585))))

(declare-fun lt!63588 () Unit!3846)

(declare-fun lt!63586 () Unit!3846)

(assert (=> d!36997 (= lt!63588 lt!63586)))

(assert (=> d!36997 (= (getValueByKey!163 lt!63585 (_1!1283 (tuple2!2547 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2620 (v!3089 (underlying!429 thiss!992)))))) (Some!168 (_2!1283 (tuple2!2547 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2620 (v!3089 (underlying!429 thiss!992)))))))))

(assert (=> d!36997 (= lt!63586 (lemmaContainsTupThenGetReturnValue!81 lt!63585 (_1!1283 (tuple2!2547 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2620 (v!3089 (underlying!429 thiss!992))))) (_2!1283 (tuple2!2547 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2620 (v!3089 (underlying!429 thiss!992)))))))))

(assert (=> d!36997 (= lt!63585 (insertStrictlySorted!83 (toList!851 call!13120) (_1!1283 (tuple2!2547 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2620 (v!3089 (underlying!429 thiss!992))))) (_2!1283 (tuple2!2547 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2620 (v!3089 (underlying!429 thiss!992)))))))))

(assert (=> d!36997 (= (+!162 call!13120 (tuple2!2547 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2620 (v!3089 (underlying!429 thiss!992))))) lt!63587)))

(declare-fun b!123564 () Bool)

(declare-fun res!59989 () Bool)

(assert (=> b!123564 (=> (not res!59989) (not e!80766))))

(assert (=> b!123564 (= res!59989 (= (getValueByKey!163 (toList!851 lt!63587) (_1!1283 (tuple2!2547 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2620 (v!3089 (underlying!429 thiss!992)))))) (Some!168 (_2!1283 (tuple2!2547 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2620 (v!3089 (underlying!429 thiss!992))))))))))

(declare-fun b!123565 () Bool)

(assert (=> b!123565 (= e!80766 (contains!869 (toList!851 lt!63587) (tuple2!2547 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2620 (v!3089 (underlying!429 thiss!992))))))))

(assert (= (and d!36997 res!59990) b!123564))

(assert (= (and b!123564 res!59989) b!123565))

(declare-fun m!143597 () Bool)

(assert (=> d!36997 m!143597))

(declare-fun m!143599 () Bool)

(assert (=> d!36997 m!143599))

(declare-fun m!143601 () Bool)

(assert (=> d!36997 m!143601))

(declare-fun m!143603 () Bool)

(assert (=> d!36997 m!143603))

(declare-fun m!143605 () Bool)

(assert (=> b!123564 m!143605))

(declare-fun m!143607 () Bool)

(assert (=> b!123565 m!143607))

(assert (=> b!123458 d!36997))

(declare-fun d!36999 () Bool)

(declare-fun e!80772 () Bool)

(assert (=> d!36999 e!80772))

(declare-fun res!59993 () Bool)

(assert (=> d!36999 (=> res!59993 e!80772)))

(declare-fun lt!63598 () Bool)

(assert (=> d!36999 (= res!59993 (not lt!63598))))

(declare-fun lt!63597 () Bool)

(assert (=> d!36999 (= lt!63598 lt!63597)))

(declare-fun lt!63600 () Unit!3846)

(declare-fun e!80771 () Unit!3846)

(assert (=> d!36999 (= lt!63600 e!80771)))

(declare-fun c!22423 () Bool)

(assert (=> d!36999 (= c!22423 lt!63597)))

(declare-fun containsKey!167 (List!1709 (_ BitVec 64)) Bool)

(assert (=> d!36999 (= lt!63597 (containsKey!167 (toList!851 lt!63525) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!36999 (= (contains!868 lt!63525 #b1000000000000000000000000000000000000000000000000000000000000000) lt!63598)))

(declare-fun b!123572 () Bool)

(declare-fun lt!63599 () Unit!3846)

(assert (=> b!123572 (= e!80771 lt!63599)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!116 (List!1709 (_ BitVec 64)) Unit!3846)

(assert (=> b!123572 (= lt!63599 (lemmaContainsKeyImpliesGetValueByKeyDefined!116 (toList!851 lt!63525) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun isDefined!117 (Option!169) Bool)

(assert (=> b!123572 (isDefined!117 (getValueByKey!163 (toList!851 lt!63525) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!123573 () Bool)

(declare-fun Unit!3850 () Unit!3846)

(assert (=> b!123573 (= e!80771 Unit!3850)))

(declare-fun b!123574 () Bool)

(assert (=> b!123574 (= e!80772 (isDefined!117 (getValueByKey!163 (toList!851 lt!63525) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!36999 c!22423) b!123572))

(assert (= (and d!36999 (not c!22423)) b!123573))

(assert (= (and d!36999 (not res!59993)) b!123574))

(declare-fun m!143609 () Bool)

(assert (=> d!36999 m!143609))

(declare-fun m!143611 () Bool)

(assert (=> b!123572 m!143611))

(declare-fun m!143613 () Bool)

(assert (=> b!123572 m!143613))

(assert (=> b!123572 m!143613))

(declare-fun m!143615 () Bool)

(assert (=> b!123572 m!143615))

(assert (=> b!123574 m!143613))

(assert (=> b!123574 m!143613))

(assert (=> b!123574 m!143615))

(assert (=> bm!13120 d!36999))

(declare-fun d!37001 () Bool)

(assert (=> d!37001 (= (validKeyInArray!0 (select (arr!2206 (_keys!4482 (v!3089 (underlying!429 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))) (and (not (= (select (arr!2206 (_keys!4482 (v!3089 (underlying!429 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!2206 (_keys!4482 (v!3089 (underlying!429 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!123459 d!37001))

(declare-fun d!37003 () Bool)

(assert (=> d!37003 (= (validMask!0 (mask!6993 (v!3089 (underlying!429 thiss!992)))) (and (or (= (mask!6993 (v!3089 (underlying!429 thiss!992))) #b00000000000000000000000000000111) (= (mask!6993 (v!3089 (underlying!429 thiss!992))) #b00000000000000000000000000001111) (= (mask!6993 (v!3089 (underlying!429 thiss!992))) #b00000000000000000000000000011111) (= (mask!6993 (v!3089 (underlying!429 thiss!992))) #b00000000000000000000000000111111) (= (mask!6993 (v!3089 (underlying!429 thiss!992))) #b00000000000000000000000001111111) (= (mask!6993 (v!3089 (underlying!429 thiss!992))) #b00000000000000000000000011111111) (= (mask!6993 (v!3089 (underlying!429 thiss!992))) #b00000000000000000000000111111111) (= (mask!6993 (v!3089 (underlying!429 thiss!992))) #b00000000000000000000001111111111) (= (mask!6993 (v!3089 (underlying!429 thiss!992))) #b00000000000000000000011111111111) (= (mask!6993 (v!3089 (underlying!429 thiss!992))) #b00000000000000000000111111111111) (= (mask!6993 (v!3089 (underlying!429 thiss!992))) #b00000000000000000001111111111111) (= (mask!6993 (v!3089 (underlying!429 thiss!992))) #b00000000000000000011111111111111) (= (mask!6993 (v!3089 (underlying!429 thiss!992))) #b00000000000000000111111111111111) (= (mask!6993 (v!3089 (underlying!429 thiss!992))) #b00000000000000001111111111111111) (= (mask!6993 (v!3089 (underlying!429 thiss!992))) #b00000000000000011111111111111111) (= (mask!6993 (v!3089 (underlying!429 thiss!992))) #b00000000000000111111111111111111) (= (mask!6993 (v!3089 (underlying!429 thiss!992))) #b00000000000001111111111111111111) (= (mask!6993 (v!3089 (underlying!429 thiss!992))) #b00000000000011111111111111111111) (= (mask!6993 (v!3089 (underlying!429 thiss!992))) #b00000000000111111111111111111111) (= (mask!6993 (v!3089 (underlying!429 thiss!992))) #b00000000001111111111111111111111) (= (mask!6993 (v!3089 (underlying!429 thiss!992))) #b00000000011111111111111111111111) (= (mask!6993 (v!3089 (underlying!429 thiss!992))) #b00000000111111111111111111111111) (= (mask!6993 (v!3089 (underlying!429 thiss!992))) #b00000001111111111111111111111111) (= (mask!6993 (v!3089 (underlying!429 thiss!992))) #b00000011111111111111111111111111) (= (mask!6993 (v!3089 (underlying!429 thiss!992))) #b00000111111111111111111111111111) (= (mask!6993 (v!3089 (underlying!429 thiss!992))) #b00001111111111111111111111111111) (= (mask!6993 (v!3089 (underlying!429 thiss!992))) #b00011111111111111111111111111111) (= (mask!6993 (v!3089 (underlying!429 thiss!992))) #b00111111111111111111111111111111)) (bvsle (mask!6993 (v!3089 (underlying!429 thiss!992))) #b00111111111111111111111111111111)))))

(assert (=> d!36973 d!37003))

(declare-fun d!37005 () Bool)

(declare-fun e!80774 () Bool)

(assert (=> d!37005 e!80774))

(declare-fun res!59994 () Bool)

(assert (=> d!37005 (=> res!59994 e!80774)))

(declare-fun lt!63602 () Bool)

(assert (=> d!37005 (= res!59994 (not lt!63602))))

(declare-fun lt!63601 () Bool)

(assert (=> d!37005 (= lt!63602 lt!63601)))

(declare-fun lt!63604 () Unit!3846)

(declare-fun e!80773 () Unit!3846)

(assert (=> d!37005 (= lt!63604 e!80773)))

(declare-fun c!22424 () Bool)

(assert (=> d!37005 (= c!22424 lt!63601)))

(assert (=> d!37005 (= lt!63601 (containsKey!167 (toList!851 lt!63525) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!37005 (= (contains!868 lt!63525 #b0000000000000000000000000000000000000000000000000000000000000000) lt!63602)))

(declare-fun b!123575 () Bool)

(declare-fun lt!63603 () Unit!3846)

(assert (=> b!123575 (= e!80773 lt!63603)))

(assert (=> b!123575 (= lt!63603 (lemmaContainsKeyImpliesGetValueByKeyDefined!116 (toList!851 lt!63525) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!123575 (isDefined!117 (getValueByKey!163 (toList!851 lt!63525) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!123576 () Bool)

(declare-fun Unit!3851 () Unit!3846)

(assert (=> b!123576 (= e!80773 Unit!3851)))

(declare-fun b!123577 () Bool)

(assert (=> b!123577 (= e!80774 (isDefined!117 (getValueByKey!163 (toList!851 lt!63525) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!37005 c!22424) b!123575))

(assert (= (and d!37005 (not c!22424)) b!123576))

(assert (= (and d!37005 (not res!59994)) b!123577))

(declare-fun m!143617 () Bool)

(assert (=> d!37005 m!143617))

(declare-fun m!143619 () Bool)

(assert (=> b!123575 m!143619))

(declare-fun m!143621 () Bool)

(assert (=> b!123575 m!143621))

(assert (=> b!123575 m!143621))

(declare-fun m!143623 () Bool)

(assert (=> b!123575 m!143623))

(assert (=> b!123577 m!143621))

(assert (=> b!123577 m!143621))

(assert (=> b!123577 m!143623))

(assert (=> bm!13122 d!37005))

(assert (=> b!123456 d!37001))

(declare-fun d!37007 () Bool)

(declare-fun res!59995 () Bool)

(declare-fun e!80775 () Bool)

(assert (=> d!37007 (=> (not res!59995) (not e!80775))))

(assert (=> d!37007 (= res!59995 (simpleValid!83 (v!3089 (underlying!429 thiss!992))))))

(assert (=> d!37007 (= (valid!491 (v!3089 (underlying!429 thiss!992))) e!80775)))

(declare-fun b!123578 () Bool)

(declare-fun res!59996 () Bool)

(assert (=> b!123578 (=> (not res!59996) (not e!80775))))

(assert (=> b!123578 (= res!59996 (= (arrayCountValidKeys!0 (_keys!4482 (v!3089 (underlying!429 thiss!992))) #b00000000000000000000000000000000 (size!2468 (_keys!4482 (v!3089 (underlying!429 thiss!992))))) (_size!571 (v!3089 (underlying!429 thiss!992)))))))

(declare-fun b!123579 () Bool)

(declare-fun res!59997 () Bool)

(assert (=> b!123579 (=> (not res!59997) (not e!80775))))

(assert (=> b!123579 (= res!59997 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!4482 (v!3089 (underlying!429 thiss!992))) (mask!6993 (v!3089 (underlying!429 thiss!992)))))))

(declare-fun b!123580 () Bool)

(assert (=> b!123580 (= e!80775 (arrayNoDuplicates!0 (_keys!4482 (v!3089 (underlying!429 thiss!992))) #b00000000000000000000000000000000 Nil!1708))))

(assert (= (and d!37007 res!59995) b!123578))

(assert (= (and b!123578 res!59996) b!123579))

(assert (= (and b!123579 res!59997) b!123580))

(declare-fun m!143625 () Bool)

(assert (=> d!37007 m!143625))

(declare-fun m!143627 () Bool)

(assert (=> b!123578 m!143627))

(declare-fun m!143629 () Bool)

(assert (=> b!123579 m!143629))

(declare-fun m!143631 () Bool)

(assert (=> b!123580 m!143631))

(assert (=> d!36977 d!37007))

(declare-fun d!37009 () Bool)

(declare-fun get!1434 (Option!169) V!3411)

(assert (=> d!37009 (= (apply!108 lt!63525 #b1000000000000000000000000000000000000000000000000000000000000000) (get!1434 (getValueByKey!163 (toList!851 lt!63525) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun bs!5110 () Bool)

(assert (= bs!5110 d!37009))

(assert (=> bs!5110 m!143613))

(assert (=> bs!5110 m!143613))

(declare-fun m!143633 () Bool)

(assert (=> bs!5110 m!143633))

(assert (=> b!123457 d!37009))

(declare-fun d!37011 () Bool)

(declare-fun e!80777 () Bool)

(assert (=> d!37011 e!80777))

(declare-fun res!59998 () Bool)

(assert (=> d!37011 (=> res!59998 e!80777)))

(declare-fun lt!63606 () Bool)

(assert (=> d!37011 (= res!59998 (not lt!63606))))

(declare-fun lt!63605 () Bool)

(assert (=> d!37011 (= lt!63606 lt!63605)))

(declare-fun lt!63608 () Unit!3846)

(declare-fun e!80776 () Unit!3846)

(assert (=> d!37011 (= lt!63608 e!80776)))

(declare-fun c!22425 () Bool)

(assert (=> d!37011 (= c!22425 lt!63605)))

(assert (=> d!37011 (= lt!63605 (containsKey!167 (toList!851 lt!63525) (select (arr!2206 (_keys!4482 (v!3089 (underlying!429 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))))))

(assert (=> d!37011 (= (contains!868 lt!63525 (select (arr!2206 (_keys!4482 (v!3089 (underlying!429 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))) lt!63606)))

(declare-fun b!123581 () Bool)

(declare-fun lt!63607 () Unit!3846)

(assert (=> b!123581 (= e!80776 lt!63607)))

(assert (=> b!123581 (= lt!63607 (lemmaContainsKeyImpliesGetValueByKeyDefined!116 (toList!851 lt!63525) (select (arr!2206 (_keys!4482 (v!3089 (underlying!429 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))))))

(assert (=> b!123581 (isDefined!117 (getValueByKey!163 (toList!851 lt!63525) (select (arr!2206 (_keys!4482 (v!3089 (underlying!429 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))))))

(declare-fun b!123582 () Bool)

(declare-fun Unit!3852 () Unit!3846)

(assert (=> b!123582 (= e!80776 Unit!3852)))

(declare-fun b!123583 () Bool)

(assert (=> b!123583 (= e!80777 (isDefined!117 (getValueByKey!163 (toList!851 lt!63525) (select (arr!2206 (_keys!4482 (v!3089 (underlying!429 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)))))))

(assert (= (and d!37011 c!22425) b!123581))

(assert (= (and d!37011 (not c!22425)) b!123582))

(assert (= (and d!37011 (not res!59998)) b!123583))

(assert (=> d!37011 m!143427))

(declare-fun m!143635 () Bool)

(assert (=> d!37011 m!143635))

(assert (=> b!123581 m!143427))

(declare-fun m!143637 () Bool)

(assert (=> b!123581 m!143637))

(assert (=> b!123581 m!143427))

(declare-fun m!143639 () Bool)

(assert (=> b!123581 m!143639))

(assert (=> b!123581 m!143639))

(declare-fun m!143641 () Bool)

(assert (=> b!123581 m!143641))

(assert (=> b!123583 m!143427))

(assert (=> b!123583 m!143639))

(assert (=> b!123583 m!143639))

(assert (=> b!123583 m!143641))

(assert (=> b!123466 d!37011))

(declare-fun d!37013 () Bool)

(assert (=> d!37013 (= (apply!108 lt!63525 (select (arr!2206 (_keys!4482 (v!3089 (underlying!429 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))) (get!1434 (getValueByKey!163 (toList!851 lt!63525) (select (arr!2206 (_keys!4482 (v!3089 (underlying!429 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)))))))

(declare-fun bs!5111 () Bool)

(assert (= bs!5111 d!37013))

(assert (=> bs!5111 m!143427))

(assert (=> bs!5111 m!143639))

(assert (=> bs!5111 m!143639))

(declare-fun m!143643 () Bool)

(assert (=> bs!5111 m!143643))

(assert (=> b!123454 d!37013))

(declare-fun d!37015 () Bool)

(declare-fun c!22428 () Bool)

(assert (=> d!37015 (= c!22428 ((_ is ValueCellFull!1068) (select (arr!2207 (_values!2738 (v!3089 (underlying!429 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))))))

(declare-fun e!80780 () V!3411)

(assert (=> d!37015 (= (get!1433 (select (arr!2207 (_values!2738 (v!3089 (underlying!429 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (dynLambda!411 (defaultEntry!2755 (v!3089 (underlying!429 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) e!80780)))

(declare-fun b!123588 () Bool)

(declare-fun get!1435 (ValueCell!1068 V!3411) V!3411)

(assert (=> b!123588 (= e!80780 (get!1435 (select (arr!2207 (_values!2738 (v!3089 (underlying!429 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (dynLambda!411 (defaultEntry!2755 (v!3089 (underlying!429 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!123589 () Bool)

(declare-fun get!1436 (ValueCell!1068 V!3411) V!3411)

(assert (=> b!123589 (= e!80780 (get!1436 (select (arr!2207 (_values!2738 (v!3089 (underlying!429 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (dynLambda!411 (defaultEntry!2755 (v!3089 (underlying!429 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!37015 c!22428) b!123588))

(assert (= (and d!37015 (not c!22428)) b!123589))

(assert (=> b!123588 m!143469))

(assert (=> b!123588 m!143467))

(declare-fun m!143645 () Bool)

(assert (=> b!123588 m!143645))

(assert (=> b!123589 m!143469))

(assert (=> b!123589 m!143467))

(declare-fun m!143647 () Bool)

(assert (=> b!123589 m!143647))

(assert (=> b!123454 d!37015))

(declare-fun d!37017 () Bool)

(declare-fun e!80781 () Bool)

(assert (=> d!37017 e!80781))

(declare-fun res!60000 () Bool)

(assert (=> d!37017 (=> (not res!60000) (not e!80781))))

(declare-fun lt!63611 () ListLongMap!1671)

(assert (=> d!37017 (= res!60000 (contains!868 lt!63611 (_1!1283 (tuple2!2547 lt!63513 (zeroValue!2620 (v!3089 (underlying!429 thiss!992)))))))))

(declare-fun lt!63609 () List!1709)

(assert (=> d!37017 (= lt!63611 (ListLongMap!1672 lt!63609))))

(declare-fun lt!63612 () Unit!3846)

(declare-fun lt!63610 () Unit!3846)

(assert (=> d!37017 (= lt!63612 lt!63610)))

(assert (=> d!37017 (= (getValueByKey!163 lt!63609 (_1!1283 (tuple2!2547 lt!63513 (zeroValue!2620 (v!3089 (underlying!429 thiss!992)))))) (Some!168 (_2!1283 (tuple2!2547 lt!63513 (zeroValue!2620 (v!3089 (underlying!429 thiss!992)))))))))

(assert (=> d!37017 (= lt!63610 (lemmaContainsTupThenGetReturnValue!81 lt!63609 (_1!1283 (tuple2!2547 lt!63513 (zeroValue!2620 (v!3089 (underlying!429 thiss!992))))) (_2!1283 (tuple2!2547 lt!63513 (zeroValue!2620 (v!3089 (underlying!429 thiss!992)))))))))

(assert (=> d!37017 (= lt!63609 (insertStrictlySorted!83 (toList!851 lt!63528) (_1!1283 (tuple2!2547 lt!63513 (zeroValue!2620 (v!3089 (underlying!429 thiss!992))))) (_2!1283 (tuple2!2547 lt!63513 (zeroValue!2620 (v!3089 (underlying!429 thiss!992)))))))))

(assert (=> d!37017 (= (+!162 lt!63528 (tuple2!2547 lt!63513 (zeroValue!2620 (v!3089 (underlying!429 thiss!992))))) lt!63611)))

(declare-fun b!123590 () Bool)

(declare-fun res!59999 () Bool)

(assert (=> b!123590 (=> (not res!59999) (not e!80781))))

(assert (=> b!123590 (= res!59999 (= (getValueByKey!163 (toList!851 lt!63611) (_1!1283 (tuple2!2547 lt!63513 (zeroValue!2620 (v!3089 (underlying!429 thiss!992)))))) (Some!168 (_2!1283 (tuple2!2547 lt!63513 (zeroValue!2620 (v!3089 (underlying!429 thiss!992))))))))))

(declare-fun b!123591 () Bool)

(assert (=> b!123591 (= e!80781 (contains!869 (toList!851 lt!63611) (tuple2!2547 lt!63513 (zeroValue!2620 (v!3089 (underlying!429 thiss!992))))))))

(assert (= (and d!37017 res!60000) b!123590))

(assert (= (and b!123590 res!59999) b!123591))

(declare-fun m!143649 () Bool)

(assert (=> d!37017 m!143649))

(declare-fun m!143651 () Bool)

(assert (=> d!37017 m!143651))

(declare-fun m!143653 () Bool)

(assert (=> d!37017 m!143653))

(declare-fun m!143655 () Bool)

(assert (=> d!37017 m!143655))

(declare-fun m!143657 () Bool)

(assert (=> b!123590 m!143657))

(declare-fun m!143659 () Bool)

(assert (=> b!123591 m!143659))

(assert (=> b!123462 d!37017))

(declare-fun d!37019 () Bool)

(assert (=> d!37019 (= (apply!108 lt!63509 lt!63512) (get!1434 (getValueByKey!163 (toList!851 lt!63509) lt!63512)))))

(declare-fun bs!5112 () Bool)

(assert (= bs!5112 d!37019))

(declare-fun m!143661 () Bool)

(assert (=> bs!5112 m!143661))

(assert (=> bs!5112 m!143661))

(declare-fun m!143663 () Bool)

(assert (=> bs!5112 m!143663))

(assert (=> b!123462 d!37019))

(assert (=> b!123462 d!36991))

(declare-fun d!37021 () Bool)

(assert (=> d!37021 (= (apply!108 (+!162 lt!63509 (tuple2!2547 lt!63518 (minValue!2620 (v!3089 (underlying!429 thiss!992))))) lt!63512) (apply!108 lt!63509 lt!63512))))

(declare-fun lt!63615 () Unit!3846)

(declare-fun choose!750 (ListLongMap!1671 (_ BitVec 64) V!3411 (_ BitVec 64)) Unit!3846)

(assert (=> d!37021 (= lt!63615 (choose!750 lt!63509 lt!63518 (minValue!2620 (v!3089 (underlying!429 thiss!992))) lt!63512))))

(declare-fun e!80784 () Bool)

(assert (=> d!37021 e!80784))

(declare-fun res!60003 () Bool)

(assert (=> d!37021 (=> (not res!60003) (not e!80784))))

(assert (=> d!37021 (= res!60003 (contains!868 lt!63509 lt!63512))))

(assert (=> d!37021 (= (addApplyDifferent!84 lt!63509 lt!63518 (minValue!2620 (v!3089 (underlying!429 thiss!992))) lt!63512) lt!63615)))

(declare-fun b!123595 () Bool)

(assert (=> b!123595 (= e!80784 (not (= lt!63512 lt!63518)))))

(assert (= (and d!37021 res!60003) b!123595))

(assert (=> d!37021 m!143443))

(declare-fun m!143665 () Bool)

(assert (=> d!37021 m!143665))

(assert (=> d!37021 m!143441))

(declare-fun m!143667 () Bool)

(assert (=> d!37021 m!143667))

(assert (=> d!37021 m!143443))

(assert (=> d!37021 m!143445))

(assert (=> b!123462 d!37021))

(declare-fun d!37023 () Bool)

(assert (=> d!37023 (= (apply!108 (+!162 lt!63519 (tuple2!2547 lt!63521 (minValue!2620 (v!3089 (underlying!429 thiss!992))))) lt!63527) (get!1434 (getValueByKey!163 (toList!851 (+!162 lt!63519 (tuple2!2547 lt!63521 (minValue!2620 (v!3089 (underlying!429 thiss!992)))))) lt!63527)))))

(declare-fun bs!5113 () Bool)

(assert (= bs!5113 d!37023))

(declare-fun m!143669 () Bool)

(assert (=> bs!5113 m!143669))

(assert (=> bs!5113 m!143669))

(declare-fun m!143671 () Bool)

(assert (=> bs!5113 m!143671))

(assert (=> b!123462 d!37023))

(declare-fun d!37025 () Bool)

(assert (=> d!37025 (= (apply!108 lt!63523 lt!63514) (get!1434 (getValueByKey!163 (toList!851 lt!63523) lt!63514)))))

(declare-fun bs!5114 () Bool)

(assert (= bs!5114 d!37025))

(declare-fun m!143673 () Bool)

(assert (=> bs!5114 m!143673))

(assert (=> bs!5114 m!143673))

(declare-fun m!143675 () Bool)

(assert (=> bs!5114 m!143675))

(assert (=> b!123462 d!37025))

(declare-fun d!37027 () Bool)

(declare-fun e!80785 () Bool)

(assert (=> d!37027 e!80785))

(declare-fun res!60005 () Bool)

(assert (=> d!37027 (=> (not res!60005) (not e!80785))))

(declare-fun lt!63618 () ListLongMap!1671)

(assert (=> d!37027 (= res!60005 (contains!868 lt!63618 (_1!1283 (tuple2!2547 lt!63529 (zeroValue!2620 (v!3089 (underlying!429 thiss!992)))))))))

(declare-fun lt!63616 () List!1709)

(assert (=> d!37027 (= lt!63618 (ListLongMap!1672 lt!63616))))

(declare-fun lt!63619 () Unit!3846)

(declare-fun lt!63617 () Unit!3846)

(assert (=> d!37027 (= lt!63619 lt!63617)))

(assert (=> d!37027 (= (getValueByKey!163 lt!63616 (_1!1283 (tuple2!2547 lt!63529 (zeroValue!2620 (v!3089 (underlying!429 thiss!992)))))) (Some!168 (_2!1283 (tuple2!2547 lt!63529 (zeroValue!2620 (v!3089 (underlying!429 thiss!992)))))))))

(assert (=> d!37027 (= lt!63617 (lemmaContainsTupThenGetReturnValue!81 lt!63616 (_1!1283 (tuple2!2547 lt!63529 (zeroValue!2620 (v!3089 (underlying!429 thiss!992))))) (_2!1283 (tuple2!2547 lt!63529 (zeroValue!2620 (v!3089 (underlying!429 thiss!992)))))))))

(assert (=> d!37027 (= lt!63616 (insertStrictlySorted!83 (toList!851 lt!63523) (_1!1283 (tuple2!2547 lt!63529 (zeroValue!2620 (v!3089 (underlying!429 thiss!992))))) (_2!1283 (tuple2!2547 lt!63529 (zeroValue!2620 (v!3089 (underlying!429 thiss!992)))))))))

(assert (=> d!37027 (= (+!162 lt!63523 (tuple2!2547 lt!63529 (zeroValue!2620 (v!3089 (underlying!429 thiss!992))))) lt!63618)))

(declare-fun b!123596 () Bool)

(declare-fun res!60004 () Bool)

(assert (=> b!123596 (=> (not res!60004) (not e!80785))))

(assert (=> b!123596 (= res!60004 (= (getValueByKey!163 (toList!851 lt!63618) (_1!1283 (tuple2!2547 lt!63529 (zeroValue!2620 (v!3089 (underlying!429 thiss!992)))))) (Some!168 (_2!1283 (tuple2!2547 lt!63529 (zeroValue!2620 (v!3089 (underlying!429 thiss!992))))))))))

(declare-fun b!123597 () Bool)

(assert (=> b!123597 (= e!80785 (contains!869 (toList!851 lt!63618) (tuple2!2547 lt!63529 (zeroValue!2620 (v!3089 (underlying!429 thiss!992))))))))

(assert (= (and d!37027 res!60005) b!123596))

(assert (= (and b!123596 res!60004) b!123597))

(declare-fun m!143677 () Bool)

(assert (=> d!37027 m!143677))

(declare-fun m!143679 () Bool)

(assert (=> d!37027 m!143679))

(declare-fun m!143681 () Bool)

(assert (=> d!37027 m!143681))

(declare-fun m!143683 () Bool)

(assert (=> d!37027 m!143683))

(declare-fun m!143685 () Bool)

(assert (=> b!123596 m!143685))

(declare-fun m!143687 () Bool)

(assert (=> b!123597 m!143687))

(assert (=> b!123462 d!37027))

(declare-fun d!37029 () Bool)

(declare-fun e!80787 () Bool)

(assert (=> d!37029 e!80787))

(declare-fun res!60006 () Bool)

(assert (=> d!37029 (=> res!60006 e!80787)))

(declare-fun lt!63621 () Bool)

(assert (=> d!37029 (= res!60006 (not lt!63621))))

(declare-fun lt!63620 () Bool)

(assert (=> d!37029 (= lt!63621 lt!63620)))

(declare-fun lt!63623 () Unit!3846)

(declare-fun e!80786 () Unit!3846)

(assert (=> d!37029 (= lt!63623 e!80786)))

(declare-fun c!22429 () Bool)

(assert (=> d!37029 (= c!22429 lt!63620)))

(assert (=> d!37029 (= lt!63620 (containsKey!167 (toList!851 (+!162 lt!63528 (tuple2!2547 lt!63513 (zeroValue!2620 (v!3089 (underlying!429 thiss!992)))))) lt!63526))))

(assert (=> d!37029 (= (contains!868 (+!162 lt!63528 (tuple2!2547 lt!63513 (zeroValue!2620 (v!3089 (underlying!429 thiss!992))))) lt!63526) lt!63621)))

(declare-fun b!123598 () Bool)

(declare-fun lt!63622 () Unit!3846)

(assert (=> b!123598 (= e!80786 lt!63622)))

(assert (=> b!123598 (= lt!63622 (lemmaContainsKeyImpliesGetValueByKeyDefined!116 (toList!851 (+!162 lt!63528 (tuple2!2547 lt!63513 (zeroValue!2620 (v!3089 (underlying!429 thiss!992)))))) lt!63526))))

(assert (=> b!123598 (isDefined!117 (getValueByKey!163 (toList!851 (+!162 lt!63528 (tuple2!2547 lt!63513 (zeroValue!2620 (v!3089 (underlying!429 thiss!992)))))) lt!63526))))

(declare-fun b!123599 () Bool)

(declare-fun Unit!3853 () Unit!3846)

(assert (=> b!123599 (= e!80786 Unit!3853)))

(declare-fun b!123600 () Bool)

(assert (=> b!123600 (= e!80787 (isDefined!117 (getValueByKey!163 (toList!851 (+!162 lt!63528 (tuple2!2547 lt!63513 (zeroValue!2620 (v!3089 (underlying!429 thiss!992)))))) lt!63526)))))

(assert (= (and d!37029 c!22429) b!123598))

(assert (= (and d!37029 (not c!22429)) b!123599))

(assert (= (and d!37029 (not res!60006)) b!123600))

(declare-fun m!143689 () Bool)

(assert (=> d!37029 m!143689))

(declare-fun m!143691 () Bool)

(assert (=> b!123598 m!143691))

(declare-fun m!143693 () Bool)

(assert (=> b!123598 m!143693))

(assert (=> b!123598 m!143693))

(declare-fun m!143695 () Bool)

(assert (=> b!123598 m!143695))

(assert (=> b!123600 m!143693))

(assert (=> b!123600 m!143693))

(assert (=> b!123600 m!143695))

(assert (=> b!123462 d!37029))

(declare-fun d!37031 () Bool)

(assert (=> d!37031 (= (apply!108 (+!162 lt!63509 (tuple2!2547 lt!63518 (minValue!2620 (v!3089 (underlying!429 thiss!992))))) lt!63512) (get!1434 (getValueByKey!163 (toList!851 (+!162 lt!63509 (tuple2!2547 lt!63518 (minValue!2620 (v!3089 (underlying!429 thiss!992)))))) lt!63512)))))

(declare-fun bs!5115 () Bool)

(assert (= bs!5115 d!37031))

(declare-fun m!143697 () Bool)

(assert (=> bs!5115 m!143697))

(assert (=> bs!5115 m!143697))

(declare-fun m!143699 () Bool)

(assert (=> bs!5115 m!143699))

(assert (=> b!123462 d!37031))

(declare-fun d!37033 () Bool)

(assert (=> d!37033 (contains!868 (+!162 lt!63528 (tuple2!2547 lt!63513 (zeroValue!2620 (v!3089 (underlying!429 thiss!992))))) lt!63526)))

(declare-fun lt!63626 () Unit!3846)

(declare-fun choose!751 (ListLongMap!1671 (_ BitVec 64) V!3411 (_ BitVec 64)) Unit!3846)

(assert (=> d!37033 (= lt!63626 (choose!751 lt!63528 lt!63513 (zeroValue!2620 (v!3089 (underlying!429 thiss!992))) lt!63526))))

(assert (=> d!37033 (contains!868 lt!63528 lt!63526)))

(assert (=> d!37033 (= (addStillContains!84 lt!63528 lt!63513 (zeroValue!2620 (v!3089 (underlying!429 thiss!992))) lt!63526) lt!63626)))

(declare-fun bs!5116 () Bool)

(assert (= bs!5116 d!37033))

(assert (=> bs!5116 m!143435))

(assert (=> bs!5116 m!143435))

(assert (=> bs!5116 m!143437))

(declare-fun m!143701 () Bool)

(assert (=> bs!5116 m!143701))

(declare-fun m!143703 () Bool)

(assert (=> bs!5116 m!143703))

(assert (=> b!123462 d!37033))

(declare-fun d!37035 () Bool)

(declare-fun e!80788 () Bool)

(assert (=> d!37035 e!80788))

(declare-fun res!60008 () Bool)

(assert (=> d!37035 (=> (not res!60008) (not e!80788))))

(declare-fun lt!63629 () ListLongMap!1671)

(assert (=> d!37035 (= res!60008 (contains!868 lt!63629 (_1!1283 (tuple2!2547 lt!63521 (minValue!2620 (v!3089 (underlying!429 thiss!992)))))))))

(declare-fun lt!63627 () List!1709)

(assert (=> d!37035 (= lt!63629 (ListLongMap!1672 lt!63627))))

(declare-fun lt!63630 () Unit!3846)

(declare-fun lt!63628 () Unit!3846)

(assert (=> d!37035 (= lt!63630 lt!63628)))

(assert (=> d!37035 (= (getValueByKey!163 lt!63627 (_1!1283 (tuple2!2547 lt!63521 (minValue!2620 (v!3089 (underlying!429 thiss!992)))))) (Some!168 (_2!1283 (tuple2!2547 lt!63521 (minValue!2620 (v!3089 (underlying!429 thiss!992)))))))))

(assert (=> d!37035 (= lt!63628 (lemmaContainsTupThenGetReturnValue!81 lt!63627 (_1!1283 (tuple2!2547 lt!63521 (minValue!2620 (v!3089 (underlying!429 thiss!992))))) (_2!1283 (tuple2!2547 lt!63521 (minValue!2620 (v!3089 (underlying!429 thiss!992)))))))))

(assert (=> d!37035 (= lt!63627 (insertStrictlySorted!83 (toList!851 lt!63519) (_1!1283 (tuple2!2547 lt!63521 (minValue!2620 (v!3089 (underlying!429 thiss!992))))) (_2!1283 (tuple2!2547 lt!63521 (minValue!2620 (v!3089 (underlying!429 thiss!992)))))))))

(assert (=> d!37035 (= (+!162 lt!63519 (tuple2!2547 lt!63521 (minValue!2620 (v!3089 (underlying!429 thiss!992))))) lt!63629)))

(declare-fun b!123602 () Bool)

(declare-fun res!60007 () Bool)

(assert (=> b!123602 (=> (not res!60007) (not e!80788))))

(assert (=> b!123602 (= res!60007 (= (getValueByKey!163 (toList!851 lt!63629) (_1!1283 (tuple2!2547 lt!63521 (minValue!2620 (v!3089 (underlying!429 thiss!992)))))) (Some!168 (_2!1283 (tuple2!2547 lt!63521 (minValue!2620 (v!3089 (underlying!429 thiss!992))))))))))

(declare-fun b!123603 () Bool)

(assert (=> b!123603 (= e!80788 (contains!869 (toList!851 lt!63629) (tuple2!2547 lt!63521 (minValue!2620 (v!3089 (underlying!429 thiss!992))))))))

(assert (= (and d!37035 res!60008) b!123602))

(assert (= (and b!123602 res!60007) b!123603))

(declare-fun m!143705 () Bool)

(assert (=> d!37035 m!143705))

(declare-fun m!143707 () Bool)

(assert (=> d!37035 m!143707))

(declare-fun m!143709 () Bool)

(assert (=> d!37035 m!143709))

(declare-fun m!143711 () Bool)

(assert (=> d!37035 m!143711))

(declare-fun m!143713 () Bool)

(assert (=> b!123602 m!143713))

(declare-fun m!143715 () Bool)

(assert (=> b!123603 m!143715))

(assert (=> b!123462 d!37035))

(declare-fun d!37037 () Bool)

(assert (=> d!37037 (= (apply!108 lt!63519 lt!63527) (get!1434 (getValueByKey!163 (toList!851 lt!63519) lt!63527)))))

(declare-fun bs!5117 () Bool)

(assert (= bs!5117 d!37037))

(declare-fun m!143717 () Bool)

(assert (=> bs!5117 m!143717))

(assert (=> bs!5117 m!143717))

(declare-fun m!143719 () Bool)

(assert (=> bs!5117 m!143719))

(assert (=> b!123462 d!37037))

(declare-fun d!37039 () Bool)

(assert (=> d!37039 (= (apply!108 (+!162 lt!63523 (tuple2!2547 lt!63529 (zeroValue!2620 (v!3089 (underlying!429 thiss!992))))) lt!63514) (apply!108 lt!63523 lt!63514))))

(declare-fun lt!63631 () Unit!3846)

(assert (=> d!37039 (= lt!63631 (choose!750 lt!63523 lt!63529 (zeroValue!2620 (v!3089 (underlying!429 thiss!992))) lt!63514))))

(declare-fun e!80789 () Bool)

(assert (=> d!37039 e!80789))

(declare-fun res!60009 () Bool)

(assert (=> d!37039 (=> (not res!60009) (not e!80789))))

(assert (=> d!37039 (= res!60009 (contains!868 lt!63523 lt!63514))))

(assert (=> d!37039 (= (addApplyDifferent!84 lt!63523 lt!63529 (zeroValue!2620 (v!3089 (underlying!429 thiss!992))) lt!63514) lt!63631)))

(declare-fun b!123604 () Bool)

(assert (=> b!123604 (= e!80789 (not (= lt!63514 lt!63529)))))

(assert (= (and d!37039 res!60009) b!123604))

(assert (=> d!37039 m!143447))

(declare-fun m!143721 () Bool)

(assert (=> d!37039 m!143721))

(assert (=> d!37039 m!143459))

(declare-fun m!143723 () Bool)

(assert (=> d!37039 m!143723))

(assert (=> d!37039 m!143447))

(assert (=> d!37039 m!143457))

(assert (=> b!123462 d!37039))

(declare-fun d!37041 () Bool)

(declare-fun e!80790 () Bool)

(assert (=> d!37041 e!80790))

(declare-fun res!60011 () Bool)

(assert (=> d!37041 (=> (not res!60011) (not e!80790))))

(declare-fun lt!63634 () ListLongMap!1671)

(assert (=> d!37041 (= res!60011 (contains!868 lt!63634 (_1!1283 (tuple2!2547 lt!63518 (minValue!2620 (v!3089 (underlying!429 thiss!992)))))))))

(declare-fun lt!63632 () List!1709)

(assert (=> d!37041 (= lt!63634 (ListLongMap!1672 lt!63632))))

(declare-fun lt!63635 () Unit!3846)

(declare-fun lt!63633 () Unit!3846)

(assert (=> d!37041 (= lt!63635 lt!63633)))

(assert (=> d!37041 (= (getValueByKey!163 lt!63632 (_1!1283 (tuple2!2547 lt!63518 (minValue!2620 (v!3089 (underlying!429 thiss!992)))))) (Some!168 (_2!1283 (tuple2!2547 lt!63518 (minValue!2620 (v!3089 (underlying!429 thiss!992)))))))))

(assert (=> d!37041 (= lt!63633 (lemmaContainsTupThenGetReturnValue!81 lt!63632 (_1!1283 (tuple2!2547 lt!63518 (minValue!2620 (v!3089 (underlying!429 thiss!992))))) (_2!1283 (tuple2!2547 lt!63518 (minValue!2620 (v!3089 (underlying!429 thiss!992)))))))))

(assert (=> d!37041 (= lt!63632 (insertStrictlySorted!83 (toList!851 lt!63509) (_1!1283 (tuple2!2547 lt!63518 (minValue!2620 (v!3089 (underlying!429 thiss!992))))) (_2!1283 (tuple2!2547 lt!63518 (minValue!2620 (v!3089 (underlying!429 thiss!992)))))))))

(assert (=> d!37041 (= (+!162 lt!63509 (tuple2!2547 lt!63518 (minValue!2620 (v!3089 (underlying!429 thiss!992))))) lt!63634)))

(declare-fun b!123605 () Bool)

(declare-fun res!60010 () Bool)

(assert (=> b!123605 (=> (not res!60010) (not e!80790))))

(assert (=> b!123605 (= res!60010 (= (getValueByKey!163 (toList!851 lt!63634) (_1!1283 (tuple2!2547 lt!63518 (minValue!2620 (v!3089 (underlying!429 thiss!992)))))) (Some!168 (_2!1283 (tuple2!2547 lt!63518 (minValue!2620 (v!3089 (underlying!429 thiss!992))))))))))

(declare-fun b!123606 () Bool)

(assert (=> b!123606 (= e!80790 (contains!869 (toList!851 lt!63634) (tuple2!2547 lt!63518 (minValue!2620 (v!3089 (underlying!429 thiss!992))))))))

(assert (= (and d!37041 res!60011) b!123605))

(assert (= (and b!123605 res!60010) b!123606))

(declare-fun m!143725 () Bool)

(assert (=> d!37041 m!143725))

(declare-fun m!143727 () Bool)

(assert (=> d!37041 m!143727))

(declare-fun m!143729 () Bool)

(assert (=> d!37041 m!143729))

(declare-fun m!143731 () Bool)

(assert (=> d!37041 m!143731))

(declare-fun m!143733 () Bool)

(assert (=> b!123605 m!143733))

(declare-fun m!143735 () Bool)

(assert (=> b!123606 m!143735))

(assert (=> b!123462 d!37041))

(declare-fun d!37043 () Bool)

(assert (=> d!37043 (= (apply!108 (+!162 lt!63523 (tuple2!2547 lt!63529 (zeroValue!2620 (v!3089 (underlying!429 thiss!992))))) lt!63514) (get!1434 (getValueByKey!163 (toList!851 (+!162 lt!63523 (tuple2!2547 lt!63529 (zeroValue!2620 (v!3089 (underlying!429 thiss!992)))))) lt!63514)))))

(declare-fun bs!5118 () Bool)

(assert (= bs!5118 d!37043))

(declare-fun m!143737 () Bool)

(assert (=> bs!5118 m!143737))

(assert (=> bs!5118 m!143737))

(declare-fun m!143739 () Bool)

(assert (=> bs!5118 m!143739))

(assert (=> b!123462 d!37043))

(declare-fun d!37045 () Bool)

(assert (=> d!37045 (= (apply!108 (+!162 lt!63519 (tuple2!2547 lt!63521 (minValue!2620 (v!3089 (underlying!429 thiss!992))))) lt!63527) (apply!108 lt!63519 lt!63527))))

(declare-fun lt!63636 () Unit!3846)

(assert (=> d!37045 (= lt!63636 (choose!750 lt!63519 lt!63521 (minValue!2620 (v!3089 (underlying!429 thiss!992))) lt!63527))))

(declare-fun e!80791 () Bool)

(assert (=> d!37045 e!80791))

(declare-fun res!60012 () Bool)

(assert (=> d!37045 (=> (not res!60012) (not e!80791))))

(assert (=> d!37045 (= res!60012 (contains!868 lt!63519 lt!63527))))

(assert (=> d!37045 (= (addApplyDifferent!84 lt!63519 lt!63521 (minValue!2620 (v!3089 (underlying!429 thiss!992))) lt!63527) lt!63636)))

(declare-fun b!123607 () Bool)

(assert (=> b!123607 (= e!80791 (not (= lt!63527 lt!63521)))))

(assert (= (and d!37045 res!60012) b!123607))

(assert (=> d!37045 m!143453))

(declare-fun m!143741 () Bool)

(assert (=> d!37045 m!143741))

(assert (=> d!37045 m!143451))

(declare-fun m!143743 () Bool)

(assert (=> d!37045 m!143743))

(assert (=> d!37045 m!143453))

(assert (=> d!37045 m!143455))

(assert (=> b!123462 d!37045))

(declare-fun b!123616 () Bool)

(declare-fun e!80796 () (_ BitVec 32))

(declare-fun call!13139 () (_ BitVec 32))

(assert (=> b!123616 (= e!80796 (bvadd #b00000000000000000000000000000001 call!13139))))

(declare-fun b!123617 () Bool)

(declare-fun e!80797 () (_ BitVec 32))

(assert (=> b!123617 (= e!80797 #b00000000000000000000000000000000)))

(declare-fun b!123618 () Bool)

(assert (=> b!123618 (= e!80796 call!13139)))

(declare-fun b!123619 () Bool)

(assert (=> b!123619 (= e!80797 e!80796)))

(declare-fun c!22435 () Bool)

(assert (=> b!123619 (= c!22435 (validKeyInArray!0 (select (arr!2206 (_keys!4482 newMap!16)) #b00000000000000000000000000000000)))))

(declare-fun d!37047 () Bool)

(declare-fun lt!63639 () (_ BitVec 32))

(assert (=> d!37047 (and (bvsge lt!63639 #b00000000000000000000000000000000) (bvsle lt!63639 (bvsub (size!2468 (_keys!4482 newMap!16)) #b00000000000000000000000000000000)))))

(assert (=> d!37047 (= lt!63639 e!80797)))

(declare-fun c!22434 () Bool)

(assert (=> d!37047 (= c!22434 (bvsge #b00000000000000000000000000000000 (size!2468 (_keys!4482 newMap!16))))))

(assert (=> d!37047 (and (bvsle #b00000000000000000000000000000000 (size!2468 (_keys!4482 newMap!16))) (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvsle (size!2468 (_keys!4482 newMap!16)) (size!2468 (_keys!4482 newMap!16))))))

(assert (=> d!37047 (= (arrayCountValidKeys!0 (_keys!4482 newMap!16) #b00000000000000000000000000000000 (size!2468 (_keys!4482 newMap!16))) lt!63639)))

(declare-fun bm!13136 () Bool)

(assert (=> bm!13136 (= call!13139 (arrayCountValidKeys!0 (_keys!4482 newMap!16) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!2468 (_keys!4482 newMap!16))))))

(assert (= (and d!37047 c!22434) b!123617))

(assert (= (and d!37047 (not c!22434)) b!123619))

(assert (= (and b!123619 c!22435) b!123616))

(assert (= (and b!123619 (not c!22435)) b!123618))

(assert (= (or b!123616 b!123618) bm!13136))

(assert (=> b!123619 m!143539))

(assert (=> b!123619 m!143539))

(assert (=> b!123619 m!143541))

(declare-fun m!143745 () Bool)

(assert (=> bm!13136 m!143745))

(assert (=> b!123476 d!37047))

(declare-fun d!37049 () Bool)

(assert (=> d!37049 (= (apply!108 lt!63525 #b0000000000000000000000000000000000000000000000000000000000000000) (get!1434 (getValueByKey!163 (toList!851 lt!63525) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun bs!5119 () Bool)

(assert (= bs!5119 d!37049))

(assert (=> bs!5119 m!143621))

(assert (=> bs!5119 m!143621))

(declare-fun m!143747 () Bool)

(assert (=> bs!5119 m!143747))

(assert (=> b!123464 d!37049))

(declare-fun b!123630 () Bool)

(declare-fun e!80807 () Bool)

(declare-fun e!80806 () Bool)

(assert (=> b!123630 (= e!80807 e!80806)))

(declare-fun res!60019 () Bool)

(assert (=> b!123630 (=> (not res!60019) (not e!80806))))

(declare-fun e!80809 () Bool)

(assert (=> b!123630 (= res!60019 (not e!80809))))

(declare-fun res!60020 () Bool)

(assert (=> b!123630 (=> (not res!60020) (not e!80809))))

(assert (=> b!123630 (= res!60020 (validKeyInArray!0 (select (arr!2206 (_keys!4482 newMap!16)) #b00000000000000000000000000000000)))))

(declare-fun b!123631 () Bool)

(declare-fun contains!870 (List!1711 (_ BitVec 64)) Bool)

(assert (=> b!123631 (= e!80809 (contains!870 Nil!1708 (select (arr!2206 (_keys!4482 newMap!16)) #b00000000000000000000000000000000)))))

(declare-fun d!37051 () Bool)

(declare-fun res!60021 () Bool)

(assert (=> d!37051 (=> res!60021 e!80807)))

(assert (=> d!37051 (= res!60021 (bvsge #b00000000000000000000000000000000 (size!2468 (_keys!4482 newMap!16))))))

(assert (=> d!37051 (= (arrayNoDuplicates!0 (_keys!4482 newMap!16) #b00000000000000000000000000000000 Nil!1708) e!80807)))

(declare-fun bm!13139 () Bool)

(declare-fun call!13142 () Bool)

(declare-fun c!22438 () Bool)

(assert (=> bm!13139 (= call!13142 (arrayNoDuplicates!0 (_keys!4482 newMap!16) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!22438 (Cons!1707 (select (arr!2206 (_keys!4482 newMap!16)) #b00000000000000000000000000000000) Nil!1708) Nil!1708)))))

(declare-fun b!123632 () Bool)

(declare-fun e!80808 () Bool)

(assert (=> b!123632 (= e!80808 call!13142)))

(declare-fun b!123633 () Bool)

(assert (=> b!123633 (= e!80806 e!80808)))

(assert (=> b!123633 (= c!22438 (validKeyInArray!0 (select (arr!2206 (_keys!4482 newMap!16)) #b00000000000000000000000000000000)))))

(declare-fun b!123634 () Bool)

(assert (=> b!123634 (= e!80808 call!13142)))

(assert (= (and d!37051 (not res!60021)) b!123630))

(assert (= (and b!123630 res!60020) b!123631))

(assert (= (and b!123630 res!60019) b!123633))

(assert (= (and b!123633 c!22438) b!123634))

(assert (= (and b!123633 (not c!22438)) b!123632))

(assert (= (or b!123634 b!123632) bm!13139))

(assert (=> b!123630 m!143539))

(assert (=> b!123630 m!143539))

(assert (=> b!123630 m!143541))

(assert (=> b!123631 m!143539))

(assert (=> b!123631 m!143539))

(declare-fun m!143749 () Bool)

(assert (=> b!123631 m!143749))

(assert (=> bm!13139 m!143539))

(declare-fun m!143751 () Bool)

(assert (=> bm!13139 m!143751))

(assert (=> b!123633 m!143539))

(assert (=> b!123633 m!143539))

(assert (=> b!123633 m!143541))

(assert (=> b!123478 d!37051))

(declare-fun b!123643 () Bool)

(declare-fun e!80818 () Bool)

(declare-fun call!13145 () Bool)

(assert (=> b!123643 (= e!80818 call!13145)))

(declare-fun d!37053 () Bool)

(declare-fun res!60027 () Bool)

(declare-fun e!80816 () Bool)

(assert (=> d!37053 (=> res!60027 e!80816)))

(assert (=> d!37053 (= res!60027 (bvsge #b00000000000000000000000000000000 (size!2468 (_keys!4482 newMap!16))))))

(assert (=> d!37053 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!4482 newMap!16) (mask!6993 newMap!16)) e!80816)))

(declare-fun bm!13142 () Bool)

(assert (=> bm!13142 (= call!13145 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (_keys!4482 newMap!16) (mask!6993 newMap!16)))))

(declare-fun b!123644 () Bool)

(assert (=> b!123644 (= e!80816 e!80818)))

(declare-fun c!22441 () Bool)

(assert (=> b!123644 (= c!22441 (validKeyInArray!0 (select (arr!2206 (_keys!4482 newMap!16)) #b00000000000000000000000000000000)))))

(declare-fun b!123645 () Bool)

(declare-fun e!80817 () Bool)

(assert (=> b!123645 (= e!80817 call!13145)))

(declare-fun b!123646 () Bool)

(assert (=> b!123646 (= e!80818 e!80817)))

(declare-fun lt!63646 () (_ BitVec 64))

(assert (=> b!123646 (= lt!63646 (select (arr!2206 (_keys!4482 newMap!16)) #b00000000000000000000000000000000))))

(declare-fun lt!63648 () Unit!3846)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!4656 (_ BitVec 64) (_ BitVec 32)) Unit!3846)

(assert (=> b!123646 (= lt!63648 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!4482 newMap!16) lt!63646 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!4656 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!123646 (arrayContainsKey!0 (_keys!4482 newMap!16) lt!63646 #b00000000000000000000000000000000)))

(declare-fun lt!63647 () Unit!3846)

(assert (=> b!123646 (= lt!63647 lt!63648)))

(declare-fun res!60026 () Bool)

(declare-datatypes ((SeekEntryResult!277 0))(
  ( (MissingZero!277 (index!3262 (_ BitVec 32))) (Found!277 (index!3263 (_ BitVec 32))) (Intermediate!277 (undefined!1089 Bool) (index!3264 (_ BitVec 32)) (x!14738 (_ BitVec 32))) (Undefined!277) (MissingVacant!277 (index!3265 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!4656 (_ BitVec 32)) SeekEntryResult!277)

(assert (=> b!123646 (= res!60026 (= (seekEntryOrOpen!0 (select (arr!2206 (_keys!4482 newMap!16)) #b00000000000000000000000000000000) (_keys!4482 newMap!16) (mask!6993 newMap!16)) (Found!277 #b00000000000000000000000000000000)))))

(assert (=> b!123646 (=> (not res!60026) (not e!80817))))

(assert (= (and d!37053 (not res!60027)) b!123644))

(assert (= (and b!123644 c!22441) b!123646))

(assert (= (and b!123644 (not c!22441)) b!123643))

(assert (= (and b!123646 res!60026) b!123645))

(assert (= (or b!123645 b!123643) bm!13142))

(declare-fun m!143753 () Bool)

(assert (=> bm!13142 m!143753))

(assert (=> b!123644 m!143539))

(assert (=> b!123644 m!143539))

(assert (=> b!123644 m!143541))

(assert (=> b!123646 m!143539))

(declare-fun m!143755 () Bool)

(assert (=> b!123646 m!143755))

(declare-fun m!143757 () Bool)

(assert (=> b!123646 m!143757))

(assert (=> b!123646 m!143539))

(declare-fun m!143759 () Bool)

(assert (=> b!123646 m!143759))

(assert (=> b!123477 d!37053))

(declare-fun b!123647 () Bool)

(declare-fun e!80820 () Bool)

(assert (=> b!123647 (= e!80820 tp_is_empty!2823)))

(declare-fun condMapEmpty!4437 () Bool)

(declare-fun mapDefault!4437 () ValueCell!1068)

(assert (=> mapNonEmpty!4436 (= condMapEmpty!4437 (= mapRest!4436 ((as const (Array (_ BitVec 32) ValueCell!1068)) mapDefault!4437)))))

(declare-fun e!80819 () Bool)

(declare-fun mapRes!4437 () Bool)

(assert (=> mapNonEmpty!4436 (= tp!10844 (and e!80819 mapRes!4437))))

(declare-fun b!123648 () Bool)

(assert (=> b!123648 (= e!80819 tp_is_empty!2823)))

(declare-fun mapIsEmpty!4437 () Bool)

(assert (=> mapIsEmpty!4437 mapRes!4437))

(declare-fun mapNonEmpty!4437 () Bool)

(declare-fun tp!10845 () Bool)

(assert (=> mapNonEmpty!4437 (= mapRes!4437 (and tp!10845 e!80820))))

(declare-fun mapRest!4437 () (Array (_ BitVec 32) ValueCell!1068))

(declare-fun mapValue!4437 () ValueCell!1068)

(declare-fun mapKey!4437 () (_ BitVec 32))

(assert (=> mapNonEmpty!4437 (= mapRest!4436 (store mapRest!4437 mapKey!4437 mapValue!4437))))

(assert (= (and mapNonEmpty!4436 condMapEmpty!4437) mapIsEmpty!4437))

(assert (= (and mapNonEmpty!4436 (not condMapEmpty!4437)) mapNonEmpty!4437))

(assert (= (and mapNonEmpty!4437 ((_ is ValueCellFull!1068) mapValue!4437)) b!123647))

(assert (= (and mapNonEmpty!4436 ((_ is ValueCellFull!1068) mapDefault!4437)) b!123648))

(declare-fun m!143761 () Bool)

(assert (=> mapNonEmpty!4437 m!143761))

(declare-fun b!123649 () Bool)

(declare-fun e!80822 () Bool)

(assert (=> b!123649 (= e!80822 tp_is_empty!2823)))

(declare-fun condMapEmpty!4438 () Bool)

(declare-fun mapDefault!4438 () ValueCell!1068)

(assert (=> mapNonEmpty!4435 (= condMapEmpty!4438 (= mapRest!4435 ((as const (Array (_ BitVec 32) ValueCell!1068)) mapDefault!4438)))))

(declare-fun e!80821 () Bool)

(declare-fun mapRes!4438 () Bool)

(assert (=> mapNonEmpty!4435 (= tp!10843 (and e!80821 mapRes!4438))))

(declare-fun b!123650 () Bool)

(assert (=> b!123650 (= e!80821 tp_is_empty!2823)))

(declare-fun mapIsEmpty!4438 () Bool)

(assert (=> mapIsEmpty!4438 mapRes!4438))

(declare-fun mapNonEmpty!4438 () Bool)

(declare-fun tp!10846 () Bool)

(assert (=> mapNonEmpty!4438 (= mapRes!4438 (and tp!10846 e!80822))))

(declare-fun mapKey!4438 () (_ BitVec 32))

(declare-fun mapRest!4438 () (Array (_ BitVec 32) ValueCell!1068))

(declare-fun mapValue!4438 () ValueCell!1068)

(assert (=> mapNonEmpty!4438 (= mapRest!4435 (store mapRest!4438 mapKey!4438 mapValue!4438))))

(assert (= (and mapNonEmpty!4435 condMapEmpty!4438) mapIsEmpty!4438))

(assert (= (and mapNonEmpty!4435 (not condMapEmpty!4438)) mapNonEmpty!4438))

(assert (= (and mapNonEmpty!4438 ((_ is ValueCellFull!1068) mapValue!4438)) b!123649))

(assert (= (and mapNonEmpty!4435 ((_ is ValueCellFull!1068) mapDefault!4438)) b!123650))

(declare-fun m!143763 () Bool)

(assert (=> mapNonEmpty!4438 m!143763))

(declare-fun b_lambda!5453 () Bool)

(assert (= b_lambda!5449 (or (and b!123359 b_free!2813) (and b!123355 b_free!2815 (= (defaultEntry!2755 newMap!16) (defaultEntry!2755 (v!3089 (underlying!429 thiss!992))))) b_lambda!5453)))

(declare-fun b_lambda!5455 () Bool)

(assert (= b_lambda!5451 (or (and b!123359 b_free!2813 (= (defaultEntry!2755 (v!3089 (underlying!429 thiss!992))) (defaultEntry!2755 newMap!16))) (and b!123355 b_free!2815) b_lambda!5455)))

(declare-fun b_lambda!5457 () Bool)

(assert (= b_lambda!5447 (or (and b!123359 b_free!2813) (and b!123355 b_free!2815 (= (defaultEntry!2755 newMap!16) (defaultEntry!2755 (v!3089 (underlying!429 thiss!992))))) b_lambda!5457)))

(check-sat (not b!123534) (not b!123498) (not b!123581) (not b!123550) (not d!37033) (not b!123580) (not d!37039) (not b!123602) (not b!123619) (not d!37041) (not b!123565) (not b_lambda!5455) (not b!123579) (not d!37043) (not d!37009) (not b!123525) (not b!123527) (not b!123531) (not b_next!2813) (not bm!13132) (not d!37017) (not b!123572) (not b!123552) (not b!123564) (not bm!13136) (not d!37013) (not b!123574) (not b!123578) (not d!37031) (not d!37019) (not d!37045) (not b!123589) (not b!123600) (not bm!13128) (not d!37027) (not d!37029) (not bm!13126) (not d!37037) (not d!37005) (not b!123553) (not b!123633) (not d!36993) (not b!123541) (not b!123598) (not b_lambda!5453) (not d!36989) (not d!37023) (not d!37049) (not b!123535) (not d!37021) (not bm!13130) (not b!123590) (not b!123528) (not d!36999) (not b_lambda!5445) (not b!123606) (not d!36995) b_and!7609 (not b!123631) (not b!123577) (not b!123603) (not b!123575) (not b!123554) tp_is_empty!2823 (not b!123562) (not bm!13142) (not bm!13131) (not b!123644) (not b!123630) (not d!36997) (not b!123555) (not bm!13139) (not b!123560) (not b!123596) (not b!123597) (not b_next!2815) (not b!123542) (not b!123499) (not b!123530) (not b!123558) (not b!123588) (not d!37035) (not b!123591) (not mapNonEmpty!4437) (not mapNonEmpty!4438) (not b!123646) b_and!7611 (not d!37025) (not b_lambda!5457) (not d!36991) (not b!123536) (not b!123583) (not d!37011) (not d!37007) (not b!123605))
(check-sat b_and!7609 b_and!7611 (not b_next!2813) (not b_next!2815))
(get-model)

(declare-fun d!37055 () Bool)

(assert (=> d!37055 (= (validMask!0 (mask!6993 newMap!16)) (and (or (= (mask!6993 newMap!16) #b00000000000000000000000000000111) (= (mask!6993 newMap!16) #b00000000000000000000000000001111) (= (mask!6993 newMap!16) #b00000000000000000000000000011111) (= (mask!6993 newMap!16) #b00000000000000000000000000111111) (= (mask!6993 newMap!16) #b00000000000000000000000001111111) (= (mask!6993 newMap!16) #b00000000000000000000000011111111) (= (mask!6993 newMap!16) #b00000000000000000000000111111111) (= (mask!6993 newMap!16) #b00000000000000000000001111111111) (= (mask!6993 newMap!16) #b00000000000000000000011111111111) (= (mask!6993 newMap!16) #b00000000000000000000111111111111) (= (mask!6993 newMap!16) #b00000000000000000001111111111111) (= (mask!6993 newMap!16) #b00000000000000000011111111111111) (= (mask!6993 newMap!16) #b00000000000000000111111111111111) (= (mask!6993 newMap!16) #b00000000000000001111111111111111) (= (mask!6993 newMap!16) #b00000000000000011111111111111111) (= (mask!6993 newMap!16) #b00000000000000111111111111111111) (= (mask!6993 newMap!16) #b00000000000001111111111111111111) (= (mask!6993 newMap!16) #b00000000000011111111111111111111) (= (mask!6993 newMap!16) #b00000000000111111111111111111111) (= (mask!6993 newMap!16) #b00000000001111111111111111111111) (= (mask!6993 newMap!16) #b00000000011111111111111111111111) (= (mask!6993 newMap!16) #b00000000111111111111111111111111) (= (mask!6993 newMap!16) #b00000001111111111111111111111111) (= (mask!6993 newMap!16) #b00000011111111111111111111111111) (= (mask!6993 newMap!16) #b00000111111111111111111111111111) (= (mask!6993 newMap!16) #b00001111111111111111111111111111) (= (mask!6993 newMap!16) #b00011111111111111111111111111111) (= (mask!6993 newMap!16) #b00111111111111111111111111111111)) (bvsle (mask!6993 newMap!16) #b00111111111111111111111111111111)))))

(assert (=> d!36995 d!37055))

(declare-fun d!37057 () Bool)

(declare-fun lt!63651 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!120 (List!1709) (InoxSet tuple2!2546))

(assert (=> d!37057 (= lt!63651 (select (content!120 (toList!851 lt!63587)) (tuple2!2547 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2620 (v!3089 (underlying!429 thiss!992))))))))

(declare-fun e!80827 () Bool)

(assert (=> d!37057 (= lt!63651 e!80827)))

(declare-fun res!60032 () Bool)

(assert (=> d!37057 (=> (not res!60032) (not e!80827))))

(assert (=> d!37057 (= res!60032 ((_ is Cons!1705) (toList!851 lt!63587)))))

(assert (=> d!37057 (= (contains!869 (toList!851 lt!63587) (tuple2!2547 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2620 (v!3089 (underlying!429 thiss!992))))) lt!63651)))

(declare-fun b!123655 () Bool)

(declare-fun e!80828 () Bool)

(assert (=> b!123655 (= e!80827 e!80828)))

(declare-fun res!60033 () Bool)

(assert (=> b!123655 (=> res!60033 e!80828)))

(assert (=> b!123655 (= res!60033 (= (h!2306 (toList!851 lt!63587)) (tuple2!2547 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2620 (v!3089 (underlying!429 thiss!992))))))))

(declare-fun b!123656 () Bool)

(assert (=> b!123656 (= e!80828 (contains!869 (t!6020 (toList!851 lt!63587)) (tuple2!2547 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2620 (v!3089 (underlying!429 thiss!992))))))))

(assert (= (and d!37057 res!60032) b!123655))

(assert (= (and b!123655 (not res!60033)) b!123656))

(declare-fun m!143765 () Bool)

(assert (=> d!37057 m!143765))

(declare-fun m!143767 () Bool)

(assert (=> d!37057 m!143767))

(declare-fun m!143769 () Bool)

(assert (=> b!123656 m!143769))

(assert (=> b!123565 d!37057))

(declare-fun d!37059 () Bool)

(assert (=> d!37059 (= (apply!108 lt!63548 (select (arr!2206 (_keys!4482 (v!3089 (underlying!429 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))) (get!1434 (getValueByKey!163 (toList!851 lt!63548) (select (arr!2206 (_keys!4482 (v!3089 (underlying!429 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)))))))

(declare-fun bs!5120 () Bool)

(assert (= bs!5120 d!37059))

(assert (=> bs!5120 m!143427))

(declare-fun m!143771 () Bool)

(assert (=> bs!5120 m!143771))

(assert (=> bs!5120 m!143771))

(declare-fun m!143773 () Bool)

(assert (=> bs!5120 m!143773))

(assert (=> b!123531 d!37059))

(assert (=> b!123531 d!37015))

(declare-fun b!123657 () Bool)

(declare-fun e!80831 () ListLongMap!1671)

(declare-fun e!80834 () ListLongMap!1671)

(assert (=> b!123657 (= e!80831 e!80834)))

(declare-fun c!22444 () Bool)

(assert (=> b!123657 (= c!22444 (validKeyInArray!0 (select (arr!2206 (_keys!4482 (v!3089 (underlying!429 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355 #b00000000000000000000000000000001))))))

(declare-fun b!123658 () Bool)

(assert (=> b!123658 (= e!80831 (ListLongMap!1672 Nil!1706))))

(declare-fun b!123659 () Bool)

(declare-fun e!80830 () Bool)

(assert (=> b!123659 (= e!80830 (validKeyInArray!0 (select (arr!2206 (_keys!4482 (v!3089 (underlying!429 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355 #b00000000000000000000000000000001))))))

(assert (=> b!123659 (bvsge (bvadd #b00000000000000000000000000000001 from!355 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))

(declare-fun bm!13143 () Bool)

(declare-fun call!13146 () ListLongMap!1671)

(assert (=> bm!13143 (= call!13146 (getCurrentListMapNoExtraKeys!129 (_keys!4482 (v!3089 (underlying!429 thiss!992))) (_values!2738 (v!3089 (underlying!429 thiss!992))) (mask!6993 (v!3089 (underlying!429 thiss!992))) (extraKeys!2540 (v!3089 (underlying!429 thiss!992))) (zeroValue!2620 (v!3089 (underlying!429 thiss!992))) (minValue!2620 (v!3089 (underlying!429 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (defaultEntry!2755 (v!3089 (underlying!429 thiss!992)))))))

(declare-fun b!123660 () Bool)

(declare-fun e!80833 () Bool)

(declare-fun e!80832 () Bool)

(assert (=> b!123660 (= e!80833 e!80832)))

(assert (=> b!123660 (and (bvsge (bvadd #b00000000000000000000000000000001 from!355 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!355 #b00000000000000000000000000000001) (size!2468 (_keys!4482 (v!3089 (underlying!429 thiss!992))))))))

(declare-fun lt!63656 () ListLongMap!1671)

(declare-fun res!60036 () Bool)

(assert (=> b!123660 (= res!60036 (contains!868 lt!63656 (select (arr!2206 (_keys!4482 (v!3089 (underlying!429 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355 #b00000000000000000000000000000001))))))

(assert (=> b!123660 (=> (not res!60036) (not e!80832))))

(declare-fun b!123661 () Bool)

(declare-fun e!80829 () Bool)

(assert (=> b!123661 (= e!80829 e!80833)))

(declare-fun c!22442 () Bool)

(assert (=> b!123661 (= c!22442 e!80830)))

(declare-fun res!60037 () Bool)

(assert (=> b!123661 (=> (not res!60037) (not e!80830))))

(assert (=> b!123661 (= res!60037 (bvslt (bvadd #b00000000000000000000000000000001 from!355 #b00000000000000000000000000000001) (size!2468 (_keys!4482 (v!3089 (underlying!429 thiss!992))))))))

(declare-fun b!123662 () Bool)

(declare-fun res!60035 () Bool)

(assert (=> b!123662 (=> (not res!60035) (not e!80829))))

(assert (=> b!123662 (= res!60035 (not (contains!868 lt!63656 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun d!37061 () Bool)

(assert (=> d!37061 e!80829))

(declare-fun res!60034 () Bool)

(assert (=> d!37061 (=> (not res!60034) (not e!80829))))

(assert (=> d!37061 (= res!60034 (not (contains!868 lt!63656 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!37061 (= lt!63656 e!80831)))

(declare-fun c!22445 () Bool)

(assert (=> d!37061 (= c!22445 (bvsge (bvadd #b00000000000000000000000000000001 from!355 #b00000000000000000000000000000001) (size!2468 (_keys!4482 (v!3089 (underlying!429 thiss!992))))))))

(assert (=> d!37061 (validMask!0 (mask!6993 (v!3089 (underlying!429 thiss!992))))))

(assert (=> d!37061 (= (getCurrentListMapNoExtraKeys!129 (_keys!4482 (v!3089 (underlying!429 thiss!992))) (_values!2738 (v!3089 (underlying!429 thiss!992))) (mask!6993 (v!3089 (underlying!429 thiss!992))) (extraKeys!2540 (v!3089 (underlying!429 thiss!992))) (zeroValue!2620 (v!3089 (underlying!429 thiss!992))) (minValue!2620 (v!3089 (underlying!429 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355 #b00000000000000000000000000000001) (defaultEntry!2755 (v!3089 (underlying!429 thiss!992)))) lt!63656)))

(declare-fun b!123663 () Bool)

(assert (=> b!123663 (and (bvsge (bvadd #b00000000000000000000000000000001 from!355 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!355 #b00000000000000000000000000000001) (size!2468 (_keys!4482 (v!3089 (underlying!429 thiss!992))))))))

(assert (=> b!123663 (and (bvsge (bvadd #b00000000000000000000000000000001 from!355 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!355 #b00000000000000000000000000000001) (size!2469 (_values!2738 (v!3089 (underlying!429 thiss!992))))))))

(assert (=> b!123663 (= e!80832 (= (apply!108 lt!63656 (select (arr!2206 (_keys!4482 (v!3089 (underlying!429 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355 #b00000000000000000000000000000001))) (get!1433 (select (arr!2207 (_values!2738 (v!3089 (underlying!429 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355 #b00000000000000000000000000000001)) (dynLambda!411 (defaultEntry!2755 (v!3089 (underlying!429 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!123664 () Bool)

(declare-fun e!80835 () Bool)

(assert (=> b!123664 (= e!80833 e!80835)))

(declare-fun c!22443 () Bool)

(assert (=> b!123664 (= c!22443 (bvslt (bvadd #b00000000000000000000000000000001 from!355 #b00000000000000000000000000000001) (size!2468 (_keys!4482 (v!3089 (underlying!429 thiss!992))))))))

(declare-fun b!123665 () Bool)

(assert (=> b!123665 (= e!80834 call!13146)))

(declare-fun b!123666 () Bool)

(declare-fun lt!63653 () Unit!3846)

(declare-fun lt!63658 () Unit!3846)

(assert (=> b!123666 (= lt!63653 lt!63658)))

(declare-fun lt!63657 () V!3411)

(declare-fun lt!63652 () ListLongMap!1671)

(declare-fun lt!63654 () (_ BitVec 64))

(declare-fun lt!63655 () (_ BitVec 64))

(assert (=> b!123666 (not (contains!868 (+!162 lt!63652 (tuple2!2547 lt!63655 lt!63657)) lt!63654))))

(assert (=> b!123666 (= lt!63658 (addStillNotContains!56 lt!63652 lt!63655 lt!63657 lt!63654))))

(assert (=> b!123666 (= lt!63654 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!123666 (= lt!63657 (get!1433 (select (arr!2207 (_values!2738 (v!3089 (underlying!429 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355 #b00000000000000000000000000000001)) (dynLambda!411 (defaultEntry!2755 (v!3089 (underlying!429 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!123666 (= lt!63655 (select (arr!2206 (_keys!4482 (v!3089 (underlying!429 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355 #b00000000000000000000000000000001)))))

(assert (=> b!123666 (= lt!63652 call!13146)))

(assert (=> b!123666 (= e!80834 (+!162 call!13146 (tuple2!2547 (select (arr!2206 (_keys!4482 (v!3089 (underlying!429 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355 #b00000000000000000000000000000001)) (get!1433 (select (arr!2207 (_values!2738 (v!3089 (underlying!429 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355 #b00000000000000000000000000000001)) (dynLambda!411 (defaultEntry!2755 (v!3089 (underlying!429 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!123667 () Bool)

(assert (=> b!123667 (= e!80835 (= lt!63656 (getCurrentListMapNoExtraKeys!129 (_keys!4482 (v!3089 (underlying!429 thiss!992))) (_values!2738 (v!3089 (underlying!429 thiss!992))) (mask!6993 (v!3089 (underlying!429 thiss!992))) (extraKeys!2540 (v!3089 (underlying!429 thiss!992))) (zeroValue!2620 (v!3089 (underlying!429 thiss!992))) (minValue!2620 (v!3089 (underlying!429 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (defaultEntry!2755 (v!3089 (underlying!429 thiss!992))))))))

(declare-fun b!123668 () Bool)

(assert (=> b!123668 (= e!80835 (isEmpty!395 lt!63656))))

(assert (= (and d!37061 c!22445) b!123658))

(assert (= (and d!37061 (not c!22445)) b!123657))

(assert (= (and b!123657 c!22444) b!123666))

(assert (= (and b!123657 (not c!22444)) b!123665))

(assert (= (or b!123666 b!123665) bm!13143))

(assert (= (and d!37061 res!60034) b!123662))

(assert (= (and b!123662 res!60035) b!123661))

(assert (= (and b!123661 res!60037) b!123659))

(assert (= (and b!123661 c!22442) b!123660))

(assert (= (and b!123661 (not c!22442)) b!123664))

(assert (= (and b!123660 res!60036) b!123663))

(assert (= (and b!123664 c!22443) b!123667))

(assert (= (and b!123664 (not c!22443)) b!123668))

(declare-fun b_lambda!5459 () Bool)

(assert (=> (not b_lambda!5459) (not b!123663)))

(assert (=> b!123663 t!6023))

(declare-fun b_and!7613 () Bool)

(assert (= b_and!7609 (and (=> t!6023 result!3779) b_and!7613)))

(assert (=> b!123663 t!6025))

(declare-fun b_and!7615 () Bool)

(assert (= b_and!7611 (and (=> t!6025 result!3783) b_and!7615)))

(declare-fun b_lambda!5461 () Bool)

(assert (=> (not b_lambda!5461) (not b!123666)))

(assert (=> b!123666 t!6023))

(declare-fun b_and!7617 () Bool)

(assert (= b_and!7613 (and (=> t!6023 result!3779) b_and!7617)))

(assert (=> b!123666 t!6025))

(declare-fun b_and!7619 () Bool)

(assert (= b_and!7615 (and (=> t!6025 result!3783) b_and!7619)))

(declare-fun m!143775 () Bool)

(assert (=> b!123667 m!143775))

(declare-fun m!143777 () Bool)

(assert (=> d!37061 m!143777))

(assert (=> d!37061 m!143473))

(declare-fun m!143779 () Bool)

(assert (=> b!123660 m!143779))

(assert (=> b!123660 m!143779))

(declare-fun m!143781 () Bool)

(assert (=> b!123660 m!143781))

(assert (=> b!123659 m!143779))

(assert (=> b!123659 m!143779))

(declare-fun m!143783 () Bool)

(assert (=> b!123659 m!143783))

(declare-fun m!143785 () Bool)

(assert (=> b!123662 m!143785))

(assert (=> bm!13143 m!143775))

(assert (=> b!123657 m!143779))

(assert (=> b!123657 m!143779))

(assert (=> b!123657 m!143783))

(declare-fun m!143787 () Bool)

(assert (=> b!123668 m!143787))

(declare-fun m!143789 () Bool)

(assert (=> b!123666 m!143789))

(assert (=> b!123666 m!143467))

(declare-fun m!143791 () Bool)

(assert (=> b!123666 m!143791))

(assert (=> b!123666 m!143789))

(declare-fun m!143793 () Bool)

(assert (=> b!123666 m!143793))

(declare-fun m!143795 () Bool)

(assert (=> b!123666 m!143795))

(declare-fun m!143797 () Bool)

(assert (=> b!123666 m!143797))

(assert (=> b!123666 m!143467))

(declare-fun m!143799 () Bool)

(assert (=> b!123666 m!143799))

(assert (=> b!123666 m!143779))

(assert (=> b!123666 m!143793))

(assert (=> b!123663 m!143789))

(assert (=> b!123663 m!143467))

(assert (=> b!123663 m!143791))

(assert (=> b!123663 m!143779))

(declare-fun m!143801 () Bool)

(assert (=> b!123663 m!143801))

(assert (=> b!123663 m!143789))

(assert (=> b!123663 m!143467))

(assert (=> b!123663 m!143779))

(assert (=> bm!13126 d!37061))

(declare-fun d!37063 () Bool)

(assert (=> d!37063 (= (get!1434 (getValueByKey!163 (toList!851 lt!63509) lt!63512)) (v!3092 (getValueByKey!163 (toList!851 lt!63509) lt!63512)))))

(assert (=> d!37019 d!37063))

(declare-fun d!37065 () Bool)

(declare-fun c!22450 () Bool)

(assert (=> d!37065 (= c!22450 (and ((_ is Cons!1705) (toList!851 lt!63509)) (= (_1!1283 (h!2306 (toList!851 lt!63509))) lt!63512)))))

(declare-fun e!80840 () Option!169)

(assert (=> d!37065 (= (getValueByKey!163 (toList!851 lt!63509) lt!63512) e!80840)))

(declare-fun b!123678 () Bool)

(declare-fun e!80841 () Option!169)

(assert (=> b!123678 (= e!80840 e!80841)))

(declare-fun c!22451 () Bool)

(assert (=> b!123678 (= c!22451 (and ((_ is Cons!1705) (toList!851 lt!63509)) (not (= (_1!1283 (h!2306 (toList!851 lt!63509))) lt!63512))))))

(declare-fun b!123677 () Bool)

(assert (=> b!123677 (= e!80840 (Some!168 (_2!1283 (h!2306 (toList!851 lt!63509)))))))

(declare-fun b!123679 () Bool)

(assert (=> b!123679 (= e!80841 (getValueByKey!163 (t!6020 (toList!851 lt!63509)) lt!63512))))

(declare-fun b!123680 () Bool)

(assert (=> b!123680 (= e!80841 None!167)))

(assert (= (and d!37065 c!22450) b!123677))

(assert (= (and d!37065 (not c!22450)) b!123678))

(assert (= (and b!123678 c!22451) b!123679))

(assert (= (and b!123678 (not c!22451)) b!123680))

(declare-fun m!143803 () Bool)

(assert (=> b!123679 m!143803))

(assert (=> d!37019 d!37065))

(declare-fun d!37067 () Bool)

(declare-fun isEmpty!396 (Option!169) Bool)

(assert (=> d!37067 (= (isDefined!117 (getValueByKey!163 (toList!851 lt!63525) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (isEmpty!396 (getValueByKey!163 (toList!851 lt!63525) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun bs!5121 () Bool)

(assert (= bs!5121 d!37067))

(assert (=> bs!5121 m!143621))

(declare-fun m!143805 () Bool)

(assert (=> bs!5121 m!143805))

(assert (=> b!123577 d!37067))

(declare-fun d!37069 () Bool)

(declare-fun c!22452 () Bool)

(assert (=> d!37069 (= c!22452 (and ((_ is Cons!1705) (toList!851 lt!63525)) (= (_1!1283 (h!2306 (toList!851 lt!63525))) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun e!80842 () Option!169)

(assert (=> d!37069 (= (getValueByKey!163 (toList!851 lt!63525) #b0000000000000000000000000000000000000000000000000000000000000000) e!80842)))

(declare-fun b!123682 () Bool)

(declare-fun e!80843 () Option!169)

(assert (=> b!123682 (= e!80842 e!80843)))

(declare-fun c!22453 () Bool)

(assert (=> b!123682 (= c!22453 (and ((_ is Cons!1705) (toList!851 lt!63525)) (not (= (_1!1283 (h!2306 (toList!851 lt!63525))) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!123681 () Bool)

(assert (=> b!123681 (= e!80842 (Some!168 (_2!1283 (h!2306 (toList!851 lt!63525)))))))

(declare-fun b!123683 () Bool)

(assert (=> b!123683 (= e!80843 (getValueByKey!163 (t!6020 (toList!851 lt!63525)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!123684 () Bool)

(assert (=> b!123684 (= e!80843 None!167)))

(assert (= (and d!37069 c!22452) b!123681))

(assert (= (and d!37069 (not c!22452)) b!123682))

(assert (= (and b!123682 c!22453) b!123683))

(assert (= (and b!123682 (not c!22453)) b!123684))

(declare-fun m!143807 () Bool)

(assert (=> b!123683 m!143807))

(assert (=> b!123577 d!37069))

(declare-fun b!123685 () Bool)

(declare-fun e!80846 () Bool)

(declare-fun call!13147 () Bool)

(assert (=> b!123685 (= e!80846 call!13147)))

(declare-fun d!37071 () Bool)

(declare-fun res!60039 () Bool)

(declare-fun e!80844 () Bool)

(assert (=> d!37071 (=> res!60039 e!80844)))

(assert (=> d!37071 (= res!60039 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!2468 (_keys!4482 newMap!16))))))

(assert (=> d!37071 (= (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (_keys!4482 newMap!16) (mask!6993 newMap!16)) e!80844)))

(declare-fun bm!13144 () Bool)

(assert (=> bm!13144 (= call!13147 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (_keys!4482 newMap!16) (mask!6993 newMap!16)))))

(declare-fun b!123686 () Bool)

(assert (=> b!123686 (= e!80844 e!80846)))

(declare-fun c!22454 () Bool)

(assert (=> b!123686 (= c!22454 (validKeyInArray!0 (select (arr!2206 (_keys!4482 newMap!16)) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun b!123687 () Bool)

(declare-fun e!80845 () Bool)

(assert (=> b!123687 (= e!80845 call!13147)))

(declare-fun b!123688 () Bool)

(assert (=> b!123688 (= e!80846 e!80845)))

(declare-fun lt!63659 () (_ BitVec 64))

(assert (=> b!123688 (= lt!63659 (select (arr!2206 (_keys!4482 newMap!16)) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(declare-fun lt!63661 () Unit!3846)

(assert (=> b!123688 (= lt!63661 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!4482 newMap!16) lt!63659 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (=> b!123688 (arrayContainsKey!0 (_keys!4482 newMap!16) lt!63659 #b00000000000000000000000000000000)))

(declare-fun lt!63660 () Unit!3846)

(assert (=> b!123688 (= lt!63660 lt!63661)))

(declare-fun res!60038 () Bool)

(assert (=> b!123688 (= res!60038 (= (seekEntryOrOpen!0 (select (arr!2206 (_keys!4482 newMap!16)) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) (_keys!4482 newMap!16) (mask!6993 newMap!16)) (Found!277 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(assert (=> b!123688 (=> (not res!60038) (not e!80845))))

(assert (= (and d!37071 (not res!60039)) b!123686))

(assert (= (and b!123686 c!22454) b!123688))

(assert (= (and b!123686 (not c!22454)) b!123685))

(assert (= (and b!123688 res!60038) b!123687))

(assert (= (or b!123687 b!123685) bm!13144))

(declare-fun m!143809 () Bool)

(assert (=> bm!13144 m!143809))

(declare-fun m!143811 () Bool)

(assert (=> b!123686 m!143811))

(assert (=> b!123686 m!143811))

(declare-fun m!143813 () Bool)

(assert (=> b!123686 m!143813))

(assert (=> b!123688 m!143811))

(declare-fun m!143815 () Bool)

(assert (=> b!123688 m!143815))

(declare-fun m!143817 () Bool)

(assert (=> b!123688 m!143817))

(assert (=> b!123688 m!143811))

(declare-fun m!143819 () Bool)

(assert (=> b!123688 m!143819))

(assert (=> bm!13142 d!37071))

(declare-fun d!37073 () Bool)

(declare-fun e!80848 () Bool)

(assert (=> d!37073 e!80848))

(declare-fun res!60040 () Bool)

(assert (=> d!37073 (=> res!60040 e!80848)))

(declare-fun lt!63663 () Bool)

(assert (=> d!37073 (= res!60040 (not lt!63663))))

(declare-fun lt!63662 () Bool)

(assert (=> d!37073 (= lt!63663 lt!63662)))

(declare-fun lt!63665 () Unit!3846)

(declare-fun e!80847 () Unit!3846)

(assert (=> d!37073 (= lt!63665 e!80847)))

(declare-fun c!22455 () Bool)

(assert (=> d!37073 (= c!22455 lt!63662)))

(assert (=> d!37073 (= lt!63662 (containsKey!167 (toList!851 lt!63580) (select (arr!2206 (_keys!4482 newMap!16)) #b00000000000000000000000000000000)))))

(assert (=> d!37073 (= (contains!868 lt!63580 (select (arr!2206 (_keys!4482 newMap!16)) #b00000000000000000000000000000000)) lt!63663)))

(declare-fun b!123689 () Bool)

(declare-fun lt!63664 () Unit!3846)

(assert (=> b!123689 (= e!80847 lt!63664)))

(assert (=> b!123689 (= lt!63664 (lemmaContainsKeyImpliesGetValueByKeyDefined!116 (toList!851 lt!63580) (select (arr!2206 (_keys!4482 newMap!16)) #b00000000000000000000000000000000)))))

(assert (=> b!123689 (isDefined!117 (getValueByKey!163 (toList!851 lt!63580) (select (arr!2206 (_keys!4482 newMap!16)) #b00000000000000000000000000000000)))))

(declare-fun b!123690 () Bool)

(declare-fun Unit!3854 () Unit!3846)

(assert (=> b!123690 (= e!80847 Unit!3854)))

(declare-fun b!123691 () Bool)

(assert (=> b!123691 (= e!80848 (isDefined!117 (getValueByKey!163 (toList!851 lt!63580) (select (arr!2206 (_keys!4482 newMap!16)) #b00000000000000000000000000000000))))))

(assert (= (and d!37073 c!22455) b!123689))

(assert (= (and d!37073 (not c!22455)) b!123690))

(assert (= (and d!37073 (not res!60040)) b!123691))

(assert (=> d!37073 m!143539))

(declare-fun m!143821 () Bool)

(assert (=> d!37073 m!143821))

(assert (=> b!123689 m!143539))

(declare-fun m!143823 () Bool)

(assert (=> b!123689 m!143823))

(assert (=> b!123689 m!143539))

(declare-fun m!143825 () Bool)

(assert (=> b!123689 m!143825))

(assert (=> b!123689 m!143825))

(declare-fun m!143827 () Bool)

(assert (=> b!123689 m!143827))

(assert (=> b!123691 m!143539))

(assert (=> b!123691 m!143825))

(assert (=> b!123691 m!143825))

(assert (=> b!123691 m!143827))

(assert (=> b!123562 d!37073))

(assert (=> b!123535 d!37061))

(declare-fun d!37075 () Bool)

(declare-fun c!22456 () Bool)

(assert (=> d!37075 (= c!22456 (and ((_ is Cons!1705) (toList!851 lt!63561)) (= (_1!1283 (h!2306 (toList!851 lt!63561))) (_1!1283 (ite (or c!22399 c!22402) (tuple2!2547 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2620 (v!3089 (underlying!429 thiss!992)))) (tuple2!2547 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2620 (v!3089 (underlying!429 thiss!992)))))))))))

(declare-fun e!80849 () Option!169)

(assert (=> d!37075 (= (getValueByKey!163 (toList!851 lt!63561) (_1!1283 (ite (or c!22399 c!22402) (tuple2!2547 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2620 (v!3089 (underlying!429 thiss!992)))) (tuple2!2547 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2620 (v!3089 (underlying!429 thiss!992))))))) e!80849)))

(declare-fun b!123693 () Bool)

(declare-fun e!80850 () Option!169)

(assert (=> b!123693 (= e!80849 e!80850)))

(declare-fun c!22457 () Bool)

(assert (=> b!123693 (= c!22457 (and ((_ is Cons!1705) (toList!851 lt!63561)) (not (= (_1!1283 (h!2306 (toList!851 lt!63561))) (_1!1283 (ite (or c!22399 c!22402) (tuple2!2547 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2620 (v!3089 (underlying!429 thiss!992)))) (tuple2!2547 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2620 (v!3089 (underlying!429 thiss!992))))))))))))

(declare-fun b!123692 () Bool)

(assert (=> b!123692 (= e!80849 (Some!168 (_2!1283 (h!2306 (toList!851 lt!63561)))))))

(declare-fun b!123694 () Bool)

(assert (=> b!123694 (= e!80850 (getValueByKey!163 (t!6020 (toList!851 lt!63561)) (_1!1283 (ite (or c!22399 c!22402) (tuple2!2547 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2620 (v!3089 (underlying!429 thiss!992)))) (tuple2!2547 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2620 (v!3089 (underlying!429 thiss!992))))))))))

(declare-fun b!123695 () Bool)

(assert (=> b!123695 (= e!80850 None!167)))

(assert (= (and d!37075 c!22456) b!123692))

(assert (= (and d!37075 (not c!22456)) b!123693))

(assert (= (and b!123693 c!22457) b!123694))

(assert (= (and b!123693 (not c!22457)) b!123695))

(declare-fun m!143829 () Bool)

(assert (=> b!123694 m!143829))

(assert (=> b!123541 d!37075))

(declare-fun d!37077 () Bool)

(declare-fun lt!63668 () Bool)

(declare-fun content!121 (List!1711) (InoxSet (_ BitVec 64)))

(assert (=> d!37077 (= lt!63668 (select (content!121 Nil!1708) (select (arr!2206 (_keys!4482 newMap!16)) #b00000000000000000000000000000000)))))

(declare-fun e!80856 () Bool)

(assert (=> d!37077 (= lt!63668 e!80856)))

(declare-fun res!60045 () Bool)

(assert (=> d!37077 (=> (not res!60045) (not e!80856))))

(assert (=> d!37077 (= res!60045 ((_ is Cons!1707) Nil!1708))))

(assert (=> d!37077 (= (contains!870 Nil!1708 (select (arr!2206 (_keys!4482 newMap!16)) #b00000000000000000000000000000000)) lt!63668)))

(declare-fun b!123700 () Bool)

(declare-fun e!80855 () Bool)

(assert (=> b!123700 (= e!80856 e!80855)))

(declare-fun res!60046 () Bool)

(assert (=> b!123700 (=> res!60046 e!80855)))

(assert (=> b!123700 (= res!60046 (= (h!2308 Nil!1708) (select (arr!2206 (_keys!4482 newMap!16)) #b00000000000000000000000000000000)))))

(declare-fun b!123701 () Bool)

(assert (=> b!123701 (= e!80855 (contains!870 (t!6026 Nil!1708) (select (arr!2206 (_keys!4482 newMap!16)) #b00000000000000000000000000000000)))))

(assert (= (and d!37077 res!60045) b!123700))

(assert (= (and b!123700 (not res!60046)) b!123701))

(declare-fun m!143831 () Bool)

(assert (=> d!37077 m!143831))

(assert (=> d!37077 m!143539))

(declare-fun m!143833 () Bool)

(assert (=> d!37077 m!143833))

(assert (=> b!123701 m!143539))

(declare-fun m!143835 () Bool)

(assert (=> b!123701 m!143835))

(assert (=> b!123631 d!37077))

(declare-fun d!37079 () Bool)

(assert (=> d!37079 (= (size!2472 newMap!16) (bvadd (_size!571 newMap!16) (bvsdiv (bvadd (extraKeys!2540 newMap!16) #b00000000000000000000000000000001) #b00000000000000000000000000000010)))))

(assert (=> b!123498 d!37079))

(declare-fun d!37081 () Bool)

(assert (=> d!37081 (= (get!1434 (getValueByKey!163 (toList!851 lt!63525) #b1000000000000000000000000000000000000000000000000000000000000000)) (v!3092 (getValueByKey!163 (toList!851 lt!63525) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!37009 d!37081))

(declare-fun d!37083 () Bool)

(declare-fun c!22458 () Bool)

(assert (=> d!37083 (= c!22458 (and ((_ is Cons!1705) (toList!851 lt!63525)) (= (_1!1283 (h!2306 (toList!851 lt!63525))) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun e!80857 () Option!169)

(assert (=> d!37083 (= (getValueByKey!163 (toList!851 lt!63525) #b1000000000000000000000000000000000000000000000000000000000000000) e!80857)))

(declare-fun b!123703 () Bool)

(declare-fun e!80858 () Option!169)

(assert (=> b!123703 (= e!80857 e!80858)))

(declare-fun c!22459 () Bool)

(assert (=> b!123703 (= c!22459 (and ((_ is Cons!1705) (toList!851 lt!63525)) (not (= (_1!1283 (h!2306 (toList!851 lt!63525))) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!123702 () Bool)

(assert (=> b!123702 (= e!80857 (Some!168 (_2!1283 (h!2306 (toList!851 lt!63525)))))))

(declare-fun b!123704 () Bool)

(assert (=> b!123704 (= e!80858 (getValueByKey!163 (t!6020 (toList!851 lt!63525)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!123705 () Bool)

(assert (=> b!123705 (= e!80858 None!167)))

(assert (= (and d!37083 c!22458) b!123702))

(assert (= (and d!37083 (not c!22458)) b!123703))

(assert (= (and b!123703 c!22459) b!123704))

(assert (= (and b!123703 (not c!22459)) b!123705))

(declare-fun m!143837 () Bool)

(assert (=> b!123704 m!143837))

(assert (=> d!37009 d!37083))

(declare-fun c!22460 () Bool)

(declare-fun d!37085 () Bool)

(assert (=> d!37085 (= c!22460 (and ((_ is Cons!1705) (toList!851 lt!63611)) (= (_1!1283 (h!2306 (toList!851 lt!63611))) (_1!1283 (tuple2!2547 lt!63513 (zeroValue!2620 (v!3089 (underlying!429 thiss!992))))))))))

(declare-fun e!80859 () Option!169)

(assert (=> d!37085 (= (getValueByKey!163 (toList!851 lt!63611) (_1!1283 (tuple2!2547 lt!63513 (zeroValue!2620 (v!3089 (underlying!429 thiss!992)))))) e!80859)))

(declare-fun b!123707 () Bool)

(declare-fun e!80860 () Option!169)

(assert (=> b!123707 (= e!80859 e!80860)))

(declare-fun c!22461 () Bool)

(assert (=> b!123707 (= c!22461 (and ((_ is Cons!1705) (toList!851 lt!63611)) (not (= (_1!1283 (h!2306 (toList!851 lt!63611))) (_1!1283 (tuple2!2547 lt!63513 (zeroValue!2620 (v!3089 (underlying!429 thiss!992)))))))))))

(declare-fun b!123706 () Bool)

(assert (=> b!123706 (= e!80859 (Some!168 (_2!1283 (h!2306 (toList!851 lt!63611)))))))

(declare-fun b!123708 () Bool)

(assert (=> b!123708 (= e!80860 (getValueByKey!163 (t!6020 (toList!851 lt!63611)) (_1!1283 (tuple2!2547 lt!63513 (zeroValue!2620 (v!3089 (underlying!429 thiss!992)))))))))

(declare-fun b!123709 () Bool)

(assert (=> b!123709 (= e!80860 None!167)))

(assert (= (and d!37085 c!22460) b!123706))

(assert (= (and d!37085 (not c!22460)) b!123707))

(assert (= (and b!123707 c!22461) b!123708))

(assert (= (and b!123707 (not c!22461)) b!123709))

(declare-fun m!143839 () Bool)

(assert (=> b!123708 m!143839))

(assert (=> b!123590 d!37085))

(declare-fun d!37087 () Bool)

(assert (=> d!37087 (= (get!1435 (select (arr!2207 (_values!2738 (v!3089 (underlying!429 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (dynLambda!411 (defaultEntry!2755 (v!3089 (underlying!429 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (v!3088 (select (arr!2207 (_values!2738 (v!3089 (underlying!429 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))))))

(assert (=> b!123588 d!37087))

(declare-fun d!37089 () Bool)

(declare-fun e!80861 () Bool)

(assert (=> d!37089 e!80861))

(declare-fun res!60048 () Bool)

(assert (=> d!37089 (=> (not res!60048) (not e!80861))))

(declare-fun lt!63671 () ListLongMap!1671)

(assert (=> d!37089 (= res!60048 (contains!868 lt!63671 (_1!1283 (tuple2!2547 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2620 newMap!16)))))))

(declare-fun lt!63669 () List!1709)

(assert (=> d!37089 (= lt!63671 (ListLongMap!1672 lt!63669))))

(declare-fun lt!63672 () Unit!3846)

(declare-fun lt!63670 () Unit!3846)

(assert (=> d!37089 (= lt!63672 lt!63670)))

(assert (=> d!37089 (= (getValueByKey!163 lt!63669 (_1!1283 (tuple2!2547 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2620 newMap!16)))) (Some!168 (_2!1283 (tuple2!2547 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2620 newMap!16)))))))

(assert (=> d!37089 (= lt!63670 (lemmaContainsTupThenGetReturnValue!81 lt!63669 (_1!1283 (tuple2!2547 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2620 newMap!16))) (_2!1283 (tuple2!2547 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2620 newMap!16)))))))

(assert (=> d!37089 (= lt!63669 (insertStrictlySorted!83 (toList!851 call!13130) (_1!1283 (tuple2!2547 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2620 newMap!16))) (_2!1283 (tuple2!2547 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2620 newMap!16)))))))

(assert (=> d!37089 (= (+!162 call!13130 (tuple2!2547 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2620 newMap!16))) lt!63671)))

(declare-fun b!123710 () Bool)

(declare-fun res!60047 () Bool)

(assert (=> b!123710 (=> (not res!60047) (not e!80861))))

(assert (=> b!123710 (= res!60047 (= (getValueByKey!163 (toList!851 lt!63671) (_1!1283 (tuple2!2547 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2620 newMap!16)))) (Some!168 (_2!1283 (tuple2!2547 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2620 newMap!16))))))))

(declare-fun b!123711 () Bool)

(assert (=> b!123711 (= e!80861 (contains!869 (toList!851 lt!63671) (tuple2!2547 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2620 newMap!16))))))

(assert (= (and d!37089 res!60048) b!123710))

(assert (= (and b!123710 res!60047) b!123711))

(declare-fun m!143841 () Bool)

(assert (=> d!37089 m!143841))

(declare-fun m!143843 () Bool)

(assert (=> d!37089 m!143843))

(declare-fun m!143845 () Bool)

(assert (=> d!37089 m!143845))

(declare-fun m!143847 () Bool)

(assert (=> d!37089 m!143847))

(declare-fun m!143849 () Bool)

(assert (=> b!123710 m!143849))

(declare-fun m!143851 () Bool)

(assert (=> b!123711 m!143851))

(assert (=> b!123554 d!37089))

(declare-fun d!37091 () Bool)

(assert (=> d!37091 (isDefined!117 (getValueByKey!163 (toList!851 (+!162 lt!63528 (tuple2!2547 lt!63513 (zeroValue!2620 (v!3089 (underlying!429 thiss!992)))))) lt!63526))))

(declare-fun lt!63675 () Unit!3846)

(declare-fun choose!752 (List!1709 (_ BitVec 64)) Unit!3846)

(assert (=> d!37091 (= lt!63675 (choose!752 (toList!851 (+!162 lt!63528 (tuple2!2547 lt!63513 (zeroValue!2620 (v!3089 (underlying!429 thiss!992)))))) lt!63526))))

(declare-fun e!80864 () Bool)

(assert (=> d!37091 e!80864))

(declare-fun res!60051 () Bool)

(assert (=> d!37091 (=> (not res!60051) (not e!80864))))

(declare-fun isStrictlySorted!310 (List!1709) Bool)

(assert (=> d!37091 (= res!60051 (isStrictlySorted!310 (toList!851 (+!162 lt!63528 (tuple2!2547 lt!63513 (zeroValue!2620 (v!3089 (underlying!429 thiss!992))))))))))

(assert (=> d!37091 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!116 (toList!851 (+!162 lt!63528 (tuple2!2547 lt!63513 (zeroValue!2620 (v!3089 (underlying!429 thiss!992)))))) lt!63526) lt!63675)))

(declare-fun b!123714 () Bool)

(assert (=> b!123714 (= e!80864 (containsKey!167 (toList!851 (+!162 lt!63528 (tuple2!2547 lt!63513 (zeroValue!2620 (v!3089 (underlying!429 thiss!992)))))) lt!63526))))

(assert (= (and d!37091 res!60051) b!123714))

(assert (=> d!37091 m!143693))

(assert (=> d!37091 m!143693))

(assert (=> d!37091 m!143695))

(declare-fun m!143853 () Bool)

(assert (=> d!37091 m!143853))

(declare-fun m!143855 () Bool)

(assert (=> d!37091 m!143855))

(assert (=> b!123714 m!143689))

(assert (=> b!123598 d!37091))

(declare-fun d!37093 () Bool)

(assert (=> d!37093 (= (isDefined!117 (getValueByKey!163 (toList!851 (+!162 lt!63528 (tuple2!2547 lt!63513 (zeroValue!2620 (v!3089 (underlying!429 thiss!992)))))) lt!63526)) (not (isEmpty!396 (getValueByKey!163 (toList!851 (+!162 lt!63528 (tuple2!2547 lt!63513 (zeroValue!2620 (v!3089 (underlying!429 thiss!992)))))) lt!63526))))))

(declare-fun bs!5122 () Bool)

(assert (= bs!5122 d!37093))

(assert (=> bs!5122 m!143693))

(declare-fun m!143857 () Bool)

(assert (=> bs!5122 m!143857))

(assert (=> b!123598 d!37093))

(declare-fun d!37095 () Bool)

(declare-fun c!22462 () Bool)

(assert (=> d!37095 (= c!22462 (and ((_ is Cons!1705) (toList!851 (+!162 lt!63528 (tuple2!2547 lt!63513 (zeroValue!2620 (v!3089 (underlying!429 thiss!992))))))) (= (_1!1283 (h!2306 (toList!851 (+!162 lt!63528 (tuple2!2547 lt!63513 (zeroValue!2620 (v!3089 (underlying!429 thiss!992)))))))) lt!63526)))))

(declare-fun e!80865 () Option!169)

(assert (=> d!37095 (= (getValueByKey!163 (toList!851 (+!162 lt!63528 (tuple2!2547 lt!63513 (zeroValue!2620 (v!3089 (underlying!429 thiss!992)))))) lt!63526) e!80865)))

(declare-fun b!123716 () Bool)

(declare-fun e!80866 () Option!169)

(assert (=> b!123716 (= e!80865 e!80866)))

(declare-fun c!22463 () Bool)

(assert (=> b!123716 (= c!22463 (and ((_ is Cons!1705) (toList!851 (+!162 lt!63528 (tuple2!2547 lt!63513 (zeroValue!2620 (v!3089 (underlying!429 thiss!992))))))) (not (= (_1!1283 (h!2306 (toList!851 (+!162 lt!63528 (tuple2!2547 lt!63513 (zeroValue!2620 (v!3089 (underlying!429 thiss!992)))))))) lt!63526))))))

(declare-fun b!123715 () Bool)

(assert (=> b!123715 (= e!80865 (Some!168 (_2!1283 (h!2306 (toList!851 (+!162 lt!63528 (tuple2!2547 lt!63513 (zeroValue!2620 (v!3089 (underlying!429 thiss!992))))))))))))

(declare-fun b!123717 () Bool)

(assert (=> b!123717 (= e!80866 (getValueByKey!163 (t!6020 (toList!851 (+!162 lt!63528 (tuple2!2547 lt!63513 (zeroValue!2620 (v!3089 (underlying!429 thiss!992))))))) lt!63526))))

(declare-fun b!123718 () Bool)

(assert (=> b!123718 (= e!80866 None!167)))

(assert (= (and d!37095 c!22462) b!123715))

(assert (= (and d!37095 (not c!22462)) b!123716))

(assert (= (and b!123716 c!22463) b!123717))

(assert (= (and b!123716 (not c!22463)) b!123718))

(declare-fun m!143859 () Bool)

(assert (=> b!123717 m!143859))

(assert (=> b!123598 d!37095))

(declare-fun d!37097 () Bool)

(assert (=> d!37097 (= (apply!108 (+!162 lt!63523 (tuple2!2547 lt!63529 (zeroValue!2620 (v!3089 (underlying!429 thiss!992))))) lt!63514) (apply!108 lt!63523 lt!63514))))

(assert (=> d!37097 true))

(declare-fun _$34!934 () Unit!3846)

(assert (=> d!37097 (= (choose!750 lt!63523 lt!63529 (zeroValue!2620 (v!3089 (underlying!429 thiss!992))) lt!63514) _$34!934)))

(declare-fun bs!5123 () Bool)

(assert (= bs!5123 d!37097))

(assert (=> bs!5123 m!143447))

(assert (=> bs!5123 m!143447))

(assert (=> bs!5123 m!143457))

(assert (=> bs!5123 m!143459))

(assert (=> d!37039 d!37097))

(assert (=> d!37039 d!37025))

(assert (=> d!37039 d!37043))

(declare-fun d!37099 () Bool)

(declare-fun e!80868 () Bool)

(assert (=> d!37099 e!80868))

(declare-fun res!60052 () Bool)

(assert (=> d!37099 (=> res!60052 e!80868)))

(declare-fun lt!63677 () Bool)

(assert (=> d!37099 (= res!60052 (not lt!63677))))

(declare-fun lt!63676 () Bool)

(assert (=> d!37099 (= lt!63677 lt!63676)))

(declare-fun lt!63679 () Unit!3846)

(declare-fun e!80867 () Unit!3846)

(assert (=> d!37099 (= lt!63679 e!80867)))

(declare-fun c!22464 () Bool)

(assert (=> d!37099 (= c!22464 lt!63676)))

(assert (=> d!37099 (= lt!63676 (containsKey!167 (toList!851 lt!63523) lt!63514))))

(assert (=> d!37099 (= (contains!868 lt!63523 lt!63514) lt!63677)))

(declare-fun b!123720 () Bool)

(declare-fun lt!63678 () Unit!3846)

(assert (=> b!123720 (= e!80867 lt!63678)))

(assert (=> b!123720 (= lt!63678 (lemmaContainsKeyImpliesGetValueByKeyDefined!116 (toList!851 lt!63523) lt!63514))))

(assert (=> b!123720 (isDefined!117 (getValueByKey!163 (toList!851 lt!63523) lt!63514))))

(declare-fun b!123721 () Bool)

(declare-fun Unit!3855 () Unit!3846)

(assert (=> b!123721 (= e!80867 Unit!3855)))

(declare-fun b!123722 () Bool)

(assert (=> b!123722 (= e!80868 (isDefined!117 (getValueByKey!163 (toList!851 lt!63523) lt!63514)))))

(assert (= (and d!37099 c!22464) b!123720))

(assert (= (and d!37099 (not c!22464)) b!123721))

(assert (= (and d!37099 (not res!60052)) b!123722))

(declare-fun m!143861 () Bool)

(assert (=> d!37099 m!143861))

(declare-fun m!143863 () Bool)

(assert (=> b!123720 m!143863))

(assert (=> b!123720 m!143673))

(assert (=> b!123720 m!143673))

(declare-fun m!143865 () Bool)

(assert (=> b!123720 m!143865))

(assert (=> b!123722 m!143673))

(assert (=> b!123722 m!143673))

(assert (=> b!123722 m!143865))

(assert (=> d!37039 d!37099))

(assert (=> d!37039 d!37027))

(declare-fun d!37101 () Bool)

(declare-fun lt!63680 () Bool)

(assert (=> d!37101 (= lt!63680 (select (content!120 (toList!851 lt!63629)) (tuple2!2547 lt!63521 (minValue!2620 (v!3089 (underlying!429 thiss!992))))))))

(declare-fun e!80869 () Bool)

(assert (=> d!37101 (= lt!63680 e!80869)))

(declare-fun res!60053 () Bool)

(assert (=> d!37101 (=> (not res!60053) (not e!80869))))

(assert (=> d!37101 (= res!60053 ((_ is Cons!1705) (toList!851 lt!63629)))))

(assert (=> d!37101 (= (contains!869 (toList!851 lt!63629) (tuple2!2547 lt!63521 (minValue!2620 (v!3089 (underlying!429 thiss!992))))) lt!63680)))

(declare-fun b!123723 () Bool)

(declare-fun e!80870 () Bool)

(assert (=> b!123723 (= e!80869 e!80870)))

(declare-fun res!60054 () Bool)

(assert (=> b!123723 (=> res!60054 e!80870)))

(assert (=> b!123723 (= res!60054 (= (h!2306 (toList!851 lt!63629)) (tuple2!2547 lt!63521 (minValue!2620 (v!3089 (underlying!429 thiss!992))))))))

(declare-fun b!123724 () Bool)

(assert (=> b!123724 (= e!80870 (contains!869 (t!6020 (toList!851 lt!63629)) (tuple2!2547 lt!63521 (minValue!2620 (v!3089 (underlying!429 thiss!992))))))))

(assert (= (and d!37101 res!60053) b!123723))

(assert (= (and b!123723 (not res!60054)) b!123724))

(declare-fun m!143867 () Bool)

(assert (=> d!37101 m!143867))

(declare-fun m!143869 () Bool)

(assert (=> d!37101 m!143869))

(declare-fun m!143871 () Bool)

(assert (=> b!123724 m!143871))

(assert (=> b!123603 d!37101))

(declare-fun d!37103 () Bool)

(declare-fun res!60059 () Bool)

(declare-fun e!80875 () Bool)

(assert (=> d!37103 (=> res!60059 e!80875)))

(assert (=> d!37103 (= res!60059 (and ((_ is Cons!1705) (toList!851 lt!63525)) (= (_1!1283 (h!2306 (toList!851 lt!63525))) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!37103 (= (containsKey!167 (toList!851 lt!63525) #b0000000000000000000000000000000000000000000000000000000000000000) e!80875)))

(declare-fun b!123729 () Bool)

(declare-fun e!80876 () Bool)

(assert (=> b!123729 (= e!80875 e!80876)))

(declare-fun res!60060 () Bool)

(assert (=> b!123729 (=> (not res!60060) (not e!80876))))

(assert (=> b!123729 (= res!60060 (and (or (not ((_ is Cons!1705) (toList!851 lt!63525))) (bvsle (_1!1283 (h!2306 (toList!851 lt!63525))) #b0000000000000000000000000000000000000000000000000000000000000000)) ((_ is Cons!1705) (toList!851 lt!63525)) (bvslt (_1!1283 (h!2306 (toList!851 lt!63525))) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!123730 () Bool)

(assert (=> b!123730 (= e!80876 (containsKey!167 (t!6020 (toList!851 lt!63525)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!37103 (not res!60059)) b!123729))

(assert (= (and b!123729 res!60060) b!123730))

(declare-fun m!143873 () Bool)

(assert (=> b!123730 m!143873))

(assert (=> d!37005 d!37103))

(declare-fun d!37105 () Bool)

(assert (=> d!37105 (= (get!1434 (getValueByKey!163 (toList!851 (+!162 lt!63519 (tuple2!2547 lt!63521 (minValue!2620 (v!3089 (underlying!429 thiss!992)))))) lt!63527)) (v!3092 (getValueByKey!163 (toList!851 (+!162 lt!63519 (tuple2!2547 lt!63521 (minValue!2620 (v!3089 (underlying!429 thiss!992)))))) lt!63527)))))

(assert (=> d!37023 d!37105))

(declare-fun c!22465 () Bool)

(declare-fun d!37107 () Bool)

(assert (=> d!37107 (= c!22465 (and ((_ is Cons!1705) (toList!851 (+!162 lt!63519 (tuple2!2547 lt!63521 (minValue!2620 (v!3089 (underlying!429 thiss!992))))))) (= (_1!1283 (h!2306 (toList!851 (+!162 lt!63519 (tuple2!2547 lt!63521 (minValue!2620 (v!3089 (underlying!429 thiss!992)))))))) lt!63527)))))

(declare-fun e!80877 () Option!169)

(assert (=> d!37107 (= (getValueByKey!163 (toList!851 (+!162 lt!63519 (tuple2!2547 lt!63521 (minValue!2620 (v!3089 (underlying!429 thiss!992)))))) lt!63527) e!80877)))

(declare-fun b!123732 () Bool)

(declare-fun e!80878 () Option!169)

(assert (=> b!123732 (= e!80877 e!80878)))

(declare-fun c!22466 () Bool)

(assert (=> b!123732 (= c!22466 (and ((_ is Cons!1705) (toList!851 (+!162 lt!63519 (tuple2!2547 lt!63521 (minValue!2620 (v!3089 (underlying!429 thiss!992))))))) (not (= (_1!1283 (h!2306 (toList!851 (+!162 lt!63519 (tuple2!2547 lt!63521 (minValue!2620 (v!3089 (underlying!429 thiss!992)))))))) lt!63527))))))

(declare-fun b!123731 () Bool)

(assert (=> b!123731 (= e!80877 (Some!168 (_2!1283 (h!2306 (toList!851 (+!162 lt!63519 (tuple2!2547 lt!63521 (minValue!2620 (v!3089 (underlying!429 thiss!992))))))))))))

(declare-fun b!123733 () Bool)

(assert (=> b!123733 (= e!80878 (getValueByKey!163 (t!6020 (toList!851 (+!162 lt!63519 (tuple2!2547 lt!63521 (minValue!2620 (v!3089 (underlying!429 thiss!992))))))) lt!63527))))

(declare-fun b!123734 () Bool)

(assert (=> b!123734 (= e!80878 None!167)))

(assert (= (and d!37107 c!22465) b!123731))

(assert (= (and d!37107 (not c!22465)) b!123732))

(assert (= (and b!123732 c!22466) b!123733))

(assert (= (and b!123732 (not c!22466)) b!123734))

(declare-fun m!143875 () Bool)

(assert (=> b!123733 m!143875))

(assert (=> d!37023 d!37107))

(declare-fun b!123736 () Bool)

(declare-fun res!60062 () Bool)

(declare-fun e!80879 () Bool)

(assert (=> b!123736 (=> (not res!60062) (not e!80879))))

(assert (=> b!123736 (= res!60062 (bvsge (size!2472 (v!3089 (underlying!429 thiss!992))) (_size!571 (v!3089 (underlying!429 thiss!992)))))))

(declare-fun b!123735 () Bool)

(declare-fun res!60064 () Bool)

(assert (=> b!123735 (=> (not res!60064) (not e!80879))))

(assert (=> b!123735 (= res!60064 (and (= (size!2469 (_values!2738 (v!3089 (underlying!429 thiss!992)))) (bvadd (mask!6993 (v!3089 (underlying!429 thiss!992))) #b00000000000000000000000000000001)) (= (size!2468 (_keys!4482 (v!3089 (underlying!429 thiss!992)))) (size!2469 (_values!2738 (v!3089 (underlying!429 thiss!992))))) (bvsge (_size!571 (v!3089 (underlying!429 thiss!992))) #b00000000000000000000000000000000) (bvsle (_size!571 (v!3089 (underlying!429 thiss!992))) (bvadd (mask!6993 (v!3089 (underlying!429 thiss!992))) #b00000000000000000000000000000001))))))

(declare-fun d!37109 () Bool)

(declare-fun res!60061 () Bool)

(assert (=> d!37109 (=> (not res!60061) (not e!80879))))

(assert (=> d!37109 (= res!60061 (validMask!0 (mask!6993 (v!3089 (underlying!429 thiss!992)))))))

(assert (=> d!37109 (= (simpleValid!83 (v!3089 (underlying!429 thiss!992))) e!80879)))

(declare-fun b!123737 () Bool)

(declare-fun res!60063 () Bool)

(assert (=> b!123737 (=> (not res!60063) (not e!80879))))

(assert (=> b!123737 (= res!60063 (= (size!2472 (v!3089 (underlying!429 thiss!992))) (bvadd (_size!571 (v!3089 (underlying!429 thiss!992))) (bvsdiv (bvadd (extraKeys!2540 (v!3089 (underlying!429 thiss!992))) #b00000000000000000000000000000001) #b00000000000000000000000000000010))))))

(declare-fun b!123738 () Bool)

(assert (=> b!123738 (= e!80879 (and (bvsge (extraKeys!2540 (v!3089 (underlying!429 thiss!992))) #b00000000000000000000000000000000) (bvsle (extraKeys!2540 (v!3089 (underlying!429 thiss!992))) #b00000000000000000000000000000011) (bvsge (_vacant!571 (v!3089 (underlying!429 thiss!992))) #b00000000000000000000000000000000)))))

(assert (= (and d!37109 res!60061) b!123735))

(assert (= (and b!123735 res!60064) b!123736))

(assert (= (and b!123736 res!60062) b!123737))

(assert (= (and b!123737 res!60063) b!123738))

(declare-fun m!143877 () Bool)

(assert (=> b!123736 m!143877))

(assert (=> d!37109 m!143473))

(assert (=> b!123737 m!143877))

(assert (=> d!37007 d!37109))

(assert (=> d!37033 d!37029))

(assert (=> d!37033 d!37017))

(declare-fun d!37111 () Bool)

(assert (=> d!37111 (contains!868 (+!162 lt!63528 (tuple2!2547 lt!63513 (zeroValue!2620 (v!3089 (underlying!429 thiss!992))))) lt!63526)))

(assert (=> d!37111 true))

(declare-fun _$35!365 () Unit!3846)

(assert (=> d!37111 (= (choose!751 lt!63528 lt!63513 (zeroValue!2620 (v!3089 (underlying!429 thiss!992))) lt!63526) _$35!365)))

(declare-fun bs!5124 () Bool)

(assert (= bs!5124 d!37111))

(assert (=> bs!5124 m!143435))

(assert (=> bs!5124 m!143435))

(assert (=> bs!5124 m!143437))

(assert (=> d!37033 d!37111))

(declare-fun d!37113 () Bool)

(declare-fun e!80881 () Bool)

(assert (=> d!37113 e!80881))

(declare-fun res!60065 () Bool)

(assert (=> d!37113 (=> res!60065 e!80881)))

(declare-fun lt!63682 () Bool)

(assert (=> d!37113 (= res!60065 (not lt!63682))))

(declare-fun lt!63681 () Bool)

(assert (=> d!37113 (= lt!63682 lt!63681)))

(declare-fun lt!63684 () Unit!3846)

(declare-fun e!80880 () Unit!3846)

(assert (=> d!37113 (= lt!63684 e!80880)))

(declare-fun c!22467 () Bool)

(assert (=> d!37113 (= c!22467 lt!63681)))

(assert (=> d!37113 (= lt!63681 (containsKey!167 (toList!851 lt!63528) lt!63526))))

(assert (=> d!37113 (= (contains!868 lt!63528 lt!63526) lt!63682)))

(declare-fun b!123740 () Bool)

(declare-fun lt!63683 () Unit!3846)

(assert (=> b!123740 (= e!80880 lt!63683)))

(assert (=> b!123740 (= lt!63683 (lemmaContainsKeyImpliesGetValueByKeyDefined!116 (toList!851 lt!63528) lt!63526))))

(assert (=> b!123740 (isDefined!117 (getValueByKey!163 (toList!851 lt!63528) lt!63526))))

(declare-fun b!123741 () Bool)

(declare-fun Unit!3856 () Unit!3846)

(assert (=> b!123741 (= e!80880 Unit!3856)))

(declare-fun b!123742 () Bool)

(assert (=> b!123742 (= e!80881 (isDefined!117 (getValueByKey!163 (toList!851 lt!63528) lt!63526)))))

(assert (= (and d!37113 c!22467) b!123740))

(assert (= (and d!37113 (not c!22467)) b!123741))

(assert (= (and d!37113 (not res!60065)) b!123742))

(declare-fun m!143879 () Bool)

(assert (=> d!37113 m!143879))

(declare-fun m!143881 () Bool)

(assert (=> b!123740 m!143881))

(declare-fun m!143883 () Bool)

(assert (=> b!123740 m!143883))

(assert (=> b!123740 m!143883))

(declare-fun m!143885 () Bool)

(assert (=> b!123740 m!143885))

(assert (=> b!123742 m!143883))

(assert (=> b!123742 m!143883))

(assert (=> b!123742 m!143885))

(assert (=> d!37033 d!37113))

(declare-fun d!37115 () Bool)

(declare-fun e!80883 () Bool)

(assert (=> d!37115 e!80883))

(declare-fun res!60066 () Bool)

(assert (=> d!37115 (=> res!60066 e!80883)))

(declare-fun lt!63686 () Bool)

(assert (=> d!37115 (= res!60066 (not lt!63686))))

(declare-fun lt!63685 () Bool)

(assert (=> d!37115 (= lt!63686 lt!63685)))

(declare-fun lt!63688 () Unit!3846)

(declare-fun e!80882 () Unit!3846)

(assert (=> d!37115 (= lt!63688 e!80882)))

(declare-fun c!22468 () Bool)

(assert (=> d!37115 (= c!22468 lt!63685)))

(assert (=> d!37115 (= lt!63685 (containsKey!167 (toList!851 lt!63580) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!37115 (= (contains!868 lt!63580 #b0000000000000000000000000000000000000000000000000000000000000000) lt!63686)))

(declare-fun b!123743 () Bool)

(declare-fun lt!63687 () Unit!3846)

(assert (=> b!123743 (= e!80882 lt!63687)))

(assert (=> b!123743 (= lt!63687 (lemmaContainsKeyImpliesGetValueByKeyDefined!116 (toList!851 lt!63580) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!123743 (isDefined!117 (getValueByKey!163 (toList!851 lt!63580) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!123744 () Bool)

(declare-fun Unit!3857 () Unit!3846)

(assert (=> b!123744 (= e!80882 Unit!3857)))

(declare-fun b!123745 () Bool)

(assert (=> b!123745 (= e!80883 (isDefined!117 (getValueByKey!163 (toList!851 lt!63580) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!37115 c!22468) b!123743))

(assert (= (and d!37115 (not c!22468)) b!123744))

(assert (= (and d!37115 (not res!60066)) b!123745))

(declare-fun m!143887 () Bool)

(assert (=> d!37115 m!143887))

(declare-fun m!143889 () Bool)

(assert (=> b!123743 m!143889))

(declare-fun m!143891 () Bool)

(assert (=> b!123743 m!143891))

(assert (=> b!123743 m!143891))

(declare-fun m!143893 () Bool)

(assert (=> b!123743 m!143893))

(assert (=> b!123745 m!143891))

(assert (=> b!123745 m!143891))

(assert (=> b!123745 m!143893))

(assert (=> bm!13132 d!37115))

(declare-fun d!37117 () Bool)

(declare-fun e!80885 () Bool)

(assert (=> d!37117 e!80885))

(declare-fun res!60067 () Bool)

(assert (=> d!37117 (=> res!60067 e!80885)))

(declare-fun lt!63690 () Bool)

(assert (=> d!37117 (= res!60067 (not lt!63690))))

(declare-fun lt!63689 () Bool)

(assert (=> d!37117 (= lt!63690 lt!63689)))

(declare-fun lt!63692 () Unit!3846)

(declare-fun e!80884 () Unit!3846)

(assert (=> d!37117 (= lt!63692 e!80884)))

(declare-fun c!22469 () Bool)

(assert (=> d!37117 (= c!22469 lt!63689)))

(assert (=> d!37117 (= lt!63689 (containsKey!167 (toList!851 lt!63519) lt!63527))))

(assert (=> d!37117 (= (contains!868 lt!63519 lt!63527) lt!63690)))

(declare-fun b!123746 () Bool)

(declare-fun lt!63691 () Unit!3846)

(assert (=> b!123746 (= e!80884 lt!63691)))

(assert (=> b!123746 (= lt!63691 (lemmaContainsKeyImpliesGetValueByKeyDefined!116 (toList!851 lt!63519) lt!63527))))

(assert (=> b!123746 (isDefined!117 (getValueByKey!163 (toList!851 lt!63519) lt!63527))))

(declare-fun b!123747 () Bool)

(declare-fun Unit!3858 () Unit!3846)

(assert (=> b!123747 (= e!80884 Unit!3858)))

(declare-fun b!123748 () Bool)

(assert (=> b!123748 (= e!80885 (isDefined!117 (getValueByKey!163 (toList!851 lt!63519) lt!63527)))))

(assert (= (and d!37117 c!22469) b!123746))

(assert (= (and d!37117 (not c!22469)) b!123747))

(assert (= (and d!37117 (not res!60067)) b!123748))

(declare-fun m!143895 () Bool)

(assert (=> d!37117 m!143895))

(declare-fun m!143897 () Bool)

(assert (=> b!123746 m!143897))

(assert (=> b!123746 m!143717))

(assert (=> b!123746 m!143717))

(declare-fun m!143899 () Bool)

(assert (=> b!123746 m!143899))

(assert (=> b!123748 m!143717))

(assert (=> b!123748 m!143717))

(assert (=> b!123748 m!143899))

(assert (=> d!37045 d!37117))

(declare-fun d!37119 () Bool)

(assert (=> d!37119 (= (apply!108 (+!162 lt!63519 (tuple2!2547 lt!63521 (minValue!2620 (v!3089 (underlying!429 thiss!992))))) lt!63527) (apply!108 lt!63519 lt!63527))))

(assert (=> d!37119 true))

(declare-fun _$34!935 () Unit!3846)

(assert (=> d!37119 (= (choose!750 lt!63519 lt!63521 (minValue!2620 (v!3089 (underlying!429 thiss!992))) lt!63527) _$34!935)))

(declare-fun bs!5125 () Bool)

(assert (= bs!5125 d!37119))

(assert (=> bs!5125 m!143453))

(assert (=> bs!5125 m!143453))

(assert (=> bs!5125 m!143455))

(assert (=> bs!5125 m!143451))

(assert (=> d!37045 d!37119))

(assert (=> d!37045 d!37023))

(assert (=> d!37045 d!37035))

(assert (=> d!37045 d!37037))

(declare-fun lt!63693 () Bool)

(declare-fun d!37121 () Bool)

(assert (=> d!37121 (= lt!63693 (select (content!120 (toList!851 lt!63618)) (tuple2!2547 lt!63529 (zeroValue!2620 (v!3089 (underlying!429 thiss!992))))))))

(declare-fun e!80886 () Bool)

(assert (=> d!37121 (= lt!63693 e!80886)))

(declare-fun res!60068 () Bool)

(assert (=> d!37121 (=> (not res!60068) (not e!80886))))

(assert (=> d!37121 (= res!60068 ((_ is Cons!1705) (toList!851 lt!63618)))))

(assert (=> d!37121 (= (contains!869 (toList!851 lt!63618) (tuple2!2547 lt!63529 (zeroValue!2620 (v!3089 (underlying!429 thiss!992))))) lt!63693)))

(declare-fun b!123749 () Bool)

(declare-fun e!80887 () Bool)

(assert (=> b!123749 (= e!80886 e!80887)))

(declare-fun res!60069 () Bool)

(assert (=> b!123749 (=> res!60069 e!80887)))

(assert (=> b!123749 (= res!60069 (= (h!2306 (toList!851 lt!63618)) (tuple2!2547 lt!63529 (zeroValue!2620 (v!3089 (underlying!429 thiss!992))))))))

(declare-fun b!123750 () Bool)

(assert (=> b!123750 (= e!80887 (contains!869 (t!6020 (toList!851 lt!63618)) (tuple2!2547 lt!63529 (zeroValue!2620 (v!3089 (underlying!429 thiss!992))))))))

(assert (= (and d!37121 res!60068) b!123749))

(assert (= (and b!123749 (not res!60069)) b!123750))

(declare-fun m!143901 () Bool)

(assert (=> d!37121 m!143901))

(declare-fun m!143903 () Bool)

(assert (=> d!37121 m!143903))

(declare-fun m!143905 () Bool)

(assert (=> b!123750 m!143905))

(assert (=> b!123597 d!37121))

(declare-fun lt!63694 () Bool)

(declare-fun d!37123 () Bool)

(assert (=> d!37123 (= lt!63694 (select (content!120 (toList!851 lt!63634)) (tuple2!2547 lt!63518 (minValue!2620 (v!3089 (underlying!429 thiss!992))))))))

(declare-fun e!80888 () Bool)

(assert (=> d!37123 (= lt!63694 e!80888)))

(declare-fun res!60070 () Bool)

(assert (=> d!37123 (=> (not res!60070) (not e!80888))))

(assert (=> d!37123 (= res!60070 ((_ is Cons!1705) (toList!851 lt!63634)))))

(assert (=> d!37123 (= (contains!869 (toList!851 lt!63634) (tuple2!2547 lt!63518 (minValue!2620 (v!3089 (underlying!429 thiss!992))))) lt!63694)))

(declare-fun b!123751 () Bool)

(declare-fun e!80889 () Bool)

(assert (=> b!123751 (= e!80888 e!80889)))

(declare-fun res!60071 () Bool)

(assert (=> b!123751 (=> res!60071 e!80889)))

(assert (=> b!123751 (= res!60071 (= (h!2306 (toList!851 lt!63634)) (tuple2!2547 lt!63518 (minValue!2620 (v!3089 (underlying!429 thiss!992))))))))

(declare-fun b!123752 () Bool)

(assert (=> b!123752 (= e!80889 (contains!869 (t!6020 (toList!851 lt!63634)) (tuple2!2547 lt!63518 (minValue!2620 (v!3089 (underlying!429 thiss!992))))))))

(assert (= (and d!37123 res!60070) b!123751))

(assert (= (and b!123751 (not res!60071)) b!123752))

(declare-fun m!143907 () Bool)

(assert (=> d!37123 m!143907))

(declare-fun m!143909 () Bool)

(assert (=> d!37123 m!143909))

(declare-fun m!143911 () Bool)

(assert (=> b!123752 m!143911))

(assert (=> b!123606 d!37123))

(assert (=> b!123527 d!37001))

(declare-fun d!37125 () Bool)

(declare-fun e!80891 () Bool)

(assert (=> d!37125 e!80891))

(declare-fun res!60072 () Bool)

(assert (=> d!37125 (=> res!60072 e!80891)))

(declare-fun lt!63696 () Bool)

(assert (=> d!37125 (= res!60072 (not lt!63696))))

(declare-fun lt!63695 () Bool)

(assert (=> d!37125 (= lt!63696 lt!63695)))

(declare-fun lt!63698 () Unit!3846)

(declare-fun e!80890 () Unit!3846)

(assert (=> d!37125 (= lt!63698 e!80890)))

(declare-fun c!22470 () Bool)

(assert (=> d!37125 (= c!22470 lt!63695)))

(assert (=> d!37125 (= lt!63695 (containsKey!167 (toList!851 lt!63587) (_1!1283 (tuple2!2547 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2620 (v!3089 (underlying!429 thiss!992)))))))))

(assert (=> d!37125 (= (contains!868 lt!63587 (_1!1283 (tuple2!2547 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2620 (v!3089 (underlying!429 thiss!992)))))) lt!63696)))

(declare-fun b!123753 () Bool)

(declare-fun lt!63697 () Unit!3846)

(assert (=> b!123753 (= e!80890 lt!63697)))

(assert (=> b!123753 (= lt!63697 (lemmaContainsKeyImpliesGetValueByKeyDefined!116 (toList!851 lt!63587) (_1!1283 (tuple2!2547 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2620 (v!3089 (underlying!429 thiss!992)))))))))

(assert (=> b!123753 (isDefined!117 (getValueByKey!163 (toList!851 lt!63587) (_1!1283 (tuple2!2547 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2620 (v!3089 (underlying!429 thiss!992)))))))))

(declare-fun b!123754 () Bool)

(declare-fun Unit!3859 () Unit!3846)

(assert (=> b!123754 (= e!80890 Unit!3859)))

(declare-fun b!123755 () Bool)

(assert (=> b!123755 (= e!80891 (isDefined!117 (getValueByKey!163 (toList!851 lt!63587) (_1!1283 (tuple2!2547 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2620 (v!3089 (underlying!429 thiss!992))))))))))

(assert (= (and d!37125 c!22470) b!123753))

(assert (= (and d!37125 (not c!22470)) b!123754))

(assert (= (and d!37125 (not res!60072)) b!123755))

(declare-fun m!143913 () Bool)

(assert (=> d!37125 m!143913))

(declare-fun m!143915 () Bool)

(assert (=> b!123753 m!143915))

(assert (=> b!123753 m!143605))

(assert (=> b!123753 m!143605))

(declare-fun m!143917 () Bool)

(assert (=> b!123753 m!143917))

(assert (=> b!123755 m!143605))

(assert (=> b!123755 m!143605))

(assert (=> b!123755 m!143917))

(assert (=> d!36997 d!37125))

(declare-fun d!37127 () Bool)

(declare-fun c!22471 () Bool)

(assert (=> d!37127 (= c!22471 (and ((_ is Cons!1705) lt!63585) (= (_1!1283 (h!2306 lt!63585)) (_1!1283 (tuple2!2547 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2620 (v!3089 (underlying!429 thiss!992))))))))))

(declare-fun e!80892 () Option!169)

(assert (=> d!37127 (= (getValueByKey!163 lt!63585 (_1!1283 (tuple2!2547 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2620 (v!3089 (underlying!429 thiss!992)))))) e!80892)))

(declare-fun b!123757 () Bool)

(declare-fun e!80893 () Option!169)

(assert (=> b!123757 (= e!80892 e!80893)))

(declare-fun c!22472 () Bool)

(assert (=> b!123757 (= c!22472 (and ((_ is Cons!1705) lt!63585) (not (= (_1!1283 (h!2306 lt!63585)) (_1!1283 (tuple2!2547 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2620 (v!3089 (underlying!429 thiss!992)))))))))))

(declare-fun b!123756 () Bool)

(assert (=> b!123756 (= e!80892 (Some!168 (_2!1283 (h!2306 lt!63585))))))

(declare-fun b!123758 () Bool)

(assert (=> b!123758 (= e!80893 (getValueByKey!163 (t!6020 lt!63585) (_1!1283 (tuple2!2547 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2620 (v!3089 (underlying!429 thiss!992)))))))))

(declare-fun b!123759 () Bool)

(assert (=> b!123759 (= e!80893 None!167)))

(assert (= (and d!37127 c!22471) b!123756))

(assert (= (and d!37127 (not c!22471)) b!123757))

(assert (= (and b!123757 c!22472) b!123758))

(assert (= (and b!123757 (not c!22472)) b!123759))

(declare-fun m!143919 () Bool)

(assert (=> b!123758 m!143919))

(assert (=> d!36997 d!37127))

(declare-fun d!37129 () Bool)

(assert (=> d!37129 (= (getValueByKey!163 lt!63585 (_1!1283 (tuple2!2547 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2620 (v!3089 (underlying!429 thiss!992)))))) (Some!168 (_2!1283 (tuple2!2547 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2620 (v!3089 (underlying!429 thiss!992)))))))))

(declare-fun lt!63701 () Unit!3846)

(declare-fun choose!753 (List!1709 (_ BitVec 64) V!3411) Unit!3846)

(assert (=> d!37129 (= lt!63701 (choose!753 lt!63585 (_1!1283 (tuple2!2547 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2620 (v!3089 (underlying!429 thiss!992))))) (_2!1283 (tuple2!2547 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2620 (v!3089 (underlying!429 thiss!992)))))))))

(declare-fun e!80896 () Bool)

(assert (=> d!37129 e!80896))

(declare-fun res!60077 () Bool)

(assert (=> d!37129 (=> (not res!60077) (not e!80896))))

(assert (=> d!37129 (= res!60077 (isStrictlySorted!310 lt!63585))))

(assert (=> d!37129 (= (lemmaContainsTupThenGetReturnValue!81 lt!63585 (_1!1283 (tuple2!2547 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2620 (v!3089 (underlying!429 thiss!992))))) (_2!1283 (tuple2!2547 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2620 (v!3089 (underlying!429 thiss!992)))))) lt!63701)))

(declare-fun b!123764 () Bool)

(declare-fun res!60078 () Bool)

(assert (=> b!123764 (=> (not res!60078) (not e!80896))))

(assert (=> b!123764 (= res!60078 (containsKey!167 lt!63585 (_1!1283 (tuple2!2547 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2620 (v!3089 (underlying!429 thiss!992)))))))))

(declare-fun b!123765 () Bool)

(assert (=> b!123765 (= e!80896 (contains!869 lt!63585 (tuple2!2547 (_1!1283 (tuple2!2547 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2620 (v!3089 (underlying!429 thiss!992))))) (_2!1283 (tuple2!2547 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2620 (v!3089 (underlying!429 thiss!992))))))))))

(assert (= (and d!37129 res!60077) b!123764))

(assert (= (and b!123764 res!60078) b!123765))

(assert (=> d!37129 m!143599))

(declare-fun m!143921 () Bool)

(assert (=> d!37129 m!143921))

(declare-fun m!143923 () Bool)

(assert (=> d!37129 m!143923))

(declare-fun m!143925 () Bool)

(assert (=> b!123764 m!143925))

(declare-fun m!143927 () Bool)

(assert (=> b!123765 m!143927))

(assert (=> d!36997 d!37129))

(declare-fun b!123786 () Bool)

(declare-fun e!80908 () List!1709)

(assert (=> b!123786 (= e!80908 (insertStrictlySorted!83 (t!6020 (toList!851 call!13120)) (_1!1283 (tuple2!2547 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2620 (v!3089 (underlying!429 thiss!992))))) (_2!1283 (tuple2!2547 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2620 (v!3089 (underlying!429 thiss!992)))))))))

(declare-fun b!123787 () Bool)

(declare-fun e!80909 () List!1709)

(declare-fun call!13156 () List!1709)

(assert (=> b!123787 (= e!80909 call!13156)))

(declare-fun d!37131 () Bool)

(declare-fun e!80911 () Bool)

(assert (=> d!37131 e!80911))

(declare-fun res!60084 () Bool)

(assert (=> d!37131 (=> (not res!60084) (not e!80911))))

(declare-fun lt!63704 () List!1709)

(assert (=> d!37131 (= res!60084 (isStrictlySorted!310 lt!63704))))

(declare-fun e!80907 () List!1709)

(assert (=> d!37131 (= lt!63704 e!80907)))

(declare-fun c!22484 () Bool)

(assert (=> d!37131 (= c!22484 (and ((_ is Cons!1705) (toList!851 call!13120)) (bvslt (_1!1283 (h!2306 (toList!851 call!13120))) (_1!1283 (tuple2!2547 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2620 (v!3089 (underlying!429 thiss!992))))))))))

(assert (=> d!37131 (isStrictlySorted!310 (toList!851 call!13120))))

(assert (=> d!37131 (= (insertStrictlySorted!83 (toList!851 call!13120) (_1!1283 (tuple2!2547 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2620 (v!3089 (underlying!429 thiss!992))))) (_2!1283 (tuple2!2547 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2620 (v!3089 (underlying!429 thiss!992)))))) lt!63704)))

(declare-fun c!22483 () Bool)

(declare-fun c!22481 () Bool)

(declare-fun b!123788 () Bool)

(assert (=> b!123788 (= e!80908 (ite c!22481 (t!6020 (toList!851 call!13120)) (ite c!22483 (Cons!1705 (h!2306 (toList!851 call!13120)) (t!6020 (toList!851 call!13120))) Nil!1706)))))

(declare-fun b!123789 () Bool)

(declare-fun e!80910 () List!1709)

(declare-fun call!13154 () List!1709)

(assert (=> b!123789 (= e!80910 call!13154)))

(declare-fun b!123790 () Bool)

(assert (=> b!123790 (= c!22483 (and ((_ is Cons!1705) (toList!851 call!13120)) (bvsgt (_1!1283 (h!2306 (toList!851 call!13120))) (_1!1283 (tuple2!2547 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2620 (v!3089 (underlying!429 thiss!992))))))))))

(assert (=> b!123790 (= e!80909 e!80910)))

(declare-fun b!123791 () Bool)

(assert (=> b!123791 (= e!80911 (contains!869 lt!63704 (tuple2!2547 (_1!1283 (tuple2!2547 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2620 (v!3089 (underlying!429 thiss!992))))) (_2!1283 (tuple2!2547 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2620 (v!3089 (underlying!429 thiss!992))))))))))

(declare-fun bm!13151 () Bool)

(declare-fun call!13155 () List!1709)

(assert (=> bm!13151 (= call!13156 call!13155)))

(declare-fun b!123792 () Bool)

(declare-fun res!60083 () Bool)

(assert (=> b!123792 (=> (not res!60083) (not e!80911))))

(assert (=> b!123792 (= res!60083 (containsKey!167 lt!63704 (_1!1283 (tuple2!2547 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2620 (v!3089 (underlying!429 thiss!992)))))))))

(declare-fun b!123793 () Bool)

(assert (=> b!123793 (= e!80907 call!13155)))

(declare-fun b!123794 () Bool)

(assert (=> b!123794 (= e!80907 e!80909)))

(assert (=> b!123794 (= c!22481 (and ((_ is Cons!1705) (toList!851 call!13120)) (= (_1!1283 (h!2306 (toList!851 call!13120))) (_1!1283 (tuple2!2547 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2620 (v!3089 (underlying!429 thiss!992))))))))))

(declare-fun bm!13152 () Bool)

(declare-fun $colon$colon!86 (List!1709 tuple2!2546) List!1709)

(assert (=> bm!13152 (= call!13155 ($colon$colon!86 e!80908 (ite c!22484 (h!2306 (toList!851 call!13120)) (tuple2!2547 (_1!1283 (tuple2!2547 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2620 (v!3089 (underlying!429 thiss!992))))) (_2!1283 (tuple2!2547 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2620 (v!3089 (underlying!429 thiss!992)))))))))))

(declare-fun c!22482 () Bool)

(assert (=> bm!13152 (= c!22482 c!22484)))

(declare-fun bm!13153 () Bool)

(assert (=> bm!13153 (= call!13154 call!13156)))

(declare-fun b!123795 () Bool)

(assert (=> b!123795 (= e!80910 call!13154)))

(assert (= (and d!37131 c!22484) b!123793))

(assert (= (and d!37131 (not c!22484)) b!123794))

(assert (= (and b!123794 c!22481) b!123787))

(assert (= (and b!123794 (not c!22481)) b!123790))

(assert (= (and b!123790 c!22483) b!123789))

(assert (= (and b!123790 (not c!22483)) b!123795))

(assert (= (or b!123789 b!123795) bm!13153))

(assert (= (or b!123787 bm!13153) bm!13151))

(assert (= (or b!123793 bm!13151) bm!13152))

(assert (= (and bm!13152 c!22482) b!123786))

(assert (= (and bm!13152 (not c!22482)) b!123788))

(assert (= (and d!37131 res!60084) b!123792))

(assert (= (and b!123792 res!60083) b!123791))

(declare-fun m!143929 () Bool)

(assert (=> d!37131 m!143929))

(declare-fun m!143931 () Bool)

(assert (=> d!37131 m!143931))

(declare-fun m!143933 () Bool)

(assert (=> b!123791 m!143933))

(declare-fun m!143935 () Bool)

(assert (=> b!123786 m!143935))

(declare-fun m!143937 () Bool)

(assert (=> b!123792 m!143937))

(declare-fun m!143939 () Bool)

(assert (=> bm!13152 m!143939))

(assert (=> d!36997 d!37131))

(assert (=> b!123600 d!37093))

(assert (=> b!123600 d!37095))

(declare-fun b!123796 () Bool)

(declare-fun e!80914 () Bool)

(declare-fun call!13157 () Bool)

(assert (=> b!123796 (= e!80914 call!13157)))

(declare-fun d!37133 () Bool)

(declare-fun res!60086 () Bool)

(declare-fun e!80912 () Bool)

(assert (=> d!37133 (=> res!60086 e!80912)))

(assert (=> d!37133 (= res!60086 (bvsge #b00000000000000000000000000000000 (size!2468 (_keys!4482 (v!3089 (underlying!429 thiss!992))))))))

(assert (=> d!37133 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!4482 (v!3089 (underlying!429 thiss!992))) (mask!6993 (v!3089 (underlying!429 thiss!992)))) e!80912)))

(declare-fun bm!13154 () Bool)

(assert (=> bm!13154 (= call!13157 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (_keys!4482 (v!3089 (underlying!429 thiss!992))) (mask!6993 (v!3089 (underlying!429 thiss!992)))))))

(declare-fun b!123797 () Bool)

(assert (=> b!123797 (= e!80912 e!80914)))

(declare-fun c!22485 () Bool)

(assert (=> b!123797 (= c!22485 (validKeyInArray!0 (select (arr!2206 (_keys!4482 (v!3089 (underlying!429 thiss!992)))) #b00000000000000000000000000000000)))))

(declare-fun b!123798 () Bool)

(declare-fun e!80913 () Bool)

(assert (=> b!123798 (= e!80913 call!13157)))

(declare-fun b!123799 () Bool)

(assert (=> b!123799 (= e!80914 e!80913)))

(declare-fun lt!63705 () (_ BitVec 64))

(assert (=> b!123799 (= lt!63705 (select (arr!2206 (_keys!4482 (v!3089 (underlying!429 thiss!992)))) #b00000000000000000000000000000000))))

(declare-fun lt!63707 () Unit!3846)

(assert (=> b!123799 (= lt!63707 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!4482 (v!3089 (underlying!429 thiss!992))) lt!63705 #b00000000000000000000000000000000))))

(assert (=> b!123799 (arrayContainsKey!0 (_keys!4482 (v!3089 (underlying!429 thiss!992))) lt!63705 #b00000000000000000000000000000000)))

(declare-fun lt!63706 () Unit!3846)

(assert (=> b!123799 (= lt!63706 lt!63707)))

(declare-fun res!60085 () Bool)

(assert (=> b!123799 (= res!60085 (= (seekEntryOrOpen!0 (select (arr!2206 (_keys!4482 (v!3089 (underlying!429 thiss!992)))) #b00000000000000000000000000000000) (_keys!4482 (v!3089 (underlying!429 thiss!992))) (mask!6993 (v!3089 (underlying!429 thiss!992)))) (Found!277 #b00000000000000000000000000000000)))))

(assert (=> b!123799 (=> (not res!60085) (not e!80913))))

(assert (= (and d!37133 (not res!60086)) b!123797))

(assert (= (and b!123797 c!22485) b!123799))

(assert (= (and b!123797 (not c!22485)) b!123796))

(assert (= (and b!123799 res!60085) b!123798))

(assert (= (or b!123798 b!123796) bm!13154))

(declare-fun m!143941 () Bool)

(assert (=> bm!13154 m!143941))

(declare-fun m!143943 () Bool)

(assert (=> b!123797 m!143943))

(assert (=> b!123797 m!143943))

(declare-fun m!143945 () Bool)

(assert (=> b!123797 m!143945))

(assert (=> b!123799 m!143943))

(declare-fun m!143947 () Bool)

(assert (=> b!123799 m!143947))

(declare-fun m!143949 () Bool)

(assert (=> b!123799 m!143949))

(assert (=> b!123799 m!143943))

(declare-fun m!143951 () Bool)

(assert (=> b!123799 m!143951))

(assert (=> b!123579 d!37133))

(declare-fun b!123800 () Bool)

(declare-fun e!80915 () (_ BitVec 32))

(declare-fun call!13158 () (_ BitVec 32))

(assert (=> b!123800 (= e!80915 (bvadd #b00000000000000000000000000000001 call!13158))))

(declare-fun b!123801 () Bool)

(declare-fun e!80916 () (_ BitVec 32))

(assert (=> b!123801 (= e!80916 #b00000000000000000000000000000000)))

(declare-fun b!123802 () Bool)

(assert (=> b!123802 (= e!80915 call!13158)))

(declare-fun b!123803 () Bool)

(assert (=> b!123803 (= e!80916 e!80915)))

(declare-fun c!22487 () Bool)

(assert (=> b!123803 (= c!22487 (validKeyInArray!0 (select (arr!2206 (_keys!4482 newMap!16)) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun d!37135 () Bool)

(declare-fun lt!63708 () (_ BitVec 32))

(assert (=> d!37135 (and (bvsge lt!63708 #b00000000000000000000000000000000) (bvsle lt!63708 (bvsub (size!2468 (_keys!4482 newMap!16)) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(assert (=> d!37135 (= lt!63708 e!80916)))

(declare-fun c!22486 () Bool)

(assert (=> d!37135 (= c!22486 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!2468 (_keys!4482 newMap!16))))))

(assert (=> d!37135 (and (bvsle (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!2468 (_keys!4482 newMap!16))) (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvsle (size!2468 (_keys!4482 newMap!16)) (size!2468 (_keys!4482 newMap!16))))))

(assert (=> d!37135 (= (arrayCountValidKeys!0 (_keys!4482 newMap!16) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!2468 (_keys!4482 newMap!16))) lt!63708)))

(declare-fun bm!13155 () Bool)

(assert (=> bm!13155 (= call!13158 (arrayCountValidKeys!0 (_keys!4482 newMap!16) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (size!2468 (_keys!4482 newMap!16))))))

(assert (= (and d!37135 c!22486) b!123801))

(assert (= (and d!37135 (not c!22486)) b!123803))

(assert (= (and b!123803 c!22487) b!123800))

(assert (= (and b!123803 (not c!22487)) b!123802))

(assert (= (or b!123800 b!123802) bm!13155))

(assert (=> b!123803 m!143811))

(assert (=> b!123803 m!143811))

(assert (=> b!123803 m!143813))

(declare-fun m!143953 () Bool)

(assert (=> bm!13155 m!143953))

(assert (=> bm!13136 d!37135))

(assert (=> b!123525 d!37001))

(declare-fun d!37137 () Bool)

(declare-fun res!60087 () Bool)

(declare-fun e!80917 () Bool)

(assert (=> d!37137 (=> res!60087 e!80917)))

(assert (=> d!37137 (= res!60087 (and ((_ is Cons!1705) (toList!851 lt!63525)) (= (_1!1283 (h!2306 (toList!851 lt!63525))) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!37137 (= (containsKey!167 (toList!851 lt!63525) #b1000000000000000000000000000000000000000000000000000000000000000) e!80917)))

(declare-fun b!123804 () Bool)

(declare-fun e!80918 () Bool)

(assert (=> b!123804 (= e!80917 e!80918)))

(declare-fun res!60088 () Bool)

(assert (=> b!123804 (=> (not res!60088) (not e!80918))))

(assert (=> b!123804 (= res!60088 (and (or (not ((_ is Cons!1705) (toList!851 lt!63525))) (bvsle (_1!1283 (h!2306 (toList!851 lt!63525))) #b1000000000000000000000000000000000000000000000000000000000000000)) ((_ is Cons!1705) (toList!851 lt!63525)) (bvslt (_1!1283 (h!2306 (toList!851 lt!63525))) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!123805 () Bool)

(assert (=> b!123805 (= e!80918 (containsKey!167 (t!6020 (toList!851 lt!63525)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!37137 (not res!60087)) b!123804))

(assert (= (and b!123804 res!60088) b!123805))

(declare-fun m!143955 () Bool)

(assert (=> b!123805 m!143955))

(assert (=> d!36999 d!37137))

(declare-fun d!37139 () Bool)

(declare-fun e!80920 () Bool)

(assert (=> d!37139 e!80920))

(declare-fun res!60089 () Bool)

(assert (=> d!37139 (=> res!60089 e!80920)))

(declare-fun lt!63710 () Bool)

(assert (=> d!37139 (= res!60089 (not lt!63710))))

(declare-fun lt!63709 () Bool)

(assert (=> d!37139 (= lt!63710 lt!63709)))

(declare-fun lt!63712 () Unit!3846)

(declare-fun e!80919 () Unit!3846)

(assert (=> d!37139 (= lt!63712 e!80919)))

(declare-fun c!22488 () Bool)

(assert (=> d!37139 (= c!22488 lt!63709)))

(assert (=> d!37139 (= lt!63709 (containsKey!167 (toList!851 lt!63548) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!37139 (= (contains!868 lt!63548 #b0000000000000000000000000000000000000000000000000000000000000000) lt!63710)))

(declare-fun b!123806 () Bool)

(declare-fun lt!63711 () Unit!3846)

(assert (=> b!123806 (= e!80919 lt!63711)))

(assert (=> b!123806 (= lt!63711 (lemmaContainsKeyImpliesGetValueByKeyDefined!116 (toList!851 lt!63548) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!123806 (isDefined!117 (getValueByKey!163 (toList!851 lt!63548) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!123807 () Bool)

(declare-fun Unit!3860 () Unit!3846)

(assert (=> b!123807 (= e!80919 Unit!3860)))

(declare-fun b!123808 () Bool)

(assert (=> b!123808 (= e!80920 (isDefined!117 (getValueByKey!163 (toList!851 lt!63548) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!37139 c!22488) b!123806))

(assert (= (and d!37139 (not c!22488)) b!123807))

(assert (= (and d!37139 (not res!60089)) b!123808))

(declare-fun m!143957 () Bool)

(assert (=> d!37139 m!143957))

(declare-fun m!143959 () Bool)

(assert (=> b!123806 m!143959))

(declare-fun m!143961 () Bool)

(assert (=> b!123806 m!143961))

(assert (=> b!123806 m!143961))

(declare-fun m!143963 () Bool)

(assert (=> b!123806 m!143963))

(assert (=> b!123808 m!143961))

(assert (=> b!123808 m!143961))

(assert (=> b!123808 m!143963))

(assert (=> d!36991 d!37139))

(assert (=> d!36991 d!37003))

(assert (=> d!36989 d!37055))

(declare-fun d!37141 () Bool)

(assert (=> d!37141 (isDefined!117 (getValueByKey!163 (toList!851 lt!63525) (select (arr!2206 (_keys!4482 (v!3089 (underlying!429 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))))))

(declare-fun lt!63713 () Unit!3846)

(assert (=> d!37141 (= lt!63713 (choose!752 (toList!851 lt!63525) (select (arr!2206 (_keys!4482 (v!3089 (underlying!429 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))))))

(declare-fun e!80921 () Bool)

(assert (=> d!37141 e!80921))

(declare-fun res!60090 () Bool)

(assert (=> d!37141 (=> (not res!60090) (not e!80921))))

(assert (=> d!37141 (= res!60090 (isStrictlySorted!310 (toList!851 lt!63525)))))

(assert (=> d!37141 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!116 (toList!851 lt!63525) (select (arr!2206 (_keys!4482 (v!3089 (underlying!429 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))) lt!63713)))

(declare-fun b!123809 () Bool)

(assert (=> b!123809 (= e!80921 (containsKey!167 (toList!851 lt!63525) (select (arr!2206 (_keys!4482 (v!3089 (underlying!429 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))))))

(assert (= (and d!37141 res!60090) b!123809))

(assert (=> d!37141 m!143427))

(assert (=> d!37141 m!143639))

(assert (=> d!37141 m!143639))

(assert (=> d!37141 m!143641))

(assert (=> d!37141 m!143427))

(declare-fun m!143965 () Bool)

(assert (=> d!37141 m!143965))

(declare-fun m!143967 () Bool)

(assert (=> d!37141 m!143967))

(assert (=> b!123809 m!143427))

(assert (=> b!123809 m!143635))

(assert (=> b!123581 d!37141))

(declare-fun d!37143 () Bool)

(assert (=> d!37143 (= (isDefined!117 (getValueByKey!163 (toList!851 lt!63525) (select (arr!2206 (_keys!4482 (v!3089 (underlying!429 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)))) (not (isEmpty!396 (getValueByKey!163 (toList!851 lt!63525) (select (arr!2206 (_keys!4482 (v!3089 (underlying!429 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))))))))

(declare-fun bs!5126 () Bool)

(assert (= bs!5126 d!37143))

(assert (=> bs!5126 m!143639))

(declare-fun m!143969 () Bool)

(assert (=> bs!5126 m!143969))

(assert (=> b!123581 d!37143))

(declare-fun c!22489 () Bool)

(declare-fun d!37145 () Bool)

(assert (=> d!37145 (= c!22489 (and ((_ is Cons!1705) (toList!851 lt!63525)) (= (_1!1283 (h!2306 (toList!851 lt!63525))) (select (arr!2206 (_keys!4482 (v!3089 (underlying!429 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)))))))

(declare-fun e!80922 () Option!169)

(assert (=> d!37145 (= (getValueByKey!163 (toList!851 lt!63525) (select (arr!2206 (_keys!4482 (v!3089 (underlying!429 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))) e!80922)))

(declare-fun b!123811 () Bool)

(declare-fun e!80923 () Option!169)

(assert (=> b!123811 (= e!80922 e!80923)))

(declare-fun c!22490 () Bool)

(assert (=> b!123811 (= c!22490 (and ((_ is Cons!1705) (toList!851 lt!63525)) (not (= (_1!1283 (h!2306 (toList!851 lt!63525))) (select (arr!2206 (_keys!4482 (v!3089 (underlying!429 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))))))))

(declare-fun b!123810 () Bool)

(assert (=> b!123810 (= e!80922 (Some!168 (_2!1283 (h!2306 (toList!851 lt!63525)))))))

(declare-fun b!123812 () Bool)

(assert (=> b!123812 (= e!80923 (getValueByKey!163 (t!6020 (toList!851 lt!63525)) (select (arr!2206 (_keys!4482 (v!3089 (underlying!429 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))))))

(declare-fun b!123813 () Bool)

(assert (=> b!123813 (= e!80923 None!167)))

(assert (= (and d!37145 c!22489) b!123810))

(assert (= (and d!37145 (not c!22489)) b!123811))

(assert (= (and b!123811 c!22490) b!123812))

(assert (= (and b!123811 (not c!22490)) b!123813))

(assert (=> b!123812 m!143427))

(declare-fun m!143971 () Bool)

(assert (=> b!123812 m!143971))

(assert (=> b!123581 d!37145))

(declare-fun d!37147 () Bool)

(declare-fun c!22491 () Bool)

(assert (=> d!37147 (= c!22491 (and ((_ is Cons!1705) (toList!851 lt!63587)) (= (_1!1283 (h!2306 (toList!851 lt!63587))) (_1!1283 (tuple2!2547 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2620 (v!3089 (underlying!429 thiss!992))))))))))

(declare-fun e!80924 () Option!169)

(assert (=> d!37147 (= (getValueByKey!163 (toList!851 lt!63587) (_1!1283 (tuple2!2547 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2620 (v!3089 (underlying!429 thiss!992)))))) e!80924)))

(declare-fun b!123815 () Bool)

(declare-fun e!80925 () Option!169)

(assert (=> b!123815 (= e!80924 e!80925)))

(declare-fun c!22492 () Bool)

(assert (=> b!123815 (= c!22492 (and ((_ is Cons!1705) (toList!851 lt!63587)) (not (= (_1!1283 (h!2306 (toList!851 lt!63587))) (_1!1283 (tuple2!2547 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2620 (v!3089 (underlying!429 thiss!992)))))))))))

(declare-fun b!123814 () Bool)

(assert (=> b!123814 (= e!80924 (Some!168 (_2!1283 (h!2306 (toList!851 lt!63587)))))))

(declare-fun b!123816 () Bool)

(assert (=> b!123816 (= e!80925 (getValueByKey!163 (t!6020 (toList!851 lt!63587)) (_1!1283 (tuple2!2547 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2620 (v!3089 (underlying!429 thiss!992)))))))))

(declare-fun b!123817 () Bool)

(assert (=> b!123817 (= e!80925 None!167)))

(assert (= (and d!37147 c!22491) b!123814))

(assert (= (and d!37147 (not c!22491)) b!123815))

(assert (= (and b!123815 c!22492) b!123816))

(assert (= (and b!123815 (not c!22492)) b!123817))

(declare-fun m!143973 () Bool)

(assert (=> b!123816 m!143973))

(assert (=> b!123564 d!37147))

(declare-fun d!37149 () Bool)

(declare-fun e!80927 () Bool)

(assert (=> d!37149 e!80927))

(declare-fun res!60091 () Bool)

(assert (=> d!37149 (=> res!60091 e!80927)))

(declare-fun lt!63715 () Bool)

(assert (=> d!37149 (= res!60091 (not lt!63715))))

(declare-fun lt!63714 () Bool)

(assert (=> d!37149 (= lt!63715 lt!63714)))

(declare-fun lt!63717 () Unit!3846)

(declare-fun e!80926 () Unit!3846)

(assert (=> d!37149 (= lt!63717 e!80926)))

(declare-fun c!22493 () Bool)

(assert (=> d!37149 (= c!22493 lt!63714)))

(assert (=> d!37149 (= lt!63714 (containsKey!167 (toList!851 lt!63548) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!37149 (= (contains!868 lt!63548 #b1000000000000000000000000000000000000000000000000000000000000000) lt!63715)))

(declare-fun b!123818 () Bool)

(declare-fun lt!63716 () Unit!3846)

(assert (=> b!123818 (= e!80926 lt!63716)))

(assert (=> b!123818 (= lt!63716 (lemmaContainsKeyImpliesGetValueByKeyDefined!116 (toList!851 lt!63548) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!123818 (isDefined!117 (getValueByKey!163 (toList!851 lt!63548) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!123819 () Bool)

(declare-fun Unit!3861 () Unit!3846)

(assert (=> b!123819 (= e!80926 Unit!3861)))

(declare-fun b!123820 () Bool)

(assert (=> b!123820 (= e!80927 (isDefined!117 (getValueByKey!163 (toList!851 lt!63548) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!37149 c!22493) b!123818))

(assert (= (and d!37149 (not c!22493)) b!123819))

(assert (= (and d!37149 (not res!60091)) b!123820))

(declare-fun m!143975 () Bool)

(assert (=> d!37149 m!143975))

(declare-fun m!143977 () Bool)

(assert (=> b!123818 m!143977))

(declare-fun m!143979 () Bool)

(assert (=> b!123818 m!143979))

(assert (=> b!123818 m!143979))

(declare-fun m!143981 () Bool)

(assert (=> b!123818 m!143981))

(assert (=> b!123820 m!143979))

(assert (=> b!123820 m!143979))

(assert (=> b!123820 m!143981))

(assert (=> b!123530 d!37149))

(declare-fun d!37151 () Bool)

(assert (=> d!37151 (= (validKeyInArray!0 (select (arr!2206 (_keys!4482 newMap!16)) #b00000000000000000000000000000000)) (and (not (= (select (arr!2206 (_keys!4482 newMap!16)) #b00000000000000000000000000000000) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!2206 (_keys!4482 newMap!16)) #b00000000000000000000000000000000) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!123644 d!37151))

(declare-fun d!37153 () Bool)

(declare-fun e!80928 () Bool)

(assert (=> d!37153 e!80928))

(declare-fun res!60093 () Bool)

(assert (=> d!37153 (=> (not res!60093) (not e!80928))))

(declare-fun lt!63720 () ListLongMap!1671)

(assert (=> d!37153 (= res!60093 (contains!868 lt!63720 (_1!1283 (ite (or c!22417 c!22420) (tuple2!2547 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2620 newMap!16)) (tuple2!2547 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2620 newMap!16))))))))

(declare-fun lt!63718 () List!1709)

(assert (=> d!37153 (= lt!63720 (ListLongMap!1672 lt!63718))))

(declare-fun lt!63721 () Unit!3846)

(declare-fun lt!63719 () Unit!3846)

(assert (=> d!37153 (= lt!63721 lt!63719)))

(assert (=> d!37153 (= (getValueByKey!163 lt!63718 (_1!1283 (ite (or c!22417 c!22420) (tuple2!2547 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2620 newMap!16)) (tuple2!2547 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2620 newMap!16))))) (Some!168 (_2!1283 (ite (or c!22417 c!22420) (tuple2!2547 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2620 newMap!16)) (tuple2!2547 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2620 newMap!16))))))))

(assert (=> d!37153 (= lt!63719 (lemmaContainsTupThenGetReturnValue!81 lt!63718 (_1!1283 (ite (or c!22417 c!22420) (tuple2!2547 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2620 newMap!16)) (tuple2!2547 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2620 newMap!16)))) (_2!1283 (ite (or c!22417 c!22420) (tuple2!2547 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2620 newMap!16)) (tuple2!2547 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2620 newMap!16))))))))

(assert (=> d!37153 (= lt!63718 (insertStrictlySorted!83 (toList!851 (ite c!22417 call!13134 (ite c!22420 call!13136 call!13135))) (_1!1283 (ite (or c!22417 c!22420) (tuple2!2547 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2620 newMap!16)) (tuple2!2547 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2620 newMap!16)))) (_2!1283 (ite (or c!22417 c!22420) (tuple2!2547 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2620 newMap!16)) (tuple2!2547 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2620 newMap!16))))))))

(assert (=> d!37153 (= (+!162 (ite c!22417 call!13134 (ite c!22420 call!13136 call!13135)) (ite (or c!22417 c!22420) (tuple2!2547 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2620 newMap!16)) (tuple2!2547 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2620 newMap!16)))) lt!63720)))

(declare-fun b!123821 () Bool)

(declare-fun res!60092 () Bool)

(assert (=> b!123821 (=> (not res!60092) (not e!80928))))

(assert (=> b!123821 (= res!60092 (= (getValueByKey!163 (toList!851 lt!63720) (_1!1283 (ite (or c!22417 c!22420) (tuple2!2547 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2620 newMap!16)) (tuple2!2547 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2620 newMap!16))))) (Some!168 (_2!1283 (ite (or c!22417 c!22420) (tuple2!2547 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2620 newMap!16)) (tuple2!2547 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2620 newMap!16)))))))))

(declare-fun b!123822 () Bool)

(assert (=> b!123822 (= e!80928 (contains!869 (toList!851 lt!63720) (ite (or c!22417 c!22420) (tuple2!2547 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2620 newMap!16)) (tuple2!2547 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2620 newMap!16)))))))

(assert (= (and d!37153 res!60093) b!123821))

(assert (= (and b!123821 res!60092) b!123822))

(declare-fun m!143983 () Bool)

(assert (=> d!37153 m!143983))

(declare-fun m!143985 () Bool)

(assert (=> d!37153 m!143985))

(declare-fun m!143987 () Bool)

(assert (=> d!37153 m!143987))

(declare-fun m!143989 () Bool)

(assert (=> d!37153 m!143989))

(declare-fun m!143991 () Bool)

(assert (=> b!123821 m!143991))

(declare-fun m!143993 () Bool)

(assert (=> b!123822 m!143993))

(assert (=> bm!13128 d!37153))

(declare-fun d!37155 () Bool)

(declare-fun e!80930 () Bool)

(assert (=> d!37155 e!80930))

(declare-fun res!60094 () Bool)

(assert (=> d!37155 (=> res!60094 e!80930)))

(declare-fun lt!63723 () Bool)

(assert (=> d!37155 (= res!60094 (not lt!63723))))

(declare-fun lt!63722 () Bool)

(assert (=> d!37155 (= lt!63723 lt!63722)))

(declare-fun lt!63725 () Unit!3846)

(declare-fun e!80929 () Unit!3846)

(assert (=> d!37155 (= lt!63725 e!80929)))

(declare-fun c!22494 () Bool)

(assert (=> d!37155 (= c!22494 lt!63722)))

(assert (=> d!37155 (= lt!63722 (containsKey!167 (toList!851 lt!63634) (_1!1283 (tuple2!2547 lt!63518 (minValue!2620 (v!3089 (underlying!429 thiss!992)))))))))

(assert (=> d!37155 (= (contains!868 lt!63634 (_1!1283 (tuple2!2547 lt!63518 (minValue!2620 (v!3089 (underlying!429 thiss!992)))))) lt!63723)))

(declare-fun b!123823 () Bool)

(declare-fun lt!63724 () Unit!3846)

(assert (=> b!123823 (= e!80929 lt!63724)))

(assert (=> b!123823 (= lt!63724 (lemmaContainsKeyImpliesGetValueByKeyDefined!116 (toList!851 lt!63634) (_1!1283 (tuple2!2547 lt!63518 (minValue!2620 (v!3089 (underlying!429 thiss!992)))))))))

(assert (=> b!123823 (isDefined!117 (getValueByKey!163 (toList!851 lt!63634) (_1!1283 (tuple2!2547 lt!63518 (minValue!2620 (v!3089 (underlying!429 thiss!992)))))))))

(declare-fun b!123824 () Bool)

(declare-fun Unit!3862 () Unit!3846)

(assert (=> b!123824 (= e!80929 Unit!3862)))

(declare-fun b!123825 () Bool)

(assert (=> b!123825 (= e!80930 (isDefined!117 (getValueByKey!163 (toList!851 lt!63634) (_1!1283 (tuple2!2547 lt!63518 (minValue!2620 (v!3089 (underlying!429 thiss!992))))))))))

(assert (= (and d!37155 c!22494) b!123823))

(assert (= (and d!37155 (not c!22494)) b!123824))

(assert (= (and d!37155 (not res!60094)) b!123825))

(declare-fun m!143995 () Bool)

(assert (=> d!37155 m!143995))

(declare-fun m!143997 () Bool)

(assert (=> b!123823 m!143997))

(assert (=> b!123823 m!143733))

(assert (=> b!123823 m!143733))

(declare-fun m!143999 () Bool)

(assert (=> b!123823 m!143999))

(assert (=> b!123825 m!143733))

(assert (=> b!123825 m!143733))

(assert (=> b!123825 m!143999))

(assert (=> d!37041 d!37155))

(declare-fun c!22495 () Bool)

(declare-fun d!37157 () Bool)

(assert (=> d!37157 (= c!22495 (and ((_ is Cons!1705) lt!63632) (= (_1!1283 (h!2306 lt!63632)) (_1!1283 (tuple2!2547 lt!63518 (minValue!2620 (v!3089 (underlying!429 thiss!992))))))))))

(declare-fun e!80931 () Option!169)

(assert (=> d!37157 (= (getValueByKey!163 lt!63632 (_1!1283 (tuple2!2547 lt!63518 (minValue!2620 (v!3089 (underlying!429 thiss!992)))))) e!80931)))

(declare-fun b!123827 () Bool)

(declare-fun e!80932 () Option!169)

(assert (=> b!123827 (= e!80931 e!80932)))

(declare-fun c!22496 () Bool)

(assert (=> b!123827 (= c!22496 (and ((_ is Cons!1705) lt!63632) (not (= (_1!1283 (h!2306 lt!63632)) (_1!1283 (tuple2!2547 lt!63518 (minValue!2620 (v!3089 (underlying!429 thiss!992)))))))))))

(declare-fun b!123826 () Bool)

(assert (=> b!123826 (= e!80931 (Some!168 (_2!1283 (h!2306 lt!63632))))))

(declare-fun b!123828 () Bool)

(assert (=> b!123828 (= e!80932 (getValueByKey!163 (t!6020 lt!63632) (_1!1283 (tuple2!2547 lt!63518 (minValue!2620 (v!3089 (underlying!429 thiss!992)))))))))

(declare-fun b!123829 () Bool)

(assert (=> b!123829 (= e!80932 None!167)))

(assert (= (and d!37157 c!22495) b!123826))

(assert (= (and d!37157 (not c!22495)) b!123827))

(assert (= (and b!123827 c!22496) b!123828))

(assert (= (and b!123827 (not c!22496)) b!123829))

(declare-fun m!144001 () Bool)

(assert (=> b!123828 m!144001))

(assert (=> d!37041 d!37157))

(declare-fun d!37159 () Bool)

(assert (=> d!37159 (= (getValueByKey!163 lt!63632 (_1!1283 (tuple2!2547 lt!63518 (minValue!2620 (v!3089 (underlying!429 thiss!992)))))) (Some!168 (_2!1283 (tuple2!2547 lt!63518 (minValue!2620 (v!3089 (underlying!429 thiss!992)))))))))

(declare-fun lt!63726 () Unit!3846)

(assert (=> d!37159 (= lt!63726 (choose!753 lt!63632 (_1!1283 (tuple2!2547 lt!63518 (minValue!2620 (v!3089 (underlying!429 thiss!992))))) (_2!1283 (tuple2!2547 lt!63518 (minValue!2620 (v!3089 (underlying!429 thiss!992)))))))))

(declare-fun e!80933 () Bool)

(assert (=> d!37159 e!80933))

(declare-fun res!60095 () Bool)

(assert (=> d!37159 (=> (not res!60095) (not e!80933))))

(assert (=> d!37159 (= res!60095 (isStrictlySorted!310 lt!63632))))

(assert (=> d!37159 (= (lemmaContainsTupThenGetReturnValue!81 lt!63632 (_1!1283 (tuple2!2547 lt!63518 (minValue!2620 (v!3089 (underlying!429 thiss!992))))) (_2!1283 (tuple2!2547 lt!63518 (minValue!2620 (v!3089 (underlying!429 thiss!992)))))) lt!63726)))

(declare-fun b!123830 () Bool)

(declare-fun res!60096 () Bool)

(assert (=> b!123830 (=> (not res!60096) (not e!80933))))

(assert (=> b!123830 (= res!60096 (containsKey!167 lt!63632 (_1!1283 (tuple2!2547 lt!63518 (minValue!2620 (v!3089 (underlying!429 thiss!992)))))))))

(declare-fun b!123831 () Bool)

(assert (=> b!123831 (= e!80933 (contains!869 lt!63632 (tuple2!2547 (_1!1283 (tuple2!2547 lt!63518 (minValue!2620 (v!3089 (underlying!429 thiss!992))))) (_2!1283 (tuple2!2547 lt!63518 (minValue!2620 (v!3089 (underlying!429 thiss!992))))))))))

(assert (= (and d!37159 res!60095) b!123830))

(assert (= (and b!123830 res!60096) b!123831))

(assert (=> d!37159 m!143727))

(declare-fun m!144003 () Bool)

(assert (=> d!37159 m!144003))

(declare-fun m!144005 () Bool)

(assert (=> d!37159 m!144005))

(declare-fun m!144007 () Bool)

(assert (=> b!123830 m!144007))

(declare-fun m!144009 () Bool)

(assert (=> b!123831 m!144009))

(assert (=> d!37041 d!37159))

(declare-fun e!80935 () List!1709)

(declare-fun b!123832 () Bool)

(assert (=> b!123832 (= e!80935 (insertStrictlySorted!83 (t!6020 (toList!851 lt!63509)) (_1!1283 (tuple2!2547 lt!63518 (minValue!2620 (v!3089 (underlying!429 thiss!992))))) (_2!1283 (tuple2!2547 lt!63518 (minValue!2620 (v!3089 (underlying!429 thiss!992)))))))))

(declare-fun b!123833 () Bool)

(declare-fun e!80936 () List!1709)

(declare-fun call!13161 () List!1709)

(assert (=> b!123833 (= e!80936 call!13161)))

(declare-fun d!37161 () Bool)

(declare-fun e!80938 () Bool)

(assert (=> d!37161 e!80938))

(declare-fun res!60098 () Bool)

(assert (=> d!37161 (=> (not res!60098) (not e!80938))))

(declare-fun lt!63727 () List!1709)

(assert (=> d!37161 (= res!60098 (isStrictlySorted!310 lt!63727))))

(declare-fun e!80934 () List!1709)

(assert (=> d!37161 (= lt!63727 e!80934)))

(declare-fun c!22500 () Bool)

(assert (=> d!37161 (= c!22500 (and ((_ is Cons!1705) (toList!851 lt!63509)) (bvslt (_1!1283 (h!2306 (toList!851 lt!63509))) (_1!1283 (tuple2!2547 lt!63518 (minValue!2620 (v!3089 (underlying!429 thiss!992))))))))))

(assert (=> d!37161 (isStrictlySorted!310 (toList!851 lt!63509))))

(assert (=> d!37161 (= (insertStrictlySorted!83 (toList!851 lt!63509) (_1!1283 (tuple2!2547 lt!63518 (minValue!2620 (v!3089 (underlying!429 thiss!992))))) (_2!1283 (tuple2!2547 lt!63518 (minValue!2620 (v!3089 (underlying!429 thiss!992)))))) lt!63727)))

(declare-fun c!22499 () Bool)

(declare-fun b!123834 () Bool)

(declare-fun c!22497 () Bool)

(assert (=> b!123834 (= e!80935 (ite c!22497 (t!6020 (toList!851 lt!63509)) (ite c!22499 (Cons!1705 (h!2306 (toList!851 lt!63509)) (t!6020 (toList!851 lt!63509))) Nil!1706)))))

(declare-fun b!123835 () Bool)

(declare-fun e!80937 () List!1709)

(declare-fun call!13159 () List!1709)

(assert (=> b!123835 (= e!80937 call!13159)))

(declare-fun b!123836 () Bool)

(assert (=> b!123836 (= c!22499 (and ((_ is Cons!1705) (toList!851 lt!63509)) (bvsgt (_1!1283 (h!2306 (toList!851 lt!63509))) (_1!1283 (tuple2!2547 lt!63518 (minValue!2620 (v!3089 (underlying!429 thiss!992))))))))))

(assert (=> b!123836 (= e!80936 e!80937)))

(declare-fun b!123837 () Bool)

(assert (=> b!123837 (= e!80938 (contains!869 lt!63727 (tuple2!2547 (_1!1283 (tuple2!2547 lt!63518 (minValue!2620 (v!3089 (underlying!429 thiss!992))))) (_2!1283 (tuple2!2547 lt!63518 (minValue!2620 (v!3089 (underlying!429 thiss!992))))))))))

(declare-fun bm!13156 () Bool)

(declare-fun call!13160 () List!1709)

(assert (=> bm!13156 (= call!13161 call!13160)))

(declare-fun b!123838 () Bool)

(declare-fun res!60097 () Bool)

(assert (=> b!123838 (=> (not res!60097) (not e!80938))))

(assert (=> b!123838 (= res!60097 (containsKey!167 lt!63727 (_1!1283 (tuple2!2547 lt!63518 (minValue!2620 (v!3089 (underlying!429 thiss!992)))))))))

(declare-fun b!123839 () Bool)

(assert (=> b!123839 (= e!80934 call!13160)))

(declare-fun b!123840 () Bool)

(assert (=> b!123840 (= e!80934 e!80936)))

(assert (=> b!123840 (= c!22497 (and ((_ is Cons!1705) (toList!851 lt!63509)) (= (_1!1283 (h!2306 (toList!851 lt!63509))) (_1!1283 (tuple2!2547 lt!63518 (minValue!2620 (v!3089 (underlying!429 thiss!992))))))))))

(declare-fun bm!13157 () Bool)

(assert (=> bm!13157 (= call!13160 ($colon$colon!86 e!80935 (ite c!22500 (h!2306 (toList!851 lt!63509)) (tuple2!2547 (_1!1283 (tuple2!2547 lt!63518 (minValue!2620 (v!3089 (underlying!429 thiss!992))))) (_2!1283 (tuple2!2547 lt!63518 (minValue!2620 (v!3089 (underlying!429 thiss!992)))))))))))

(declare-fun c!22498 () Bool)

(assert (=> bm!13157 (= c!22498 c!22500)))

(declare-fun bm!13158 () Bool)

(assert (=> bm!13158 (= call!13159 call!13161)))

(declare-fun b!123841 () Bool)

(assert (=> b!123841 (= e!80937 call!13159)))

(assert (= (and d!37161 c!22500) b!123839))

(assert (= (and d!37161 (not c!22500)) b!123840))

(assert (= (and b!123840 c!22497) b!123833))

(assert (= (and b!123840 (not c!22497)) b!123836))

(assert (= (and b!123836 c!22499) b!123835))

(assert (= (and b!123836 (not c!22499)) b!123841))

(assert (= (or b!123835 b!123841) bm!13158))

(assert (= (or b!123833 bm!13158) bm!13156))

(assert (= (or b!123839 bm!13156) bm!13157))

(assert (= (and bm!13157 c!22498) b!123832))

(assert (= (and bm!13157 (not c!22498)) b!123834))

(assert (= (and d!37161 res!60098) b!123838))

(assert (= (and b!123838 res!60097) b!123837))

(declare-fun m!144011 () Bool)

(assert (=> d!37161 m!144011))

(declare-fun m!144013 () Bool)

(assert (=> d!37161 m!144013))

(declare-fun m!144015 () Bool)

(assert (=> b!123837 m!144015))

(declare-fun m!144017 () Bool)

(assert (=> b!123832 m!144017))

(declare-fun m!144019 () Bool)

(assert (=> b!123838 m!144019))

(declare-fun m!144021 () Bool)

(assert (=> bm!13157 m!144021))

(assert (=> d!37041 d!37161))

(declare-fun d!37163 () Bool)

(declare-fun e!80940 () Bool)

(assert (=> d!37163 e!80940))

(declare-fun res!60099 () Bool)

(assert (=> d!37163 (=> res!60099 e!80940)))

(declare-fun lt!63729 () Bool)

(assert (=> d!37163 (= res!60099 (not lt!63729))))

(declare-fun lt!63728 () Bool)

(assert (=> d!37163 (= lt!63729 lt!63728)))

(declare-fun lt!63731 () Unit!3846)

(declare-fun e!80939 () Unit!3846)

(assert (=> d!37163 (= lt!63731 e!80939)))

(declare-fun c!22501 () Bool)

(assert (=> d!37163 (= c!22501 lt!63728)))

(assert (=> d!37163 (= lt!63728 (containsKey!167 (toList!851 lt!63618) (_1!1283 (tuple2!2547 lt!63529 (zeroValue!2620 (v!3089 (underlying!429 thiss!992)))))))))

(assert (=> d!37163 (= (contains!868 lt!63618 (_1!1283 (tuple2!2547 lt!63529 (zeroValue!2620 (v!3089 (underlying!429 thiss!992)))))) lt!63729)))

(declare-fun b!123842 () Bool)

(declare-fun lt!63730 () Unit!3846)

(assert (=> b!123842 (= e!80939 lt!63730)))

(assert (=> b!123842 (= lt!63730 (lemmaContainsKeyImpliesGetValueByKeyDefined!116 (toList!851 lt!63618) (_1!1283 (tuple2!2547 lt!63529 (zeroValue!2620 (v!3089 (underlying!429 thiss!992)))))))))

(assert (=> b!123842 (isDefined!117 (getValueByKey!163 (toList!851 lt!63618) (_1!1283 (tuple2!2547 lt!63529 (zeroValue!2620 (v!3089 (underlying!429 thiss!992)))))))))

(declare-fun b!123843 () Bool)

(declare-fun Unit!3863 () Unit!3846)

(assert (=> b!123843 (= e!80939 Unit!3863)))

(declare-fun b!123844 () Bool)

(assert (=> b!123844 (= e!80940 (isDefined!117 (getValueByKey!163 (toList!851 lt!63618) (_1!1283 (tuple2!2547 lt!63529 (zeroValue!2620 (v!3089 (underlying!429 thiss!992))))))))))

(assert (= (and d!37163 c!22501) b!123842))

(assert (= (and d!37163 (not c!22501)) b!123843))

(assert (= (and d!37163 (not res!60099)) b!123844))

(declare-fun m!144023 () Bool)

(assert (=> d!37163 m!144023))

(declare-fun m!144025 () Bool)

(assert (=> b!123842 m!144025))

(assert (=> b!123842 m!143685))

(assert (=> b!123842 m!143685))

(declare-fun m!144027 () Bool)

(assert (=> b!123842 m!144027))

(assert (=> b!123844 m!143685))

(assert (=> b!123844 m!143685))

(assert (=> b!123844 m!144027))

(assert (=> d!37027 d!37163))

(declare-fun d!37165 () Bool)

(declare-fun c!22502 () Bool)

(assert (=> d!37165 (= c!22502 (and ((_ is Cons!1705) lt!63616) (= (_1!1283 (h!2306 lt!63616)) (_1!1283 (tuple2!2547 lt!63529 (zeroValue!2620 (v!3089 (underlying!429 thiss!992))))))))))

(declare-fun e!80941 () Option!169)

(assert (=> d!37165 (= (getValueByKey!163 lt!63616 (_1!1283 (tuple2!2547 lt!63529 (zeroValue!2620 (v!3089 (underlying!429 thiss!992)))))) e!80941)))

(declare-fun b!123846 () Bool)

(declare-fun e!80942 () Option!169)

(assert (=> b!123846 (= e!80941 e!80942)))

(declare-fun c!22503 () Bool)

(assert (=> b!123846 (= c!22503 (and ((_ is Cons!1705) lt!63616) (not (= (_1!1283 (h!2306 lt!63616)) (_1!1283 (tuple2!2547 lt!63529 (zeroValue!2620 (v!3089 (underlying!429 thiss!992)))))))))))

(declare-fun b!123845 () Bool)

(assert (=> b!123845 (= e!80941 (Some!168 (_2!1283 (h!2306 lt!63616))))))

(declare-fun b!123847 () Bool)

(assert (=> b!123847 (= e!80942 (getValueByKey!163 (t!6020 lt!63616) (_1!1283 (tuple2!2547 lt!63529 (zeroValue!2620 (v!3089 (underlying!429 thiss!992)))))))))

(declare-fun b!123848 () Bool)

(assert (=> b!123848 (= e!80942 None!167)))

(assert (= (and d!37165 c!22502) b!123845))

(assert (= (and d!37165 (not c!22502)) b!123846))

(assert (= (and b!123846 c!22503) b!123847))

(assert (= (and b!123846 (not c!22503)) b!123848))

(declare-fun m!144029 () Bool)

(assert (=> b!123847 m!144029))

(assert (=> d!37027 d!37165))

(declare-fun d!37167 () Bool)

(assert (=> d!37167 (= (getValueByKey!163 lt!63616 (_1!1283 (tuple2!2547 lt!63529 (zeroValue!2620 (v!3089 (underlying!429 thiss!992)))))) (Some!168 (_2!1283 (tuple2!2547 lt!63529 (zeroValue!2620 (v!3089 (underlying!429 thiss!992)))))))))

(declare-fun lt!63732 () Unit!3846)

(assert (=> d!37167 (= lt!63732 (choose!753 lt!63616 (_1!1283 (tuple2!2547 lt!63529 (zeroValue!2620 (v!3089 (underlying!429 thiss!992))))) (_2!1283 (tuple2!2547 lt!63529 (zeroValue!2620 (v!3089 (underlying!429 thiss!992)))))))))

(declare-fun e!80943 () Bool)

(assert (=> d!37167 e!80943))

(declare-fun res!60100 () Bool)

(assert (=> d!37167 (=> (not res!60100) (not e!80943))))

(assert (=> d!37167 (= res!60100 (isStrictlySorted!310 lt!63616))))

(assert (=> d!37167 (= (lemmaContainsTupThenGetReturnValue!81 lt!63616 (_1!1283 (tuple2!2547 lt!63529 (zeroValue!2620 (v!3089 (underlying!429 thiss!992))))) (_2!1283 (tuple2!2547 lt!63529 (zeroValue!2620 (v!3089 (underlying!429 thiss!992)))))) lt!63732)))

(declare-fun b!123849 () Bool)

(declare-fun res!60101 () Bool)

(assert (=> b!123849 (=> (not res!60101) (not e!80943))))

(assert (=> b!123849 (= res!60101 (containsKey!167 lt!63616 (_1!1283 (tuple2!2547 lt!63529 (zeroValue!2620 (v!3089 (underlying!429 thiss!992)))))))))

(declare-fun b!123850 () Bool)

(assert (=> b!123850 (= e!80943 (contains!869 lt!63616 (tuple2!2547 (_1!1283 (tuple2!2547 lt!63529 (zeroValue!2620 (v!3089 (underlying!429 thiss!992))))) (_2!1283 (tuple2!2547 lt!63529 (zeroValue!2620 (v!3089 (underlying!429 thiss!992))))))))))

(assert (= (and d!37167 res!60100) b!123849))

(assert (= (and b!123849 res!60101) b!123850))

(assert (=> d!37167 m!143679))

(declare-fun m!144031 () Bool)

(assert (=> d!37167 m!144031))

(declare-fun m!144033 () Bool)

(assert (=> d!37167 m!144033))

(declare-fun m!144035 () Bool)

(assert (=> b!123849 m!144035))

(declare-fun m!144037 () Bool)

(assert (=> b!123850 m!144037))

(assert (=> d!37027 d!37167))

(declare-fun b!123851 () Bool)

(declare-fun e!80945 () List!1709)

(assert (=> b!123851 (= e!80945 (insertStrictlySorted!83 (t!6020 (toList!851 lt!63523)) (_1!1283 (tuple2!2547 lt!63529 (zeroValue!2620 (v!3089 (underlying!429 thiss!992))))) (_2!1283 (tuple2!2547 lt!63529 (zeroValue!2620 (v!3089 (underlying!429 thiss!992)))))))))

(declare-fun b!123852 () Bool)

(declare-fun e!80946 () List!1709)

(declare-fun call!13164 () List!1709)

(assert (=> b!123852 (= e!80946 call!13164)))

(declare-fun d!37169 () Bool)

(declare-fun e!80948 () Bool)

(assert (=> d!37169 e!80948))

(declare-fun res!60103 () Bool)

(assert (=> d!37169 (=> (not res!60103) (not e!80948))))

(declare-fun lt!63733 () List!1709)

(assert (=> d!37169 (= res!60103 (isStrictlySorted!310 lt!63733))))

(declare-fun e!80944 () List!1709)

(assert (=> d!37169 (= lt!63733 e!80944)))

(declare-fun c!22507 () Bool)

(assert (=> d!37169 (= c!22507 (and ((_ is Cons!1705) (toList!851 lt!63523)) (bvslt (_1!1283 (h!2306 (toList!851 lt!63523))) (_1!1283 (tuple2!2547 lt!63529 (zeroValue!2620 (v!3089 (underlying!429 thiss!992))))))))))

(assert (=> d!37169 (isStrictlySorted!310 (toList!851 lt!63523))))

(assert (=> d!37169 (= (insertStrictlySorted!83 (toList!851 lt!63523) (_1!1283 (tuple2!2547 lt!63529 (zeroValue!2620 (v!3089 (underlying!429 thiss!992))))) (_2!1283 (tuple2!2547 lt!63529 (zeroValue!2620 (v!3089 (underlying!429 thiss!992)))))) lt!63733)))

(declare-fun c!22504 () Bool)

(declare-fun c!22506 () Bool)

(declare-fun b!123853 () Bool)

(assert (=> b!123853 (= e!80945 (ite c!22504 (t!6020 (toList!851 lt!63523)) (ite c!22506 (Cons!1705 (h!2306 (toList!851 lt!63523)) (t!6020 (toList!851 lt!63523))) Nil!1706)))))

(declare-fun b!123854 () Bool)

(declare-fun e!80947 () List!1709)

(declare-fun call!13162 () List!1709)

(assert (=> b!123854 (= e!80947 call!13162)))

(declare-fun b!123855 () Bool)

(assert (=> b!123855 (= c!22506 (and ((_ is Cons!1705) (toList!851 lt!63523)) (bvsgt (_1!1283 (h!2306 (toList!851 lt!63523))) (_1!1283 (tuple2!2547 lt!63529 (zeroValue!2620 (v!3089 (underlying!429 thiss!992))))))))))

(assert (=> b!123855 (= e!80946 e!80947)))

(declare-fun b!123856 () Bool)

(assert (=> b!123856 (= e!80948 (contains!869 lt!63733 (tuple2!2547 (_1!1283 (tuple2!2547 lt!63529 (zeroValue!2620 (v!3089 (underlying!429 thiss!992))))) (_2!1283 (tuple2!2547 lt!63529 (zeroValue!2620 (v!3089 (underlying!429 thiss!992))))))))))

(declare-fun bm!13159 () Bool)

(declare-fun call!13163 () List!1709)

(assert (=> bm!13159 (= call!13164 call!13163)))

(declare-fun b!123857 () Bool)

(declare-fun res!60102 () Bool)

(assert (=> b!123857 (=> (not res!60102) (not e!80948))))

(assert (=> b!123857 (= res!60102 (containsKey!167 lt!63733 (_1!1283 (tuple2!2547 lt!63529 (zeroValue!2620 (v!3089 (underlying!429 thiss!992)))))))))

(declare-fun b!123858 () Bool)

(assert (=> b!123858 (= e!80944 call!13163)))

(declare-fun b!123859 () Bool)

(assert (=> b!123859 (= e!80944 e!80946)))

(assert (=> b!123859 (= c!22504 (and ((_ is Cons!1705) (toList!851 lt!63523)) (= (_1!1283 (h!2306 (toList!851 lt!63523))) (_1!1283 (tuple2!2547 lt!63529 (zeroValue!2620 (v!3089 (underlying!429 thiss!992))))))))))

(declare-fun bm!13160 () Bool)

(assert (=> bm!13160 (= call!13163 ($colon$colon!86 e!80945 (ite c!22507 (h!2306 (toList!851 lt!63523)) (tuple2!2547 (_1!1283 (tuple2!2547 lt!63529 (zeroValue!2620 (v!3089 (underlying!429 thiss!992))))) (_2!1283 (tuple2!2547 lt!63529 (zeroValue!2620 (v!3089 (underlying!429 thiss!992)))))))))))

(declare-fun c!22505 () Bool)

(assert (=> bm!13160 (= c!22505 c!22507)))

(declare-fun bm!13161 () Bool)

(assert (=> bm!13161 (= call!13162 call!13164)))

(declare-fun b!123860 () Bool)

(assert (=> b!123860 (= e!80947 call!13162)))

(assert (= (and d!37169 c!22507) b!123858))

(assert (= (and d!37169 (not c!22507)) b!123859))

(assert (= (and b!123859 c!22504) b!123852))

(assert (= (and b!123859 (not c!22504)) b!123855))

(assert (= (and b!123855 c!22506) b!123854))

(assert (= (and b!123855 (not c!22506)) b!123860))

(assert (= (or b!123854 b!123860) bm!13161))

(assert (= (or b!123852 bm!13161) bm!13159))

(assert (= (or b!123858 bm!13159) bm!13160))

(assert (= (and bm!13160 c!22505) b!123851))

(assert (= (and bm!13160 (not c!22505)) b!123853))

(assert (= (and d!37169 res!60103) b!123857))

(assert (= (and b!123857 res!60102) b!123856))

(declare-fun m!144039 () Bool)

(assert (=> d!37169 m!144039))

(declare-fun m!144041 () Bool)

(assert (=> d!37169 m!144041))

(declare-fun m!144043 () Bool)

(assert (=> b!123856 m!144043))

(declare-fun m!144045 () Bool)

(assert (=> b!123851 m!144045))

(declare-fun m!144047 () Bool)

(assert (=> b!123857 m!144047))

(declare-fun m!144049 () Bool)

(assert (=> bm!13160 m!144049))

(assert (=> d!37027 d!37169))

(declare-fun d!37171 () Bool)

(declare-fun res!60104 () Bool)

(declare-fun e!80949 () Bool)

(assert (=> d!37171 (=> res!60104 e!80949)))

(assert (=> d!37171 (= res!60104 (and ((_ is Cons!1705) (toList!851 (+!162 lt!63528 (tuple2!2547 lt!63513 (zeroValue!2620 (v!3089 (underlying!429 thiss!992))))))) (= (_1!1283 (h!2306 (toList!851 (+!162 lt!63528 (tuple2!2547 lt!63513 (zeroValue!2620 (v!3089 (underlying!429 thiss!992)))))))) lt!63526)))))

(assert (=> d!37171 (= (containsKey!167 (toList!851 (+!162 lt!63528 (tuple2!2547 lt!63513 (zeroValue!2620 (v!3089 (underlying!429 thiss!992)))))) lt!63526) e!80949)))

(declare-fun b!123861 () Bool)

(declare-fun e!80950 () Bool)

(assert (=> b!123861 (= e!80949 e!80950)))

(declare-fun res!60105 () Bool)

(assert (=> b!123861 (=> (not res!60105) (not e!80950))))

(assert (=> b!123861 (= res!60105 (and (or (not ((_ is Cons!1705) (toList!851 (+!162 lt!63528 (tuple2!2547 lt!63513 (zeroValue!2620 (v!3089 (underlying!429 thiss!992)))))))) (bvsle (_1!1283 (h!2306 (toList!851 (+!162 lt!63528 (tuple2!2547 lt!63513 (zeroValue!2620 (v!3089 (underlying!429 thiss!992)))))))) lt!63526)) ((_ is Cons!1705) (toList!851 (+!162 lt!63528 (tuple2!2547 lt!63513 (zeroValue!2620 (v!3089 (underlying!429 thiss!992))))))) (bvslt (_1!1283 (h!2306 (toList!851 (+!162 lt!63528 (tuple2!2547 lt!63513 (zeroValue!2620 (v!3089 (underlying!429 thiss!992)))))))) lt!63526)))))

(declare-fun b!123862 () Bool)

(assert (=> b!123862 (= e!80950 (containsKey!167 (t!6020 (toList!851 (+!162 lt!63528 (tuple2!2547 lt!63513 (zeroValue!2620 (v!3089 (underlying!429 thiss!992))))))) lt!63526))))

(assert (= (and d!37171 (not res!60104)) b!123861))

(assert (= (and b!123861 res!60105) b!123862))

(declare-fun m!144051 () Bool)

(assert (=> b!123862 m!144051))

(assert (=> d!37029 d!37171))

(assert (=> b!123583 d!37143))

(assert (=> b!123583 d!37145))

(declare-fun d!37173 () Bool)

(assert (=> d!37173 (arrayContainsKey!0 (_keys!4482 newMap!16) lt!63646 #b00000000000000000000000000000000)))

(declare-fun lt!63736 () Unit!3846)

(declare-fun choose!13 (array!4656 (_ BitVec 64) (_ BitVec 32)) Unit!3846)

(assert (=> d!37173 (= lt!63736 (choose!13 (_keys!4482 newMap!16) lt!63646 #b00000000000000000000000000000000))))

(assert (=> d!37173 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(assert (=> d!37173 (= (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!4482 newMap!16) lt!63646 #b00000000000000000000000000000000) lt!63736)))

(declare-fun bs!5127 () Bool)

(assert (= bs!5127 d!37173))

(assert (=> bs!5127 m!143757))

(declare-fun m!144053 () Bool)

(assert (=> bs!5127 m!144053))

(assert (=> b!123646 d!37173))

(declare-fun d!37175 () Bool)

(declare-fun res!60110 () Bool)

(declare-fun e!80955 () Bool)

(assert (=> d!37175 (=> res!60110 e!80955)))

(assert (=> d!37175 (= res!60110 (= (select (arr!2206 (_keys!4482 newMap!16)) #b00000000000000000000000000000000) lt!63646))))

(assert (=> d!37175 (= (arrayContainsKey!0 (_keys!4482 newMap!16) lt!63646 #b00000000000000000000000000000000) e!80955)))

(declare-fun b!123867 () Bool)

(declare-fun e!80956 () Bool)

(assert (=> b!123867 (= e!80955 e!80956)))

(declare-fun res!60111 () Bool)

(assert (=> b!123867 (=> (not res!60111) (not e!80956))))

(assert (=> b!123867 (= res!60111 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!2468 (_keys!4482 newMap!16))))))

(declare-fun b!123868 () Bool)

(assert (=> b!123868 (= e!80956 (arrayContainsKey!0 (_keys!4482 newMap!16) lt!63646 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!37175 (not res!60110)) b!123867))

(assert (= (and b!123867 res!60111) b!123868))

(assert (=> d!37175 m!143539))

(declare-fun m!144055 () Bool)

(assert (=> b!123868 m!144055))

(assert (=> b!123646 d!37175))

(declare-fun b!123881 () Bool)

(declare-fun e!80964 () SeekEntryResult!277)

(declare-fun e!80963 () SeekEntryResult!277)

(assert (=> b!123881 (= e!80964 e!80963)))

(declare-fun lt!63743 () (_ BitVec 64))

(declare-fun lt!63745 () SeekEntryResult!277)

(assert (=> b!123881 (= lt!63743 (select (arr!2206 (_keys!4482 newMap!16)) (index!3264 lt!63745)))))

(declare-fun c!22515 () Bool)

(assert (=> b!123881 (= c!22515 (= lt!63743 (select (arr!2206 (_keys!4482 newMap!16)) #b00000000000000000000000000000000)))))

(declare-fun b!123882 () Bool)

(declare-fun c!22514 () Bool)

(assert (=> b!123882 (= c!22514 (= lt!63743 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!80965 () SeekEntryResult!277)

(assert (=> b!123882 (= e!80963 e!80965)))

(declare-fun b!123883 () Bool)

(assert (=> b!123883 (= e!80965 (MissingZero!277 (index!3264 lt!63745)))))

(declare-fun b!123884 () Bool)

(assert (=> b!123884 (= e!80964 Undefined!277)))

(declare-fun d!37177 () Bool)

(declare-fun lt!63744 () SeekEntryResult!277)

(assert (=> d!37177 (and (or ((_ is Undefined!277) lt!63744) (not ((_ is Found!277) lt!63744)) (and (bvsge (index!3263 lt!63744) #b00000000000000000000000000000000) (bvslt (index!3263 lt!63744) (size!2468 (_keys!4482 newMap!16))))) (or ((_ is Undefined!277) lt!63744) ((_ is Found!277) lt!63744) (not ((_ is MissingZero!277) lt!63744)) (and (bvsge (index!3262 lt!63744) #b00000000000000000000000000000000) (bvslt (index!3262 lt!63744) (size!2468 (_keys!4482 newMap!16))))) (or ((_ is Undefined!277) lt!63744) ((_ is Found!277) lt!63744) ((_ is MissingZero!277) lt!63744) (not ((_ is MissingVacant!277) lt!63744)) (and (bvsge (index!3265 lt!63744) #b00000000000000000000000000000000) (bvslt (index!3265 lt!63744) (size!2468 (_keys!4482 newMap!16))))) (or ((_ is Undefined!277) lt!63744) (ite ((_ is Found!277) lt!63744) (= (select (arr!2206 (_keys!4482 newMap!16)) (index!3263 lt!63744)) (select (arr!2206 (_keys!4482 newMap!16)) #b00000000000000000000000000000000)) (ite ((_ is MissingZero!277) lt!63744) (= (select (arr!2206 (_keys!4482 newMap!16)) (index!3262 lt!63744)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!277) lt!63744) (= (select (arr!2206 (_keys!4482 newMap!16)) (index!3265 lt!63744)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!37177 (= lt!63744 e!80964)))

(declare-fun c!22516 () Bool)

(assert (=> d!37177 (= c!22516 (and ((_ is Intermediate!277) lt!63745) (undefined!1089 lt!63745)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!4656 (_ BitVec 32)) SeekEntryResult!277)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!37177 (= lt!63745 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!2206 (_keys!4482 newMap!16)) #b00000000000000000000000000000000) (mask!6993 newMap!16)) (select (arr!2206 (_keys!4482 newMap!16)) #b00000000000000000000000000000000) (_keys!4482 newMap!16) (mask!6993 newMap!16)))))

(assert (=> d!37177 (validMask!0 (mask!6993 newMap!16))))

(assert (=> d!37177 (= (seekEntryOrOpen!0 (select (arr!2206 (_keys!4482 newMap!16)) #b00000000000000000000000000000000) (_keys!4482 newMap!16) (mask!6993 newMap!16)) lt!63744)))

(declare-fun b!123885 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!4656 (_ BitVec 32)) SeekEntryResult!277)

(assert (=> b!123885 (= e!80965 (seekKeyOrZeroReturnVacant!0 (x!14738 lt!63745) (index!3264 lt!63745) (index!3264 lt!63745) (select (arr!2206 (_keys!4482 newMap!16)) #b00000000000000000000000000000000) (_keys!4482 newMap!16) (mask!6993 newMap!16)))))

(declare-fun b!123886 () Bool)

(assert (=> b!123886 (= e!80963 (Found!277 (index!3264 lt!63745)))))

(assert (= (and d!37177 c!22516) b!123884))

(assert (= (and d!37177 (not c!22516)) b!123881))

(assert (= (and b!123881 c!22515) b!123886))

(assert (= (and b!123881 (not c!22515)) b!123882))

(assert (= (and b!123882 c!22514) b!123883))

(assert (= (and b!123882 (not c!22514)) b!123885))

(declare-fun m!144057 () Bool)

(assert (=> b!123881 m!144057))

(assert (=> d!37177 m!143505))

(declare-fun m!144059 () Bool)

(assert (=> d!37177 m!144059))

(declare-fun m!144061 () Bool)

(assert (=> d!37177 m!144061))

(assert (=> d!37177 m!143539))

(declare-fun m!144063 () Bool)

(assert (=> d!37177 m!144063))

(declare-fun m!144065 () Bool)

(assert (=> d!37177 m!144065))

(assert (=> d!37177 m!143539))

(assert (=> d!37177 m!144061))

(declare-fun m!144067 () Bool)

(assert (=> d!37177 m!144067))

(assert (=> b!123885 m!143539))

(declare-fun m!144069 () Bool)

(assert (=> b!123885 m!144069))

(assert (=> b!123646 d!37177))

(declare-fun d!37179 () Bool)

(assert (=> d!37179 (= (get!1434 (getValueByKey!163 (toList!851 (+!162 lt!63509 (tuple2!2547 lt!63518 (minValue!2620 (v!3089 (underlying!429 thiss!992)))))) lt!63512)) (v!3092 (getValueByKey!163 (toList!851 (+!162 lt!63509 (tuple2!2547 lt!63518 (minValue!2620 (v!3089 (underlying!429 thiss!992)))))) lt!63512)))))

(assert (=> d!37031 d!37179))

(declare-fun c!22517 () Bool)

(declare-fun d!37181 () Bool)

(assert (=> d!37181 (= c!22517 (and ((_ is Cons!1705) (toList!851 (+!162 lt!63509 (tuple2!2547 lt!63518 (minValue!2620 (v!3089 (underlying!429 thiss!992))))))) (= (_1!1283 (h!2306 (toList!851 (+!162 lt!63509 (tuple2!2547 lt!63518 (minValue!2620 (v!3089 (underlying!429 thiss!992)))))))) lt!63512)))))

(declare-fun e!80966 () Option!169)

(assert (=> d!37181 (= (getValueByKey!163 (toList!851 (+!162 lt!63509 (tuple2!2547 lt!63518 (minValue!2620 (v!3089 (underlying!429 thiss!992)))))) lt!63512) e!80966)))

(declare-fun b!123888 () Bool)

(declare-fun e!80967 () Option!169)

(assert (=> b!123888 (= e!80966 e!80967)))

(declare-fun c!22518 () Bool)

(assert (=> b!123888 (= c!22518 (and ((_ is Cons!1705) (toList!851 (+!162 lt!63509 (tuple2!2547 lt!63518 (minValue!2620 (v!3089 (underlying!429 thiss!992))))))) (not (= (_1!1283 (h!2306 (toList!851 (+!162 lt!63509 (tuple2!2547 lt!63518 (minValue!2620 (v!3089 (underlying!429 thiss!992)))))))) lt!63512))))))

(declare-fun b!123887 () Bool)

(assert (=> b!123887 (= e!80966 (Some!168 (_2!1283 (h!2306 (toList!851 (+!162 lt!63509 (tuple2!2547 lt!63518 (minValue!2620 (v!3089 (underlying!429 thiss!992))))))))))))

(declare-fun b!123889 () Bool)

(assert (=> b!123889 (= e!80967 (getValueByKey!163 (t!6020 (toList!851 (+!162 lt!63509 (tuple2!2547 lt!63518 (minValue!2620 (v!3089 (underlying!429 thiss!992))))))) lt!63512))))

(declare-fun b!123890 () Bool)

(assert (=> b!123890 (= e!80967 None!167)))

(assert (= (and d!37181 c!22517) b!123887))

(assert (= (and d!37181 (not c!22517)) b!123888))

(assert (= (and b!123888 c!22518) b!123889))

(assert (= (and b!123888 (not c!22518)) b!123890))

(declare-fun m!144071 () Bool)

(assert (=> b!123889 m!144071))

(assert (=> d!37031 d!37181))

(declare-fun d!37183 () Bool)

(declare-fun e!80969 () Bool)

(assert (=> d!37183 e!80969))

(declare-fun res!60112 () Bool)

(assert (=> d!37183 (=> res!60112 e!80969)))

(declare-fun lt!63747 () Bool)

(assert (=> d!37183 (= res!60112 (not lt!63747))))

(declare-fun lt!63746 () Bool)

(assert (=> d!37183 (= lt!63747 lt!63746)))

(declare-fun lt!63749 () Unit!3846)

(declare-fun e!80968 () Unit!3846)

(assert (=> d!37183 (= lt!63749 e!80968)))

(declare-fun c!22519 () Bool)

(assert (=> d!37183 (= c!22519 lt!63746)))

(assert (=> d!37183 (= lt!63746 (containsKey!167 (toList!851 lt!63580) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!37183 (= (contains!868 lt!63580 #b1000000000000000000000000000000000000000000000000000000000000000) lt!63747)))

(declare-fun b!123891 () Bool)

(declare-fun lt!63748 () Unit!3846)

(assert (=> b!123891 (= e!80968 lt!63748)))

(assert (=> b!123891 (= lt!63748 (lemmaContainsKeyImpliesGetValueByKeyDefined!116 (toList!851 lt!63580) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!123891 (isDefined!117 (getValueByKey!163 (toList!851 lt!63580) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!123892 () Bool)

(declare-fun Unit!3864 () Unit!3846)

(assert (=> b!123892 (= e!80968 Unit!3864)))

(declare-fun b!123893 () Bool)

(assert (=> b!123893 (= e!80969 (isDefined!117 (getValueByKey!163 (toList!851 lt!63580) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!37183 c!22519) b!123891))

(assert (= (and d!37183 (not c!22519)) b!123892))

(assert (= (and d!37183 (not res!60112)) b!123893))

(declare-fun m!144073 () Bool)

(assert (=> d!37183 m!144073))

(declare-fun m!144075 () Bool)

(assert (=> b!123891 m!144075))

(declare-fun m!144077 () Bool)

(assert (=> b!123891 m!144077))

(assert (=> b!123891 m!144077))

(declare-fun m!144079 () Bool)

(assert (=> b!123891 m!144079))

(assert (=> b!123893 m!144077))

(assert (=> b!123893 m!144077))

(assert (=> b!123893 m!144079))

(assert (=> bm!13130 d!37183))

(declare-fun d!37185 () Bool)

(assert (=> d!37185 (= (get!1434 (getValueByKey!163 (toList!851 lt!63525) #b0000000000000000000000000000000000000000000000000000000000000000)) (v!3092 (getValueByKey!163 (toList!851 lt!63525) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!37049 d!37185))

(assert (=> d!37049 d!37069))

(declare-fun d!37187 () Bool)

(declare-fun e!80971 () Bool)

(assert (=> d!37187 e!80971))

(declare-fun res!60113 () Bool)

(assert (=> d!37187 (=> res!60113 e!80971)))

(declare-fun lt!63751 () Bool)

(assert (=> d!37187 (= res!60113 (not lt!63751))))

(declare-fun lt!63750 () Bool)

(assert (=> d!37187 (= lt!63751 lt!63750)))

(declare-fun lt!63753 () Unit!3846)

(declare-fun e!80970 () Unit!3846)

(assert (=> d!37187 (= lt!63753 e!80970)))

(declare-fun c!22520 () Bool)

(assert (=> d!37187 (= c!22520 lt!63750)))

(assert (=> d!37187 (= lt!63750 (containsKey!167 (toList!851 lt!63561) (_1!1283 (ite (or c!22399 c!22402) (tuple2!2547 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2620 (v!3089 (underlying!429 thiss!992)))) (tuple2!2547 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2620 (v!3089 (underlying!429 thiss!992))))))))))

(assert (=> d!37187 (= (contains!868 lt!63561 (_1!1283 (ite (or c!22399 c!22402) (tuple2!2547 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2620 (v!3089 (underlying!429 thiss!992)))) (tuple2!2547 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2620 (v!3089 (underlying!429 thiss!992))))))) lt!63751)))

(declare-fun b!123894 () Bool)

(declare-fun lt!63752 () Unit!3846)

(assert (=> b!123894 (= e!80970 lt!63752)))

(assert (=> b!123894 (= lt!63752 (lemmaContainsKeyImpliesGetValueByKeyDefined!116 (toList!851 lt!63561) (_1!1283 (ite (or c!22399 c!22402) (tuple2!2547 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2620 (v!3089 (underlying!429 thiss!992)))) (tuple2!2547 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2620 (v!3089 (underlying!429 thiss!992))))))))))

(assert (=> b!123894 (isDefined!117 (getValueByKey!163 (toList!851 lt!63561) (_1!1283 (ite (or c!22399 c!22402) (tuple2!2547 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2620 (v!3089 (underlying!429 thiss!992)))) (tuple2!2547 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2620 (v!3089 (underlying!429 thiss!992))))))))))

(declare-fun b!123895 () Bool)

(declare-fun Unit!3865 () Unit!3846)

(assert (=> b!123895 (= e!80970 Unit!3865)))

(declare-fun b!123896 () Bool)

(assert (=> b!123896 (= e!80971 (isDefined!117 (getValueByKey!163 (toList!851 lt!63561) (_1!1283 (ite (or c!22399 c!22402) (tuple2!2547 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2620 (v!3089 (underlying!429 thiss!992)))) (tuple2!2547 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2620 (v!3089 (underlying!429 thiss!992)))))))))))

(assert (= (and d!37187 c!22520) b!123894))

(assert (= (and d!37187 (not c!22520)) b!123895))

(assert (= (and d!37187 (not res!60113)) b!123896))

(declare-fun m!144081 () Bool)

(assert (=> d!37187 m!144081))

(declare-fun m!144083 () Bool)

(assert (=> b!123894 m!144083))

(assert (=> b!123894 m!143535))

(assert (=> b!123894 m!143535))

(declare-fun m!144085 () Bool)

(assert (=> b!123894 m!144085))

(assert (=> b!123896 m!143535))

(assert (=> b!123896 m!143535))

(assert (=> b!123896 m!144085))

(assert (=> d!36993 d!37187))

(declare-fun c!22521 () Bool)

(declare-fun d!37189 () Bool)

(assert (=> d!37189 (= c!22521 (and ((_ is Cons!1705) lt!63559) (= (_1!1283 (h!2306 lt!63559)) (_1!1283 (ite (or c!22399 c!22402) (tuple2!2547 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2620 (v!3089 (underlying!429 thiss!992)))) (tuple2!2547 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2620 (v!3089 (underlying!429 thiss!992)))))))))))

(declare-fun e!80972 () Option!169)

(assert (=> d!37189 (= (getValueByKey!163 lt!63559 (_1!1283 (ite (or c!22399 c!22402) (tuple2!2547 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2620 (v!3089 (underlying!429 thiss!992)))) (tuple2!2547 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2620 (v!3089 (underlying!429 thiss!992))))))) e!80972)))

(declare-fun b!123898 () Bool)

(declare-fun e!80973 () Option!169)

(assert (=> b!123898 (= e!80972 e!80973)))

(declare-fun c!22522 () Bool)

(assert (=> b!123898 (= c!22522 (and ((_ is Cons!1705) lt!63559) (not (= (_1!1283 (h!2306 lt!63559)) (_1!1283 (ite (or c!22399 c!22402) (tuple2!2547 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2620 (v!3089 (underlying!429 thiss!992)))) (tuple2!2547 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2620 (v!3089 (underlying!429 thiss!992))))))))))))

(declare-fun b!123897 () Bool)

(assert (=> b!123897 (= e!80972 (Some!168 (_2!1283 (h!2306 lt!63559))))))

(declare-fun b!123899 () Bool)

(assert (=> b!123899 (= e!80973 (getValueByKey!163 (t!6020 lt!63559) (_1!1283 (ite (or c!22399 c!22402) (tuple2!2547 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2620 (v!3089 (underlying!429 thiss!992)))) (tuple2!2547 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2620 (v!3089 (underlying!429 thiss!992))))))))))

(declare-fun b!123900 () Bool)

(assert (=> b!123900 (= e!80973 None!167)))

(assert (= (and d!37189 c!22521) b!123897))

(assert (= (and d!37189 (not c!22521)) b!123898))

(assert (= (and b!123898 c!22522) b!123899))

(assert (= (and b!123898 (not c!22522)) b!123900))

(declare-fun m!144087 () Bool)

(assert (=> b!123899 m!144087))

(assert (=> d!36993 d!37189))

(declare-fun d!37191 () Bool)

(assert (=> d!37191 (= (getValueByKey!163 lt!63559 (_1!1283 (ite (or c!22399 c!22402) (tuple2!2547 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2620 (v!3089 (underlying!429 thiss!992)))) (tuple2!2547 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2620 (v!3089 (underlying!429 thiss!992))))))) (Some!168 (_2!1283 (ite (or c!22399 c!22402) (tuple2!2547 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2620 (v!3089 (underlying!429 thiss!992)))) (tuple2!2547 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2620 (v!3089 (underlying!429 thiss!992))))))))))

(declare-fun lt!63754 () Unit!3846)

(assert (=> d!37191 (= lt!63754 (choose!753 lt!63559 (_1!1283 (ite (or c!22399 c!22402) (tuple2!2547 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2620 (v!3089 (underlying!429 thiss!992)))) (tuple2!2547 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2620 (v!3089 (underlying!429 thiss!992)))))) (_2!1283 (ite (or c!22399 c!22402) (tuple2!2547 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2620 (v!3089 (underlying!429 thiss!992)))) (tuple2!2547 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2620 (v!3089 (underlying!429 thiss!992))))))))))

(declare-fun e!80974 () Bool)

(assert (=> d!37191 e!80974))

(declare-fun res!60114 () Bool)

(assert (=> d!37191 (=> (not res!60114) (not e!80974))))

(assert (=> d!37191 (= res!60114 (isStrictlySorted!310 lt!63559))))

(assert (=> d!37191 (= (lemmaContainsTupThenGetReturnValue!81 lt!63559 (_1!1283 (ite (or c!22399 c!22402) (tuple2!2547 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2620 (v!3089 (underlying!429 thiss!992)))) (tuple2!2547 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2620 (v!3089 (underlying!429 thiss!992)))))) (_2!1283 (ite (or c!22399 c!22402) (tuple2!2547 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2620 (v!3089 (underlying!429 thiss!992)))) (tuple2!2547 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2620 (v!3089 (underlying!429 thiss!992))))))) lt!63754)))

(declare-fun b!123901 () Bool)

(declare-fun res!60115 () Bool)

(assert (=> b!123901 (=> (not res!60115) (not e!80974))))

(assert (=> b!123901 (= res!60115 (containsKey!167 lt!63559 (_1!1283 (ite (or c!22399 c!22402) (tuple2!2547 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2620 (v!3089 (underlying!429 thiss!992)))) (tuple2!2547 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2620 (v!3089 (underlying!429 thiss!992))))))))))

(declare-fun b!123902 () Bool)

(assert (=> b!123902 (= e!80974 (contains!869 lt!63559 (tuple2!2547 (_1!1283 (ite (or c!22399 c!22402) (tuple2!2547 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2620 (v!3089 (underlying!429 thiss!992)))) (tuple2!2547 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2620 (v!3089 (underlying!429 thiss!992)))))) (_2!1283 (ite (or c!22399 c!22402) (tuple2!2547 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2620 (v!3089 (underlying!429 thiss!992)))) (tuple2!2547 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2620 (v!3089 (underlying!429 thiss!992)))))))))))

(assert (= (and d!37191 res!60114) b!123901))

(assert (= (and b!123901 res!60115) b!123902))

(assert (=> d!37191 m!143529))

(declare-fun m!144089 () Bool)

(assert (=> d!37191 m!144089))

(declare-fun m!144091 () Bool)

(assert (=> d!37191 m!144091))

(declare-fun m!144093 () Bool)

(assert (=> b!123901 m!144093))

(declare-fun m!144095 () Bool)

(assert (=> b!123902 m!144095))

(assert (=> d!36993 d!37191))

(declare-fun b!123903 () Bool)

(declare-fun e!80976 () List!1709)

(assert (=> b!123903 (= e!80976 (insertStrictlySorted!83 (t!6020 (toList!851 (ite c!22399 call!13124 (ite c!22402 call!13126 call!13125)))) (_1!1283 (ite (or c!22399 c!22402) (tuple2!2547 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2620 (v!3089 (underlying!429 thiss!992)))) (tuple2!2547 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2620 (v!3089 (underlying!429 thiss!992)))))) (_2!1283 (ite (or c!22399 c!22402) (tuple2!2547 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2620 (v!3089 (underlying!429 thiss!992)))) (tuple2!2547 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2620 (v!3089 (underlying!429 thiss!992))))))))))

(declare-fun b!123904 () Bool)

(declare-fun e!80977 () List!1709)

(declare-fun call!13167 () List!1709)

(assert (=> b!123904 (= e!80977 call!13167)))

(declare-fun d!37193 () Bool)

(declare-fun e!80979 () Bool)

(assert (=> d!37193 e!80979))

(declare-fun res!60117 () Bool)

(assert (=> d!37193 (=> (not res!60117) (not e!80979))))

(declare-fun lt!63755 () List!1709)

(assert (=> d!37193 (= res!60117 (isStrictlySorted!310 lt!63755))))

(declare-fun e!80975 () List!1709)

(assert (=> d!37193 (= lt!63755 e!80975)))

(declare-fun c!22526 () Bool)

(assert (=> d!37193 (= c!22526 (and ((_ is Cons!1705) (toList!851 (ite c!22399 call!13124 (ite c!22402 call!13126 call!13125)))) (bvslt (_1!1283 (h!2306 (toList!851 (ite c!22399 call!13124 (ite c!22402 call!13126 call!13125))))) (_1!1283 (ite (or c!22399 c!22402) (tuple2!2547 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2620 (v!3089 (underlying!429 thiss!992)))) (tuple2!2547 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2620 (v!3089 (underlying!429 thiss!992)))))))))))

(assert (=> d!37193 (isStrictlySorted!310 (toList!851 (ite c!22399 call!13124 (ite c!22402 call!13126 call!13125))))))

(assert (=> d!37193 (= (insertStrictlySorted!83 (toList!851 (ite c!22399 call!13124 (ite c!22402 call!13126 call!13125))) (_1!1283 (ite (or c!22399 c!22402) (tuple2!2547 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2620 (v!3089 (underlying!429 thiss!992)))) (tuple2!2547 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2620 (v!3089 (underlying!429 thiss!992)))))) (_2!1283 (ite (or c!22399 c!22402) (tuple2!2547 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2620 (v!3089 (underlying!429 thiss!992)))) (tuple2!2547 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2620 (v!3089 (underlying!429 thiss!992))))))) lt!63755)))

(declare-fun b!123905 () Bool)

(declare-fun c!22523 () Bool)

(declare-fun c!22525 () Bool)

(assert (=> b!123905 (= e!80976 (ite c!22523 (t!6020 (toList!851 (ite c!22399 call!13124 (ite c!22402 call!13126 call!13125)))) (ite c!22525 (Cons!1705 (h!2306 (toList!851 (ite c!22399 call!13124 (ite c!22402 call!13126 call!13125)))) (t!6020 (toList!851 (ite c!22399 call!13124 (ite c!22402 call!13126 call!13125))))) Nil!1706)))))

(declare-fun b!123906 () Bool)

(declare-fun e!80978 () List!1709)

(declare-fun call!13165 () List!1709)

(assert (=> b!123906 (= e!80978 call!13165)))

(declare-fun b!123907 () Bool)

(assert (=> b!123907 (= c!22525 (and ((_ is Cons!1705) (toList!851 (ite c!22399 call!13124 (ite c!22402 call!13126 call!13125)))) (bvsgt (_1!1283 (h!2306 (toList!851 (ite c!22399 call!13124 (ite c!22402 call!13126 call!13125))))) (_1!1283 (ite (or c!22399 c!22402) (tuple2!2547 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2620 (v!3089 (underlying!429 thiss!992)))) (tuple2!2547 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2620 (v!3089 (underlying!429 thiss!992)))))))))))

(assert (=> b!123907 (= e!80977 e!80978)))

(declare-fun b!123908 () Bool)

(assert (=> b!123908 (= e!80979 (contains!869 lt!63755 (tuple2!2547 (_1!1283 (ite (or c!22399 c!22402) (tuple2!2547 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2620 (v!3089 (underlying!429 thiss!992)))) (tuple2!2547 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2620 (v!3089 (underlying!429 thiss!992)))))) (_2!1283 (ite (or c!22399 c!22402) (tuple2!2547 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2620 (v!3089 (underlying!429 thiss!992)))) (tuple2!2547 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2620 (v!3089 (underlying!429 thiss!992)))))))))))

(declare-fun bm!13162 () Bool)

(declare-fun call!13166 () List!1709)

(assert (=> bm!13162 (= call!13167 call!13166)))

(declare-fun b!123909 () Bool)

(declare-fun res!60116 () Bool)

(assert (=> b!123909 (=> (not res!60116) (not e!80979))))

(assert (=> b!123909 (= res!60116 (containsKey!167 lt!63755 (_1!1283 (ite (or c!22399 c!22402) (tuple2!2547 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2620 (v!3089 (underlying!429 thiss!992)))) (tuple2!2547 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2620 (v!3089 (underlying!429 thiss!992))))))))))

(declare-fun b!123910 () Bool)

(assert (=> b!123910 (= e!80975 call!13166)))

(declare-fun b!123911 () Bool)

(assert (=> b!123911 (= e!80975 e!80977)))

(assert (=> b!123911 (= c!22523 (and ((_ is Cons!1705) (toList!851 (ite c!22399 call!13124 (ite c!22402 call!13126 call!13125)))) (= (_1!1283 (h!2306 (toList!851 (ite c!22399 call!13124 (ite c!22402 call!13126 call!13125))))) (_1!1283 (ite (or c!22399 c!22402) (tuple2!2547 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2620 (v!3089 (underlying!429 thiss!992)))) (tuple2!2547 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2620 (v!3089 (underlying!429 thiss!992)))))))))))

(declare-fun bm!13163 () Bool)

(assert (=> bm!13163 (= call!13166 ($colon$colon!86 e!80976 (ite c!22526 (h!2306 (toList!851 (ite c!22399 call!13124 (ite c!22402 call!13126 call!13125)))) (tuple2!2547 (_1!1283 (ite (or c!22399 c!22402) (tuple2!2547 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2620 (v!3089 (underlying!429 thiss!992)))) (tuple2!2547 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2620 (v!3089 (underlying!429 thiss!992)))))) (_2!1283 (ite (or c!22399 c!22402) (tuple2!2547 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2620 (v!3089 (underlying!429 thiss!992)))) (tuple2!2547 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2620 (v!3089 (underlying!429 thiss!992))))))))))))

(declare-fun c!22524 () Bool)

(assert (=> bm!13163 (= c!22524 c!22526)))

(declare-fun bm!13164 () Bool)

(assert (=> bm!13164 (= call!13165 call!13167)))

(declare-fun b!123912 () Bool)

(assert (=> b!123912 (= e!80978 call!13165)))

(assert (= (and d!37193 c!22526) b!123910))

(assert (= (and d!37193 (not c!22526)) b!123911))

(assert (= (and b!123911 c!22523) b!123904))

(assert (= (and b!123911 (not c!22523)) b!123907))

(assert (= (and b!123907 c!22525) b!123906))

(assert (= (and b!123907 (not c!22525)) b!123912))

(assert (= (or b!123906 b!123912) bm!13164))

(assert (= (or b!123904 bm!13164) bm!13162))

(assert (= (or b!123910 bm!13162) bm!13163))

(assert (= (and bm!13163 c!22524) b!123903))

(assert (= (and bm!13163 (not c!22524)) b!123905))

(assert (= (and d!37193 res!60117) b!123909))

(assert (= (and b!123909 res!60116) b!123908))

(declare-fun m!144097 () Bool)

(assert (=> d!37193 m!144097))

(declare-fun m!144099 () Bool)

(assert (=> d!37193 m!144099))

(declare-fun m!144101 () Bool)

(assert (=> b!123908 m!144101))

(declare-fun m!144103 () Bool)

(assert (=> b!123903 m!144103))

(declare-fun m!144105 () Bool)

(assert (=> b!123909 m!144105))

(declare-fun m!144107 () Bool)

(assert (=> bm!13163 m!144107))

(assert (=> d!36993 d!37193))

(declare-fun d!37195 () Bool)

(declare-fun e!80981 () Bool)

(assert (=> d!37195 e!80981))

(declare-fun res!60118 () Bool)

(assert (=> d!37195 (=> res!60118 e!80981)))

(declare-fun lt!63757 () Bool)

(assert (=> d!37195 (= res!60118 (not lt!63757))))

(declare-fun lt!63756 () Bool)

(assert (=> d!37195 (= lt!63757 lt!63756)))

(declare-fun lt!63759 () Unit!3846)

(declare-fun e!80980 () Unit!3846)

(assert (=> d!37195 (= lt!63759 e!80980)))

(declare-fun c!22527 () Bool)

(assert (=> d!37195 (= c!22527 lt!63756)))

(assert (=> d!37195 (= lt!63756 (containsKey!167 (toList!851 lt!63548) (select (arr!2206 (_keys!4482 (v!3089 (underlying!429 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))))))

(assert (=> d!37195 (= (contains!868 lt!63548 (select (arr!2206 (_keys!4482 (v!3089 (underlying!429 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))) lt!63757)))

(declare-fun b!123913 () Bool)

(declare-fun lt!63758 () Unit!3846)

(assert (=> b!123913 (= e!80980 lt!63758)))

(assert (=> b!123913 (= lt!63758 (lemmaContainsKeyImpliesGetValueByKeyDefined!116 (toList!851 lt!63548) (select (arr!2206 (_keys!4482 (v!3089 (underlying!429 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))))))

(assert (=> b!123913 (isDefined!117 (getValueByKey!163 (toList!851 lt!63548) (select (arr!2206 (_keys!4482 (v!3089 (underlying!429 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))))))

(declare-fun b!123914 () Bool)

(declare-fun Unit!3866 () Unit!3846)

(assert (=> b!123914 (= e!80980 Unit!3866)))

(declare-fun b!123915 () Bool)

(assert (=> b!123915 (= e!80981 (isDefined!117 (getValueByKey!163 (toList!851 lt!63548) (select (arr!2206 (_keys!4482 (v!3089 (underlying!429 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)))))))

(assert (= (and d!37195 c!22527) b!123913))

(assert (= (and d!37195 (not c!22527)) b!123914))

(assert (= (and d!37195 (not res!60118)) b!123915))

(assert (=> d!37195 m!143427))

(declare-fun m!144109 () Bool)

(assert (=> d!37195 m!144109))

(assert (=> b!123913 m!143427))

(declare-fun m!144111 () Bool)

(assert (=> b!123913 m!144111))

(assert (=> b!123913 m!143427))

(assert (=> b!123913 m!143771))

(assert (=> b!123913 m!143771))

(declare-fun m!144113 () Bool)

(assert (=> b!123913 m!144113))

(assert (=> b!123915 m!143427))

(assert (=> b!123915 m!143771))

(assert (=> b!123915 m!143771))

(assert (=> b!123915 m!144113))

(assert (=> b!123528 d!37195))

(declare-fun lt!63760 () Bool)

(declare-fun d!37197 () Bool)

(assert (=> d!37197 (= lt!63760 (select (content!120 (toList!851 lt!63611)) (tuple2!2547 lt!63513 (zeroValue!2620 (v!3089 (underlying!429 thiss!992))))))))

(declare-fun e!80982 () Bool)

(assert (=> d!37197 (= lt!63760 e!80982)))

(declare-fun res!60119 () Bool)

(assert (=> d!37197 (=> (not res!60119) (not e!80982))))

(assert (=> d!37197 (= res!60119 ((_ is Cons!1705) (toList!851 lt!63611)))))

(assert (=> d!37197 (= (contains!869 (toList!851 lt!63611) (tuple2!2547 lt!63513 (zeroValue!2620 (v!3089 (underlying!429 thiss!992))))) lt!63760)))

(declare-fun b!123916 () Bool)

(declare-fun e!80983 () Bool)

(assert (=> b!123916 (= e!80982 e!80983)))

(declare-fun res!60120 () Bool)

(assert (=> b!123916 (=> res!60120 e!80983)))

(assert (=> b!123916 (= res!60120 (= (h!2306 (toList!851 lt!63611)) (tuple2!2547 lt!63513 (zeroValue!2620 (v!3089 (underlying!429 thiss!992))))))))

(declare-fun b!123917 () Bool)

(assert (=> b!123917 (= e!80983 (contains!869 (t!6020 (toList!851 lt!63611)) (tuple2!2547 lt!63513 (zeroValue!2620 (v!3089 (underlying!429 thiss!992))))))))

(assert (= (and d!37197 res!60119) b!123916))

(assert (= (and b!123916 (not res!60120)) b!123917))

(declare-fun m!144115 () Bool)

(assert (=> d!37197 m!144115))

(declare-fun m!144117 () Bool)

(assert (=> d!37197 m!144117))

(declare-fun m!144119 () Bool)

(assert (=> b!123917 m!144119))

(assert (=> b!123591 d!37197))

(declare-fun d!37199 () Bool)

(assert (=> d!37199 (= (get!1434 (getValueByKey!163 (toList!851 lt!63519) lt!63527)) (v!3092 (getValueByKey!163 (toList!851 lt!63519) lt!63527)))))

(assert (=> d!37037 d!37199))

(declare-fun d!37201 () Bool)

(declare-fun c!22528 () Bool)

(assert (=> d!37201 (= c!22528 (and ((_ is Cons!1705) (toList!851 lt!63519)) (= (_1!1283 (h!2306 (toList!851 lt!63519))) lt!63527)))))

(declare-fun e!80984 () Option!169)

(assert (=> d!37201 (= (getValueByKey!163 (toList!851 lt!63519) lt!63527) e!80984)))

(declare-fun b!123919 () Bool)

(declare-fun e!80985 () Option!169)

(assert (=> b!123919 (= e!80984 e!80985)))

(declare-fun c!22529 () Bool)

(assert (=> b!123919 (= c!22529 (and ((_ is Cons!1705) (toList!851 lt!63519)) (not (= (_1!1283 (h!2306 (toList!851 lt!63519))) lt!63527))))))

(declare-fun b!123918 () Bool)

(assert (=> b!123918 (= e!80984 (Some!168 (_2!1283 (h!2306 (toList!851 lt!63519)))))))

(declare-fun b!123920 () Bool)

(assert (=> b!123920 (= e!80985 (getValueByKey!163 (t!6020 (toList!851 lt!63519)) lt!63527))))

(declare-fun b!123921 () Bool)

(assert (=> b!123921 (= e!80985 None!167)))

(assert (= (and d!37201 c!22528) b!123918))

(assert (= (and d!37201 (not c!22528)) b!123919))

(assert (= (and b!123919 c!22529) b!123920))

(assert (= (and b!123919 (not c!22529)) b!123921))

(declare-fun m!144121 () Bool)

(assert (=> b!123920 m!144121))

(assert (=> d!37037 d!37201))

(assert (=> d!37021 d!37019))

(assert (=> d!37021 d!37041))

(declare-fun d!37203 () Bool)

(assert (=> d!37203 (= (apply!108 (+!162 lt!63509 (tuple2!2547 lt!63518 (minValue!2620 (v!3089 (underlying!429 thiss!992))))) lt!63512) (apply!108 lt!63509 lt!63512))))

(assert (=> d!37203 true))

(declare-fun _$34!936 () Unit!3846)

(assert (=> d!37203 (= (choose!750 lt!63509 lt!63518 (minValue!2620 (v!3089 (underlying!429 thiss!992))) lt!63512) _$34!936)))

(declare-fun bs!5128 () Bool)

(assert (= bs!5128 d!37203))

(assert (=> bs!5128 m!143443))

(assert (=> bs!5128 m!143443))

(assert (=> bs!5128 m!143445))

(assert (=> bs!5128 m!143441))

(assert (=> d!37021 d!37203))

(assert (=> d!37021 d!37031))

(declare-fun d!37205 () Bool)

(declare-fun e!80987 () Bool)

(assert (=> d!37205 e!80987))

(declare-fun res!60121 () Bool)

(assert (=> d!37205 (=> res!60121 e!80987)))

(declare-fun lt!63762 () Bool)

(assert (=> d!37205 (= res!60121 (not lt!63762))))

(declare-fun lt!63761 () Bool)

(assert (=> d!37205 (= lt!63762 lt!63761)))

(declare-fun lt!63764 () Unit!3846)

(declare-fun e!80986 () Unit!3846)

(assert (=> d!37205 (= lt!63764 e!80986)))

(declare-fun c!22530 () Bool)

(assert (=> d!37205 (= c!22530 lt!63761)))

(assert (=> d!37205 (= lt!63761 (containsKey!167 (toList!851 lt!63509) lt!63512))))

(assert (=> d!37205 (= (contains!868 lt!63509 lt!63512) lt!63762)))

(declare-fun b!123922 () Bool)

(declare-fun lt!63763 () Unit!3846)

(assert (=> b!123922 (= e!80986 lt!63763)))

(assert (=> b!123922 (= lt!63763 (lemmaContainsKeyImpliesGetValueByKeyDefined!116 (toList!851 lt!63509) lt!63512))))

(assert (=> b!123922 (isDefined!117 (getValueByKey!163 (toList!851 lt!63509) lt!63512))))

(declare-fun b!123923 () Bool)

(declare-fun Unit!3867 () Unit!3846)

(assert (=> b!123923 (= e!80986 Unit!3867)))

(declare-fun b!123924 () Bool)

(assert (=> b!123924 (= e!80987 (isDefined!117 (getValueByKey!163 (toList!851 lt!63509) lt!63512)))))

(assert (= (and d!37205 c!22530) b!123922))

(assert (= (and d!37205 (not c!22530)) b!123923))

(assert (= (and d!37205 (not res!60121)) b!123924))

(declare-fun m!144123 () Bool)

(assert (=> d!37205 m!144123))

(declare-fun m!144125 () Bool)

(assert (=> b!123922 m!144125))

(assert (=> b!123922 m!143661))

(assert (=> b!123922 m!143661))

(declare-fun m!144127 () Bool)

(assert (=> b!123922 m!144127))

(assert (=> b!123924 m!143661))

(assert (=> b!123924 m!143661))

(assert (=> b!123924 m!144127))

(assert (=> d!37021 d!37205))

(declare-fun d!37207 () Bool)

(declare-fun isEmpty!397 (List!1709) Bool)

(assert (=> d!37207 (= (isEmpty!395 lt!63548) (isEmpty!397 (toList!851 lt!63548)))))

(declare-fun bs!5129 () Bool)

(assert (= bs!5129 d!37207))

(declare-fun m!144129 () Bool)

(assert (=> bs!5129 m!144129))

(assert (=> b!123536 d!37207))

(declare-fun d!37209 () Bool)

(assert (=> d!37209 (= (apply!108 lt!63580 (select (arr!2206 (_keys!4482 newMap!16)) #b00000000000000000000000000000000)) (get!1434 (getValueByKey!163 (toList!851 lt!63580) (select (arr!2206 (_keys!4482 newMap!16)) #b00000000000000000000000000000000))))))

(declare-fun bs!5130 () Bool)

(assert (= bs!5130 d!37209))

(assert (=> bs!5130 m!143539))

(assert (=> bs!5130 m!143825))

(assert (=> bs!5130 m!143825))

(declare-fun m!144131 () Bool)

(assert (=> bs!5130 m!144131))

(assert (=> b!123550 d!37209))

(declare-fun d!37211 () Bool)

(declare-fun c!22531 () Bool)

(assert (=> d!37211 (= c!22531 ((_ is ValueCellFull!1068) (select (arr!2207 (_values!2738 newMap!16)) #b00000000000000000000000000000000)))))

(declare-fun e!80988 () V!3411)

(assert (=> d!37211 (= (get!1433 (select (arr!2207 (_values!2738 newMap!16)) #b00000000000000000000000000000000) (dynLambda!411 (defaultEntry!2755 newMap!16) #b0000000000000000000000000000000000000000000000000000000000000000)) e!80988)))

(declare-fun b!123925 () Bool)

(assert (=> b!123925 (= e!80988 (get!1435 (select (arr!2207 (_values!2738 newMap!16)) #b00000000000000000000000000000000) (dynLambda!411 (defaultEntry!2755 newMap!16) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!123926 () Bool)

(assert (=> b!123926 (= e!80988 (get!1436 (select (arr!2207 (_values!2738 newMap!16)) #b00000000000000000000000000000000) (dynLambda!411 (defaultEntry!2755 newMap!16) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!37211 c!22531) b!123925))

(assert (= (and d!37211 (not c!22531)) b!123926))

(assert (=> b!123925 m!143581))

(assert (=> b!123925 m!143579))

(declare-fun m!144133 () Bool)

(assert (=> b!123925 m!144133))

(assert (=> b!123926 m!143581))

(assert (=> b!123926 m!143579))

(declare-fun m!144135 () Bool)

(assert (=> b!123926 m!144135))

(assert (=> b!123550 d!37211))

(declare-fun b!123927 () Bool)

(declare-fun e!80990 () Bool)

(declare-fun e!80989 () Bool)

(assert (=> b!123927 (= e!80990 e!80989)))

(declare-fun res!60122 () Bool)

(assert (=> b!123927 (=> (not res!60122) (not e!80989))))

(declare-fun e!80992 () Bool)

(assert (=> b!123927 (= res!60122 (not e!80992))))

(declare-fun res!60123 () Bool)

(assert (=> b!123927 (=> (not res!60123) (not e!80992))))

(assert (=> b!123927 (= res!60123 (validKeyInArray!0 (select (arr!2206 (_keys!4482 newMap!16)) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun b!123928 () Bool)

(assert (=> b!123928 (= e!80992 (contains!870 (ite c!22438 (Cons!1707 (select (arr!2206 (_keys!4482 newMap!16)) #b00000000000000000000000000000000) Nil!1708) Nil!1708) (select (arr!2206 (_keys!4482 newMap!16)) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun d!37213 () Bool)

(declare-fun res!60124 () Bool)

(assert (=> d!37213 (=> res!60124 e!80990)))

(assert (=> d!37213 (= res!60124 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!2468 (_keys!4482 newMap!16))))))

(assert (=> d!37213 (= (arrayNoDuplicates!0 (_keys!4482 newMap!16) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!22438 (Cons!1707 (select (arr!2206 (_keys!4482 newMap!16)) #b00000000000000000000000000000000) Nil!1708) Nil!1708)) e!80990)))

(declare-fun c!22532 () Bool)

(declare-fun call!13168 () Bool)

(declare-fun bm!13165 () Bool)

(assert (=> bm!13165 (= call!13168 (arrayNoDuplicates!0 (_keys!4482 newMap!16) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (ite c!22532 (Cons!1707 (select (arr!2206 (_keys!4482 newMap!16)) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) (ite c!22438 (Cons!1707 (select (arr!2206 (_keys!4482 newMap!16)) #b00000000000000000000000000000000) Nil!1708) Nil!1708)) (ite c!22438 (Cons!1707 (select (arr!2206 (_keys!4482 newMap!16)) #b00000000000000000000000000000000) Nil!1708) Nil!1708))))))

(declare-fun b!123929 () Bool)

(declare-fun e!80991 () Bool)

(assert (=> b!123929 (= e!80991 call!13168)))

(declare-fun b!123930 () Bool)

(assert (=> b!123930 (= e!80989 e!80991)))

(assert (=> b!123930 (= c!22532 (validKeyInArray!0 (select (arr!2206 (_keys!4482 newMap!16)) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun b!123931 () Bool)

(assert (=> b!123931 (= e!80991 call!13168)))

(assert (= (and d!37213 (not res!60124)) b!123927))

(assert (= (and b!123927 res!60123) b!123928))

(assert (= (and b!123927 res!60122) b!123930))

(assert (= (and b!123930 c!22532) b!123931))

(assert (= (and b!123930 (not c!22532)) b!123929))

(assert (= (or b!123931 b!123929) bm!13165))

(assert (=> b!123927 m!143811))

(assert (=> b!123927 m!143811))

(assert (=> b!123927 m!143813))

(assert (=> b!123928 m!143811))

(assert (=> b!123928 m!143811))

(declare-fun m!144137 () Bool)

(assert (=> b!123928 m!144137))

(assert (=> bm!13165 m!143811))

(declare-fun m!144139 () Bool)

(assert (=> bm!13165 m!144139))

(assert (=> b!123930 m!143811))

(assert (=> b!123930 m!143811))

(assert (=> b!123930 m!143813))

(assert (=> bm!13139 d!37213))

(declare-fun d!37215 () Bool)

(assert (=> d!37215 (isDefined!117 (getValueByKey!163 (toList!851 lt!63525) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!63765 () Unit!3846)

(assert (=> d!37215 (= lt!63765 (choose!752 (toList!851 lt!63525) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!80993 () Bool)

(assert (=> d!37215 e!80993))

(declare-fun res!60125 () Bool)

(assert (=> d!37215 (=> (not res!60125) (not e!80993))))

(assert (=> d!37215 (= res!60125 (isStrictlySorted!310 (toList!851 lt!63525)))))

(assert (=> d!37215 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!116 (toList!851 lt!63525) #b1000000000000000000000000000000000000000000000000000000000000000) lt!63765)))

(declare-fun b!123932 () Bool)

(assert (=> b!123932 (= e!80993 (containsKey!167 (toList!851 lt!63525) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!37215 res!60125) b!123932))

(assert (=> d!37215 m!143613))

(assert (=> d!37215 m!143613))

(assert (=> d!37215 m!143615))

(declare-fun m!144141 () Bool)

(assert (=> d!37215 m!144141))

(assert (=> d!37215 m!143967))

(assert (=> b!123932 m!143609))

(assert (=> b!123572 d!37215))

(declare-fun d!37217 () Bool)

(assert (=> d!37217 (= (isDefined!117 (getValueByKey!163 (toList!851 lt!63525) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (isEmpty!396 (getValueByKey!163 (toList!851 lt!63525) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun bs!5131 () Bool)

(assert (= bs!5131 d!37217))

(assert (=> bs!5131 m!143613))

(declare-fun m!144143 () Bool)

(assert (=> bs!5131 m!144143))

(assert (=> b!123572 d!37217))

(assert (=> b!123572 d!37083))

(declare-fun lt!63766 () Bool)

(declare-fun d!37219 () Bool)

(assert (=> d!37219 (= lt!63766 (select (content!120 (toList!851 lt!63561)) (ite (or c!22399 c!22402) (tuple2!2547 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2620 (v!3089 (underlying!429 thiss!992)))) (tuple2!2547 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2620 (v!3089 (underlying!429 thiss!992)))))))))

(declare-fun e!80994 () Bool)

(assert (=> d!37219 (= lt!63766 e!80994)))

(declare-fun res!60126 () Bool)

(assert (=> d!37219 (=> (not res!60126) (not e!80994))))

(assert (=> d!37219 (= res!60126 ((_ is Cons!1705) (toList!851 lt!63561)))))

(assert (=> d!37219 (= (contains!869 (toList!851 lt!63561) (ite (or c!22399 c!22402) (tuple2!2547 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2620 (v!3089 (underlying!429 thiss!992)))) (tuple2!2547 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2620 (v!3089 (underlying!429 thiss!992)))))) lt!63766)))

(declare-fun b!123933 () Bool)

(declare-fun e!80995 () Bool)

(assert (=> b!123933 (= e!80994 e!80995)))

(declare-fun res!60127 () Bool)

(assert (=> b!123933 (=> res!60127 e!80995)))

(assert (=> b!123933 (= res!60127 (= (h!2306 (toList!851 lt!63561)) (ite (or c!22399 c!22402) (tuple2!2547 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2620 (v!3089 (underlying!429 thiss!992)))) (tuple2!2547 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2620 (v!3089 (underlying!429 thiss!992)))))))))

(declare-fun b!123934 () Bool)

(assert (=> b!123934 (= e!80995 (contains!869 (t!6020 (toList!851 lt!63561)) (ite (or c!22399 c!22402) (tuple2!2547 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2620 (v!3089 (underlying!429 thiss!992)))) (tuple2!2547 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2620 (v!3089 (underlying!429 thiss!992)))))))))

(assert (= (and d!37219 res!60126) b!123933))

(assert (= (and b!123933 (not res!60127)) b!123934))

(declare-fun m!144145 () Bool)

(assert (=> d!37219 m!144145))

(declare-fun m!144147 () Bool)

(assert (=> d!37219 m!144147))

(declare-fun m!144149 () Bool)

(assert (=> b!123934 m!144149))

(assert (=> b!123542 d!37219))

(declare-fun d!37221 () Bool)

(assert (=> d!37221 (= (get!1434 (getValueByKey!163 (toList!851 (+!162 lt!63523 (tuple2!2547 lt!63529 (zeroValue!2620 (v!3089 (underlying!429 thiss!992)))))) lt!63514)) (v!3092 (getValueByKey!163 (toList!851 (+!162 lt!63523 (tuple2!2547 lt!63529 (zeroValue!2620 (v!3089 (underlying!429 thiss!992)))))) lt!63514)))))

(assert (=> d!37043 d!37221))

(declare-fun d!37223 () Bool)

(declare-fun c!22533 () Bool)

(assert (=> d!37223 (= c!22533 (and ((_ is Cons!1705) (toList!851 (+!162 lt!63523 (tuple2!2547 lt!63529 (zeroValue!2620 (v!3089 (underlying!429 thiss!992))))))) (= (_1!1283 (h!2306 (toList!851 (+!162 lt!63523 (tuple2!2547 lt!63529 (zeroValue!2620 (v!3089 (underlying!429 thiss!992)))))))) lt!63514)))))

(declare-fun e!80996 () Option!169)

(assert (=> d!37223 (= (getValueByKey!163 (toList!851 (+!162 lt!63523 (tuple2!2547 lt!63529 (zeroValue!2620 (v!3089 (underlying!429 thiss!992)))))) lt!63514) e!80996)))

(declare-fun b!123936 () Bool)

(declare-fun e!80997 () Option!169)

(assert (=> b!123936 (= e!80996 e!80997)))

(declare-fun c!22534 () Bool)

(assert (=> b!123936 (= c!22534 (and ((_ is Cons!1705) (toList!851 (+!162 lt!63523 (tuple2!2547 lt!63529 (zeroValue!2620 (v!3089 (underlying!429 thiss!992))))))) (not (= (_1!1283 (h!2306 (toList!851 (+!162 lt!63523 (tuple2!2547 lt!63529 (zeroValue!2620 (v!3089 (underlying!429 thiss!992)))))))) lt!63514))))))

(declare-fun b!123935 () Bool)

(assert (=> b!123935 (= e!80996 (Some!168 (_2!1283 (h!2306 (toList!851 (+!162 lt!63523 (tuple2!2547 lt!63529 (zeroValue!2620 (v!3089 (underlying!429 thiss!992))))))))))))

(declare-fun b!123937 () Bool)

(assert (=> b!123937 (= e!80997 (getValueByKey!163 (t!6020 (toList!851 (+!162 lt!63523 (tuple2!2547 lt!63529 (zeroValue!2620 (v!3089 (underlying!429 thiss!992))))))) lt!63514))))

(declare-fun b!123938 () Bool)

(assert (=> b!123938 (= e!80997 None!167)))

(assert (= (and d!37223 c!22533) b!123935))

(assert (= (and d!37223 (not c!22533)) b!123936))

(assert (= (and b!123936 c!22534) b!123937))

(assert (= (and b!123936 (not c!22534)) b!123938))

(declare-fun m!144151 () Bool)

(assert (=> b!123937 m!144151))

(assert (=> d!37043 d!37223))

(declare-fun d!37225 () Bool)

(declare-fun e!80999 () Bool)

(assert (=> d!37225 e!80999))

(declare-fun res!60128 () Bool)

(assert (=> d!37225 (=> res!60128 e!80999)))

(declare-fun lt!63768 () Bool)

(assert (=> d!37225 (= res!60128 (not lt!63768))))

(declare-fun lt!63767 () Bool)

(assert (=> d!37225 (= lt!63768 lt!63767)))

(declare-fun lt!63770 () Unit!3846)

(declare-fun e!80998 () Unit!3846)

(assert (=> d!37225 (= lt!63770 e!80998)))

(declare-fun c!22535 () Bool)

(assert (=> d!37225 (= c!22535 lt!63767)))

(assert (=> d!37225 (= lt!63767 (containsKey!167 (toList!851 lt!63629) (_1!1283 (tuple2!2547 lt!63521 (minValue!2620 (v!3089 (underlying!429 thiss!992)))))))))

(assert (=> d!37225 (= (contains!868 lt!63629 (_1!1283 (tuple2!2547 lt!63521 (minValue!2620 (v!3089 (underlying!429 thiss!992)))))) lt!63768)))

(declare-fun b!123939 () Bool)

(declare-fun lt!63769 () Unit!3846)

(assert (=> b!123939 (= e!80998 lt!63769)))

(assert (=> b!123939 (= lt!63769 (lemmaContainsKeyImpliesGetValueByKeyDefined!116 (toList!851 lt!63629) (_1!1283 (tuple2!2547 lt!63521 (minValue!2620 (v!3089 (underlying!429 thiss!992)))))))))

(assert (=> b!123939 (isDefined!117 (getValueByKey!163 (toList!851 lt!63629) (_1!1283 (tuple2!2547 lt!63521 (minValue!2620 (v!3089 (underlying!429 thiss!992)))))))))

(declare-fun b!123940 () Bool)

(declare-fun Unit!3868 () Unit!3846)

(assert (=> b!123940 (= e!80998 Unit!3868)))

(declare-fun b!123941 () Bool)

(assert (=> b!123941 (= e!80999 (isDefined!117 (getValueByKey!163 (toList!851 lt!63629) (_1!1283 (tuple2!2547 lt!63521 (minValue!2620 (v!3089 (underlying!429 thiss!992))))))))))

(assert (= (and d!37225 c!22535) b!123939))

(assert (= (and d!37225 (not c!22535)) b!123940))

(assert (= (and d!37225 (not res!60128)) b!123941))

(declare-fun m!144153 () Bool)

(assert (=> d!37225 m!144153))

(declare-fun m!144155 () Bool)

(assert (=> b!123939 m!144155))

(assert (=> b!123939 m!143713))

(assert (=> b!123939 m!143713))

(declare-fun m!144157 () Bool)

(assert (=> b!123939 m!144157))

(assert (=> b!123941 m!143713))

(assert (=> b!123941 m!143713))

(assert (=> b!123941 m!144157))

(assert (=> d!37035 d!37225))

(declare-fun d!37227 () Bool)

(declare-fun c!22536 () Bool)

(assert (=> d!37227 (= c!22536 (and ((_ is Cons!1705) lt!63627) (= (_1!1283 (h!2306 lt!63627)) (_1!1283 (tuple2!2547 lt!63521 (minValue!2620 (v!3089 (underlying!429 thiss!992))))))))))

(declare-fun e!81000 () Option!169)

(assert (=> d!37227 (= (getValueByKey!163 lt!63627 (_1!1283 (tuple2!2547 lt!63521 (minValue!2620 (v!3089 (underlying!429 thiss!992)))))) e!81000)))

(declare-fun b!123943 () Bool)

(declare-fun e!81001 () Option!169)

(assert (=> b!123943 (= e!81000 e!81001)))

(declare-fun c!22537 () Bool)

(assert (=> b!123943 (= c!22537 (and ((_ is Cons!1705) lt!63627) (not (= (_1!1283 (h!2306 lt!63627)) (_1!1283 (tuple2!2547 lt!63521 (minValue!2620 (v!3089 (underlying!429 thiss!992)))))))))))

(declare-fun b!123942 () Bool)

(assert (=> b!123942 (= e!81000 (Some!168 (_2!1283 (h!2306 lt!63627))))))

(declare-fun b!123944 () Bool)

(assert (=> b!123944 (= e!81001 (getValueByKey!163 (t!6020 lt!63627) (_1!1283 (tuple2!2547 lt!63521 (minValue!2620 (v!3089 (underlying!429 thiss!992)))))))))

(declare-fun b!123945 () Bool)

(assert (=> b!123945 (= e!81001 None!167)))

(assert (= (and d!37227 c!22536) b!123942))

(assert (= (and d!37227 (not c!22536)) b!123943))

(assert (= (and b!123943 c!22537) b!123944))

(assert (= (and b!123943 (not c!22537)) b!123945))

(declare-fun m!144159 () Bool)

(assert (=> b!123944 m!144159))

(assert (=> d!37035 d!37227))

(declare-fun d!37229 () Bool)

(assert (=> d!37229 (= (getValueByKey!163 lt!63627 (_1!1283 (tuple2!2547 lt!63521 (minValue!2620 (v!3089 (underlying!429 thiss!992)))))) (Some!168 (_2!1283 (tuple2!2547 lt!63521 (minValue!2620 (v!3089 (underlying!429 thiss!992)))))))))

(declare-fun lt!63771 () Unit!3846)

(assert (=> d!37229 (= lt!63771 (choose!753 lt!63627 (_1!1283 (tuple2!2547 lt!63521 (minValue!2620 (v!3089 (underlying!429 thiss!992))))) (_2!1283 (tuple2!2547 lt!63521 (minValue!2620 (v!3089 (underlying!429 thiss!992)))))))))

(declare-fun e!81002 () Bool)

(assert (=> d!37229 e!81002))

(declare-fun res!60129 () Bool)

(assert (=> d!37229 (=> (not res!60129) (not e!81002))))

(assert (=> d!37229 (= res!60129 (isStrictlySorted!310 lt!63627))))

(assert (=> d!37229 (= (lemmaContainsTupThenGetReturnValue!81 lt!63627 (_1!1283 (tuple2!2547 lt!63521 (minValue!2620 (v!3089 (underlying!429 thiss!992))))) (_2!1283 (tuple2!2547 lt!63521 (minValue!2620 (v!3089 (underlying!429 thiss!992)))))) lt!63771)))

(declare-fun b!123946 () Bool)

(declare-fun res!60130 () Bool)

(assert (=> b!123946 (=> (not res!60130) (not e!81002))))

(assert (=> b!123946 (= res!60130 (containsKey!167 lt!63627 (_1!1283 (tuple2!2547 lt!63521 (minValue!2620 (v!3089 (underlying!429 thiss!992)))))))))

(declare-fun b!123947 () Bool)

(assert (=> b!123947 (= e!81002 (contains!869 lt!63627 (tuple2!2547 (_1!1283 (tuple2!2547 lt!63521 (minValue!2620 (v!3089 (underlying!429 thiss!992))))) (_2!1283 (tuple2!2547 lt!63521 (minValue!2620 (v!3089 (underlying!429 thiss!992))))))))))

(assert (= (and d!37229 res!60129) b!123946))

(assert (= (and b!123946 res!60130) b!123947))

(assert (=> d!37229 m!143707))

(declare-fun m!144161 () Bool)

(assert (=> d!37229 m!144161))

(declare-fun m!144163 () Bool)

(assert (=> d!37229 m!144163))

(declare-fun m!144165 () Bool)

(assert (=> b!123946 m!144165))

(declare-fun m!144167 () Bool)

(assert (=> b!123947 m!144167))

(assert (=> d!37035 d!37229))

(declare-fun b!123948 () Bool)

(declare-fun e!81004 () List!1709)

(assert (=> b!123948 (= e!81004 (insertStrictlySorted!83 (t!6020 (toList!851 lt!63519)) (_1!1283 (tuple2!2547 lt!63521 (minValue!2620 (v!3089 (underlying!429 thiss!992))))) (_2!1283 (tuple2!2547 lt!63521 (minValue!2620 (v!3089 (underlying!429 thiss!992)))))))))

(declare-fun b!123949 () Bool)

(declare-fun e!81005 () List!1709)

(declare-fun call!13171 () List!1709)

(assert (=> b!123949 (= e!81005 call!13171)))

(declare-fun d!37231 () Bool)

(declare-fun e!81007 () Bool)

(assert (=> d!37231 e!81007))

(declare-fun res!60132 () Bool)

(assert (=> d!37231 (=> (not res!60132) (not e!81007))))

(declare-fun lt!63772 () List!1709)

(assert (=> d!37231 (= res!60132 (isStrictlySorted!310 lt!63772))))

(declare-fun e!81003 () List!1709)

(assert (=> d!37231 (= lt!63772 e!81003)))

(declare-fun c!22541 () Bool)

(assert (=> d!37231 (= c!22541 (and ((_ is Cons!1705) (toList!851 lt!63519)) (bvslt (_1!1283 (h!2306 (toList!851 lt!63519))) (_1!1283 (tuple2!2547 lt!63521 (minValue!2620 (v!3089 (underlying!429 thiss!992))))))))))

(assert (=> d!37231 (isStrictlySorted!310 (toList!851 lt!63519))))

(assert (=> d!37231 (= (insertStrictlySorted!83 (toList!851 lt!63519) (_1!1283 (tuple2!2547 lt!63521 (minValue!2620 (v!3089 (underlying!429 thiss!992))))) (_2!1283 (tuple2!2547 lt!63521 (minValue!2620 (v!3089 (underlying!429 thiss!992)))))) lt!63772)))

(declare-fun c!22540 () Bool)

(declare-fun b!123950 () Bool)

(declare-fun c!22538 () Bool)

(assert (=> b!123950 (= e!81004 (ite c!22538 (t!6020 (toList!851 lt!63519)) (ite c!22540 (Cons!1705 (h!2306 (toList!851 lt!63519)) (t!6020 (toList!851 lt!63519))) Nil!1706)))))

(declare-fun b!123951 () Bool)

(declare-fun e!81006 () List!1709)

(declare-fun call!13169 () List!1709)

(assert (=> b!123951 (= e!81006 call!13169)))

(declare-fun b!123952 () Bool)

(assert (=> b!123952 (= c!22540 (and ((_ is Cons!1705) (toList!851 lt!63519)) (bvsgt (_1!1283 (h!2306 (toList!851 lt!63519))) (_1!1283 (tuple2!2547 lt!63521 (minValue!2620 (v!3089 (underlying!429 thiss!992))))))))))

(assert (=> b!123952 (= e!81005 e!81006)))

(declare-fun b!123953 () Bool)

(assert (=> b!123953 (= e!81007 (contains!869 lt!63772 (tuple2!2547 (_1!1283 (tuple2!2547 lt!63521 (minValue!2620 (v!3089 (underlying!429 thiss!992))))) (_2!1283 (tuple2!2547 lt!63521 (minValue!2620 (v!3089 (underlying!429 thiss!992))))))))))

(declare-fun bm!13166 () Bool)

(declare-fun call!13170 () List!1709)

(assert (=> bm!13166 (= call!13171 call!13170)))

(declare-fun b!123954 () Bool)

(declare-fun res!60131 () Bool)

(assert (=> b!123954 (=> (not res!60131) (not e!81007))))

(assert (=> b!123954 (= res!60131 (containsKey!167 lt!63772 (_1!1283 (tuple2!2547 lt!63521 (minValue!2620 (v!3089 (underlying!429 thiss!992)))))))))

(declare-fun b!123955 () Bool)

(assert (=> b!123955 (= e!81003 call!13170)))

(declare-fun b!123956 () Bool)

(assert (=> b!123956 (= e!81003 e!81005)))

(assert (=> b!123956 (= c!22538 (and ((_ is Cons!1705) (toList!851 lt!63519)) (= (_1!1283 (h!2306 (toList!851 lt!63519))) (_1!1283 (tuple2!2547 lt!63521 (minValue!2620 (v!3089 (underlying!429 thiss!992))))))))))

(declare-fun bm!13167 () Bool)

(assert (=> bm!13167 (= call!13170 ($colon$colon!86 e!81004 (ite c!22541 (h!2306 (toList!851 lt!63519)) (tuple2!2547 (_1!1283 (tuple2!2547 lt!63521 (minValue!2620 (v!3089 (underlying!429 thiss!992))))) (_2!1283 (tuple2!2547 lt!63521 (minValue!2620 (v!3089 (underlying!429 thiss!992)))))))))))

(declare-fun c!22539 () Bool)

(assert (=> bm!13167 (= c!22539 c!22541)))

(declare-fun bm!13168 () Bool)

(assert (=> bm!13168 (= call!13169 call!13171)))

(declare-fun b!123957 () Bool)

(assert (=> b!123957 (= e!81006 call!13169)))

(assert (= (and d!37231 c!22541) b!123955))

(assert (= (and d!37231 (not c!22541)) b!123956))

(assert (= (and b!123956 c!22538) b!123949))

(assert (= (and b!123956 (not c!22538)) b!123952))

(assert (= (and b!123952 c!22540) b!123951))

(assert (= (and b!123952 (not c!22540)) b!123957))

(assert (= (or b!123951 b!123957) bm!13168))

(assert (= (or b!123949 bm!13168) bm!13166))

(assert (= (or b!123955 bm!13166) bm!13167))

(assert (= (and bm!13167 c!22539) b!123948))

(assert (= (and bm!13167 (not c!22539)) b!123950))

(assert (= (and d!37231 res!60132) b!123954))

(assert (= (and b!123954 res!60131) b!123953))

(declare-fun m!144169 () Bool)

(assert (=> d!37231 m!144169))

(declare-fun m!144171 () Bool)

(assert (=> d!37231 m!144171))

(declare-fun m!144173 () Bool)

(assert (=> b!123953 m!144173))

(declare-fun m!144175 () Bool)

(assert (=> b!123948 m!144175))

(declare-fun m!144177 () Bool)

(assert (=> b!123954 m!144177))

(declare-fun m!144179 () Bool)

(assert (=> bm!13167 m!144179))

(assert (=> d!37035 d!37231))

(declare-fun d!37233 () Bool)

(declare-fun e!81008 () Bool)

(assert (=> d!37233 e!81008))

(declare-fun res!60134 () Bool)

(assert (=> d!37233 (=> (not res!60134) (not e!81008))))

(declare-fun lt!63775 () ListLongMap!1671)

(assert (=> d!37233 (= res!60134 (contains!868 lt!63775 (_1!1283 (tuple2!2547 (select (arr!2206 (_keys!4482 (v!3089 (underlying!429 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (get!1433 (select (arr!2207 (_values!2738 (v!3089 (underlying!429 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (dynLambda!411 (defaultEntry!2755 (v!3089 (underlying!429 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun lt!63773 () List!1709)

(assert (=> d!37233 (= lt!63775 (ListLongMap!1672 lt!63773))))

(declare-fun lt!63776 () Unit!3846)

(declare-fun lt!63774 () Unit!3846)

(assert (=> d!37233 (= lt!63776 lt!63774)))

(assert (=> d!37233 (= (getValueByKey!163 lt!63773 (_1!1283 (tuple2!2547 (select (arr!2206 (_keys!4482 (v!3089 (underlying!429 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (get!1433 (select (arr!2207 (_values!2738 (v!3089 (underlying!429 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (dynLambda!411 (defaultEntry!2755 (v!3089 (underlying!429 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))) (Some!168 (_2!1283 (tuple2!2547 (select (arr!2206 (_keys!4482 (v!3089 (underlying!429 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (get!1433 (select (arr!2207 (_values!2738 (v!3089 (underlying!429 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (dynLambda!411 (defaultEntry!2755 (v!3089 (underlying!429 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!37233 (= lt!63774 (lemmaContainsTupThenGetReturnValue!81 lt!63773 (_1!1283 (tuple2!2547 (select (arr!2206 (_keys!4482 (v!3089 (underlying!429 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (get!1433 (select (arr!2207 (_values!2738 (v!3089 (underlying!429 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (dynLambda!411 (defaultEntry!2755 (v!3089 (underlying!429 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (_2!1283 (tuple2!2547 (select (arr!2206 (_keys!4482 (v!3089 (underlying!429 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (get!1433 (select (arr!2207 (_values!2738 (v!3089 (underlying!429 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (dynLambda!411 (defaultEntry!2755 (v!3089 (underlying!429 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!37233 (= lt!63773 (insertStrictlySorted!83 (toList!851 call!13129) (_1!1283 (tuple2!2547 (select (arr!2206 (_keys!4482 (v!3089 (underlying!429 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (get!1433 (select (arr!2207 (_values!2738 (v!3089 (underlying!429 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (dynLambda!411 (defaultEntry!2755 (v!3089 (underlying!429 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (_2!1283 (tuple2!2547 (select (arr!2206 (_keys!4482 (v!3089 (underlying!429 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (get!1433 (select (arr!2207 (_values!2738 (v!3089 (underlying!429 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (dynLambda!411 (defaultEntry!2755 (v!3089 (underlying!429 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!37233 (= (+!162 call!13129 (tuple2!2547 (select (arr!2206 (_keys!4482 (v!3089 (underlying!429 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (get!1433 (select (arr!2207 (_values!2738 (v!3089 (underlying!429 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (dynLambda!411 (defaultEntry!2755 (v!3089 (underlying!429 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) lt!63775)))

(declare-fun b!123958 () Bool)

(declare-fun res!60133 () Bool)

(assert (=> b!123958 (=> (not res!60133) (not e!81008))))

(assert (=> b!123958 (= res!60133 (= (getValueByKey!163 (toList!851 lt!63775) (_1!1283 (tuple2!2547 (select (arr!2206 (_keys!4482 (v!3089 (underlying!429 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (get!1433 (select (arr!2207 (_values!2738 (v!3089 (underlying!429 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (dynLambda!411 (defaultEntry!2755 (v!3089 (underlying!429 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))) (Some!168 (_2!1283 (tuple2!2547 (select (arr!2206 (_keys!4482 (v!3089 (underlying!429 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (get!1433 (select (arr!2207 (_values!2738 (v!3089 (underlying!429 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (dynLambda!411 (defaultEntry!2755 (v!3089 (underlying!429 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))))))))

(declare-fun b!123959 () Bool)

(assert (=> b!123959 (= e!81008 (contains!869 (toList!851 lt!63775) (tuple2!2547 (select (arr!2206 (_keys!4482 (v!3089 (underlying!429 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (get!1433 (select (arr!2207 (_values!2738 (v!3089 (underlying!429 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (dynLambda!411 (defaultEntry!2755 (v!3089 (underlying!429 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (= (and d!37233 res!60134) b!123958))

(assert (= (and b!123958 res!60133) b!123959))

(declare-fun m!144181 () Bool)

(assert (=> d!37233 m!144181))

(declare-fun m!144183 () Bool)

(assert (=> d!37233 m!144183))

(declare-fun m!144185 () Bool)

(assert (=> d!37233 m!144185))

(declare-fun m!144187 () Bool)

(assert (=> d!37233 m!144187))

(declare-fun m!144189 () Bool)

(assert (=> b!123958 m!144189))

(declare-fun m!144191 () Bool)

(assert (=> b!123959 m!144191))

(assert (=> b!123534 d!37233))

(declare-fun d!37235 () Bool)

(declare-fun e!81010 () Bool)

(assert (=> d!37235 e!81010))

(declare-fun res!60135 () Bool)

(assert (=> d!37235 (=> res!60135 e!81010)))

(declare-fun lt!63778 () Bool)

(assert (=> d!37235 (= res!60135 (not lt!63778))))

(declare-fun lt!63777 () Bool)

(assert (=> d!37235 (= lt!63778 lt!63777)))

(declare-fun lt!63780 () Unit!3846)

(declare-fun e!81009 () Unit!3846)

(assert (=> d!37235 (= lt!63780 e!81009)))

(declare-fun c!22542 () Bool)

(assert (=> d!37235 (= c!22542 lt!63777)))

(assert (=> d!37235 (= lt!63777 (containsKey!167 (toList!851 (+!162 lt!63544 (tuple2!2547 lt!63547 lt!63549))) lt!63546))))

(assert (=> d!37235 (= (contains!868 (+!162 lt!63544 (tuple2!2547 lt!63547 lt!63549)) lt!63546) lt!63778)))

(declare-fun b!123960 () Bool)

(declare-fun lt!63779 () Unit!3846)

(assert (=> b!123960 (= e!81009 lt!63779)))

(assert (=> b!123960 (= lt!63779 (lemmaContainsKeyImpliesGetValueByKeyDefined!116 (toList!851 (+!162 lt!63544 (tuple2!2547 lt!63547 lt!63549))) lt!63546))))

(assert (=> b!123960 (isDefined!117 (getValueByKey!163 (toList!851 (+!162 lt!63544 (tuple2!2547 lt!63547 lt!63549))) lt!63546))))

(declare-fun b!123961 () Bool)

(declare-fun Unit!3869 () Unit!3846)

(assert (=> b!123961 (= e!81009 Unit!3869)))

(declare-fun b!123962 () Bool)

(assert (=> b!123962 (= e!81010 (isDefined!117 (getValueByKey!163 (toList!851 (+!162 lt!63544 (tuple2!2547 lt!63547 lt!63549))) lt!63546)))))

(assert (= (and d!37235 c!22542) b!123960))

(assert (= (and d!37235 (not c!22542)) b!123961))

(assert (= (and d!37235 (not res!60135)) b!123962))

(declare-fun m!144193 () Bool)

(assert (=> d!37235 m!144193))

(declare-fun m!144195 () Bool)

(assert (=> b!123960 m!144195))

(declare-fun m!144197 () Bool)

(assert (=> b!123960 m!144197))

(assert (=> b!123960 m!144197))

(declare-fun m!144199 () Bool)

(assert (=> b!123960 m!144199))

(assert (=> b!123962 m!144197))

(assert (=> b!123962 m!144197))

(assert (=> b!123962 m!144199))

(assert (=> b!123534 d!37235))

(declare-fun d!37237 () Bool)

(declare-fun e!81011 () Bool)

(assert (=> d!37237 e!81011))

(declare-fun res!60137 () Bool)

(assert (=> d!37237 (=> (not res!60137) (not e!81011))))

(declare-fun lt!63783 () ListLongMap!1671)

(assert (=> d!37237 (= res!60137 (contains!868 lt!63783 (_1!1283 (tuple2!2547 lt!63547 lt!63549))))))

(declare-fun lt!63781 () List!1709)

(assert (=> d!37237 (= lt!63783 (ListLongMap!1672 lt!63781))))

(declare-fun lt!63784 () Unit!3846)

(declare-fun lt!63782 () Unit!3846)

(assert (=> d!37237 (= lt!63784 lt!63782)))

(assert (=> d!37237 (= (getValueByKey!163 lt!63781 (_1!1283 (tuple2!2547 lt!63547 lt!63549))) (Some!168 (_2!1283 (tuple2!2547 lt!63547 lt!63549))))))

(assert (=> d!37237 (= lt!63782 (lemmaContainsTupThenGetReturnValue!81 lt!63781 (_1!1283 (tuple2!2547 lt!63547 lt!63549)) (_2!1283 (tuple2!2547 lt!63547 lt!63549))))))

(assert (=> d!37237 (= lt!63781 (insertStrictlySorted!83 (toList!851 lt!63544) (_1!1283 (tuple2!2547 lt!63547 lt!63549)) (_2!1283 (tuple2!2547 lt!63547 lt!63549))))))

(assert (=> d!37237 (= (+!162 lt!63544 (tuple2!2547 lt!63547 lt!63549)) lt!63783)))

(declare-fun b!123963 () Bool)

(declare-fun res!60136 () Bool)

(assert (=> b!123963 (=> (not res!60136) (not e!81011))))

(assert (=> b!123963 (= res!60136 (= (getValueByKey!163 (toList!851 lt!63783) (_1!1283 (tuple2!2547 lt!63547 lt!63549))) (Some!168 (_2!1283 (tuple2!2547 lt!63547 lt!63549)))))))

(declare-fun b!123964 () Bool)

(assert (=> b!123964 (= e!81011 (contains!869 (toList!851 lt!63783) (tuple2!2547 lt!63547 lt!63549)))))

(assert (= (and d!37237 res!60137) b!123963))

(assert (= (and b!123963 res!60136) b!123964))

(declare-fun m!144201 () Bool)

(assert (=> d!37237 m!144201))

(declare-fun m!144203 () Bool)

(assert (=> d!37237 m!144203))

(declare-fun m!144205 () Bool)

(assert (=> d!37237 m!144205))

(declare-fun m!144207 () Bool)

(assert (=> d!37237 m!144207))

(declare-fun m!144209 () Bool)

(assert (=> b!123963 m!144209))

(declare-fun m!144211 () Bool)

(assert (=> b!123964 m!144211))

(assert (=> b!123534 d!37237))

(assert (=> b!123534 d!37015))

(declare-fun d!37239 () Bool)

(assert (=> d!37239 (not (contains!868 (+!162 lt!63544 (tuple2!2547 lt!63547 lt!63549)) lt!63546))))

(declare-fun lt!63787 () Unit!3846)

(declare-fun choose!754 (ListLongMap!1671 (_ BitVec 64) V!3411 (_ BitVec 64)) Unit!3846)

(assert (=> d!37239 (= lt!63787 (choose!754 lt!63544 lt!63547 lt!63549 lt!63546))))

(declare-fun e!81014 () Bool)

(assert (=> d!37239 e!81014))

(declare-fun res!60140 () Bool)

(assert (=> d!37239 (=> (not res!60140) (not e!81014))))

(assert (=> d!37239 (= res!60140 (not (contains!868 lt!63544 lt!63546)))))

(assert (=> d!37239 (= (addStillNotContains!56 lt!63544 lt!63547 lt!63549 lt!63546) lt!63787)))

(declare-fun b!123968 () Bool)

(assert (=> b!123968 (= e!81014 (not (= lt!63547 lt!63546)))))

(assert (= (and d!37239 res!60140) b!123968))

(assert (=> d!37239 m!143517))

(assert (=> d!37239 m!143517))

(assert (=> d!37239 m!143519))

(declare-fun m!144213 () Bool)

(assert (=> d!37239 m!144213))

(declare-fun m!144215 () Bool)

(assert (=> d!37239 m!144215))

(assert (=> b!123534 d!37239))

(declare-fun b!123969 () Bool)

(declare-fun e!81017 () ListLongMap!1671)

(declare-fun e!81020 () ListLongMap!1671)

(assert (=> b!123969 (= e!81017 e!81020)))

(declare-fun c!22545 () Bool)

(assert (=> b!123969 (= c!22545 (validKeyInArray!0 (select (arr!2206 (_keys!4482 newMap!16)) #b00000000000000000000000000000000)))))

(declare-fun b!123970 () Bool)

(assert (=> b!123970 (= e!81017 (ListLongMap!1672 Nil!1706))))

(declare-fun b!123971 () Bool)

(declare-fun e!81016 () Bool)

(assert (=> b!123971 (= e!81016 (validKeyInArray!0 (select (arr!2206 (_keys!4482 newMap!16)) #b00000000000000000000000000000000)))))

(assert (=> b!123971 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(declare-fun bm!13169 () Bool)

(declare-fun call!13172 () ListLongMap!1671)

(assert (=> bm!13169 (= call!13172 (getCurrentListMapNoExtraKeys!129 (_keys!4482 newMap!16) (_values!2738 newMap!16) (mask!6993 newMap!16) (extraKeys!2540 newMap!16) (zeroValue!2620 newMap!16) (minValue!2620 newMap!16) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (defaultEntry!2755 newMap!16)))))

(declare-fun b!123972 () Bool)

(declare-fun e!81019 () Bool)

(declare-fun e!81018 () Bool)

(assert (=> b!123972 (= e!81019 e!81018)))

(assert (=> b!123972 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!2468 (_keys!4482 newMap!16))))))

(declare-fun res!60143 () Bool)

(declare-fun lt!63792 () ListLongMap!1671)

(assert (=> b!123972 (= res!60143 (contains!868 lt!63792 (select (arr!2206 (_keys!4482 newMap!16)) #b00000000000000000000000000000000)))))

(assert (=> b!123972 (=> (not res!60143) (not e!81018))))

(declare-fun b!123973 () Bool)

(declare-fun e!81015 () Bool)

(assert (=> b!123973 (= e!81015 e!81019)))

(declare-fun c!22543 () Bool)

(assert (=> b!123973 (= c!22543 e!81016)))

(declare-fun res!60144 () Bool)

(assert (=> b!123973 (=> (not res!60144) (not e!81016))))

(assert (=> b!123973 (= res!60144 (bvslt #b00000000000000000000000000000000 (size!2468 (_keys!4482 newMap!16))))))

(declare-fun b!123974 () Bool)

(declare-fun res!60142 () Bool)

(assert (=> b!123974 (=> (not res!60142) (not e!81015))))

(assert (=> b!123974 (= res!60142 (not (contains!868 lt!63792 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun d!37241 () Bool)

(assert (=> d!37241 e!81015))

(declare-fun res!60141 () Bool)

(assert (=> d!37241 (=> (not res!60141) (not e!81015))))

(assert (=> d!37241 (= res!60141 (not (contains!868 lt!63792 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!37241 (= lt!63792 e!81017)))

(declare-fun c!22546 () Bool)

(assert (=> d!37241 (= c!22546 (bvsge #b00000000000000000000000000000000 (size!2468 (_keys!4482 newMap!16))))))

(assert (=> d!37241 (validMask!0 (mask!6993 newMap!16))))

(assert (=> d!37241 (= (getCurrentListMapNoExtraKeys!129 (_keys!4482 newMap!16) (_values!2738 newMap!16) (mask!6993 newMap!16) (extraKeys!2540 newMap!16) (zeroValue!2620 newMap!16) (minValue!2620 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2755 newMap!16)) lt!63792)))

(declare-fun b!123975 () Bool)

(assert (=> b!123975 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!2468 (_keys!4482 newMap!16))))))

(assert (=> b!123975 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!2469 (_values!2738 newMap!16))))))

(assert (=> b!123975 (= e!81018 (= (apply!108 lt!63792 (select (arr!2206 (_keys!4482 newMap!16)) #b00000000000000000000000000000000)) (get!1433 (select (arr!2207 (_values!2738 newMap!16)) #b00000000000000000000000000000000) (dynLambda!411 (defaultEntry!2755 newMap!16) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!123976 () Bool)

(declare-fun e!81021 () Bool)

(assert (=> b!123976 (= e!81019 e!81021)))

(declare-fun c!22544 () Bool)

(assert (=> b!123976 (= c!22544 (bvslt #b00000000000000000000000000000000 (size!2468 (_keys!4482 newMap!16))))))

(declare-fun b!123977 () Bool)

(assert (=> b!123977 (= e!81020 call!13172)))

(declare-fun b!123978 () Bool)

(declare-fun lt!63789 () Unit!3846)

(declare-fun lt!63794 () Unit!3846)

(assert (=> b!123978 (= lt!63789 lt!63794)))

(declare-fun lt!63793 () V!3411)

(declare-fun lt!63790 () (_ BitVec 64))

(declare-fun lt!63788 () ListLongMap!1671)

(declare-fun lt!63791 () (_ BitVec 64))

(assert (=> b!123978 (not (contains!868 (+!162 lt!63788 (tuple2!2547 lt!63791 lt!63793)) lt!63790))))

(assert (=> b!123978 (= lt!63794 (addStillNotContains!56 lt!63788 lt!63791 lt!63793 lt!63790))))

(assert (=> b!123978 (= lt!63790 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!123978 (= lt!63793 (get!1433 (select (arr!2207 (_values!2738 newMap!16)) #b00000000000000000000000000000000) (dynLambda!411 (defaultEntry!2755 newMap!16) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!123978 (= lt!63791 (select (arr!2206 (_keys!4482 newMap!16)) #b00000000000000000000000000000000))))

(assert (=> b!123978 (= lt!63788 call!13172)))

(assert (=> b!123978 (= e!81020 (+!162 call!13172 (tuple2!2547 (select (arr!2206 (_keys!4482 newMap!16)) #b00000000000000000000000000000000) (get!1433 (select (arr!2207 (_values!2738 newMap!16)) #b00000000000000000000000000000000) (dynLambda!411 (defaultEntry!2755 newMap!16) #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!123979 () Bool)

(assert (=> b!123979 (= e!81021 (= lt!63792 (getCurrentListMapNoExtraKeys!129 (_keys!4482 newMap!16) (_values!2738 newMap!16) (mask!6993 newMap!16) (extraKeys!2540 newMap!16) (zeroValue!2620 newMap!16) (minValue!2620 newMap!16) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (defaultEntry!2755 newMap!16))))))

(declare-fun b!123980 () Bool)

(assert (=> b!123980 (= e!81021 (isEmpty!395 lt!63792))))

(assert (= (and d!37241 c!22546) b!123970))

(assert (= (and d!37241 (not c!22546)) b!123969))

(assert (= (and b!123969 c!22545) b!123978))

(assert (= (and b!123969 (not c!22545)) b!123977))

(assert (= (or b!123978 b!123977) bm!13169))

(assert (= (and d!37241 res!60141) b!123974))

(assert (= (and b!123974 res!60142) b!123973))

(assert (= (and b!123973 res!60144) b!123971))

(assert (= (and b!123973 c!22543) b!123972))

(assert (= (and b!123973 (not c!22543)) b!123976))

(assert (= (and b!123972 res!60143) b!123975))

(assert (= (and b!123976 c!22544) b!123979))

(assert (= (and b!123976 (not c!22544)) b!123980))

(declare-fun b_lambda!5463 () Bool)

(assert (=> (not b_lambda!5463) (not b!123975)))

(assert (=> b!123975 t!6028))

(declare-fun b_and!7621 () Bool)

(assert (= b_and!7617 (and (=> t!6028 result!3787) b_and!7621)))

(assert (=> b!123975 t!6030))

(declare-fun b_and!7623 () Bool)

(assert (= b_and!7619 (and (=> t!6030 result!3789) b_and!7623)))

(declare-fun b_lambda!5465 () Bool)

(assert (=> (not b_lambda!5465) (not b!123978)))

(assert (=> b!123978 t!6028))

(declare-fun b_and!7625 () Bool)

(assert (= b_and!7621 (and (=> t!6028 result!3787) b_and!7625)))

(assert (=> b!123978 t!6030))

(declare-fun b_and!7627 () Bool)

(assert (= b_and!7623 (and (=> t!6030 result!3789) b_and!7627)))

(declare-fun m!144217 () Bool)

(assert (=> b!123979 m!144217))

(declare-fun m!144219 () Bool)

(assert (=> d!37241 m!144219))

(assert (=> d!37241 m!143505))

(assert (=> b!123972 m!143539))

(assert (=> b!123972 m!143539))

(declare-fun m!144221 () Bool)

(assert (=> b!123972 m!144221))

(assert (=> b!123971 m!143539))

(assert (=> b!123971 m!143539))

(assert (=> b!123971 m!143541))

(declare-fun m!144223 () Bool)

(assert (=> b!123974 m!144223))

(assert (=> bm!13169 m!144217))

(assert (=> b!123969 m!143539))

(assert (=> b!123969 m!143539))

(assert (=> b!123969 m!143541))

(declare-fun m!144225 () Bool)

(assert (=> b!123980 m!144225))

(assert (=> b!123978 m!143581))

(assert (=> b!123978 m!143579))

(assert (=> b!123978 m!143583))

(assert (=> b!123978 m!143581))

(declare-fun m!144227 () Bool)

(assert (=> b!123978 m!144227))

(declare-fun m!144229 () Bool)

(assert (=> b!123978 m!144229))

(declare-fun m!144231 () Bool)

(assert (=> b!123978 m!144231))

(assert (=> b!123978 m!143579))

(declare-fun m!144233 () Bool)

(assert (=> b!123978 m!144233))

(assert (=> b!123978 m!143539))

(assert (=> b!123978 m!144227))

(assert (=> b!123975 m!143581))

(assert (=> b!123975 m!143579))

(assert (=> b!123975 m!143583))

(assert (=> b!123975 m!143539))

(declare-fun m!144235 () Bool)

(assert (=> b!123975 m!144235))

(assert (=> b!123975 m!143581))

(assert (=> b!123975 m!143579))

(assert (=> b!123975 m!143539))

(assert (=> bm!13131 d!37241))

(assert (=> b!123630 d!37151))

(declare-fun d!37243 () Bool)

(declare-fun c!22547 () Bool)

(assert (=> d!37243 (= c!22547 (and ((_ is Cons!1705) (toList!851 lt!63629)) (= (_1!1283 (h!2306 (toList!851 lt!63629))) (_1!1283 (tuple2!2547 lt!63521 (minValue!2620 (v!3089 (underlying!429 thiss!992))))))))))

(declare-fun e!81022 () Option!169)

(assert (=> d!37243 (= (getValueByKey!163 (toList!851 lt!63629) (_1!1283 (tuple2!2547 lt!63521 (minValue!2620 (v!3089 (underlying!429 thiss!992)))))) e!81022)))

(declare-fun b!123982 () Bool)

(declare-fun e!81023 () Option!169)

(assert (=> b!123982 (= e!81022 e!81023)))

(declare-fun c!22548 () Bool)

(assert (=> b!123982 (= c!22548 (and ((_ is Cons!1705) (toList!851 lt!63629)) (not (= (_1!1283 (h!2306 (toList!851 lt!63629))) (_1!1283 (tuple2!2547 lt!63521 (minValue!2620 (v!3089 (underlying!429 thiss!992)))))))))))

(declare-fun b!123981 () Bool)

(assert (=> b!123981 (= e!81022 (Some!168 (_2!1283 (h!2306 (toList!851 lt!63629)))))))

(declare-fun b!123983 () Bool)

(assert (=> b!123983 (= e!81023 (getValueByKey!163 (t!6020 (toList!851 lt!63629)) (_1!1283 (tuple2!2547 lt!63521 (minValue!2620 (v!3089 (underlying!429 thiss!992)))))))))

(declare-fun b!123984 () Bool)

(assert (=> b!123984 (= e!81023 None!167)))

(assert (= (and d!37243 c!22547) b!123981))

(assert (= (and d!37243 (not c!22547)) b!123982))

(assert (= (and b!123982 c!22548) b!123983))

(assert (= (and b!123982 (not c!22548)) b!123984))

(declare-fun m!144237 () Bool)

(assert (=> b!123983 m!144237))

(assert (=> b!123602 d!37243))

(declare-fun d!37245 () Bool)

(assert (=> d!37245 (= (get!1434 (getValueByKey!163 (toList!851 lt!63525) (select (arr!2206 (_keys!4482 (v!3089 (underlying!429 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)))) (v!3092 (getValueByKey!163 (toList!851 lt!63525) (select (arr!2206 (_keys!4482 (v!3089 (underlying!429 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)))))))

(assert (=> d!37013 d!37245))

(assert (=> d!37013 d!37145))

(declare-fun d!37247 () Bool)

(assert (=> d!37247 (= (get!1436 (select (arr!2207 (_values!2738 (v!3089 (underlying!429 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (dynLambda!411 (defaultEntry!2755 (v!3089 (underlying!429 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (dynLambda!411 (defaultEntry!2755 (v!3089 (underlying!429 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!123589 d!37247))

(assert (=> b!123555 d!37151))

(declare-fun b!123985 () Bool)

(declare-fun e!81024 () (_ BitVec 32))

(declare-fun call!13173 () (_ BitVec 32))

(assert (=> b!123985 (= e!81024 (bvadd #b00000000000000000000000000000001 call!13173))))

(declare-fun b!123986 () Bool)

(declare-fun e!81025 () (_ BitVec 32))

(assert (=> b!123986 (= e!81025 #b00000000000000000000000000000000)))

(declare-fun b!123987 () Bool)

(assert (=> b!123987 (= e!81024 call!13173)))

(declare-fun b!123988 () Bool)

(assert (=> b!123988 (= e!81025 e!81024)))

(declare-fun c!22550 () Bool)

(assert (=> b!123988 (= c!22550 (validKeyInArray!0 (select (arr!2206 (_keys!4482 (v!3089 (underlying!429 thiss!992)))) #b00000000000000000000000000000000)))))

(declare-fun d!37249 () Bool)

(declare-fun lt!63795 () (_ BitVec 32))

(assert (=> d!37249 (and (bvsge lt!63795 #b00000000000000000000000000000000) (bvsle lt!63795 (bvsub (size!2468 (_keys!4482 (v!3089 (underlying!429 thiss!992)))) #b00000000000000000000000000000000)))))

(assert (=> d!37249 (= lt!63795 e!81025)))

(declare-fun c!22549 () Bool)

(assert (=> d!37249 (= c!22549 (bvsge #b00000000000000000000000000000000 (size!2468 (_keys!4482 (v!3089 (underlying!429 thiss!992))))))))

(assert (=> d!37249 (and (bvsle #b00000000000000000000000000000000 (size!2468 (_keys!4482 (v!3089 (underlying!429 thiss!992))))) (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvsle (size!2468 (_keys!4482 (v!3089 (underlying!429 thiss!992)))) (size!2468 (_keys!4482 (v!3089 (underlying!429 thiss!992))))))))

(assert (=> d!37249 (= (arrayCountValidKeys!0 (_keys!4482 (v!3089 (underlying!429 thiss!992))) #b00000000000000000000000000000000 (size!2468 (_keys!4482 (v!3089 (underlying!429 thiss!992))))) lt!63795)))

(declare-fun bm!13170 () Bool)

(assert (=> bm!13170 (= call!13173 (arrayCountValidKeys!0 (_keys!4482 (v!3089 (underlying!429 thiss!992))) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!2468 (_keys!4482 (v!3089 (underlying!429 thiss!992))))))))

(assert (= (and d!37249 c!22549) b!123986))

(assert (= (and d!37249 (not c!22549)) b!123988))

(assert (= (and b!123988 c!22550) b!123985))

(assert (= (and b!123988 (not c!22550)) b!123987))

(assert (= (or b!123985 b!123987) bm!13170))

(assert (=> b!123988 m!143943))

(assert (=> b!123988 m!143943))

(assert (=> b!123988 m!143945))

(declare-fun m!144239 () Bool)

(assert (=> bm!13170 m!144239))

(assert (=> b!123578 d!37249))

(declare-fun d!37251 () Bool)

(declare-fun res!60145 () Bool)

(declare-fun e!81026 () Bool)

(assert (=> d!37251 (=> res!60145 e!81026)))

(assert (=> d!37251 (= res!60145 (and ((_ is Cons!1705) (toList!851 lt!63525)) (= (_1!1283 (h!2306 (toList!851 lt!63525))) (select (arr!2206 (_keys!4482 (v!3089 (underlying!429 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)))))))

(assert (=> d!37251 (= (containsKey!167 (toList!851 lt!63525) (select (arr!2206 (_keys!4482 (v!3089 (underlying!429 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))) e!81026)))

(declare-fun b!123989 () Bool)

(declare-fun e!81027 () Bool)

(assert (=> b!123989 (= e!81026 e!81027)))

(declare-fun res!60146 () Bool)

(assert (=> b!123989 (=> (not res!60146) (not e!81027))))

(assert (=> b!123989 (= res!60146 (and (or (not ((_ is Cons!1705) (toList!851 lt!63525))) (bvsle (_1!1283 (h!2306 (toList!851 lt!63525))) (select (arr!2206 (_keys!4482 (v!3089 (underlying!429 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)))) ((_ is Cons!1705) (toList!851 lt!63525)) (bvslt (_1!1283 (h!2306 (toList!851 lt!63525))) (select (arr!2206 (_keys!4482 (v!3089 (underlying!429 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)))))))

(declare-fun b!123990 () Bool)

(assert (=> b!123990 (= e!81027 (containsKey!167 (t!6020 (toList!851 lt!63525)) (select (arr!2206 (_keys!4482 (v!3089 (underlying!429 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))))))

(assert (= (and d!37251 (not res!60145)) b!123989))

(assert (= (and b!123989 res!60146) b!123990))

(assert (=> b!123990 m!143427))

(declare-fun m!144241 () Bool)

(assert (=> b!123990 m!144241))

(assert (=> d!37011 d!37251))

(assert (=> b!123552 d!37151))

(assert (=> b!123633 d!37151))

(declare-fun c!22551 () Bool)

(declare-fun d!37253 () Bool)

(assert (=> d!37253 (= c!22551 (and ((_ is Cons!1705) (toList!851 lt!63634)) (= (_1!1283 (h!2306 (toList!851 lt!63634))) (_1!1283 (tuple2!2547 lt!63518 (minValue!2620 (v!3089 (underlying!429 thiss!992))))))))))

(declare-fun e!81028 () Option!169)

(assert (=> d!37253 (= (getValueByKey!163 (toList!851 lt!63634) (_1!1283 (tuple2!2547 lt!63518 (minValue!2620 (v!3089 (underlying!429 thiss!992)))))) e!81028)))

(declare-fun b!123992 () Bool)

(declare-fun e!81029 () Option!169)

(assert (=> b!123992 (= e!81028 e!81029)))

(declare-fun c!22552 () Bool)

(assert (=> b!123992 (= c!22552 (and ((_ is Cons!1705) (toList!851 lt!63634)) (not (= (_1!1283 (h!2306 (toList!851 lt!63634))) (_1!1283 (tuple2!2547 lt!63518 (minValue!2620 (v!3089 (underlying!429 thiss!992)))))))))))

(declare-fun b!123991 () Bool)

(assert (=> b!123991 (= e!81028 (Some!168 (_2!1283 (h!2306 (toList!851 lt!63634)))))))

(declare-fun b!123993 () Bool)

(assert (=> b!123993 (= e!81029 (getValueByKey!163 (t!6020 (toList!851 lt!63634)) (_1!1283 (tuple2!2547 lt!63518 (minValue!2620 (v!3089 (underlying!429 thiss!992)))))))))

(declare-fun b!123994 () Bool)

(assert (=> b!123994 (= e!81029 None!167)))

(assert (= (and d!37253 c!22551) b!123991))

(assert (= (and d!37253 (not c!22551)) b!123992))

(assert (= (and b!123992 c!22552) b!123993))

(assert (= (and b!123992 (not c!22552)) b!123994))

(declare-fun m!144243 () Bool)

(assert (=> b!123993 m!144243))

(assert (=> b!123605 d!37253))

(assert (=> b!123499 d!37079))

(declare-fun c!22553 () Bool)

(declare-fun d!37255 () Bool)

(assert (=> d!37255 (= c!22553 (and ((_ is Cons!1705) (toList!851 lt!63618)) (= (_1!1283 (h!2306 (toList!851 lt!63618))) (_1!1283 (tuple2!2547 lt!63529 (zeroValue!2620 (v!3089 (underlying!429 thiss!992))))))))))

(declare-fun e!81030 () Option!169)

(assert (=> d!37255 (= (getValueByKey!163 (toList!851 lt!63618) (_1!1283 (tuple2!2547 lt!63529 (zeroValue!2620 (v!3089 (underlying!429 thiss!992)))))) e!81030)))

(declare-fun b!123996 () Bool)

(declare-fun e!81031 () Option!169)

(assert (=> b!123996 (= e!81030 e!81031)))

(declare-fun c!22554 () Bool)

(assert (=> b!123996 (= c!22554 (and ((_ is Cons!1705) (toList!851 lt!63618)) (not (= (_1!1283 (h!2306 (toList!851 lt!63618))) (_1!1283 (tuple2!2547 lt!63529 (zeroValue!2620 (v!3089 (underlying!429 thiss!992)))))))))))

(declare-fun b!123995 () Bool)

(assert (=> b!123995 (= e!81030 (Some!168 (_2!1283 (h!2306 (toList!851 lt!63618)))))))

(declare-fun b!123997 () Bool)

(assert (=> b!123997 (= e!81031 (getValueByKey!163 (t!6020 (toList!851 lt!63618)) (_1!1283 (tuple2!2547 lt!63529 (zeroValue!2620 (v!3089 (underlying!429 thiss!992)))))))))

(declare-fun b!123998 () Bool)

(assert (=> b!123998 (= e!81031 None!167)))

(assert (= (and d!37255 c!22553) b!123995))

(assert (= (and d!37255 (not c!22553)) b!123996))

(assert (= (and b!123996 c!22554) b!123997))

(assert (= (and b!123996 (not c!22554)) b!123998))

(declare-fun m!144245 () Bool)

(assert (=> b!123997 m!144245))

(assert (=> b!123596 d!37255))

(assert (=> b!123574 d!37217))

(assert (=> b!123574 d!37083))

(declare-fun d!37257 () Bool)

(assert (=> d!37257 (= (apply!108 lt!63580 #b1000000000000000000000000000000000000000000000000000000000000000) (get!1434 (getValueByKey!163 (toList!851 lt!63580) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun bs!5132 () Bool)

(assert (= bs!5132 d!37257))

(assert (=> bs!5132 m!144077))

(assert (=> bs!5132 m!144077))

(declare-fun m!144247 () Bool)

(assert (=> bs!5132 m!144247))

(assert (=> b!123553 d!37257))

(declare-fun d!37259 () Bool)

(assert (=> d!37259 (= (apply!108 lt!63578 lt!63569) (get!1434 (getValueByKey!163 (toList!851 lt!63578) lt!63569)))))

(declare-fun bs!5133 () Bool)

(assert (= bs!5133 d!37259))

(declare-fun m!144249 () Bool)

(assert (=> bs!5133 m!144249))

(assert (=> bs!5133 m!144249))

(declare-fun m!144251 () Bool)

(assert (=> bs!5133 m!144251))

(assert (=> b!123558 d!37259))

(declare-fun d!37261 () Bool)

(assert (=> d!37261 (= (apply!108 (+!162 lt!63574 (tuple2!2547 lt!63576 (minValue!2620 newMap!16))) lt!63582) (apply!108 lt!63574 lt!63582))))

(declare-fun lt!63796 () Unit!3846)

(assert (=> d!37261 (= lt!63796 (choose!750 lt!63574 lt!63576 (minValue!2620 newMap!16) lt!63582))))

(declare-fun e!81032 () Bool)

(assert (=> d!37261 e!81032))

(declare-fun res!60147 () Bool)

(assert (=> d!37261 (=> (not res!60147) (not e!81032))))

(assert (=> d!37261 (= res!60147 (contains!868 lt!63574 lt!63582))))

(assert (=> d!37261 (= (addApplyDifferent!84 lt!63574 lt!63576 (minValue!2620 newMap!16) lt!63582) lt!63796)))

(declare-fun b!123999 () Bool)

(assert (=> b!123999 (= e!81032 (not (= lt!63582 lt!63576)))))

(assert (= (and d!37261 res!60147) b!123999))

(assert (=> d!37261 m!143565))

(declare-fun m!144253 () Bool)

(assert (=> d!37261 m!144253))

(assert (=> d!37261 m!143563))

(declare-fun m!144255 () Bool)

(assert (=> d!37261 m!144255))

(assert (=> d!37261 m!143565))

(assert (=> d!37261 m!143567))

(assert (=> b!123558 d!37261))

(declare-fun d!37263 () Bool)

(assert (=> d!37263 (= (apply!108 (+!162 lt!63564 (tuple2!2547 lt!63573 (minValue!2620 newMap!16))) lt!63567) (apply!108 lt!63564 lt!63567))))

(declare-fun lt!63797 () Unit!3846)

(assert (=> d!37263 (= lt!63797 (choose!750 lt!63564 lt!63573 (minValue!2620 newMap!16) lt!63567))))

(declare-fun e!81033 () Bool)

(assert (=> d!37263 e!81033))

(declare-fun res!60148 () Bool)

(assert (=> d!37263 (=> (not res!60148) (not e!81033))))

(assert (=> d!37263 (= res!60148 (contains!868 lt!63564 lt!63567))))

(assert (=> d!37263 (= (addApplyDifferent!84 lt!63564 lt!63573 (minValue!2620 newMap!16) lt!63567) lt!63797)))

(declare-fun b!124000 () Bool)

(assert (=> b!124000 (= e!81033 (not (= lt!63567 lt!63573)))))

(assert (= (and d!37263 res!60148) b!124000))

(assert (=> d!37263 m!143555))

(declare-fun m!144257 () Bool)

(assert (=> d!37263 m!144257))

(assert (=> d!37263 m!143553))

(declare-fun m!144259 () Bool)

(assert (=> d!37263 m!144259))

(assert (=> d!37263 m!143555))

(assert (=> d!37263 m!143557))

(assert (=> b!123558 d!37263))

(declare-fun d!37265 () Bool)

(assert (=> d!37265 (contains!868 (+!162 lt!63583 (tuple2!2547 lt!63568 (zeroValue!2620 newMap!16))) lt!63581)))

(declare-fun lt!63798 () Unit!3846)

(assert (=> d!37265 (= lt!63798 (choose!751 lt!63583 lt!63568 (zeroValue!2620 newMap!16) lt!63581))))

(assert (=> d!37265 (contains!868 lt!63583 lt!63581)))

(assert (=> d!37265 (= (addStillContains!84 lt!63583 lt!63568 (zeroValue!2620 newMap!16) lt!63581) lt!63798)))

(declare-fun bs!5134 () Bool)

(assert (= bs!5134 d!37265))

(assert (=> bs!5134 m!143547))

(assert (=> bs!5134 m!143547))

(assert (=> bs!5134 m!143549))

(declare-fun m!144261 () Bool)

(assert (=> bs!5134 m!144261))

(declare-fun m!144263 () Bool)

(assert (=> bs!5134 m!144263))

(assert (=> b!123558 d!37265))

(declare-fun d!37267 () Bool)

(assert (=> d!37267 (= (apply!108 lt!63564 lt!63567) (get!1434 (getValueByKey!163 (toList!851 lt!63564) lt!63567)))))

(declare-fun bs!5135 () Bool)

(assert (= bs!5135 d!37267))

(declare-fun m!144265 () Bool)

(assert (=> bs!5135 m!144265))

(assert (=> bs!5135 m!144265))

(declare-fun m!144267 () Bool)

(assert (=> bs!5135 m!144267))

(assert (=> b!123558 d!37267))

(declare-fun d!37269 () Bool)

(assert (=> d!37269 (= (apply!108 lt!63574 lt!63582) (get!1434 (getValueByKey!163 (toList!851 lt!63574) lt!63582)))))

(declare-fun bs!5136 () Bool)

(assert (= bs!5136 d!37269))

(declare-fun m!144269 () Bool)

(assert (=> bs!5136 m!144269))

(assert (=> bs!5136 m!144269))

(declare-fun m!144271 () Bool)

(assert (=> bs!5136 m!144271))

(assert (=> b!123558 d!37269))

(declare-fun d!37271 () Bool)

(assert (=> d!37271 (= (apply!108 (+!162 lt!63564 (tuple2!2547 lt!63573 (minValue!2620 newMap!16))) lt!63567) (get!1434 (getValueByKey!163 (toList!851 (+!162 lt!63564 (tuple2!2547 lt!63573 (minValue!2620 newMap!16)))) lt!63567)))))

(declare-fun bs!5137 () Bool)

(assert (= bs!5137 d!37271))

(declare-fun m!144273 () Bool)

(assert (=> bs!5137 m!144273))

(assert (=> bs!5137 m!144273))

(declare-fun m!144275 () Bool)

(assert (=> bs!5137 m!144275))

(assert (=> b!123558 d!37271))

(declare-fun d!37273 () Bool)

(declare-fun e!81034 () Bool)

(assert (=> d!37273 e!81034))

(declare-fun res!60150 () Bool)

(assert (=> d!37273 (=> (not res!60150) (not e!81034))))

(declare-fun lt!63801 () ListLongMap!1671)

(assert (=> d!37273 (= res!60150 (contains!868 lt!63801 (_1!1283 (tuple2!2547 lt!63576 (minValue!2620 newMap!16)))))))

(declare-fun lt!63799 () List!1709)

(assert (=> d!37273 (= lt!63801 (ListLongMap!1672 lt!63799))))

(declare-fun lt!63802 () Unit!3846)

(declare-fun lt!63800 () Unit!3846)

(assert (=> d!37273 (= lt!63802 lt!63800)))

(assert (=> d!37273 (= (getValueByKey!163 lt!63799 (_1!1283 (tuple2!2547 lt!63576 (minValue!2620 newMap!16)))) (Some!168 (_2!1283 (tuple2!2547 lt!63576 (minValue!2620 newMap!16)))))))

(assert (=> d!37273 (= lt!63800 (lemmaContainsTupThenGetReturnValue!81 lt!63799 (_1!1283 (tuple2!2547 lt!63576 (minValue!2620 newMap!16))) (_2!1283 (tuple2!2547 lt!63576 (minValue!2620 newMap!16)))))))

(assert (=> d!37273 (= lt!63799 (insertStrictlySorted!83 (toList!851 lt!63574) (_1!1283 (tuple2!2547 lt!63576 (minValue!2620 newMap!16))) (_2!1283 (tuple2!2547 lt!63576 (minValue!2620 newMap!16)))))))

(assert (=> d!37273 (= (+!162 lt!63574 (tuple2!2547 lt!63576 (minValue!2620 newMap!16))) lt!63801)))

(declare-fun b!124001 () Bool)

(declare-fun res!60149 () Bool)

(assert (=> b!124001 (=> (not res!60149) (not e!81034))))

(assert (=> b!124001 (= res!60149 (= (getValueByKey!163 (toList!851 lt!63801) (_1!1283 (tuple2!2547 lt!63576 (minValue!2620 newMap!16)))) (Some!168 (_2!1283 (tuple2!2547 lt!63576 (minValue!2620 newMap!16))))))))

(declare-fun b!124002 () Bool)

(assert (=> b!124002 (= e!81034 (contains!869 (toList!851 lt!63801) (tuple2!2547 lt!63576 (minValue!2620 newMap!16))))))

(assert (= (and d!37273 res!60150) b!124001))

(assert (= (and b!124001 res!60149) b!124002))

(declare-fun m!144277 () Bool)

(assert (=> d!37273 m!144277))

(declare-fun m!144279 () Bool)

(assert (=> d!37273 m!144279))

(declare-fun m!144281 () Bool)

(assert (=> d!37273 m!144281))

(declare-fun m!144283 () Bool)

(assert (=> d!37273 m!144283))

(declare-fun m!144285 () Bool)

(assert (=> b!124001 m!144285))

(declare-fun m!144287 () Bool)

(assert (=> b!124002 m!144287))

(assert (=> b!123558 d!37273))

(declare-fun d!37275 () Bool)

(declare-fun e!81035 () Bool)

(assert (=> d!37275 e!81035))

(declare-fun res!60152 () Bool)

(assert (=> d!37275 (=> (not res!60152) (not e!81035))))

(declare-fun lt!63805 () ListLongMap!1671)

(assert (=> d!37275 (= res!60152 (contains!868 lt!63805 (_1!1283 (tuple2!2547 lt!63568 (zeroValue!2620 newMap!16)))))))

(declare-fun lt!63803 () List!1709)

(assert (=> d!37275 (= lt!63805 (ListLongMap!1672 lt!63803))))

(declare-fun lt!63806 () Unit!3846)

(declare-fun lt!63804 () Unit!3846)

(assert (=> d!37275 (= lt!63806 lt!63804)))

(assert (=> d!37275 (= (getValueByKey!163 lt!63803 (_1!1283 (tuple2!2547 lt!63568 (zeroValue!2620 newMap!16)))) (Some!168 (_2!1283 (tuple2!2547 lt!63568 (zeroValue!2620 newMap!16)))))))

(assert (=> d!37275 (= lt!63804 (lemmaContainsTupThenGetReturnValue!81 lt!63803 (_1!1283 (tuple2!2547 lt!63568 (zeroValue!2620 newMap!16))) (_2!1283 (tuple2!2547 lt!63568 (zeroValue!2620 newMap!16)))))))

(assert (=> d!37275 (= lt!63803 (insertStrictlySorted!83 (toList!851 lt!63583) (_1!1283 (tuple2!2547 lt!63568 (zeroValue!2620 newMap!16))) (_2!1283 (tuple2!2547 lt!63568 (zeroValue!2620 newMap!16)))))))

(assert (=> d!37275 (= (+!162 lt!63583 (tuple2!2547 lt!63568 (zeroValue!2620 newMap!16))) lt!63805)))

(declare-fun b!124003 () Bool)

(declare-fun res!60151 () Bool)

(assert (=> b!124003 (=> (not res!60151) (not e!81035))))

(assert (=> b!124003 (= res!60151 (= (getValueByKey!163 (toList!851 lt!63805) (_1!1283 (tuple2!2547 lt!63568 (zeroValue!2620 newMap!16)))) (Some!168 (_2!1283 (tuple2!2547 lt!63568 (zeroValue!2620 newMap!16))))))))

(declare-fun b!124004 () Bool)

(assert (=> b!124004 (= e!81035 (contains!869 (toList!851 lt!63805) (tuple2!2547 lt!63568 (zeroValue!2620 newMap!16))))))

(assert (= (and d!37275 res!60152) b!124003))

(assert (= (and b!124003 res!60151) b!124004))

(declare-fun m!144289 () Bool)

(assert (=> d!37275 m!144289))

(declare-fun m!144291 () Bool)

(assert (=> d!37275 m!144291))

(declare-fun m!144293 () Bool)

(assert (=> d!37275 m!144293))

(declare-fun m!144295 () Bool)

(assert (=> d!37275 m!144295))

(declare-fun m!144297 () Bool)

(assert (=> b!124003 m!144297))

(declare-fun m!144299 () Bool)

(assert (=> b!124004 m!144299))

(assert (=> b!123558 d!37275))

(declare-fun d!37277 () Bool)

(declare-fun e!81036 () Bool)

(assert (=> d!37277 e!81036))

(declare-fun res!60154 () Bool)

(assert (=> d!37277 (=> (not res!60154) (not e!81036))))

(declare-fun lt!63809 () ListLongMap!1671)

(assert (=> d!37277 (= res!60154 (contains!868 lt!63809 (_1!1283 (tuple2!2547 lt!63573 (minValue!2620 newMap!16)))))))

(declare-fun lt!63807 () List!1709)

(assert (=> d!37277 (= lt!63809 (ListLongMap!1672 lt!63807))))

(declare-fun lt!63810 () Unit!3846)

(declare-fun lt!63808 () Unit!3846)

(assert (=> d!37277 (= lt!63810 lt!63808)))

(assert (=> d!37277 (= (getValueByKey!163 lt!63807 (_1!1283 (tuple2!2547 lt!63573 (minValue!2620 newMap!16)))) (Some!168 (_2!1283 (tuple2!2547 lt!63573 (minValue!2620 newMap!16)))))))

(assert (=> d!37277 (= lt!63808 (lemmaContainsTupThenGetReturnValue!81 lt!63807 (_1!1283 (tuple2!2547 lt!63573 (minValue!2620 newMap!16))) (_2!1283 (tuple2!2547 lt!63573 (minValue!2620 newMap!16)))))))

(assert (=> d!37277 (= lt!63807 (insertStrictlySorted!83 (toList!851 lt!63564) (_1!1283 (tuple2!2547 lt!63573 (minValue!2620 newMap!16))) (_2!1283 (tuple2!2547 lt!63573 (minValue!2620 newMap!16)))))))

(assert (=> d!37277 (= (+!162 lt!63564 (tuple2!2547 lt!63573 (minValue!2620 newMap!16))) lt!63809)))

(declare-fun b!124005 () Bool)

(declare-fun res!60153 () Bool)

(assert (=> b!124005 (=> (not res!60153) (not e!81036))))

(assert (=> b!124005 (= res!60153 (= (getValueByKey!163 (toList!851 lt!63809) (_1!1283 (tuple2!2547 lt!63573 (minValue!2620 newMap!16)))) (Some!168 (_2!1283 (tuple2!2547 lt!63573 (minValue!2620 newMap!16))))))))

(declare-fun b!124006 () Bool)

(assert (=> b!124006 (= e!81036 (contains!869 (toList!851 lt!63809) (tuple2!2547 lt!63573 (minValue!2620 newMap!16))))))

(assert (= (and d!37277 res!60154) b!124005))

(assert (= (and b!124005 res!60153) b!124006))

(declare-fun m!144301 () Bool)

(assert (=> d!37277 m!144301))

(declare-fun m!144303 () Bool)

(assert (=> d!37277 m!144303))

(declare-fun m!144305 () Bool)

(assert (=> d!37277 m!144305))

(declare-fun m!144307 () Bool)

(assert (=> d!37277 m!144307))

(declare-fun m!144309 () Bool)

(assert (=> b!124005 m!144309))

(declare-fun m!144311 () Bool)

(assert (=> b!124006 m!144311))

(assert (=> b!123558 d!37277))

(declare-fun d!37279 () Bool)

(declare-fun e!81038 () Bool)

(assert (=> d!37279 e!81038))

(declare-fun res!60155 () Bool)

(assert (=> d!37279 (=> res!60155 e!81038)))

(declare-fun lt!63812 () Bool)

(assert (=> d!37279 (= res!60155 (not lt!63812))))

(declare-fun lt!63811 () Bool)

(assert (=> d!37279 (= lt!63812 lt!63811)))

(declare-fun lt!63814 () Unit!3846)

(declare-fun e!81037 () Unit!3846)

(assert (=> d!37279 (= lt!63814 e!81037)))

(declare-fun c!22555 () Bool)

(assert (=> d!37279 (= c!22555 lt!63811)))

(assert (=> d!37279 (= lt!63811 (containsKey!167 (toList!851 (+!162 lt!63583 (tuple2!2547 lt!63568 (zeroValue!2620 newMap!16)))) lt!63581))))

(assert (=> d!37279 (= (contains!868 (+!162 lt!63583 (tuple2!2547 lt!63568 (zeroValue!2620 newMap!16))) lt!63581) lt!63812)))

(declare-fun b!124007 () Bool)

(declare-fun lt!63813 () Unit!3846)

(assert (=> b!124007 (= e!81037 lt!63813)))

(assert (=> b!124007 (= lt!63813 (lemmaContainsKeyImpliesGetValueByKeyDefined!116 (toList!851 (+!162 lt!63583 (tuple2!2547 lt!63568 (zeroValue!2620 newMap!16)))) lt!63581))))

(assert (=> b!124007 (isDefined!117 (getValueByKey!163 (toList!851 (+!162 lt!63583 (tuple2!2547 lt!63568 (zeroValue!2620 newMap!16)))) lt!63581))))

(declare-fun b!124008 () Bool)

(declare-fun Unit!3870 () Unit!3846)

(assert (=> b!124008 (= e!81037 Unit!3870)))

(declare-fun b!124009 () Bool)

(assert (=> b!124009 (= e!81038 (isDefined!117 (getValueByKey!163 (toList!851 (+!162 lt!63583 (tuple2!2547 lt!63568 (zeroValue!2620 newMap!16)))) lt!63581)))))

(assert (= (and d!37279 c!22555) b!124007))

(assert (= (and d!37279 (not c!22555)) b!124008))

(assert (= (and d!37279 (not res!60155)) b!124009))

(declare-fun m!144313 () Bool)

(assert (=> d!37279 m!144313))

(declare-fun m!144315 () Bool)

(assert (=> b!124007 m!144315))

(declare-fun m!144317 () Bool)

(assert (=> b!124007 m!144317))

(assert (=> b!124007 m!144317))

(declare-fun m!144319 () Bool)

(assert (=> b!124007 m!144319))

(assert (=> b!124009 m!144317))

(assert (=> b!124009 m!144317))

(assert (=> b!124009 m!144319))

(assert (=> b!123558 d!37279))

(declare-fun d!37281 () Bool)

(declare-fun e!81039 () Bool)

(assert (=> d!37281 e!81039))

(declare-fun res!60157 () Bool)

(assert (=> d!37281 (=> (not res!60157) (not e!81039))))

(declare-fun lt!63817 () ListLongMap!1671)

(assert (=> d!37281 (= res!60157 (contains!868 lt!63817 (_1!1283 (tuple2!2547 lt!63584 (zeroValue!2620 newMap!16)))))))

(declare-fun lt!63815 () List!1709)

(assert (=> d!37281 (= lt!63817 (ListLongMap!1672 lt!63815))))

(declare-fun lt!63818 () Unit!3846)

(declare-fun lt!63816 () Unit!3846)

(assert (=> d!37281 (= lt!63818 lt!63816)))

(assert (=> d!37281 (= (getValueByKey!163 lt!63815 (_1!1283 (tuple2!2547 lt!63584 (zeroValue!2620 newMap!16)))) (Some!168 (_2!1283 (tuple2!2547 lt!63584 (zeroValue!2620 newMap!16)))))))

(assert (=> d!37281 (= lt!63816 (lemmaContainsTupThenGetReturnValue!81 lt!63815 (_1!1283 (tuple2!2547 lt!63584 (zeroValue!2620 newMap!16))) (_2!1283 (tuple2!2547 lt!63584 (zeroValue!2620 newMap!16)))))))

(assert (=> d!37281 (= lt!63815 (insertStrictlySorted!83 (toList!851 lt!63578) (_1!1283 (tuple2!2547 lt!63584 (zeroValue!2620 newMap!16))) (_2!1283 (tuple2!2547 lt!63584 (zeroValue!2620 newMap!16)))))))

(assert (=> d!37281 (= (+!162 lt!63578 (tuple2!2547 lt!63584 (zeroValue!2620 newMap!16))) lt!63817)))

(declare-fun b!124010 () Bool)

(declare-fun res!60156 () Bool)

(assert (=> b!124010 (=> (not res!60156) (not e!81039))))

(assert (=> b!124010 (= res!60156 (= (getValueByKey!163 (toList!851 lt!63817) (_1!1283 (tuple2!2547 lt!63584 (zeroValue!2620 newMap!16)))) (Some!168 (_2!1283 (tuple2!2547 lt!63584 (zeroValue!2620 newMap!16))))))))

(declare-fun b!124011 () Bool)

(assert (=> b!124011 (= e!81039 (contains!869 (toList!851 lt!63817) (tuple2!2547 lt!63584 (zeroValue!2620 newMap!16))))))

(assert (= (and d!37281 res!60157) b!124010))

(assert (= (and b!124010 res!60156) b!124011))

(declare-fun m!144321 () Bool)

(assert (=> d!37281 m!144321))

(declare-fun m!144323 () Bool)

(assert (=> d!37281 m!144323))

(declare-fun m!144325 () Bool)

(assert (=> d!37281 m!144325))

(declare-fun m!144327 () Bool)

(assert (=> d!37281 m!144327))

(declare-fun m!144329 () Bool)

(assert (=> b!124010 m!144329))

(declare-fun m!144331 () Bool)

(assert (=> b!124011 m!144331))

(assert (=> b!123558 d!37281))

(declare-fun d!37283 () Bool)

(assert (=> d!37283 (= (apply!108 (+!162 lt!63574 (tuple2!2547 lt!63576 (minValue!2620 newMap!16))) lt!63582) (get!1434 (getValueByKey!163 (toList!851 (+!162 lt!63574 (tuple2!2547 lt!63576 (minValue!2620 newMap!16)))) lt!63582)))))

(declare-fun bs!5138 () Bool)

(assert (= bs!5138 d!37283))

(declare-fun m!144333 () Bool)

(assert (=> bs!5138 m!144333))

(assert (=> bs!5138 m!144333))

(declare-fun m!144335 () Bool)

(assert (=> bs!5138 m!144335))

(assert (=> b!123558 d!37283))

(declare-fun d!37285 () Bool)

(assert (=> d!37285 (= (apply!108 (+!162 lt!63578 (tuple2!2547 lt!63584 (zeroValue!2620 newMap!16))) lt!63569) (get!1434 (getValueByKey!163 (toList!851 (+!162 lt!63578 (tuple2!2547 lt!63584 (zeroValue!2620 newMap!16)))) lt!63569)))))

(declare-fun bs!5139 () Bool)

(assert (= bs!5139 d!37285))

(declare-fun m!144337 () Bool)

(assert (=> bs!5139 m!144337))

(assert (=> bs!5139 m!144337))

(declare-fun m!144339 () Bool)

(assert (=> bs!5139 m!144339))

(assert (=> b!123558 d!37285))

(declare-fun d!37287 () Bool)

(assert (=> d!37287 (= (apply!108 (+!162 lt!63578 (tuple2!2547 lt!63584 (zeroValue!2620 newMap!16))) lt!63569) (apply!108 lt!63578 lt!63569))))

(declare-fun lt!63819 () Unit!3846)

(assert (=> d!37287 (= lt!63819 (choose!750 lt!63578 lt!63584 (zeroValue!2620 newMap!16) lt!63569))))

(declare-fun e!81040 () Bool)

(assert (=> d!37287 e!81040))

(declare-fun res!60158 () Bool)

(assert (=> d!37287 (=> (not res!60158) (not e!81040))))

(assert (=> d!37287 (= res!60158 (contains!868 lt!63578 lt!63569))))

(assert (=> d!37287 (= (addApplyDifferent!84 lt!63578 lt!63584 (zeroValue!2620 newMap!16) lt!63569) lt!63819)))

(declare-fun b!124012 () Bool)

(assert (=> b!124012 (= e!81040 (not (= lt!63569 lt!63584)))))

(assert (= (and d!37287 res!60158) b!124012))

(assert (=> d!37287 m!143559))

(declare-fun m!144341 () Bool)

(assert (=> d!37287 m!144341))

(assert (=> d!37287 m!143571))

(declare-fun m!144343 () Bool)

(assert (=> d!37287 m!144343))

(assert (=> d!37287 m!143559))

(assert (=> d!37287 m!143569))

(assert (=> b!123558 d!37287))

(assert (=> b!123558 d!37241))

(declare-fun d!37289 () Bool)

(assert (=> d!37289 (isDefined!117 (getValueByKey!163 (toList!851 lt!63525) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!63820 () Unit!3846)

(assert (=> d!37289 (= lt!63820 (choose!752 (toList!851 lt!63525) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!81041 () Bool)

(assert (=> d!37289 e!81041))

(declare-fun res!60159 () Bool)

(assert (=> d!37289 (=> (not res!60159) (not e!81041))))

(assert (=> d!37289 (= res!60159 (isStrictlySorted!310 (toList!851 lt!63525)))))

(assert (=> d!37289 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!116 (toList!851 lt!63525) #b0000000000000000000000000000000000000000000000000000000000000000) lt!63820)))

(declare-fun b!124013 () Bool)

(assert (=> b!124013 (= e!81041 (containsKey!167 (toList!851 lt!63525) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!37289 res!60159) b!124013))

(assert (=> d!37289 m!143621))

(assert (=> d!37289 m!143621))

(assert (=> d!37289 m!143623))

(declare-fun m!144345 () Bool)

(assert (=> d!37289 m!144345))

(assert (=> d!37289 m!143967))

(assert (=> b!124013 m!143617))

(assert (=> b!123575 d!37289))

(assert (=> b!123575 d!37067))

(assert (=> b!123575 d!37069))

(declare-fun d!37291 () Bool)

(declare-fun e!81043 () Bool)

(assert (=> d!37291 e!81043))

(declare-fun res!60160 () Bool)

(assert (=> d!37291 (=> res!60160 e!81043)))

(declare-fun lt!63822 () Bool)

(assert (=> d!37291 (= res!60160 (not lt!63822))))

(declare-fun lt!63821 () Bool)

(assert (=> d!37291 (= lt!63822 lt!63821)))

(declare-fun lt!63824 () Unit!3846)

(declare-fun e!81042 () Unit!3846)

(assert (=> d!37291 (= lt!63824 e!81042)))

(declare-fun c!22556 () Bool)

(assert (=> d!37291 (= c!22556 lt!63821)))

(assert (=> d!37291 (= lt!63821 (containsKey!167 (toList!851 lt!63611) (_1!1283 (tuple2!2547 lt!63513 (zeroValue!2620 (v!3089 (underlying!429 thiss!992)))))))))

(assert (=> d!37291 (= (contains!868 lt!63611 (_1!1283 (tuple2!2547 lt!63513 (zeroValue!2620 (v!3089 (underlying!429 thiss!992)))))) lt!63822)))

(declare-fun b!124014 () Bool)

(declare-fun lt!63823 () Unit!3846)

(assert (=> b!124014 (= e!81042 lt!63823)))

(assert (=> b!124014 (= lt!63823 (lemmaContainsKeyImpliesGetValueByKeyDefined!116 (toList!851 lt!63611) (_1!1283 (tuple2!2547 lt!63513 (zeroValue!2620 (v!3089 (underlying!429 thiss!992)))))))))

(assert (=> b!124014 (isDefined!117 (getValueByKey!163 (toList!851 lt!63611) (_1!1283 (tuple2!2547 lt!63513 (zeroValue!2620 (v!3089 (underlying!429 thiss!992)))))))))

(declare-fun b!124015 () Bool)

(declare-fun Unit!3871 () Unit!3846)

(assert (=> b!124015 (= e!81042 Unit!3871)))

(declare-fun b!124016 () Bool)

(assert (=> b!124016 (= e!81043 (isDefined!117 (getValueByKey!163 (toList!851 lt!63611) (_1!1283 (tuple2!2547 lt!63513 (zeroValue!2620 (v!3089 (underlying!429 thiss!992))))))))))

(assert (= (and d!37291 c!22556) b!124014))

(assert (= (and d!37291 (not c!22556)) b!124015))

(assert (= (and d!37291 (not res!60160)) b!124016))

(declare-fun m!144347 () Bool)

(assert (=> d!37291 m!144347))

(declare-fun m!144349 () Bool)

(assert (=> b!124014 m!144349))

(assert (=> b!124014 m!143657))

(assert (=> b!124014 m!143657))

(declare-fun m!144351 () Bool)

(assert (=> b!124014 m!144351))

(assert (=> b!124016 m!143657))

(assert (=> b!124016 m!143657))

(assert (=> b!124016 m!144351))

(assert (=> d!37017 d!37291))

(declare-fun d!37293 () Bool)

(declare-fun c!22557 () Bool)

(assert (=> d!37293 (= c!22557 (and ((_ is Cons!1705) lt!63609) (= (_1!1283 (h!2306 lt!63609)) (_1!1283 (tuple2!2547 lt!63513 (zeroValue!2620 (v!3089 (underlying!429 thiss!992))))))))))

(declare-fun e!81044 () Option!169)

(assert (=> d!37293 (= (getValueByKey!163 lt!63609 (_1!1283 (tuple2!2547 lt!63513 (zeroValue!2620 (v!3089 (underlying!429 thiss!992)))))) e!81044)))

(declare-fun b!124018 () Bool)

(declare-fun e!81045 () Option!169)

(assert (=> b!124018 (= e!81044 e!81045)))

(declare-fun c!22558 () Bool)

(assert (=> b!124018 (= c!22558 (and ((_ is Cons!1705) lt!63609) (not (= (_1!1283 (h!2306 lt!63609)) (_1!1283 (tuple2!2547 lt!63513 (zeroValue!2620 (v!3089 (underlying!429 thiss!992)))))))))))

(declare-fun b!124017 () Bool)

(assert (=> b!124017 (= e!81044 (Some!168 (_2!1283 (h!2306 lt!63609))))))

(declare-fun b!124019 () Bool)

(assert (=> b!124019 (= e!81045 (getValueByKey!163 (t!6020 lt!63609) (_1!1283 (tuple2!2547 lt!63513 (zeroValue!2620 (v!3089 (underlying!429 thiss!992)))))))))

(declare-fun b!124020 () Bool)

(assert (=> b!124020 (= e!81045 None!167)))

(assert (= (and d!37293 c!22557) b!124017))

(assert (= (and d!37293 (not c!22557)) b!124018))

(assert (= (and b!124018 c!22558) b!124019))

(assert (= (and b!124018 (not c!22558)) b!124020))

(declare-fun m!144353 () Bool)

(assert (=> b!124019 m!144353))

(assert (=> d!37017 d!37293))

(declare-fun d!37295 () Bool)

(assert (=> d!37295 (= (getValueByKey!163 lt!63609 (_1!1283 (tuple2!2547 lt!63513 (zeroValue!2620 (v!3089 (underlying!429 thiss!992)))))) (Some!168 (_2!1283 (tuple2!2547 lt!63513 (zeroValue!2620 (v!3089 (underlying!429 thiss!992)))))))))

(declare-fun lt!63825 () Unit!3846)

(assert (=> d!37295 (= lt!63825 (choose!753 lt!63609 (_1!1283 (tuple2!2547 lt!63513 (zeroValue!2620 (v!3089 (underlying!429 thiss!992))))) (_2!1283 (tuple2!2547 lt!63513 (zeroValue!2620 (v!3089 (underlying!429 thiss!992)))))))))

(declare-fun e!81046 () Bool)

(assert (=> d!37295 e!81046))

(declare-fun res!60161 () Bool)

(assert (=> d!37295 (=> (not res!60161) (not e!81046))))

(assert (=> d!37295 (= res!60161 (isStrictlySorted!310 lt!63609))))

(assert (=> d!37295 (= (lemmaContainsTupThenGetReturnValue!81 lt!63609 (_1!1283 (tuple2!2547 lt!63513 (zeroValue!2620 (v!3089 (underlying!429 thiss!992))))) (_2!1283 (tuple2!2547 lt!63513 (zeroValue!2620 (v!3089 (underlying!429 thiss!992)))))) lt!63825)))

(declare-fun b!124021 () Bool)

(declare-fun res!60162 () Bool)

(assert (=> b!124021 (=> (not res!60162) (not e!81046))))

(assert (=> b!124021 (= res!60162 (containsKey!167 lt!63609 (_1!1283 (tuple2!2547 lt!63513 (zeroValue!2620 (v!3089 (underlying!429 thiss!992)))))))))

(declare-fun b!124022 () Bool)

(assert (=> b!124022 (= e!81046 (contains!869 lt!63609 (tuple2!2547 (_1!1283 (tuple2!2547 lt!63513 (zeroValue!2620 (v!3089 (underlying!429 thiss!992))))) (_2!1283 (tuple2!2547 lt!63513 (zeroValue!2620 (v!3089 (underlying!429 thiss!992))))))))))

(assert (= (and d!37295 res!60161) b!124021))

(assert (= (and b!124021 res!60162) b!124022))

(assert (=> d!37295 m!143651))

(declare-fun m!144355 () Bool)

(assert (=> d!37295 m!144355))

(declare-fun m!144357 () Bool)

(assert (=> d!37295 m!144357))

(declare-fun m!144359 () Bool)

(assert (=> b!124021 m!144359))

(declare-fun m!144361 () Bool)

(assert (=> b!124022 m!144361))

(assert (=> d!37017 d!37295))

(declare-fun b!124023 () Bool)

(declare-fun e!81048 () List!1709)

(assert (=> b!124023 (= e!81048 (insertStrictlySorted!83 (t!6020 (toList!851 lt!63528)) (_1!1283 (tuple2!2547 lt!63513 (zeroValue!2620 (v!3089 (underlying!429 thiss!992))))) (_2!1283 (tuple2!2547 lt!63513 (zeroValue!2620 (v!3089 (underlying!429 thiss!992)))))))))

(declare-fun b!124024 () Bool)

(declare-fun e!81049 () List!1709)

(declare-fun call!13176 () List!1709)

(assert (=> b!124024 (= e!81049 call!13176)))

(declare-fun d!37297 () Bool)

(declare-fun e!81051 () Bool)

(assert (=> d!37297 e!81051))

(declare-fun res!60164 () Bool)

(assert (=> d!37297 (=> (not res!60164) (not e!81051))))

(declare-fun lt!63826 () List!1709)

(assert (=> d!37297 (= res!60164 (isStrictlySorted!310 lt!63826))))

(declare-fun e!81047 () List!1709)

(assert (=> d!37297 (= lt!63826 e!81047)))

(declare-fun c!22562 () Bool)

(assert (=> d!37297 (= c!22562 (and ((_ is Cons!1705) (toList!851 lt!63528)) (bvslt (_1!1283 (h!2306 (toList!851 lt!63528))) (_1!1283 (tuple2!2547 lt!63513 (zeroValue!2620 (v!3089 (underlying!429 thiss!992))))))))))

(assert (=> d!37297 (isStrictlySorted!310 (toList!851 lt!63528))))

(assert (=> d!37297 (= (insertStrictlySorted!83 (toList!851 lt!63528) (_1!1283 (tuple2!2547 lt!63513 (zeroValue!2620 (v!3089 (underlying!429 thiss!992))))) (_2!1283 (tuple2!2547 lt!63513 (zeroValue!2620 (v!3089 (underlying!429 thiss!992)))))) lt!63826)))

(declare-fun c!22561 () Bool)

(declare-fun b!124025 () Bool)

(declare-fun c!22559 () Bool)

(assert (=> b!124025 (= e!81048 (ite c!22559 (t!6020 (toList!851 lt!63528)) (ite c!22561 (Cons!1705 (h!2306 (toList!851 lt!63528)) (t!6020 (toList!851 lt!63528))) Nil!1706)))))

(declare-fun b!124026 () Bool)

(declare-fun e!81050 () List!1709)

(declare-fun call!13174 () List!1709)

(assert (=> b!124026 (= e!81050 call!13174)))

(declare-fun b!124027 () Bool)

(assert (=> b!124027 (= c!22561 (and ((_ is Cons!1705) (toList!851 lt!63528)) (bvsgt (_1!1283 (h!2306 (toList!851 lt!63528))) (_1!1283 (tuple2!2547 lt!63513 (zeroValue!2620 (v!3089 (underlying!429 thiss!992))))))))))

(assert (=> b!124027 (= e!81049 e!81050)))

(declare-fun b!124028 () Bool)

(assert (=> b!124028 (= e!81051 (contains!869 lt!63826 (tuple2!2547 (_1!1283 (tuple2!2547 lt!63513 (zeroValue!2620 (v!3089 (underlying!429 thiss!992))))) (_2!1283 (tuple2!2547 lt!63513 (zeroValue!2620 (v!3089 (underlying!429 thiss!992))))))))))

(declare-fun bm!13171 () Bool)

(declare-fun call!13175 () List!1709)

(assert (=> bm!13171 (= call!13176 call!13175)))

(declare-fun b!124029 () Bool)

(declare-fun res!60163 () Bool)

(assert (=> b!124029 (=> (not res!60163) (not e!81051))))

(assert (=> b!124029 (= res!60163 (containsKey!167 lt!63826 (_1!1283 (tuple2!2547 lt!63513 (zeroValue!2620 (v!3089 (underlying!429 thiss!992)))))))))

(declare-fun b!124030 () Bool)

(assert (=> b!124030 (= e!81047 call!13175)))

(declare-fun b!124031 () Bool)

(assert (=> b!124031 (= e!81047 e!81049)))

(assert (=> b!124031 (= c!22559 (and ((_ is Cons!1705) (toList!851 lt!63528)) (= (_1!1283 (h!2306 (toList!851 lt!63528))) (_1!1283 (tuple2!2547 lt!63513 (zeroValue!2620 (v!3089 (underlying!429 thiss!992))))))))))

(declare-fun bm!13172 () Bool)

(assert (=> bm!13172 (= call!13175 ($colon$colon!86 e!81048 (ite c!22562 (h!2306 (toList!851 lt!63528)) (tuple2!2547 (_1!1283 (tuple2!2547 lt!63513 (zeroValue!2620 (v!3089 (underlying!429 thiss!992))))) (_2!1283 (tuple2!2547 lt!63513 (zeroValue!2620 (v!3089 (underlying!429 thiss!992)))))))))))

(declare-fun c!22560 () Bool)

(assert (=> bm!13172 (= c!22560 c!22562)))

(declare-fun bm!13173 () Bool)

(assert (=> bm!13173 (= call!13174 call!13176)))

(declare-fun b!124032 () Bool)

(assert (=> b!124032 (= e!81050 call!13174)))

(assert (= (and d!37297 c!22562) b!124030))

(assert (= (and d!37297 (not c!22562)) b!124031))

(assert (= (and b!124031 c!22559) b!124024))

(assert (= (and b!124031 (not c!22559)) b!124027))

(assert (= (and b!124027 c!22561) b!124026))

(assert (= (and b!124027 (not c!22561)) b!124032))

(assert (= (or b!124026 b!124032) bm!13173))

(assert (= (or b!124024 bm!13173) bm!13171))

(assert (= (or b!124030 bm!13171) bm!13172))

(assert (= (and bm!13172 c!22560) b!124023))

(assert (= (and bm!13172 (not c!22560)) b!124025))

(assert (= (and d!37297 res!60164) b!124029))

(assert (= (and b!124029 res!60163) b!124028))

(declare-fun m!144363 () Bool)

(assert (=> d!37297 m!144363))

(declare-fun m!144365 () Bool)

(assert (=> d!37297 m!144365))

(declare-fun m!144367 () Bool)

(assert (=> b!124028 m!144367))

(declare-fun m!144369 () Bool)

(assert (=> b!124023 m!144369))

(declare-fun m!144371 () Bool)

(assert (=> b!124029 m!144371))

(declare-fun m!144373 () Bool)

(assert (=> bm!13172 m!144373))

(assert (=> d!37017 d!37297))

(declare-fun d!37299 () Bool)

(assert (=> d!37299 (= (apply!108 lt!63580 #b0000000000000000000000000000000000000000000000000000000000000000) (get!1434 (getValueByKey!163 (toList!851 lt!63580) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun bs!5140 () Bool)

(assert (= bs!5140 d!37299))

(assert (=> bs!5140 m!143891))

(assert (=> bs!5140 m!143891))

(declare-fun m!144375 () Bool)

(assert (=> bs!5140 m!144375))

(assert (=> b!123560 d!37299))

(assert (=> b!123619 d!37151))

(declare-fun d!37301 () Bool)

(assert (=> d!37301 (= (get!1434 (getValueByKey!163 (toList!851 lt!63523) lt!63514)) (v!3092 (getValueByKey!163 (toList!851 lt!63523) lt!63514)))))

(assert (=> d!37025 d!37301))

(declare-fun d!37303 () Bool)

(declare-fun c!22563 () Bool)

(assert (=> d!37303 (= c!22563 (and ((_ is Cons!1705) (toList!851 lt!63523)) (= (_1!1283 (h!2306 (toList!851 lt!63523))) lt!63514)))))

(declare-fun e!81052 () Option!169)

(assert (=> d!37303 (= (getValueByKey!163 (toList!851 lt!63523) lt!63514) e!81052)))

(declare-fun b!124034 () Bool)

(declare-fun e!81053 () Option!169)

(assert (=> b!124034 (= e!81052 e!81053)))

(declare-fun c!22564 () Bool)

(assert (=> b!124034 (= c!22564 (and ((_ is Cons!1705) (toList!851 lt!63523)) (not (= (_1!1283 (h!2306 (toList!851 lt!63523))) lt!63514))))))

(declare-fun b!124033 () Bool)

(assert (=> b!124033 (= e!81052 (Some!168 (_2!1283 (h!2306 (toList!851 lt!63523)))))))

(declare-fun b!124035 () Bool)

(assert (=> b!124035 (= e!81053 (getValueByKey!163 (t!6020 (toList!851 lt!63523)) lt!63514))))

(declare-fun b!124036 () Bool)

(assert (=> b!124036 (= e!81053 None!167)))

(assert (= (and d!37303 c!22563) b!124033))

(assert (= (and d!37303 (not c!22563)) b!124034))

(assert (= (and b!124034 c!22564) b!124035))

(assert (= (and b!124034 (not c!22564)) b!124036))

(declare-fun m!144377 () Bool)

(assert (=> b!124035 m!144377))

(assert (=> d!37025 d!37303))

(declare-fun b!124037 () Bool)

(declare-fun e!81055 () Bool)

(declare-fun e!81054 () Bool)

(assert (=> b!124037 (= e!81055 e!81054)))

(declare-fun res!60165 () Bool)

(assert (=> b!124037 (=> (not res!60165) (not e!81054))))

(declare-fun e!81057 () Bool)

(assert (=> b!124037 (= res!60165 (not e!81057))))

(declare-fun res!60166 () Bool)

(assert (=> b!124037 (=> (not res!60166) (not e!81057))))

(assert (=> b!124037 (= res!60166 (validKeyInArray!0 (select (arr!2206 (_keys!4482 (v!3089 (underlying!429 thiss!992)))) #b00000000000000000000000000000000)))))

(declare-fun b!124038 () Bool)

(assert (=> b!124038 (= e!81057 (contains!870 Nil!1708 (select (arr!2206 (_keys!4482 (v!3089 (underlying!429 thiss!992)))) #b00000000000000000000000000000000)))))

(declare-fun d!37305 () Bool)

(declare-fun res!60167 () Bool)

(assert (=> d!37305 (=> res!60167 e!81055)))

(assert (=> d!37305 (= res!60167 (bvsge #b00000000000000000000000000000000 (size!2468 (_keys!4482 (v!3089 (underlying!429 thiss!992))))))))

(assert (=> d!37305 (= (arrayNoDuplicates!0 (_keys!4482 (v!3089 (underlying!429 thiss!992))) #b00000000000000000000000000000000 Nil!1708) e!81055)))

(declare-fun bm!13174 () Bool)

(declare-fun call!13177 () Bool)

(declare-fun c!22565 () Bool)

(assert (=> bm!13174 (= call!13177 (arrayNoDuplicates!0 (_keys!4482 (v!3089 (underlying!429 thiss!992))) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!22565 (Cons!1707 (select (arr!2206 (_keys!4482 (v!3089 (underlying!429 thiss!992)))) #b00000000000000000000000000000000) Nil!1708) Nil!1708)))))

(declare-fun b!124039 () Bool)

(declare-fun e!81056 () Bool)

(assert (=> b!124039 (= e!81056 call!13177)))

(declare-fun b!124040 () Bool)

(assert (=> b!124040 (= e!81054 e!81056)))

(assert (=> b!124040 (= c!22565 (validKeyInArray!0 (select (arr!2206 (_keys!4482 (v!3089 (underlying!429 thiss!992)))) #b00000000000000000000000000000000)))))

(declare-fun b!124041 () Bool)

(assert (=> b!124041 (= e!81056 call!13177)))

(assert (= (and d!37305 (not res!60167)) b!124037))

(assert (= (and b!124037 res!60166) b!124038))

(assert (= (and b!124037 res!60165) b!124040))

(assert (= (and b!124040 c!22565) b!124041))

(assert (= (and b!124040 (not c!22565)) b!124039))

(assert (= (or b!124041 b!124039) bm!13174))

(assert (=> b!124037 m!143943))

(assert (=> b!124037 m!143943))

(assert (=> b!124037 m!143945))

(assert (=> b!124038 m!143943))

(assert (=> b!124038 m!143943))

(declare-fun m!144379 () Bool)

(assert (=> b!124038 m!144379))

(assert (=> bm!13174 m!143943))

(declare-fun m!144381 () Bool)

(assert (=> bm!13174 m!144381))

(assert (=> b!124040 m!143943))

(assert (=> b!124040 m!143943))

(assert (=> b!124040 m!143945))

(assert (=> b!123580 d!37305))

(declare-fun b!124042 () Bool)

(declare-fun e!81059 () Bool)

(assert (=> b!124042 (= e!81059 tp_is_empty!2823)))

(declare-fun condMapEmpty!4439 () Bool)

(declare-fun mapDefault!4439 () ValueCell!1068)

(assert (=> mapNonEmpty!4438 (= condMapEmpty!4439 (= mapRest!4438 ((as const (Array (_ BitVec 32) ValueCell!1068)) mapDefault!4439)))))

(declare-fun e!81058 () Bool)

(declare-fun mapRes!4439 () Bool)

(assert (=> mapNonEmpty!4438 (= tp!10846 (and e!81058 mapRes!4439))))

(declare-fun b!124043 () Bool)

(assert (=> b!124043 (= e!81058 tp_is_empty!2823)))

(declare-fun mapIsEmpty!4439 () Bool)

(assert (=> mapIsEmpty!4439 mapRes!4439))

(declare-fun mapNonEmpty!4439 () Bool)

(declare-fun tp!10847 () Bool)

(assert (=> mapNonEmpty!4439 (= mapRes!4439 (and tp!10847 e!81059))))

(declare-fun mapValue!4439 () ValueCell!1068)

(declare-fun mapKey!4439 () (_ BitVec 32))

(declare-fun mapRest!4439 () (Array (_ BitVec 32) ValueCell!1068))

(assert (=> mapNonEmpty!4439 (= mapRest!4438 (store mapRest!4439 mapKey!4439 mapValue!4439))))

(assert (= (and mapNonEmpty!4438 condMapEmpty!4439) mapIsEmpty!4439))

(assert (= (and mapNonEmpty!4438 (not condMapEmpty!4439)) mapNonEmpty!4439))

(assert (= (and mapNonEmpty!4439 ((_ is ValueCellFull!1068) mapValue!4439)) b!124042))

(assert (= (and mapNonEmpty!4438 ((_ is ValueCellFull!1068) mapDefault!4439)) b!124043))

(declare-fun m!144383 () Bool)

(assert (=> mapNonEmpty!4439 m!144383))

(declare-fun b!124044 () Bool)

(declare-fun e!81061 () Bool)

(assert (=> b!124044 (= e!81061 tp_is_empty!2823)))

(declare-fun condMapEmpty!4440 () Bool)

(declare-fun mapDefault!4440 () ValueCell!1068)

(assert (=> mapNonEmpty!4437 (= condMapEmpty!4440 (= mapRest!4437 ((as const (Array (_ BitVec 32) ValueCell!1068)) mapDefault!4440)))))

(declare-fun e!81060 () Bool)

(declare-fun mapRes!4440 () Bool)

(assert (=> mapNonEmpty!4437 (= tp!10845 (and e!81060 mapRes!4440))))

(declare-fun b!124045 () Bool)

(assert (=> b!124045 (= e!81060 tp_is_empty!2823)))

(declare-fun mapIsEmpty!4440 () Bool)

(assert (=> mapIsEmpty!4440 mapRes!4440))

(declare-fun mapNonEmpty!4440 () Bool)

(declare-fun tp!10848 () Bool)

(assert (=> mapNonEmpty!4440 (= mapRes!4440 (and tp!10848 e!81061))))

(declare-fun mapRest!4440 () (Array (_ BitVec 32) ValueCell!1068))

(declare-fun mapValue!4440 () ValueCell!1068)

(declare-fun mapKey!4440 () (_ BitVec 32))

(assert (=> mapNonEmpty!4440 (= mapRest!4437 (store mapRest!4440 mapKey!4440 mapValue!4440))))

(assert (= (and mapNonEmpty!4437 condMapEmpty!4440) mapIsEmpty!4440))

(assert (= (and mapNonEmpty!4437 (not condMapEmpty!4440)) mapNonEmpty!4440))

(assert (= (and mapNonEmpty!4440 ((_ is ValueCellFull!1068) mapValue!4440)) b!124044))

(assert (= (and mapNonEmpty!4437 ((_ is ValueCellFull!1068) mapDefault!4440)) b!124045))

(declare-fun m!144385 () Bool)

(assert (=> mapNonEmpty!4440 m!144385))

(declare-fun b_lambda!5467 () Bool)

(assert (= b_lambda!5459 (or (and b!123359 b_free!2813) (and b!123355 b_free!2815 (= (defaultEntry!2755 newMap!16) (defaultEntry!2755 (v!3089 (underlying!429 thiss!992))))) b_lambda!5467)))

(declare-fun b_lambda!5469 () Bool)

(assert (= b_lambda!5463 (or (and b!123359 b_free!2813 (= (defaultEntry!2755 (v!3089 (underlying!429 thiss!992))) (defaultEntry!2755 newMap!16))) (and b!123355 b_free!2815) b_lambda!5469)))

(declare-fun b_lambda!5471 () Bool)

(assert (= b_lambda!5461 (or (and b!123359 b_free!2813) (and b!123355 b_free!2815 (= (defaultEntry!2755 newMap!16) (defaultEntry!2755 (v!3089 (underlying!429 thiss!992))))) b_lambda!5471)))

(declare-fun b_lambda!5473 () Bool)

(assert (= b_lambda!5465 (or (and b!123359 b_free!2813 (= (defaultEntry!2755 (v!3089 (underlying!429 thiss!992))) (defaultEntry!2755 newMap!16))) (and b!123355 b_free!2815) b_lambda!5473)))

(check-sat (not d!37265) (not b!124037) (not b!123894) (not d!37061) (not d!37295) (not b!124002) (not d!37119) (not d!37159) (not d!37239) (not b!124035) (not b!123972) (not d!37229) (not b_lambda!5455) (not d!37259) (not b!124023) (not b!123662) (not b!123832) (not d!37287) (not d!37195) (not d!37209) (not b_lambda!5471) (not d!37187) (not b!124038) (not b!123856) (not b!123908) (not bm!13155) (not b!123913) (not d!37289) (not b!123924) (not b!123660) (not b!123792) (not b!123960) (not b_next!2813) (not d!37125) b_and!7627 (not b!123937) (not b!123988) (not b!123975) (not d!37257) (not b!123679) (not mapNonEmpty!4440) (not d!37203) (not b!124009) (not b!123927) (not b!123963) (not b!123786) (not b!124010) (not b!123917) (not b!123993) (not b!123828) (not b!123714) (not d!37281) (not b!123737) (not b!124029) (not b!123849) (not b!123821) (not b!123683) (not b!123816) (not d!37235) (not d!37299) (not b!123657) (not b!123710) (not b!124016) (not b!123668) (not bm!13154) (not b!123822) (not b!123764) (not b!123656) (not d!37109) (not b!123812) (not d!37077) (not d!37115) (not b!123694) (not mapNonEmpty!4439) (not d!37273) (not d!37225) (not b!123847) (not b!123722) (not b!123745) (not d!37141) (not d!37205) (not b_lambda!5473) (not d!37269) (not b!124028) (not b!124005) (not b!123974) (not b!123799) (not d!37153) (not d!37215) (not b!123691) (not b!123820) (not b!123969) (not b!123688) (not b!123934) (not b!124004) (not d!37173) (not b!124011) (not d!37285) (not b!124040) (not b!123850) (not b!123899) (not b_lambda!5453) (not d!37241) (not d!37275) (not d!37089) (not b!123953) (not b!123939) (not b!123808) (not b!123862) (not b!123752) (not b!123704) (not b!123823) (not b!123990) (not b!123797) (not d!37167) (not b!123947) (not b!123958) (not d!37121) (not d!37129) (not bm!13144) (not b!123948) (not d!37261) (not d!37099) (not b!123755) (not b!123946) (not d!37057) (not d!37091) (not d!37233) (not b!123941) (not b!123932) (not b!123959) (not bm!13157) (not b!123893) (not b!123838) (not d!37111) (not d!37291) (not b!123724) (not b!123930) (not d!37163) (not b_lambda!5445) (not b!123944) (not b!123831) (not b!123901) (not b!123837) (not b!123830) (not b!124019) (not b!124006) (not b!124001) (not b!123903) (not bm!13172) (not b!123842) (not b!123851) (not b!123920) (not b!123889) (not b!123758) (not b!123922) (not b_lambda!5469) (not bm!13143) (not d!37191) (not bm!13163) (not b!123964) (not b!123926) (not d!37193) (not d!37155) (not d!37277) (not b!123844) (not d!37101) (not b!123746) (not b!123708) (not bm!13174) (not d!37139) (not d!37271) (not d!37113) tp_is_empty!2823 (not d!37217) (not d!37297) (not b!123659) (not bm!13169) (not b!123733) (not b!123954) (not b!124022) (not b!123885) (not d!37231) (not b!123750) (not d!37219) (not b_lambda!5467) (not b!123891) (not bm!13152) (not b!124007) (not d!37237) (not d!37143) (not b!123896) (not bm!13167) (not b!123667) (not b!123701) (not d!37067) (not b!123765) (not b!123980) (not b!123902) (not b!123983) (not b!123818) (not b!123915) (not d!37059) (not bm!13160) (not b!123997) (not d!37197) (not d!37123) (not b!123978) (not b!123730) (not b!123803) (not b!123791) (not b!123743) (not b!123742) (not b!123925) (not b!124021) (not b!124013) (not d!37093) (not b!124003) (not b!123689) (not b!123962) (not d!37161) (not b!124014) (not b!123753) (not b!123809) (not b!123868) (not b!123979) (not b_next!2815) (not d!37073) (not b!123971) (not b!123686) (not d!37169) (not b!123748) (not b!123717) (not b!123666) (not b!123857) (not b!123720) (not d!37117) (not b!123663) (not bm!13170) (not b!123909) (not d!37263) (not b!123825) (not b!123805) (not d!37097) (not b!123928) (not d!37207) (not b_lambda!5457) b_and!7625 (not d!37149) (not d!37177) (not d!37279) (not b!123711) (not b!123806) (not d!37283) (not d!37131) (not d!37183) (not b!123740) (not d!37267) (not bm!13165) (not b!123736))
(check-sat b_and!7625 b_and!7627 (not b_next!2813) (not b_next!2815))

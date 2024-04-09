; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!3652 () Bool)

(assert start!3652)

(declare-fun b!25454 () Bool)

(declare-fun b_free!771 () Bool)

(declare-fun b_next!771 () Bool)

(assert (=> b!25454 (= b_free!771 (not b_next!771))))

(declare-fun tp!3567 () Bool)

(declare-fun b_and!1571 () Bool)

(assert (=> b!25454 (= tp!3567 b_and!1571)))

(declare-fun c!3557 () Bool)

(declare-fun bm!2344 () Bool)

(declare-datatypes ((V!1205 0))(
  ( (V!1206 (val!544 Int)) )
))
(declare-datatypes ((ValueCell!318 0))(
  ( (ValueCellFull!318 (v!1626 V!1205)) (EmptyCell!318) )
))
(declare-datatypes ((array!1303 0))(
  ( (array!1304 (arr!615 (Array (_ BitVec 32) ValueCell!318)) (size!716 (_ BitVec 32))) )
))
(declare-datatypes ((array!1305 0))(
  ( (array!1306 (arr!616 (Array (_ BitVec 32) (_ BitVec 64))) (size!717 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!222 0))(
  ( (LongMapFixedSize!223 (defaultEntry!1769 Int) (mask!4771 (_ BitVec 32)) (extraKeys!1661 (_ BitVec 32)) (zeroValue!1688 V!1205) (minValue!1688 V!1205) (_size!159 (_ BitVec 32)) (_keys!3194 array!1305) (_values!1753 array!1303) (_vacant!159 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!222 0))(
  ( (Cell!223 (v!1627 LongMapFixedSize!222)) )
))
(declare-datatypes ((LongMap!222 0))(
  ( (LongMap!223 (underlying!122 Cell!222)) )
))
(declare-fun thiss!938 () LongMap!222)

(declare-fun c!3556 () Bool)

(declare-fun lt!9980 () LongMapFixedSize!222)

(declare-datatypes ((tuple2!966 0))(
  ( (tuple2!967 (_1!491 Bool) (_2!491 LongMapFixedSize!222)) )
))
(declare-fun call!2348 () tuple2!966)

(declare-fun update!39 (LongMapFixedSize!222 (_ BitVec 64) V!1205) tuple2!966)

(assert (=> bm!2344 (= call!2348 (update!39 lt!9980 (ite (or c!3557 c!3556) #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000) (ite (or c!3557 c!3556) (zeroValue!1688 (v!1627 (underlying!122 thiss!938))) (minValue!1688 (v!1627 (underlying!122 thiss!938))))))))

(declare-fun e!16467 () Bool)

(declare-fun e!16474 () Bool)

(declare-fun tp_is_empty!1035 () Bool)

(declare-fun array_inv!433 (array!1305) Bool)

(declare-fun array_inv!434 (array!1303) Bool)

(assert (=> b!25454 (= e!16474 (and tp!3567 tp_is_empty!1035 (array_inv!433 (_keys!3194 (v!1627 (underlying!122 thiss!938)))) (array_inv!434 (_values!1753 (v!1627 (underlying!122 thiss!938)))) e!16467))))

(declare-fun res!15275 () Bool)

(declare-fun e!16470 () Bool)

(assert (=> start!3652 (=> (not res!15275) (not e!16470))))

(declare-fun valid!114 (LongMap!222) Bool)

(assert (=> start!3652 (= res!15275 (valid!114 thiss!938))))

(assert (=> start!3652 e!16470))

(declare-fun e!16469 () Bool)

(assert (=> start!3652 e!16469))

(declare-fun b!25455 () Bool)

(declare-fun e!16462 () Bool)

(declare-fun mapRes!1051 () Bool)

(assert (=> b!25455 (= e!16467 (and e!16462 mapRes!1051))))

(declare-fun condMapEmpty!1051 () Bool)

(declare-fun mapDefault!1051 () ValueCell!318)

(assert (=> b!25455 (= condMapEmpty!1051 (= (arr!615 (_values!1753 (v!1627 (underlying!122 thiss!938)))) ((as const (Array (_ BitVec 32) ValueCell!318)) mapDefault!1051)))))

(declare-fun b!25456 () Bool)

(declare-fun e!16464 () Bool)

(assert (=> b!25456 (= e!16464 tp_is_empty!1035)))

(declare-fun lt!9977 () Cell!222)

(declare-fun b!25457 () Bool)

(declare-datatypes ((tuple3!16 0))(
  ( (tuple3!17 (_1!492 Bool) (_2!492 Cell!222) (_3!8 LongMap!222)) )
))
(declare-fun e!16468 () tuple3!16)

(declare-fun lt!9973 () tuple2!966)

(assert (=> b!25457 (= e!16468 (ite (_1!491 lt!9973) (tuple3!17 true (underlying!122 thiss!938) (LongMap!223 lt!9977)) (tuple3!17 false lt!9977 thiss!938)))))

(declare-datatypes ((tuple2!968 0))(
  ( (tuple2!969 (_1!493 Bool) (_2!493 Cell!222)) )
))
(declare-fun lt!9976 () tuple2!968)

(declare-fun repackFrom!8 (LongMap!222 LongMapFixedSize!222 (_ BitVec 32)) tuple2!966)

(assert (=> b!25457 (= lt!9973 (repackFrom!8 thiss!938 (v!1627 (_2!493 lt!9976)) (bvsub (size!717 (_keys!3194 (v!1627 (underlying!122 thiss!938)))) #b00000000000000000000000000000001)))))

(assert (=> b!25457 (= lt!9977 (Cell!223 (_2!491 lt!9973)))))

(declare-fun b!25458 () Bool)

(declare-fun e!16473 () Bool)

(assert (=> b!25458 (= e!16469 e!16473)))

(declare-fun b!25459 () Bool)

(assert (=> b!25459 (= e!16462 tp_is_empty!1035)))

(declare-fun mapIsEmpty!1051 () Bool)

(assert (=> mapIsEmpty!1051 mapRes!1051))

(declare-fun mapNonEmpty!1051 () Bool)

(declare-fun tp!3568 () Bool)

(assert (=> mapNonEmpty!1051 (= mapRes!1051 (and tp!3568 e!16464))))

(declare-fun mapKey!1051 () (_ BitVec 32))

(declare-fun mapRest!1051 () (Array (_ BitVec 32) ValueCell!318))

(declare-fun mapValue!1051 () ValueCell!318)

(assert (=> mapNonEmpty!1051 (= (arr!615 (_values!1753 (v!1627 (underlying!122 thiss!938)))) (store mapRest!1051 mapKey!1051 mapValue!1051))))

(declare-fun b!25460 () Bool)

(declare-fun e!16472 () tuple2!968)

(declare-fun e!16465 () tuple2!968)

(assert (=> b!25460 (= e!16472 e!16465)))

(declare-fun lt!9975 () Bool)

(assert (=> b!25460 (= c!3556 (and (not lt!9975) (= (bvand (extraKeys!1661 (v!1627 (underlying!122 thiss!938))) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!25461 () Bool)

(declare-fun e!16466 () Bool)

(assert (=> b!25461 (= e!16470 e!16466)))

(declare-fun res!15276 () Bool)

(assert (=> b!25461 (=> (not res!15276) (not e!16466))))

(declare-fun lt!9971 () tuple3!16)

(assert (=> b!25461 (= res!15276 (_1!492 lt!9971))))

(assert (=> b!25461 (= lt!9971 e!16468)))

(declare-fun c!3554 () Bool)

(assert (=> b!25461 (= c!3554 (not (_1!493 lt!9976)))))

(assert (=> b!25461 (= lt!9976 e!16472)))

(assert (=> b!25461 (= c!3557 (and (not lt!9975) (not (= (bvand (extraKeys!1661 (v!1627 (underlying!122 thiss!938))) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> b!25461 (= lt!9975 (= (bvand (extraKeys!1661 (v!1627 (underlying!122 thiss!938))) #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-fun getNewLongMapFixedSize!33 ((_ BitVec 32) Int) LongMapFixedSize!222)

(declare-fun computeNewMask!30 (LongMap!222 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!25461 (= lt!9980 (getNewLongMapFixedSize!33 (computeNewMask!30 thiss!938 (mask!4771 (v!1627 (underlying!122 thiss!938))) (_vacant!159 (v!1627 (underlying!122 thiss!938))) (_size!159 (v!1627 (underlying!122 thiss!938)))) (defaultEntry!1769 (v!1627 (underlying!122 thiss!938)))))))

(declare-fun b!25462 () Bool)

(declare-fun lt!9978 () tuple2!966)

(declare-fun call!2347 () tuple2!966)

(assert (=> b!25462 (= lt!9978 call!2347)))

(assert (=> b!25462 (= e!16465 (tuple2!969 (_1!491 lt!9978) (Cell!223 (_2!491 lt!9978))))))

(declare-fun b!25463 () Bool)

(declare-datatypes ((tuple2!970 0))(
  ( (tuple2!971 (_1!494 (_ BitVec 64)) (_2!494 V!1205)) )
))
(declare-datatypes ((List!569 0))(
  ( (Nil!566) (Cons!565 (h!1132 tuple2!970) (t!3256 List!569)) )
))
(declare-datatypes ((ListLongMap!557 0))(
  ( (ListLongMap!558 (toList!294 List!569)) )
))
(declare-fun map!416 (LongMap!222) ListLongMap!557)

(assert (=> b!25463 (= e!16466 (not (= (map!416 (_3!8 lt!9971)) (map!416 thiss!938))))))

(declare-fun b!25464 () Bool)

(assert (=> b!25464 (= e!16468 (tuple3!17 false (_2!493 lt!9976) thiss!938))))

(declare-fun b!25465 () Bool)

(declare-fun e!16463 () tuple2!968)

(assert (=> b!25465 (= e!16463 (tuple2!969 true (Cell!223 lt!9980)))))

(declare-fun b!25466 () Bool)

(declare-fun lt!9972 () tuple2!966)

(declare-fun lt!9974 () tuple2!966)

(assert (=> b!25466 (= e!16472 (tuple2!969 (and (_1!491 lt!9972) (_1!491 lt!9974)) (Cell!223 (_2!491 lt!9974))))))

(assert (=> b!25466 (= lt!9972 call!2348)))

(assert (=> b!25466 (= lt!9974 (update!39 (_2!491 lt!9972) #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!1688 (v!1627 (underlying!122 thiss!938)))))))

(declare-fun bm!2345 () Bool)

(assert (=> bm!2345 (= call!2347 call!2348)))

(declare-fun b!25467 () Bool)

(assert (=> b!25467 (= e!16473 e!16474)))

(declare-fun b!25468 () Bool)

(declare-fun lt!9979 () tuple2!966)

(assert (=> b!25468 (= e!16463 (tuple2!969 (_1!491 lt!9979) (Cell!223 (_2!491 lt!9979))))))

(assert (=> b!25468 (= lt!9979 call!2347)))

(declare-fun b!25469 () Bool)

(declare-fun c!3555 () Bool)

(assert (=> b!25469 (= c!3555 (and (not (= (bvand (extraKeys!1661 (v!1627 (underlying!122 thiss!938))) #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!9975))))

(assert (=> b!25469 (= e!16465 e!16463)))

(assert (= (and start!3652 res!15275) b!25461))

(assert (= (and b!25461 c!3557) b!25466))

(assert (= (and b!25461 (not c!3557)) b!25460))

(assert (= (and b!25460 c!3556) b!25462))

(assert (= (and b!25460 (not c!3556)) b!25469))

(assert (= (and b!25469 c!3555) b!25468))

(assert (= (and b!25469 (not c!3555)) b!25465))

(assert (= (or b!25462 b!25468) bm!2345))

(assert (= (or b!25466 bm!2345) bm!2344))

(assert (= (and b!25461 c!3554) b!25464))

(assert (= (and b!25461 (not c!3554)) b!25457))

(assert (= (and b!25461 res!15276) b!25463))

(assert (= (and b!25455 condMapEmpty!1051) mapIsEmpty!1051))

(assert (= (and b!25455 (not condMapEmpty!1051)) mapNonEmpty!1051))

(get-info :version)

(assert (= (and mapNonEmpty!1051 ((_ is ValueCellFull!318) mapValue!1051)) b!25456))

(assert (= (and b!25455 ((_ is ValueCellFull!318) mapDefault!1051)) b!25459))

(assert (= b!25454 b!25455))

(assert (= b!25467 b!25454))

(assert (= b!25458 b!25467))

(assert (= start!3652 b!25458))

(declare-fun m!20543 () Bool)

(assert (=> b!25466 m!20543))

(declare-fun m!20545 () Bool)

(assert (=> b!25461 m!20545))

(assert (=> b!25461 m!20545))

(declare-fun m!20547 () Bool)

(assert (=> b!25461 m!20547))

(declare-fun m!20549 () Bool)

(assert (=> b!25463 m!20549))

(declare-fun m!20551 () Bool)

(assert (=> b!25463 m!20551))

(declare-fun m!20553 () Bool)

(assert (=> start!3652 m!20553))

(declare-fun m!20555 () Bool)

(assert (=> bm!2344 m!20555))

(declare-fun m!20557 () Bool)

(assert (=> b!25454 m!20557))

(declare-fun m!20559 () Bool)

(assert (=> b!25454 m!20559))

(declare-fun m!20561 () Bool)

(assert (=> b!25457 m!20561))

(declare-fun m!20563 () Bool)

(assert (=> mapNonEmpty!1051 m!20563))

(check-sat (not bm!2344) b_and!1571 (not b!25454) (not b_next!771) (not b!25461) (not b!25463) (not b!25466) (not b!25457) (not mapNonEmpty!1051) tp_is_empty!1035 (not start!3652))
(check-sat b_and!1571 (not b_next!771))
(get-model)

(declare-fun d!4805 () Bool)

(assert (=> d!4805 (= (array_inv!433 (_keys!3194 (v!1627 (underlying!122 thiss!938)))) (bvsge (size!717 (_keys!3194 (v!1627 (underlying!122 thiss!938)))) #b00000000000000000000000000000000))))

(assert (=> b!25454 d!4805))

(declare-fun d!4807 () Bool)

(assert (=> d!4807 (= (array_inv!434 (_values!1753 (v!1627 (underlying!122 thiss!938)))) (bvsge (size!716 (_values!1753 (v!1627 (underlying!122 thiss!938)))) #b00000000000000000000000000000000))))

(assert (=> b!25454 d!4807))

(declare-fun d!4809 () Bool)

(declare-fun map!418 (LongMapFixedSize!222) ListLongMap!557)

(assert (=> d!4809 (= (map!416 (_3!8 lt!9971)) (map!418 (v!1627 (underlying!122 (_3!8 lt!9971)))))))

(declare-fun bs!1053 () Bool)

(assert (= bs!1053 d!4809))

(declare-fun m!20587 () Bool)

(assert (=> bs!1053 m!20587))

(assert (=> b!25463 d!4809))

(declare-fun d!4811 () Bool)

(assert (=> d!4811 (= (map!416 thiss!938) (map!418 (v!1627 (underlying!122 thiss!938))))))

(declare-fun bs!1054 () Bool)

(assert (= bs!1054 d!4811))

(declare-fun m!20589 () Bool)

(assert (=> bs!1054 m!20589))

(assert (=> b!25463 d!4811))

(declare-fun d!4813 () Bool)

(declare-fun valid!115 (LongMapFixedSize!222) Bool)

(assert (=> d!4813 (= (valid!114 thiss!938) (valid!115 (v!1627 (underlying!122 thiss!938))))))

(declare-fun bs!1055 () Bool)

(assert (= bs!1055 d!4813))

(declare-fun m!20591 () Bool)

(assert (=> bs!1055 m!20591))

(assert (=> start!3652 d!4813))

(declare-fun bm!2400 () Bool)

(declare-fun call!2412 () Bool)

(declare-fun call!2411 () Bool)

(assert (=> bm!2400 (= call!2412 call!2411)))

(declare-fun e!16569 () Bool)

(declare-fun b!25602 () Bool)

(declare-datatypes ((SeekEntryResult!61 0))(
  ( (MissingZero!61 (index!2366 (_ BitVec 32))) (Found!61 (index!2367 (_ BitVec 32))) (Intermediate!61 (undefined!873 Bool) (index!2368 (_ BitVec 32)) (x!6017 (_ BitVec 32))) (Undefined!61) (MissingVacant!61 (index!2369 (_ BitVec 32))) )
))
(declare-fun lt!10087 () SeekEntryResult!61)

(assert (=> b!25602 (= e!16569 (= (select (arr!616 (_keys!3194 lt!9980)) (index!2367 lt!10087)) (ite (or c!3557 c!3556) #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!25603 () Bool)

(declare-fun res!15312 () Bool)

(declare-fun e!16571 () Bool)

(assert (=> b!25603 (=> (not res!15312) (not e!16571))))

(declare-fun lt!10091 () SeekEntryResult!61)

(assert (=> b!25603 (= res!15312 (= (select (arr!616 (_keys!3194 lt!9980)) (index!2366 lt!10091)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!25604 () Bool)

(declare-datatypes ((Unit!608 0))(
  ( (Unit!609) )
))
(declare-fun e!16575 () Unit!608)

(declare-fun lt!10065 () Unit!608)

(assert (=> b!25604 (= e!16575 lt!10065)))

(declare-fun call!2414 () Unit!608)

(assert (=> b!25604 (= lt!10065 call!2414)))

(declare-fun lt!10076 () SeekEntryResult!61)

(declare-fun call!2417 () SeekEntryResult!61)

(assert (=> b!25604 (= lt!10076 call!2417)))

(declare-fun res!15314 () Bool)

(assert (=> b!25604 (= res!15314 ((_ is Found!61) lt!10076))))

(declare-fun e!16564 () Bool)

(assert (=> b!25604 (=> (not res!15314) (not e!16564))))

(assert (=> b!25604 e!16564))

(declare-fun b!25605 () Bool)

(declare-fun e!16559 () Bool)

(declare-fun lt!10072 () SeekEntryResult!61)

(assert (=> b!25605 (= e!16559 ((_ is Undefined!61) lt!10072))))

(declare-fun bm!2401 () Bool)

(declare-fun call!2424 () SeekEntryResult!61)

(assert (=> bm!2401 (= call!2417 call!2424)))

(declare-fun b!25606 () Bool)

(declare-fun res!15315 () Bool)

(declare-fun e!16566 () Bool)

(assert (=> b!25606 (=> (not res!15315) (not e!16566))))

(declare-fun call!2425 () Bool)

(assert (=> b!25606 (= res!15315 call!2425)))

(declare-fun e!16573 () Bool)

(assert (=> b!25606 (= e!16573 e!16566)))

(declare-fun bm!2402 () Bool)

(declare-fun c!3599 () Bool)

(declare-fun call!2404 () tuple2!966)

(declare-fun lt!10085 () SeekEntryResult!61)

(declare-fun updateHelperNewKey!12 (LongMapFixedSize!222 (_ BitVec 64) V!1205 (_ BitVec 32)) tuple2!966)

(assert (=> bm!2402 (= call!2404 (updateHelperNewKey!12 lt!9980 (ite (or c!3557 c!3556) #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000) (ite (or c!3557 c!3556) (zeroValue!1688 (v!1627 (underlying!122 thiss!938))) (minValue!1688 (v!1627 (underlying!122 thiss!938)))) (ite c!3599 (index!2369 lt!10085) (index!2366 lt!10085))))))

(declare-fun b!25607 () Bool)

(assert (=> b!25607 (= e!16571 (not call!2412))))

(declare-fun b!25608 () Bool)

(declare-fun call!2422 () Bool)

(assert (=> b!25608 (= e!16566 (not call!2422))))

(declare-fun b!25609 () Bool)

(declare-fun lt!10086 () Unit!608)

(declare-fun lt!10080 () Unit!608)

(assert (=> b!25609 (= lt!10086 lt!10080)))

(declare-fun call!2408 () ListLongMap!557)

(declare-fun call!2409 () ListLongMap!557)

(assert (=> b!25609 (= call!2408 call!2409)))

(declare-fun lt!10089 () (_ BitVec 32))

(declare-fun lemmaChangeLongMinValueKeyThenAddPairToListMap!12 (array!1305 array!1303 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!1205 V!1205 V!1205 Int) Unit!608)

(assert (=> b!25609 (= lt!10080 (lemmaChangeLongMinValueKeyThenAddPairToListMap!12 (_keys!3194 lt!9980) (_values!1753 lt!9980) (mask!4771 lt!9980) (extraKeys!1661 lt!9980) lt!10089 (zeroValue!1688 lt!9980) (minValue!1688 lt!9980) (ite (or c!3557 c!3556) (zeroValue!1688 (v!1627 (underlying!122 thiss!938))) (minValue!1688 (v!1627 (underlying!122 thiss!938)))) (defaultEntry!1769 lt!9980)))))

(assert (=> b!25609 (= lt!10089 (bvor (extraKeys!1661 lt!9980) #b00000000000000000000000000000010))))

(declare-fun e!16570 () tuple2!966)

(assert (=> b!25609 (= e!16570 (tuple2!967 true (LongMapFixedSize!223 (defaultEntry!1769 lt!9980) (mask!4771 lt!9980) (bvor (extraKeys!1661 lt!9980) #b00000000000000000000000000000010) (zeroValue!1688 lt!9980) (ite (or c!3557 c!3556) (zeroValue!1688 (v!1627 (underlying!122 thiss!938))) (minValue!1688 (v!1627 (underlying!122 thiss!938)))) (_size!159 lt!9980) (_keys!3194 lt!9980) (_values!1753 lt!9980) (_vacant!159 lt!9980))))))

(declare-fun bm!2403 () Bool)

(declare-fun call!2419 () Bool)

(assert (=> bm!2403 (= call!2425 call!2419)))

(declare-fun c!3607 () Bool)

(declare-fun bm!2404 () Bool)

(declare-fun call!2415 () ListLongMap!557)

(declare-fun c!3606 () Bool)

(declare-fun getCurrentListMap!123 (array!1305 array!1303 (_ BitVec 32) (_ BitVec 32) V!1205 V!1205 (_ BitVec 32) Int) ListLongMap!557)

(assert (=> bm!2404 (= call!2415 (getCurrentListMap!123 (_keys!3194 lt!9980) (ite (or c!3606 c!3607) (_values!1753 lt!9980) (array!1304 (store (arr!615 (_values!1753 lt!9980)) (index!2367 lt!10085) (ValueCellFull!318 (ite (or c!3557 c!3556) (zeroValue!1688 (v!1627 (underlying!122 thiss!938))) (minValue!1688 (v!1627 (underlying!122 thiss!938)))))) (size!716 (_values!1753 lt!9980)))) (mask!4771 lt!9980) (extraKeys!1661 lt!9980) (zeroValue!1688 lt!9980) (minValue!1688 lt!9980) #b00000000000000000000000000000000 (defaultEntry!1769 lt!9980)))))

(declare-fun d!4815 () Bool)

(declare-fun e!16565 () Bool)

(assert (=> d!4815 e!16565))

(declare-fun res!15313 () Bool)

(assert (=> d!4815 (=> (not res!15313) (not e!16565))))

(declare-fun lt!10083 () tuple2!966)

(assert (=> d!4815 (= res!15313 (valid!115 (_2!491 lt!10083)))))

(declare-fun e!16579 () tuple2!966)

(assert (=> d!4815 (= lt!10083 e!16579)))

(assert (=> d!4815 (= c!3606 (= (ite (or c!3557 c!3556) #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000) (bvneg (ite (or c!3557 c!3556) #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> d!4815 (valid!115 lt!9980)))

(assert (=> d!4815 (= (update!39 lt!9980 (ite (or c!3557 c!3556) #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000) (ite (or c!3557 c!3556) (zeroValue!1688 (v!1627 (underlying!122 thiss!938))) (minValue!1688 (v!1627 (underlying!122 thiss!938))))) lt!10083)))

(declare-fun b!25610 () Bool)

(declare-fun e!16561 () Bool)

(assert (=> b!25610 (= e!16561 (not call!2422))))

(declare-fun b!25611 () Bool)

(declare-fun res!15319 () Bool)

(assert (=> b!25611 (=> (not res!15319) (not e!16571))))

(declare-fun call!2426 () Bool)

(assert (=> b!25611 (= res!15319 call!2426)))

(declare-fun e!16558 () Bool)

(assert (=> b!25611 (= e!16558 e!16571)))

(declare-fun b!25612 () Bool)

(declare-fun c!3608 () Bool)

(assert (=> b!25612 (= c!3608 ((_ is MissingVacant!61) lt!10072))))

(assert (=> b!25612 (= e!16573 e!16559)))

(declare-fun bm!2405 () Bool)

(declare-fun call!2406 () SeekEntryResult!61)

(assert (=> bm!2405 (= call!2406 call!2424)))

(declare-fun b!25613 () Bool)

(declare-fun e!16578 () Bool)

(declare-fun e!16567 () Bool)

(assert (=> b!25613 (= e!16578 e!16567)))

(declare-fun res!15320 () Bool)

(assert (=> b!25613 (= res!15320 call!2426)))

(assert (=> b!25613 (=> (not res!15320) (not e!16567))))

(declare-fun e!16574 () Bool)

(declare-fun call!2403 () ListLongMap!557)

(declare-fun call!2413 () ListLongMap!557)

(declare-fun b!25614 () Bool)

(declare-fun +!47 (ListLongMap!557 tuple2!970) ListLongMap!557)

(assert (=> b!25614 (= e!16574 (= call!2403 (+!47 call!2413 (tuple2!971 (ite (or c!3557 c!3556) #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000) (ite (or c!3557 c!3556) (zeroValue!1688 (v!1627 (underlying!122 thiss!938))) (minValue!1688 (v!1627 (underlying!122 thiss!938))))))))))

(declare-fun b!25615 () Bool)

(declare-fun res!15322 () Bool)

(assert (=> b!25615 (= res!15322 (= (select (arr!616 (_keys!3194 lt!9980)) (index!2369 lt!10091)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!25615 (=> (not res!15322) (not e!16567))))

(declare-fun b!25616 () Bool)

(declare-fun e!16560 () ListLongMap!557)

(assert (=> b!25616 (= e!16560 (getCurrentListMap!123 (_keys!3194 lt!9980) (_values!1753 lt!9980) (mask!4771 lt!9980) (extraKeys!1661 lt!9980) (zeroValue!1688 lt!9980) (minValue!1688 lt!9980) #b00000000000000000000000000000000 (defaultEntry!1769 lt!9980)))))

(declare-fun b!25617 () Bool)

(assert (=> b!25617 (= c!3599 ((_ is MissingVacant!61) lt!10085))))

(declare-fun e!16576 () tuple2!966)

(declare-fun e!16572 () tuple2!966)

(assert (=> b!25617 (= e!16576 e!16572)))

(declare-fun b!25618 () Bool)

(assert (=> b!25618 (= e!16579 e!16576)))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!1305 (_ BitVec 32)) SeekEntryResult!61)

(assert (=> b!25618 (= lt!10085 (seekEntryOrOpen!0 (ite (or c!3557 c!3556) #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000) (_keys!3194 lt!9980) (mask!4771 lt!9980)))))

(assert (=> b!25618 (= c!3607 ((_ is Undefined!61) lt!10085))))

(declare-fun b!25619 () Bool)

(assert (=> b!25619 (= e!16559 e!16561)))

(declare-fun res!15318 () Bool)

(assert (=> b!25619 (= res!15318 call!2425)))

(assert (=> b!25619 (=> (not res!15318) (not e!16561))))

(declare-fun bm!2406 () Bool)

(declare-fun c!3611 () Bool)

(assert (=> bm!2406 (= c!3611 c!3607)))

(declare-fun call!2416 () Bool)

(declare-fun e!16562 () ListLongMap!557)

(declare-fun contains!224 (ListLongMap!557 (_ BitVec 64)) Bool)

(assert (=> bm!2406 (= call!2416 (contains!224 e!16562 (ite (or c!3557 c!3556) #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun bm!2407 () Bool)

(declare-fun call!2405 () ListLongMap!557)

(assert (=> bm!2407 (= call!2405 call!2415)))

(declare-fun b!25620 () Bool)

(declare-fun res!15321 () Bool)

(assert (=> b!25620 (= res!15321 (= (select (arr!616 (_keys!3194 lt!9980)) (index!2369 lt!10072)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!25620 (=> (not res!15321) (not e!16561))))

(declare-fun b!25621 () Bool)

(declare-fun lt!10067 () tuple2!966)

(assert (=> b!25621 (= e!16572 (tuple2!967 (_1!491 lt!10067) (_2!491 lt!10067)))))

(assert (=> b!25621 (= lt!10067 call!2404)))

(declare-fun b!25622 () Bool)

(assert (=> b!25622 (= e!16560 call!2405)))

(declare-fun bm!2408 () Bool)

(declare-fun call!2418 () Bool)

(declare-fun call!2421 () Bool)

(assert (=> bm!2408 (= call!2418 call!2421)))

(declare-fun b!25623 () Bool)

(declare-fun lt!10074 () Unit!608)

(declare-fun e!16577 () Unit!608)

(assert (=> b!25623 (= lt!10074 e!16577)))

(declare-fun c!3602 () Bool)

(assert (=> b!25623 (= c!3602 call!2416)))

(assert (=> b!25623 (= e!16576 (tuple2!967 false lt!9980))))

(declare-fun b!25624 () Bool)

(declare-fun lt!10066 () Unit!608)

(declare-fun lt!10088 () Unit!608)

(assert (=> b!25624 (= lt!10066 lt!10088)))

(declare-fun call!2423 () ListLongMap!557)

(assert (=> b!25624 (contains!224 call!2423 (select (arr!616 (_keys!3194 lt!9980)) (index!2367 lt!10085)))))

(declare-fun lt!10071 () array!1303)

(declare-fun lemmaValidKeyInArrayIsInListMap!12 (array!1305 array!1303 (_ BitVec 32) (_ BitVec 32) V!1205 V!1205 (_ BitVec 32) Int) Unit!608)

(assert (=> b!25624 (= lt!10088 (lemmaValidKeyInArrayIsInListMap!12 (_keys!3194 lt!9980) lt!10071 (mask!4771 lt!9980) (extraKeys!1661 lt!9980) (zeroValue!1688 lt!9980) (minValue!1688 lt!9980) (index!2367 lt!10085) (defaultEntry!1769 lt!9980)))))

(assert (=> b!25624 (= lt!10071 (array!1304 (store (arr!615 (_values!1753 lt!9980)) (index!2367 lt!10085) (ValueCellFull!318 (ite (or c!3557 c!3556) (zeroValue!1688 (v!1627 (underlying!122 thiss!938))) (minValue!1688 (v!1627 (underlying!122 thiss!938)))))) (size!716 (_values!1753 lt!9980))))))

(declare-fun lt!10084 () Unit!608)

(declare-fun lt!10069 () Unit!608)

(assert (=> b!25624 (= lt!10084 lt!10069)))

(declare-fun call!2420 () ListLongMap!557)

(declare-fun call!2407 () ListLongMap!557)

(assert (=> b!25624 (= call!2420 call!2407)))

(declare-fun lemmaChangeValueExistingKeyToArrayThenAddPairToListMap!12 (array!1305 array!1303 (_ BitVec 32) (_ BitVec 32) V!1205 V!1205 (_ BitVec 32) (_ BitVec 64) V!1205 Int) Unit!608)

(assert (=> b!25624 (= lt!10069 (lemmaChangeValueExistingKeyToArrayThenAddPairToListMap!12 (_keys!3194 lt!9980) (_values!1753 lt!9980) (mask!4771 lt!9980) (extraKeys!1661 lt!9980) (zeroValue!1688 lt!9980) (minValue!1688 lt!9980) (index!2367 lt!10085) (ite (or c!3557 c!3556) #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000) (ite (or c!3557 c!3556) (zeroValue!1688 (v!1627 (underlying!122 thiss!938))) (minValue!1688 (v!1627 (underlying!122 thiss!938)))) (defaultEntry!1769 lt!9980)))))

(declare-fun lt!10068 () Unit!608)

(assert (=> b!25624 (= lt!10068 e!16575)))

(declare-fun c!3604 () Bool)

(assert (=> b!25624 (= c!3604 call!2416)))

(declare-fun e!16568 () tuple2!966)

(assert (=> b!25624 (= e!16568 (tuple2!967 true (LongMapFixedSize!223 (defaultEntry!1769 lt!9980) (mask!4771 lt!9980) (extraKeys!1661 lt!9980) (zeroValue!1688 lt!9980) (minValue!1688 lt!9980) (_size!159 lt!9980) (_keys!3194 lt!9980) (array!1304 (store (arr!615 (_values!1753 lt!9980)) (index!2367 lt!10085) (ValueCellFull!318 (ite (or c!3557 c!3556) (zeroValue!1688 (v!1627 (underlying!122 thiss!938))) (minValue!1688 (v!1627 (underlying!122 thiss!938)))))) (size!716 (_values!1753 lt!9980))) (_vacant!159 lt!9980))))))

(declare-fun bm!2409 () Bool)

(assert (=> bm!2409 (= call!2422 call!2411)))

(declare-fun lt!10081 () (_ BitVec 32))

(declare-fun c!3605 () Bool)

(declare-fun bm!2410 () Bool)

(assert (=> bm!2410 (= call!2423 (getCurrentListMap!123 (_keys!3194 lt!9980) (ite c!3606 (_values!1753 lt!9980) lt!10071) (mask!4771 lt!9980) (ite c!3606 (ite c!3605 lt!10081 lt!10089) (extraKeys!1661 lt!9980)) (ite (and c!3606 c!3605) (ite (or c!3557 c!3556) (zeroValue!1688 (v!1627 (underlying!122 thiss!938))) (minValue!1688 (v!1627 (underlying!122 thiss!938)))) (zeroValue!1688 lt!9980)) (ite c!3606 (ite c!3605 (minValue!1688 lt!9980) (ite (or c!3557 c!3556) (zeroValue!1688 (v!1627 (underlying!122 thiss!938))) (minValue!1688 (v!1627 (underlying!122 thiss!938))))) (minValue!1688 lt!9980)) #b00000000000000000000000000000000 (defaultEntry!1769 lt!9980)))))

(declare-fun b!25625 () Bool)

(assert (=> b!25625 (= e!16562 (getCurrentListMap!123 (_keys!3194 lt!9980) (_values!1753 lt!9980) (mask!4771 lt!9980) (extraKeys!1661 lt!9980) (zeroValue!1688 lt!9980) (minValue!1688 lt!9980) #b00000000000000000000000000000000 (defaultEntry!1769 lt!9980)))))

(declare-fun b!25626 () Bool)

(declare-fun res!15317 () Bool)

(assert (=> b!25626 (= res!15317 call!2419)))

(assert (=> b!25626 (=> (not res!15317) (not e!16564))))

(declare-fun b!25627 () Bool)

(declare-fun res!15311 () Bool)

(assert (=> b!25627 (=> (not res!15311) (not e!16566))))

(assert (=> b!25627 (= res!15311 (= (select (arr!616 (_keys!3194 lt!9980)) (index!2366 lt!10072)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!25628 () Bool)

(declare-fun e!16563 () Bool)

(assert (=> b!25628 (= e!16565 e!16563)))

(declare-fun c!3601 () Bool)

(assert (=> b!25628 (= c!3601 (_1!491 lt!10083))))

(declare-fun bm!2411 () Bool)

(assert (=> bm!2411 (= call!2408 call!2420)))

(declare-fun bm!2412 () Bool)

(assert (=> bm!2412 (= call!2426 call!2418)))

(declare-fun b!25629 () Bool)

(assert (=> b!25629 (= e!16562 call!2407)))

(declare-fun b!25630 () Bool)

(assert (=> b!25630 (= e!16578 ((_ is Undefined!61) lt!10091))))

(declare-fun bm!2413 () Bool)

(assert (=> bm!2413 (= call!2409 call!2423)))

(declare-fun b!25631 () Bool)

(assert (=> b!25631 (= e!16572 e!16568)))

(declare-fun c!3600 () Bool)

(assert (=> b!25631 (= c!3600 ((_ is MissingZero!61) lt!10085))))

(declare-fun b!25632 () Bool)

(assert (=> b!25632 (= e!16563 (= call!2403 call!2413))))

(declare-fun bm!2414 () Bool)

(assert (=> bm!2414 (= call!2413 (map!418 lt!9980))))

(declare-fun b!25633 () Bool)

(declare-fun Unit!610 () Unit!608)

(assert (=> b!25633 (= e!16577 Unit!610)))

(declare-fun lt!10073 () Unit!608)

(assert (=> b!25633 (= lt!10073 call!2414)))

(assert (=> b!25633 (= lt!10087 call!2406)))

(declare-fun res!15316 () Bool)

(assert (=> b!25633 (= res!15316 ((_ is Found!61) lt!10087))))

(assert (=> b!25633 (=> (not res!15316) (not e!16569))))

(assert (=> b!25633 e!16569))

(declare-fun lt!10070 () Unit!608)

(assert (=> b!25633 (= lt!10070 lt!10073)))

(assert (=> b!25633 false))

(declare-fun b!25634 () Bool)

(assert (=> b!25634 (= e!16563 e!16574)))

(declare-fun res!15324 () Bool)

(assert (=> b!25634 (= res!15324 (contains!224 call!2403 (ite (or c!3557 c!3556) #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!25634 (=> (not res!15324) (not e!16574))))

(declare-fun bm!2415 () Bool)

(assert (=> bm!2415 (= call!2407 call!2415)))

(declare-fun bm!2416 () Bool)

(declare-fun arrayContainsKey!0 (array!1305 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> bm!2416 (= call!2411 (arrayContainsKey!0 (_keys!3194 lt!9980) (ite (or c!3557 c!3556) #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000) #b00000000000000000000000000000000))))

(declare-fun b!25635 () Bool)

(declare-fun res!15323 () Bool)

(assert (=> b!25635 (= res!15323 call!2418)))

(assert (=> b!25635 (=> (not res!15323) (not e!16569))))

(declare-fun b!25636 () Bool)

(assert (=> b!25636 (= e!16579 e!16570)))

(assert (=> b!25636 (= c!3605 (= (ite (or c!3557 c!3556) #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!25637 () Bool)

(declare-fun lt!10078 () Unit!608)

(assert (=> b!25637 (= e!16577 lt!10078)))

(declare-fun call!2410 () Unit!608)

(assert (=> b!25637 (= lt!10078 call!2410)))

(assert (=> b!25637 (= lt!10091 call!2406)))

(declare-fun c!3610 () Bool)

(assert (=> b!25637 (= c!3610 ((_ is MissingZero!61) lt!10091))))

(assert (=> b!25637 e!16558))

(declare-fun b!25638 () Bool)

(declare-fun lt!10082 () Unit!608)

(declare-fun lt!10090 () Unit!608)

(assert (=> b!25638 (= lt!10082 lt!10090)))

(assert (=> b!25638 (= call!2408 call!2409)))

(declare-fun lemmaChangeZeroKeyThenAddPairToListMap!12 (array!1305 array!1303 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!1205 V!1205 V!1205 Int) Unit!608)

(assert (=> b!25638 (= lt!10090 (lemmaChangeZeroKeyThenAddPairToListMap!12 (_keys!3194 lt!9980) (_values!1753 lt!9980) (mask!4771 lt!9980) (extraKeys!1661 lt!9980) lt!10081 (zeroValue!1688 lt!9980) (ite (or c!3557 c!3556) (zeroValue!1688 (v!1627 (underlying!122 thiss!938))) (minValue!1688 (v!1627 (underlying!122 thiss!938)))) (minValue!1688 lt!9980) (defaultEntry!1769 lt!9980)))))

(assert (=> b!25638 (= lt!10081 (bvor (extraKeys!1661 lt!9980) #b00000000000000000000000000000001))))

(assert (=> b!25638 (= e!16570 (tuple2!967 true (LongMapFixedSize!223 (defaultEntry!1769 lt!9980) (mask!4771 lt!9980) (bvor (extraKeys!1661 lt!9980) #b00000000000000000000000000000001) (ite (or c!3557 c!3556) (zeroValue!1688 (v!1627 (underlying!122 thiss!938))) (minValue!1688 (v!1627 (underlying!122 thiss!938)))) (minValue!1688 lt!9980) (_size!159 lt!9980) (_keys!3194 lt!9980) (_values!1753 lt!9980) (_vacant!159 lt!9980))))))

(declare-fun bm!2417 () Bool)

(declare-fun c!3609 () Bool)

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> bm!2417 (= call!2421 (inRange!0 (ite c!3607 (ite c!3602 (index!2367 lt!10087) (ite c!3610 (index!2366 lt!10091) (index!2369 lt!10091))) (ite c!3604 (index!2367 lt!10076) (ite c!3609 (index!2366 lt!10072) (index!2369 lt!10072)))) (mask!4771 lt!9980)))))

(declare-fun bm!2418 () Bool)

(assert (=> bm!2418 (= call!2420 (+!47 e!16560 (ite c!3606 (ite c!3605 (tuple2!971 #b0000000000000000000000000000000000000000000000000000000000000000 (ite (or c!3557 c!3556) (zeroValue!1688 (v!1627 (underlying!122 thiss!938))) (minValue!1688 (v!1627 (underlying!122 thiss!938))))) (tuple2!971 #b1000000000000000000000000000000000000000000000000000000000000000 (ite (or c!3557 c!3556) (zeroValue!1688 (v!1627 (underlying!122 thiss!938))) (minValue!1688 (v!1627 (underlying!122 thiss!938)))))) (tuple2!971 (ite (or c!3557 c!3556) #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000) (ite (or c!3557 c!3556) (zeroValue!1688 (v!1627 (underlying!122 thiss!938))) (minValue!1688 (v!1627 (underlying!122 thiss!938))))))))))

(declare-fun c!3603 () Bool)

(assert (=> bm!2418 (= c!3603 c!3606)))

(declare-fun bm!2419 () Bool)

(assert (=> bm!2419 (= call!2419 call!2421)))

(declare-fun bm!2420 () Bool)

(declare-fun lemmaInListMapThenSeekEntryOrOpenFindsIt!12 (array!1305 array!1303 (_ BitVec 32) (_ BitVec 32) V!1205 V!1205 (_ BitVec 64) Int) Unit!608)

(assert (=> bm!2420 (= call!2414 (lemmaInListMapThenSeekEntryOrOpenFindsIt!12 (_keys!3194 lt!9980) (_values!1753 lt!9980) (mask!4771 lt!9980) (extraKeys!1661 lt!9980) (zeroValue!1688 lt!9980) (minValue!1688 lt!9980) (ite (or c!3557 c!3556) #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000) (defaultEntry!1769 lt!9980)))))

(declare-fun b!25639 () Bool)

(declare-fun lt!10079 () tuple2!966)

(assert (=> b!25639 (= lt!10079 call!2404)))

(assert (=> b!25639 (= e!16568 (tuple2!967 (_1!491 lt!10079) (_2!491 lt!10079)))))

(declare-fun bm!2421 () Bool)

(declare-fun lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!12 (array!1305 array!1303 (_ BitVec 32) (_ BitVec 32) V!1205 V!1205 (_ BitVec 64) Int) Unit!608)

(assert (=> bm!2421 (= call!2410 (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!12 (_keys!3194 lt!9980) (_values!1753 lt!9980) (mask!4771 lt!9980) (extraKeys!1661 lt!9980) (zeroValue!1688 lt!9980) (minValue!1688 lt!9980) (ite (or c!3557 c!3556) #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000) (defaultEntry!1769 lt!9980)))))

(declare-fun bm!2422 () Bool)

(assert (=> bm!2422 (= call!2424 (seekEntryOrOpen!0 (ite (or c!3557 c!3556) #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000) (_keys!3194 lt!9980) (mask!4771 lt!9980)))))

(declare-fun b!25640 () Bool)

(assert (=> b!25640 (= e!16564 (= (select (arr!616 (_keys!3194 lt!9980)) (index!2367 lt!10076)) (ite (or c!3557 c!3556) #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!25641 () Bool)

(declare-fun c!3598 () Bool)

(assert (=> b!25641 (= c!3598 ((_ is MissingVacant!61) lt!10091))))

(assert (=> b!25641 (= e!16558 e!16578)))

(declare-fun b!25642 () Bool)

(assert (=> b!25642 (= e!16567 (not call!2412))))

(declare-fun bm!2423 () Bool)

(assert (=> bm!2423 (= call!2403 (map!418 (_2!491 lt!10083)))))

(declare-fun b!25643 () Bool)

(declare-fun Unit!611 () Unit!608)

(assert (=> b!25643 (= e!16575 Unit!611)))

(declare-fun lt!10075 () Unit!608)

(assert (=> b!25643 (= lt!10075 call!2410)))

(assert (=> b!25643 (= lt!10072 call!2417)))

(assert (=> b!25643 (= c!3609 ((_ is MissingZero!61) lt!10072))))

(assert (=> b!25643 e!16573))

(declare-fun lt!10077 () Unit!608)

(assert (=> b!25643 (= lt!10077 lt!10075)))

(assert (=> b!25643 false))

(assert (= (and d!4815 c!3606) b!25636))

(assert (= (and d!4815 (not c!3606)) b!25618))

(assert (= (and b!25636 c!3605) b!25638))

(assert (= (and b!25636 (not c!3605)) b!25609))

(assert (= (or b!25638 b!25609) bm!2413))

(assert (= (or b!25638 b!25609) bm!2407))

(assert (= (or b!25638 b!25609) bm!2411))

(assert (= (and b!25618 c!3607) b!25623))

(assert (= (and b!25618 (not c!3607)) b!25617))

(assert (= (and b!25623 c!3602) b!25633))

(assert (= (and b!25623 (not c!3602)) b!25637))

(assert (= (and b!25633 res!15316) b!25635))

(assert (= (and b!25635 res!15323) b!25602))

(assert (= (and b!25637 c!3610) b!25611))

(assert (= (and b!25637 (not c!3610)) b!25641))

(assert (= (and b!25611 res!15319) b!25603))

(assert (= (and b!25603 res!15312) b!25607))

(assert (= (and b!25641 c!3598) b!25613))

(assert (= (and b!25641 (not c!3598)) b!25630))

(assert (= (and b!25613 res!15320) b!25615))

(assert (= (and b!25615 res!15322) b!25642))

(assert (= (or b!25611 b!25613) bm!2412))

(assert (= (or b!25607 b!25642) bm!2400))

(assert (= (or b!25635 bm!2412) bm!2408))

(assert (= (or b!25633 b!25637) bm!2405))

(assert (= (and b!25617 c!3599) b!25621))

(assert (= (and b!25617 (not c!3599)) b!25631))

(assert (= (and b!25631 c!3600) b!25639))

(assert (= (and b!25631 (not c!3600)) b!25624))

(assert (= (and b!25624 c!3604) b!25604))

(assert (= (and b!25624 (not c!3604)) b!25643))

(assert (= (and b!25604 res!15314) b!25626))

(assert (= (and b!25626 res!15317) b!25640))

(assert (= (and b!25643 c!3609) b!25606))

(assert (= (and b!25643 (not c!3609)) b!25612))

(assert (= (and b!25606 res!15315) b!25627))

(assert (= (and b!25627 res!15311) b!25608))

(assert (= (and b!25612 c!3608) b!25619))

(assert (= (and b!25612 (not c!3608)) b!25605))

(assert (= (and b!25619 res!15318) b!25620))

(assert (= (and b!25620 res!15321) b!25610))

(assert (= (or b!25606 b!25619) bm!2403))

(assert (= (or b!25608 b!25610) bm!2409))

(assert (= (or b!25626 bm!2403) bm!2419))

(assert (= (or b!25604 b!25643) bm!2401))

(assert (= (or b!25621 b!25639) bm!2402))

(assert (= (or bm!2405 bm!2401) bm!2422))

(assert (= (or b!25633 b!25604) bm!2420))

(assert (= (or bm!2408 bm!2419) bm!2417))

(assert (= (or b!25637 b!25643) bm!2421))

(assert (= (or b!25623 b!25624) bm!2415))

(assert (= (or bm!2400 bm!2409) bm!2416))

(assert (= (or b!25623 b!25624) bm!2406))

(assert (= (and bm!2406 c!3611) b!25629))

(assert (= (and bm!2406 (not c!3611)) b!25625))

(assert (= (or bm!2413 b!25624) bm!2410))

(assert (= (or bm!2407 bm!2415) bm!2404))

(assert (= (or bm!2411 b!25624) bm!2418))

(assert (= (and bm!2418 c!3603) b!25622))

(assert (= (and bm!2418 (not c!3603)) b!25616))

(assert (= (and d!4815 res!15313) b!25628))

(assert (= (and b!25628 c!3601) b!25634))

(assert (= (and b!25628 (not c!3601)) b!25632))

(assert (= (and b!25634 res!15324) b!25614))

(assert (= (or b!25634 b!25614 b!25632) bm!2423))

(assert (= (or b!25614 b!25632) bm!2414))

(declare-fun m!20593 () Bool)

(assert (=> b!25640 m!20593))

(declare-fun m!20595 () Bool)

(assert (=> bm!2418 m!20595))

(declare-fun m!20597 () Bool)

(assert (=> b!25614 m!20597))

(declare-fun m!20599 () Bool)

(assert (=> b!25638 m!20599))

(declare-fun m!20601 () Bool)

(assert (=> bm!2416 m!20601))

(declare-fun m!20603 () Bool)

(assert (=> b!25618 m!20603))

(declare-fun m!20605 () Bool)

(assert (=> bm!2421 m!20605))

(declare-fun m!20607 () Bool)

(assert (=> b!25616 m!20607))

(declare-fun m!20609 () Bool)

(assert (=> b!25615 m!20609))

(declare-fun m!20611 () Bool)

(assert (=> d!4815 m!20611))

(declare-fun m!20613 () Bool)

(assert (=> d!4815 m!20613))

(declare-fun m!20615 () Bool)

(assert (=> bm!2404 m!20615))

(declare-fun m!20617 () Bool)

(assert (=> bm!2404 m!20617))

(declare-fun m!20619 () Bool)

(assert (=> bm!2406 m!20619))

(declare-fun m!20621 () Bool)

(assert (=> bm!2414 m!20621))

(declare-fun m!20623 () Bool)

(assert (=> b!25634 m!20623))

(declare-fun m!20625 () Bool)

(assert (=> b!25603 m!20625))

(declare-fun m!20627 () Bool)

(assert (=> b!25620 m!20627))

(declare-fun m!20629 () Bool)

(assert (=> b!25609 m!20629))

(declare-fun m!20631 () Bool)

(assert (=> bm!2410 m!20631))

(declare-fun m!20633 () Bool)

(assert (=> bm!2417 m!20633))

(declare-fun m!20635 () Bool)

(assert (=> b!25627 m!20635))

(declare-fun m!20637 () Bool)

(assert (=> bm!2402 m!20637))

(assert (=> bm!2422 m!20603))

(declare-fun m!20639 () Bool)

(assert (=> bm!2420 m!20639))

(declare-fun m!20641 () Bool)

(assert (=> b!25624 m!20641))

(assert (=> b!25624 m!20615))

(declare-fun m!20643 () Bool)

(assert (=> b!25624 m!20643))

(declare-fun m!20645 () Bool)

(assert (=> b!25624 m!20645))

(assert (=> b!25624 m!20645))

(declare-fun m!20647 () Bool)

(assert (=> b!25624 m!20647))

(declare-fun m!20649 () Bool)

(assert (=> bm!2423 m!20649))

(declare-fun m!20651 () Bool)

(assert (=> b!25602 m!20651))

(assert (=> b!25625 m!20607))

(assert (=> bm!2344 d!4815))

(declare-fun b!25672 () Bool)

(declare-fun e!16599 () tuple2!966)

(declare-fun lt!10177 () tuple2!966)

(assert (=> b!25672 (= e!16599 (tuple2!967 true (_2!491 lt!10177)))))

(declare-fun lt!10174 () ListLongMap!557)

(declare-fun call!2456 () ListLongMap!557)

(assert (=> b!25672 (= lt!10174 call!2456)))

(declare-fun lt!10161 () (_ BitVec 64))

(assert (=> b!25672 (= lt!10161 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!10160 () Unit!608)

(declare-fun call!2460 () Unit!608)

(assert (=> b!25672 (= lt!10160 call!2460)))

(declare-fun call!2458 () ListLongMap!557)

(declare-fun call!2457 () ListLongMap!557)

(assert (=> b!25672 (= call!2458 call!2457)))

(declare-fun lt!10180 () Unit!608)

(assert (=> b!25672 (= lt!10180 lt!10160)))

(declare-fun lt!10183 () ListLongMap!557)

(declare-fun call!2459 () ListLongMap!557)

(assert (=> b!25672 (= lt!10183 call!2459)))

(declare-fun lt!10170 () (_ BitVec 64))

(assert (=> b!25672 (= lt!10170 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!10187 () Unit!608)

(declare-fun call!2453 () Unit!608)

(assert (=> b!25672 (= lt!10187 call!2453)))

(declare-fun call!2455 () ListLongMap!557)

(declare-fun call!2462 () ListLongMap!557)

(assert (=> b!25672 (= call!2455 call!2462)))

(declare-fun lt!10175 () Unit!608)

(assert (=> b!25672 (= lt!10175 lt!10187)))

(declare-fun lt!10156 () ListLongMap!557)

(declare-fun lt!10157 () (_ BitVec 64))

(declare-fun call!2463 () ListLongMap!557)

(declare-fun lt!10181 () V!1205)

(declare-fun c!3628 () Bool)

(declare-fun bm!2450 () Bool)

(assert (=> bm!2450 (= call!2463 (+!47 (ite c!3628 lt!10156 lt!10174) (tuple2!971 lt!10157 lt!10181)))))

(declare-fun lt!10168 () (_ BitVec 64))

(declare-fun call!2454 () ListLongMap!557)

(declare-fun call!2464 () ListLongMap!557)

(declare-fun bm!2451 () Bool)

(assert (=> bm!2451 (= call!2457 (+!47 (ite c!3628 call!2464 call!2454) (ite c!3628 (tuple2!971 lt!10168 (minValue!1688 (v!1627 (underlying!122 thiss!938)))) (tuple2!971 lt!10157 lt!10181))))))

(declare-fun d!4817 () Bool)

(declare-fun e!16602 () Bool)

(assert (=> d!4817 e!16602))

(declare-fun res!15330 () Bool)

(assert (=> d!4817 (=> res!15330 e!16602)))

(declare-fun lt!10176 () tuple2!966)

(assert (=> d!4817 (= res!15330 (not (_1!491 lt!10176)))))

(declare-fun e!16603 () tuple2!966)

(assert (=> d!4817 (= lt!10176 e!16603)))

(declare-fun c!3629 () Bool)

(assert (=> d!4817 (= c!3629 (and (not (= lt!10157 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= lt!10157 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun lt!10186 () ListLongMap!557)

(assert (=> d!4817 (= lt!10186 (map!418 (v!1627 (_2!493 lt!9976))))))

(declare-fun get!398 (ValueCell!318 V!1205) V!1205)

(declare-fun dynLambda!146 (Int (_ BitVec 64)) V!1205)

(assert (=> d!4817 (= lt!10181 (get!398 (select (arr!615 (_values!1753 (v!1627 (underlying!122 thiss!938)))) (bvsub (size!717 (_keys!3194 (v!1627 (underlying!122 thiss!938)))) #b00000000000000000000000000000001)) (dynLambda!146 (defaultEntry!1769 (v!1627 (underlying!122 thiss!938))) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!4817 (= lt!10157 (select (arr!616 (_keys!3194 (v!1627 (underlying!122 thiss!938)))) (bvsub (size!717 (_keys!3194 (v!1627 (underlying!122 thiss!938)))) #b00000000000000000000000000000001)))))

(assert (=> d!4817 (valid!114 thiss!938)))

(assert (=> d!4817 (= (repackFrom!8 thiss!938 (v!1627 (_2!493 lt!9976)) (bvsub (size!717 (_keys!3194 (v!1627 (underlying!122 thiss!938)))) #b00000000000000000000000000000001)) lt!10176)))

(declare-fun b!25673 () Bool)

(declare-fun e!16597 () Bool)

(assert (=> b!25673 (= e!16597 (= (map!418 (_2!491 lt!10176)) (map!418 (v!1627 (underlying!122 thiss!938)))))))

(declare-fun bm!2452 () Bool)

(declare-fun call!2465 () tuple2!966)

(assert (=> bm!2452 (= call!2465 (repackFrom!8 thiss!938 (ite c!3629 (_2!491 lt!10177) (v!1627 (_2!493 lt!9976))) (bvsub (bvsub (size!717 (_keys!3194 (v!1627 (underlying!122 thiss!938)))) #b00000000000000000000000000000001) #b00000000000000000000000000000001)))))

(declare-fun bm!2453 () Bool)

(declare-fun lt!10158 () (_ BitVec 64))

(declare-fun call!2461 () ListLongMap!557)

(assert (=> bm!2453 (= call!2455 (+!47 (ite c!3628 call!2463 call!2461) (ite c!3628 (tuple2!971 lt!10158 (zeroValue!1688 (v!1627 (underlying!122 thiss!938)))) (tuple2!971 lt!10170 (minValue!1688 (v!1627 (underlying!122 thiss!938)))))))))

(declare-fun bm!2454 () Bool)

(assert (=> bm!2454 (= call!2459 (+!47 call!2456 (tuple2!971 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!1688 (v!1627 (underlying!122 thiss!938))))))))

(declare-fun b!25674 () Bool)

(declare-fun e!16601 () tuple2!966)

(assert (=> b!25674 (= e!16603 e!16601)))

(assert (=> b!25674 (= lt!10177 (update!39 (v!1627 (_2!493 lt!9976)) lt!10157 lt!10181))))

(declare-fun c!3625 () Bool)

(assert (=> b!25674 (= c!3625 (contains!224 lt!10186 lt!10157))))

(declare-fun lt!10185 () Unit!608)

(declare-fun e!16596 () Unit!608)

(assert (=> b!25674 (= lt!10185 e!16596)))

(declare-fun c!3624 () Bool)

(assert (=> b!25674 (= c!3624 (_1!491 lt!10177))))

(declare-fun lt!10162 () ListLongMap!557)

(declare-fun bm!2455 () Bool)

(assert (=> bm!2455 (= call!2454 (+!47 (ite c!3628 lt!10162 lt!10174) (ite c!3628 (tuple2!971 lt!10168 (minValue!1688 (v!1627 (underlying!122 thiss!938)))) (tuple2!971 lt!10161 (zeroValue!1688 (v!1627 (underlying!122 thiss!938)))))))))

(declare-fun b!25675 () Bool)

(assert (=> b!25675 false))

(declare-fun lt!10169 () Unit!608)

(declare-fun lt!10159 () Unit!608)

(assert (=> b!25675 (= lt!10169 lt!10159)))

(declare-fun lt!10173 () (_ BitVec 32))

(assert (=> b!25675 (not (arrayContainsKey!0 (_keys!3194 (v!1627 (underlying!122 thiss!938))) lt!10157 lt!10173))))

(declare-datatypes ((List!571 0))(
  ( (Nil!568) (Cons!567 (h!1134 (_ BitVec 64)) (t!3260 List!571)) )
))
(declare-fun lemmaArrayNoDuplicateFromNotContainsKeysInAcc!0 (array!1305 (_ BitVec 32) (_ BitVec 64) List!571) Unit!608)

(assert (=> b!25675 (= lt!10159 (lemmaArrayNoDuplicateFromNotContainsKeysInAcc!0 (_keys!3194 (v!1627 (underlying!122 thiss!938))) lt!10173 lt!10157 (Cons!567 lt!10157 Nil!568)))))

(assert (=> b!25675 (= lt!10173 (bvadd (bvsub (size!717 (_keys!3194 (v!1627 (underlying!122 thiss!938)))) #b00000000000000000000000000000001) #b00000000000000000000000000000001))))

(declare-fun lt!10163 () Unit!608)

(declare-fun lt!10165 () Unit!608)

(assert (=> b!25675 (= lt!10163 lt!10165)))

(declare-fun arrayNoDuplicates!0 (array!1305 (_ BitVec 32) List!571) Bool)

(assert (=> b!25675 (arrayNoDuplicates!0 (_keys!3194 (v!1627 (underlying!122 thiss!938))) (bvsub (size!717 (_keys!3194 (v!1627 (underlying!122 thiss!938)))) #b00000000000000000000000000000001) Nil!568)))

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!1305 (_ BitVec 32) (_ BitVec 32)) Unit!608)

(assert (=> b!25675 (= lt!10165 (lemmaNoDuplicateFromThenFromBigger!0 (_keys!3194 (v!1627 (underlying!122 thiss!938))) #b00000000000000000000000000000000 (bvsub (size!717 (_keys!3194 (v!1627 (underlying!122 thiss!938)))) #b00000000000000000000000000000001)))))

(declare-fun lt!10179 () Unit!608)

(declare-fun lt!10178 () Unit!608)

(assert (=> b!25675 (= lt!10179 lt!10178)))

(declare-fun e!16598 () Bool)

(assert (=> b!25675 e!16598))

(declare-fun c!3626 () Bool)

(assert (=> b!25675 (= c!3626 (and (not (= lt!10157 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= lt!10157 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun lt!10167 () (_ BitVec 32))

(declare-fun lemmaListMapContainsThenArrayContainsFrom!4 (array!1305 array!1303 (_ BitVec 32) (_ BitVec 32) V!1205 V!1205 (_ BitVec 64) (_ BitVec 32) Int) Unit!608)

(assert (=> b!25675 (= lt!10178 (lemmaListMapContainsThenArrayContainsFrom!4 (_keys!3194 (v!1627 (underlying!122 thiss!938))) (_values!1753 (v!1627 (underlying!122 thiss!938))) (mask!4771 (v!1627 (underlying!122 thiss!938))) (extraKeys!1661 (v!1627 (underlying!122 thiss!938))) (zeroValue!1688 (v!1627 (underlying!122 thiss!938))) (minValue!1688 (v!1627 (underlying!122 thiss!938))) lt!10157 lt!10167 (defaultEntry!1769 (v!1627 (underlying!122 thiss!938)))))))

(assert (=> b!25675 (= lt!10167 (bvadd (bvsub (size!717 (_keys!3194 (v!1627 (underlying!122 thiss!938)))) #b00000000000000000000000000000001) #b00000000000000000000000000000001))))

(declare-fun Unit!612 () Unit!608)

(assert (=> b!25675 (= e!16596 Unit!612)))

(declare-fun bm!2456 () Bool)

(declare-fun addCommutativeForDiffKeys!4 (ListLongMap!557 (_ BitVec 64) V!1205 (_ BitVec 64) V!1205) Unit!608)

(assert (=> bm!2456 (= call!2453 (addCommutativeForDiffKeys!4 (ite c!3628 lt!10156 lt!10183) lt!10157 lt!10181 (ite c!3628 lt!10158 lt!10170) (ite c!3628 (zeroValue!1688 (v!1627 (underlying!122 thiss!938))) (minValue!1688 (v!1627 (underlying!122 thiss!938))))))))

(declare-fun b!25676 () Bool)

(declare-fun lt!10182 () tuple2!966)

(assert (=> b!25676 (= e!16599 (tuple2!967 (_1!491 lt!10182) (_2!491 lt!10182)))))

(assert (=> b!25676 (= lt!10156 call!2456)))

(assert (=> b!25676 (= lt!10158 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!10184 () Unit!608)

(assert (=> b!25676 (= lt!10184 call!2453)))

(assert (=> b!25676 (= call!2455 call!2458)))

(declare-fun lt!10164 () Unit!608)

(assert (=> b!25676 (= lt!10164 lt!10184)))

(assert (=> b!25676 (= lt!10162 call!2459)))

(assert (=> b!25676 (= lt!10168 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!10166 () Unit!608)

(assert (=> b!25676 (= lt!10166 call!2460)))

(assert (=> b!25676 (= call!2457 call!2462)))

(declare-fun lt!10171 () Unit!608)

(assert (=> b!25676 (= lt!10171 lt!10166)))

(assert (=> b!25676 (= lt!10182 call!2465)))

(declare-fun b!25677 () Bool)

(declare-fun e!16600 () tuple2!966)

(assert (=> b!25677 (= e!16603 e!16600)))

(declare-fun c!3627 () Bool)

(assert (=> b!25677 (= c!3627 (bvsgt (bvsub (size!717 (_keys!3194 (v!1627 (underlying!122 thiss!938)))) #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-fun b!25678 () Bool)

(assert (=> b!25678 (= e!16600 (tuple2!967 true (v!1627 (_2!493 lt!9976))))))

(declare-fun bm!2457 () Bool)

(assert (=> bm!2457 (= call!2464 (+!47 (ite c!3628 lt!10162 lt!10183) (ite c!3628 (tuple2!971 lt!10157 lt!10181) (tuple2!971 lt!10170 (minValue!1688 (v!1627 (underlying!122 thiss!938)))))))))

(declare-fun bm!2458 () Bool)

(assert (=> bm!2458 (= call!2458 (+!47 (ite c!3628 call!2461 call!2463) (ite c!3628 (tuple2!971 lt!10157 lt!10181) (tuple2!971 lt!10161 (zeroValue!1688 (v!1627 (underlying!122 thiss!938)))))))))

(declare-fun b!25679 () Bool)

(assert (=> b!25679 (= e!16598 (ite (= lt!10157 #b0000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand (extraKeys!1661 (v!1627 (underlying!122 thiss!938))) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (extraKeys!1661 (v!1627 (underlying!122 thiss!938))) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!25680 () Bool)

(assert (=> b!25680 (= e!16601 (tuple2!967 false (_2!491 lt!10177)))))

(declare-fun b!25681 () Bool)

(assert (=> b!25681 (= e!16598 (arrayContainsKey!0 (_keys!3194 (v!1627 (underlying!122 thiss!938))) lt!10157 lt!10167))))

(declare-fun b!25682 () Bool)

(assert (=> b!25682 (= e!16602 e!16597)))

(declare-fun res!15329 () Bool)

(assert (=> b!25682 (=> (not res!15329) (not e!16597))))

(assert (=> b!25682 (= res!15329 (valid!115 (_2!491 lt!10176)))))

(declare-fun b!25683 () Bool)

(assert (=> b!25683 (= c!3628 (bvsgt (bvsub (size!717 (_keys!3194 (v!1627 (underlying!122 thiss!938)))) #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(assert (=> b!25683 (= e!16601 e!16599)))

(declare-fun bm!2459 () Bool)

(assert (=> bm!2459 (= call!2461 (+!47 (ite c!3628 lt!10156 lt!10183) (ite c!3628 (tuple2!971 lt!10158 (zeroValue!1688 (v!1627 (underlying!122 thiss!938)))) (tuple2!971 lt!10157 lt!10181))))))

(declare-fun b!25684 () Bool)

(declare-fun lt!10172 () tuple2!966)

(assert (=> b!25684 (= lt!10172 call!2465)))

(assert (=> b!25684 (= e!16600 (tuple2!967 (_1!491 lt!10172) (_2!491 lt!10172)))))

(declare-fun bm!2460 () Bool)

(assert (=> bm!2460 (= call!2462 (+!47 (ite c!3628 call!2454 call!2464) (tuple2!971 lt!10157 lt!10181)))))

(declare-fun bm!2461 () Bool)

(declare-fun getCurrentListMapNoExtraKeys!16 (array!1305 array!1303 (_ BitVec 32) (_ BitVec 32) V!1205 V!1205 (_ BitVec 32) Int) ListLongMap!557)

(assert (=> bm!2461 (= call!2456 (getCurrentListMapNoExtraKeys!16 (_keys!3194 (v!1627 (underlying!122 thiss!938))) (_values!1753 (v!1627 (underlying!122 thiss!938))) (mask!4771 (v!1627 (underlying!122 thiss!938))) (extraKeys!1661 (v!1627 (underlying!122 thiss!938))) (zeroValue!1688 (v!1627 (underlying!122 thiss!938))) (minValue!1688 (v!1627 (underlying!122 thiss!938))) (bvadd (bvsub (size!717 (_keys!3194 (v!1627 (underlying!122 thiss!938)))) #b00000000000000000000000000000001) #b00000000000000000000000000000001) (defaultEntry!1769 (v!1627 (underlying!122 thiss!938)))))))

(declare-fun bm!2462 () Bool)

(assert (=> bm!2462 (= call!2460 (addCommutativeForDiffKeys!4 (ite c!3628 lt!10162 lt!10174) lt!10157 lt!10181 (ite c!3628 lt!10168 lt!10161) (ite c!3628 (minValue!1688 (v!1627 (underlying!122 thiss!938))) (zeroValue!1688 (v!1627 (underlying!122 thiss!938))))))))

(declare-fun b!25685 () Bool)

(declare-fun Unit!613 () Unit!608)

(assert (=> b!25685 (= e!16596 Unit!613)))

(assert (= (and d!4817 c!3629) b!25674))

(assert (= (and d!4817 (not c!3629)) b!25677))

(assert (= (and b!25674 c!3625) b!25675))

(assert (= (and b!25674 (not c!3625)) b!25685))

(assert (= (and b!25675 c!3626) b!25681))

(assert (= (and b!25675 (not c!3626)) b!25679))

(assert (= (and b!25674 c!3624) b!25683))

(assert (= (and b!25674 (not c!3624)) b!25680))

(assert (= (and b!25683 c!3628) b!25676))

(assert (= (and b!25683 (not c!3628)) b!25672))

(assert (= (or b!25676 b!25672) bm!2457))

(assert (= (or b!25676 b!25672) bm!2459))

(assert (= (or b!25676 b!25672) bm!2455))

(assert (= (or b!25676 b!25672) bm!2462))

(assert (= (or b!25676 b!25672) bm!2450))

(assert (= (or b!25676 b!25672) bm!2461))

(assert (= (or b!25676 b!25672) bm!2456))

(assert (= (or b!25676 b!25672) bm!2458))

(assert (= (or b!25676 b!25672) bm!2460))

(assert (= (or b!25676 b!25672) bm!2453))

(assert (= (or b!25676 b!25672) bm!2451))

(assert (= (or b!25676 b!25672) bm!2454))

(assert (= (and b!25677 c!3627) b!25684))

(assert (= (and b!25677 (not c!3627)) b!25678))

(assert (= (or b!25676 b!25684) bm!2452))

(assert (= (and d!4817 (not res!15330)) b!25682))

(assert (= (and b!25682 res!15329) b!25673))

(declare-fun b_lambda!1675 () Bool)

(assert (=> (not b_lambda!1675) (not d!4817)))

(declare-fun t!3259 () Bool)

(declare-fun tb!675 () Bool)

(assert (=> (and b!25454 (= (defaultEntry!1769 (v!1627 (underlying!122 thiss!938))) (defaultEntry!1769 (v!1627 (underlying!122 thiss!938)))) t!3259) tb!675))

(declare-fun result!1119 () Bool)

(assert (=> tb!675 (= result!1119 tp_is_empty!1035)))

(assert (=> d!4817 t!3259))

(declare-fun b_and!1575 () Bool)

(assert (= b_and!1571 (and (=> t!3259 result!1119) b_and!1575)))

(declare-fun m!20653 () Bool)

(assert (=> bm!2454 m!20653))

(declare-fun m!20655 () Bool)

(assert (=> b!25681 m!20655))

(declare-fun m!20657 () Bool)

(assert (=> b!25675 m!20657))

(declare-fun m!20659 () Bool)

(assert (=> b!25675 m!20659))

(declare-fun m!20661 () Bool)

(assert (=> b!25675 m!20661))

(declare-fun m!20663 () Bool)

(assert (=> b!25675 m!20663))

(declare-fun m!20665 () Bool)

(assert (=> b!25675 m!20665))

(declare-fun m!20667 () Bool)

(assert (=> bm!2453 m!20667))

(declare-fun m!20669 () Bool)

(assert (=> bm!2461 m!20669))

(declare-fun m!20671 () Bool)

(assert (=> bm!2459 m!20671))

(declare-fun m!20673 () Bool)

(assert (=> bm!2456 m!20673))

(declare-fun m!20675 () Bool)

(assert (=> bm!2460 m!20675))

(declare-fun m!20677 () Bool)

(assert (=> bm!2458 m!20677))

(declare-fun m!20679 () Bool)

(assert (=> bm!2450 m!20679))

(declare-fun m!20681 () Bool)

(assert (=> bm!2462 m!20681))

(declare-fun m!20683 () Bool)

(assert (=> bm!2452 m!20683))

(declare-fun m!20685 () Bool)

(assert (=> bm!2451 m!20685))

(declare-fun m!20687 () Bool)

(assert (=> b!25682 m!20687))

(declare-fun m!20689 () Bool)

(assert (=> bm!2455 m!20689))

(declare-fun m!20691 () Bool)

(assert (=> b!25674 m!20691))

(declare-fun m!20693 () Bool)

(assert (=> b!25674 m!20693))

(declare-fun m!20695 () Bool)

(assert (=> d!4817 m!20695))

(declare-fun m!20697 () Bool)

(assert (=> d!4817 m!20697))

(declare-fun m!20699 () Bool)

(assert (=> d!4817 m!20699))

(assert (=> d!4817 m!20695))

(assert (=> d!4817 m!20697))

(declare-fun m!20701 () Bool)

(assert (=> d!4817 m!20701))

(declare-fun m!20703 () Bool)

(assert (=> d!4817 m!20703))

(assert (=> d!4817 m!20553))

(declare-fun m!20705 () Bool)

(assert (=> b!25673 m!20705))

(assert (=> b!25673 m!20589))

(declare-fun m!20707 () Bool)

(assert (=> bm!2457 m!20707))

(assert (=> b!25457 d!4817))

(declare-fun bm!2463 () Bool)

(declare-fun call!2475 () Bool)

(declare-fun call!2474 () Bool)

(assert (=> bm!2463 (= call!2475 call!2474)))

(declare-fun b!25688 () Bool)

(declare-fun e!16615 () Bool)

(declare-fun lt!10210 () SeekEntryResult!61)

(assert (=> b!25688 (= e!16615 (= (select (arr!616 (_keys!3194 (_2!491 lt!9972))) (index!2367 lt!10210)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!25689 () Bool)

(declare-fun res!15332 () Bool)

(declare-fun e!16617 () Bool)

(assert (=> b!25689 (=> (not res!15332) (not e!16617))))

(declare-fun lt!10214 () SeekEntryResult!61)

(assert (=> b!25689 (= res!15332 (= (select (arr!616 (_keys!3194 (_2!491 lt!9972))) (index!2366 lt!10214)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!25690 () Bool)

(declare-fun e!16621 () Unit!608)

(declare-fun lt!10188 () Unit!608)

(assert (=> b!25690 (= e!16621 lt!10188)))

(declare-fun call!2477 () Unit!608)

(assert (=> b!25690 (= lt!10188 call!2477)))

(declare-fun lt!10199 () SeekEntryResult!61)

(declare-fun call!2480 () SeekEntryResult!61)

(assert (=> b!25690 (= lt!10199 call!2480)))

(declare-fun res!15334 () Bool)

(assert (=> b!25690 (= res!15334 ((_ is Found!61) lt!10199))))

(declare-fun e!16610 () Bool)

(assert (=> b!25690 (=> (not res!15334) (not e!16610))))

(assert (=> b!25690 e!16610))

(declare-fun b!25691 () Bool)

(declare-fun e!16605 () Bool)

(declare-fun lt!10195 () SeekEntryResult!61)

(assert (=> b!25691 (= e!16605 ((_ is Undefined!61) lt!10195))))

(declare-fun bm!2464 () Bool)

(declare-fun call!2487 () SeekEntryResult!61)

(assert (=> bm!2464 (= call!2480 call!2487)))

(declare-fun b!25692 () Bool)

(declare-fun res!15335 () Bool)

(declare-fun e!16612 () Bool)

(assert (=> b!25692 (=> (not res!15335) (not e!16612))))

(declare-fun call!2488 () Bool)

(assert (=> b!25692 (= res!15335 call!2488)))

(declare-fun e!16619 () Bool)

(assert (=> b!25692 (= e!16619 e!16612)))

(declare-fun c!3631 () Bool)

(declare-fun bm!2465 () Bool)

(declare-fun call!2467 () tuple2!966)

(declare-fun lt!10208 () SeekEntryResult!61)

(assert (=> bm!2465 (= call!2467 (updateHelperNewKey!12 (_2!491 lt!9972) #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!1688 (v!1627 (underlying!122 thiss!938))) (ite c!3631 (index!2369 lt!10208) (index!2366 lt!10208))))))

(declare-fun b!25693 () Bool)

(assert (=> b!25693 (= e!16617 (not call!2475))))

(declare-fun b!25694 () Bool)

(declare-fun call!2485 () Bool)

(assert (=> b!25694 (= e!16612 (not call!2485))))

(declare-fun b!25695 () Bool)

(declare-fun lt!10209 () Unit!608)

(declare-fun lt!10203 () Unit!608)

(assert (=> b!25695 (= lt!10209 lt!10203)))

(declare-fun call!2471 () ListLongMap!557)

(declare-fun call!2472 () ListLongMap!557)

(assert (=> b!25695 (= call!2471 call!2472)))

(declare-fun lt!10212 () (_ BitVec 32))

(assert (=> b!25695 (= lt!10203 (lemmaChangeLongMinValueKeyThenAddPairToListMap!12 (_keys!3194 (_2!491 lt!9972)) (_values!1753 (_2!491 lt!9972)) (mask!4771 (_2!491 lt!9972)) (extraKeys!1661 (_2!491 lt!9972)) lt!10212 (zeroValue!1688 (_2!491 lt!9972)) (minValue!1688 (_2!491 lt!9972)) (minValue!1688 (v!1627 (underlying!122 thiss!938))) (defaultEntry!1769 (_2!491 lt!9972))))))

(assert (=> b!25695 (= lt!10212 (bvor (extraKeys!1661 (_2!491 lt!9972)) #b00000000000000000000000000000010))))

(declare-fun e!16616 () tuple2!966)

(assert (=> b!25695 (= e!16616 (tuple2!967 true (LongMapFixedSize!223 (defaultEntry!1769 (_2!491 lt!9972)) (mask!4771 (_2!491 lt!9972)) (bvor (extraKeys!1661 (_2!491 lt!9972)) #b00000000000000000000000000000010) (zeroValue!1688 (_2!491 lt!9972)) (minValue!1688 (v!1627 (underlying!122 thiss!938))) (_size!159 (_2!491 lt!9972)) (_keys!3194 (_2!491 lt!9972)) (_values!1753 (_2!491 lt!9972)) (_vacant!159 (_2!491 lt!9972)))))))

(declare-fun bm!2466 () Bool)

(declare-fun call!2482 () Bool)

(assert (=> bm!2466 (= call!2488 call!2482)))

(declare-fun c!3638 () Bool)

(declare-fun c!3639 () Bool)

(declare-fun bm!2467 () Bool)

(declare-fun call!2478 () ListLongMap!557)

(assert (=> bm!2467 (= call!2478 (getCurrentListMap!123 (_keys!3194 (_2!491 lt!9972)) (ite (or c!3638 c!3639) (_values!1753 (_2!491 lt!9972)) (array!1304 (store (arr!615 (_values!1753 (_2!491 lt!9972))) (index!2367 lt!10208) (ValueCellFull!318 (minValue!1688 (v!1627 (underlying!122 thiss!938))))) (size!716 (_values!1753 (_2!491 lt!9972))))) (mask!4771 (_2!491 lt!9972)) (extraKeys!1661 (_2!491 lt!9972)) (zeroValue!1688 (_2!491 lt!9972)) (minValue!1688 (_2!491 lt!9972)) #b00000000000000000000000000000000 (defaultEntry!1769 (_2!491 lt!9972))))))

(declare-fun d!4819 () Bool)

(declare-fun e!16611 () Bool)

(assert (=> d!4819 e!16611))

(declare-fun res!15333 () Bool)

(assert (=> d!4819 (=> (not res!15333) (not e!16611))))

(declare-fun lt!10206 () tuple2!966)

(assert (=> d!4819 (= res!15333 (valid!115 (_2!491 lt!10206)))))

(declare-fun e!16625 () tuple2!966)

(assert (=> d!4819 (= lt!10206 e!16625)))

(assert (=> d!4819 (= c!3638 (= #b1000000000000000000000000000000000000000000000000000000000000000 (bvneg #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!4819 (valid!115 (_2!491 lt!9972))))

(assert (=> d!4819 (= (update!39 (_2!491 lt!9972) #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!1688 (v!1627 (underlying!122 thiss!938)))) lt!10206)))

(declare-fun b!25696 () Bool)

(declare-fun e!16607 () Bool)

(assert (=> b!25696 (= e!16607 (not call!2485))))

(declare-fun b!25697 () Bool)

(declare-fun res!15339 () Bool)

(assert (=> b!25697 (=> (not res!15339) (not e!16617))))

(declare-fun call!2489 () Bool)

(assert (=> b!25697 (= res!15339 call!2489)))

(declare-fun e!16604 () Bool)

(assert (=> b!25697 (= e!16604 e!16617)))

(declare-fun b!25698 () Bool)

(declare-fun c!3640 () Bool)

(assert (=> b!25698 (= c!3640 ((_ is MissingVacant!61) lt!10195))))

(assert (=> b!25698 (= e!16619 e!16605)))

(declare-fun bm!2468 () Bool)

(declare-fun call!2469 () SeekEntryResult!61)

(assert (=> bm!2468 (= call!2469 call!2487)))

(declare-fun b!25699 () Bool)

(declare-fun e!16624 () Bool)

(declare-fun e!16613 () Bool)

(assert (=> b!25699 (= e!16624 e!16613)))

(declare-fun res!15340 () Bool)

(assert (=> b!25699 (= res!15340 call!2489)))

(assert (=> b!25699 (=> (not res!15340) (not e!16613))))

(declare-fun call!2466 () ListLongMap!557)

(declare-fun call!2476 () ListLongMap!557)

(declare-fun b!25700 () Bool)

(declare-fun e!16620 () Bool)

(assert (=> b!25700 (= e!16620 (= call!2466 (+!47 call!2476 (tuple2!971 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!1688 (v!1627 (underlying!122 thiss!938)))))))))

(declare-fun b!25701 () Bool)

(declare-fun res!15342 () Bool)

(assert (=> b!25701 (= res!15342 (= (select (arr!616 (_keys!3194 (_2!491 lt!9972))) (index!2369 lt!10214)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!25701 (=> (not res!15342) (not e!16613))))

(declare-fun b!25702 () Bool)

(declare-fun e!16606 () ListLongMap!557)

(assert (=> b!25702 (= e!16606 (getCurrentListMap!123 (_keys!3194 (_2!491 lt!9972)) (_values!1753 (_2!491 lt!9972)) (mask!4771 (_2!491 lt!9972)) (extraKeys!1661 (_2!491 lt!9972)) (zeroValue!1688 (_2!491 lt!9972)) (minValue!1688 (_2!491 lt!9972)) #b00000000000000000000000000000000 (defaultEntry!1769 (_2!491 lt!9972))))))

(declare-fun b!25703 () Bool)

(assert (=> b!25703 (= c!3631 ((_ is MissingVacant!61) lt!10208))))

(declare-fun e!16622 () tuple2!966)

(declare-fun e!16618 () tuple2!966)

(assert (=> b!25703 (= e!16622 e!16618)))

(declare-fun b!25704 () Bool)

(assert (=> b!25704 (= e!16625 e!16622)))

(assert (=> b!25704 (= lt!10208 (seekEntryOrOpen!0 #b1000000000000000000000000000000000000000000000000000000000000000 (_keys!3194 (_2!491 lt!9972)) (mask!4771 (_2!491 lt!9972))))))

(assert (=> b!25704 (= c!3639 ((_ is Undefined!61) lt!10208))))

(declare-fun b!25705 () Bool)

(assert (=> b!25705 (= e!16605 e!16607)))

(declare-fun res!15338 () Bool)

(assert (=> b!25705 (= res!15338 call!2488)))

(assert (=> b!25705 (=> (not res!15338) (not e!16607))))

(declare-fun bm!2469 () Bool)

(declare-fun c!3643 () Bool)

(assert (=> bm!2469 (= c!3643 c!3639)))

(declare-fun call!2479 () Bool)

(declare-fun e!16608 () ListLongMap!557)

(assert (=> bm!2469 (= call!2479 (contains!224 e!16608 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun bm!2470 () Bool)

(declare-fun call!2468 () ListLongMap!557)

(assert (=> bm!2470 (= call!2468 call!2478)))

(declare-fun b!25706 () Bool)

(declare-fun res!15341 () Bool)

(assert (=> b!25706 (= res!15341 (= (select (arr!616 (_keys!3194 (_2!491 lt!9972))) (index!2369 lt!10195)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!25706 (=> (not res!15341) (not e!16607))))

(declare-fun b!25707 () Bool)

(declare-fun lt!10190 () tuple2!966)

(assert (=> b!25707 (= e!16618 (tuple2!967 (_1!491 lt!10190) (_2!491 lt!10190)))))

(assert (=> b!25707 (= lt!10190 call!2467)))

(declare-fun b!25708 () Bool)

(assert (=> b!25708 (= e!16606 call!2468)))

(declare-fun bm!2471 () Bool)

(declare-fun call!2481 () Bool)

(declare-fun call!2484 () Bool)

(assert (=> bm!2471 (= call!2481 call!2484)))

(declare-fun b!25709 () Bool)

(declare-fun lt!10197 () Unit!608)

(declare-fun e!16623 () Unit!608)

(assert (=> b!25709 (= lt!10197 e!16623)))

(declare-fun c!3634 () Bool)

(assert (=> b!25709 (= c!3634 call!2479)))

(assert (=> b!25709 (= e!16622 (tuple2!967 false (_2!491 lt!9972)))))

(declare-fun b!25710 () Bool)

(declare-fun lt!10189 () Unit!608)

(declare-fun lt!10211 () Unit!608)

(assert (=> b!25710 (= lt!10189 lt!10211)))

(declare-fun call!2486 () ListLongMap!557)

(assert (=> b!25710 (contains!224 call!2486 (select (arr!616 (_keys!3194 (_2!491 lt!9972))) (index!2367 lt!10208)))))

(declare-fun lt!10194 () array!1303)

(assert (=> b!25710 (= lt!10211 (lemmaValidKeyInArrayIsInListMap!12 (_keys!3194 (_2!491 lt!9972)) lt!10194 (mask!4771 (_2!491 lt!9972)) (extraKeys!1661 (_2!491 lt!9972)) (zeroValue!1688 (_2!491 lt!9972)) (minValue!1688 (_2!491 lt!9972)) (index!2367 lt!10208) (defaultEntry!1769 (_2!491 lt!9972))))))

(assert (=> b!25710 (= lt!10194 (array!1304 (store (arr!615 (_values!1753 (_2!491 lt!9972))) (index!2367 lt!10208) (ValueCellFull!318 (minValue!1688 (v!1627 (underlying!122 thiss!938))))) (size!716 (_values!1753 (_2!491 lt!9972)))))))

(declare-fun lt!10207 () Unit!608)

(declare-fun lt!10192 () Unit!608)

(assert (=> b!25710 (= lt!10207 lt!10192)))

(declare-fun call!2483 () ListLongMap!557)

(declare-fun call!2470 () ListLongMap!557)

(assert (=> b!25710 (= call!2483 call!2470)))

(assert (=> b!25710 (= lt!10192 (lemmaChangeValueExistingKeyToArrayThenAddPairToListMap!12 (_keys!3194 (_2!491 lt!9972)) (_values!1753 (_2!491 lt!9972)) (mask!4771 (_2!491 lt!9972)) (extraKeys!1661 (_2!491 lt!9972)) (zeroValue!1688 (_2!491 lt!9972)) (minValue!1688 (_2!491 lt!9972)) (index!2367 lt!10208) #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!1688 (v!1627 (underlying!122 thiss!938))) (defaultEntry!1769 (_2!491 lt!9972))))))

(declare-fun lt!10191 () Unit!608)

(assert (=> b!25710 (= lt!10191 e!16621)))

(declare-fun c!3636 () Bool)

(assert (=> b!25710 (= c!3636 call!2479)))

(declare-fun e!16614 () tuple2!966)

(assert (=> b!25710 (= e!16614 (tuple2!967 true (LongMapFixedSize!223 (defaultEntry!1769 (_2!491 lt!9972)) (mask!4771 (_2!491 lt!9972)) (extraKeys!1661 (_2!491 lt!9972)) (zeroValue!1688 (_2!491 lt!9972)) (minValue!1688 (_2!491 lt!9972)) (_size!159 (_2!491 lt!9972)) (_keys!3194 (_2!491 lt!9972)) (array!1304 (store (arr!615 (_values!1753 (_2!491 lt!9972))) (index!2367 lt!10208) (ValueCellFull!318 (minValue!1688 (v!1627 (underlying!122 thiss!938))))) (size!716 (_values!1753 (_2!491 lt!9972)))) (_vacant!159 (_2!491 lt!9972)))))))

(declare-fun bm!2472 () Bool)

(assert (=> bm!2472 (= call!2485 call!2474)))

(declare-fun c!3637 () Bool)

(declare-fun bm!2473 () Bool)

(declare-fun lt!10204 () (_ BitVec 32))

(assert (=> bm!2473 (= call!2486 (getCurrentListMap!123 (_keys!3194 (_2!491 lt!9972)) (ite c!3638 (_values!1753 (_2!491 lt!9972)) lt!10194) (mask!4771 (_2!491 lt!9972)) (ite c!3638 (ite c!3637 lt!10204 lt!10212) (extraKeys!1661 (_2!491 lt!9972))) (ite (and c!3638 c!3637) (minValue!1688 (v!1627 (underlying!122 thiss!938))) (zeroValue!1688 (_2!491 lt!9972))) (ite c!3638 (ite c!3637 (minValue!1688 (_2!491 lt!9972)) (minValue!1688 (v!1627 (underlying!122 thiss!938)))) (minValue!1688 (_2!491 lt!9972))) #b00000000000000000000000000000000 (defaultEntry!1769 (_2!491 lt!9972))))))

(declare-fun b!25711 () Bool)

(assert (=> b!25711 (= e!16608 (getCurrentListMap!123 (_keys!3194 (_2!491 lt!9972)) (_values!1753 (_2!491 lt!9972)) (mask!4771 (_2!491 lt!9972)) (extraKeys!1661 (_2!491 lt!9972)) (zeroValue!1688 (_2!491 lt!9972)) (minValue!1688 (_2!491 lt!9972)) #b00000000000000000000000000000000 (defaultEntry!1769 (_2!491 lt!9972))))))

(declare-fun b!25712 () Bool)

(declare-fun res!15337 () Bool)

(assert (=> b!25712 (= res!15337 call!2482)))

(assert (=> b!25712 (=> (not res!15337) (not e!16610))))

(declare-fun b!25713 () Bool)

(declare-fun res!15331 () Bool)

(assert (=> b!25713 (=> (not res!15331) (not e!16612))))

(assert (=> b!25713 (= res!15331 (= (select (arr!616 (_keys!3194 (_2!491 lt!9972))) (index!2366 lt!10195)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!25714 () Bool)

(declare-fun e!16609 () Bool)

(assert (=> b!25714 (= e!16611 e!16609)))

(declare-fun c!3633 () Bool)

(assert (=> b!25714 (= c!3633 (_1!491 lt!10206))))

(declare-fun bm!2474 () Bool)

(assert (=> bm!2474 (= call!2471 call!2483)))

(declare-fun bm!2475 () Bool)

(assert (=> bm!2475 (= call!2489 call!2481)))

(declare-fun b!25715 () Bool)

(assert (=> b!25715 (= e!16608 call!2470)))

(declare-fun b!25716 () Bool)

(assert (=> b!25716 (= e!16624 ((_ is Undefined!61) lt!10214))))

(declare-fun bm!2476 () Bool)

(assert (=> bm!2476 (= call!2472 call!2486)))

(declare-fun b!25717 () Bool)

(assert (=> b!25717 (= e!16618 e!16614)))

(declare-fun c!3632 () Bool)

(assert (=> b!25717 (= c!3632 ((_ is MissingZero!61) lt!10208))))

(declare-fun b!25718 () Bool)

(assert (=> b!25718 (= e!16609 (= call!2466 call!2476))))

(declare-fun bm!2477 () Bool)

(assert (=> bm!2477 (= call!2476 (map!418 (_2!491 lt!9972)))))

(declare-fun b!25719 () Bool)

(declare-fun Unit!614 () Unit!608)

(assert (=> b!25719 (= e!16623 Unit!614)))

(declare-fun lt!10196 () Unit!608)

(assert (=> b!25719 (= lt!10196 call!2477)))

(assert (=> b!25719 (= lt!10210 call!2469)))

(declare-fun res!15336 () Bool)

(assert (=> b!25719 (= res!15336 ((_ is Found!61) lt!10210))))

(assert (=> b!25719 (=> (not res!15336) (not e!16615))))

(assert (=> b!25719 e!16615))

(declare-fun lt!10193 () Unit!608)

(assert (=> b!25719 (= lt!10193 lt!10196)))

(assert (=> b!25719 false))

(declare-fun b!25720 () Bool)

(assert (=> b!25720 (= e!16609 e!16620)))

(declare-fun res!15344 () Bool)

(assert (=> b!25720 (= res!15344 (contains!224 call!2466 #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!25720 (=> (not res!15344) (not e!16620))))

(declare-fun bm!2478 () Bool)

(assert (=> bm!2478 (= call!2470 call!2478)))

(declare-fun bm!2479 () Bool)

(assert (=> bm!2479 (= call!2474 (arrayContainsKey!0 (_keys!3194 (_2!491 lt!9972)) #b1000000000000000000000000000000000000000000000000000000000000000 #b00000000000000000000000000000000))))

(declare-fun b!25721 () Bool)

(declare-fun res!15343 () Bool)

(assert (=> b!25721 (= res!15343 call!2481)))

(assert (=> b!25721 (=> (not res!15343) (not e!16615))))

(declare-fun b!25722 () Bool)

(assert (=> b!25722 (= e!16625 e!16616)))

(assert (=> b!25722 (= c!3637 (= #b1000000000000000000000000000000000000000000000000000000000000000 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!25723 () Bool)

(declare-fun lt!10201 () Unit!608)

(assert (=> b!25723 (= e!16623 lt!10201)))

(declare-fun call!2473 () Unit!608)

(assert (=> b!25723 (= lt!10201 call!2473)))

(assert (=> b!25723 (= lt!10214 call!2469)))

(declare-fun c!3642 () Bool)

(assert (=> b!25723 (= c!3642 ((_ is MissingZero!61) lt!10214))))

(assert (=> b!25723 e!16604))

(declare-fun b!25724 () Bool)

(declare-fun lt!10205 () Unit!608)

(declare-fun lt!10213 () Unit!608)

(assert (=> b!25724 (= lt!10205 lt!10213)))

(assert (=> b!25724 (= call!2471 call!2472)))

(assert (=> b!25724 (= lt!10213 (lemmaChangeZeroKeyThenAddPairToListMap!12 (_keys!3194 (_2!491 lt!9972)) (_values!1753 (_2!491 lt!9972)) (mask!4771 (_2!491 lt!9972)) (extraKeys!1661 (_2!491 lt!9972)) lt!10204 (zeroValue!1688 (_2!491 lt!9972)) (minValue!1688 (v!1627 (underlying!122 thiss!938))) (minValue!1688 (_2!491 lt!9972)) (defaultEntry!1769 (_2!491 lt!9972))))))

(assert (=> b!25724 (= lt!10204 (bvor (extraKeys!1661 (_2!491 lt!9972)) #b00000000000000000000000000000001))))

(assert (=> b!25724 (= e!16616 (tuple2!967 true (LongMapFixedSize!223 (defaultEntry!1769 (_2!491 lt!9972)) (mask!4771 (_2!491 lt!9972)) (bvor (extraKeys!1661 (_2!491 lt!9972)) #b00000000000000000000000000000001) (minValue!1688 (v!1627 (underlying!122 thiss!938))) (minValue!1688 (_2!491 lt!9972)) (_size!159 (_2!491 lt!9972)) (_keys!3194 (_2!491 lt!9972)) (_values!1753 (_2!491 lt!9972)) (_vacant!159 (_2!491 lt!9972)))))))

(declare-fun c!3641 () Bool)

(declare-fun bm!2480 () Bool)

(assert (=> bm!2480 (= call!2484 (inRange!0 (ite c!3639 (ite c!3634 (index!2367 lt!10210) (ite c!3642 (index!2366 lt!10214) (index!2369 lt!10214))) (ite c!3636 (index!2367 lt!10199) (ite c!3641 (index!2366 lt!10195) (index!2369 lt!10195)))) (mask!4771 (_2!491 lt!9972))))))

(declare-fun bm!2481 () Bool)

(assert (=> bm!2481 (= call!2483 (+!47 e!16606 (ite c!3638 (ite c!3637 (tuple2!971 #b0000000000000000000000000000000000000000000000000000000000000000 (minValue!1688 (v!1627 (underlying!122 thiss!938)))) (tuple2!971 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!1688 (v!1627 (underlying!122 thiss!938))))) (tuple2!971 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!1688 (v!1627 (underlying!122 thiss!938)))))))))

(declare-fun c!3635 () Bool)

(assert (=> bm!2481 (= c!3635 c!3638)))

(declare-fun bm!2482 () Bool)

(assert (=> bm!2482 (= call!2482 call!2484)))

(declare-fun bm!2483 () Bool)

(assert (=> bm!2483 (= call!2477 (lemmaInListMapThenSeekEntryOrOpenFindsIt!12 (_keys!3194 (_2!491 lt!9972)) (_values!1753 (_2!491 lt!9972)) (mask!4771 (_2!491 lt!9972)) (extraKeys!1661 (_2!491 lt!9972)) (zeroValue!1688 (_2!491 lt!9972)) (minValue!1688 (_2!491 lt!9972)) #b1000000000000000000000000000000000000000000000000000000000000000 (defaultEntry!1769 (_2!491 lt!9972))))))

(declare-fun b!25725 () Bool)

(declare-fun lt!10202 () tuple2!966)

(assert (=> b!25725 (= lt!10202 call!2467)))

(assert (=> b!25725 (= e!16614 (tuple2!967 (_1!491 lt!10202) (_2!491 lt!10202)))))

(declare-fun bm!2484 () Bool)

(assert (=> bm!2484 (= call!2473 (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!12 (_keys!3194 (_2!491 lt!9972)) (_values!1753 (_2!491 lt!9972)) (mask!4771 (_2!491 lt!9972)) (extraKeys!1661 (_2!491 lt!9972)) (zeroValue!1688 (_2!491 lt!9972)) (minValue!1688 (_2!491 lt!9972)) #b1000000000000000000000000000000000000000000000000000000000000000 (defaultEntry!1769 (_2!491 lt!9972))))))

(declare-fun bm!2485 () Bool)

(assert (=> bm!2485 (= call!2487 (seekEntryOrOpen!0 #b1000000000000000000000000000000000000000000000000000000000000000 (_keys!3194 (_2!491 lt!9972)) (mask!4771 (_2!491 lt!9972))))))

(declare-fun b!25726 () Bool)

(assert (=> b!25726 (= e!16610 (= (select (arr!616 (_keys!3194 (_2!491 lt!9972))) (index!2367 lt!10199)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!25727 () Bool)

(declare-fun c!3630 () Bool)

(assert (=> b!25727 (= c!3630 ((_ is MissingVacant!61) lt!10214))))

(assert (=> b!25727 (= e!16604 e!16624)))

(declare-fun b!25728 () Bool)

(assert (=> b!25728 (= e!16613 (not call!2475))))

(declare-fun bm!2486 () Bool)

(assert (=> bm!2486 (= call!2466 (map!418 (_2!491 lt!10206)))))

(declare-fun b!25729 () Bool)

(declare-fun Unit!615 () Unit!608)

(assert (=> b!25729 (= e!16621 Unit!615)))

(declare-fun lt!10198 () Unit!608)

(assert (=> b!25729 (= lt!10198 call!2473)))

(assert (=> b!25729 (= lt!10195 call!2480)))

(assert (=> b!25729 (= c!3641 ((_ is MissingZero!61) lt!10195))))

(assert (=> b!25729 e!16619))

(declare-fun lt!10200 () Unit!608)

(assert (=> b!25729 (= lt!10200 lt!10198)))

(assert (=> b!25729 false))

(assert (= (and d!4819 c!3638) b!25722))

(assert (= (and d!4819 (not c!3638)) b!25704))

(assert (= (and b!25722 c!3637) b!25724))

(assert (= (and b!25722 (not c!3637)) b!25695))

(assert (= (or b!25724 b!25695) bm!2476))

(assert (= (or b!25724 b!25695) bm!2470))

(assert (= (or b!25724 b!25695) bm!2474))

(assert (= (and b!25704 c!3639) b!25709))

(assert (= (and b!25704 (not c!3639)) b!25703))

(assert (= (and b!25709 c!3634) b!25719))

(assert (= (and b!25709 (not c!3634)) b!25723))

(assert (= (and b!25719 res!15336) b!25721))

(assert (= (and b!25721 res!15343) b!25688))

(assert (= (and b!25723 c!3642) b!25697))

(assert (= (and b!25723 (not c!3642)) b!25727))

(assert (= (and b!25697 res!15339) b!25689))

(assert (= (and b!25689 res!15332) b!25693))

(assert (= (and b!25727 c!3630) b!25699))

(assert (= (and b!25727 (not c!3630)) b!25716))

(assert (= (and b!25699 res!15340) b!25701))

(assert (= (and b!25701 res!15342) b!25728))

(assert (= (or b!25697 b!25699) bm!2475))

(assert (= (or b!25693 b!25728) bm!2463))

(assert (= (or b!25721 bm!2475) bm!2471))

(assert (= (or b!25719 b!25723) bm!2468))

(assert (= (and b!25703 c!3631) b!25707))

(assert (= (and b!25703 (not c!3631)) b!25717))

(assert (= (and b!25717 c!3632) b!25725))

(assert (= (and b!25717 (not c!3632)) b!25710))

(assert (= (and b!25710 c!3636) b!25690))

(assert (= (and b!25710 (not c!3636)) b!25729))

(assert (= (and b!25690 res!15334) b!25712))

(assert (= (and b!25712 res!15337) b!25726))

(assert (= (and b!25729 c!3641) b!25692))

(assert (= (and b!25729 (not c!3641)) b!25698))

(assert (= (and b!25692 res!15335) b!25713))

(assert (= (and b!25713 res!15331) b!25694))

(assert (= (and b!25698 c!3640) b!25705))

(assert (= (and b!25698 (not c!3640)) b!25691))

(assert (= (and b!25705 res!15338) b!25706))

(assert (= (and b!25706 res!15341) b!25696))

(assert (= (or b!25692 b!25705) bm!2466))

(assert (= (or b!25694 b!25696) bm!2472))

(assert (= (or b!25712 bm!2466) bm!2482))

(assert (= (or b!25690 b!25729) bm!2464))

(assert (= (or b!25707 b!25725) bm!2465))

(assert (= (or bm!2468 bm!2464) bm!2485))

(assert (= (or b!25719 b!25690) bm!2483))

(assert (= (or bm!2471 bm!2482) bm!2480))

(assert (= (or b!25723 b!25729) bm!2484))

(assert (= (or b!25709 b!25710) bm!2478))

(assert (= (or bm!2463 bm!2472) bm!2479))

(assert (= (or b!25709 b!25710) bm!2469))

(assert (= (and bm!2469 c!3643) b!25715))

(assert (= (and bm!2469 (not c!3643)) b!25711))

(assert (= (or bm!2476 b!25710) bm!2473))

(assert (= (or bm!2470 bm!2478) bm!2467))

(assert (= (or bm!2474 b!25710) bm!2481))

(assert (= (and bm!2481 c!3635) b!25708))

(assert (= (and bm!2481 (not c!3635)) b!25702))

(assert (= (and d!4819 res!15333) b!25714))

(assert (= (and b!25714 c!3633) b!25720))

(assert (= (and b!25714 (not c!3633)) b!25718))

(assert (= (and b!25720 res!15344) b!25700))

(assert (= (or b!25720 b!25700 b!25718) bm!2486))

(assert (= (or b!25700 b!25718) bm!2477))

(declare-fun m!20709 () Bool)

(assert (=> b!25726 m!20709))

(declare-fun m!20711 () Bool)

(assert (=> bm!2481 m!20711))

(declare-fun m!20713 () Bool)

(assert (=> b!25700 m!20713))

(declare-fun m!20715 () Bool)

(assert (=> b!25724 m!20715))

(declare-fun m!20717 () Bool)

(assert (=> bm!2479 m!20717))

(declare-fun m!20719 () Bool)

(assert (=> b!25704 m!20719))

(declare-fun m!20721 () Bool)

(assert (=> bm!2484 m!20721))

(declare-fun m!20723 () Bool)

(assert (=> b!25702 m!20723))

(declare-fun m!20725 () Bool)

(assert (=> b!25701 m!20725))

(declare-fun m!20727 () Bool)

(assert (=> d!4819 m!20727))

(declare-fun m!20729 () Bool)

(assert (=> d!4819 m!20729))

(declare-fun m!20731 () Bool)

(assert (=> bm!2467 m!20731))

(declare-fun m!20733 () Bool)

(assert (=> bm!2467 m!20733))

(declare-fun m!20735 () Bool)

(assert (=> bm!2469 m!20735))

(declare-fun m!20737 () Bool)

(assert (=> bm!2477 m!20737))

(declare-fun m!20739 () Bool)

(assert (=> b!25720 m!20739))

(declare-fun m!20741 () Bool)

(assert (=> b!25689 m!20741))

(declare-fun m!20743 () Bool)

(assert (=> b!25706 m!20743))

(declare-fun m!20745 () Bool)

(assert (=> b!25695 m!20745))

(declare-fun m!20747 () Bool)

(assert (=> bm!2473 m!20747))

(declare-fun m!20749 () Bool)

(assert (=> bm!2480 m!20749))

(declare-fun m!20751 () Bool)

(assert (=> b!25713 m!20751))

(declare-fun m!20753 () Bool)

(assert (=> bm!2465 m!20753))

(assert (=> bm!2485 m!20719))

(declare-fun m!20755 () Bool)

(assert (=> bm!2483 m!20755))

(declare-fun m!20757 () Bool)

(assert (=> b!25710 m!20757))

(assert (=> b!25710 m!20731))

(declare-fun m!20759 () Bool)

(assert (=> b!25710 m!20759))

(declare-fun m!20761 () Bool)

(assert (=> b!25710 m!20761))

(assert (=> b!25710 m!20761))

(declare-fun m!20763 () Bool)

(assert (=> b!25710 m!20763))

(declare-fun m!20765 () Bool)

(assert (=> bm!2486 m!20765))

(declare-fun m!20767 () Bool)

(assert (=> b!25688 m!20767))

(assert (=> b!25711 m!20723))

(assert (=> b!25466 d!4819))

(declare-fun b!25742 () Bool)

(declare-fun e!16634 () Unit!608)

(declare-fun Unit!616 () Unit!608)

(assert (=> b!25742 (= e!16634 Unit!616)))

(declare-fun b!25743 () Bool)

(declare-fun e!16633 () Bool)

(declare-fun lt!10278 () tuple2!970)

(declare-fun lt!10282 () (_ BitVec 32))

(assert (=> b!25743 (= e!16633 (ite (= (_1!494 lt!10278) #b0000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand lt!10282 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand lt!10282 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun d!4821 () Bool)

(declare-fun e!16632 () Bool)

(assert (=> d!4821 e!16632))

(declare-fun res!15350 () Bool)

(assert (=> d!4821 (=> (not res!15350) (not e!16632))))

(declare-fun lt!10271 () LongMapFixedSize!222)

(assert (=> d!4821 (= res!15350 (valid!115 lt!10271))))

(declare-fun lt!10269 () LongMapFixedSize!222)

(assert (=> d!4821 (= lt!10271 lt!10269)))

(declare-fun lt!10272 () Unit!608)

(assert (=> d!4821 (= lt!10272 e!16634)))

(declare-fun c!3649 () Bool)

(assert (=> d!4821 (= c!3649 (not (= (map!418 lt!10269) (ListLongMap!558 Nil!566))))))

(declare-fun lt!10263 () Unit!608)

(declare-fun lt!10270 () Unit!608)

(assert (=> d!4821 (= lt!10263 lt!10270)))

(declare-fun lt!10264 () array!1305)

(declare-fun lt!10273 () (_ BitVec 32))

(declare-fun lt!10262 () List!571)

(assert (=> d!4821 (arrayNoDuplicates!0 lt!10264 lt!10273 lt!10262)))

(declare-fun lemmaArrayNoDuplicatesInAll0Array!0 (array!1305 (_ BitVec 32) (_ BitVec 32) List!571) Unit!608)

(assert (=> d!4821 (= lt!10270 (lemmaArrayNoDuplicatesInAll0Array!0 lt!10264 lt!10273 (bvadd (computeNewMask!30 thiss!938 (mask!4771 (v!1627 (underlying!122 thiss!938))) (_vacant!159 (v!1627 (underlying!122 thiss!938))) (_size!159 (v!1627 (underlying!122 thiss!938)))) #b00000000000000000000000000000001) lt!10262))))

(assert (=> d!4821 (= lt!10262 Nil!568)))

(assert (=> d!4821 (= lt!10273 #b00000000000000000000000000000000)))

(assert (=> d!4821 (= lt!10264 (array!1306 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) (bvadd (computeNewMask!30 thiss!938 (mask!4771 (v!1627 (underlying!122 thiss!938))) (_vacant!159 (v!1627 (underlying!122 thiss!938))) (_size!159 (v!1627 (underlying!122 thiss!938)))) #b00000000000000000000000000000001)))))

(declare-fun lt!10281 () Unit!608)

(declare-fun lt!10277 () Unit!608)

(assert (=> d!4821 (= lt!10281 lt!10277)))

(declare-fun lt!10261 () (_ BitVec 32))

(declare-fun lt!10266 () array!1305)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!1305 (_ BitVec 32)) Bool)

(assert (=> d!4821 (arrayForallSeekEntryOrOpenFound!0 lt!10261 lt!10266 (computeNewMask!30 thiss!938 (mask!4771 (v!1627 (underlying!122 thiss!938))) (_vacant!159 (v!1627 (underlying!122 thiss!938))) (_size!159 (v!1627 (underlying!122 thiss!938)))))))

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundAlwaysTrueFor0Array!0 (array!1305 (_ BitVec 32) (_ BitVec 32)) Unit!608)

(assert (=> d!4821 (= lt!10277 (lemmaArrayForallSeekEntryOrOpenFoundAlwaysTrueFor0Array!0 lt!10266 (computeNewMask!30 thiss!938 (mask!4771 (v!1627 (underlying!122 thiss!938))) (_vacant!159 (v!1627 (underlying!122 thiss!938))) (_size!159 (v!1627 (underlying!122 thiss!938)))) lt!10261))))

(assert (=> d!4821 (= lt!10261 #b00000000000000000000000000000000)))

(assert (=> d!4821 (= lt!10266 (array!1306 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) (bvadd (computeNewMask!30 thiss!938 (mask!4771 (v!1627 (underlying!122 thiss!938))) (_vacant!159 (v!1627 (underlying!122 thiss!938))) (_size!159 (v!1627 (underlying!122 thiss!938)))) #b00000000000000000000000000000001)))))

(declare-fun lt!10283 () Unit!608)

(declare-fun lt!10274 () Unit!608)

(assert (=> d!4821 (= lt!10283 lt!10274)))

(declare-fun lt!10268 () array!1305)

(declare-fun lt!10265 () (_ BitVec 32))

(declare-fun lt!10267 () (_ BitVec 32))

(declare-fun arrayCountValidKeys!0 (array!1305 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!4821 (= (arrayCountValidKeys!0 lt!10268 lt!10265 lt!10267) #b00000000000000000000000000000000)))

(declare-fun lemmaArrayCountValidKeysOfFilled0ArrayIs0!0 (array!1305 (_ BitVec 32) (_ BitVec 32)) Unit!608)

(assert (=> d!4821 (= lt!10274 (lemmaArrayCountValidKeysOfFilled0ArrayIs0!0 lt!10268 lt!10265 lt!10267))))

(assert (=> d!4821 (= lt!10267 (bvadd (computeNewMask!30 thiss!938 (mask!4771 (v!1627 (underlying!122 thiss!938))) (_vacant!159 (v!1627 (underlying!122 thiss!938))) (_size!159 (v!1627 (underlying!122 thiss!938)))) #b00000000000000000000000000000001))))

(assert (=> d!4821 (= lt!10265 #b00000000000000000000000000000000)))

(assert (=> d!4821 (= lt!10268 (array!1306 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) (bvadd (computeNewMask!30 thiss!938 (mask!4771 (v!1627 (underlying!122 thiss!938))) (_vacant!159 (v!1627 (underlying!122 thiss!938))) (_size!159 (v!1627 (underlying!122 thiss!938)))) #b00000000000000000000000000000001)))))

(assert (=> d!4821 (= lt!10269 (LongMapFixedSize!223 (defaultEntry!1769 (v!1627 (underlying!122 thiss!938))) (computeNewMask!30 thiss!938 (mask!4771 (v!1627 (underlying!122 thiss!938))) (_vacant!159 (v!1627 (underlying!122 thiss!938))) (_size!159 (v!1627 (underlying!122 thiss!938)))) #b00000000000000000000000000000000 (dynLambda!146 (defaultEntry!1769 (v!1627 (underlying!122 thiss!938))) #b0000000000000000000000000000000000000000000000000000000000000000) (dynLambda!146 (defaultEntry!1769 (v!1627 (underlying!122 thiss!938))) #b0000000000000000000000000000000000000000000000000000000000000000) #b00000000000000000000000000000000 (array!1306 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) (bvadd (computeNewMask!30 thiss!938 (mask!4771 (v!1627 (underlying!122 thiss!938))) (_vacant!159 (v!1627 (underlying!122 thiss!938))) (_size!159 (v!1627 (underlying!122 thiss!938)))) #b00000000000000000000000000000001)) (array!1304 ((as const (Array (_ BitVec 32) ValueCell!318)) EmptyCell!318) (bvadd (computeNewMask!30 thiss!938 (mask!4771 (v!1627 (underlying!122 thiss!938))) (_vacant!159 (v!1627 (underlying!122 thiss!938))) (_size!159 (v!1627 (underlying!122 thiss!938)))) #b00000000000000000000000000000001)) #b00000000000000000000000000000000))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> d!4821 (validMask!0 (computeNewMask!30 thiss!938 (mask!4771 (v!1627 (underlying!122 thiss!938))) (_vacant!159 (v!1627 (underlying!122 thiss!938))) (_size!159 (v!1627 (underlying!122 thiss!938)))))))

(assert (=> d!4821 (= (getNewLongMapFixedSize!33 (computeNewMask!30 thiss!938 (mask!4771 (v!1627 (underlying!122 thiss!938))) (_vacant!159 (v!1627 (underlying!122 thiss!938))) (_size!159 (v!1627 (underlying!122 thiss!938)))) (defaultEntry!1769 (v!1627 (underlying!122 thiss!938)))) lt!10271)))

(declare-fun b!25744 () Bool)

(declare-fun lt!10276 () array!1305)

(assert (=> b!25744 (= e!16633 (arrayContainsKey!0 lt!10276 (_1!494 lt!10278) #b00000000000000000000000000000000))))

(declare-fun b!25745 () Bool)

(declare-fun Unit!617 () Unit!608)

(assert (=> b!25745 (= e!16634 Unit!617)))

(declare-fun head!832 (List!569) tuple2!970)

(assert (=> b!25745 (= lt!10278 (head!832 (toList!294 (map!418 lt!10269))))))

(assert (=> b!25745 (= lt!10276 (array!1306 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) (bvadd (computeNewMask!30 thiss!938 (mask!4771 (v!1627 (underlying!122 thiss!938))) (_vacant!159 (v!1627 (underlying!122 thiss!938))) (_size!159 (v!1627 (underlying!122 thiss!938)))) #b00000000000000000000000000000001)))))

(assert (=> b!25745 (= lt!10282 #b00000000000000000000000000000000)))

(declare-fun lt!10280 () Unit!608)

(declare-fun lemmaKeyInListMapIsInArray!95 (array!1305 array!1303 (_ BitVec 32) (_ BitVec 32) V!1205 V!1205 (_ BitVec 64) Int) Unit!608)

(assert (=> b!25745 (= lt!10280 (lemmaKeyInListMapIsInArray!95 lt!10276 (array!1304 ((as const (Array (_ BitVec 32) ValueCell!318)) EmptyCell!318) (bvadd (computeNewMask!30 thiss!938 (mask!4771 (v!1627 (underlying!122 thiss!938))) (_vacant!159 (v!1627 (underlying!122 thiss!938))) (_size!159 (v!1627 (underlying!122 thiss!938)))) #b00000000000000000000000000000001)) (computeNewMask!30 thiss!938 (mask!4771 (v!1627 (underlying!122 thiss!938))) (_vacant!159 (v!1627 (underlying!122 thiss!938))) (_size!159 (v!1627 (underlying!122 thiss!938)))) lt!10282 (dynLambda!146 (defaultEntry!1769 (v!1627 (underlying!122 thiss!938))) #b0000000000000000000000000000000000000000000000000000000000000000) (dynLambda!146 (defaultEntry!1769 (v!1627 (underlying!122 thiss!938))) #b0000000000000000000000000000000000000000000000000000000000000000) (_1!494 lt!10278) (defaultEntry!1769 (v!1627 (underlying!122 thiss!938)))))))

(declare-fun c!3648 () Bool)

(assert (=> b!25745 (= c!3648 (and (not (= (_1!494 lt!10278) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (_1!494 lt!10278) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!25745 e!16633))

(declare-fun lt!10275 () Unit!608)

(assert (=> b!25745 (= lt!10275 lt!10280)))

(declare-fun lt!10279 () (_ BitVec 32))

(declare-fun arrayScanForKey!0 (array!1305 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!25745 (= lt!10279 (arrayScanForKey!0 (array!1306 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) (bvadd (computeNewMask!30 thiss!938 (mask!4771 (v!1627 (underlying!122 thiss!938))) (_vacant!159 (v!1627 (underlying!122 thiss!938))) (_size!159 (v!1627 (underlying!122 thiss!938)))) #b00000000000000000000000000000001)) (_1!494 lt!10278) #b00000000000000000000000000000000))))

(assert (=> b!25745 false))

(declare-fun b!25746 () Bool)

(declare-fun res!15349 () Bool)

(assert (=> b!25746 (=> (not res!15349) (not e!16632))))

(assert (=> b!25746 (= res!15349 (= (mask!4771 lt!10271) (computeNewMask!30 thiss!938 (mask!4771 (v!1627 (underlying!122 thiss!938))) (_vacant!159 (v!1627 (underlying!122 thiss!938))) (_size!159 (v!1627 (underlying!122 thiss!938))))))))

(declare-fun b!25747 () Bool)

(assert (=> b!25747 (= e!16632 (= (map!418 lt!10271) (ListLongMap!558 Nil!566)))))

(assert (= (and d!4821 c!3649) b!25745))

(assert (= (and d!4821 (not c!3649)) b!25742))

(assert (= (and b!25745 c!3648) b!25744))

(assert (= (and b!25745 (not c!3648)) b!25743))

(assert (= (and d!4821 res!15350) b!25746))

(assert (= (and b!25746 res!15349) b!25747))

(declare-fun b_lambda!1677 () Bool)

(assert (=> (not b_lambda!1677) (not d!4821)))

(assert (=> d!4821 t!3259))

(declare-fun b_and!1577 () Bool)

(assert (= b_and!1575 (and (=> t!3259 result!1119) b_and!1577)))

(declare-fun b_lambda!1679 () Bool)

(assert (=> (not b_lambda!1679) (not b!25745)))

(assert (=> b!25745 t!3259))

(declare-fun b_and!1579 () Bool)

(assert (= b_and!1577 (and (=> t!3259 result!1119) b_and!1579)))

(assert (=> d!4821 m!20545))

(declare-fun m!20769 () Bool)

(assert (=> d!4821 m!20769))

(declare-fun m!20771 () Bool)

(assert (=> d!4821 m!20771))

(declare-fun m!20773 () Bool)

(assert (=> d!4821 m!20773))

(assert (=> d!4821 m!20697))

(declare-fun m!20775 () Bool)

(assert (=> d!4821 m!20775))

(declare-fun m!20777 () Bool)

(assert (=> d!4821 m!20777))

(assert (=> d!4821 m!20545))

(declare-fun m!20779 () Bool)

(assert (=> d!4821 m!20779))

(assert (=> d!4821 m!20545))

(declare-fun m!20781 () Bool)

(assert (=> d!4821 m!20781))

(declare-fun m!20783 () Bool)

(assert (=> d!4821 m!20783))

(declare-fun m!20785 () Bool)

(assert (=> d!4821 m!20785))

(declare-fun m!20787 () Bool)

(assert (=> b!25744 m!20787))

(assert (=> b!25745 m!20773))

(assert (=> b!25745 m!20697))

(assert (=> b!25745 m!20545))

(assert (=> b!25745 m!20697))

(assert (=> b!25745 m!20697))

(declare-fun m!20789 () Bool)

(assert (=> b!25745 m!20789))

(declare-fun m!20791 () Bool)

(assert (=> b!25745 m!20791))

(declare-fun m!20793 () Bool)

(assert (=> b!25745 m!20793))

(declare-fun m!20795 () Bool)

(assert (=> b!25747 m!20795))

(assert (=> b!25461 d!4821))

(declare-fun d!4823 () Bool)

(declare-fun e!16639 () Bool)

(assert (=> d!4823 e!16639))

(declare-fun res!15353 () Bool)

(assert (=> d!4823 (=> (not res!15353) (not e!16639))))

(declare-fun lt!10288 () (_ BitVec 32))

(assert (=> d!4823 (= res!15353 (validMask!0 lt!10288))))

(declare-datatypes ((tuple2!978 0))(
  ( (tuple2!979 (_1!499 Unit!608) (_2!499 (_ BitVec 32))) )
))
(declare-fun e!16640 () tuple2!978)

(assert (=> d!4823 (= lt!10288 (_2!499 e!16640))))

(declare-fun c!3652 () Bool)

(declare-fun lt!10289 () tuple2!978)

(assert (=> d!4823 (= c!3652 (and (bvsgt (_2!499 lt!10289) #b00000000000000000000000000001000) (bvslt (bvmul #b00000000000000000000000000001000 (_size!159 (v!1627 (underlying!122 thiss!938)))) (_2!499 lt!10289)) (bvsge (bvadd (bvand (bvashr (_2!499 lt!10289) #b00000000000000000000000000000001) #b00111111111111111111111111111111) #b00000000000000000000000000000001) (_size!159 (v!1627 (underlying!122 thiss!938))))))))

(declare-fun Unit!618 () Unit!608)

(declare-fun Unit!619 () Unit!608)

(assert (=> d!4823 (= lt!10289 (ite (and (bvsge (bvmul #b00000000000000000000000000000010 (bvadd (_size!159 (v!1627 (underlying!122 thiss!938))) (_vacant!159 (v!1627 (underlying!122 thiss!938))))) (mask!4771 (v!1627 (underlying!122 thiss!938)))) (bvsle (bvmul #b00000000000000000000000000000101 (_vacant!159 (v!1627 (underlying!122 thiss!938)))) (mask!4771 (v!1627 (underlying!122 thiss!938))))) (tuple2!979 Unit!618 (bvand (bvadd (bvshl (mask!4771 (v!1627 (underlying!122 thiss!938))) #b00000000000000000000000000000001) #b00000000000000000000000000000001) #b00111111111111111111111111111111)) (tuple2!979 Unit!619 (mask!4771 (v!1627 (underlying!122 thiss!938))))))))

(assert (=> d!4823 (validMask!0 (mask!4771 (v!1627 (underlying!122 thiss!938))))))

(assert (=> d!4823 (= (computeNewMask!30 thiss!938 (mask!4771 (v!1627 (underlying!122 thiss!938))) (_vacant!159 (v!1627 (underlying!122 thiss!938))) (_size!159 (v!1627 (underlying!122 thiss!938)))) lt!10288)))

(declare-fun b!25754 () Bool)

(declare-fun computeNewMaskWhile!16 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) tuple2!978)

(assert (=> b!25754 (= e!16640 (computeNewMaskWhile!16 (_size!159 (v!1627 (underlying!122 thiss!938))) (_vacant!159 (v!1627 (underlying!122 thiss!938))) (mask!4771 (v!1627 (underlying!122 thiss!938))) (_2!499 lt!10289)))))

(declare-fun b!25755 () Bool)

(declare-fun Unit!620 () Unit!608)

(assert (=> b!25755 (= e!16640 (tuple2!979 Unit!620 (_2!499 lt!10289)))))

(declare-fun b!25756 () Bool)

(assert (=> b!25756 (= e!16639 (bvsle (_size!159 (v!1627 (underlying!122 thiss!938))) (bvadd lt!10288 #b00000000000000000000000000000001)))))

(assert (= (and d!4823 c!3652) b!25754))

(assert (= (and d!4823 (not c!3652)) b!25755))

(assert (= (and d!4823 res!15353) b!25756))

(declare-fun m!20797 () Bool)

(assert (=> d!4823 m!20797))

(declare-fun m!20799 () Bool)

(assert (=> d!4823 m!20799))

(declare-fun m!20801 () Bool)

(assert (=> b!25754 m!20801))

(assert (=> b!25461 d!4823))

(declare-fun mapIsEmpty!1057 () Bool)

(declare-fun mapRes!1057 () Bool)

(assert (=> mapIsEmpty!1057 mapRes!1057))

(declare-fun condMapEmpty!1057 () Bool)

(declare-fun mapDefault!1057 () ValueCell!318)

(assert (=> mapNonEmpty!1051 (= condMapEmpty!1057 (= mapRest!1051 ((as const (Array (_ BitVec 32) ValueCell!318)) mapDefault!1057)))))

(declare-fun e!16645 () Bool)

(assert (=> mapNonEmpty!1051 (= tp!3568 (and e!16645 mapRes!1057))))

(declare-fun b!25763 () Bool)

(declare-fun e!16646 () Bool)

(assert (=> b!25763 (= e!16646 tp_is_empty!1035)))

(declare-fun mapNonEmpty!1057 () Bool)

(declare-fun tp!3577 () Bool)

(assert (=> mapNonEmpty!1057 (= mapRes!1057 (and tp!3577 e!16646))))

(declare-fun mapKey!1057 () (_ BitVec 32))

(declare-fun mapRest!1057 () (Array (_ BitVec 32) ValueCell!318))

(declare-fun mapValue!1057 () ValueCell!318)

(assert (=> mapNonEmpty!1057 (= mapRest!1051 (store mapRest!1057 mapKey!1057 mapValue!1057))))

(declare-fun b!25764 () Bool)

(assert (=> b!25764 (= e!16645 tp_is_empty!1035)))

(assert (= (and mapNonEmpty!1051 condMapEmpty!1057) mapIsEmpty!1057))

(assert (= (and mapNonEmpty!1051 (not condMapEmpty!1057)) mapNonEmpty!1057))

(assert (= (and mapNonEmpty!1057 ((_ is ValueCellFull!318) mapValue!1057)) b!25763))

(assert (= (and mapNonEmpty!1051 ((_ is ValueCellFull!318) mapDefault!1057)) b!25764))

(declare-fun m!20803 () Bool)

(assert (=> mapNonEmpty!1057 m!20803))

(declare-fun b_lambda!1681 () Bool)

(assert (= b_lambda!1679 (or (and b!25454 b_free!771) b_lambda!1681)))

(declare-fun b_lambda!1683 () Bool)

(assert (= b_lambda!1675 (or (and b!25454 b_free!771) b_lambda!1683)))

(declare-fun b_lambda!1685 () Bool)

(assert (= b_lambda!1677 (or (and b!25454 b_free!771) b_lambda!1685)))

(check-sat (not b!25700) (not b_next!771) (not bm!2456) (not b!25609) (not bm!2462) (not bm!2416) (not bm!2402) (not b!25711) (not b!25634) (not bm!2481) (not bm!2459) (not b!25616) (not b!25702) (not bm!2414) (not b!25682) (not b!25754) (not b!25614) (not b!25674) (not d!4819) (not b!25624) (not d!4809) (not d!4817) (not b!25681) (not b_lambda!1685) (not bm!2404) (not b!25618) (not mapNonEmpty!1057) (not bm!2406) (not b!25724) (not bm!2461) (not b!25744) (not bm!2421) (not d!4815) (not bm!2467) (not bm!2451) (not bm!2423) (not b_lambda!1681) (not bm!2455) (not bm!2420) (not b!25720) (not b!25673) (not bm!2483) (not d!4813) (not bm!2485) b_and!1579 (not bm!2454) (not b!25638) (not bm!2422) (not bm!2450) (not bm!2418) (not bm!2460) (not bm!2465) (not b!25745) (not bm!2469) (not bm!2486) (not b!25675) (not d!4811) tp_is_empty!1035 (not bm!2477) (not b!25695) (not bm!2473) (not bm!2417) (not d!4821) (not bm!2453) (not bm!2480) (not b!25704) (not bm!2410) (not bm!2479) (not bm!2452) (not b_lambda!1683) (not b!25710) (not bm!2458) (not bm!2484) (not b!25747) (not d!4823) (not bm!2457) (not b!25625))
(check-sat b_and!1579 (not b_next!771))

; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!3112 () Bool)

(assert start!3112)

(declare-fun b!18980 () Bool)

(declare-fun b_free!657 () Bool)

(declare-fun b_next!657 () Bool)

(assert (=> b!18980 (= b_free!657 (not b_next!657))))

(declare-fun tp!3165 () Bool)

(declare-fun b_and!1319 () Bool)

(assert (=> b!18980 (= tp!3165 b_and!1319)))

(declare-fun b!18974 () Bool)

(declare-fun e!12171 () Bool)

(declare-fun tp_is_empty!921 () Bool)

(assert (=> b!18974 (= e!12171 tp_is_empty!921)))

(declare-fun b!18975 () Bool)

(declare-datatypes ((V!1053 0))(
  ( (V!1054 (val!487 Int)) )
))
(declare-datatypes ((ValueCell!261 0))(
  ( (ValueCellFull!261 (v!1487 V!1053)) (EmptyCell!261) )
))
(declare-datatypes ((array!1041 0))(
  ( (array!1042 (arr!501 (Array (_ BitVec 32) ValueCell!261)) (size!591 (_ BitVec 32))) )
))
(declare-datatypes ((array!1043 0))(
  ( (array!1044 (arr!502 (Array (_ BitVec 32) (_ BitVec 64))) (size!592 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!108 0))(
  ( (LongMapFixedSize!109 (defaultEntry!1673 Int) (mask!4610 (_ BitVec 32)) (extraKeys!1583 (_ BitVec 32)) (zeroValue!1607 V!1053) (minValue!1607 V!1053) (_size!87 (_ BitVec 32)) (_keys!3098 array!1043) (_values!1669 array!1041) (_vacant!87 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!108 0))(
  ( (Cell!109 (v!1488 LongMapFixedSize!108)) )
))
(declare-datatypes ((LongMap!108 0))(
  ( (LongMap!109 (underlying!65 Cell!108)) )
))
(declare-datatypes ((tuple2!792 0))(
  ( (tuple2!793 (_1!398 Bool) (_2!398 LongMap!108)) )
))
(declare-fun e!12161 () tuple2!792)

(declare-fun thiss!848 () LongMap!108)

(assert (=> b!18975 (= e!12161 (tuple2!793 true thiss!848))))

(declare-fun b!18976 () Bool)

(declare-fun e!12167 () Bool)

(declare-fun lt!5357 () tuple2!792)

(declare-datatypes ((tuple2!794 0))(
  ( (tuple2!795 (_1!399 (_ BitVec 64)) (_2!399 V!1053)) )
))
(declare-datatypes ((List!538 0))(
  ( (Nil!535) (Cons!534 (h!1100 tuple2!794) (t!3183 List!538)) )
))
(declare-datatypes ((ListLongMap!525 0))(
  ( (ListLongMap!526 (toList!278 List!538)) )
))
(declare-fun map!361 (LongMap!108) ListLongMap!525)

(assert (=> b!18976 (= e!12167 (not (= (map!361 (_2!398 lt!5357)) (map!361 thiss!848))))))

(declare-fun b!18977 () Bool)

(declare-fun e!12168 () Bool)

(declare-fun e!12166 () Bool)

(assert (=> b!18977 (= e!12168 e!12166)))

(declare-fun b!18978 () Bool)

(declare-fun e!12162 () Bool)

(assert (=> b!18978 (= e!12162 tp_is_empty!921)))

(declare-fun b!18979 () Bool)

(declare-fun e!12164 () Bool)

(assert (=> b!18979 (= e!12164 e!12167)))

(declare-fun res!13040 () Bool)

(assert (=> b!18979 (=> res!13040 e!12167)))

(declare-fun valid!55 (LongMap!108) Bool)

(assert (=> b!18979 (= res!13040 (not (valid!55 (_2!398 lt!5357))))))

(declare-fun e!12170 () Bool)

(declare-fun array_inv!355 (array!1043) Bool)

(declare-fun array_inv!356 (array!1041) Bool)

(assert (=> b!18980 (= e!12166 (and tp!3165 tp_is_empty!921 (array_inv!355 (_keys!3098 (v!1488 (underlying!65 thiss!848)))) (array_inv!356 (_values!1669 (v!1488 (underlying!65 thiss!848)))) e!12170))))

(declare-fun b!18981 () Bool)

(declare-fun e!12163 () Bool)

(assert (=> b!18981 (= e!12163 e!12164)))

(declare-fun res!13041 () Bool)

(assert (=> b!18981 (=> (not res!13041) (not e!12164))))

(assert (=> b!18981 (= res!13041 (not (_1!398 lt!5357)))))

(assert (=> b!18981 (= lt!5357 e!12161)))

(declare-fun c!2034 () Bool)

(declare-fun imbalanced!29 (LongMap!108) Bool)

(assert (=> b!18981 (= c!2034 (imbalanced!29 thiss!848))))

(declare-fun b!18982 () Bool)

(declare-fun e!12165 () Bool)

(assert (=> b!18982 (= e!12165 e!12168)))

(declare-fun b!18983 () Bool)

(declare-fun mapRes!820 () Bool)

(assert (=> b!18983 (= e!12170 (and e!12171 mapRes!820))))

(declare-fun condMapEmpty!820 () Bool)

(declare-fun mapDefault!820 () ValueCell!261)

(assert (=> b!18983 (= condMapEmpty!820 (= (arr!501 (_values!1669 (v!1488 (underlying!65 thiss!848)))) ((as const (Array (_ BitVec 32) ValueCell!261)) mapDefault!820)))))

(declare-fun res!13039 () Bool)

(assert (=> start!3112 (=> (not res!13039) (not e!12163))))

(assert (=> start!3112 (= res!13039 (valid!55 thiss!848))))

(assert (=> start!3112 e!12163))

(assert (=> start!3112 e!12165))

(declare-fun mapIsEmpty!820 () Bool)

(assert (=> mapIsEmpty!820 mapRes!820))

(declare-fun mapNonEmpty!820 () Bool)

(declare-fun tp!3166 () Bool)

(assert (=> mapNonEmpty!820 (= mapRes!820 (and tp!3166 e!12162))))

(declare-fun mapKey!820 () (_ BitVec 32))

(declare-fun mapRest!820 () (Array (_ BitVec 32) ValueCell!261))

(declare-fun mapValue!820 () ValueCell!261)

(assert (=> mapNonEmpty!820 (= (arr!501 (_values!1669 (v!1488 (underlying!65 thiss!848)))) (store mapRest!820 mapKey!820 mapValue!820))))

(declare-fun b!18984 () Bool)

(declare-fun repack!26 (LongMap!108) tuple2!792)

(assert (=> b!18984 (= e!12161 (repack!26 thiss!848))))

(assert (= (and start!3112 res!13039) b!18981))

(assert (= (and b!18981 c!2034) b!18984))

(assert (= (and b!18981 (not c!2034)) b!18975))

(assert (= (and b!18981 res!13041) b!18979))

(assert (= (and b!18979 (not res!13040)) b!18976))

(assert (= (and b!18983 condMapEmpty!820) mapIsEmpty!820))

(assert (= (and b!18983 (not condMapEmpty!820)) mapNonEmpty!820))

(get-info :version)

(assert (= (and mapNonEmpty!820 ((_ is ValueCellFull!261) mapValue!820)) b!18978))

(assert (= (and b!18983 ((_ is ValueCellFull!261) mapDefault!820)) b!18974))

(assert (= b!18980 b!18983))

(assert (= b!18977 b!18980))

(assert (= b!18982 b!18977))

(assert (= start!3112 b!18982))

(declare-fun m!13455 () Bool)

(assert (=> b!18981 m!13455))

(declare-fun m!13457 () Bool)

(assert (=> b!18976 m!13457))

(declare-fun m!13459 () Bool)

(assert (=> b!18976 m!13459))

(declare-fun m!13461 () Bool)

(assert (=> b!18984 m!13461))

(declare-fun m!13463 () Bool)

(assert (=> b!18980 m!13463))

(declare-fun m!13465 () Bool)

(assert (=> b!18980 m!13465))

(declare-fun m!13467 () Bool)

(assert (=> mapNonEmpty!820 m!13467))

(declare-fun m!13469 () Bool)

(assert (=> start!3112 m!13469))

(declare-fun m!13471 () Bool)

(assert (=> b!18979 m!13471))

(check-sat (not b_next!657) b_and!1319 (not b!18984) (not b!18980) (not mapNonEmpty!820) (not b!18981) (not b!18976) tp_is_empty!921 (not b!18979) (not start!3112))
(check-sat b_and!1319 (not b_next!657))
(get-model)

(declare-fun d!3531 () Bool)

(declare-fun valid!57 (LongMapFixedSize!108) Bool)

(assert (=> d!3531 (= (valid!55 thiss!848) (valid!57 (v!1488 (underlying!65 thiss!848))))))

(declare-fun bs!854 () Bool)

(assert (= bs!854 d!3531))

(declare-fun m!13491 () Bool)

(assert (=> bs!854 m!13491))

(assert (=> start!3112 d!3531))

(declare-fun d!3533 () Bool)

(assert (=> d!3533 (= (valid!55 (_2!398 lt!5357)) (valid!57 (v!1488 (underlying!65 (_2!398 lt!5357)))))))

(declare-fun bs!855 () Bool)

(assert (= bs!855 d!3533))

(declare-fun m!13493 () Bool)

(assert (=> bs!855 m!13493))

(assert (=> b!18979 d!3533))

(declare-fun d!3535 () Bool)

(assert (=> d!3535 (= (imbalanced!29 thiss!848) (or (bvsgt (bvmul #b00000000000000000000000000000010 (bvadd (_size!87 (v!1488 (underlying!65 thiss!848))) (_vacant!87 (v!1488 (underlying!65 thiss!848))))) (mask!4610 (v!1488 (underlying!65 thiss!848)))) (bvsgt (_vacant!87 (v!1488 (underlying!65 thiss!848))) (_size!87 (v!1488 (underlying!65 thiss!848))))))))

(assert (=> b!18981 d!3535))

(declare-fun d!3537 () Bool)

(declare-fun map!363 (LongMapFixedSize!108) ListLongMap!525)

(assert (=> d!3537 (= (map!361 (_2!398 lt!5357)) (map!363 (v!1488 (underlying!65 (_2!398 lt!5357)))))))

(declare-fun bs!856 () Bool)

(assert (= bs!856 d!3537))

(declare-fun m!13495 () Bool)

(assert (=> bs!856 m!13495))

(assert (=> b!18976 d!3537))

(declare-fun d!3539 () Bool)

(assert (=> d!3539 (= (map!361 thiss!848) (map!363 (v!1488 (underlying!65 thiss!848))))))

(declare-fun bs!857 () Bool)

(assert (= bs!857 d!3539))

(declare-fun m!13497 () Bool)

(assert (=> bs!857 m!13497))

(assert (=> b!18976 d!3539))

(declare-fun b!19036 () Bool)

(declare-datatypes ((tuple2!800 0))(
  ( (tuple2!801 (_1!402 Bool) (_2!402 Cell!108)) )
))
(declare-fun e!12215 () tuple2!800)

(declare-datatypes ((tuple2!802 0))(
  ( (tuple2!803 (_1!403 Bool) (_2!403 LongMapFixedSize!108)) )
))
(declare-fun lt!5383 () tuple2!802)

(assert (=> b!19036 (= e!12215 (tuple2!801 (_1!403 lt!5383) (Cell!109 (_2!403 lt!5383))))))

(declare-fun call!877 () tuple2!802)

(assert (=> b!19036 (= lt!5383 call!877)))

(declare-fun lt!5382 () tuple2!802)

(declare-fun call!876 () tuple2!802)

(declare-fun c!2049 () Bool)

(declare-fun call!875 () LongMapFixedSize!108)

(declare-fun bm!871 () Bool)

(declare-fun c!2048 () Bool)

(declare-fun update!13 (LongMapFixedSize!108 (_ BitVec 64) V!1053) tuple2!802)

(assert (=> bm!871 (= call!876 (update!13 (ite c!2049 (_2!403 lt!5382) call!875) (ite c!2049 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!2048 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000)) (ite c!2049 (minValue!1607 (v!1488 (underlying!65 thiss!848))) (ite c!2048 (zeroValue!1607 (v!1488 (underlying!65 thiss!848))) (minValue!1607 (v!1488 (underlying!65 thiss!848)))))))))

(declare-fun b!19037 () Bool)

(declare-fun e!12217 () tuple2!800)

(declare-fun e!12218 () tuple2!800)

(assert (=> b!19037 (= e!12217 e!12218)))

(assert (=> b!19037 (= c!2048 (and (not (= (bvand (extraKeys!1583 (v!1488 (underlying!65 thiss!848))) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand (extraKeys!1583 (v!1488 (underlying!65 thiss!848))) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!19038 () Bool)

(declare-fun e!12219 () Bool)

(declare-fun lt!5388 () tuple2!792)

(assert (=> b!19038 (= e!12219 (= (map!361 (_2!398 lt!5388)) (map!361 thiss!848)))))

(declare-fun b!19039 () Bool)

(declare-fun lt!5381 () Cell!108)

(assert (=> b!19039 (= e!12215 (tuple2!801 true lt!5381))))

(declare-fun b!19040 () Bool)

(declare-datatypes ((tuple3!4 0))(
  ( (tuple3!5 (_1!404 Bool) (_2!404 Cell!108) (_3!2 LongMap!108)) )
))
(declare-fun e!12216 () tuple3!4)

(declare-fun lt!5390 () tuple2!800)

(assert (=> b!19040 (= e!12216 (tuple3!5 false (_2!402 lt!5390) thiss!848))))

(declare-fun bm!873 () Bool)

(declare-fun call!874 () LongMapFixedSize!108)

(declare-fun lt!5385 () (_ BitVec 32))

(declare-fun getNewLongMapFixedSize!9 ((_ BitVec 32) Int) LongMapFixedSize!108)

(assert (=> bm!873 (= call!874 (getNewLongMapFixedSize!9 lt!5385 (defaultEntry!1673 (v!1488 (underlying!65 thiss!848)))))))

(declare-fun b!19041 () Bool)

(declare-fun lt!5386 () tuple2!802)

(assert (=> b!19041 (= e!12216 (ite (_1!403 lt!5386) (tuple3!5 true (underlying!65 thiss!848) (LongMap!109 (Cell!109 (_2!403 lt!5386)))) (tuple3!5 false (Cell!109 (_2!403 lt!5386)) thiss!848)))))

(declare-fun repackFrom!3 (LongMap!108 LongMapFixedSize!108 (_ BitVec 32)) tuple2!802)

(assert (=> b!19041 (= lt!5386 (repackFrom!3 thiss!848 (v!1488 (_2!402 lt!5390)) (bvsub (size!592 (_keys!3098 (v!1488 (underlying!65 thiss!848)))) #b00000000000000000000000000000001)))))

(declare-fun b!19042 () Bool)

(declare-fun lt!5389 () tuple2!802)

(assert (=> b!19042 (= lt!5389 call!877)))

(assert (=> b!19042 (= e!12218 (tuple2!801 (_1!403 lt!5389) (Cell!109 (_2!403 lt!5389))))))

(declare-fun b!19043 () Bool)

(declare-fun c!2047 () Bool)

(assert (=> b!19043 (= c!2047 (and (not (= (bvand (extraKeys!1583 (v!1488 (underlying!65 thiss!848))) #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand (extraKeys!1583 (v!1488 (underlying!65 thiss!848))) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!19043 (= e!12218 e!12215)))

(declare-fun bm!874 () Bool)

(assert (=> bm!874 (= call!877 call!876)))

(declare-fun b!19044 () Bool)

(declare-fun lt!5387 () tuple2!802)

(assert (=> b!19044 (= e!12217 (tuple2!801 (and (_1!403 lt!5382) (_1!403 lt!5387)) (Cell!109 (_2!403 lt!5387))))))

(assert (=> b!19044 (= lt!5382 (update!13 call!874 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!1607 (v!1488 (underlying!65 thiss!848)))))))

(assert (=> b!19044 (= lt!5387 call!876)))

(declare-fun d!3541 () Bool)

(assert (=> d!3541 e!12219))

(declare-fun res!13053 () Bool)

(assert (=> d!3541 (=> res!13053 e!12219)))

(assert (=> d!3541 (= res!13053 (= (_1!398 lt!5388) false))))

(declare-fun lt!5384 () tuple3!4)

(assert (=> d!3541 (= lt!5388 (tuple2!793 (_1!404 lt!5384) (_3!2 lt!5384)))))

(assert (=> d!3541 (= lt!5384 e!12216)))

(declare-fun c!2046 () Bool)

(assert (=> d!3541 (= c!2046 (not (_1!402 lt!5390)))))

(assert (=> d!3541 (= lt!5390 e!12217)))

(assert (=> d!3541 (= c!2049 (and (not (= (bvand (extraKeys!1583 (v!1488 (underlying!65 thiss!848))) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (extraKeys!1583 (v!1488 (underlying!65 thiss!848))) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!3541 (= lt!5381 (Cell!109 (getNewLongMapFixedSize!9 lt!5385 (defaultEntry!1673 (v!1488 (underlying!65 thiss!848))))))))

(declare-fun computeNewMask!3 (LongMap!108 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!3541 (= lt!5385 (computeNewMask!3 thiss!848 (mask!4610 (v!1488 (underlying!65 thiss!848))) (_vacant!87 (v!1488 (underlying!65 thiss!848))) (_size!87 (v!1488 (underlying!65 thiss!848)))))))

(assert (=> d!3541 (valid!55 thiss!848)))

(assert (=> d!3541 (= (repack!26 thiss!848) lt!5388)))

(declare-fun bm!872 () Bool)

(assert (=> bm!872 (= call!875 call!874)))

(assert (= (and d!3541 c!2049) b!19044))

(assert (= (and d!3541 (not c!2049)) b!19037))

(assert (= (and b!19037 c!2048) b!19042))

(assert (= (and b!19037 (not c!2048)) b!19043))

(assert (= (and b!19043 c!2047) b!19036))

(assert (= (and b!19043 (not c!2047)) b!19039))

(assert (= (or b!19042 b!19036) bm!872))

(assert (= (or b!19042 b!19036) bm!874))

(assert (= (or b!19044 bm!874) bm!871))

(assert (= (or b!19044 bm!872) bm!873))

(assert (= (and d!3541 c!2046) b!19040))

(assert (= (and d!3541 (not c!2046)) b!19041))

(assert (= (and d!3541 (not res!13053)) b!19038))

(declare-fun m!13499 () Bool)

(assert (=> b!19038 m!13499))

(assert (=> b!19038 m!13459))

(declare-fun m!13501 () Bool)

(assert (=> b!19044 m!13501))

(declare-fun m!13503 () Bool)

(assert (=> d!3541 m!13503))

(declare-fun m!13505 () Bool)

(assert (=> d!3541 m!13505))

(assert (=> d!3541 m!13469))

(declare-fun m!13507 () Bool)

(assert (=> bm!871 m!13507))

(declare-fun m!13509 () Bool)

(assert (=> b!19041 m!13509))

(assert (=> bm!873 m!13503))

(assert (=> b!18984 d!3541))

(declare-fun d!3543 () Bool)

(assert (=> d!3543 (= (array_inv!355 (_keys!3098 (v!1488 (underlying!65 thiss!848)))) (bvsge (size!592 (_keys!3098 (v!1488 (underlying!65 thiss!848)))) #b00000000000000000000000000000000))))

(assert (=> b!18980 d!3543))

(declare-fun d!3545 () Bool)

(assert (=> d!3545 (= (array_inv!356 (_values!1669 (v!1488 (underlying!65 thiss!848)))) (bvsge (size!591 (_values!1669 (v!1488 (underlying!65 thiss!848)))) #b00000000000000000000000000000000))))

(assert (=> b!18980 d!3545))

(declare-fun mapIsEmpty!826 () Bool)

(declare-fun mapRes!826 () Bool)

(assert (=> mapIsEmpty!826 mapRes!826))

(declare-fun condMapEmpty!826 () Bool)

(declare-fun mapDefault!826 () ValueCell!261)

(assert (=> mapNonEmpty!820 (= condMapEmpty!826 (= mapRest!820 ((as const (Array (_ BitVec 32) ValueCell!261)) mapDefault!826)))))

(declare-fun e!12225 () Bool)

(assert (=> mapNonEmpty!820 (= tp!3166 (and e!12225 mapRes!826))))

(declare-fun mapNonEmpty!826 () Bool)

(declare-fun tp!3175 () Bool)

(declare-fun e!12224 () Bool)

(assert (=> mapNonEmpty!826 (= mapRes!826 (and tp!3175 e!12224))))

(declare-fun mapKey!826 () (_ BitVec 32))

(declare-fun mapRest!826 () (Array (_ BitVec 32) ValueCell!261))

(declare-fun mapValue!826 () ValueCell!261)

(assert (=> mapNonEmpty!826 (= mapRest!820 (store mapRest!826 mapKey!826 mapValue!826))))

(declare-fun b!19052 () Bool)

(assert (=> b!19052 (= e!12225 tp_is_empty!921)))

(declare-fun b!19051 () Bool)

(assert (=> b!19051 (= e!12224 tp_is_empty!921)))

(assert (= (and mapNonEmpty!820 condMapEmpty!826) mapIsEmpty!826))

(assert (= (and mapNonEmpty!820 (not condMapEmpty!826)) mapNonEmpty!826))

(assert (= (and mapNonEmpty!826 ((_ is ValueCellFull!261) mapValue!826)) b!19051))

(assert (= (and mapNonEmpty!820 ((_ is ValueCellFull!261) mapDefault!826)) b!19052))

(declare-fun m!13511 () Bool)

(assert (=> mapNonEmpty!826 m!13511))

(check-sat tp_is_empty!921 (not d!3537) (not d!3531) b_and!1319 (not b!19038) (not d!3533) (not b_next!657) (not d!3539) (not mapNonEmpty!826) (not b!19041) (not bm!871) (not b!19044) (not bm!873) (not d!3541))
(check-sat b_and!1319 (not b_next!657))

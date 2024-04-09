; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!12054 () Bool)

(assert start!12054)

(declare-fun b!101587 () Bool)

(declare-fun b_free!2465 () Bool)

(declare-fun b_next!2465 () Bool)

(assert (=> b!101587 (= b_free!2465 (not b_next!2465))))

(declare-fun tp!9700 () Bool)

(declare-fun b_and!6261 () Bool)

(assert (=> b!101587 (= tp!9700 b_and!6261)))

(declare-fun b!101570 () Bool)

(declare-fun b_free!2467 () Bool)

(declare-fun b_next!2467 () Bool)

(assert (=> b!101570 (= b_free!2467 (not b_next!2467))))

(declare-fun tp!9699 () Bool)

(declare-fun b_and!6263 () Bool)

(assert (=> b!101570 (= tp!9699 b_and!6263)))

(declare-fun b!101567 () Bool)

(declare-datatypes ((Unit!3112 0))(
  ( (Unit!3113) )
))
(declare-fun e!66130 () Unit!3112)

(declare-fun Unit!3114 () Unit!3112)

(assert (=> b!101567 (= e!66130 Unit!3114)))

(declare-fun b!101568 () Bool)

(declare-fun e!66134 () Bool)

(declare-datatypes ((V!3179 0))(
  ( (V!3180 (val!1369 Int)) )
))
(declare-datatypes ((array!4282 0))(
  ( (array!4283 (arr!2032 (Array (_ BitVec 32) (_ BitVec 64))) (size!2285 (_ BitVec 32))) )
))
(declare-datatypes ((ValueCell!981 0))(
  ( (ValueCellFull!981 (v!2844 V!3179)) (EmptyCell!981) )
))
(declare-datatypes ((array!4284 0))(
  ( (array!4285 (arr!2033 (Array (_ BitVec 32) ValueCell!981)) (size!2286 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!870 0))(
  ( (LongMapFixedSize!871 (defaultEntry!2536 Int) (mask!6659 (_ BitVec 32)) (extraKeys!2347 (_ BitVec 32)) (zeroValue!2414 V!3179) (minValue!2414 V!3179) (_size!484 (_ BitVec 32)) (_keys!4236 array!4282) (_values!2519 array!4284) (_vacant!484 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!674 0))(
  ( (Cell!675 (v!2845 LongMapFixedSize!870)) )
))
(declare-datatypes ((LongMap!674 0))(
  ( (LongMap!675 (underlying!348 Cell!674)) )
))
(declare-fun thiss!992 () LongMap!674)

(declare-datatypes ((List!1620 0))(
  ( (Nil!1617) (Cons!1616 (h!2212 (_ BitVec 64)) (t!5642 List!1620)) )
))
(declare-fun arrayNoDuplicates!0 (array!4282 (_ BitVec 32) List!1620) Bool)

(assert (=> b!101568 (= e!66134 (not (arrayNoDuplicates!0 (_keys!4236 (v!2845 (underlying!348 thiss!992))) #b00000000000000000000000000000000 Nil!1617)))))

(declare-fun b!101569 () Bool)

(declare-fun e!66128 () Bool)

(declare-fun e!66139 () Bool)

(declare-fun mapRes!3822 () Bool)

(assert (=> b!101569 (= e!66128 (and e!66139 mapRes!3822))))

(declare-fun condMapEmpty!3821 () Bool)

(declare-fun mapDefault!3821 () ValueCell!981)

(assert (=> b!101569 (= condMapEmpty!3821 (= (arr!2033 (_values!2519 (v!2845 (underlying!348 thiss!992)))) ((as const (Array (_ BitVec 32) ValueCell!981)) mapDefault!3821)))))

(declare-fun tp_is_empty!2649 () Bool)

(declare-fun e!66136 () Bool)

(declare-fun newMap!16 () LongMapFixedSize!870)

(declare-fun e!66140 () Bool)

(declare-fun array_inv!1223 (array!4282) Bool)

(declare-fun array_inv!1224 (array!4284) Bool)

(assert (=> b!101570 (= e!66140 (and tp!9699 tp_is_empty!2649 (array_inv!1223 (_keys!4236 newMap!16)) (array_inv!1224 (_values!2519 newMap!16)) e!66136))))

(declare-fun mapNonEmpty!3821 () Bool)

(declare-fun tp!9701 () Bool)

(declare-fun e!66138 () Bool)

(assert (=> mapNonEmpty!3821 (= mapRes!3822 (and tp!9701 e!66138))))

(declare-fun mapRest!3822 () (Array (_ BitVec 32) ValueCell!981))

(declare-fun mapKey!3821 () (_ BitVec 32))

(declare-fun mapValue!3821 () ValueCell!981)

(assert (=> mapNonEmpty!3821 (= (arr!2033 (_values!2519 (v!2845 (underlying!348 thiss!992)))) (store mapRest!3822 mapKey!3821 mapValue!3821))))

(declare-fun b!101571 () Bool)

(declare-fun res!50873 () Bool)

(declare-fun e!66126 () Bool)

(assert (=> b!101571 (=> (not res!50873) (not e!66126))))

(declare-fun valid!393 (LongMapFixedSize!870) Bool)

(assert (=> b!101571 (= res!50873 (valid!393 newMap!16))))

(declare-fun b!101572 () Bool)

(declare-fun e!66132 () Bool)

(assert (=> b!101572 (= e!66132 e!66134)))

(declare-fun res!50869 () Bool)

(assert (=> b!101572 (=> (not res!50869) (not e!66134))))

(declare-datatypes ((tuple2!2374 0))(
  ( (tuple2!2375 (_1!1197 Bool) (_2!1197 LongMapFixedSize!870)) )
))
(declare-fun lt!51489 () tuple2!2374)

(declare-fun from!355 () (_ BitVec 32))

(assert (=> b!101572 (= res!50869 (and (_1!1197 lt!51489) (bvsle from!355 #b00000000000000000000000000000000)))))

(declare-fun lt!51490 () Unit!3112)

(assert (=> b!101572 (= lt!51490 e!66130)))

(declare-fun c!17484 () Bool)

(declare-datatypes ((tuple2!2376 0))(
  ( (tuple2!2377 (_1!1198 (_ BitVec 64)) (_2!1198 V!3179)) )
))
(declare-datatypes ((List!1621 0))(
  ( (Nil!1618) (Cons!1617 (h!2213 tuple2!2376) (t!5643 List!1621)) )
))
(declare-datatypes ((ListLongMap!1563 0))(
  ( (ListLongMap!1564 (toList!797 List!1621)) )
))
(declare-fun lt!51494 () ListLongMap!1563)

(declare-fun contains!816 (ListLongMap!1563 (_ BitVec 64)) Bool)

(assert (=> b!101572 (= c!17484 (contains!816 lt!51494 (select (arr!2032 (_keys!4236 (v!2845 (underlying!348 thiss!992)))) from!355)))))

(declare-fun update!151 (LongMapFixedSize!870 (_ BitVec 64) V!3179) tuple2!2374)

(declare-fun get!1316 (ValueCell!981 V!3179) V!3179)

(declare-fun dynLambda!383 (Int (_ BitVec 64)) V!3179)

(assert (=> b!101572 (= lt!51489 (update!151 newMap!16 (select (arr!2032 (_keys!4236 (v!2845 (underlying!348 thiss!992)))) from!355) (get!1316 (select (arr!2033 (_values!2519 (v!2845 (underlying!348 thiss!992)))) from!355) (dynLambda!383 (defaultEntry!2536 (v!2845 (underlying!348 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!101573 () Bool)

(declare-fun res!50871 () Bool)

(assert (=> b!101573 (=> (not res!50871) (not e!66126))))

(assert (=> b!101573 (= res!50871 (bvsge (bvadd #b00000000000000000000000000000001 (mask!6659 newMap!16)) (_size!484 (v!2845 (underlying!348 thiss!992)))))))

(declare-fun b!101574 () Bool)

(assert (=> b!101574 (= e!66126 e!66132)))

(declare-fun res!50868 () Bool)

(assert (=> b!101574 (=> (not res!50868) (not e!66132))))

(declare-fun lt!51488 () ListLongMap!1563)

(assert (=> b!101574 (= res!50868 (and (= lt!51488 lt!51494) (not (= (select (arr!2032 (_keys!4236 (v!2845 (underlying!348 thiss!992)))) from!355) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!2032 (_keys!4236 (v!2845 (underlying!348 thiss!992)))) from!355) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun map!1266 (LongMapFixedSize!870) ListLongMap!1563)

(assert (=> b!101574 (= lt!51494 (map!1266 newMap!16))))

(declare-fun getCurrentListMap!477 (array!4282 array!4284 (_ BitVec 32) (_ BitVec 32) V!3179 V!3179 (_ BitVec 32) Int) ListLongMap!1563)

(assert (=> b!101574 (= lt!51488 (getCurrentListMap!477 (_keys!4236 (v!2845 (underlying!348 thiss!992))) (_values!2519 (v!2845 (underlying!348 thiss!992))) (mask!6659 (v!2845 (underlying!348 thiss!992))) (extraKeys!2347 (v!2845 (underlying!348 thiss!992))) (zeroValue!2414 (v!2845 (underlying!348 thiss!992))) (minValue!2414 (v!2845 (underlying!348 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2536 (v!2845 (underlying!348 thiss!992)))))))

(declare-fun res!50866 () Bool)

(assert (=> start!12054 (=> (not res!50866) (not e!66126))))

(declare-fun valid!394 (LongMap!674) Bool)

(assert (=> start!12054 (= res!50866 (valid!394 thiss!992))))

(assert (=> start!12054 e!66126))

(declare-fun e!66137 () Bool)

(assert (=> start!12054 e!66137))

(assert (=> start!12054 true))

(assert (=> start!12054 e!66140))

(declare-fun mapIsEmpty!3821 () Bool)

(declare-fun mapRes!3821 () Bool)

(assert (=> mapIsEmpty!3821 mapRes!3821))

(declare-fun b!101575 () Bool)

(declare-fun e!66141 () Bool)

(declare-fun e!66133 () Bool)

(assert (=> b!101575 (= e!66141 e!66133)))

(declare-fun b!101576 () Bool)

(declare-fun e!66135 () Bool)

(assert (=> b!101576 (= e!66135 tp_is_empty!2649)))

(declare-fun b!101577 () Bool)

(declare-fun res!50867 () Bool)

(assert (=> b!101577 (=> (not res!50867) (not e!66134))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!101577 (= res!50867 (validMask!0 (mask!6659 (v!2845 (underlying!348 thiss!992)))))))

(declare-fun b!101578 () Bool)

(declare-fun res!50872 () Bool)

(assert (=> b!101578 (=> (not res!50872) (not e!66134))))

(assert (=> b!101578 (= res!50872 (and (= (size!2286 (_values!2519 (v!2845 (underlying!348 thiss!992)))) (bvadd #b00000000000000000000000000000001 (mask!6659 (v!2845 (underlying!348 thiss!992))))) (= (size!2285 (_keys!4236 (v!2845 (underlying!348 thiss!992)))) (size!2286 (_values!2519 (v!2845 (underlying!348 thiss!992))))) (bvsge (mask!6659 (v!2845 (underlying!348 thiss!992))) #b00000000000000000000000000000000) (bvsge (extraKeys!2347 (v!2845 (underlying!348 thiss!992))) #b00000000000000000000000000000000) (bvsle (extraKeys!2347 (v!2845 (underlying!348 thiss!992))) #b00000000000000000000000000000011)))))

(declare-fun b!101579 () Bool)

(assert (=> b!101579 (= e!66139 tp_is_empty!2649)))

(declare-fun b!101580 () Bool)

(declare-fun res!50870 () Bool)

(assert (=> b!101580 (=> (not res!50870) (not e!66126))))

(assert (=> b!101580 (= res!50870 (and (bvsge from!355 #b00000000000000000000000000000000) (bvslt from!355 (size!2285 (_keys!4236 (v!2845 (underlying!348 thiss!992)))))))))

(declare-fun mapNonEmpty!3822 () Bool)

(declare-fun tp!9702 () Bool)

(assert (=> mapNonEmpty!3822 (= mapRes!3821 (and tp!9702 e!66135))))

(declare-fun mapKey!3822 () (_ BitVec 32))

(declare-fun mapValue!3822 () ValueCell!981)

(declare-fun mapRest!3821 () (Array (_ BitVec 32) ValueCell!981))

(assert (=> mapNonEmpty!3822 (= (arr!2033 (_values!2519 newMap!16)) (store mapRest!3821 mapKey!3822 mapValue!3822))))

(declare-fun b!101581 () Bool)

(declare-fun e!66127 () Bool)

(assert (=> b!101581 (= e!66127 tp_is_empty!2649)))

(declare-fun b!101582 () Bool)

(declare-fun Unit!3115 () Unit!3112)

(assert (=> b!101582 (= e!66130 Unit!3115)))

(declare-fun lt!51493 () Unit!3112)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!101 (array!4282 array!4284 (_ BitVec 32) (_ BitVec 32) V!3179 V!3179 (_ BitVec 64) (_ BitVec 32) Int) Unit!3112)

(assert (=> b!101582 (= lt!51493 (lemmaListMapContainsThenArrayContainsFrom!101 (_keys!4236 (v!2845 (underlying!348 thiss!992))) (_values!2519 (v!2845 (underlying!348 thiss!992))) (mask!6659 (v!2845 (underlying!348 thiss!992))) (extraKeys!2347 (v!2845 (underlying!348 thiss!992))) (zeroValue!2414 (v!2845 (underlying!348 thiss!992))) (minValue!2414 (v!2845 (underlying!348 thiss!992))) (select (arr!2032 (_keys!4236 (v!2845 (underlying!348 thiss!992)))) from!355) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2536 (v!2845 (underlying!348 thiss!992)))))))

(declare-fun arrayContainsKey!0 (array!4282 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!101582 (arrayContainsKey!0 (_keys!4236 (v!2845 (underlying!348 thiss!992))) (select (arr!2032 (_keys!4236 (v!2845 (underlying!348 thiss!992)))) from!355) (bvadd #b00000000000000000000000000000001 from!355))))

(declare-fun lt!51491 () Unit!3112)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!4282 (_ BitVec 32) (_ BitVec 32)) Unit!3112)

(assert (=> b!101582 (= lt!51491 (lemmaNoDuplicateFromThenFromBigger!0 (_keys!4236 (v!2845 (underlying!348 thiss!992))) #b00000000000000000000000000000000 from!355))))

(assert (=> b!101582 (arrayNoDuplicates!0 (_keys!4236 (v!2845 (underlying!348 thiss!992))) from!355 Nil!1617)))

(declare-fun lt!51492 () Unit!3112)

(declare-fun lemmaArrayNoDuplicateFromNotContainsKeysInAcc!0 (array!4282 (_ BitVec 32) (_ BitVec 64) List!1620) Unit!3112)

(assert (=> b!101582 (= lt!51492 (lemmaArrayNoDuplicateFromNotContainsKeysInAcc!0 (_keys!4236 (v!2845 (underlying!348 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (select (arr!2032 (_keys!4236 (v!2845 (underlying!348 thiss!992)))) from!355) (Cons!1616 (select (arr!2032 (_keys!4236 (v!2845 (underlying!348 thiss!992)))) from!355) Nil!1617)))))

(assert (=> b!101582 false))

(declare-fun b!101583 () Bool)

(assert (=> b!101583 (= e!66137 e!66141)))

(declare-fun b!101584 () Bool)

(declare-fun res!50865 () Bool)

(assert (=> b!101584 (=> (not res!50865) (not e!66134))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!4282 (_ BitVec 32)) Bool)

(assert (=> b!101584 (= res!50865 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!4236 (v!2845 (underlying!348 thiss!992))) (mask!6659 (v!2845 (underlying!348 thiss!992)))))))

(declare-fun b!101585 () Bool)

(assert (=> b!101585 (= e!66136 (and e!66127 mapRes!3821))))

(declare-fun condMapEmpty!3822 () Bool)

(declare-fun mapDefault!3822 () ValueCell!981)

(assert (=> b!101585 (= condMapEmpty!3822 (= (arr!2033 (_values!2519 newMap!16)) ((as const (Array (_ BitVec 32) ValueCell!981)) mapDefault!3822)))))

(declare-fun b!101586 () Bool)

(assert (=> b!101586 (= e!66138 tp_is_empty!2649)))

(assert (=> b!101587 (= e!66133 (and tp!9700 tp_is_empty!2649 (array_inv!1223 (_keys!4236 (v!2845 (underlying!348 thiss!992)))) (array_inv!1224 (_values!2519 (v!2845 (underlying!348 thiss!992)))) e!66128))))

(declare-fun mapIsEmpty!3822 () Bool)

(assert (=> mapIsEmpty!3822 mapRes!3822))

(assert (= (and start!12054 res!50866) b!101580))

(assert (= (and b!101580 res!50870) b!101571))

(assert (= (and b!101571 res!50873) b!101573))

(assert (= (and b!101573 res!50871) b!101574))

(assert (= (and b!101574 res!50868) b!101572))

(assert (= (and b!101572 c!17484) b!101582))

(assert (= (and b!101572 (not c!17484)) b!101567))

(assert (= (and b!101572 res!50869) b!101577))

(assert (= (and b!101577 res!50867) b!101578))

(assert (= (and b!101578 res!50872) b!101584))

(assert (= (and b!101584 res!50865) b!101568))

(assert (= (and b!101569 condMapEmpty!3821) mapIsEmpty!3822))

(assert (= (and b!101569 (not condMapEmpty!3821)) mapNonEmpty!3821))

(get-info :version)

(assert (= (and mapNonEmpty!3821 ((_ is ValueCellFull!981) mapValue!3821)) b!101586))

(assert (= (and b!101569 ((_ is ValueCellFull!981) mapDefault!3821)) b!101579))

(assert (= b!101587 b!101569))

(assert (= b!101575 b!101587))

(assert (= b!101583 b!101575))

(assert (= start!12054 b!101583))

(assert (= (and b!101585 condMapEmpty!3822) mapIsEmpty!3821))

(assert (= (and b!101585 (not condMapEmpty!3822)) mapNonEmpty!3822))

(assert (= (and mapNonEmpty!3822 ((_ is ValueCellFull!981) mapValue!3822)) b!101576))

(assert (= (and b!101585 ((_ is ValueCellFull!981) mapDefault!3822)) b!101581))

(assert (= b!101570 b!101585))

(assert (= start!12054 b!101570))

(declare-fun b_lambda!4567 () Bool)

(assert (=> (not b_lambda!4567) (not b!101572)))

(declare-fun t!5639 () Bool)

(declare-fun tb!1989 () Bool)

(assert (=> (and b!101587 (= (defaultEntry!2536 (v!2845 (underlying!348 thiss!992))) (defaultEntry!2536 (v!2845 (underlying!348 thiss!992)))) t!5639) tb!1989))

(declare-fun result!3353 () Bool)

(assert (=> tb!1989 (= result!3353 tp_is_empty!2649)))

(assert (=> b!101572 t!5639))

(declare-fun b_and!6265 () Bool)

(assert (= b_and!6261 (and (=> t!5639 result!3353) b_and!6265)))

(declare-fun tb!1991 () Bool)

(declare-fun t!5641 () Bool)

(assert (=> (and b!101570 (= (defaultEntry!2536 newMap!16) (defaultEntry!2536 (v!2845 (underlying!348 thiss!992)))) t!5641) tb!1991))

(declare-fun result!3357 () Bool)

(assert (= result!3357 result!3353))

(assert (=> b!101572 t!5641))

(declare-fun b_and!6267 () Bool)

(assert (= b_and!6263 (and (=> t!5641 result!3357) b_and!6267)))

(declare-fun m!112537 () Bool)

(assert (=> mapNonEmpty!3822 m!112537))

(declare-fun m!112539 () Bool)

(assert (=> start!12054 m!112539))

(declare-fun m!112541 () Bool)

(assert (=> b!101572 m!112541))

(declare-fun m!112543 () Bool)

(assert (=> b!101572 m!112543))

(declare-fun m!112545 () Bool)

(assert (=> b!101572 m!112545))

(declare-fun m!112547 () Bool)

(assert (=> b!101572 m!112547))

(declare-fun m!112549 () Bool)

(assert (=> b!101572 m!112549))

(assert (=> b!101572 m!112547))

(assert (=> b!101572 m!112543))

(assert (=> b!101572 m!112547))

(assert (=> b!101572 m!112545))

(declare-fun m!112551 () Bool)

(assert (=> b!101572 m!112551))

(assert (=> b!101572 m!112541))

(declare-fun m!112553 () Bool)

(assert (=> b!101571 m!112553))

(declare-fun m!112555 () Bool)

(assert (=> b!101582 m!112555))

(declare-fun m!112557 () Bool)

(assert (=> b!101582 m!112557))

(assert (=> b!101582 m!112547))

(declare-fun m!112559 () Bool)

(assert (=> b!101582 m!112559))

(assert (=> b!101582 m!112547))

(assert (=> b!101582 m!112547))

(declare-fun m!112561 () Bool)

(assert (=> b!101582 m!112561))

(assert (=> b!101582 m!112547))

(declare-fun m!112563 () Bool)

(assert (=> b!101582 m!112563))

(declare-fun m!112565 () Bool)

(assert (=> mapNonEmpty!3821 m!112565))

(declare-fun m!112567 () Bool)

(assert (=> b!101568 m!112567))

(declare-fun m!112569 () Bool)

(assert (=> b!101570 m!112569))

(declare-fun m!112571 () Bool)

(assert (=> b!101570 m!112571))

(declare-fun m!112573 () Bool)

(assert (=> b!101587 m!112573))

(declare-fun m!112575 () Bool)

(assert (=> b!101587 m!112575))

(declare-fun m!112577 () Bool)

(assert (=> b!101584 m!112577))

(assert (=> b!101574 m!112547))

(declare-fun m!112579 () Bool)

(assert (=> b!101574 m!112579))

(declare-fun m!112581 () Bool)

(assert (=> b!101574 m!112581))

(declare-fun m!112583 () Bool)

(assert (=> b!101577 m!112583))

(check-sat (not b!101568) tp_is_empty!2649 b_and!6267 (not start!12054) (not b!101572) (not b!101570) b_and!6265 (not b!101571) (not b!101587) (not b!101577) (not b_next!2465) (not b!101574) (not b_lambda!4567) (not mapNonEmpty!3821) (not mapNonEmpty!3822) (not b!101584) (not b!101582) (not b_next!2467))
(check-sat b_and!6265 b_and!6267 (not b_next!2465) (not b_next!2467))
(get-model)

(declare-fun b_lambda!4571 () Bool)

(assert (= b_lambda!4567 (or (and b!101587 b_free!2465) (and b!101570 b_free!2467 (= (defaultEntry!2536 newMap!16) (defaultEntry!2536 (v!2845 (underlying!348 thiss!992))))) b_lambda!4571)))

(check-sat (not b_lambda!4571) (not b!101568) tp_is_empty!2649 b_and!6267 (not start!12054) (not mapNonEmpty!3821) (not b!101572) (not b!101570) b_and!6265 (not b!101571) (not b!101587) (not b!101577) (not b_next!2465) (not b!101574) (not mapNonEmpty!3822) (not b!101584) (not b!101582) (not b_next!2467))
(check-sat b_and!6265 b_and!6267 (not b_next!2465) (not b_next!2467))
(get-model)

(declare-fun d!27527 () Bool)

(assert (=> d!27527 (not (arrayContainsKey!0 (_keys!4236 (v!2845 (underlying!348 thiss!992))) (select (arr!2032 (_keys!4236 (v!2845 (underlying!348 thiss!992)))) from!355) (bvadd #b00000000000000000000000000000001 from!355)))))

(declare-fun lt!51518 () Unit!3112)

(declare-fun choose!68 (array!4282 (_ BitVec 32) (_ BitVec 64) List!1620) Unit!3112)

(assert (=> d!27527 (= lt!51518 (choose!68 (_keys!4236 (v!2845 (underlying!348 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (select (arr!2032 (_keys!4236 (v!2845 (underlying!348 thiss!992)))) from!355) (Cons!1616 (select (arr!2032 (_keys!4236 (v!2845 (underlying!348 thiss!992)))) from!355) Nil!1617)))))

(assert (=> d!27527 (bvslt (size!2285 (_keys!4236 (v!2845 (underlying!348 thiss!992)))) #b01111111111111111111111111111111)))

(assert (=> d!27527 (= (lemmaArrayNoDuplicateFromNotContainsKeysInAcc!0 (_keys!4236 (v!2845 (underlying!348 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (select (arr!2032 (_keys!4236 (v!2845 (underlying!348 thiss!992)))) from!355) (Cons!1616 (select (arr!2032 (_keys!4236 (v!2845 (underlying!348 thiss!992)))) from!355) Nil!1617)) lt!51518)))

(declare-fun bs!4197 () Bool)

(assert (= bs!4197 d!27527))

(assert (=> bs!4197 m!112547))

(assert (=> bs!4197 m!112561))

(assert (=> bs!4197 m!112547))

(declare-fun m!112633 () Bool)

(assert (=> bs!4197 m!112633))

(assert (=> b!101582 d!27527))

(declare-fun d!27529 () Bool)

(assert (=> d!27529 (arrayNoDuplicates!0 (_keys!4236 (v!2845 (underlying!348 thiss!992))) from!355 Nil!1617)))

(declare-fun lt!51521 () Unit!3112)

(declare-fun choose!39 (array!4282 (_ BitVec 32) (_ BitVec 32)) Unit!3112)

(assert (=> d!27529 (= lt!51521 (choose!39 (_keys!4236 (v!2845 (underlying!348 thiss!992))) #b00000000000000000000000000000000 from!355))))

(assert (=> d!27529 (bvslt (size!2285 (_keys!4236 (v!2845 (underlying!348 thiss!992)))) #b01111111111111111111111111111111)))

(assert (=> d!27529 (= (lemmaNoDuplicateFromThenFromBigger!0 (_keys!4236 (v!2845 (underlying!348 thiss!992))) #b00000000000000000000000000000000 from!355) lt!51521)))

(declare-fun bs!4198 () Bool)

(assert (= bs!4198 d!27529))

(assert (=> bs!4198 m!112557))

(declare-fun m!112635 () Bool)

(assert (=> bs!4198 m!112635))

(assert (=> b!101582 d!27529))

(declare-fun d!27531 () Bool)

(declare-fun res!50905 () Bool)

(declare-fun e!66194 () Bool)

(assert (=> d!27531 (=> res!50905 e!66194)))

(assert (=> d!27531 (= res!50905 (= (select (arr!2032 (_keys!4236 (v!2845 (underlying!348 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (select (arr!2032 (_keys!4236 (v!2845 (underlying!348 thiss!992)))) from!355)))))

(assert (=> d!27531 (= (arrayContainsKey!0 (_keys!4236 (v!2845 (underlying!348 thiss!992))) (select (arr!2032 (_keys!4236 (v!2845 (underlying!348 thiss!992)))) from!355) (bvadd #b00000000000000000000000000000001 from!355)) e!66194)))

(declare-fun b!101659 () Bool)

(declare-fun e!66195 () Bool)

(assert (=> b!101659 (= e!66194 e!66195)))

(declare-fun res!50906 () Bool)

(assert (=> b!101659 (=> (not res!50906) (not e!66195))))

(assert (=> b!101659 (= res!50906 (bvslt (bvadd #b00000000000000000000000000000001 from!355 #b00000000000000000000000000000001) (size!2285 (_keys!4236 (v!2845 (underlying!348 thiss!992))))))))

(declare-fun b!101660 () Bool)

(assert (=> b!101660 (= e!66195 (arrayContainsKey!0 (_keys!4236 (v!2845 (underlying!348 thiss!992))) (select (arr!2032 (_keys!4236 (v!2845 (underlying!348 thiss!992)))) from!355) (bvadd #b00000000000000000000000000000001 from!355 #b00000000000000000000000000000001)))))

(assert (= (and d!27531 (not res!50905)) b!101659))

(assert (= (and b!101659 res!50906) b!101660))

(declare-fun m!112637 () Bool)

(assert (=> d!27531 m!112637))

(assert (=> b!101660 m!112547))

(declare-fun m!112639 () Bool)

(assert (=> b!101660 m!112639))

(assert (=> b!101582 d!27531))

(declare-fun d!27533 () Bool)

(declare-fun e!66198 () Bool)

(assert (=> d!27533 e!66198))

(declare-fun c!17490 () Bool)

(assert (=> d!27533 (= c!17490 (and (not (= (select (arr!2032 (_keys!4236 (v!2845 (underlying!348 thiss!992)))) from!355) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!2032 (_keys!4236 (v!2845 (underlying!348 thiss!992)))) from!355) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun lt!51524 () Unit!3112)

(declare-fun choose!633 (array!4282 array!4284 (_ BitVec 32) (_ BitVec 32) V!3179 V!3179 (_ BitVec 64) (_ BitVec 32) Int) Unit!3112)

(assert (=> d!27533 (= lt!51524 (choose!633 (_keys!4236 (v!2845 (underlying!348 thiss!992))) (_values!2519 (v!2845 (underlying!348 thiss!992))) (mask!6659 (v!2845 (underlying!348 thiss!992))) (extraKeys!2347 (v!2845 (underlying!348 thiss!992))) (zeroValue!2414 (v!2845 (underlying!348 thiss!992))) (minValue!2414 (v!2845 (underlying!348 thiss!992))) (select (arr!2032 (_keys!4236 (v!2845 (underlying!348 thiss!992)))) from!355) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2536 (v!2845 (underlying!348 thiss!992)))))))

(assert (=> d!27533 (validMask!0 (mask!6659 (v!2845 (underlying!348 thiss!992))))))

(assert (=> d!27533 (= (lemmaListMapContainsThenArrayContainsFrom!101 (_keys!4236 (v!2845 (underlying!348 thiss!992))) (_values!2519 (v!2845 (underlying!348 thiss!992))) (mask!6659 (v!2845 (underlying!348 thiss!992))) (extraKeys!2347 (v!2845 (underlying!348 thiss!992))) (zeroValue!2414 (v!2845 (underlying!348 thiss!992))) (minValue!2414 (v!2845 (underlying!348 thiss!992))) (select (arr!2032 (_keys!4236 (v!2845 (underlying!348 thiss!992)))) from!355) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2536 (v!2845 (underlying!348 thiss!992)))) lt!51524)))

(declare-fun b!101665 () Bool)

(assert (=> b!101665 (= e!66198 (arrayContainsKey!0 (_keys!4236 (v!2845 (underlying!348 thiss!992))) (select (arr!2032 (_keys!4236 (v!2845 (underlying!348 thiss!992)))) from!355) (bvadd #b00000000000000000000000000000001 from!355)))))

(declare-fun b!101666 () Bool)

(assert (=> b!101666 (= e!66198 (ite (= (select (arr!2032 (_keys!4236 (v!2845 (underlying!348 thiss!992)))) from!355) #b0000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand (extraKeys!2347 (v!2845 (underlying!348 thiss!992))) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (extraKeys!2347 (v!2845 (underlying!348 thiss!992))) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (= (and d!27533 c!17490) b!101665))

(assert (= (and d!27533 (not c!17490)) b!101666))

(assert (=> d!27533 m!112547))

(declare-fun m!112641 () Bool)

(assert (=> d!27533 m!112641))

(assert (=> d!27533 m!112583))

(assert (=> b!101665 m!112547))

(assert (=> b!101665 m!112561))

(assert (=> b!101582 d!27533))

(declare-fun b!101678 () Bool)

(declare-fun e!66207 () Bool)

(declare-fun e!66210 () Bool)

(assert (=> b!101678 (= e!66207 e!66210)))

(declare-fun res!50914 () Bool)

(assert (=> b!101678 (=> (not res!50914) (not e!66210))))

(declare-fun e!66209 () Bool)

(assert (=> b!101678 (= res!50914 (not e!66209))))

(declare-fun res!50915 () Bool)

(assert (=> b!101678 (=> (not res!50915) (not e!66209))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!101678 (= res!50915 (validKeyInArray!0 (select (arr!2032 (_keys!4236 (v!2845 (underlying!348 thiss!992)))) from!355)))))

(declare-fun b!101679 () Bool)

(declare-fun e!66208 () Bool)

(declare-fun call!10529 () Bool)

(assert (=> b!101679 (= e!66208 call!10529)))

(declare-fun b!101680 () Bool)

(assert (=> b!101680 (= e!66210 e!66208)))

(declare-fun c!17493 () Bool)

(assert (=> b!101680 (= c!17493 (validKeyInArray!0 (select (arr!2032 (_keys!4236 (v!2845 (underlying!348 thiss!992)))) from!355)))))

(declare-fun b!101681 () Bool)

(assert (=> b!101681 (= e!66208 call!10529)))

(declare-fun bm!10526 () Bool)

(assert (=> bm!10526 (= call!10529 (arrayNoDuplicates!0 (_keys!4236 (v!2845 (underlying!348 thiss!992))) (bvadd from!355 #b00000000000000000000000000000001) (ite c!17493 (Cons!1616 (select (arr!2032 (_keys!4236 (v!2845 (underlying!348 thiss!992)))) from!355) Nil!1617) Nil!1617)))))

(declare-fun d!27535 () Bool)

(declare-fun res!50913 () Bool)

(assert (=> d!27535 (=> res!50913 e!66207)))

(assert (=> d!27535 (= res!50913 (bvsge from!355 (size!2285 (_keys!4236 (v!2845 (underlying!348 thiss!992))))))))

(assert (=> d!27535 (= (arrayNoDuplicates!0 (_keys!4236 (v!2845 (underlying!348 thiss!992))) from!355 Nil!1617) e!66207)))

(declare-fun b!101677 () Bool)

(declare-fun contains!817 (List!1620 (_ BitVec 64)) Bool)

(assert (=> b!101677 (= e!66209 (contains!817 Nil!1617 (select (arr!2032 (_keys!4236 (v!2845 (underlying!348 thiss!992)))) from!355)))))

(assert (= (and d!27535 (not res!50913)) b!101678))

(assert (= (and b!101678 res!50915) b!101677))

(assert (= (and b!101678 res!50914) b!101680))

(assert (= (and b!101680 c!17493) b!101681))

(assert (= (and b!101680 (not c!17493)) b!101679))

(assert (= (or b!101681 b!101679) bm!10526))

(assert (=> b!101678 m!112547))

(assert (=> b!101678 m!112547))

(declare-fun m!112643 () Bool)

(assert (=> b!101678 m!112643))

(assert (=> b!101680 m!112547))

(assert (=> b!101680 m!112547))

(assert (=> b!101680 m!112643))

(assert (=> bm!10526 m!112547))

(declare-fun m!112645 () Bool)

(assert (=> bm!10526 m!112645))

(assert (=> b!101677 m!112547))

(assert (=> b!101677 m!112547))

(declare-fun m!112647 () Bool)

(assert (=> b!101677 m!112647))

(assert (=> b!101582 d!27535))

(declare-fun d!27537 () Bool)

(assert (=> d!27537 (= (array_inv!1223 (_keys!4236 (v!2845 (underlying!348 thiss!992)))) (bvsge (size!2285 (_keys!4236 (v!2845 (underlying!348 thiss!992)))) #b00000000000000000000000000000000))))

(assert (=> b!101587 d!27537))

(declare-fun d!27539 () Bool)

(assert (=> d!27539 (= (array_inv!1224 (_values!2519 (v!2845 (underlying!348 thiss!992)))) (bvsge (size!2286 (_values!2519 (v!2845 (underlying!348 thiss!992)))) #b00000000000000000000000000000000))))

(assert (=> b!101587 d!27539))

(declare-fun d!27541 () Bool)

(assert (=> d!27541 (= (validMask!0 (mask!6659 (v!2845 (underlying!348 thiss!992)))) (and (or (= (mask!6659 (v!2845 (underlying!348 thiss!992))) #b00000000000000000000000000000111) (= (mask!6659 (v!2845 (underlying!348 thiss!992))) #b00000000000000000000000000001111) (= (mask!6659 (v!2845 (underlying!348 thiss!992))) #b00000000000000000000000000011111) (= (mask!6659 (v!2845 (underlying!348 thiss!992))) #b00000000000000000000000000111111) (= (mask!6659 (v!2845 (underlying!348 thiss!992))) #b00000000000000000000000001111111) (= (mask!6659 (v!2845 (underlying!348 thiss!992))) #b00000000000000000000000011111111) (= (mask!6659 (v!2845 (underlying!348 thiss!992))) #b00000000000000000000000111111111) (= (mask!6659 (v!2845 (underlying!348 thiss!992))) #b00000000000000000000001111111111) (= (mask!6659 (v!2845 (underlying!348 thiss!992))) #b00000000000000000000011111111111) (= (mask!6659 (v!2845 (underlying!348 thiss!992))) #b00000000000000000000111111111111) (= (mask!6659 (v!2845 (underlying!348 thiss!992))) #b00000000000000000001111111111111) (= (mask!6659 (v!2845 (underlying!348 thiss!992))) #b00000000000000000011111111111111) (= (mask!6659 (v!2845 (underlying!348 thiss!992))) #b00000000000000000111111111111111) (= (mask!6659 (v!2845 (underlying!348 thiss!992))) #b00000000000000001111111111111111) (= (mask!6659 (v!2845 (underlying!348 thiss!992))) #b00000000000000011111111111111111) (= (mask!6659 (v!2845 (underlying!348 thiss!992))) #b00000000000000111111111111111111) (= (mask!6659 (v!2845 (underlying!348 thiss!992))) #b00000000000001111111111111111111) (= (mask!6659 (v!2845 (underlying!348 thiss!992))) #b00000000000011111111111111111111) (= (mask!6659 (v!2845 (underlying!348 thiss!992))) #b00000000000111111111111111111111) (= (mask!6659 (v!2845 (underlying!348 thiss!992))) #b00000000001111111111111111111111) (= (mask!6659 (v!2845 (underlying!348 thiss!992))) #b00000000011111111111111111111111) (= (mask!6659 (v!2845 (underlying!348 thiss!992))) #b00000000111111111111111111111111) (= (mask!6659 (v!2845 (underlying!348 thiss!992))) #b00000001111111111111111111111111) (= (mask!6659 (v!2845 (underlying!348 thiss!992))) #b00000011111111111111111111111111) (= (mask!6659 (v!2845 (underlying!348 thiss!992))) #b00000111111111111111111111111111) (= (mask!6659 (v!2845 (underlying!348 thiss!992))) #b00001111111111111111111111111111) (= (mask!6659 (v!2845 (underlying!348 thiss!992))) #b00011111111111111111111111111111) (= (mask!6659 (v!2845 (underlying!348 thiss!992))) #b00111111111111111111111111111111)) (bvsle (mask!6659 (v!2845 (underlying!348 thiss!992))) #b00111111111111111111111111111111)))))

(assert (=> b!101577 d!27541))

(declare-fun b!101683 () Bool)

(declare-fun e!66211 () Bool)

(declare-fun e!66214 () Bool)

(assert (=> b!101683 (= e!66211 e!66214)))

(declare-fun res!50917 () Bool)

(assert (=> b!101683 (=> (not res!50917) (not e!66214))))

(declare-fun e!66213 () Bool)

(assert (=> b!101683 (= res!50917 (not e!66213))))

(declare-fun res!50918 () Bool)

(assert (=> b!101683 (=> (not res!50918) (not e!66213))))

(assert (=> b!101683 (= res!50918 (validKeyInArray!0 (select (arr!2032 (_keys!4236 (v!2845 (underlying!348 thiss!992)))) #b00000000000000000000000000000000)))))

(declare-fun b!101684 () Bool)

(declare-fun e!66212 () Bool)

(declare-fun call!10530 () Bool)

(assert (=> b!101684 (= e!66212 call!10530)))

(declare-fun b!101685 () Bool)

(assert (=> b!101685 (= e!66214 e!66212)))

(declare-fun c!17494 () Bool)

(assert (=> b!101685 (= c!17494 (validKeyInArray!0 (select (arr!2032 (_keys!4236 (v!2845 (underlying!348 thiss!992)))) #b00000000000000000000000000000000)))))

(declare-fun b!101686 () Bool)

(assert (=> b!101686 (= e!66212 call!10530)))

(declare-fun bm!10527 () Bool)

(assert (=> bm!10527 (= call!10530 (arrayNoDuplicates!0 (_keys!4236 (v!2845 (underlying!348 thiss!992))) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!17494 (Cons!1616 (select (arr!2032 (_keys!4236 (v!2845 (underlying!348 thiss!992)))) #b00000000000000000000000000000000) Nil!1617) Nil!1617)))))

(declare-fun d!27543 () Bool)

(declare-fun res!50916 () Bool)

(assert (=> d!27543 (=> res!50916 e!66211)))

(assert (=> d!27543 (= res!50916 (bvsge #b00000000000000000000000000000000 (size!2285 (_keys!4236 (v!2845 (underlying!348 thiss!992))))))))

(assert (=> d!27543 (= (arrayNoDuplicates!0 (_keys!4236 (v!2845 (underlying!348 thiss!992))) #b00000000000000000000000000000000 Nil!1617) e!66211)))

(declare-fun b!101682 () Bool)

(assert (=> b!101682 (= e!66213 (contains!817 Nil!1617 (select (arr!2032 (_keys!4236 (v!2845 (underlying!348 thiss!992)))) #b00000000000000000000000000000000)))))

(assert (= (and d!27543 (not res!50916)) b!101683))

(assert (= (and b!101683 res!50918) b!101682))

(assert (= (and b!101683 res!50917) b!101685))

(assert (= (and b!101685 c!17494) b!101686))

(assert (= (and b!101685 (not c!17494)) b!101684))

(assert (= (or b!101686 b!101684) bm!10527))

(declare-fun m!112649 () Bool)

(assert (=> b!101683 m!112649))

(assert (=> b!101683 m!112649))

(declare-fun m!112651 () Bool)

(assert (=> b!101683 m!112651))

(assert (=> b!101685 m!112649))

(assert (=> b!101685 m!112649))

(assert (=> b!101685 m!112651))

(assert (=> bm!10527 m!112649))

(declare-fun m!112653 () Bool)

(assert (=> bm!10527 m!112653))

(assert (=> b!101682 m!112649))

(assert (=> b!101682 m!112649))

(declare-fun m!112655 () Bool)

(assert (=> b!101682 m!112655))

(assert (=> b!101568 d!27543))

(declare-fun d!27545 () Bool)

(declare-fun e!66220 () Bool)

(assert (=> d!27545 e!66220))

(declare-fun res!50921 () Bool)

(assert (=> d!27545 (=> res!50921 e!66220)))

(declare-fun lt!51533 () Bool)

(assert (=> d!27545 (= res!50921 (not lt!51533))))

(declare-fun lt!51534 () Bool)

(assert (=> d!27545 (= lt!51533 lt!51534)))

(declare-fun lt!51536 () Unit!3112)

(declare-fun e!66219 () Unit!3112)

(assert (=> d!27545 (= lt!51536 e!66219)))

(declare-fun c!17497 () Bool)

(assert (=> d!27545 (= c!17497 lt!51534)))

(declare-fun containsKey!156 (List!1621 (_ BitVec 64)) Bool)

(assert (=> d!27545 (= lt!51534 (containsKey!156 (toList!797 lt!51494) (select (arr!2032 (_keys!4236 (v!2845 (underlying!348 thiss!992)))) from!355)))))

(assert (=> d!27545 (= (contains!816 lt!51494 (select (arr!2032 (_keys!4236 (v!2845 (underlying!348 thiss!992)))) from!355)) lt!51533)))

(declare-fun b!101693 () Bool)

(declare-fun lt!51535 () Unit!3112)

(assert (=> b!101693 (= e!66219 lt!51535)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!105 (List!1621 (_ BitVec 64)) Unit!3112)

(assert (=> b!101693 (= lt!51535 (lemmaContainsKeyImpliesGetValueByKeyDefined!105 (toList!797 lt!51494) (select (arr!2032 (_keys!4236 (v!2845 (underlying!348 thiss!992)))) from!355)))))

(declare-datatypes ((Option!158 0))(
  ( (Some!157 (v!2849 V!3179)) (None!156) )
))
(declare-fun isDefined!106 (Option!158) Bool)

(declare-fun getValueByKey!152 (List!1621 (_ BitVec 64)) Option!158)

(assert (=> b!101693 (isDefined!106 (getValueByKey!152 (toList!797 lt!51494) (select (arr!2032 (_keys!4236 (v!2845 (underlying!348 thiss!992)))) from!355)))))

(declare-fun b!101694 () Bool)

(declare-fun Unit!3119 () Unit!3112)

(assert (=> b!101694 (= e!66219 Unit!3119)))

(declare-fun b!101695 () Bool)

(assert (=> b!101695 (= e!66220 (isDefined!106 (getValueByKey!152 (toList!797 lt!51494) (select (arr!2032 (_keys!4236 (v!2845 (underlying!348 thiss!992)))) from!355))))))

(assert (= (and d!27545 c!17497) b!101693))

(assert (= (and d!27545 (not c!17497)) b!101694))

(assert (= (and d!27545 (not res!50921)) b!101695))

(assert (=> d!27545 m!112547))

(declare-fun m!112657 () Bool)

(assert (=> d!27545 m!112657))

(assert (=> b!101693 m!112547))

(declare-fun m!112659 () Bool)

(assert (=> b!101693 m!112659))

(assert (=> b!101693 m!112547))

(declare-fun m!112661 () Bool)

(assert (=> b!101693 m!112661))

(assert (=> b!101693 m!112661))

(declare-fun m!112663 () Bool)

(assert (=> b!101693 m!112663))

(assert (=> b!101695 m!112547))

(assert (=> b!101695 m!112661))

(assert (=> b!101695 m!112661))

(assert (=> b!101695 m!112663))

(assert (=> b!101572 d!27545))

(declare-fun b!101776 () Bool)

(declare-fun e!66278 () Unit!3112)

(declare-fun lt!51602 () Unit!3112)

(assert (=> b!101776 (= e!66278 lt!51602)))

(declare-fun call!10581 () Unit!3112)

(assert (=> b!101776 (= lt!51602 call!10581)))

(declare-datatypes ((SeekEntryResult!266 0))(
  ( (MissingZero!266 (index!3210 (_ BitVec 32))) (Found!266 (index!3211 (_ BitVec 32))) (Intermediate!266 (undefined!1078 Bool) (index!3212 (_ BitVec 32)) (x!13349 (_ BitVec 32))) (Undefined!266) (MissingVacant!266 (index!3213 (_ BitVec 32))) )
))
(declare-fun lt!51592 () SeekEntryResult!266)

(declare-fun call!10588 () SeekEntryResult!266)

(assert (=> b!101776 (= lt!51592 call!10588)))

(declare-fun res!50955 () Bool)

(assert (=> b!101776 (= res!50955 ((_ is Found!266) lt!51592))))

(declare-fun e!66273 () Bool)

(assert (=> b!101776 (=> (not res!50955) (not e!66273))))

(assert (=> b!101776 e!66273))

(declare-fun b!101777 () Bool)

(declare-fun e!66267 () Bool)

(declare-fun e!66272 () Bool)

(assert (=> b!101777 (= e!66267 e!66272)))

(declare-fun res!50952 () Bool)

(declare-fun call!10594 () Bool)

(assert (=> b!101777 (= res!50952 call!10594)))

(assert (=> b!101777 (=> (not res!50952) (not e!66272))))

(declare-fun c!17536 () Bool)

(declare-fun lt!51613 () array!4284)

(declare-fun call!10596 () ListLongMap!1563)

(declare-fun lt!51611 () (_ BitVec 32))

(declare-fun bm!10576 () Bool)

(declare-fun c!17525 () Bool)

(assert (=> bm!10576 (= call!10596 (getCurrentListMap!477 (_keys!4236 newMap!16) (ite c!17536 (_values!2519 newMap!16) lt!51613) (mask!6659 newMap!16) (ite c!17536 (ite c!17525 (extraKeys!2347 newMap!16) lt!51611) (extraKeys!2347 newMap!16)) (zeroValue!2414 newMap!16) (ite c!17536 (ite c!17525 (minValue!2414 newMap!16) (get!1316 (select (arr!2033 (_values!2519 (v!2845 (underlying!348 thiss!992)))) from!355) (dynLambda!383 (defaultEntry!2536 (v!2845 (underlying!348 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (minValue!2414 newMap!16)) #b00000000000000000000000000000000 (defaultEntry!2536 newMap!16)))))

(declare-fun b!101778 () Bool)

(declare-fun lt!51599 () Unit!3112)

(declare-fun lt!51610 () Unit!3112)

(assert (=> b!101778 (= lt!51599 lt!51610)))

(declare-fun call!10590 () ListLongMap!1563)

(declare-fun call!10587 () ListLongMap!1563)

(assert (=> b!101778 (= call!10590 call!10587)))

(declare-fun lemmaChangeLongMinValueKeyThenAddPairToListMap!44 (array!4282 array!4284 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!3179 V!3179 V!3179 Int) Unit!3112)

(assert (=> b!101778 (= lt!51610 (lemmaChangeLongMinValueKeyThenAddPairToListMap!44 (_keys!4236 newMap!16) (_values!2519 newMap!16) (mask!6659 newMap!16) (extraKeys!2347 newMap!16) lt!51611 (zeroValue!2414 newMap!16) (minValue!2414 newMap!16) (get!1316 (select (arr!2033 (_values!2519 (v!2845 (underlying!348 thiss!992)))) from!355) (dynLambda!383 (defaultEntry!2536 (v!2845 (underlying!348 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (defaultEntry!2536 newMap!16)))))

(assert (=> b!101778 (= lt!51611 (bvor (extraKeys!2347 newMap!16) #b00000000000000000000000000000010))))

(declare-fun e!66282 () tuple2!2374)

(assert (=> b!101778 (= e!66282 (tuple2!2375 true (LongMapFixedSize!871 (defaultEntry!2536 newMap!16) (mask!6659 newMap!16) (bvor (extraKeys!2347 newMap!16) #b00000000000000000000000000000010) (zeroValue!2414 newMap!16) (get!1316 (select (arr!2033 (_values!2519 (v!2845 (underlying!348 thiss!992)))) from!355) (dynLambda!383 (defaultEntry!2536 (v!2845 (underlying!348 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (_size!484 newMap!16) (_keys!4236 newMap!16) (_values!2519 newMap!16) (_vacant!484 newMap!16))))))

(declare-fun b!101779 () Bool)

(declare-fun c!17535 () Bool)

(declare-fun lt!51598 () SeekEntryResult!266)

(assert (=> b!101779 (= c!17535 ((_ is MissingVacant!266) lt!51598))))

(declare-fun e!66281 () Bool)

(declare-fun e!66280 () Bool)

(assert (=> b!101779 (= e!66281 e!66280)))

(declare-fun b!101780 () Bool)

(declare-fun e!66270 () tuple2!2374)

(declare-fun e!66279 () tuple2!2374)

(assert (=> b!101780 (= e!66270 e!66279)))

(declare-fun lt!51617 () SeekEntryResult!266)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!4282 (_ BitVec 32)) SeekEntryResult!266)

(assert (=> b!101780 (= lt!51617 (seekEntryOrOpen!0 (select (arr!2032 (_keys!4236 (v!2845 (underlying!348 thiss!992)))) from!355) (_keys!4236 newMap!16) (mask!6659 newMap!16)))))

(declare-fun c!17529 () Bool)

(assert (=> b!101780 (= c!17529 ((_ is Undefined!266) lt!51617))))

(declare-fun bm!10577 () Bool)

(declare-fun call!10595 () Bool)

(declare-fun call!10589 () Bool)

(assert (=> bm!10577 (= call!10595 call!10589)))

(declare-fun b!101781 () Bool)

(assert (=> b!101781 (= e!66272 (not call!10595))))

(declare-fun b!101782 () Bool)

(declare-fun lt!51603 () Unit!3112)

(declare-fun lt!51609 () Unit!3112)

(assert (=> b!101782 (= lt!51603 lt!51609)))

(declare-fun call!10597 () ListLongMap!1563)

(assert (=> b!101782 (= call!10590 call!10597)))

(declare-fun lt!51612 () (_ BitVec 32))

(declare-fun lemmaChangeZeroKeyThenAddPairToListMap!44 (array!4282 array!4284 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!3179 V!3179 V!3179 Int) Unit!3112)

(assert (=> b!101782 (= lt!51609 (lemmaChangeZeroKeyThenAddPairToListMap!44 (_keys!4236 newMap!16) (_values!2519 newMap!16) (mask!6659 newMap!16) (extraKeys!2347 newMap!16) lt!51612 (zeroValue!2414 newMap!16) (get!1316 (select (arr!2033 (_values!2519 (v!2845 (underlying!348 thiss!992)))) from!355) (dynLambda!383 (defaultEntry!2536 (v!2845 (underlying!348 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (minValue!2414 newMap!16) (defaultEntry!2536 newMap!16)))))

(assert (=> b!101782 (= lt!51612 (bvor (extraKeys!2347 newMap!16) #b00000000000000000000000000000001))))

(assert (=> b!101782 (= e!66282 (tuple2!2375 true (LongMapFixedSize!871 (defaultEntry!2536 newMap!16) (mask!6659 newMap!16) (bvor (extraKeys!2347 newMap!16) #b00000000000000000000000000000001) (get!1316 (select (arr!2033 (_values!2519 (v!2845 (underlying!348 thiss!992)))) from!355) (dynLambda!383 (defaultEntry!2536 (v!2845 (underlying!348 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (minValue!2414 newMap!16) (_size!484 newMap!16) (_keys!4236 newMap!16) (_values!2519 newMap!16) (_vacant!484 newMap!16))))))

(declare-fun bm!10578 () Bool)

(declare-fun call!10586 () ListLongMap!1563)

(declare-fun lt!51600 () tuple2!2374)

(assert (=> bm!10578 (= call!10586 (map!1266 (_2!1197 lt!51600)))))

(declare-fun b!101783 () Bool)

(declare-fun e!66269 () Bool)

(assert (=> b!101783 (= e!66280 e!66269)))

(declare-fun res!50951 () Bool)

(declare-fun call!10591 () Bool)

(assert (=> b!101783 (= res!50951 call!10591)))

(assert (=> b!101783 (=> (not res!50951) (not e!66269))))

(declare-fun bm!10579 () Bool)

(declare-fun lemmaInListMapThenSeekEntryOrOpenFindsIt!44 (array!4282 array!4284 (_ BitVec 32) (_ BitVec 32) V!3179 V!3179 (_ BitVec 64) Int) Unit!3112)

(assert (=> bm!10579 (= call!10581 (lemmaInListMapThenSeekEntryOrOpenFindsIt!44 (_keys!4236 newMap!16) (_values!2519 newMap!16) (mask!6659 newMap!16) (extraKeys!2347 newMap!16) (zeroValue!2414 newMap!16) (minValue!2414 newMap!16) (select (arr!2032 (_keys!4236 (v!2845 (underlying!348 thiss!992)))) from!355) (defaultEntry!2536 newMap!16)))))

(declare-fun bm!10580 () Bool)

(assert (=> bm!10580 (= call!10589 (arrayContainsKey!0 (_keys!4236 newMap!16) (select (arr!2032 (_keys!4236 (v!2845 (underlying!348 thiss!992)))) from!355) #b00000000000000000000000000000000))))

(declare-fun b!101784 () Bool)

(declare-fun res!50954 () Bool)

(declare-fun e!66266 () Bool)

(assert (=> b!101784 (=> (not res!50954) (not e!66266))))

(declare-fun lt!51607 () SeekEntryResult!266)

(assert (=> b!101784 (= res!50954 (= (select (arr!2032 (_keys!4236 newMap!16)) (index!3210 lt!51607)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!101785 () Bool)

(declare-fun res!50963 () Bool)

(declare-fun e!66271 () Bool)

(assert (=> b!101785 (=> (not res!50963) (not e!66271))))

(assert (=> b!101785 (= res!50963 call!10591)))

(assert (=> b!101785 (= e!66281 e!66271)))

(declare-fun lt!51597 () SeekEntryResult!266)

(declare-fun b!101786 () Bool)

(declare-fun e!66274 () Bool)

(assert (=> b!101786 (= e!66274 (= (select (arr!2032 (_keys!4236 newMap!16)) (index!3211 lt!51597)) (select (arr!2032 (_keys!4236 (v!2845 (underlying!348 thiss!992)))) from!355)))))

(declare-fun b!101787 () Bool)

(declare-fun res!50959 () Bool)

(declare-fun call!10585 () Bool)

(assert (=> b!101787 (= res!50959 call!10585)))

(assert (=> b!101787 (=> (not res!50959) (not e!66273))))

(declare-fun bm!10581 () Bool)

(declare-fun call!10593 () ListLongMap!1563)

(assert (=> bm!10581 (= call!10597 call!10593)))

(declare-fun b!101788 () Bool)

(declare-fun e!66264 () tuple2!2374)

(declare-fun lt!51591 () tuple2!2374)

(assert (=> b!101788 (= e!66264 (tuple2!2375 (_1!1197 lt!51591) (_2!1197 lt!51591)))))

(declare-fun call!10579 () tuple2!2374)

(assert (=> b!101788 (= lt!51591 call!10579)))

(declare-fun b!101789 () Bool)

(declare-fun lt!51593 () Unit!3112)

(declare-fun lt!51615 () Unit!3112)

(assert (=> b!101789 (= lt!51593 lt!51615)))

(assert (=> b!101789 (contains!816 call!10596 (select (arr!2032 (_keys!4236 newMap!16)) (index!3211 lt!51617)))))

(declare-fun lemmaValidKeyInArrayIsInListMap!102 (array!4282 array!4284 (_ BitVec 32) (_ BitVec 32) V!3179 V!3179 (_ BitVec 32) Int) Unit!3112)

(assert (=> b!101789 (= lt!51615 (lemmaValidKeyInArrayIsInListMap!102 (_keys!4236 newMap!16) lt!51613 (mask!6659 newMap!16) (extraKeys!2347 newMap!16) (zeroValue!2414 newMap!16) (minValue!2414 newMap!16) (index!3211 lt!51617) (defaultEntry!2536 newMap!16)))))

(assert (=> b!101789 (= lt!51613 (array!4285 (store (arr!2033 (_values!2519 newMap!16)) (index!3211 lt!51617) (ValueCellFull!981 (get!1316 (select (arr!2033 (_values!2519 (v!2845 (underlying!348 thiss!992)))) from!355) (dynLambda!383 (defaultEntry!2536 (v!2845 (underlying!348 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (size!2286 (_values!2519 newMap!16))))))

(declare-fun lt!51614 () Unit!3112)

(declare-fun lt!51601 () Unit!3112)

(assert (=> b!101789 (= lt!51614 lt!51601)))

(declare-fun call!10598 () ListLongMap!1563)

(declare-fun call!10599 () ListLongMap!1563)

(assert (=> b!101789 (= call!10598 call!10599)))

(declare-fun lemmaChangeValueExistingKeyToArrayThenAddPairToListMap!44 (array!4282 array!4284 (_ BitVec 32) (_ BitVec 32) V!3179 V!3179 (_ BitVec 32) (_ BitVec 64) V!3179 Int) Unit!3112)

(assert (=> b!101789 (= lt!51601 (lemmaChangeValueExistingKeyToArrayThenAddPairToListMap!44 (_keys!4236 newMap!16) (_values!2519 newMap!16) (mask!6659 newMap!16) (extraKeys!2347 newMap!16) (zeroValue!2414 newMap!16) (minValue!2414 newMap!16) (index!3211 lt!51617) (select (arr!2032 (_keys!4236 (v!2845 (underlying!348 thiss!992)))) from!355) (get!1316 (select (arr!2033 (_values!2519 (v!2845 (underlying!348 thiss!992)))) from!355) (dynLambda!383 (defaultEntry!2536 (v!2845 (underlying!348 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (defaultEntry!2536 newMap!16)))))

(declare-fun lt!51595 () Unit!3112)

(assert (=> b!101789 (= lt!51595 e!66278)))

(declare-fun c!17532 () Bool)

(declare-fun call!10580 () Bool)

(assert (=> b!101789 (= c!17532 call!10580)))

(declare-fun e!66268 () tuple2!2374)

(assert (=> b!101789 (= e!66268 (tuple2!2375 true (LongMapFixedSize!871 (defaultEntry!2536 newMap!16) (mask!6659 newMap!16) (extraKeys!2347 newMap!16) (zeroValue!2414 newMap!16) (minValue!2414 newMap!16) (_size!484 newMap!16) (_keys!4236 newMap!16) (array!4285 (store (arr!2033 (_values!2519 newMap!16)) (index!3211 lt!51617) (ValueCellFull!981 (get!1316 (select (arr!2033 (_values!2519 (v!2845 (underlying!348 thiss!992)))) from!355) (dynLambda!383 (defaultEntry!2536 (v!2845 (underlying!348 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (size!2286 (_values!2519 newMap!16))) (_vacant!484 newMap!16))))))

(declare-fun call!10601 () SeekEntryResult!266)

(declare-fun bm!10582 () Bool)

(assert (=> bm!10582 (= call!10601 (seekEntryOrOpen!0 (select (arr!2032 (_keys!4236 (v!2845 (underlying!348 thiss!992)))) from!355) (_keys!4236 newMap!16) (mask!6659 newMap!16)))))

(declare-fun bm!10583 () Bool)

(declare-fun call!10602 () Bool)

(assert (=> bm!10583 (= call!10585 call!10602)))

(declare-fun bm!10584 () Bool)

(assert (=> bm!10584 (= call!10590 call!10598)))

(declare-fun b!101790 () Bool)

(declare-fun res!50956 () Bool)

(assert (=> b!101790 (= res!50956 (= (select (arr!2032 (_keys!4236 newMap!16)) (index!3213 lt!51598)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!101790 (=> (not res!50956) (not e!66269))))

(declare-fun b!101791 () Bool)

(declare-fun e!66263 () ListLongMap!1563)

(assert (=> b!101791 (= e!66263 call!10593)))

(declare-fun b!101792 () Bool)

(declare-fun e!66283 () Bool)

(declare-fun e!66275 () Bool)

(assert (=> b!101792 (= e!66283 e!66275)))

(declare-fun res!50962 () Bool)

(assert (=> b!101792 (= res!50962 (contains!816 call!10586 (select (arr!2032 (_keys!4236 (v!2845 (underlying!348 thiss!992)))) from!355)))))

(assert (=> b!101792 (=> (not res!50962) (not e!66275))))

(declare-fun b!101793 () Bool)

(declare-fun res!50960 () Bool)

(assert (=> b!101793 (=> (not res!50960) (not e!66266))))

(assert (=> b!101793 (= res!50960 call!10594)))

(declare-fun e!66277 () Bool)

(assert (=> b!101793 (= e!66277 e!66266)))

(declare-fun c!17524 () Bool)

(declare-fun bm!10585 () Bool)

(declare-fun updateHelperNewKey!44 (LongMapFixedSize!870 (_ BitVec 64) V!3179 (_ BitVec 32)) tuple2!2374)

(assert (=> bm!10585 (= call!10579 (updateHelperNewKey!44 newMap!16 (select (arr!2032 (_keys!4236 (v!2845 (underlying!348 thiss!992)))) from!355) (get!1316 (select (arr!2033 (_values!2519 (v!2845 (underlying!348 thiss!992)))) from!355) (dynLambda!383 (defaultEntry!2536 (v!2845 (underlying!348 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (ite c!17524 (index!3213 lt!51617) (index!3210 lt!51617))))))

(declare-fun bm!10586 () Bool)

(declare-fun call!10600 () Bool)

(assert (=> bm!10586 (= call!10600 call!10589)))

(declare-fun b!101794 () Bool)

(assert (=> b!101794 (= e!66271 (not call!10600))))

(declare-fun bm!10587 () Bool)

(assert (=> bm!10587 (= call!10588 call!10601)))

(declare-fun bm!10588 () Bool)

(declare-fun call!10592 () Unit!3112)

(declare-fun lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!44 (array!4282 array!4284 (_ BitVec 32) (_ BitVec 32) V!3179 V!3179 (_ BitVec 64) Int) Unit!3112)

(assert (=> bm!10588 (= call!10592 (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!44 (_keys!4236 newMap!16) (_values!2519 newMap!16) (mask!6659 newMap!16) (extraKeys!2347 newMap!16) (zeroValue!2414 newMap!16) (minValue!2414 newMap!16) (select (arr!2032 (_keys!4236 (v!2845 (underlying!348 thiss!992)))) from!355) (defaultEntry!2536 newMap!16)))))

(declare-fun b!101795 () Bool)

(assert (=> b!101795 (= e!66280 ((_ is Undefined!266) lt!51598))))

(declare-fun b!101796 () Bool)

(assert (=> b!101796 (= e!66266 (not call!10595))))

(declare-fun bm!10589 () Bool)

(assert (=> bm!10589 (= call!10593 (getCurrentListMap!477 (_keys!4236 newMap!16) (_values!2519 newMap!16) (mask!6659 newMap!16) (ite (and c!17536 c!17525) lt!51612 (extraKeys!2347 newMap!16)) (ite (and c!17536 c!17525) (get!1316 (select (arr!2033 (_values!2519 (v!2845 (underlying!348 thiss!992)))) from!355) (dynLambda!383 (defaultEntry!2536 (v!2845 (underlying!348 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (zeroValue!2414 newMap!16)) (minValue!2414 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2536 newMap!16)))))

(declare-fun bm!10590 () Bool)

(declare-fun call!10584 () SeekEntryResult!266)

(assert (=> bm!10590 (= call!10584 call!10601)))

(declare-fun b!101797 () Bool)

(declare-fun res!50957 () Bool)

(assert (=> b!101797 (=> (not res!50957) (not e!66271))))

(assert (=> b!101797 (= res!50957 (= (select (arr!2032 (_keys!4236 newMap!16)) (index!3210 lt!51598)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!101798 () Bool)

(declare-fun res!50958 () Bool)

(assert (=> b!101798 (= res!50958 (= (select (arr!2032 (_keys!4236 newMap!16)) (index!3213 lt!51607)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!101798 (=> (not res!50958) (not e!66272))))

(declare-fun c!17531 () Bool)

(declare-fun c!17530 () Bool)

(declare-fun bm!10591 () Bool)

(declare-fun c!17533 () Bool)

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> bm!10591 (= call!10602 (inRange!0 (ite c!17529 (ite c!17533 (index!3211 lt!51597) (ite c!17530 (index!3210 lt!51598) (index!3213 lt!51598))) (ite c!17532 (index!3211 lt!51592) (ite c!17531 (index!3210 lt!51607) (index!3213 lt!51607)))) (mask!6659 newMap!16)))))

(declare-fun bm!10592 () Bool)

(assert (=> bm!10592 (= call!10594 call!10585)))

(declare-fun b!101799 () Bool)

(assert (=> b!101799 (= e!66267 ((_ is Undefined!266) lt!51607))))

(declare-fun b!101800 () Bool)

(assert (=> b!101800 (= e!66264 e!66268)))

(declare-fun c!17526 () Bool)

(assert (=> b!101800 (= c!17526 ((_ is MissingZero!266) lt!51617))))

(declare-fun b!101801 () Bool)

(assert (=> b!101801 (= e!66273 (= (select (arr!2032 (_keys!4236 newMap!16)) (index!3211 lt!51592)) (select (arr!2032 (_keys!4236 (v!2845 (underlying!348 thiss!992)))) from!355)))))

(declare-fun bm!10593 () Bool)

(declare-fun c!17527 () Bool)

(assert (=> bm!10593 (= c!17527 c!17529)))

(assert (=> bm!10593 (= call!10580 (contains!816 e!66263 (select (arr!2032 (_keys!4236 (v!2845 (underlying!348 thiss!992)))) from!355)))))

(declare-fun bm!10594 () Bool)

(declare-fun +!141 (ListLongMap!1563 tuple2!2376) ListLongMap!1563)

(assert (=> bm!10594 (= call!10598 (+!141 (ite c!17536 (ite c!17525 call!10587 call!10597) call!10593) (ite c!17536 (ite c!17525 (tuple2!2377 #b0000000000000000000000000000000000000000000000000000000000000000 (get!1316 (select (arr!2033 (_values!2519 (v!2845 (underlying!348 thiss!992)))) from!355) (dynLambda!383 (defaultEntry!2536 (v!2845 (underlying!348 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (tuple2!2377 #b1000000000000000000000000000000000000000000000000000000000000000 (get!1316 (select (arr!2033 (_values!2519 (v!2845 (underlying!348 thiss!992)))) from!355) (dynLambda!383 (defaultEntry!2536 (v!2845 (underlying!348 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (tuple2!2377 (select (arr!2032 (_keys!4236 (v!2845 (underlying!348 thiss!992)))) from!355) (get!1316 (select (arr!2033 (_values!2519 (v!2845 (underlying!348 thiss!992)))) from!355) (dynLambda!383 (defaultEntry!2536 (v!2845 (underlying!348 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun b!101802 () Bool)

(declare-fun c!17528 () Bool)

(assert (=> b!101802 (= c!17528 ((_ is MissingVacant!266) lt!51607))))

(assert (=> b!101802 (= e!66277 e!66267)))

(declare-fun b!101803 () Bool)

(declare-fun e!66265 () Bool)

(assert (=> b!101803 (= e!66265 e!66283)))

(declare-fun c!17534 () Bool)

(assert (=> b!101803 (= c!17534 (_1!1197 lt!51600))))

(declare-fun call!10583 () ListLongMap!1563)

(declare-fun b!101804 () Bool)

(assert (=> b!101804 (= e!66275 (= call!10586 (+!141 call!10583 (tuple2!2377 (select (arr!2032 (_keys!4236 (v!2845 (underlying!348 thiss!992)))) from!355) (get!1316 (select (arr!2033 (_values!2519 (v!2845 (underlying!348 thiss!992)))) from!355) (dynLambda!383 (defaultEntry!2536 (v!2845 (underlying!348 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun bm!10595 () Bool)

(declare-fun call!10582 () Bool)

(assert (=> bm!10595 (= call!10591 call!10582)))

(declare-fun b!101805 () Bool)

(declare-fun lt!51596 () Unit!3112)

(declare-fun e!66276 () Unit!3112)

(assert (=> b!101805 (= lt!51596 e!66276)))

(assert (=> b!101805 (= c!17533 call!10580)))

(assert (=> b!101805 (= e!66279 (tuple2!2375 false newMap!16))))

(declare-fun d!27547 () Bool)

(assert (=> d!27547 e!66265))

(declare-fun res!50953 () Bool)

(assert (=> d!27547 (=> (not res!50953) (not e!66265))))

(assert (=> d!27547 (= res!50953 (valid!393 (_2!1197 lt!51600)))))

(assert (=> d!27547 (= lt!51600 e!66270)))

(assert (=> d!27547 (= c!17536 (= (select (arr!2032 (_keys!4236 (v!2845 (underlying!348 thiss!992)))) from!355) (bvneg (select (arr!2032 (_keys!4236 (v!2845 (underlying!348 thiss!992)))) from!355))))))

(assert (=> d!27547 (valid!393 newMap!16)))

(assert (=> d!27547 (= (update!151 newMap!16 (select (arr!2032 (_keys!4236 (v!2845 (underlying!348 thiss!992)))) from!355) (get!1316 (select (arr!2033 (_values!2519 (v!2845 (underlying!348 thiss!992)))) from!355) (dynLambda!383 (defaultEntry!2536 (v!2845 (underlying!348 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) lt!51600)))

(declare-fun bm!10596 () Bool)

(assert (=> bm!10596 (= call!10582 call!10602)))

(declare-fun b!101806 () Bool)

(assert (=> b!101806 (= e!66283 (= call!10586 call!10583))))

(declare-fun bm!10597 () Bool)

(assert (=> bm!10597 (= call!10599 (getCurrentListMap!477 (_keys!4236 newMap!16) (ite c!17529 (_values!2519 newMap!16) (array!4285 (store (arr!2033 (_values!2519 newMap!16)) (index!3211 lt!51617) (ValueCellFull!981 (get!1316 (select (arr!2033 (_values!2519 (v!2845 (underlying!348 thiss!992)))) from!355) (dynLambda!383 (defaultEntry!2536 (v!2845 (underlying!348 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (size!2286 (_values!2519 newMap!16)))) (mask!6659 newMap!16) (extraKeys!2347 newMap!16) (zeroValue!2414 newMap!16) (minValue!2414 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2536 newMap!16)))))

(declare-fun b!101807 () Bool)

(declare-fun Unit!3120 () Unit!3112)

(assert (=> b!101807 (= e!66278 Unit!3120)))

(declare-fun lt!51594 () Unit!3112)

(assert (=> b!101807 (= lt!51594 call!10592)))

(assert (=> b!101807 (= lt!51607 call!10588)))

(assert (=> b!101807 (= c!17531 ((_ is MissingZero!266) lt!51607))))

(assert (=> b!101807 e!66277))

(declare-fun lt!51604 () Unit!3112)

(assert (=> b!101807 (= lt!51604 lt!51594)))

(assert (=> b!101807 false))

(declare-fun b!101808 () Bool)

(assert (=> b!101808 (= e!66263 call!10599)))

(declare-fun bm!10598 () Bool)

(assert (=> bm!10598 (= call!10587 call!10596)))

(declare-fun bm!10599 () Bool)

(assert (=> bm!10599 (= call!10583 (map!1266 newMap!16))))

(declare-fun b!101809 () Bool)

(assert (=> b!101809 (= e!66269 (not call!10600))))

(declare-fun b!101810 () Bool)

(declare-fun res!50961 () Bool)

(assert (=> b!101810 (= res!50961 call!10582)))

(assert (=> b!101810 (=> (not res!50961) (not e!66274))))

(declare-fun b!101811 () Bool)

(declare-fun lt!51616 () tuple2!2374)

(assert (=> b!101811 (= lt!51616 call!10579)))

(assert (=> b!101811 (= e!66268 (tuple2!2375 (_1!1197 lt!51616) (_2!1197 lt!51616)))))

(declare-fun b!101812 () Bool)

(assert (=> b!101812 (= c!17524 ((_ is MissingVacant!266) lt!51617))))

(assert (=> b!101812 (= e!66279 e!66264)))

(declare-fun b!101813 () Bool)

(declare-fun Unit!3121 () Unit!3112)

(assert (=> b!101813 (= e!66276 Unit!3121)))

(declare-fun lt!51605 () Unit!3112)

(assert (=> b!101813 (= lt!51605 call!10581)))

(assert (=> b!101813 (= lt!51597 call!10584)))

(declare-fun res!50950 () Bool)

(assert (=> b!101813 (= res!50950 ((_ is Found!266) lt!51597))))

(assert (=> b!101813 (=> (not res!50950) (not e!66274))))

(assert (=> b!101813 e!66274))

(declare-fun lt!51608 () Unit!3112)

(assert (=> b!101813 (= lt!51608 lt!51605)))

(assert (=> b!101813 false))

(declare-fun b!101814 () Bool)

(assert (=> b!101814 (= e!66270 e!66282)))

(assert (=> b!101814 (= c!17525 (= (select (arr!2032 (_keys!4236 (v!2845 (underlying!348 thiss!992)))) from!355) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!101815 () Bool)

(declare-fun lt!51606 () Unit!3112)

(assert (=> b!101815 (= e!66276 lt!51606)))

(assert (=> b!101815 (= lt!51606 call!10592)))

(assert (=> b!101815 (= lt!51598 call!10584)))

(assert (=> b!101815 (= c!17530 ((_ is MissingZero!266) lt!51598))))

(assert (=> b!101815 e!66281))

(assert (= (and d!27547 c!17536) b!101814))

(assert (= (and d!27547 (not c!17536)) b!101780))

(assert (= (and b!101814 c!17525) b!101782))

(assert (= (and b!101814 (not c!17525)) b!101778))

(assert (= (or b!101782 b!101778) bm!10581))

(assert (= (or b!101782 b!101778) bm!10598))

(assert (= (or b!101782 b!101778) bm!10584))

(assert (= (and b!101780 c!17529) b!101805))

(assert (= (and b!101780 (not c!17529)) b!101812))

(assert (= (and b!101805 c!17533) b!101813))

(assert (= (and b!101805 (not c!17533)) b!101815))

(assert (= (and b!101813 res!50950) b!101810))

(assert (= (and b!101810 res!50961) b!101786))

(assert (= (and b!101815 c!17530) b!101785))

(assert (= (and b!101815 (not c!17530)) b!101779))

(assert (= (and b!101785 res!50963) b!101797))

(assert (= (and b!101797 res!50957) b!101794))

(assert (= (and b!101779 c!17535) b!101783))

(assert (= (and b!101779 (not c!17535)) b!101795))

(assert (= (and b!101783 res!50951) b!101790))

(assert (= (and b!101790 res!50956) b!101809))

(assert (= (or b!101785 b!101783) bm!10595))

(assert (= (or b!101794 b!101809) bm!10586))

(assert (= (or b!101810 bm!10595) bm!10596))

(assert (= (or b!101813 b!101815) bm!10590))

(assert (= (and b!101812 c!17524) b!101788))

(assert (= (and b!101812 (not c!17524)) b!101800))

(assert (= (and b!101800 c!17526) b!101811))

(assert (= (and b!101800 (not c!17526)) b!101789))

(assert (= (and b!101789 c!17532) b!101776))

(assert (= (and b!101789 (not c!17532)) b!101807))

(assert (= (and b!101776 res!50955) b!101787))

(assert (= (and b!101787 res!50959) b!101801))

(assert (= (and b!101807 c!17531) b!101793))

(assert (= (and b!101807 (not c!17531)) b!101802))

(assert (= (and b!101793 res!50960) b!101784))

(assert (= (and b!101784 res!50954) b!101796))

(assert (= (and b!101802 c!17528) b!101777))

(assert (= (and b!101802 (not c!17528)) b!101799))

(assert (= (and b!101777 res!50952) b!101798))

(assert (= (and b!101798 res!50958) b!101781))

(assert (= (or b!101793 b!101777) bm!10592))

(assert (= (or b!101796 b!101781) bm!10577))

(assert (= (or b!101787 bm!10592) bm!10583))

(assert (= (or b!101776 b!101807) bm!10587))

(assert (= (or b!101788 b!101811) bm!10585))

(assert (= (or b!101805 b!101789) bm!10597))

(assert (= (or bm!10590 bm!10587) bm!10582))

(assert (= (or b!101815 b!101807) bm!10588))

(assert (= (or bm!10596 bm!10583) bm!10591))

(assert (= (or bm!10586 bm!10577) bm!10580))

(assert (= (or b!101813 b!101776) bm!10579))

(assert (= (or b!101805 b!101789) bm!10593))

(assert (= (and bm!10593 c!17527) b!101808))

(assert (= (and bm!10593 (not c!17527)) b!101791))

(assert (= (or bm!10581 b!101789 b!101791) bm!10589))

(assert (= (or bm!10598 b!101789) bm!10576))

(assert (= (or bm!10584 b!101789) bm!10594))

(assert (= (and d!27547 res!50953) b!101803))

(assert (= (and b!101803 c!17534) b!101792))

(assert (= (and b!101803 (not c!17534)) b!101806))

(assert (= (and b!101792 res!50962) b!101804))

(assert (= (or b!101792 b!101804 b!101806) bm!10578))

(assert (= (or b!101804 b!101806) bm!10599))

(declare-fun m!112665 () Bool)

(assert (=> b!101798 m!112665))

(assert (=> b!101778 m!112545))

(declare-fun m!112667 () Bool)

(assert (=> b!101778 m!112667))

(assert (=> b!101792 m!112547))

(declare-fun m!112669 () Bool)

(assert (=> b!101792 m!112669))

(declare-fun m!112671 () Bool)

(assert (=> bm!10594 m!112671))

(declare-fun m!112673 () Bool)

(assert (=> bm!10591 m!112673))

(assert (=> b!101782 m!112545))

(declare-fun m!112675 () Bool)

(assert (=> b!101782 m!112675))

(declare-fun m!112677 () Bool)

(assert (=> bm!10589 m!112677))

(declare-fun m!112679 () Bool)

(assert (=> bm!10597 m!112679))

(declare-fun m!112681 () Bool)

(assert (=> bm!10597 m!112681))

(assert (=> bm!10579 m!112547))

(declare-fun m!112683 () Bool)

(assert (=> bm!10579 m!112683))

(declare-fun m!112685 () Bool)

(assert (=> b!101797 m!112685))

(assert (=> bm!10580 m!112547))

(declare-fun m!112687 () Bool)

(assert (=> bm!10580 m!112687))

(declare-fun m!112689 () Bool)

(assert (=> d!27547 m!112689))

(assert (=> d!27547 m!112553))

(declare-fun m!112691 () Bool)

(assert (=> b!101801 m!112691))

(declare-fun m!112693 () Bool)

(assert (=> b!101790 m!112693))

(assert (=> bm!10599 m!112579))

(assert (=> bm!10588 m!112547))

(declare-fun m!112695 () Bool)

(assert (=> bm!10588 m!112695))

(assert (=> bm!10582 m!112547))

(declare-fun m!112697 () Bool)

(assert (=> bm!10582 m!112697))

(declare-fun m!112699 () Bool)

(assert (=> b!101784 m!112699))

(declare-fun m!112701 () Bool)

(assert (=> b!101789 m!112701))

(declare-fun m!112703 () Bool)

(assert (=> b!101789 m!112703))

(assert (=> b!101789 m!112547))

(assert (=> b!101789 m!112545))

(declare-fun m!112705 () Bool)

(assert (=> b!101789 m!112705))

(assert (=> b!101789 m!112701))

(declare-fun m!112707 () Bool)

(assert (=> b!101789 m!112707))

(assert (=> b!101789 m!112679))

(declare-fun m!112709 () Bool)

(assert (=> b!101786 m!112709))

(assert (=> bm!10585 m!112547))

(assert (=> bm!10585 m!112545))

(declare-fun m!112711 () Bool)

(assert (=> bm!10585 m!112711))

(declare-fun m!112713 () Bool)

(assert (=> b!101804 m!112713))

(declare-fun m!112715 () Bool)

(assert (=> bm!10578 m!112715))

(assert (=> bm!10593 m!112547))

(declare-fun m!112717 () Bool)

(assert (=> bm!10593 m!112717))

(assert (=> b!101780 m!112547))

(assert (=> b!101780 m!112697))

(declare-fun m!112719 () Bool)

(assert (=> bm!10576 m!112719))

(assert (=> b!101572 d!27547))

(declare-fun d!27549 () Bool)

(declare-fun c!17539 () Bool)

(assert (=> d!27549 (= c!17539 ((_ is ValueCellFull!981) (select (arr!2033 (_values!2519 (v!2845 (underlying!348 thiss!992)))) from!355)))))

(declare-fun e!66286 () V!3179)

(assert (=> d!27549 (= (get!1316 (select (arr!2033 (_values!2519 (v!2845 (underlying!348 thiss!992)))) from!355) (dynLambda!383 (defaultEntry!2536 (v!2845 (underlying!348 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) e!66286)))

(declare-fun b!101820 () Bool)

(declare-fun get!1317 (ValueCell!981 V!3179) V!3179)

(assert (=> b!101820 (= e!66286 (get!1317 (select (arr!2033 (_values!2519 (v!2845 (underlying!348 thiss!992)))) from!355) (dynLambda!383 (defaultEntry!2536 (v!2845 (underlying!348 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!101821 () Bool)

(declare-fun get!1318 (ValueCell!981 V!3179) V!3179)

(assert (=> b!101821 (= e!66286 (get!1318 (select (arr!2033 (_values!2519 (v!2845 (underlying!348 thiss!992)))) from!355) (dynLambda!383 (defaultEntry!2536 (v!2845 (underlying!348 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!27549 c!17539) b!101820))

(assert (= (and d!27549 (not c!17539)) b!101821))

(assert (=> b!101820 m!112541))

(assert (=> b!101820 m!112543))

(declare-fun m!112721 () Bool)

(assert (=> b!101820 m!112721))

(assert (=> b!101821 m!112541))

(assert (=> b!101821 m!112543))

(declare-fun m!112723 () Bool)

(assert (=> b!101821 m!112723))

(assert (=> b!101572 d!27549))

(declare-fun d!27551 () Bool)

(declare-fun res!50970 () Bool)

(declare-fun e!66289 () Bool)

(assert (=> d!27551 (=> (not res!50970) (not e!66289))))

(declare-fun simpleValid!70 (LongMapFixedSize!870) Bool)

(assert (=> d!27551 (= res!50970 (simpleValid!70 newMap!16))))

(assert (=> d!27551 (= (valid!393 newMap!16) e!66289)))

(declare-fun b!101828 () Bool)

(declare-fun res!50971 () Bool)

(assert (=> b!101828 (=> (not res!50971) (not e!66289))))

(declare-fun arrayCountValidKeys!0 (array!4282 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!101828 (= res!50971 (= (arrayCountValidKeys!0 (_keys!4236 newMap!16) #b00000000000000000000000000000000 (size!2285 (_keys!4236 newMap!16))) (_size!484 newMap!16)))))

(declare-fun b!101829 () Bool)

(declare-fun res!50972 () Bool)

(assert (=> b!101829 (=> (not res!50972) (not e!66289))))

(assert (=> b!101829 (= res!50972 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!4236 newMap!16) (mask!6659 newMap!16)))))

(declare-fun b!101830 () Bool)

(assert (=> b!101830 (= e!66289 (arrayNoDuplicates!0 (_keys!4236 newMap!16) #b00000000000000000000000000000000 Nil!1617))))

(assert (= (and d!27551 res!50970) b!101828))

(assert (= (and b!101828 res!50971) b!101829))

(assert (= (and b!101829 res!50972) b!101830))

(declare-fun m!112725 () Bool)

(assert (=> d!27551 m!112725))

(declare-fun m!112727 () Bool)

(assert (=> b!101828 m!112727))

(declare-fun m!112729 () Bool)

(assert (=> b!101829 m!112729))

(declare-fun m!112731 () Bool)

(assert (=> b!101830 m!112731))

(assert (=> b!101571 d!27551))

(declare-fun bm!10602 () Bool)

(declare-fun call!10605 () Bool)

(assert (=> bm!10602 (= call!10605 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (_keys!4236 (v!2845 (underlying!348 thiss!992))) (mask!6659 (v!2845 (underlying!348 thiss!992)))))))

(declare-fun b!101839 () Bool)

(declare-fun e!66297 () Bool)

(assert (=> b!101839 (= e!66297 call!10605)))

(declare-fun b!101840 () Bool)

(declare-fun e!66298 () Bool)

(assert (=> b!101840 (= e!66298 e!66297)))

(declare-fun c!17542 () Bool)

(assert (=> b!101840 (= c!17542 (validKeyInArray!0 (select (arr!2032 (_keys!4236 (v!2845 (underlying!348 thiss!992)))) #b00000000000000000000000000000000)))))

(declare-fun d!27553 () Bool)

(declare-fun res!50977 () Bool)

(assert (=> d!27553 (=> res!50977 e!66298)))

(assert (=> d!27553 (= res!50977 (bvsge #b00000000000000000000000000000000 (size!2285 (_keys!4236 (v!2845 (underlying!348 thiss!992))))))))

(assert (=> d!27553 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!4236 (v!2845 (underlying!348 thiss!992))) (mask!6659 (v!2845 (underlying!348 thiss!992)))) e!66298)))

(declare-fun b!101841 () Bool)

(declare-fun e!66296 () Bool)

(assert (=> b!101841 (= e!66296 call!10605)))

(declare-fun b!101842 () Bool)

(assert (=> b!101842 (= e!66297 e!66296)))

(declare-fun lt!51625 () (_ BitVec 64))

(assert (=> b!101842 (= lt!51625 (select (arr!2032 (_keys!4236 (v!2845 (underlying!348 thiss!992)))) #b00000000000000000000000000000000))))

(declare-fun lt!51626 () Unit!3112)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!4282 (_ BitVec 64) (_ BitVec 32)) Unit!3112)

(assert (=> b!101842 (= lt!51626 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!4236 (v!2845 (underlying!348 thiss!992))) lt!51625 #b00000000000000000000000000000000))))

(assert (=> b!101842 (arrayContainsKey!0 (_keys!4236 (v!2845 (underlying!348 thiss!992))) lt!51625 #b00000000000000000000000000000000)))

(declare-fun lt!51624 () Unit!3112)

(assert (=> b!101842 (= lt!51624 lt!51626)))

(declare-fun res!50978 () Bool)

(assert (=> b!101842 (= res!50978 (= (seekEntryOrOpen!0 (select (arr!2032 (_keys!4236 (v!2845 (underlying!348 thiss!992)))) #b00000000000000000000000000000000) (_keys!4236 (v!2845 (underlying!348 thiss!992))) (mask!6659 (v!2845 (underlying!348 thiss!992)))) (Found!266 #b00000000000000000000000000000000)))))

(assert (=> b!101842 (=> (not res!50978) (not e!66296))))

(assert (= (and d!27553 (not res!50977)) b!101840))

(assert (= (and b!101840 c!17542) b!101842))

(assert (= (and b!101840 (not c!17542)) b!101839))

(assert (= (and b!101842 res!50978) b!101841))

(assert (= (or b!101841 b!101839) bm!10602))

(declare-fun m!112733 () Bool)

(assert (=> bm!10602 m!112733))

(assert (=> b!101840 m!112649))

(assert (=> b!101840 m!112649))

(assert (=> b!101840 m!112651))

(assert (=> b!101842 m!112649))

(declare-fun m!112735 () Bool)

(assert (=> b!101842 m!112735))

(declare-fun m!112737 () Bool)

(assert (=> b!101842 m!112737))

(assert (=> b!101842 m!112649))

(declare-fun m!112739 () Bool)

(assert (=> b!101842 m!112739))

(assert (=> b!101584 d!27553))

(declare-fun d!27555 () Bool)

(assert (=> d!27555 (= (array_inv!1223 (_keys!4236 newMap!16)) (bvsge (size!2285 (_keys!4236 newMap!16)) #b00000000000000000000000000000000))))

(assert (=> b!101570 d!27555))

(declare-fun d!27557 () Bool)

(assert (=> d!27557 (= (array_inv!1224 (_values!2519 newMap!16)) (bvsge (size!2286 (_values!2519 newMap!16)) #b00000000000000000000000000000000))))

(assert (=> b!101570 d!27557))

(declare-fun d!27559 () Bool)

(assert (=> d!27559 (= (map!1266 newMap!16) (getCurrentListMap!477 (_keys!4236 newMap!16) (_values!2519 newMap!16) (mask!6659 newMap!16) (extraKeys!2347 newMap!16) (zeroValue!2414 newMap!16) (minValue!2414 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2536 newMap!16)))))

(declare-fun bs!4199 () Bool)

(assert (= bs!4199 d!27559))

(declare-fun m!112741 () Bool)

(assert (=> bs!4199 m!112741))

(assert (=> b!101574 d!27559))

(declare-fun b!101885 () Bool)

(declare-fun e!66330 () Bool)

(declare-fun e!66325 () Bool)

(assert (=> b!101885 (= e!66330 e!66325)))

(declare-fun res!50999 () Bool)

(declare-fun call!10624 () Bool)

(assert (=> b!101885 (= res!50999 call!10624)))

(assert (=> b!101885 (=> (not res!50999) (not e!66325))))

(declare-fun b!101886 () Bool)

(declare-fun e!66327 () ListLongMap!1563)

(declare-fun call!10621 () ListLongMap!1563)

(assert (=> b!101886 (= e!66327 (+!141 call!10621 (tuple2!2377 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2414 (v!2845 (underlying!348 thiss!992))))))))

(declare-fun b!101887 () Bool)

(declare-fun res!50998 () Bool)

(declare-fun e!66331 () Bool)

(assert (=> b!101887 (=> (not res!50998) (not e!66331))))

(declare-fun e!66335 () Bool)

(assert (=> b!101887 (= res!50998 e!66335)))

(declare-fun c!17556 () Bool)

(assert (=> b!101887 (= c!17556 (not (= (bvand (extraKeys!2347 (v!2845 (underlying!348 thiss!992))) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun bm!10617 () Bool)

(declare-fun call!10623 () ListLongMap!1563)

(declare-fun getCurrentListMapNoExtraKeys!105 (array!4282 array!4284 (_ BitVec 32) (_ BitVec 32) V!3179 V!3179 (_ BitVec 32) Int) ListLongMap!1563)

(assert (=> bm!10617 (= call!10623 (getCurrentListMapNoExtraKeys!105 (_keys!4236 (v!2845 (underlying!348 thiss!992))) (_values!2519 (v!2845 (underlying!348 thiss!992))) (mask!6659 (v!2845 (underlying!348 thiss!992))) (extraKeys!2347 (v!2845 (underlying!348 thiss!992))) (zeroValue!2414 (v!2845 (underlying!348 thiss!992))) (minValue!2414 (v!2845 (underlying!348 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2536 (v!2845 (underlying!348 thiss!992)))))))

(declare-fun b!101888 () Bool)

(declare-fun e!66333 () ListLongMap!1563)

(declare-fun call!10620 () ListLongMap!1563)

(assert (=> b!101888 (= e!66333 call!10620)))

(declare-fun b!101889 () Bool)

(declare-fun e!66328 () Bool)

(declare-fun lt!51692 () ListLongMap!1563)

(declare-fun apply!95 (ListLongMap!1563 (_ BitVec 64)) V!3179)

(assert (=> b!101889 (= e!66328 (= (apply!95 lt!51692 (select (arr!2032 (_keys!4236 (v!2845 (underlying!348 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))) (get!1316 (select (arr!2033 (_values!2519 (v!2845 (underlying!348 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (dynLambda!383 (defaultEntry!2536 (v!2845 (underlying!348 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!101889 (and (bvsge (bvadd #b00000000000000000000000000000001 from!355) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!355) (size!2286 (_values!2519 (v!2845 (underlying!348 thiss!992))))))))

(assert (=> b!101889 (and (bvsge (bvadd #b00000000000000000000000000000001 from!355) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!355) (size!2285 (_keys!4236 (v!2845 (underlying!348 thiss!992))))))))

(declare-fun b!101890 () Bool)

(declare-fun e!66329 () Bool)

(assert (=> b!101890 (= e!66329 (validKeyInArray!0 (select (arr!2032 (_keys!4236 (v!2845 (underlying!348 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))))))

(declare-fun call!10625 () ListLongMap!1563)

(declare-fun bm!10618 () Bool)

(declare-fun call!10622 () ListLongMap!1563)

(declare-fun c!17557 () Bool)

(declare-fun c!17558 () Bool)

(assert (=> bm!10618 (= call!10621 (+!141 (ite c!17558 call!10623 (ite c!17557 call!10622 call!10625)) (ite (or c!17558 c!17557) (tuple2!2377 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2414 (v!2845 (underlying!348 thiss!992)))) (tuple2!2377 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2414 (v!2845 (underlying!348 thiss!992)))))))))

(declare-fun b!101891 () Bool)

(declare-fun e!66326 () Bool)

(assert (=> b!101891 (= e!66335 e!66326)))

(declare-fun res!51000 () Bool)

(declare-fun call!10626 () Bool)

(assert (=> b!101891 (= res!51000 call!10626)))

(assert (=> b!101891 (=> (not res!51000) (not e!66326))))

(declare-fun b!101892 () Bool)

(assert (=> b!101892 (= e!66331 e!66330)))

(declare-fun c!17559 () Bool)

(assert (=> b!101892 (= c!17559 (not (= (bvand (extraKeys!2347 (v!2845 (underlying!348 thiss!992))) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!101893 () Bool)

(declare-fun e!66336 () Bool)

(assert (=> b!101893 (= e!66336 e!66328)))

(declare-fun res!50997 () Bool)

(assert (=> b!101893 (=> (not res!50997) (not e!66328))))

(assert (=> b!101893 (= res!50997 (contains!816 lt!51692 (select (arr!2032 (_keys!4236 (v!2845 (underlying!348 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))))))

(assert (=> b!101893 (and (bvsge (bvadd #b00000000000000000000000000000001 from!355) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!355) (size!2285 (_keys!4236 (v!2845 (underlying!348 thiss!992))))))))

(declare-fun b!101894 () Bool)

(declare-fun e!66334 () ListLongMap!1563)

(assert (=> b!101894 (= e!66327 e!66334)))

(assert (=> b!101894 (= c!17557 (and (not (= (bvand (extraKeys!2347 (v!2845 (underlying!348 thiss!992))) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand (extraKeys!2347 (v!2845 (underlying!348 thiss!992))) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun bm!10619 () Bool)

(assert (=> bm!10619 (= call!10626 (contains!816 lt!51692 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!101895 () Bool)

(declare-fun e!66337 () Unit!3112)

(declare-fun Unit!3122 () Unit!3112)

(assert (=> b!101895 (= e!66337 Unit!3122)))

(declare-fun b!101896 () Bool)

(assert (=> b!101896 (= e!66333 call!10625)))

(declare-fun b!101897 () Bool)

(assert (=> b!101897 (= e!66330 (not call!10624))))

(declare-fun bm!10620 () Bool)

(assert (=> bm!10620 (= call!10620 call!10621)))

(declare-fun b!101898 () Bool)

(assert (=> b!101898 (= e!66326 (= (apply!95 lt!51692 #b0000000000000000000000000000000000000000000000000000000000000000) (zeroValue!2414 (v!2845 (underlying!348 thiss!992)))))))

(declare-fun b!101899 () Bool)

(declare-fun lt!51689 () Unit!3112)

(assert (=> b!101899 (= e!66337 lt!51689)))

(declare-fun lt!51674 () ListLongMap!1563)

(assert (=> b!101899 (= lt!51674 (getCurrentListMapNoExtraKeys!105 (_keys!4236 (v!2845 (underlying!348 thiss!992))) (_values!2519 (v!2845 (underlying!348 thiss!992))) (mask!6659 (v!2845 (underlying!348 thiss!992))) (extraKeys!2347 (v!2845 (underlying!348 thiss!992))) (zeroValue!2414 (v!2845 (underlying!348 thiss!992))) (minValue!2414 (v!2845 (underlying!348 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2536 (v!2845 (underlying!348 thiss!992)))))))

(declare-fun lt!51677 () (_ BitVec 64))

(assert (=> b!101899 (= lt!51677 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!51687 () (_ BitVec 64))

(assert (=> b!101899 (= lt!51687 (select (arr!2032 (_keys!4236 (v!2845 (underlying!348 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)))))

(declare-fun lt!51672 () Unit!3112)

(declare-fun addStillContains!71 (ListLongMap!1563 (_ BitVec 64) V!3179 (_ BitVec 64)) Unit!3112)

(assert (=> b!101899 (= lt!51672 (addStillContains!71 lt!51674 lt!51677 (zeroValue!2414 (v!2845 (underlying!348 thiss!992))) lt!51687))))

(assert (=> b!101899 (contains!816 (+!141 lt!51674 (tuple2!2377 lt!51677 (zeroValue!2414 (v!2845 (underlying!348 thiss!992))))) lt!51687)))

(declare-fun lt!51676 () Unit!3112)

(assert (=> b!101899 (= lt!51676 lt!51672)))

(declare-fun lt!51688 () ListLongMap!1563)

(assert (=> b!101899 (= lt!51688 (getCurrentListMapNoExtraKeys!105 (_keys!4236 (v!2845 (underlying!348 thiss!992))) (_values!2519 (v!2845 (underlying!348 thiss!992))) (mask!6659 (v!2845 (underlying!348 thiss!992))) (extraKeys!2347 (v!2845 (underlying!348 thiss!992))) (zeroValue!2414 (v!2845 (underlying!348 thiss!992))) (minValue!2414 (v!2845 (underlying!348 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2536 (v!2845 (underlying!348 thiss!992)))))))

(declare-fun lt!51683 () (_ BitVec 64))

(assert (=> b!101899 (= lt!51683 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!51682 () (_ BitVec 64))

(assert (=> b!101899 (= lt!51682 (select (arr!2032 (_keys!4236 (v!2845 (underlying!348 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)))))

(declare-fun lt!51673 () Unit!3112)

(declare-fun addApplyDifferent!71 (ListLongMap!1563 (_ BitVec 64) V!3179 (_ BitVec 64)) Unit!3112)

(assert (=> b!101899 (= lt!51673 (addApplyDifferent!71 lt!51688 lt!51683 (minValue!2414 (v!2845 (underlying!348 thiss!992))) lt!51682))))

(assert (=> b!101899 (= (apply!95 (+!141 lt!51688 (tuple2!2377 lt!51683 (minValue!2414 (v!2845 (underlying!348 thiss!992))))) lt!51682) (apply!95 lt!51688 lt!51682))))

(declare-fun lt!51686 () Unit!3112)

(assert (=> b!101899 (= lt!51686 lt!51673)))

(declare-fun lt!51679 () ListLongMap!1563)

(assert (=> b!101899 (= lt!51679 (getCurrentListMapNoExtraKeys!105 (_keys!4236 (v!2845 (underlying!348 thiss!992))) (_values!2519 (v!2845 (underlying!348 thiss!992))) (mask!6659 (v!2845 (underlying!348 thiss!992))) (extraKeys!2347 (v!2845 (underlying!348 thiss!992))) (zeroValue!2414 (v!2845 (underlying!348 thiss!992))) (minValue!2414 (v!2845 (underlying!348 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2536 (v!2845 (underlying!348 thiss!992)))))))

(declare-fun lt!51685 () (_ BitVec 64))

(assert (=> b!101899 (= lt!51685 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!51680 () (_ BitVec 64))

(assert (=> b!101899 (= lt!51680 (select (arr!2032 (_keys!4236 (v!2845 (underlying!348 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)))))

(declare-fun lt!51690 () Unit!3112)

(assert (=> b!101899 (= lt!51690 (addApplyDifferent!71 lt!51679 lt!51685 (zeroValue!2414 (v!2845 (underlying!348 thiss!992))) lt!51680))))

(assert (=> b!101899 (= (apply!95 (+!141 lt!51679 (tuple2!2377 lt!51685 (zeroValue!2414 (v!2845 (underlying!348 thiss!992))))) lt!51680) (apply!95 lt!51679 lt!51680))))

(declare-fun lt!51691 () Unit!3112)

(assert (=> b!101899 (= lt!51691 lt!51690)))

(declare-fun lt!51675 () ListLongMap!1563)

(assert (=> b!101899 (= lt!51675 (getCurrentListMapNoExtraKeys!105 (_keys!4236 (v!2845 (underlying!348 thiss!992))) (_values!2519 (v!2845 (underlying!348 thiss!992))) (mask!6659 (v!2845 (underlying!348 thiss!992))) (extraKeys!2347 (v!2845 (underlying!348 thiss!992))) (zeroValue!2414 (v!2845 (underlying!348 thiss!992))) (minValue!2414 (v!2845 (underlying!348 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2536 (v!2845 (underlying!348 thiss!992)))))))

(declare-fun lt!51684 () (_ BitVec 64))

(assert (=> b!101899 (= lt!51684 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!51671 () (_ BitVec 64))

(assert (=> b!101899 (= lt!51671 (select (arr!2032 (_keys!4236 (v!2845 (underlying!348 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)))))

(assert (=> b!101899 (= lt!51689 (addApplyDifferent!71 lt!51675 lt!51684 (minValue!2414 (v!2845 (underlying!348 thiss!992))) lt!51671))))

(assert (=> b!101899 (= (apply!95 (+!141 lt!51675 (tuple2!2377 lt!51684 (minValue!2414 (v!2845 (underlying!348 thiss!992))))) lt!51671) (apply!95 lt!51675 lt!51671))))

(declare-fun b!101900 () Bool)

(declare-fun c!17555 () Bool)

(assert (=> b!101900 (= c!17555 (and (not (= (bvand (extraKeys!2347 (v!2845 (underlying!348 thiss!992))) #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand (extraKeys!2347 (v!2845 (underlying!348 thiss!992))) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!101900 (= e!66334 e!66333)))

(declare-fun b!101901 () Bool)

(declare-fun res!51004 () Bool)

(assert (=> b!101901 (=> (not res!51004) (not e!66331))))

(assert (=> b!101901 (= res!51004 e!66336)))

(declare-fun res!51001 () Bool)

(assert (=> b!101901 (=> res!51001 e!66336)))

(assert (=> b!101901 (= res!51001 (not e!66329))))

(declare-fun res!51005 () Bool)

(assert (=> b!101901 (=> (not res!51005) (not e!66329))))

(assert (=> b!101901 (= res!51005 (bvslt (bvadd #b00000000000000000000000000000001 from!355) (size!2285 (_keys!4236 (v!2845 (underlying!348 thiss!992))))))))

(declare-fun bm!10621 () Bool)

(assert (=> bm!10621 (= call!10624 (contains!816 lt!51692 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!101902 () Bool)

(assert (=> b!101902 (= e!66325 (= (apply!95 lt!51692 #b1000000000000000000000000000000000000000000000000000000000000000) (minValue!2414 (v!2845 (underlying!348 thiss!992)))))))

(declare-fun d!27561 () Bool)

(assert (=> d!27561 e!66331))

(declare-fun res!51002 () Bool)

(assert (=> d!27561 (=> (not res!51002) (not e!66331))))

(assert (=> d!27561 (= res!51002 (or (bvsge (bvadd #b00000000000000000000000000000001 from!355) (size!2285 (_keys!4236 (v!2845 (underlying!348 thiss!992))))) (and (bvsge (bvadd #b00000000000000000000000000000001 from!355) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!355) (size!2285 (_keys!4236 (v!2845 (underlying!348 thiss!992))))))))))

(declare-fun lt!51678 () ListLongMap!1563)

(assert (=> d!27561 (= lt!51692 lt!51678)))

(declare-fun lt!51681 () Unit!3112)

(assert (=> d!27561 (= lt!51681 e!66337)))

(declare-fun c!17560 () Bool)

(declare-fun e!66332 () Bool)

(assert (=> d!27561 (= c!17560 e!66332)))

(declare-fun res!51003 () Bool)

(assert (=> d!27561 (=> (not res!51003) (not e!66332))))

(assert (=> d!27561 (= res!51003 (bvslt (bvadd #b00000000000000000000000000000001 from!355) (size!2285 (_keys!4236 (v!2845 (underlying!348 thiss!992))))))))

(assert (=> d!27561 (= lt!51678 e!66327)))

(assert (=> d!27561 (= c!17558 (and (not (= (bvand (extraKeys!2347 (v!2845 (underlying!348 thiss!992))) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (extraKeys!2347 (v!2845 (underlying!348 thiss!992))) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!27561 (validMask!0 (mask!6659 (v!2845 (underlying!348 thiss!992))))))

(assert (=> d!27561 (= (getCurrentListMap!477 (_keys!4236 (v!2845 (underlying!348 thiss!992))) (_values!2519 (v!2845 (underlying!348 thiss!992))) (mask!6659 (v!2845 (underlying!348 thiss!992))) (extraKeys!2347 (v!2845 (underlying!348 thiss!992))) (zeroValue!2414 (v!2845 (underlying!348 thiss!992))) (minValue!2414 (v!2845 (underlying!348 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2536 (v!2845 (underlying!348 thiss!992)))) lt!51692)))

(declare-fun b!101903 () Bool)

(assert (=> b!101903 (= e!66334 call!10620)))

(declare-fun b!101904 () Bool)

(assert (=> b!101904 (= e!66335 (not call!10626))))

(declare-fun bm!10622 () Bool)

(assert (=> bm!10622 (= call!10625 call!10622)))

(declare-fun bm!10623 () Bool)

(assert (=> bm!10623 (= call!10622 call!10623)))

(declare-fun b!101905 () Bool)

(assert (=> b!101905 (= e!66332 (validKeyInArray!0 (select (arr!2032 (_keys!4236 (v!2845 (underlying!348 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))))))

(assert (= (and d!27561 c!17558) b!101886))

(assert (= (and d!27561 (not c!17558)) b!101894))

(assert (= (and b!101894 c!17557) b!101903))

(assert (= (and b!101894 (not c!17557)) b!101900))

(assert (= (and b!101900 c!17555) b!101888))

(assert (= (and b!101900 (not c!17555)) b!101896))

(assert (= (or b!101888 b!101896) bm!10622))

(assert (= (or b!101903 bm!10622) bm!10623))

(assert (= (or b!101903 b!101888) bm!10620))

(assert (= (or b!101886 bm!10623) bm!10617))

(assert (= (or b!101886 bm!10620) bm!10618))

(assert (= (and d!27561 res!51003) b!101905))

(assert (= (and d!27561 c!17560) b!101899))

(assert (= (and d!27561 (not c!17560)) b!101895))

(assert (= (and d!27561 res!51002) b!101901))

(assert (= (and b!101901 res!51005) b!101890))

(assert (= (and b!101901 (not res!51001)) b!101893))

(assert (= (and b!101893 res!50997) b!101889))

(assert (= (and b!101901 res!51004) b!101887))

(assert (= (and b!101887 c!17556) b!101891))

(assert (= (and b!101887 (not c!17556)) b!101904))

(assert (= (and b!101891 res!51000) b!101898))

(assert (= (or b!101891 b!101904) bm!10619))

(assert (= (and b!101887 res!50998) b!101892))

(assert (= (and b!101892 c!17559) b!101885))

(assert (= (and b!101892 (not c!17559)) b!101897))

(assert (= (and b!101885 res!50999) b!101902))

(assert (= (or b!101885 b!101897) bm!10621))

(declare-fun b_lambda!4573 () Bool)

(assert (=> (not b_lambda!4573) (not b!101889)))

(assert (=> b!101889 t!5639))

(declare-fun b_and!6277 () Bool)

(assert (= b_and!6265 (and (=> t!5639 result!3353) b_and!6277)))

(assert (=> b!101889 t!5641))

(declare-fun b_and!6279 () Bool)

(assert (= b_and!6267 (and (=> t!5641 result!3357) b_and!6279)))

(declare-fun m!112743 () Bool)

(assert (=> bm!10619 m!112743))

(assert (=> b!101889 m!112637))

(declare-fun m!112745 () Bool)

(assert (=> b!101889 m!112745))

(assert (=> b!101889 m!112543))

(declare-fun m!112747 () Bool)

(assert (=> b!101889 m!112747))

(assert (=> b!101889 m!112543))

(declare-fun m!112749 () Bool)

(assert (=> b!101889 m!112749))

(assert (=> b!101889 m!112747))

(assert (=> b!101889 m!112637))

(declare-fun m!112751 () Bool)

(assert (=> b!101886 m!112751))

(declare-fun m!112753 () Bool)

(assert (=> b!101898 m!112753))

(declare-fun m!112755 () Bool)

(assert (=> bm!10618 m!112755))

(assert (=> b!101890 m!112637))

(assert (=> b!101890 m!112637))

(declare-fun m!112757 () Bool)

(assert (=> b!101890 m!112757))

(assert (=> d!27561 m!112583))

(declare-fun m!112759 () Bool)

(assert (=> bm!10621 m!112759))

(declare-fun m!112761 () Bool)

(assert (=> b!101899 m!112761))

(declare-fun m!112763 () Bool)

(assert (=> b!101899 m!112763))

(declare-fun m!112765 () Bool)

(assert (=> b!101899 m!112765))

(declare-fun m!112767 () Bool)

(assert (=> b!101899 m!112767))

(declare-fun m!112769 () Bool)

(assert (=> b!101899 m!112769))

(assert (=> b!101899 m!112765))

(declare-fun m!112771 () Bool)

(assert (=> b!101899 m!112771))

(declare-fun m!112773 () Bool)

(assert (=> b!101899 m!112773))

(declare-fun m!112775 () Bool)

(assert (=> b!101899 m!112775))

(assert (=> b!101899 m!112773))

(declare-fun m!112777 () Bool)

(assert (=> b!101899 m!112777))

(declare-fun m!112779 () Bool)

(assert (=> b!101899 m!112779))

(declare-fun m!112781 () Bool)

(assert (=> b!101899 m!112781))

(declare-fun m!112783 () Bool)

(assert (=> b!101899 m!112783))

(assert (=> b!101899 m!112781))

(declare-fun m!112785 () Bool)

(assert (=> b!101899 m!112785))

(declare-fun m!112787 () Bool)

(assert (=> b!101899 m!112787))

(assert (=> b!101899 m!112769))

(declare-fun m!112789 () Bool)

(assert (=> b!101899 m!112789))

(declare-fun m!112791 () Bool)

(assert (=> b!101899 m!112791))

(assert (=> b!101899 m!112637))

(assert (=> b!101893 m!112637))

(assert (=> b!101893 m!112637))

(declare-fun m!112793 () Bool)

(assert (=> b!101893 m!112793))

(assert (=> b!101905 m!112637))

(assert (=> b!101905 m!112637))

(assert (=> b!101905 m!112757))

(assert (=> bm!10617 m!112791))

(declare-fun m!112795 () Bool)

(assert (=> b!101902 m!112795))

(assert (=> b!101574 d!27561))

(declare-fun d!27563 () Bool)

(assert (=> d!27563 (= (valid!394 thiss!992) (valid!393 (v!2845 (underlying!348 thiss!992))))))

(declare-fun bs!4200 () Bool)

(assert (= bs!4200 d!27563))

(declare-fun m!112797 () Bool)

(assert (=> bs!4200 m!112797))

(assert (=> start!12054 d!27563))

(declare-fun mapIsEmpty!3831 () Bool)

(declare-fun mapRes!3831 () Bool)

(assert (=> mapIsEmpty!3831 mapRes!3831))

(declare-fun b!101913 () Bool)

(declare-fun e!66342 () Bool)

(assert (=> b!101913 (= e!66342 tp_is_empty!2649)))

(declare-fun b!101912 () Bool)

(declare-fun e!66343 () Bool)

(assert (=> b!101912 (= e!66343 tp_is_empty!2649)))

(declare-fun condMapEmpty!3831 () Bool)

(declare-fun mapDefault!3831 () ValueCell!981)

(assert (=> mapNonEmpty!3822 (= condMapEmpty!3831 (= mapRest!3821 ((as const (Array (_ BitVec 32) ValueCell!981)) mapDefault!3831)))))

(assert (=> mapNonEmpty!3822 (= tp!9702 (and e!66342 mapRes!3831))))

(declare-fun mapNonEmpty!3831 () Bool)

(declare-fun tp!9717 () Bool)

(assert (=> mapNonEmpty!3831 (= mapRes!3831 (and tp!9717 e!66343))))

(declare-fun mapKey!3831 () (_ BitVec 32))

(declare-fun mapValue!3831 () ValueCell!981)

(declare-fun mapRest!3831 () (Array (_ BitVec 32) ValueCell!981))

(assert (=> mapNonEmpty!3831 (= mapRest!3821 (store mapRest!3831 mapKey!3831 mapValue!3831))))

(assert (= (and mapNonEmpty!3822 condMapEmpty!3831) mapIsEmpty!3831))

(assert (= (and mapNonEmpty!3822 (not condMapEmpty!3831)) mapNonEmpty!3831))

(assert (= (and mapNonEmpty!3831 ((_ is ValueCellFull!981) mapValue!3831)) b!101912))

(assert (= (and mapNonEmpty!3822 ((_ is ValueCellFull!981) mapDefault!3831)) b!101913))

(declare-fun m!112799 () Bool)

(assert (=> mapNonEmpty!3831 m!112799))

(declare-fun mapIsEmpty!3832 () Bool)

(declare-fun mapRes!3832 () Bool)

(assert (=> mapIsEmpty!3832 mapRes!3832))

(declare-fun b!101915 () Bool)

(declare-fun e!66344 () Bool)

(assert (=> b!101915 (= e!66344 tp_is_empty!2649)))

(declare-fun b!101914 () Bool)

(declare-fun e!66345 () Bool)

(assert (=> b!101914 (= e!66345 tp_is_empty!2649)))

(declare-fun condMapEmpty!3832 () Bool)

(declare-fun mapDefault!3832 () ValueCell!981)

(assert (=> mapNonEmpty!3821 (= condMapEmpty!3832 (= mapRest!3822 ((as const (Array (_ BitVec 32) ValueCell!981)) mapDefault!3832)))))

(assert (=> mapNonEmpty!3821 (= tp!9701 (and e!66344 mapRes!3832))))

(declare-fun mapNonEmpty!3832 () Bool)

(declare-fun tp!9718 () Bool)

(assert (=> mapNonEmpty!3832 (= mapRes!3832 (and tp!9718 e!66345))))

(declare-fun mapValue!3832 () ValueCell!981)

(declare-fun mapKey!3832 () (_ BitVec 32))

(declare-fun mapRest!3832 () (Array (_ BitVec 32) ValueCell!981))

(assert (=> mapNonEmpty!3832 (= mapRest!3822 (store mapRest!3832 mapKey!3832 mapValue!3832))))

(assert (= (and mapNonEmpty!3821 condMapEmpty!3832) mapIsEmpty!3832))

(assert (= (and mapNonEmpty!3821 (not condMapEmpty!3832)) mapNonEmpty!3832))

(assert (= (and mapNonEmpty!3832 ((_ is ValueCellFull!981) mapValue!3832)) b!101914))

(assert (= (and mapNonEmpty!3821 ((_ is ValueCellFull!981) mapDefault!3832)) b!101915))

(declare-fun m!112801 () Bool)

(assert (=> mapNonEmpty!3832 m!112801))

(declare-fun b_lambda!4575 () Bool)

(assert (= b_lambda!4573 (or (and b!101587 b_free!2465) (and b!101570 b_free!2467 (= (defaultEntry!2536 newMap!16) (defaultEntry!2536 (v!2845 (underlying!348 thiss!992))))) b_lambda!4575)))

(check-sat (not bm!10597) (not b!101905) (not d!27563) (not b!101830) (not b!101685) (not b_lambda!4575) (not b!101678) (not b!101804) (not b!101886) (not d!27533) (not bm!10593) (not b!101677) (not b_lambda!4571) (not b!101899) (not d!27559) (not d!27529) (not bm!10580) (not bm!10527) (not b!101821) tp_is_empty!2649 (not bm!10594) (not d!27551) (not mapNonEmpty!3832) (not bm!10619) (not bm!10588) (not b!101695) (not d!27547) (not b!101780) (not bm!10589) (not b!101789) (not b!101898) (not b_next!2465) (not bm!10582) (not b!101828) (not bm!10617) (not bm!10526) (not b!101829) (not b!101682) b_and!6279 (not bm!10621) (not b!101683) (not b!101665) (not d!27527) (not b!101889) (not d!27561) (not b!101660) (not bm!10578) (not b_next!2467) (not b!101893) (not bm!10602) (not b!101902) (not bm!10579) (not bm!10591) (not b!101820) (not bm!10585) (not bm!10618) (not b!101782) (not b!101890) (not b!101778) b_and!6277 (not b!101792) (not bm!10599) (not b!101680) (not bm!10576) (not b!101840) (not b!101693) (not d!27545) (not b!101842) (not mapNonEmpty!3831))
(check-sat b_and!6277 b_and!6279 (not b_next!2465) (not b_next!2467))
(get-model)

(declare-fun d!27565 () Bool)

(assert (=> d!27565 (= (validKeyInArray!0 (select (arr!2032 (_keys!4236 (v!2845 (underlying!348 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))) (and (not (= (select (arr!2032 (_keys!4236 (v!2845 (underlying!348 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!2032 (_keys!4236 (v!2845 (underlying!348 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!101905 d!27565))

(declare-fun b!101916 () Bool)

(declare-fun e!66351 () Bool)

(declare-fun e!66346 () Bool)

(assert (=> b!101916 (= e!66351 e!66346)))

(declare-fun res!51008 () Bool)

(declare-fun call!10631 () Bool)

(assert (=> b!101916 (= res!51008 call!10631)))

(assert (=> b!101916 (=> (not res!51008) (not e!66346))))

(declare-fun e!66348 () ListLongMap!1563)

(declare-fun b!101917 () Bool)

(declare-fun call!10628 () ListLongMap!1563)

(assert (=> b!101917 (= e!66348 (+!141 call!10628 (tuple2!2377 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!17536 (ite c!17525 (minValue!2414 newMap!16) (get!1316 (select (arr!2033 (_values!2519 (v!2845 (underlying!348 thiss!992)))) from!355) (dynLambda!383 (defaultEntry!2536 (v!2845 (underlying!348 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (minValue!2414 newMap!16)))))))

(declare-fun b!101918 () Bool)

(declare-fun res!51007 () Bool)

(declare-fun e!66352 () Bool)

(assert (=> b!101918 (=> (not res!51007) (not e!66352))))

(declare-fun e!66356 () Bool)

(assert (=> b!101918 (= res!51007 e!66356)))

(declare-fun c!17562 () Bool)

(assert (=> b!101918 (= c!17562 (not (= (bvand (ite c!17536 (ite c!17525 (extraKeys!2347 newMap!16) lt!51611) (extraKeys!2347 newMap!16)) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun bm!10624 () Bool)

(declare-fun call!10630 () ListLongMap!1563)

(assert (=> bm!10624 (= call!10630 (getCurrentListMapNoExtraKeys!105 (_keys!4236 newMap!16) (ite c!17536 (_values!2519 newMap!16) lt!51613) (mask!6659 newMap!16) (ite c!17536 (ite c!17525 (extraKeys!2347 newMap!16) lt!51611) (extraKeys!2347 newMap!16)) (zeroValue!2414 newMap!16) (ite c!17536 (ite c!17525 (minValue!2414 newMap!16) (get!1316 (select (arr!2033 (_values!2519 (v!2845 (underlying!348 thiss!992)))) from!355) (dynLambda!383 (defaultEntry!2536 (v!2845 (underlying!348 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (minValue!2414 newMap!16)) #b00000000000000000000000000000000 (defaultEntry!2536 newMap!16)))))

(declare-fun b!101919 () Bool)

(declare-fun e!66354 () ListLongMap!1563)

(declare-fun call!10627 () ListLongMap!1563)

(assert (=> b!101919 (= e!66354 call!10627)))

(declare-fun b!101920 () Bool)

(declare-fun lt!51714 () ListLongMap!1563)

(declare-fun e!66349 () Bool)

(assert (=> b!101920 (= e!66349 (= (apply!95 lt!51714 (select (arr!2032 (_keys!4236 newMap!16)) #b00000000000000000000000000000000)) (get!1316 (select (arr!2033 (ite c!17536 (_values!2519 newMap!16) lt!51613)) #b00000000000000000000000000000000) (dynLambda!383 (defaultEntry!2536 newMap!16) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!101920 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!2286 (ite c!17536 (_values!2519 newMap!16) lt!51613))))))

(assert (=> b!101920 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!2285 (_keys!4236 newMap!16))))))

(declare-fun b!101921 () Bool)

(declare-fun e!66350 () Bool)

(assert (=> b!101921 (= e!66350 (validKeyInArray!0 (select (arr!2032 (_keys!4236 newMap!16)) #b00000000000000000000000000000000)))))

(declare-fun c!17564 () Bool)

(declare-fun call!10629 () ListLongMap!1563)

(declare-fun bm!10625 () Bool)

(declare-fun call!10632 () ListLongMap!1563)

(declare-fun c!17563 () Bool)

(assert (=> bm!10625 (= call!10628 (+!141 (ite c!17564 call!10630 (ite c!17563 call!10629 call!10632)) (ite (or c!17564 c!17563) (tuple2!2377 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2414 newMap!16)) (tuple2!2377 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!17536 (ite c!17525 (minValue!2414 newMap!16) (get!1316 (select (arr!2033 (_values!2519 (v!2845 (underlying!348 thiss!992)))) from!355) (dynLambda!383 (defaultEntry!2536 (v!2845 (underlying!348 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (minValue!2414 newMap!16))))))))

(declare-fun b!101922 () Bool)

(declare-fun e!66347 () Bool)

(assert (=> b!101922 (= e!66356 e!66347)))

(declare-fun res!51009 () Bool)

(declare-fun call!10633 () Bool)

(assert (=> b!101922 (= res!51009 call!10633)))

(assert (=> b!101922 (=> (not res!51009) (not e!66347))))

(declare-fun b!101923 () Bool)

(assert (=> b!101923 (= e!66352 e!66351)))

(declare-fun c!17565 () Bool)

(assert (=> b!101923 (= c!17565 (not (= (bvand (ite c!17536 (ite c!17525 (extraKeys!2347 newMap!16) lt!51611) (extraKeys!2347 newMap!16)) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!101924 () Bool)

(declare-fun e!66357 () Bool)

(assert (=> b!101924 (= e!66357 e!66349)))

(declare-fun res!51006 () Bool)

(assert (=> b!101924 (=> (not res!51006) (not e!66349))))

(assert (=> b!101924 (= res!51006 (contains!816 lt!51714 (select (arr!2032 (_keys!4236 newMap!16)) #b00000000000000000000000000000000)))))

(assert (=> b!101924 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!2285 (_keys!4236 newMap!16))))))

(declare-fun b!101925 () Bool)

(declare-fun e!66355 () ListLongMap!1563)

(assert (=> b!101925 (= e!66348 e!66355)))

(assert (=> b!101925 (= c!17563 (and (not (= (bvand (ite c!17536 (ite c!17525 (extraKeys!2347 newMap!16) lt!51611) (extraKeys!2347 newMap!16)) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand (ite c!17536 (ite c!17525 (extraKeys!2347 newMap!16) lt!51611) (extraKeys!2347 newMap!16)) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun bm!10626 () Bool)

(assert (=> bm!10626 (= call!10633 (contains!816 lt!51714 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!101926 () Bool)

(declare-fun e!66358 () Unit!3112)

(declare-fun Unit!3123 () Unit!3112)

(assert (=> b!101926 (= e!66358 Unit!3123)))

(declare-fun b!101927 () Bool)

(assert (=> b!101927 (= e!66354 call!10632)))

(declare-fun b!101928 () Bool)

(assert (=> b!101928 (= e!66351 (not call!10631))))

(declare-fun bm!10627 () Bool)

(assert (=> bm!10627 (= call!10627 call!10628)))

(declare-fun b!101929 () Bool)

(assert (=> b!101929 (= e!66347 (= (apply!95 lt!51714 #b0000000000000000000000000000000000000000000000000000000000000000) (zeroValue!2414 newMap!16)))))

(declare-fun b!101930 () Bool)

(declare-fun lt!51711 () Unit!3112)

(assert (=> b!101930 (= e!66358 lt!51711)))

(declare-fun lt!51696 () ListLongMap!1563)

(assert (=> b!101930 (= lt!51696 (getCurrentListMapNoExtraKeys!105 (_keys!4236 newMap!16) (ite c!17536 (_values!2519 newMap!16) lt!51613) (mask!6659 newMap!16) (ite c!17536 (ite c!17525 (extraKeys!2347 newMap!16) lt!51611) (extraKeys!2347 newMap!16)) (zeroValue!2414 newMap!16) (ite c!17536 (ite c!17525 (minValue!2414 newMap!16) (get!1316 (select (arr!2033 (_values!2519 (v!2845 (underlying!348 thiss!992)))) from!355) (dynLambda!383 (defaultEntry!2536 (v!2845 (underlying!348 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (minValue!2414 newMap!16)) #b00000000000000000000000000000000 (defaultEntry!2536 newMap!16)))))

(declare-fun lt!51699 () (_ BitVec 64))

(assert (=> b!101930 (= lt!51699 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!51709 () (_ BitVec 64))

(assert (=> b!101930 (= lt!51709 (select (arr!2032 (_keys!4236 newMap!16)) #b00000000000000000000000000000000))))

(declare-fun lt!51694 () Unit!3112)

(assert (=> b!101930 (= lt!51694 (addStillContains!71 lt!51696 lt!51699 (zeroValue!2414 newMap!16) lt!51709))))

(assert (=> b!101930 (contains!816 (+!141 lt!51696 (tuple2!2377 lt!51699 (zeroValue!2414 newMap!16))) lt!51709)))

(declare-fun lt!51698 () Unit!3112)

(assert (=> b!101930 (= lt!51698 lt!51694)))

(declare-fun lt!51710 () ListLongMap!1563)

(assert (=> b!101930 (= lt!51710 (getCurrentListMapNoExtraKeys!105 (_keys!4236 newMap!16) (ite c!17536 (_values!2519 newMap!16) lt!51613) (mask!6659 newMap!16) (ite c!17536 (ite c!17525 (extraKeys!2347 newMap!16) lt!51611) (extraKeys!2347 newMap!16)) (zeroValue!2414 newMap!16) (ite c!17536 (ite c!17525 (minValue!2414 newMap!16) (get!1316 (select (arr!2033 (_values!2519 (v!2845 (underlying!348 thiss!992)))) from!355) (dynLambda!383 (defaultEntry!2536 (v!2845 (underlying!348 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (minValue!2414 newMap!16)) #b00000000000000000000000000000000 (defaultEntry!2536 newMap!16)))))

(declare-fun lt!51705 () (_ BitVec 64))

(assert (=> b!101930 (= lt!51705 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!51704 () (_ BitVec 64))

(assert (=> b!101930 (= lt!51704 (select (arr!2032 (_keys!4236 newMap!16)) #b00000000000000000000000000000000))))

(declare-fun lt!51695 () Unit!3112)

(assert (=> b!101930 (= lt!51695 (addApplyDifferent!71 lt!51710 lt!51705 (ite c!17536 (ite c!17525 (minValue!2414 newMap!16) (get!1316 (select (arr!2033 (_values!2519 (v!2845 (underlying!348 thiss!992)))) from!355) (dynLambda!383 (defaultEntry!2536 (v!2845 (underlying!348 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (minValue!2414 newMap!16)) lt!51704))))

(assert (=> b!101930 (= (apply!95 (+!141 lt!51710 (tuple2!2377 lt!51705 (ite c!17536 (ite c!17525 (minValue!2414 newMap!16) (get!1316 (select (arr!2033 (_values!2519 (v!2845 (underlying!348 thiss!992)))) from!355) (dynLambda!383 (defaultEntry!2536 (v!2845 (underlying!348 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (minValue!2414 newMap!16)))) lt!51704) (apply!95 lt!51710 lt!51704))))

(declare-fun lt!51708 () Unit!3112)

(assert (=> b!101930 (= lt!51708 lt!51695)))

(declare-fun lt!51701 () ListLongMap!1563)

(assert (=> b!101930 (= lt!51701 (getCurrentListMapNoExtraKeys!105 (_keys!4236 newMap!16) (ite c!17536 (_values!2519 newMap!16) lt!51613) (mask!6659 newMap!16) (ite c!17536 (ite c!17525 (extraKeys!2347 newMap!16) lt!51611) (extraKeys!2347 newMap!16)) (zeroValue!2414 newMap!16) (ite c!17536 (ite c!17525 (minValue!2414 newMap!16) (get!1316 (select (arr!2033 (_values!2519 (v!2845 (underlying!348 thiss!992)))) from!355) (dynLambda!383 (defaultEntry!2536 (v!2845 (underlying!348 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (minValue!2414 newMap!16)) #b00000000000000000000000000000000 (defaultEntry!2536 newMap!16)))))

(declare-fun lt!51707 () (_ BitVec 64))

(assert (=> b!101930 (= lt!51707 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!51702 () (_ BitVec 64))

(assert (=> b!101930 (= lt!51702 (select (arr!2032 (_keys!4236 newMap!16)) #b00000000000000000000000000000000))))

(declare-fun lt!51712 () Unit!3112)

(assert (=> b!101930 (= lt!51712 (addApplyDifferent!71 lt!51701 lt!51707 (zeroValue!2414 newMap!16) lt!51702))))

(assert (=> b!101930 (= (apply!95 (+!141 lt!51701 (tuple2!2377 lt!51707 (zeroValue!2414 newMap!16))) lt!51702) (apply!95 lt!51701 lt!51702))))

(declare-fun lt!51713 () Unit!3112)

(assert (=> b!101930 (= lt!51713 lt!51712)))

(declare-fun lt!51697 () ListLongMap!1563)

(assert (=> b!101930 (= lt!51697 (getCurrentListMapNoExtraKeys!105 (_keys!4236 newMap!16) (ite c!17536 (_values!2519 newMap!16) lt!51613) (mask!6659 newMap!16) (ite c!17536 (ite c!17525 (extraKeys!2347 newMap!16) lt!51611) (extraKeys!2347 newMap!16)) (zeroValue!2414 newMap!16) (ite c!17536 (ite c!17525 (minValue!2414 newMap!16) (get!1316 (select (arr!2033 (_values!2519 (v!2845 (underlying!348 thiss!992)))) from!355) (dynLambda!383 (defaultEntry!2536 (v!2845 (underlying!348 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (minValue!2414 newMap!16)) #b00000000000000000000000000000000 (defaultEntry!2536 newMap!16)))))

(declare-fun lt!51706 () (_ BitVec 64))

(assert (=> b!101930 (= lt!51706 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!51693 () (_ BitVec 64))

(assert (=> b!101930 (= lt!51693 (select (arr!2032 (_keys!4236 newMap!16)) #b00000000000000000000000000000000))))

(assert (=> b!101930 (= lt!51711 (addApplyDifferent!71 lt!51697 lt!51706 (ite c!17536 (ite c!17525 (minValue!2414 newMap!16) (get!1316 (select (arr!2033 (_values!2519 (v!2845 (underlying!348 thiss!992)))) from!355) (dynLambda!383 (defaultEntry!2536 (v!2845 (underlying!348 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (minValue!2414 newMap!16)) lt!51693))))

(assert (=> b!101930 (= (apply!95 (+!141 lt!51697 (tuple2!2377 lt!51706 (ite c!17536 (ite c!17525 (minValue!2414 newMap!16) (get!1316 (select (arr!2033 (_values!2519 (v!2845 (underlying!348 thiss!992)))) from!355) (dynLambda!383 (defaultEntry!2536 (v!2845 (underlying!348 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (minValue!2414 newMap!16)))) lt!51693) (apply!95 lt!51697 lt!51693))))

(declare-fun b!101931 () Bool)

(declare-fun c!17561 () Bool)

(assert (=> b!101931 (= c!17561 (and (not (= (bvand (ite c!17536 (ite c!17525 (extraKeys!2347 newMap!16) lt!51611) (extraKeys!2347 newMap!16)) #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand (ite c!17536 (ite c!17525 (extraKeys!2347 newMap!16) lt!51611) (extraKeys!2347 newMap!16)) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!101931 (= e!66355 e!66354)))

(declare-fun b!101932 () Bool)

(declare-fun res!51013 () Bool)

(assert (=> b!101932 (=> (not res!51013) (not e!66352))))

(assert (=> b!101932 (= res!51013 e!66357)))

(declare-fun res!51010 () Bool)

(assert (=> b!101932 (=> res!51010 e!66357)))

(assert (=> b!101932 (= res!51010 (not e!66350))))

(declare-fun res!51014 () Bool)

(assert (=> b!101932 (=> (not res!51014) (not e!66350))))

(assert (=> b!101932 (= res!51014 (bvslt #b00000000000000000000000000000000 (size!2285 (_keys!4236 newMap!16))))))

(declare-fun bm!10628 () Bool)

(assert (=> bm!10628 (= call!10631 (contains!816 lt!51714 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!101933 () Bool)

(assert (=> b!101933 (= e!66346 (= (apply!95 lt!51714 #b1000000000000000000000000000000000000000000000000000000000000000) (ite c!17536 (ite c!17525 (minValue!2414 newMap!16) (get!1316 (select (arr!2033 (_values!2519 (v!2845 (underlying!348 thiss!992)))) from!355) (dynLambda!383 (defaultEntry!2536 (v!2845 (underlying!348 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (minValue!2414 newMap!16))))))

(declare-fun d!27567 () Bool)

(assert (=> d!27567 e!66352))

(declare-fun res!51011 () Bool)

(assert (=> d!27567 (=> (not res!51011) (not e!66352))))

(assert (=> d!27567 (= res!51011 (or (bvsge #b00000000000000000000000000000000 (size!2285 (_keys!4236 newMap!16))) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!2285 (_keys!4236 newMap!16))))))))

(declare-fun lt!51700 () ListLongMap!1563)

(assert (=> d!27567 (= lt!51714 lt!51700)))

(declare-fun lt!51703 () Unit!3112)

(assert (=> d!27567 (= lt!51703 e!66358)))

(declare-fun c!17566 () Bool)

(declare-fun e!66353 () Bool)

(assert (=> d!27567 (= c!17566 e!66353)))

(declare-fun res!51012 () Bool)

(assert (=> d!27567 (=> (not res!51012) (not e!66353))))

(assert (=> d!27567 (= res!51012 (bvslt #b00000000000000000000000000000000 (size!2285 (_keys!4236 newMap!16))))))

(assert (=> d!27567 (= lt!51700 e!66348)))

(assert (=> d!27567 (= c!17564 (and (not (= (bvand (ite c!17536 (ite c!17525 (extraKeys!2347 newMap!16) lt!51611) (extraKeys!2347 newMap!16)) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (ite c!17536 (ite c!17525 (extraKeys!2347 newMap!16) lt!51611) (extraKeys!2347 newMap!16)) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!27567 (validMask!0 (mask!6659 newMap!16))))

(assert (=> d!27567 (= (getCurrentListMap!477 (_keys!4236 newMap!16) (ite c!17536 (_values!2519 newMap!16) lt!51613) (mask!6659 newMap!16) (ite c!17536 (ite c!17525 (extraKeys!2347 newMap!16) lt!51611) (extraKeys!2347 newMap!16)) (zeroValue!2414 newMap!16) (ite c!17536 (ite c!17525 (minValue!2414 newMap!16) (get!1316 (select (arr!2033 (_values!2519 (v!2845 (underlying!348 thiss!992)))) from!355) (dynLambda!383 (defaultEntry!2536 (v!2845 (underlying!348 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (minValue!2414 newMap!16)) #b00000000000000000000000000000000 (defaultEntry!2536 newMap!16)) lt!51714)))

(declare-fun b!101934 () Bool)

(assert (=> b!101934 (= e!66355 call!10627)))

(declare-fun b!101935 () Bool)

(assert (=> b!101935 (= e!66356 (not call!10633))))

(declare-fun bm!10629 () Bool)

(assert (=> bm!10629 (= call!10632 call!10629)))

(declare-fun bm!10630 () Bool)

(assert (=> bm!10630 (= call!10629 call!10630)))

(declare-fun b!101936 () Bool)

(assert (=> b!101936 (= e!66353 (validKeyInArray!0 (select (arr!2032 (_keys!4236 newMap!16)) #b00000000000000000000000000000000)))))

(assert (= (and d!27567 c!17564) b!101917))

(assert (= (and d!27567 (not c!17564)) b!101925))

(assert (= (and b!101925 c!17563) b!101934))

(assert (= (and b!101925 (not c!17563)) b!101931))

(assert (= (and b!101931 c!17561) b!101919))

(assert (= (and b!101931 (not c!17561)) b!101927))

(assert (= (or b!101919 b!101927) bm!10629))

(assert (= (or b!101934 bm!10629) bm!10630))

(assert (= (or b!101934 b!101919) bm!10627))

(assert (= (or b!101917 bm!10630) bm!10624))

(assert (= (or b!101917 bm!10627) bm!10625))

(assert (= (and d!27567 res!51012) b!101936))

(assert (= (and d!27567 c!17566) b!101930))

(assert (= (and d!27567 (not c!17566)) b!101926))

(assert (= (and d!27567 res!51011) b!101932))

(assert (= (and b!101932 res!51014) b!101921))

(assert (= (and b!101932 (not res!51010)) b!101924))

(assert (= (and b!101924 res!51006) b!101920))

(assert (= (and b!101932 res!51013) b!101918))

(assert (= (and b!101918 c!17562) b!101922))

(assert (= (and b!101918 (not c!17562)) b!101935))

(assert (= (and b!101922 res!51009) b!101929))

(assert (= (or b!101922 b!101935) bm!10626))

(assert (= (and b!101918 res!51007) b!101923))

(assert (= (and b!101923 c!17565) b!101916))

(assert (= (and b!101923 (not c!17565)) b!101928))

(assert (= (and b!101916 res!51008) b!101933))

(assert (= (or b!101916 b!101928) bm!10628))

(declare-fun b_lambda!4577 () Bool)

(assert (=> (not b_lambda!4577) (not b!101920)))

(declare-fun t!5650 () Bool)

(declare-fun tb!1997 () Bool)

(assert (=> (and b!101587 (= (defaultEntry!2536 (v!2845 (underlying!348 thiss!992))) (defaultEntry!2536 newMap!16)) t!5650) tb!1997))

(declare-fun result!3367 () Bool)

(assert (=> tb!1997 (= result!3367 tp_is_empty!2649)))

(assert (=> b!101920 t!5650))

(declare-fun b_and!6281 () Bool)

(assert (= b_and!6277 (and (=> t!5650 result!3367) b_and!6281)))

(declare-fun t!5652 () Bool)

(declare-fun tb!1999 () Bool)

(assert (=> (and b!101570 (= (defaultEntry!2536 newMap!16) (defaultEntry!2536 newMap!16)) t!5652) tb!1999))

(declare-fun result!3369 () Bool)

(assert (= result!3369 result!3367))

(assert (=> b!101920 t!5652))

(declare-fun b_and!6283 () Bool)

(assert (= b_and!6279 (and (=> t!5652 result!3369) b_and!6283)))

(declare-fun m!112803 () Bool)

(assert (=> bm!10626 m!112803))

(declare-fun m!112805 () Bool)

(assert (=> b!101920 m!112805))

(declare-fun m!112807 () Bool)

(assert (=> b!101920 m!112807))

(declare-fun m!112809 () Bool)

(assert (=> b!101920 m!112809))

(declare-fun m!112811 () Bool)

(assert (=> b!101920 m!112811))

(assert (=> b!101920 m!112809))

(declare-fun m!112813 () Bool)

(assert (=> b!101920 m!112813))

(assert (=> b!101920 m!112811))

(assert (=> b!101920 m!112805))

(declare-fun m!112815 () Bool)

(assert (=> b!101917 m!112815))

(declare-fun m!112817 () Bool)

(assert (=> b!101929 m!112817))

(declare-fun m!112819 () Bool)

(assert (=> bm!10625 m!112819))

(assert (=> b!101921 m!112805))

(assert (=> b!101921 m!112805))

(declare-fun m!112821 () Bool)

(assert (=> b!101921 m!112821))

(declare-fun m!112823 () Bool)

(assert (=> d!27567 m!112823))

(declare-fun m!112825 () Bool)

(assert (=> bm!10628 m!112825))

(declare-fun m!112827 () Bool)

(assert (=> b!101930 m!112827))

(declare-fun m!112829 () Bool)

(assert (=> b!101930 m!112829))

(declare-fun m!112831 () Bool)

(assert (=> b!101930 m!112831))

(declare-fun m!112833 () Bool)

(assert (=> b!101930 m!112833))

(declare-fun m!112835 () Bool)

(assert (=> b!101930 m!112835))

(assert (=> b!101930 m!112831))

(declare-fun m!112837 () Bool)

(assert (=> b!101930 m!112837))

(declare-fun m!112839 () Bool)

(assert (=> b!101930 m!112839))

(declare-fun m!112841 () Bool)

(assert (=> b!101930 m!112841))

(assert (=> b!101930 m!112839))

(declare-fun m!112843 () Bool)

(assert (=> b!101930 m!112843))

(declare-fun m!112845 () Bool)

(assert (=> b!101930 m!112845))

(declare-fun m!112847 () Bool)

(assert (=> b!101930 m!112847))

(declare-fun m!112849 () Bool)

(assert (=> b!101930 m!112849))

(assert (=> b!101930 m!112847))

(declare-fun m!112851 () Bool)

(assert (=> b!101930 m!112851))

(declare-fun m!112853 () Bool)

(assert (=> b!101930 m!112853))

(assert (=> b!101930 m!112835))

(declare-fun m!112855 () Bool)

(assert (=> b!101930 m!112855))

(declare-fun m!112857 () Bool)

(assert (=> b!101930 m!112857))

(assert (=> b!101930 m!112805))

(assert (=> b!101924 m!112805))

(assert (=> b!101924 m!112805))

(declare-fun m!112859 () Bool)

(assert (=> b!101924 m!112859))

(assert (=> b!101936 m!112805))

(assert (=> b!101936 m!112805))

(assert (=> b!101936 m!112821))

(assert (=> bm!10624 m!112857))

(declare-fun m!112861 () Bool)

(assert (=> b!101933 m!112861))

(assert (=> bm!10576 d!27567))

(declare-fun d!27569 () Bool)

(declare-fun e!66361 () Bool)

(assert (=> d!27569 e!66361))

(declare-fun res!51019 () Bool)

(assert (=> d!27569 (=> (not res!51019) (not e!66361))))

(declare-fun lt!51724 () ListLongMap!1563)

(assert (=> d!27569 (= res!51019 (contains!816 lt!51724 (_1!1198 (ite c!17536 (ite c!17525 (tuple2!2377 #b0000000000000000000000000000000000000000000000000000000000000000 (get!1316 (select (arr!2033 (_values!2519 (v!2845 (underlying!348 thiss!992)))) from!355) (dynLambda!383 (defaultEntry!2536 (v!2845 (underlying!348 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (tuple2!2377 #b1000000000000000000000000000000000000000000000000000000000000000 (get!1316 (select (arr!2033 (_values!2519 (v!2845 (underlying!348 thiss!992)))) from!355) (dynLambda!383 (defaultEntry!2536 (v!2845 (underlying!348 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (tuple2!2377 (select (arr!2032 (_keys!4236 (v!2845 (underlying!348 thiss!992)))) from!355) (get!1316 (select (arr!2033 (_values!2519 (v!2845 (underlying!348 thiss!992)))) from!355) (dynLambda!383 (defaultEntry!2536 (v!2845 (underlying!348 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))))))))

(declare-fun lt!51725 () List!1621)

(assert (=> d!27569 (= lt!51724 (ListLongMap!1564 lt!51725))))

(declare-fun lt!51726 () Unit!3112)

(declare-fun lt!51723 () Unit!3112)

(assert (=> d!27569 (= lt!51726 lt!51723)))

(assert (=> d!27569 (= (getValueByKey!152 lt!51725 (_1!1198 (ite c!17536 (ite c!17525 (tuple2!2377 #b0000000000000000000000000000000000000000000000000000000000000000 (get!1316 (select (arr!2033 (_values!2519 (v!2845 (underlying!348 thiss!992)))) from!355) (dynLambda!383 (defaultEntry!2536 (v!2845 (underlying!348 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (tuple2!2377 #b1000000000000000000000000000000000000000000000000000000000000000 (get!1316 (select (arr!2033 (_values!2519 (v!2845 (underlying!348 thiss!992)))) from!355) (dynLambda!383 (defaultEntry!2536 (v!2845 (underlying!348 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (tuple2!2377 (select (arr!2032 (_keys!4236 (v!2845 (underlying!348 thiss!992)))) from!355) (get!1316 (select (arr!2033 (_values!2519 (v!2845 (underlying!348 thiss!992)))) from!355) (dynLambda!383 (defaultEntry!2536 (v!2845 (underlying!348 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))))) (Some!157 (_2!1198 (ite c!17536 (ite c!17525 (tuple2!2377 #b0000000000000000000000000000000000000000000000000000000000000000 (get!1316 (select (arr!2033 (_values!2519 (v!2845 (underlying!348 thiss!992)))) from!355) (dynLambda!383 (defaultEntry!2536 (v!2845 (underlying!348 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (tuple2!2377 #b1000000000000000000000000000000000000000000000000000000000000000 (get!1316 (select (arr!2033 (_values!2519 (v!2845 (underlying!348 thiss!992)))) from!355) (dynLambda!383 (defaultEntry!2536 (v!2845 (underlying!348 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (tuple2!2377 (select (arr!2032 (_keys!4236 (v!2845 (underlying!348 thiss!992)))) from!355) (get!1316 (select (arr!2033 (_values!2519 (v!2845 (underlying!348 thiss!992)))) from!355) (dynLambda!383 (defaultEntry!2536 (v!2845 (underlying!348 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))))))))

(declare-fun lemmaContainsTupThenGetReturnValue!70 (List!1621 (_ BitVec 64) V!3179) Unit!3112)

(assert (=> d!27569 (= lt!51723 (lemmaContainsTupThenGetReturnValue!70 lt!51725 (_1!1198 (ite c!17536 (ite c!17525 (tuple2!2377 #b0000000000000000000000000000000000000000000000000000000000000000 (get!1316 (select (arr!2033 (_values!2519 (v!2845 (underlying!348 thiss!992)))) from!355) (dynLambda!383 (defaultEntry!2536 (v!2845 (underlying!348 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (tuple2!2377 #b1000000000000000000000000000000000000000000000000000000000000000 (get!1316 (select (arr!2033 (_values!2519 (v!2845 (underlying!348 thiss!992)))) from!355) (dynLambda!383 (defaultEntry!2536 (v!2845 (underlying!348 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (tuple2!2377 (select (arr!2032 (_keys!4236 (v!2845 (underlying!348 thiss!992)))) from!355) (get!1316 (select (arr!2033 (_values!2519 (v!2845 (underlying!348 thiss!992)))) from!355) (dynLambda!383 (defaultEntry!2536 (v!2845 (underlying!348 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))) (_2!1198 (ite c!17536 (ite c!17525 (tuple2!2377 #b0000000000000000000000000000000000000000000000000000000000000000 (get!1316 (select (arr!2033 (_values!2519 (v!2845 (underlying!348 thiss!992)))) from!355) (dynLambda!383 (defaultEntry!2536 (v!2845 (underlying!348 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (tuple2!2377 #b1000000000000000000000000000000000000000000000000000000000000000 (get!1316 (select (arr!2033 (_values!2519 (v!2845 (underlying!348 thiss!992)))) from!355) (dynLambda!383 (defaultEntry!2536 (v!2845 (underlying!348 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (tuple2!2377 (select (arr!2032 (_keys!4236 (v!2845 (underlying!348 thiss!992)))) from!355) (get!1316 (select (arr!2033 (_values!2519 (v!2845 (underlying!348 thiss!992)))) from!355) (dynLambda!383 (defaultEntry!2536 (v!2845 (underlying!348 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))))))))

(declare-fun insertStrictlySorted!72 (List!1621 (_ BitVec 64) V!3179) List!1621)

(assert (=> d!27569 (= lt!51725 (insertStrictlySorted!72 (toList!797 (ite c!17536 (ite c!17525 call!10587 call!10597) call!10593)) (_1!1198 (ite c!17536 (ite c!17525 (tuple2!2377 #b0000000000000000000000000000000000000000000000000000000000000000 (get!1316 (select (arr!2033 (_values!2519 (v!2845 (underlying!348 thiss!992)))) from!355) (dynLambda!383 (defaultEntry!2536 (v!2845 (underlying!348 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (tuple2!2377 #b1000000000000000000000000000000000000000000000000000000000000000 (get!1316 (select (arr!2033 (_values!2519 (v!2845 (underlying!348 thiss!992)))) from!355) (dynLambda!383 (defaultEntry!2536 (v!2845 (underlying!348 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (tuple2!2377 (select (arr!2032 (_keys!4236 (v!2845 (underlying!348 thiss!992)))) from!355) (get!1316 (select (arr!2033 (_values!2519 (v!2845 (underlying!348 thiss!992)))) from!355) (dynLambda!383 (defaultEntry!2536 (v!2845 (underlying!348 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))) (_2!1198 (ite c!17536 (ite c!17525 (tuple2!2377 #b0000000000000000000000000000000000000000000000000000000000000000 (get!1316 (select (arr!2033 (_values!2519 (v!2845 (underlying!348 thiss!992)))) from!355) (dynLambda!383 (defaultEntry!2536 (v!2845 (underlying!348 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (tuple2!2377 #b1000000000000000000000000000000000000000000000000000000000000000 (get!1316 (select (arr!2033 (_values!2519 (v!2845 (underlying!348 thiss!992)))) from!355) (dynLambda!383 (defaultEntry!2536 (v!2845 (underlying!348 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (tuple2!2377 (select (arr!2032 (_keys!4236 (v!2845 (underlying!348 thiss!992)))) from!355) (get!1316 (select (arr!2033 (_values!2519 (v!2845 (underlying!348 thiss!992)))) from!355) (dynLambda!383 (defaultEntry!2536 (v!2845 (underlying!348 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))))))))

(assert (=> d!27569 (= (+!141 (ite c!17536 (ite c!17525 call!10587 call!10597) call!10593) (ite c!17536 (ite c!17525 (tuple2!2377 #b0000000000000000000000000000000000000000000000000000000000000000 (get!1316 (select (arr!2033 (_values!2519 (v!2845 (underlying!348 thiss!992)))) from!355) (dynLambda!383 (defaultEntry!2536 (v!2845 (underlying!348 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (tuple2!2377 #b1000000000000000000000000000000000000000000000000000000000000000 (get!1316 (select (arr!2033 (_values!2519 (v!2845 (underlying!348 thiss!992)))) from!355) (dynLambda!383 (defaultEntry!2536 (v!2845 (underlying!348 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (tuple2!2377 (select (arr!2032 (_keys!4236 (v!2845 (underlying!348 thiss!992)))) from!355) (get!1316 (select (arr!2033 (_values!2519 (v!2845 (underlying!348 thiss!992)))) from!355) (dynLambda!383 (defaultEntry!2536 (v!2845 (underlying!348 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))) lt!51724)))

(declare-fun b!101941 () Bool)

(declare-fun res!51020 () Bool)

(assert (=> b!101941 (=> (not res!51020) (not e!66361))))

(assert (=> b!101941 (= res!51020 (= (getValueByKey!152 (toList!797 lt!51724) (_1!1198 (ite c!17536 (ite c!17525 (tuple2!2377 #b0000000000000000000000000000000000000000000000000000000000000000 (get!1316 (select (arr!2033 (_values!2519 (v!2845 (underlying!348 thiss!992)))) from!355) (dynLambda!383 (defaultEntry!2536 (v!2845 (underlying!348 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (tuple2!2377 #b1000000000000000000000000000000000000000000000000000000000000000 (get!1316 (select (arr!2033 (_values!2519 (v!2845 (underlying!348 thiss!992)))) from!355) (dynLambda!383 (defaultEntry!2536 (v!2845 (underlying!348 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (tuple2!2377 (select (arr!2032 (_keys!4236 (v!2845 (underlying!348 thiss!992)))) from!355) (get!1316 (select (arr!2033 (_values!2519 (v!2845 (underlying!348 thiss!992)))) from!355) (dynLambda!383 (defaultEntry!2536 (v!2845 (underlying!348 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))))) (Some!157 (_2!1198 (ite c!17536 (ite c!17525 (tuple2!2377 #b0000000000000000000000000000000000000000000000000000000000000000 (get!1316 (select (arr!2033 (_values!2519 (v!2845 (underlying!348 thiss!992)))) from!355) (dynLambda!383 (defaultEntry!2536 (v!2845 (underlying!348 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (tuple2!2377 #b1000000000000000000000000000000000000000000000000000000000000000 (get!1316 (select (arr!2033 (_values!2519 (v!2845 (underlying!348 thiss!992)))) from!355) (dynLambda!383 (defaultEntry!2536 (v!2845 (underlying!348 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (tuple2!2377 (select (arr!2032 (_keys!4236 (v!2845 (underlying!348 thiss!992)))) from!355) (get!1316 (select (arr!2033 (_values!2519 (v!2845 (underlying!348 thiss!992)))) from!355) (dynLambda!383 (defaultEntry!2536 (v!2845 (underlying!348 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))))))))

(declare-fun b!101942 () Bool)

(declare-fun contains!818 (List!1621 tuple2!2376) Bool)

(assert (=> b!101942 (= e!66361 (contains!818 (toList!797 lt!51724) (ite c!17536 (ite c!17525 (tuple2!2377 #b0000000000000000000000000000000000000000000000000000000000000000 (get!1316 (select (arr!2033 (_values!2519 (v!2845 (underlying!348 thiss!992)))) from!355) (dynLambda!383 (defaultEntry!2536 (v!2845 (underlying!348 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (tuple2!2377 #b1000000000000000000000000000000000000000000000000000000000000000 (get!1316 (select (arr!2033 (_values!2519 (v!2845 (underlying!348 thiss!992)))) from!355) (dynLambda!383 (defaultEntry!2536 (v!2845 (underlying!348 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (tuple2!2377 (select (arr!2032 (_keys!4236 (v!2845 (underlying!348 thiss!992)))) from!355) (get!1316 (select (arr!2033 (_values!2519 (v!2845 (underlying!348 thiss!992)))) from!355) (dynLambda!383 (defaultEntry!2536 (v!2845 (underlying!348 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (= (and d!27569 res!51019) b!101941))

(assert (= (and b!101941 res!51020) b!101942))

(declare-fun m!112863 () Bool)

(assert (=> d!27569 m!112863))

(declare-fun m!112865 () Bool)

(assert (=> d!27569 m!112865))

(declare-fun m!112867 () Bool)

(assert (=> d!27569 m!112867))

(declare-fun m!112869 () Bool)

(assert (=> d!27569 m!112869))

(declare-fun m!112871 () Bool)

(assert (=> b!101941 m!112871))

(declare-fun m!112873 () Bool)

(assert (=> b!101942 m!112873))

(assert (=> bm!10594 d!27569))

(declare-fun d!27571 () Bool)

(declare-fun e!66363 () Bool)

(assert (=> d!27571 e!66363))

(declare-fun res!51021 () Bool)

(assert (=> d!27571 (=> res!51021 e!66363)))

(declare-fun lt!51727 () Bool)

(assert (=> d!27571 (= res!51021 (not lt!51727))))

(declare-fun lt!51728 () Bool)

(assert (=> d!27571 (= lt!51727 lt!51728)))

(declare-fun lt!51730 () Unit!3112)

(declare-fun e!66362 () Unit!3112)

(assert (=> d!27571 (= lt!51730 e!66362)))

(declare-fun c!17567 () Bool)

(assert (=> d!27571 (= c!17567 lt!51728)))

(assert (=> d!27571 (= lt!51728 (containsKey!156 (toList!797 call!10586) (select (arr!2032 (_keys!4236 (v!2845 (underlying!348 thiss!992)))) from!355)))))

(assert (=> d!27571 (= (contains!816 call!10586 (select (arr!2032 (_keys!4236 (v!2845 (underlying!348 thiss!992)))) from!355)) lt!51727)))

(declare-fun b!101943 () Bool)

(declare-fun lt!51729 () Unit!3112)

(assert (=> b!101943 (= e!66362 lt!51729)))

(assert (=> b!101943 (= lt!51729 (lemmaContainsKeyImpliesGetValueByKeyDefined!105 (toList!797 call!10586) (select (arr!2032 (_keys!4236 (v!2845 (underlying!348 thiss!992)))) from!355)))))

(assert (=> b!101943 (isDefined!106 (getValueByKey!152 (toList!797 call!10586) (select (arr!2032 (_keys!4236 (v!2845 (underlying!348 thiss!992)))) from!355)))))

(declare-fun b!101944 () Bool)

(declare-fun Unit!3124 () Unit!3112)

(assert (=> b!101944 (= e!66362 Unit!3124)))

(declare-fun b!101945 () Bool)

(assert (=> b!101945 (= e!66363 (isDefined!106 (getValueByKey!152 (toList!797 call!10586) (select (arr!2032 (_keys!4236 (v!2845 (underlying!348 thiss!992)))) from!355))))))

(assert (= (and d!27571 c!17567) b!101943))

(assert (= (and d!27571 (not c!17567)) b!101944))

(assert (= (and d!27571 (not res!51021)) b!101945))

(assert (=> d!27571 m!112547))

(declare-fun m!112875 () Bool)

(assert (=> d!27571 m!112875))

(assert (=> b!101943 m!112547))

(declare-fun m!112877 () Bool)

(assert (=> b!101943 m!112877))

(assert (=> b!101943 m!112547))

(declare-fun m!112879 () Bool)

(assert (=> b!101943 m!112879))

(assert (=> b!101943 m!112879))

(declare-fun m!112881 () Bool)

(assert (=> b!101943 m!112881))

(assert (=> b!101945 m!112547))

(assert (=> b!101945 m!112879))

(assert (=> b!101945 m!112879))

(assert (=> b!101945 m!112881))

(assert (=> b!101792 d!27571))

(assert (=> b!101890 d!27565))

(declare-fun d!27573 () Bool)

(declare-fun lt!51733 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!105 (List!1620) (InoxSet (_ BitVec 64)))

(assert (=> d!27573 (= lt!51733 (select (content!105 Nil!1617) (select (arr!2032 (_keys!4236 (v!2845 (underlying!348 thiss!992)))) from!355)))))

(declare-fun e!66369 () Bool)

(assert (=> d!27573 (= lt!51733 e!66369)))

(declare-fun res!51027 () Bool)

(assert (=> d!27573 (=> (not res!51027) (not e!66369))))

(assert (=> d!27573 (= res!51027 ((_ is Cons!1616) Nil!1617))))

(assert (=> d!27573 (= (contains!817 Nil!1617 (select (arr!2032 (_keys!4236 (v!2845 (underlying!348 thiss!992)))) from!355)) lt!51733)))

(declare-fun b!101950 () Bool)

(declare-fun e!66368 () Bool)

(assert (=> b!101950 (= e!66369 e!66368)))

(declare-fun res!51026 () Bool)

(assert (=> b!101950 (=> res!51026 e!66368)))

(assert (=> b!101950 (= res!51026 (= (h!2212 Nil!1617) (select (arr!2032 (_keys!4236 (v!2845 (underlying!348 thiss!992)))) from!355)))))

(declare-fun b!101951 () Bool)

(assert (=> b!101951 (= e!66368 (contains!817 (t!5642 Nil!1617) (select (arr!2032 (_keys!4236 (v!2845 (underlying!348 thiss!992)))) from!355)))))

(assert (= (and d!27573 res!51027) b!101950))

(assert (= (and b!101950 (not res!51026)) b!101951))

(declare-fun m!112883 () Bool)

(assert (=> d!27573 m!112883))

(assert (=> d!27573 m!112547))

(declare-fun m!112885 () Bool)

(assert (=> d!27573 m!112885))

(assert (=> b!101951 m!112547))

(declare-fun m!112887 () Bool)

(assert (=> b!101951 m!112887))

(assert (=> b!101677 d!27573))

(declare-fun d!27575 () Bool)

(declare-fun isEmpty!369 (Option!158) Bool)

(assert (=> d!27575 (= (isDefined!106 (getValueByKey!152 (toList!797 lt!51494) (select (arr!2032 (_keys!4236 (v!2845 (underlying!348 thiss!992)))) from!355))) (not (isEmpty!369 (getValueByKey!152 (toList!797 lt!51494) (select (arr!2032 (_keys!4236 (v!2845 (underlying!348 thiss!992)))) from!355)))))))

(declare-fun bs!4201 () Bool)

(assert (= bs!4201 d!27575))

(assert (=> bs!4201 m!112661))

(declare-fun m!112889 () Bool)

(assert (=> bs!4201 m!112889))

(assert (=> b!101695 d!27575))

(declare-fun b!101961 () Bool)

(declare-fun e!66374 () Option!158)

(declare-fun e!66375 () Option!158)

(assert (=> b!101961 (= e!66374 e!66375)))

(declare-fun c!17573 () Bool)

(assert (=> b!101961 (= c!17573 (and ((_ is Cons!1617) (toList!797 lt!51494)) (not (= (_1!1198 (h!2213 (toList!797 lt!51494))) (select (arr!2032 (_keys!4236 (v!2845 (underlying!348 thiss!992)))) from!355)))))))

(declare-fun c!17572 () Bool)

(declare-fun d!27577 () Bool)

(assert (=> d!27577 (= c!17572 (and ((_ is Cons!1617) (toList!797 lt!51494)) (= (_1!1198 (h!2213 (toList!797 lt!51494))) (select (arr!2032 (_keys!4236 (v!2845 (underlying!348 thiss!992)))) from!355))))))

(assert (=> d!27577 (= (getValueByKey!152 (toList!797 lt!51494) (select (arr!2032 (_keys!4236 (v!2845 (underlying!348 thiss!992)))) from!355)) e!66374)))

(declare-fun b!101963 () Bool)

(assert (=> b!101963 (= e!66375 None!156)))

(declare-fun b!101960 () Bool)

(assert (=> b!101960 (= e!66374 (Some!157 (_2!1198 (h!2213 (toList!797 lt!51494)))))))

(declare-fun b!101962 () Bool)

(assert (=> b!101962 (= e!66375 (getValueByKey!152 (t!5643 (toList!797 lt!51494)) (select (arr!2032 (_keys!4236 (v!2845 (underlying!348 thiss!992)))) from!355)))))

(assert (= (and d!27577 c!17572) b!101960))

(assert (= (and d!27577 (not c!17572)) b!101961))

(assert (= (and b!101961 c!17573) b!101962))

(assert (= (and b!101961 (not c!17573)) b!101963))

(assert (=> b!101962 m!112547))

(declare-fun m!112891 () Bool)

(assert (=> b!101962 m!112891))

(assert (=> b!101695 d!27577))

(declare-fun d!27579 () Bool)

(declare-fun e!66377 () Bool)

(assert (=> d!27579 e!66377))

(declare-fun res!51028 () Bool)

(assert (=> d!27579 (=> res!51028 e!66377)))

(declare-fun lt!51734 () Bool)

(assert (=> d!27579 (= res!51028 (not lt!51734))))

(declare-fun lt!51735 () Bool)

(assert (=> d!27579 (= lt!51734 lt!51735)))

(declare-fun lt!51737 () Unit!3112)

(declare-fun e!66376 () Unit!3112)

(assert (=> d!27579 (= lt!51737 e!66376)))

(declare-fun c!17574 () Bool)

(assert (=> d!27579 (= c!17574 lt!51735)))

(assert (=> d!27579 (= lt!51735 (containsKey!156 (toList!797 lt!51692) (select (arr!2032 (_keys!4236 (v!2845 (underlying!348 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))))))

(assert (=> d!27579 (= (contains!816 lt!51692 (select (arr!2032 (_keys!4236 (v!2845 (underlying!348 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))) lt!51734)))

(declare-fun b!101964 () Bool)

(declare-fun lt!51736 () Unit!3112)

(assert (=> b!101964 (= e!66376 lt!51736)))

(assert (=> b!101964 (= lt!51736 (lemmaContainsKeyImpliesGetValueByKeyDefined!105 (toList!797 lt!51692) (select (arr!2032 (_keys!4236 (v!2845 (underlying!348 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))))))

(assert (=> b!101964 (isDefined!106 (getValueByKey!152 (toList!797 lt!51692) (select (arr!2032 (_keys!4236 (v!2845 (underlying!348 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))))))

(declare-fun b!101965 () Bool)

(declare-fun Unit!3125 () Unit!3112)

(assert (=> b!101965 (= e!66376 Unit!3125)))

(declare-fun b!101966 () Bool)

(assert (=> b!101966 (= e!66377 (isDefined!106 (getValueByKey!152 (toList!797 lt!51692) (select (arr!2032 (_keys!4236 (v!2845 (underlying!348 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)))))))

(assert (= (and d!27579 c!17574) b!101964))

(assert (= (and d!27579 (not c!17574)) b!101965))

(assert (= (and d!27579 (not res!51028)) b!101966))

(assert (=> d!27579 m!112637))

(declare-fun m!112893 () Bool)

(assert (=> d!27579 m!112893))

(assert (=> b!101964 m!112637))

(declare-fun m!112895 () Bool)

(assert (=> b!101964 m!112895))

(assert (=> b!101964 m!112637))

(declare-fun m!112897 () Bool)

(assert (=> b!101964 m!112897))

(assert (=> b!101964 m!112897))

(declare-fun m!112899 () Bool)

(assert (=> b!101964 m!112899))

(assert (=> b!101966 m!112637))

(assert (=> b!101966 m!112897))

(assert (=> b!101966 m!112897))

(assert (=> b!101966 m!112899))

(assert (=> b!101893 d!27579))

(declare-fun b!101967 () Bool)

(declare-fun e!66383 () Bool)

(declare-fun e!66378 () Bool)

(assert (=> b!101967 (= e!66383 e!66378)))

(declare-fun res!51031 () Bool)

(declare-fun call!10638 () Bool)

(assert (=> b!101967 (= res!51031 call!10638)))

(assert (=> b!101967 (=> (not res!51031) (not e!66378))))

(declare-fun b!101968 () Bool)

(declare-fun e!66380 () ListLongMap!1563)

(declare-fun call!10635 () ListLongMap!1563)

(assert (=> b!101968 (= e!66380 (+!141 call!10635 (tuple2!2377 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2414 newMap!16))))))

(declare-fun b!101969 () Bool)

(declare-fun res!51030 () Bool)

(declare-fun e!66384 () Bool)

(assert (=> b!101969 (=> (not res!51030) (not e!66384))))

(declare-fun e!66388 () Bool)

(assert (=> b!101969 (= res!51030 e!66388)))

(declare-fun c!17576 () Bool)

(assert (=> b!101969 (= c!17576 (not (= (bvand (extraKeys!2347 newMap!16) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun bm!10631 () Bool)

(declare-fun call!10637 () ListLongMap!1563)

(assert (=> bm!10631 (= call!10637 (getCurrentListMapNoExtraKeys!105 (_keys!4236 newMap!16) (_values!2519 newMap!16) (mask!6659 newMap!16) (extraKeys!2347 newMap!16) (zeroValue!2414 newMap!16) (minValue!2414 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2536 newMap!16)))))

(declare-fun b!101970 () Bool)

(declare-fun e!66386 () ListLongMap!1563)

(declare-fun call!10634 () ListLongMap!1563)

(assert (=> b!101970 (= e!66386 call!10634)))

(declare-fun b!101971 () Bool)

(declare-fun e!66381 () Bool)

(declare-fun lt!51759 () ListLongMap!1563)

(assert (=> b!101971 (= e!66381 (= (apply!95 lt!51759 (select (arr!2032 (_keys!4236 newMap!16)) #b00000000000000000000000000000000)) (get!1316 (select (arr!2033 (_values!2519 newMap!16)) #b00000000000000000000000000000000) (dynLambda!383 (defaultEntry!2536 newMap!16) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!101971 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!2286 (_values!2519 newMap!16))))))

(assert (=> b!101971 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!2285 (_keys!4236 newMap!16))))))

(declare-fun b!101972 () Bool)

(declare-fun e!66382 () Bool)

(assert (=> b!101972 (= e!66382 (validKeyInArray!0 (select (arr!2032 (_keys!4236 newMap!16)) #b00000000000000000000000000000000)))))

(declare-fun c!17578 () Bool)

(declare-fun call!10636 () ListLongMap!1563)

(declare-fun call!10639 () ListLongMap!1563)

(declare-fun bm!10632 () Bool)

(declare-fun c!17577 () Bool)

(assert (=> bm!10632 (= call!10635 (+!141 (ite c!17578 call!10637 (ite c!17577 call!10636 call!10639)) (ite (or c!17578 c!17577) (tuple2!2377 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2414 newMap!16)) (tuple2!2377 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2414 newMap!16)))))))

(declare-fun b!101973 () Bool)

(declare-fun e!66379 () Bool)

(assert (=> b!101973 (= e!66388 e!66379)))

(declare-fun res!51032 () Bool)

(declare-fun call!10640 () Bool)

(assert (=> b!101973 (= res!51032 call!10640)))

(assert (=> b!101973 (=> (not res!51032) (not e!66379))))

(declare-fun b!101974 () Bool)

(assert (=> b!101974 (= e!66384 e!66383)))

(declare-fun c!17579 () Bool)

(assert (=> b!101974 (= c!17579 (not (= (bvand (extraKeys!2347 newMap!16) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!101975 () Bool)

(declare-fun e!66389 () Bool)

(assert (=> b!101975 (= e!66389 e!66381)))

(declare-fun res!51029 () Bool)

(assert (=> b!101975 (=> (not res!51029) (not e!66381))))

(assert (=> b!101975 (= res!51029 (contains!816 lt!51759 (select (arr!2032 (_keys!4236 newMap!16)) #b00000000000000000000000000000000)))))

(assert (=> b!101975 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!2285 (_keys!4236 newMap!16))))))

(declare-fun b!101976 () Bool)

(declare-fun e!66387 () ListLongMap!1563)

(assert (=> b!101976 (= e!66380 e!66387)))

(assert (=> b!101976 (= c!17577 (and (not (= (bvand (extraKeys!2347 newMap!16) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand (extraKeys!2347 newMap!16) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun bm!10633 () Bool)

(assert (=> bm!10633 (= call!10640 (contains!816 lt!51759 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!101977 () Bool)

(declare-fun e!66390 () Unit!3112)

(declare-fun Unit!3126 () Unit!3112)

(assert (=> b!101977 (= e!66390 Unit!3126)))

(declare-fun b!101978 () Bool)

(assert (=> b!101978 (= e!66386 call!10639)))

(declare-fun b!101979 () Bool)

(assert (=> b!101979 (= e!66383 (not call!10638))))

(declare-fun bm!10634 () Bool)

(assert (=> bm!10634 (= call!10634 call!10635)))

(declare-fun b!101980 () Bool)

(assert (=> b!101980 (= e!66379 (= (apply!95 lt!51759 #b0000000000000000000000000000000000000000000000000000000000000000) (zeroValue!2414 newMap!16)))))

(declare-fun b!101981 () Bool)

(declare-fun lt!51756 () Unit!3112)

(assert (=> b!101981 (= e!66390 lt!51756)))

(declare-fun lt!51741 () ListLongMap!1563)

(assert (=> b!101981 (= lt!51741 (getCurrentListMapNoExtraKeys!105 (_keys!4236 newMap!16) (_values!2519 newMap!16) (mask!6659 newMap!16) (extraKeys!2347 newMap!16) (zeroValue!2414 newMap!16) (minValue!2414 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2536 newMap!16)))))

(declare-fun lt!51744 () (_ BitVec 64))

(assert (=> b!101981 (= lt!51744 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!51754 () (_ BitVec 64))

(assert (=> b!101981 (= lt!51754 (select (arr!2032 (_keys!4236 newMap!16)) #b00000000000000000000000000000000))))

(declare-fun lt!51739 () Unit!3112)

(assert (=> b!101981 (= lt!51739 (addStillContains!71 lt!51741 lt!51744 (zeroValue!2414 newMap!16) lt!51754))))

(assert (=> b!101981 (contains!816 (+!141 lt!51741 (tuple2!2377 lt!51744 (zeroValue!2414 newMap!16))) lt!51754)))

(declare-fun lt!51743 () Unit!3112)

(assert (=> b!101981 (= lt!51743 lt!51739)))

(declare-fun lt!51755 () ListLongMap!1563)

(assert (=> b!101981 (= lt!51755 (getCurrentListMapNoExtraKeys!105 (_keys!4236 newMap!16) (_values!2519 newMap!16) (mask!6659 newMap!16) (extraKeys!2347 newMap!16) (zeroValue!2414 newMap!16) (minValue!2414 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2536 newMap!16)))))

(declare-fun lt!51750 () (_ BitVec 64))

(assert (=> b!101981 (= lt!51750 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!51749 () (_ BitVec 64))

(assert (=> b!101981 (= lt!51749 (select (arr!2032 (_keys!4236 newMap!16)) #b00000000000000000000000000000000))))

(declare-fun lt!51740 () Unit!3112)

(assert (=> b!101981 (= lt!51740 (addApplyDifferent!71 lt!51755 lt!51750 (minValue!2414 newMap!16) lt!51749))))

(assert (=> b!101981 (= (apply!95 (+!141 lt!51755 (tuple2!2377 lt!51750 (minValue!2414 newMap!16))) lt!51749) (apply!95 lt!51755 lt!51749))))

(declare-fun lt!51753 () Unit!3112)

(assert (=> b!101981 (= lt!51753 lt!51740)))

(declare-fun lt!51746 () ListLongMap!1563)

(assert (=> b!101981 (= lt!51746 (getCurrentListMapNoExtraKeys!105 (_keys!4236 newMap!16) (_values!2519 newMap!16) (mask!6659 newMap!16) (extraKeys!2347 newMap!16) (zeroValue!2414 newMap!16) (minValue!2414 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2536 newMap!16)))))

(declare-fun lt!51752 () (_ BitVec 64))

(assert (=> b!101981 (= lt!51752 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!51747 () (_ BitVec 64))

(assert (=> b!101981 (= lt!51747 (select (arr!2032 (_keys!4236 newMap!16)) #b00000000000000000000000000000000))))

(declare-fun lt!51757 () Unit!3112)

(assert (=> b!101981 (= lt!51757 (addApplyDifferent!71 lt!51746 lt!51752 (zeroValue!2414 newMap!16) lt!51747))))

(assert (=> b!101981 (= (apply!95 (+!141 lt!51746 (tuple2!2377 lt!51752 (zeroValue!2414 newMap!16))) lt!51747) (apply!95 lt!51746 lt!51747))))

(declare-fun lt!51758 () Unit!3112)

(assert (=> b!101981 (= lt!51758 lt!51757)))

(declare-fun lt!51742 () ListLongMap!1563)

(assert (=> b!101981 (= lt!51742 (getCurrentListMapNoExtraKeys!105 (_keys!4236 newMap!16) (_values!2519 newMap!16) (mask!6659 newMap!16) (extraKeys!2347 newMap!16) (zeroValue!2414 newMap!16) (minValue!2414 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2536 newMap!16)))))

(declare-fun lt!51751 () (_ BitVec 64))

(assert (=> b!101981 (= lt!51751 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!51738 () (_ BitVec 64))

(assert (=> b!101981 (= lt!51738 (select (arr!2032 (_keys!4236 newMap!16)) #b00000000000000000000000000000000))))

(assert (=> b!101981 (= lt!51756 (addApplyDifferent!71 lt!51742 lt!51751 (minValue!2414 newMap!16) lt!51738))))

(assert (=> b!101981 (= (apply!95 (+!141 lt!51742 (tuple2!2377 lt!51751 (minValue!2414 newMap!16))) lt!51738) (apply!95 lt!51742 lt!51738))))

(declare-fun b!101982 () Bool)

(declare-fun c!17575 () Bool)

(assert (=> b!101982 (= c!17575 (and (not (= (bvand (extraKeys!2347 newMap!16) #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand (extraKeys!2347 newMap!16) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!101982 (= e!66387 e!66386)))

(declare-fun b!101983 () Bool)

(declare-fun res!51036 () Bool)

(assert (=> b!101983 (=> (not res!51036) (not e!66384))))

(assert (=> b!101983 (= res!51036 e!66389)))

(declare-fun res!51033 () Bool)

(assert (=> b!101983 (=> res!51033 e!66389)))

(assert (=> b!101983 (= res!51033 (not e!66382))))

(declare-fun res!51037 () Bool)

(assert (=> b!101983 (=> (not res!51037) (not e!66382))))

(assert (=> b!101983 (= res!51037 (bvslt #b00000000000000000000000000000000 (size!2285 (_keys!4236 newMap!16))))))

(declare-fun bm!10635 () Bool)

(assert (=> bm!10635 (= call!10638 (contains!816 lt!51759 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!101984 () Bool)

(assert (=> b!101984 (= e!66378 (= (apply!95 lt!51759 #b1000000000000000000000000000000000000000000000000000000000000000) (minValue!2414 newMap!16)))))

(declare-fun d!27581 () Bool)

(assert (=> d!27581 e!66384))

(declare-fun res!51034 () Bool)

(assert (=> d!27581 (=> (not res!51034) (not e!66384))))

(assert (=> d!27581 (= res!51034 (or (bvsge #b00000000000000000000000000000000 (size!2285 (_keys!4236 newMap!16))) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!2285 (_keys!4236 newMap!16))))))))

(declare-fun lt!51745 () ListLongMap!1563)

(assert (=> d!27581 (= lt!51759 lt!51745)))

(declare-fun lt!51748 () Unit!3112)

(assert (=> d!27581 (= lt!51748 e!66390)))

(declare-fun c!17580 () Bool)

(declare-fun e!66385 () Bool)

(assert (=> d!27581 (= c!17580 e!66385)))

(declare-fun res!51035 () Bool)

(assert (=> d!27581 (=> (not res!51035) (not e!66385))))

(assert (=> d!27581 (= res!51035 (bvslt #b00000000000000000000000000000000 (size!2285 (_keys!4236 newMap!16))))))

(assert (=> d!27581 (= lt!51745 e!66380)))

(assert (=> d!27581 (= c!17578 (and (not (= (bvand (extraKeys!2347 newMap!16) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (extraKeys!2347 newMap!16) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!27581 (validMask!0 (mask!6659 newMap!16))))

(assert (=> d!27581 (= (getCurrentListMap!477 (_keys!4236 newMap!16) (_values!2519 newMap!16) (mask!6659 newMap!16) (extraKeys!2347 newMap!16) (zeroValue!2414 newMap!16) (minValue!2414 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2536 newMap!16)) lt!51759)))

(declare-fun b!101985 () Bool)

(assert (=> b!101985 (= e!66387 call!10634)))

(declare-fun b!101986 () Bool)

(assert (=> b!101986 (= e!66388 (not call!10640))))

(declare-fun bm!10636 () Bool)

(assert (=> bm!10636 (= call!10639 call!10636)))

(declare-fun bm!10637 () Bool)

(assert (=> bm!10637 (= call!10636 call!10637)))

(declare-fun b!101987 () Bool)

(assert (=> b!101987 (= e!66385 (validKeyInArray!0 (select (arr!2032 (_keys!4236 newMap!16)) #b00000000000000000000000000000000)))))

(assert (= (and d!27581 c!17578) b!101968))

(assert (= (and d!27581 (not c!17578)) b!101976))

(assert (= (and b!101976 c!17577) b!101985))

(assert (= (and b!101976 (not c!17577)) b!101982))

(assert (= (and b!101982 c!17575) b!101970))

(assert (= (and b!101982 (not c!17575)) b!101978))

(assert (= (or b!101970 b!101978) bm!10636))

(assert (= (or b!101985 bm!10636) bm!10637))

(assert (= (or b!101985 b!101970) bm!10634))

(assert (= (or b!101968 bm!10637) bm!10631))

(assert (= (or b!101968 bm!10634) bm!10632))

(assert (= (and d!27581 res!51035) b!101987))

(assert (= (and d!27581 c!17580) b!101981))

(assert (= (and d!27581 (not c!17580)) b!101977))

(assert (= (and d!27581 res!51034) b!101983))

(assert (= (and b!101983 res!51037) b!101972))

(assert (= (and b!101983 (not res!51033)) b!101975))

(assert (= (and b!101975 res!51029) b!101971))

(assert (= (and b!101983 res!51036) b!101969))

(assert (= (and b!101969 c!17576) b!101973))

(assert (= (and b!101969 (not c!17576)) b!101986))

(assert (= (and b!101973 res!51032) b!101980))

(assert (= (or b!101973 b!101986) bm!10633))

(assert (= (and b!101969 res!51030) b!101974))

(assert (= (and b!101974 c!17579) b!101967))

(assert (= (and b!101974 (not c!17579)) b!101979))

(assert (= (and b!101967 res!51031) b!101984))

(assert (= (or b!101967 b!101979) bm!10635))

(declare-fun b_lambda!4579 () Bool)

(assert (=> (not b_lambda!4579) (not b!101971)))

(assert (=> b!101971 t!5650))

(declare-fun b_and!6285 () Bool)

(assert (= b_and!6281 (and (=> t!5650 result!3367) b_and!6285)))

(assert (=> b!101971 t!5652))

(declare-fun b_and!6287 () Bool)

(assert (= b_and!6283 (and (=> t!5652 result!3369) b_and!6287)))

(declare-fun m!112901 () Bool)

(assert (=> bm!10633 m!112901))

(assert (=> b!101971 m!112805))

(declare-fun m!112903 () Bool)

(assert (=> b!101971 m!112903))

(assert (=> b!101971 m!112809))

(declare-fun m!112905 () Bool)

(assert (=> b!101971 m!112905))

(assert (=> b!101971 m!112809))

(declare-fun m!112907 () Bool)

(assert (=> b!101971 m!112907))

(assert (=> b!101971 m!112905))

(assert (=> b!101971 m!112805))

(declare-fun m!112909 () Bool)

(assert (=> b!101968 m!112909))

(declare-fun m!112911 () Bool)

(assert (=> b!101980 m!112911))

(declare-fun m!112913 () Bool)

(assert (=> bm!10632 m!112913))

(assert (=> b!101972 m!112805))

(assert (=> b!101972 m!112805))

(assert (=> b!101972 m!112821))

(assert (=> d!27581 m!112823))

(declare-fun m!112915 () Bool)

(assert (=> bm!10635 m!112915))

(declare-fun m!112917 () Bool)

(assert (=> b!101981 m!112917))

(declare-fun m!112919 () Bool)

(assert (=> b!101981 m!112919))

(declare-fun m!112921 () Bool)

(assert (=> b!101981 m!112921))

(declare-fun m!112923 () Bool)

(assert (=> b!101981 m!112923))

(declare-fun m!112925 () Bool)

(assert (=> b!101981 m!112925))

(assert (=> b!101981 m!112921))

(declare-fun m!112927 () Bool)

(assert (=> b!101981 m!112927))

(declare-fun m!112929 () Bool)

(assert (=> b!101981 m!112929))

(declare-fun m!112931 () Bool)

(assert (=> b!101981 m!112931))

(assert (=> b!101981 m!112929))

(declare-fun m!112933 () Bool)

(assert (=> b!101981 m!112933))

(declare-fun m!112935 () Bool)

(assert (=> b!101981 m!112935))

(declare-fun m!112937 () Bool)

(assert (=> b!101981 m!112937))

(declare-fun m!112939 () Bool)

(assert (=> b!101981 m!112939))

(assert (=> b!101981 m!112937))

(declare-fun m!112941 () Bool)

(assert (=> b!101981 m!112941))

(declare-fun m!112943 () Bool)

(assert (=> b!101981 m!112943))

(assert (=> b!101981 m!112925))

(declare-fun m!112945 () Bool)

(assert (=> b!101981 m!112945))

(declare-fun m!112947 () Bool)

(assert (=> b!101981 m!112947))

(assert (=> b!101981 m!112805))

(assert (=> b!101975 m!112805))

(assert (=> b!101975 m!112805))

(declare-fun m!112949 () Bool)

(assert (=> b!101975 m!112949))

(assert (=> b!101987 m!112805))

(assert (=> b!101987 m!112805))

(assert (=> b!101987 m!112821))

(assert (=> bm!10631 m!112947))

(declare-fun m!112951 () Bool)

(assert (=> b!101984 m!112951))

(assert (=> d!27559 d!27581))

(declare-fun b!102022 () Bool)

(declare-fun e!66408 () Unit!3112)

(declare-fun Unit!3127 () Unit!3112)

(assert (=> b!102022 (= e!66408 Unit!3127)))

(declare-fun lt!51847 () Unit!3112)

(assert (=> b!102022 (= lt!51847 (lemmaInListMapThenSeekEntryOrOpenFindsIt!44 (_keys!4236 newMap!16) (_values!2519 newMap!16) (mask!6659 newMap!16) (extraKeys!2347 newMap!16) (zeroValue!2414 newMap!16) (minValue!2414 newMap!16) (select (arr!2032 (_keys!4236 (v!2845 (underlying!348 thiss!992)))) from!355) (defaultEntry!2536 newMap!16)))))

(declare-fun lt!51846 () SeekEntryResult!266)

(declare-fun call!10650 () SeekEntryResult!266)

(assert (=> b!102022 (= lt!51846 call!10650)))

(declare-fun res!51059 () Bool)

(assert (=> b!102022 (= res!51059 ((_ is Found!266) lt!51846))))

(declare-fun e!66412 () Bool)

(assert (=> b!102022 (=> (not res!51059) (not e!66412))))

(assert (=> b!102022 e!66412))

(declare-fun lt!51825 () Unit!3112)

(assert (=> b!102022 (= lt!51825 lt!51847)))

(assert (=> b!102022 false))

(declare-fun bm!10646 () Bool)

(assert (=> bm!10646 (= call!10650 (seekEntryOrOpen!0 (select (arr!2032 (_keys!4236 (v!2845 (underlying!348 thiss!992)))) from!355) (_keys!4236 newMap!16) (mask!6659 newMap!16)))))

(declare-fun b!102023 () Bool)

(declare-fun res!51056 () Bool)

(declare-fun e!66413 () Bool)

(assert (=> b!102023 (=> (not res!51056) (not e!66413))))

(declare-fun call!10651 () Bool)

(assert (=> b!102023 (= res!51056 call!10651)))

(declare-fun e!66414 () Bool)

(assert (=> b!102023 (= e!66414 e!66413)))

(declare-fun b!102024 () Bool)

(declare-fun res!51057 () Bool)

(declare-fun call!10649 () Bool)

(assert (=> b!102024 (= res!51057 call!10649)))

(assert (=> b!102024 (=> (not res!51057) (not e!66412))))

(declare-fun b!102026 () Bool)

(declare-fun e!66411 () Bool)

(declare-fun call!10652 () Bool)

(assert (=> b!102026 (= e!66411 (not call!10652))))

(declare-fun b!102027 () Bool)

(declare-fun c!17591 () Bool)

(declare-fun lt!51822 () SeekEntryResult!266)

(assert (=> b!102027 (= c!17591 ((_ is MissingVacant!266) lt!51822))))

(declare-fun e!66409 () Bool)

(assert (=> b!102027 (= e!66414 e!66409)))

(declare-fun b!102028 () Bool)

(declare-fun e!66407 () Bool)

(declare-fun lt!51832 () tuple2!2374)

(assert (=> b!102028 (= e!66407 (= (map!1266 (_2!1197 lt!51832)) (+!141 (map!1266 newMap!16) (tuple2!2377 (select (arr!2032 (_keys!4236 (v!2845 (underlying!348 thiss!992)))) from!355) (get!1316 (select (arr!2033 (_values!2519 (v!2845 (underlying!348 thiss!992)))) from!355) (dynLambda!383 (defaultEntry!2536 (v!2845 (underlying!348 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun b!102029 () Bool)

(assert (=> b!102029 (= e!66413 (not call!10652))))

(declare-fun b!102030 () Bool)

(declare-fun res!51061 () Bool)

(assert (=> b!102030 (=> (not res!51061) (not e!66413))))

(assert (=> b!102030 (= res!51061 (= (select (arr!2032 (_keys!4236 newMap!16)) (index!3210 lt!51822)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!102031 () Bool)

(declare-fun res!51063 () Bool)

(assert (=> b!102031 (= res!51063 (= (select (arr!2032 (_keys!4236 newMap!16)) (index!3213 lt!51822)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!102031 (=> (not res!51063) (not e!66411))))

(declare-fun b!102032 () Bool)

(declare-fun lt!51830 () Unit!3112)

(assert (=> b!102032 (= e!66408 lt!51830)))

(assert (=> b!102032 (= lt!51830 (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!44 (_keys!4236 newMap!16) (_values!2519 newMap!16) (mask!6659 newMap!16) (extraKeys!2347 newMap!16) (zeroValue!2414 newMap!16) (minValue!2414 newMap!16) (select (arr!2032 (_keys!4236 (v!2845 (underlying!348 thiss!992)))) from!355) (defaultEntry!2536 newMap!16)))))

(assert (=> b!102032 (= lt!51822 call!10650)))

(declare-fun c!17590 () Bool)

(assert (=> b!102032 (= c!17590 ((_ is MissingZero!266) lt!51822))))

(assert (=> b!102032 e!66414))

(declare-fun b!102033 () Bool)

(declare-fun e!66410 () Unit!3112)

(declare-fun Unit!3128 () Unit!3112)

(assert (=> b!102033 (= e!66410 Unit!3128)))

(declare-fun lt!51834 () Unit!3112)

(declare-fun lemmaArrayContainsKeyThenInListMap!28 (array!4282 array!4284 (_ BitVec 32) (_ BitVec 32) V!3179 V!3179 (_ BitVec 64) (_ BitVec 32) Int) Unit!3112)

(assert (=> b!102033 (= lt!51834 (lemmaArrayContainsKeyThenInListMap!28 (_keys!4236 newMap!16) (_values!2519 newMap!16) (mask!6659 newMap!16) (extraKeys!2347 newMap!16) (zeroValue!2414 newMap!16) (minValue!2414 newMap!16) (select (arr!2032 (_keys!4236 (v!2845 (underlying!348 thiss!992)))) from!355) #b00000000000000000000000000000000 (defaultEntry!2536 newMap!16)))))

(assert (=> b!102033 (contains!816 (getCurrentListMap!477 (_keys!4236 newMap!16) (_values!2519 newMap!16) (mask!6659 newMap!16) (extraKeys!2347 newMap!16) (zeroValue!2414 newMap!16) (minValue!2414 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2536 newMap!16)) (select (arr!2032 (_keys!4236 (v!2845 (underlying!348 thiss!992)))) from!355))))

(declare-fun lt!51849 () Unit!3112)

(assert (=> b!102033 (= lt!51849 lt!51834)))

(assert (=> b!102033 false))

(declare-fun bm!10647 () Bool)

(assert (=> bm!10647 (= call!10651 call!10649)))

(declare-fun b!102034 () Bool)

(declare-fun res!51060 () Bool)

(assert (=> b!102034 (=> (not res!51060) (not e!66407))))

(assert (=> b!102034 (= res!51060 (valid!393 (_2!1197 lt!51832)))))

(declare-fun b!102025 () Bool)

(assert (=> b!102025 (= e!66409 ((_ is Undefined!266) lt!51822))))

(declare-fun d!27583 () Bool)

(assert (=> d!27583 e!66407))

(declare-fun res!51058 () Bool)

(assert (=> d!27583 (=> (not res!51058) (not e!66407))))

(assert (=> d!27583 (= res!51058 (_1!1197 lt!51832))))

(assert (=> d!27583 (= lt!51832 (tuple2!2375 true (LongMapFixedSize!871 (defaultEntry!2536 newMap!16) (mask!6659 newMap!16) (extraKeys!2347 newMap!16) (zeroValue!2414 newMap!16) (minValue!2414 newMap!16) (bvadd (_size!484 newMap!16) #b00000000000000000000000000000001) (array!4283 (store (arr!2032 (_keys!4236 newMap!16)) (ite c!17524 (index!3213 lt!51617) (index!3210 lt!51617)) (select (arr!2032 (_keys!4236 (v!2845 (underlying!348 thiss!992)))) from!355)) (size!2285 (_keys!4236 newMap!16))) (array!4285 (store (arr!2033 (_values!2519 newMap!16)) (ite c!17524 (index!3213 lt!51617) (index!3210 lt!51617)) (ValueCellFull!981 (get!1316 (select (arr!2033 (_values!2519 (v!2845 (underlying!348 thiss!992)))) from!355) (dynLambda!383 (defaultEntry!2536 (v!2845 (underlying!348 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (size!2286 (_values!2519 newMap!16))) (_vacant!484 newMap!16))))))

(declare-fun lt!51841 () Unit!3112)

(declare-fun lt!51828 () Unit!3112)

(assert (=> d!27583 (= lt!51841 lt!51828)))

(declare-fun lt!51840 () array!4282)

(declare-fun lt!51836 () array!4284)

(assert (=> d!27583 (contains!816 (getCurrentListMap!477 lt!51840 lt!51836 (mask!6659 newMap!16) (extraKeys!2347 newMap!16) (zeroValue!2414 newMap!16) (minValue!2414 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2536 newMap!16)) (select (store (arr!2032 (_keys!4236 newMap!16)) (ite c!17524 (index!3213 lt!51617) (index!3210 lt!51617)) (select (arr!2032 (_keys!4236 (v!2845 (underlying!348 thiss!992)))) from!355)) (ite c!17524 (index!3213 lt!51617) (index!3210 lt!51617))))))

(assert (=> d!27583 (= lt!51828 (lemmaValidKeyInArrayIsInListMap!102 lt!51840 lt!51836 (mask!6659 newMap!16) (extraKeys!2347 newMap!16) (zeroValue!2414 newMap!16) (minValue!2414 newMap!16) (ite c!17524 (index!3213 lt!51617) (index!3210 lt!51617)) (defaultEntry!2536 newMap!16)))))

(assert (=> d!27583 (= lt!51836 (array!4285 (store (arr!2033 (_values!2519 newMap!16)) (ite c!17524 (index!3213 lt!51617) (index!3210 lt!51617)) (ValueCellFull!981 (get!1316 (select (arr!2033 (_values!2519 (v!2845 (underlying!348 thiss!992)))) from!355) (dynLambda!383 (defaultEntry!2536 (v!2845 (underlying!348 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (size!2286 (_values!2519 newMap!16))))))

(assert (=> d!27583 (= lt!51840 (array!4283 (store (arr!2032 (_keys!4236 newMap!16)) (ite c!17524 (index!3213 lt!51617) (index!3210 lt!51617)) (select (arr!2032 (_keys!4236 (v!2845 (underlying!348 thiss!992)))) from!355)) (size!2285 (_keys!4236 newMap!16))))))

(declare-fun lt!51845 () Unit!3112)

(declare-fun lt!51848 () Unit!3112)

(assert (=> d!27583 (= lt!51845 lt!51848)))

(declare-fun lt!51833 () array!4282)

(assert (=> d!27583 (= (arrayCountValidKeys!0 lt!51833 (ite c!17524 (index!3213 lt!51617) (index!3210 lt!51617)) (bvadd (ite c!17524 (index!3213 lt!51617) (index!3210 lt!51617)) #b00000000000000000000000000000001)) #b00000000000000000000000000000001)))

(declare-fun lemmaValidKeyAtIImpliesCountKeysIsOne!0 (array!4282 (_ BitVec 32)) Unit!3112)

(assert (=> d!27583 (= lt!51848 (lemmaValidKeyAtIImpliesCountKeysIsOne!0 lt!51833 (ite c!17524 (index!3213 lt!51617) (index!3210 lt!51617))))))

(assert (=> d!27583 (= lt!51833 (array!4283 (store (arr!2032 (_keys!4236 newMap!16)) (ite c!17524 (index!3213 lt!51617) (index!3210 lt!51617)) (select (arr!2032 (_keys!4236 (v!2845 (underlying!348 thiss!992)))) from!355)) (size!2285 (_keys!4236 newMap!16))))))

(declare-fun lt!51839 () Unit!3112)

(declare-fun lt!51842 () Unit!3112)

(assert (=> d!27583 (= lt!51839 lt!51842)))

(declare-fun lt!51843 () array!4282)

(assert (=> d!27583 (arrayContainsKey!0 lt!51843 (select (arr!2032 (_keys!4236 (v!2845 (underlying!348 thiss!992)))) from!355) #b00000000000000000000000000000000)))

(assert (=> d!27583 (= lt!51842 (lemmaArrayContainsFromImpliesContainsFromZero!0 lt!51843 (select (arr!2032 (_keys!4236 (v!2845 (underlying!348 thiss!992)))) from!355) (ite c!17524 (index!3213 lt!51617) (index!3210 lt!51617))))))

(assert (=> d!27583 (= lt!51843 (array!4283 (store (arr!2032 (_keys!4236 newMap!16)) (ite c!17524 (index!3213 lt!51617) (index!3210 lt!51617)) (select (arr!2032 (_keys!4236 (v!2845 (underlying!348 thiss!992)))) from!355)) (size!2285 (_keys!4236 newMap!16))))))

(declare-fun lt!51826 () Unit!3112)

(declare-fun lt!51844 () Unit!3112)

(assert (=> d!27583 (= lt!51826 lt!51844)))

(assert (=> d!27583 (= (+!141 (getCurrentListMap!477 (_keys!4236 newMap!16) (_values!2519 newMap!16) (mask!6659 newMap!16) (extraKeys!2347 newMap!16) (zeroValue!2414 newMap!16) (minValue!2414 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2536 newMap!16)) (tuple2!2377 (select (arr!2032 (_keys!4236 (v!2845 (underlying!348 thiss!992)))) from!355) (get!1316 (select (arr!2033 (_values!2519 (v!2845 (underlying!348 thiss!992)))) from!355) (dynLambda!383 (defaultEntry!2536 (v!2845 (underlying!348 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (getCurrentListMap!477 (array!4283 (store (arr!2032 (_keys!4236 newMap!16)) (ite c!17524 (index!3213 lt!51617) (index!3210 lt!51617)) (select (arr!2032 (_keys!4236 (v!2845 (underlying!348 thiss!992)))) from!355)) (size!2285 (_keys!4236 newMap!16))) (array!4285 (store (arr!2033 (_values!2519 newMap!16)) (ite c!17524 (index!3213 lt!51617) (index!3210 lt!51617)) (ValueCellFull!981 (get!1316 (select (arr!2033 (_values!2519 (v!2845 (underlying!348 thiss!992)))) from!355) (dynLambda!383 (defaultEntry!2536 (v!2845 (underlying!348 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (size!2286 (_values!2519 newMap!16))) (mask!6659 newMap!16) (extraKeys!2347 newMap!16) (zeroValue!2414 newMap!16) (minValue!2414 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2536 newMap!16)))))

(declare-fun lemmaAddValidKeyToArrayThenAddPairToListMap!28 (array!4282 array!4284 (_ BitVec 32) (_ BitVec 32) V!3179 V!3179 (_ BitVec 32) (_ BitVec 64) V!3179 Int) Unit!3112)

(assert (=> d!27583 (= lt!51844 (lemmaAddValidKeyToArrayThenAddPairToListMap!28 (_keys!4236 newMap!16) (_values!2519 newMap!16) (mask!6659 newMap!16) (extraKeys!2347 newMap!16) (zeroValue!2414 newMap!16) (minValue!2414 newMap!16) (ite c!17524 (index!3213 lt!51617) (index!3210 lt!51617)) (select (arr!2032 (_keys!4236 (v!2845 (underlying!348 thiss!992)))) from!355) (get!1316 (select (arr!2033 (_values!2519 (v!2845 (underlying!348 thiss!992)))) from!355) (dynLambda!383 (defaultEntry!2536 (v!2845 (underlying!348 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (defaultEntry!2536 newMap!16)))))

(declare-fun lt!51835 () Unit!3112)

(declare-fun lt!51824 () Unit!3112)

(assert (=> d!27583 (= lt!51835 lt!51824)))

(assert (=> d!27583 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (array!4283 (store (arr!2032 (_keys!4236 newMap!16)) (ite c!17524 (index!3213 lt!51617) (index!3210 lt!51617)) (select (arr!2032 (_keys!4236 (v!2845 (underlying!348 thiss!992)))) from!355)) (size!2285 (_keys!4236 newMap!16))) (mask!6659 newMap!16))))

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpen!0 ((_ BitVec 64) array!4282 (_ BitVec 32) (_ BitVec 32)) Unit!3112)

(assert (=> d!27583 (= lt!51824 (lemmaPutValidKeyPreservesForallSeekEntryOrOpen!0 (select (arr!2032 (_keys!4236 (v!2845 (underlying!348 thiss!992)))) from!355) (_keys!4236 newMap!16) (ite c!17524 (index!3213 lt!51617) (index!3210 lt!51617)) (mask!6659 newMap!16)))))

(declare-fun lt!51838 () Unit!3112)

(declare-fun lt!51827 () Unit!3112)

(assert (=> d!27583 (= lt!51838 lt!51827)))

(assert (=> d!27583 (= (arrayCountValidKeys!0 (array!4283 (store (arr!2032 (_keys!4236 newMap!16)) (ite c!17524 (index!3213 lt!51617) (index!3210 lt!51617)) (select (arr!2032 (_keys!4236 (v!2845 (underlying!348 thiss!992)))) from!355)) (size!2285 (_keys!4236 newMap!16))) #b00000000000000000000000000000000 (size!2285 (_keys!4236 newMap!16))) (bvadd (arrayCountValidKeys!0 (_keys!4236 newMap!16) #b00000000000000000000000000000000 (size!2285 (_keys!4236 newMap!16))) #b00000000000000000000000000000001))))

(declare-fun lemmaAddValidKeyIncreasesNumberOfValidKeysInArray!0 (array!4282 (_ BitVec 32) (_ BitVec 64)) Unit!3112)

(assert (=> d!27583 (= lt!51827 (lemmaAddValidKeyIncreasesNumberOfValidKeysInArray!0 (_keys!4236 newMap!16) (ite c!17524 (index!3213 lt!51617) (index!3210 lt!51617)) (select (arr!2032 (_keys!4236 (v!2845 (underlying!348 thiss!992)))) from!355)))))

(declare-fun lt!51823 () Unit!3112)

(declare-fun lt!51821 () Unit!3112)

(assert (=> d!27583 (= lt!51823 lt!51821)))

(declare-fun lt!51831 () (_ BitVec 32))

(declare-fun lt!51820 () List!1620)

(assert (=> d!27583 (arrayNoDuplicates!0 (array!4283 (store (arr!2032 (_keys!4236 newMap!16)) (ite c!17524 (index!3213 lt!51617) (index!3210 lt!51617)) (select (arr!2032 (_keys!4236 (v!2845 (underlying!348 thiss!992)))) from!355)) (size!2285 (_keys!4236 newMap!16))) lt!51831 lt!51820)))

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!4282 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!1620) Unit!3112)

(assert (=> d!27583 (= lt!51821 (lemmaPutNewValidKeyPreservesNoDuplicate!0 (_keys!4236 newMap!16) (select (arr!2032 (_keys!4236 (v!2845 (underlying!348 thiss!992)))) from!355) (ite c!17524 (index!3213 lt!51617) (index!3210 lt!51617)) lt!51831 lt!51820))))

(assert (=> d!27583 (= lt!51820 Nil!1617)))

(assert (=> d!27583 (= lt!51831 #b00000000000000000000000000000000)))

(declare-fun lt!51837 () Unit!3112)

(assert (=> d!27583 (= lt!51837 e!66410)))

(declare-fun c!17592 () Bool)

(assert (=> d!27583 (= c!17592 (arrayContainsKey!0 (_keys!4236 newMap!16) (select (arr!2032 (_keys!4236 (v!2845 (underlying!348 thiss!992)))) from!355) #b00000000000000000000000000000000))))

(declare-fun lt!51829 () Unit!3112)

(assert (=> d!27583 (= lt!51829 e!66408)))

(declare-fun c!17589 () Bool)

(assert (=> d!27583 (= c!17589 (contains!816 (getCurrentListMap!477 (_keys!4236 newMap!16) (_values!2519 newMap!16) (mask!6659 newMap!16) (extraKeys!2347 newMap!16) (zeroValue!2414 newMap!16) (minValue!2414 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2536 newMap!16)) (select (arr!2032 (_keys!4236 (v!2845 (underlying!348 thiss!992)))) from!355)))))

(assert (=> d!27583 (valid!393 newMap!16)))

(assert (=> d!27583 (= (updateHelperNewKey!44 newMap!16 (select (arr!2032 (_keys!4236 (v!2845 (underlying!348 thiss!992)))) from!355) (get!1316 (select (arr!2033 (_values!2519 (v!2845 (underlying!348 thiss!992)))) from!355) (dynLambda!383 (defaultEntry!2536 (v!2845 (underlying!348 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (ite c!17524 (index!3213 lt!51617) (index!3210 lt!51617))) lt!51832)))

(declare-fun bm!10648 () Bool)

(assert (=> bm!10648 (= call!10652 (arrayContainsKey!0 (_keys!4236 newMap!16) (select (arr!2032 (_keys!4236 (v!2845 (underlying!348 thiss!992)))) from!355) #b00000000000000000000000000000000))))

(declare-fun b!102035 () Bool)

(assert (=> b!102035 (= e!66412 (= (select (arr!2032 (_keys!4236 newMap!16)) (index!3211 lt!51846)) (select (arr!2032 (_keys!4236 (v!2845 (underlying!348 thiss!992)))) from!355)))))

(declare-fun b!102036 () Bool)

(assert (=> b!102036 (= e!66409 e!66411)))

(declare-fun res!51064 () Bool)

(assert (=> b!102036 (= res!51064 call!10651)))

(assert (=> b!102036 (=> (not res!51064) (not e!66411))))

(declare-fun b!102037 () Bool)

(declare-fun Unit!3129 () Unit!3112)

(assert (=> b!102037 (= e!66410 Unit!3129)))

(declare-fun bm!10649 () Bool)

(assert (=> bm!10649 (= call!10649 (inRange!0 (ite c!17589 (index!3211 lt!51846) (ite c!17590 (index!3210 lt!51822) (index!3213 lt!51822))) (mask!6659 newMap!16)))))

(declare-fun b!102038 () Bool)

(declare-fun res!51062 () Bool)

(assert (=> b!102038 (=> (not res!51062) (not e!66407))))

(assert (=> b!102038 (= res!51062 (contains!816 (map!1266 (_2!1197 lt!51832)) (select (arr!2032 (_keys!4236 (v!2845 (underlying!348 thiss!992)))) from!355)))))

(assert (= (and d!27583 c!17589) b!102022))

(assert (= (and d!27583 (not c!17589)) b!102032))

(assert (= (and b!102022 res!51059) b!102024))

(assert (= (and b!102024 res!51057) b!102035))

(assert (= (and b!102032 c!17590) b!102023))

(assert (= (and b!102032 (not c!17590)) b!102027))

(assert (= (and b!102023 res!51056) b!102030))

(assert (= (and b!102030 res!51061) b!102029))

(assert (= (and b!102027 c!17591) b!102036))

(assert (= (and b!102027 (not c!17591)) b!102025))

(assert (= (and b!102036 res!51064) b!102031))

(assert (= (and b!102031 res!51063) b!102026))

(assert (= (or b!102023 b!102036) bm!10647))

(assert (= (or b!102029 b!102026) bm!10648))

(assert (= (or b!102024 bm!10647) bm!10649))

(assert (= (or b!102022 b!102032) bm!10646))

(assert (= (and d!27583 c!17592) b!102033))

(assert (= (and d!27583 (not c!17592)) b!102037))

(assert (= (and d!27583 res!51058) b!102034))

(assert (= (and b!102034 res!51060) b!102038))

(assert (= (and b!102038 res!51062) b!102028))

(assert (=> bm!10646 m!112547))

(assert (=> bm!10646 m!112697))

(declare-fun m!112953 () Bool)

(assert (=> b!102030 m!112953))

(declare-fun m!112955 () Bool)

(assert (=> b!102028 m!112955))

(assert (=> b!102028 m!112579))

(assert (=> b!102028 m!112579))

(declare-fun m!112957 () Bool)

(assert (=> b!102028 m!112957))

(declare-fun m!112959 () Bool)

(assert (=> b!102031 m!112959))

(assert (=> b!102022 m!112547))

(assert (=> b!102022 m!112683))

(assert (=> b!102033 m!112547))

(declare-fun m!112961 () Bool)

(assert (=> b!102033 m!112961))

(assert (=> b!102033 m!112741))

(assert (=> b!102033 m!112741))

(assert (=> b!102033 m!112547))

(declare-fun m!112963 () Bool)

(assert (=> b!102033 m!112963))

(declare-fun m!112965 () Bool)

(assert (=> bm!10649 m!112965))

(declare-fun m!112967 () Bool)

(assert (=> d!27583 m!112967))

(declare-fun m!112969 () Bool)

(assert (=> d!27583 m!112969))

(assert (=> d!27583 m!112547))

(assert (=> d!27583 m!112545))

(declare-fun m!112971 () Bool)

(assert (=> d!27583 m!112971))

(assert (=> d!27583 m!112727))

(declare-fun m!112973 () Bool)

(assert (=> d!27583 m!112973))

(assert (=> d!27583 m!112547))

(declare-fun m!112975 () Bool)

(assert (=> d!27583 m!112975))

(declare-fun m!112977 () Bool)

(assert (=> d!27583 m!112977))

(declare-fun m!112979 () Bool)

(assert (=> d!27583 m!112979))

(declare-fun m!112981 () Bool)

(assert (=> d!27583 m!112981))

(declare-fun m!112983 () Bool)

(assert (=> d!27583 m!112983))

(assert (=> d!27583 m!112741))

(declare-fun m!112985 () Bool)

(assert (=> d!27583 m!112985))

(assert (=> d!27583 m!112979))

(assert (=> d!27583 m!112983))

(declare-fun m!112987 () Bool)

(assert (=> d!27583 m!112987))

(assert (=> d!27583 m!112741))

(declare-fun m!112989 () Bool)

(assert (=> d!27583 m!112989))

(assert (=> d!27583 m!112547))

(declare-fun m!112991 () Bool)

(assert (=> d!27583 m!112991))

(declare-fun m!112993 () Bool)

(assert (=> d!27583 m!112993))

(assert (=> d!27583 m!112741))

(assert (=> d!27583 m!112547))

(assert (=> d!27583 m!112963))

(declare-fun m!112995 () Bool)

(assert (=> d!27583 m!112995))

(assert (=> d!27583 m!112547))

(declare-fun m!112997 () Bool)

(assert (=> d!27583 m!112997))

(assert (=> d!27583 m!112553))

(assert (=> d!27583 m!112547))

(declare-fun m!112999 () Bool)

(assert (=> d!27583 m!112999))

(assert (=> d!27583 m!112547))

(declare-fun m!113001 () Bool)

(assert (=> d!27583 m!113001))

(assert (=> d!27583 m!112547))

(assert (=> d!27583 m!112687))

(declare-fun m!113003 () Bool)

(assert (=> d!27583 m!113003))

(declare-fun m!113005 () Bool)

(assert (=> b!102034 m!113005))

(assert (=> bm!10648 m!112547))

(assert (=> bm!10648 m!112687))

(assert (=> b!102038 m!112955))

(assert (=> b!102038 m!112955))

(assert (=> b!102038 m!112547))

(declare-fun m!113007 () Bool)

(assert (=> b!102038 m!113007))

(assert (=> b!102032 m!112547))

(assert (=> b!102032 m!112695))

(declare-fun m!113009 () Bool)

(assert (=> b!102035 m!113009))

(assert (=> bm!10585 d!27583))

(declare-fun d!27585 () Bool)

(assert (=> d!27585 (isDefined!106 (getValueByKey!152 (toList!797 lt!51494) (select (arr!2032 (_keys!4236 (v!2845 (underlying!348 thiss!992)))) from!355)))))

(declare-fun lt!51852 () Unit!3112)

(declare-fun choose!634 (List!1621 (_ BitVec 64)) Unit!3112)

(assert (=> d!27585 (= lt!51852 (choose!634 (toList!797 lt!51494) (select (arr!2032 (_keys!4236 (v!2845 (underlying!348 thiss!992)))) from!355)))))

(declare-fun e!66417 () Bool)

(assert (=> d!27585 e!66417))

(declare-fun res!51067 () Bool)

(assert (=> d!27585 (=> (not res!51067) (not e!66417))))

(declare-fun isStrictlySorted!302 (List!1621) Bool)

(assert (=> d!27585 (= res!51067 (isStrictlySorted!302 (toList!797 lt!51494)))))

(assert (=> d!27585 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!105 (toList!797 lt!51494) (select (arr!2032 (_keys!4236 (v!2845 (underlying!348 thiss!992)))) from!355)) lt!51852)))

(declare-fun b!102041 () Bool)

(assert (=> b!102041 (= e!66417 (containsKey!156 (toList!797 lt!51494) (select (arr!2032 (_keys!4236 (v!2845 (underlying!348 thiss!992)))) from!355)))))

(assert (= (and d!27585 res!51067) b!102041))

(assert (=> d!27585 m!112547))

(assert (=> d!27585 m!112661))

(assert (=> d!27585 m!112661))

(assert (=> d!27585 m!112663))

(assert (=> d!27585 m!112547))

(declare-fun m!113011 () Bool)

(assert (=> d!27585 m!113011))

(declare-fun m!113013 () Bool)

(assert (=> d!27585 m!113013))

(assert (=> b!102041 m!112547))

(assert (=> b!102041 m!112657))

(assert (=> b!101693 d!27585))

(assert (=> b!101693 d!27575))

(assert (=> b!101693 d!27577))

(declare-fun b!102058 () Bool)

(declare-fun lt!51858 () SeekEntryResult!266)

(assert (=> b!102058 (and (bvsge (index!3210 lt!51858) #b00000000000000000000000000000000) (bvslt (index!3210 lt!51858) (size!2285 (_keys!4236 newMap!16))))))

(declare-fun res!51076 () Bool)

(assert (=> b!102058 (= res!51076 (= (select (arr!2032 (_keys!4236 newMap!16)) (index!3210 lt!51858)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!66427 () Bool)

(assert (=> b!102058 (=> (not res!51076) (not e!66427))))

(declare-fun d!27587 () Bool)

(declare-fun e!66429 () Bool)

(assert (=> d!27587 e!66429))

(declare-fun c!17597 () Bool)

(assert (=> d!27587 (= c!17597 ((_ is MissingZero!266) lt!51858))))

(assert (=> d!27587 (= lt!51858 (seekEntryOrOpen!0 (select (arr!2032 (_keys!4236 (v!2845 (underlying!348 thiss!992)))) from!355) (_keys!4236 newMap!16) (mask!6659 newMap!16)))))

(declare-fun lt!51857 () Unit!3112)

(declare-fun choose!635 (array!4282 array!4284 (_ BitVec 32) (_ BitVec 32) V!3179 V!3179 (_ BitVec 64) Int) Unit!3112)

(assert (=> d!27587 (= lt!51857 (choose!635 (_keys!4236 newMap!16) (_values!2519 newMap!16) (mask!6659 newMap!16) (extraKeys!2347 newMap!16) (zeroValue!2414 newMap!16) (minValue!2414 newMap!16) (select (arr!2032 (_keys!4236 (v!2845 (underlying!348 thiss!992)))) from!355) (defaultEntry!2536 newMap!16)))))

(assert (=> d!27587 (validMask!0 (mask!6659 newMap!16))))

(assert (=> d!27587 (= (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!44 (_keys!4236 newMap!16) (_values!2519 newMap!16) (mask!6659 newMap!16) (extraKeys!2347 newMap!16) (zeroValue!2414 newMap!16) (minValue!2414 newMap!16) (select (arr!2032 (_keys!4236 (v!2845 (underlying!348 thiss!992)))) from!355) (defaultEntry!2536 newMap!16)) lt!51857)))

(declare-fun b!102059 () Bool)

(assert (=> b!102059 (= e!66429 e!66427)))

(declare-fun res!51079 () Bool)

(declare-fun call!10658 () Bool)

(assert (=> b!102059 (= res!51079 call!10658)))

(assert (=> b!102059 (=> (not res!51079) (not e!66427))))

(declare-fun b!102060 () Bool)

(declare-fun e!66426 () Bool)

(assert (=> b!102060 (= e!66429 e!66426)))

(declare-fun c!17598 () Bool)

(assert (=> b!102060 (= c!17598 ((_ is MissingVacant!266) lt!51858))))

(declare-fun b!102061 () Bool)

(assert (=> b!102061 (= e!66426 ((_ is Undefined!266) lt!51858))))

(declare-fun bm!10654 () Bool)

(assert (=> bm!10654 (= call!10658 (inRange!0 (ite c!17597 (index!3210 lt!51858) (index!3213 lt!51858)) (mask!6659 newMap!16)))))

(declare-fun b!102062 () Bool)

(declare-fun res!51078 () Bool)

(declare-fun e!66428 () Bool)

(assert (=> b!102062 (=> (not res!51078) (not e!66428))))

(assert (=> b!102062 (= res!51078 call!10658)))

(assert (=> b!102062 (= e!66426 e!66428)))

(declare-fun b!102063 () Bool)

(declare-fun call!10657 () Bool)

(assert (=> b!102063 (= e!66427 (not call!10657))))

(declare-fun bm!10655 () Bool)

(assert (=> bm!10655 (= call!10657 (arrayContainsKey!0 (_keys!4236 newMap!16) (select (arr!2032 (_keys!4236 (v!2845 (underlying!348 thiss!992)))) from!355) #b00000000000000000000000000000000))))

(declare-fun b!102064 () Bool)

(declare-fun res!51077 () Bool)

(assert (=> b!102064 (=> (not res!51077) (not e!66428))))

(assert (=> b!102064 (= res!51077 (= (select (arr!2032 (_keys!4236 newMap!16)) (index!3213 lt!51858)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!102064 (and (bvsge (index!3213 lt!51858) #b00000000000000000000000000000000) (bvslt (index!3213 lt!51858) (size!2285 (_keys!4236 newMap!16))))))

(declare-fun b!102065 () Bool)

(assert (=> b!102065 (= e!66428 (not call!10657))))

(assert (= (and d!27587 c!17597) b!102059))

(assert (= (and d!27587 (not c!17597)) b!102060))

(assert (= (and b!102059 res!51079) b!102058))

(assert (= (and b!102058 res!51076) b!102063))

(assert (= (and b!102060 c!17598) b!102062))

(assert (= (and b!102060 (not c!17598)) b!102061))

(assert (= (and b!102062 res!51078) b!102064))

(assert (= (and b!102064 res!51077) b!102065))

(assert (= (or b!102059 b!102062) bm!10654))

(assert (= (or b!102063 b!102065) bm!10655))

(assert (=> d!27587 m!112547))

(assert (=> d!27587 m!112697))

(assert (=> d!27587 m!112547))

(declare-fun m!113015 () Bool)

(assert (=> d!27587 m!113015))

(assert (=> d!27587 m!112823))

(declare-fun m!113017 () Bool)

(assert (=> b!102058 m!113017))

(assert (=> bm!10655 m!112547))

(assert (=> bm!10655 m!112687))

(declare-fun m!113019 () Bool)

(assert (=> b!102064 m!113019))

(declare-fun m!113021 () Bool)

(assert (=> bm!10654 m!113021))

(assert (=> bm!10588 d!27587))

(declare-fun b!102066 () Bool)

(declare-fun e!66435 () Bool)

(declare-fun e!66430 () Bool)

(assert (=> b!102066 (= e!66435 e!66430)))

(declare-fun res!51082 () Bool)

(declare-fun call!10663 () Bool)

(assert (=> b!102066 (= res!51082 call!10663)))

(assert (=> b!102066 (=> (not res!51082) (not e!66430))))

(declare-fun b!102067 () Bool)

(declare-fun e!66432 () ListLongMap!1563)

(declare-fun call!10660 () ListLongMap!1563)

(assert (=> b!102067 (= e!66432 (+!141 call!10660 (tuple2!2377 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2414 newMap!16))))))

(declare-fun b!102068 () Bool)

(declare-fun res!51081 () Bool)

(declare-fun e!66436 () Bool)

(assert (=> b!102068 (=> (not res!51081) (not e!66436))))

(declare-fun e!66440 () Bool)

(assert (=> b!102068 (= res!51081 e!66440)))

(declare-fun c!17600 () Bool)

(assert (=> b!102068 (= c!17600 (not (= (bvand (extraKeys!2347 newMap!16) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun call!10662 () ListLongMap!1563)

(declare-fun bm!10656 () Bool)

(assert (=> bm!10656 (= call!10662 (getCurrentListMapNoExtraKeys!105 (_keys!4236 newMap!16) (ite c!17529 (_values!2519 newMap!16) (array!4285 (store (arr!2033 (_values!2519 newMap!16)) (index!3211 lt!51617) (ValueCellFull!981 (get!1316 (select (arr!2033 (_values!2519 (v!2845 (underlying!348 thiss!992)))) from!355) (dynLambda!383 (defaultEntry!2536 (v!2845 (underlying!348 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (size!2286 (_values!2519 newMap!16)))) (mask!6659 newMap!16) (extraKeys!2347 newMap!16) (zeroValue!2414 newMap!16) (minValue!2414 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2536 newMap!16)))))

(declare-fun b!102069 () Bool)

(declare-fun e!66438 () ListLongMap!1563)

(declare-fun call!10659 () ListLongMap!1563)

(assert (=> b!102069 (= e!66438 call!10659)))

(declare-fun e!66433 () Bool)

(declare-fun b!102070 () Bool)

(declare-fun lt!51880 () ListLongMap!1563)

(assert (=> b!102070 (= e!66433 (= (apply!95 lt!51880 (select (arr!2032 (_keys!4236 newMap!16)) #b00000000000000000000000000000000)) (get!1316 (select (arr!2033 (ite c!17529 (_values!2519 newMap!16) (array!4285 (store (arr!2033 (_values!2519 newMap!16)) (index!3211 lt!51617) (ValueCellFull!981 (get!1316 (select (arr!2033 (_values!2519 (v!2845 (underlying!348 thiss!992)))) from!355) (dynLambda!383 (defaultEntry!2536 (v!2845 (underlying!348 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (size!2286 (_values!2519 newMap!16))))) #b00000000000000000000000000000000) (dynLambda!383 (defaultEntry!2536 newMap!16) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!102070 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!2286 (ite c!17529 (_values!2519 newMap!16) (array!4285 (store (arr!2033 (_values!2519 newMap!16)) (index!3211 lt!51617) (ValueCellFull!981 (get!1316 (select (arr!2033 (_values!2519 (v!2845 (underlying!348 thiss!992)))) from!355) (dynLambda!383 (defaultEntry!2536 (v!2845 (underlying!348 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (size!2286 (_values!2519 newMap!16)))))))))

(assert (=> b!102070 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!2285 (_keys!4236 newMap!16))))))

(declare-fun b!102071 () Bool)

(declare-fun e!66434 () Bool)

(assert (=> b!102071 (= e!66434 (validKeyInArray!0 (select (arr!2032 (_keys!4236 newMap!16)) #b00000000000000000000000000000000)))))

(declare-fun c!17602 () Bool)

(declare-fun c!17601 () Bool)

(declare-fun call!10661 () ListLongMap!1563)

(declare-fun bm!10657 () Bool)

(declare-fun call!10664 () ListLongMap!1563)

(assert (=> bm!10657 (= call!10660 (+!141 (ite c!17602 call!10662 (ite c!17601 call!10661 call!10664)) (ite (or c!17602 c!17601) (tuple2!2377 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2414 newMap!16)) (tuple2!2377 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2414 newMap!16)))))))

(declare-fun b!102072 () Bool)

(declare-fun e!66431 () Bool)

(assert (=> b!102072 (= e!66440 e!66431)))

(declare-fun res!51083 () Bool)

(declare-fun call!10665 () Bool)

(assert (=> b!102072 (= res!51083 call!10665)))

(assert (=> b!102072 (=> (not res!51083) (not e!66431))))

(declare-fun b!102073 () Bool)

(assert (=> b!102073 (= e!66436 e!66435)))

(declare-fun c!17603 () Bool)

(assert (=> b!102073 (= c!17603 (not (= (bvand (extraKeys!2347 newMap!16) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!102074 () Bool)

(declare-fun e!66441 () Bool)

(assert (=> b!102074 (= e!66441 e!66433)))

(declare-fun res!51080 () Bool)

(assert (=> b!102074 (=> (not res!51080) (not e!66433))))

(assert (=> b!102074 (= res!51080 (contains!816 lt!51880 (select (arr!2032 (_keys!4236 newMap!16)) #b00000000000000000000000000000000)))))

(assert (=> b!102074 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!2285 (_keys!4236 newMap!16))))))

(declare-fun b!102075 () Bool)

(declare-fun e!66439 () ListLongMap!1563)

(assert (=> b!102075 (= e!66432 e!66439)))

(assert (=> b!102075 (= c!17601 (and (not (= (bvand (extraKeys!2347 newMap!16) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand (extraKeys!2347 newMap!16) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun bm!10658 () Bool)

(assert (=> bm!10658 (= call!10665 (contains!816 lt!51880 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!102076 () Bool)

(declare-fun e!66442 () Unit!3112)

(declare-fun Unit!3130 () Unit!3112)

(assert (=> b!102076 (= e!66442 Unit!3130)))

(declare-fun b!102077 () Bool)

(assert (=> b!102077 (= e!66438 call!10664)))

(declare-fun b!102078 () Bool)

(assert (=> b!102078 (= e!66435 (not call!10663))))

(declare-fun bm!10659 () Bool)

(assert (=> bm!10659 (= call!10659 call!10660)))

(declare-fun b!102079 () Bool)

(assert (=> b!102079 (= e!66431 (= (apply!95 lt!51880 #b0000000000000000000000000000000000000000000000000000000000000000) (zeroValue!2414 newMap!16)))))

(declare-fun b!102080 () Bool)

(declare-fun lt!51877 () Unit!3112)

(assert (=> b!102080 (= e!66442 lt!51877)))

(declare-fun lt!51862 () ListLongMap!1563)

(assert (=> b!102080 (= lt!51862 (getCurrentListMapNoExtraKeys!105 (_keys!4236 newMap!16) (ite c!17529 (_values!2519 newMap!16) (array!4285 (store (arr!2033 (_values!2519 newMap!16)) (index!3211 lt!51617) (ValueCellFull!981 (get!1316 (select (arr!2033 (_values!2519 (v!2845 (underlying!348 thiss!992)))) from!355) (dynLambda!383 (defaultEntry!2536 (v!2845 (underlying!348 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (size!2286 (_values!2519 newMap!16)))) (mask!6659 newMap!16) (extraKeys!2347 newMap!16) (zeroValue!2414 newMap!16) (minValue!2414 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2536 newMap!16)))))

(declare-fun lt!51865 () (_ BitVec 64))

(assert (=> b!102080 (= lt!51865 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!51875 () (_ BitVec 64))

(assert (=> b!102080 (= lt!51875 (select (arr!2032 (_keys!4236 newMap!16)) #b00000000000000000000000000000000))))

(declare-fun lt!51860 () Unit!3112)

(assert (=> b!102080 (= lt!51860 (addStillContains!71 lt!51862 lt!51865 (zeroValue!2414 newMap!16) lt!51875))))

(assert (=> b!102080 (contains!816 (+!141 lt!51862 (tuple2!2377 lt!51865 (zeroValue!2414 newMap!16))) lt!51875)))

(declare-fun lt!51864 () Unit!3112)

(assert (=> b!102080 (= lt!51864 lt!51860)))

(declare-fun lt!51876 () ListLongMap!1563)

(assert (=> b!102080 (= lt!51876 (getCurrentListMapNoExtraKeys!105 (_keys!4236 newMap!16) (ite c!17529 (_values!2519 newMap!16) (array!4285 (store (arr!2033 (_values!2519 newMap!16)) (index!3211 lt!51617) (ValueCellFull!981 (get!1316 (select (arr!2033 (_values!2519 (v!2845 (underlying!348 thiss!992)))) from!355) (dynLambda!383 (defaultEntry!2536 (v!2845 (underlying!348 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (size!2286 (_values!2519 newMap!16)))) (mask!6659 newMap!16) (extraKeys!2347 newMap!16) (zeroValue!2414 newMap!16) (minValue!2414 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2536 newMap!16)))))

(declare-fun lt!51871 () (_ BitVec 64))

(assert (=> b!102080 (= lt!51871 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!51870 () (_ BitVec 64))

(assert (=> b!102080 (= lt!51870 (select (arr!2032 (_keys!4236 newMap!16)) #b00000000000000000000000000000000))))

(declare-fun lt!51861 () Unit!3112)

(assert (=> b!102080 (= lt!51861 (addApplyDifferent!71 lt!51876 lt!51871 (minValue!2414 newMap!16) lt!51870))))

(assert (=> b!102080 (= (apply!95 (+!141 lt!51876 (tuple2!2377 lt!51871 (minValue!2414 newMap!16))) lt!51870) (apply!95 lt!51876 lt!51870))))

(declare-fun lt!51874 () Unit!3112)

(assert (=> b!102080 (= lt!51874 lt!51861)))

(declare-fun lt!51867 () ListLongMap!1563)

(assert (=> b!102080 (= lt!51867 (getCurrentListMapNoExtraKeys!105 (_keys!4236 newMap!16) (ite c!17529 (_values!2519 newMap!16) (array!4285 (store (arr!2033 (_values!2519 newMap!16)) (index!3211 lt!51617) (ValueCellFull!981 (get!1316 (select (arr!2033 (_values!2519 (v!2845 (underlying!348 thiss!992)))) from!355) (dynLambda!383 (defaultEntry!2536 (v!2845 (underlying!348 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (size!2286 (_values!2519 newMap!16)))) (mask!6659 newMap!16) (extraKeys!2347 newMap!16) (zeroValue!2414 newMap!16) (minValue!2414 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2536 newMap!16)))))

(declare-fun lt!51873 () (_ BitVec 64))

(assert (=> b!102080 (= lt!51873 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!51868 () (_ BitVec 64))

(assert (=> b!102080 (= lt!51868 (select (arr!2032 (_keys!4236 newMap!16)) #b00000000000000000000000000000000))))

(declare-fun lt!51878 () Unit!3112)

(assert (=> b!102080 (= lt!51878 (addApplyDifferent!71 lt!51867 lt!51873 (zeroValue!2414 newMap!16) lt!51868))))

(assert (=> b!102080 (= (apply!95 (+!141 lt!51867 (tuple2!2377 lt!51873 (zeroValue!2414 newMap!16))) lt!51868) (apply!95 lt!51867 lt!51868))))

(declare-fun lt!51879 () Unit!3112)

(assert (=> b!102080 (= lt!51879 lt!51878)))

(declare-fun lt!51863 () ListLongMap!1563)

(assert (=> b!102080 (= lt!51863 (getCurrentListMapNoExtraKeys!105 (_keys!4236 newMap!16) (ite c!17529 (_values!2519 newMap!16) (array!4285 (store (arr!2033 (_values!2519 newMap!16)) (index!3211 lt!51617) (ValueCellFull!981 (get!1316 (select (arr!2033 (_values!2519 (v!2845 (underlying!348 thiss!992)))) from!355) (dynLambda!383 (defaultEntry!2536 (v!2845 (underlying!348 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (size!2286 (_values!2519 newMap!16)))) (mask!6659 newMap!16) (extraKeys!2347 newMap!16) (zeroValue!2414 newMap!16) (minValue!2414 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2536 newMap!16)))))

(declare-fun lt!51872 () (_ BitVec 64))

(assert (=> b!102080 (= lt!51872 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!51859 () (_ BitVec 64))

(assert (=> b!102080 (= lt!51859 (select (arr!2032 (_keys!4236 newMap!16)) #b00000000000000000000000000000000))))

(assert (=> b!102080 (= lt!51877 (addApplyDifferent!71 lt!51863 lt!51872 (minValue!2414 newMap!16) lt!51859))))

(assert (=> b!102080 (= (apply!95 (+!141 lt!51863 (tuple2!2377 lt!51872 (minValue!2414 newMap!16))) lt!51859) (apply!95 lt!51863 lt!51859))))

(declare-fun b!102081 () Bool)

(declare-fun c!17599 () Bool)

(assert (=> b!102081 (= c!17599 (and (not (= (bvand (extraKeys!2347 newMap!16) #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand (extraKeys!2347 newMap!16) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!102081 (= e!66439 e!66438)))

(declare-fun b!102082 () Bool)

(declare-fun res!51087 () Bool)

(assert (=> b!102082 (=> (not res!51087) (not e!66436))))

(assert (=> b!102082 (= res!51087 e!66441)))

(declare-fun res!51084 () Bool)

(assert (=> b!102082 (=> res!51084 e!66441)))

(assert (=> b!102082 (= res!51084 (not e!66434))))

(declare-fun res!51088 () Bool)

(assert (=> b!102082 (=> (not res!51088) (not e!66434))))

(assert (=> b!102082 (= res!51088 (bvslt #b00000000000000000000000000000000 (size!2285 (_keys!4236 newMap!16))))))

(declare-fun bm!10660 () Bool)

(assert (=> bm!10660 (= call!10663 (contains!816 lt!51880 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!102083 () Bool)

(assert (=> b!102083 (= e!66430 (= (apply!95 lt!51880 #b1000000000000000000000000000000000000000000000000000000000000000) (minValue!2414 newMap!16)))))

(declare-fun d!27589 () Bool)

(assert (=> d!27589 e!66436))

(declare-fun res!51085 () Bool)

(assert (=> d!27589 (=> (not res!51085) (not e!66436))))

(assert (=> d!27589 (= res!51085 (or (bvsge #b00000000000000000000000000000000 (size!2285 (_keys!4236 newMap!16))) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!2285 (_keys!4236 newMap!16))))))))

(declare-fun lt!51866 () ListLongMap!1563)

(assert (=> d!27589 (= lt!51880 lt!51866)))

(declare-fun lt!51869 () Unit!3112)

(assert (=> d!27589 (= lt!51869 e!66442)))

(declare-fun c!17604 () Bool)

(declare-fun e!66437 () Bool)

(assert (=> d!27589 (= c!17604 e!66437)))

(declare-fun res!51086 () Bool)

(assert (=> d!27589 (=> (not res!51086) (not e!66437))))

(assert (=> d!27589 (= res!51086 (bvslt #b00000000000000000000000000000000 (size!2285 (_keys!4236 newMap!16))))))

(assert (=> d!27589 (= lt!51866 e!66432)))

(assert (=> d!27589 (= c!17602 (and (not (= (bvand (extraKeys!2347 newMap!16) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (extraKeys!2347 newMap!16) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!27589 (validMask!0 (mask!6659 newMap!16))))

(assert (=> d!27589 (= (getCurrentListMap!477 (_keys!4236 newMap!16) (ite c!17529 (_values!2519 newMap!16) (array!4285 (store (arr!2033 (_values!2519 newMap!16)) (index!3211 lt!51617) (ValueCellFull!981 (get!1316 (select (arr!2033 (_values!2519 (v!2845 (underlying!348 thiss!992)))) from!355) (dynLambda!383 (defaultEntry!2536 (v!2845 (underlying!348 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (size!2286 (_values!2519 newMap!16)))) (mask!6659 newMap!16) (extraKeys!2347 newMap!16) (zeroValue!2414 newMap!16) (minValue!2414 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2536 newMap!16)) lt!51880)))

(declare-fun b!102084 () Bool)

(assert (=> b!102084 (= e!66439 call!10659)))

(declare-fun b!102085 () Bool)

(assert (=> b!102085 (= e!66440 (not call!10665))))

(declare-fun bm!10661 () Bool)

(assert (=> bm!10661 (= call!10664 call!10661)))

(declare-fun bm!10662 () Bool)

(assert (=> bm!10662 (= call!10661 call!10662)))

(declare-fun b!102086 () Bool)

(assert (=> b!102086 (= e!66437 (validKeyInArray!0 (select (arr!2032 (_keys!4236 newMap!16)) #b00000000000000000000000000000000)))))

(assert (= (and d!27589 c!17602) b!102067))

(assert (= (and d!27589 (not c!17602)) b!102075))

(assert (= (and b!102075 c!17601) b!102084))

(assert (= (and b!102075 (not c!17601)) b!102081))

(assert (= (and b!102081 c!17599) b!102069))

(assert (= (and b!102081 (not c!17599)) b!102077))

(assert (= (or b!102069 b!102077) bm!10661))

(assert (= (or b!102084 bm!10661) bm!10662))

(assert (= (or b!102084 b!102069) bm!10659))

(assert (= (or b!102067 bm!10662) bm!10656))

(assert (= (or b!102067 bm!10659) bm!10657))

(assert (= (and d!27589 res!51086) b!102086))

(assert (= (and d!27589 c!17604) b!102080))

(assert (= (and d!27589 (not c!17604)) b!102076))

(assert (= (and d!27589 res!51085) b!102082))

(assert (= (and b!102082 res!51088) b!102071))

(assert (= (and b!102082 (not res!51084)) b!102074))

(assert (= (and b!102074 res!51080) b!102070))

(assert (= (and b!102082 res!51087) b!102068))

(assert (= (and b!102068 c!17600) b!102072))

(assert (= (and b!102068 (not c!17600)) b!102085))

(assert (= (and b!102072 res!51083) b!102079))

(assert (= (or b!102072 b!102085) bm!10658))

(assert (= (and b!102068 res!51081) b!102073))

(assert (= (and b!102073 c!17603) b!102066))

(assert (= (and b!102073 (not c!17603)) b!102078))

(assert (= (and b!102066 res!51082) b!102083))

(assert (= (or b!102066 b!102078) bm!10660))

(declare-fun b_lambda!4581 () Bool)

(assert (=> (not b_lambda!4581) (not b!102070)))

(assert (=> b!102070 t!5650))

(declare-fun b_and!6289 () Bool)

(assert (= b_and!6285 (and (=> t!5650 result!3367) b_and!6289)))

(assert (=> b!102070 t!5652))

(declare-fun b_and!6291 () Bool)

(assert (= b_and!6287 (and (=> t!5652 result!3369) b_and!6291)))

(declare-fun m!113023 () Bool)

(assert (=> bm!10658 m!113023))

(assert (=> b!102070 m!112805))

(declare-fun m!113025 () Bool)

(assert (=> b!102070 m!113025))

(assert (=> b!102070 m!112809))

(declare-fun m!113027 () Bool)

(assert (=> b!102070 m!113027))

(assert (=> b!102070 m!112809))

(declare-fun m!113029 () Bool)

(assert (=> b!102070 m!113029))

(assert (=> b!102070 m!113027))

(assert (=> b!102070 m!112805))

(declare-fun m!113031 () Bool)

(assert (=> b!102067 m!113031))

(declare-fun m!113033 () Bool)

(assert (=> b!102079 m!113033))

(declare-fun m!113035 () Bool)

(assert (=> bm!10657 m!113035))

(assert (=> b!102071 m!112805))

(assert (=> b!102071 m!112805))

(assert (=> b!102071 m!112821))

(assert (=> d!27589 m!112823))

(declare-fun m!113037 () Bool)

(assert (=> bm!10660 m!113037))

(declare-fun m!113039 () Bool)

(assert (=> b!102080 m!113039))

(declare-fun m!113041 () Bool)

(assert (=> b!102080 m!113041))

(declare-fun m!113043 () Bool)

(assert (=> b!102080 m!113043))

(declare-fun m!113045 () Bool)

(assert (=> b!102080 m!113045))

(declare-fun m!113047 () Bool)

(assert (=> b!102080 m!113047))

(assert (=> b!102080 m!113043))

(declare-fun m!113049 () Bool)

(assert (=> b!102080 m!113049))

(declare-fun m!113051 () Bool)

(assert (=> b!102080 m!113051))

(declare-fun m!113053 () Bool)

(assert (=> b!102080 m!113053))

(assert (=> b!102080 m!113051))

(declare-fun m!113055 () Bool)

(assert (=> b!102080 m!113055))

(declare-fun m!113057 () Bool)

(assert (=> b!102080 m!113057))

(declare-fun m!113059 () Bool)

(assert (=> b!102080 m!113059))

(declare-fun m!113061 () Bool)

(assert (=> b!102080 m!113061))

(assert (=> b!102080 m!113059))

(declare-fun m!113063 () Bool)

(assert (=> b!102080 m!113063))

(declare-fun m!113065 () Bool)

(assert (=> b!102080 m!113065))

(assert (=> b!102080 m!113047))

(declare-fun m!113067 () Bool)

(assert (=> b!102080 m!113067))

(declare-fun m!113069 () Bool)

(assert (=> b!102080 m!113069))

(assert (=> b!102080 m!112805))

(assert (=> b!102074 m!112805))

(assert (=> b!102074 m!112805))

(declare-fun m!113071 () Bool)

(assert (=> b!102074 m!113071))

(assert (=> b!102086 m!112805))

(assert (=> b!102086 m!112805))

(assert (=> b!102086 m!112821))

(assert (=> bm!10656 m!113069))

(declare-fun m!113073 () Bool)

(assert (=> b!102083 m!113073))

(assert (=> bm!10597 d!27589))

(declare-fun d!27591 () Bool)

(declare-fun e!66444 () Bool)

(assert (=> d!27591 e!66444))

(declare-fun res!51089 () Bool)

(assert (=> d!27591 (=> res!51089 e!66444)))

(declare-fun lt!51881 () Bool)

(assert (=> d!27591 (= res!51089 (not lt!51881))))

(declare-fun lt!51882 () Bool)

(assert (=> d!27591 (= lt!51881 lt!51882)))

(declare-fun lt!51884 () Unit!3112)

(declare-fun e!66443 () Unit!3112)

(assert (=> d!27591 (= lt!51884 e!66443)))

(declare-fun c!17605 () Bool)

(assert (=> d!27591 (= c!17605 lt!51882)))

(assert (=> d!27591 (= lt!51882 (containsKey!156 (toList!797 lt!51692) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!27591 (= (contains!816 lt!51692 #b0000000000000000000000000000000000000000000000000000000000000000) lt!51881)))

(declare-fun b!102087 () Bool)

(declare-fun lt!51883 () Unit!3112)

(assert (=> b!102087 (= e!66443 lt!51883)))

(assert (=> b!102087 (= lt!51883 (lemmaContainsKeyImpliesGetValueByKeyDefined!105 (toList!797 lt!51692) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!102087 (isDefined!106 (getValueByKey!152 (toList!797 lt!51692) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!102088 () Bool)

(declare-fun Unit!3131 () Unit!3112)

(assert (=> b!102088 (= e!66443 Unit!3131)))

(declare-fun b!102089 () Bool)

(assert (=> b!102089 (= e!66444 (isDefined!106 (getValueByKey!152 (toList!797 lt!51692) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!27591 c!17605) b!102087))

(assert (= (and d!27591 (not c!17605)) b!102088))

(assert (= (and d!27591 (not res!51089)) b!102089))

(declare-fun m!113075 () Bool)

(assert (=> d!27591 m!113075))

(declare-fun m!113077 () Bool)

(assert (=> b!102087 m!113077))

(declare-fun m!113079 () Bool)

(assert (=> b!102087 m!113079))

(assert (=> b!102087 m!113079))

(declare-fun m!113081 () Bool)

(assert (=> b!102087 m!113081))

(assert (=> b!102089 m!113079))

(assert (=> b!102089 m!113079))

(assert (=> b!102089 m!113081))

(assert (=> bm!10619 d!27591))

(declare-fun d!27593 () Bool)

(assert (=> d!27593 (= (get!1317 (select (arr!2033 (_values!2519 (v!2845 (underlying!348 thiss!992)))) from!355) (dynLambda!383 (defaultEntry!2536 (v!2845 (underlying!348 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (v!2844 (select (arr!2033 (_values!2519 (v!2845 (underlying!348 thiss!992)))) from!355)))))

(assert (=> b!101820 d!27593))

(declare-fun d!27595 () Bool)

(assert (=> d!27595 (= (+!141 (getCurrentListMap!477 (_keys!4236 newMap!16) (_values!2519 newMap!16) (mask!6659 newMap!16) (extraKeys!2347 newMap!16) (zeroValue!2414 newMap!16) (minValue!2414 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2536 newMap!16)) (tuple2!2377 #b0000000000000000000000000000000000000000000000000000000000000000 (get!1316 (select (arr!2033 (_values!2519 (v!2845 (underlying!348 thiss!992)))) from!355) (dynLambda!383 (defaultEntry!2536 (v!2845 (underlying!348 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (getCurrentListMap!477 (_keys!4236 newMap!16) (_values!2519 newMap!16) (mask!6659 newMap!16) lt!51612 (get!1316 (select (arr!2033 (_values!2519 (v!2845 (underlying!348 thiss!992)))) from!355) (dynLambda!383 (defaultEntry!2536 (v!2845 (underlying!348 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (minValue!2414 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2536 newMap!16)))))

(declare-fun lt!51887 () Unit!3112)

(declare-fun choose!636 (array!4282 array!4284 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!3179 V!3179 V!3179 Int) Unit!3112)

(assert (=> d!27595 (= lt!51887 (choose!636 (_keys!4236 newMap!16) (_values!2519 newMap!16) (mask!6659 newMap!16) (extraKeys!2347 newMap!16) lt!51612 (zeroValue!2414 newMap!16) (get!1316 (select (arr!2033 (_values!2519 (v!2845 (underlying!348 thiss!992)))) from!355) (dynLambda!383 (defaultEntry!2536 (v!2845 (underlying!348 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (minValue!2414 newMap!16) (defaultEntry!2536 newMap!16)))))

(assert (=> d!27595 (validMask!0 (mask!6659 newMap!16))))

(assert (=> d!27595 (= (lemmaChangeZeroKeyThenAddPairToListMap!44 (_keys!4236 newMap!16) (_values!2519 newMap!16) (mask!6659 newMap!16) (extraKeys!2347 newMap!16) lt!51612 (zeroValue!2414 newMap!16) (get!1316 (select (arr!2033 (_values!2519 (v!2845 (underlying!348 thiss!992)))) from!355) (dynLambda!383 (defaultEntry!2536 (v!2845 (underlying!348 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (minValue!2414 newMap!16) (defaultEntry!2536 newMap!16)) lt!51887)))

(declare-fun bs!4202 () Bool)

(assert (= bs!4202 d!27595))

(assert (=> bs!4202 m!112545))

(declare-fun m!113083 () Bool)

(assert (=> bs!4202 m!113083))

(assert (=> bs!4202 m!112741))

(declare-fun m!113085 () Bool)

(assert (=> bs!4202 m!113085))

(assert (=> bs!4202 m!112741))

(assert (=> bs!4202 m!112823))

(assert (=> bs!4202 m!112545))

(declare-fun m!113087 () Bool)

(assert (=> bs!4202 m!113087))

(assert (=> b!101782 d!27595))

(declare-fun d!27597 () Bool)

(declare-fun res!51090 () Bool)

(declare-fun e!66445 () Bool)

(assert (=> d!27597 (=> res!51090 e!66445)))

(assert (=> d!27597 (= res!51090 (= (select (arr!2032 (_keys!4236 newMap!16)) #b00000000000000000000000000000000) (select (arr!2032 (_keys!4236 (v!2845 (underlying!348 thiss!992)))) from!355)))))

(assert (=> d!27597 (= (arrayContainsKey!0 (_keys!4236 newMap!16) (select (arr!2032 (_keys!4236 (v!2845 (underlying!348 thiss!992)))) from!355) #b00000000000000000000000000000000) e!66445)))

(declare-fun b!102090 () Bool)

(declare-fun e!66446 () Bool)

(assert (=> b!102090 (= e!66445 e!66446)))

(declare-fun res!51091 () Bool)

(assert (=> b!102090 (=> (not res!51091) (not e!66446))))

(assert (=> b!102090 (= res!51091 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!2285 (_keys!4236 newMap!16))))))

(declare-fun b!102091 () Bool)

(assert (=> b!102091 (= e!66446 (arrayContainsKey!0 (_keys!4236 newMap!16) (select (arr!2032 (_keys!4236 (v!2845 (underlying!348 thiss!992)))) from!355) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!27597 (not res!51090)) b!102090))

(assert (= (and b!102090 res!51091) b!102091))

(assert (=> d!27597 m!112805))

(assert (=> b!102091 m!112547))

(declare-fun m!113089 () Bool)

(assert (=> b!102091 m!113089))

(assert (=> bm!10580 d!27597))

(declare-fun d!27599 () Bool)

(declare-fun get!1319 (Option!158) V!3179)

(assert (=> d!27599 (= (apply!95 (+!141 lt!51679 (tuple2!2377 lt!51685 (zeroValue!2414 (v!2845 (underlying!348 thiss!992))))) lt!51680) (get!1319 (getValueByKey!152 (toList!797 (+!141 lt!51679 (tuple2!2377 lt!51685 (zeroValue!2414 (v!2845 (underlying!348 thiss!992)))))) lt!51680)))))

(declare-fun bs!4203 () Bool)

(assert (= bs!4203 d!27599))

(declare-fun m!113091 () Bool)

(assert (=> bs!4203 m!113091))

(assert (=> bs!4203 m!113091))

(declare-fun m!113093 () Bool)

(assert (=> bs!4203 m!113093))

(assert (=> b!101899 d!27599))

(declare-fun d!27601 () Bool)

(declare-fun e!66447 () Bool)

(assert (=> d!27601 e!66447))

(declare-fun res!51092 () Bool)

(assert (=> d!27601 (=> (not res!51092) (not e!66447))))

(declare-fun lt!51889 () ListLongMap!1563)

(assert (=> d!27601 (= res!51092 (contains!816 lt!51889 (_1!1198 (tuple2!2377 lt!51684 (minValue!2414 (v!2845 (underlying!348 thiss!992)))))))))

(declare-fun lt!51890 () List!1621)

(assert (=> d!27601 (= lt!51889 (ListLongMap!1564 lt!51890))))

(declare-fun lt!51891 () Unit!3112)

(declare-fun lt!51888 () Unit!3112)

(assert (=> d!27601 (= lt!51891 lt!51888)))

(assert (=> d!27601 (= (getValueByKey!152 lt!51890 (_1!1198 (tuple2!2377 lt!51684 (minValue!2414 (v!2845 (underlying!348 thiss!992)))))) (Some!157 (_2!1198 (tuple2!2377 lt!51684 (minValue!2414 (v!2845 (underlying!348 thiss!992)))))))))

(assert (=> d!27601 (= lt!51888 (lemmaContainsTupThenGetReturnValue!70 lt!51890 (_1!1198 (tuple2!2377 lt!51684 (minValue!2414 (v!2845 (underlying!348 thiss!992))))) (_2!1198 (tuple2!2377 lt!51684 (minValue!2414 (v!2845 (underlying!348 thiss!992)))))))))

(assert (=> d!27601 (= lt!51890 (insertStrictlySorted!72 (toList!797 lt!51675) (_1!1198 (tuple2!2377 lt!51684 (minValue!2414 (v!2845 (underlying!348 thiss!992))))) (_2!1198 (tuple2!2377 lt!51684 (minValue!2414 (v!2845 (underlying!348 thiss!992)))))))))

(assert (=> d!27601 (= (+!141 lt!51675 (tuple2!2377 lt!51684 (minValue!2414 (v!2845 (underlying!348 thiss!992))))) lt!51889)))

(declare-fun b!102092 () Bool)

(declare-fun res!51093 () Bool)

(assert (=> b!102092 (=> (not res!51093) (not e!66447))))

(assert (=> b!102092 (= res!51093 (= (getValueByKey!152 (toList!797 lt!51889) (_1!1198 (tuple2!2377 lt!51684 (minValue!2414 (v!2845 (underlying!348 thiss!992)))))) (Some!157 (_2!1198 (tuple2!2377 lt!51684 (minValue!2414 (v!2845 (underlying!348 thiss!992))))))))))

(declare-fun b!102093 () Bool)

(assert (=> b!102093 (= e!66447 (contains!818 (toList!797 lt!51889) (tuple2!2377 lt!51684 (minValue!2414 (v!2845 (underlying!348 thiss!992))))))))

(assert (= (and d!27601 res!51092) b!102092))

(assert (= (and b!102092 res!51093) b!102093))

(declare-fun m!113095 () Bool)

(assert (=> d!27601 m!113095))

(declare-fun m!113097 () Bool)

(assert (=> d!27601 m!113097))

(declare-fun m!113099 () Bool)

(assert (=> d!27601 m!113099))

(declare-fun m!113101 () Bool)

(assert (=> d!27601 m!113101))

(declare-fun m!113103 () Bool)

(assert (=> b!102092 m!113103))

(declare-fun m!113105 () Bool)

(assert (=> b!102093 m!113105))

(assert (=> b!101899 d!27601))

(declare-fun d!27603 () Bool)

(assert (=> d!27603 (= (apply!95 lt!51675 lt!51671) (get!1319 (getValueByKey!152 (toList!797 lt!51675) lt!51671)))))

(declare-fun bs!4204 () Bool)

(assert (= bs!4204 d!27603))

(declare-fun m!113107 () Bool)

(assert (=> bs!4204 m!113107))

(assert (=> bs!4204 m!113107))

(declare-fun m!113109 () Bool)

(assert (=> bs!4204 m!113109))

(assert (=> b!101899 d!27603))

(declare-fun d!27605 () Bool)

(assert (=> d!27605 (= (apply!95 (+!141 lt!51675 (tuple2!2377 lt!51684 (minValue!2414 (v!2845 (underlying!348 thiss!992))))) lt!51671) (apply!95 lt!51675 lt!51671))))

(declare-fun lt!51894 () Unit!3112)

(declare-fun choose!637 (ListLongMap!1563 (_ BitVec 64) V!3179 (_ BitVec 64)) Unit!3112)

(assert (=> d!27605 (= lt!51894 (choose!637 lt!51675 lt!51684 (minValue!2414 (v!2845 (underlying!348 thiss!992))) lt!51671))))

(declare-fun e!66450 () Bool)

(assert (=> d!27605 e!66450))

(declare-fun res!51096 () Bool)

(assert (=> d!27605 (=> (not res!51096) (not e!66450))))

(assert (=> d!27605 (= res!51096 (contains!816 lt!51675 lt!51671))))

(assert (=> d!27605 (= (addApplyDifferent!71 lt!51675 lt!51684 (minValue!2414 (v!2845 (underlying!348 thiss!992))) lt!51671) lt!51894)))

(declare-fun b!102097 () Bool)

(assert (=> b!102097 (= e!66450 (not (= lt!51671 lt!51684)))))

(assert (= (and d!27605 res!51096) b!102097))

(assert (=> d!27605 m!112775))

(assert (=> d!27605 m!112773))

(declare-fun m!113111 () Bool)

(assert (=> d!27605 m!113111))

(assert (=> d!27605 m!112773))

(assert (=> d!27605 m!112777))

(declare-fun m!113113 () Bool)

(assert (=> d!27605 m!113113))

(assert (=> b!101899 d!27605))

(declare-fun d!27607 () Bool)

(assert (=> d!27607 (= (apply!95 lt!51679 lt!51680) (get!1319 (getValueByKey!152 (toList!797 lt!51679) lt!51680)))))

(declare-fun bs!4205 () Bool)

(assert (= bs!4205 d!27607))

(declare-fun m!113115 () Bool)

(assert (=> bs!4205 m!113115))

(assert (=> bs!4205 m!113115))

(declare-fun m!113117 () Bool)

(assert (=> bs!4205 m!113117))

(assert (=> b!101899 d!27607))

(declare-fun d!27609 () Bool)

(assert (=> d!27609 (= (apply!95 (+!141 lt!51679 (tuple2!2377 lt!51685 (zeroValue!2414 (v!2845 (underlying!348 thiss!992))))) lt!51680) (apply!95 lt!51679 lt!51680))))

(declare-fun lt!51895 () Unit!3112)

(assert (=> d!27609 (= lt!51895 (choose!637 lt!51679 lt!51685 (zeroValue!2414 (v!2845 (underlying!348 thiss!992))) lt!51680))))

(declare-fun e!66451 () Bool)

(assert (=> d!27609 e!66451))

(declare-fun res!51097 () Bool)

(assert (=> d!27609 (=> (not res!51097) (not e!66451))))

(assert (=> d!27609 (= res!51097 (contains!816 lt!51679 lt!51680))))

(assert (=> d!27609 (= (addApplyDifferent!71 lt!51679 lt!51685 (zeroValue!2414 (v!2845 (underlying!348 thiss!992))) lt!51680) lt!51895)))

(declare-fun b!102098 () Bool)

(assert (=> b!102098 (= e!66451 (not (= lt!51680 lt!51685)))))

(assert (= (and d!27609 res!51097) b!102098))

(assert (=> d!27609 m!112779))

(assert (=> d!27609 m!112781))

(declare-fun m!113119 () Bool)

(assert (=> d!27609 m!113119))

(assert (=> d!27609 m!112781))

(assert (=> d!27609 m!112785))

(declare-fun m!113121 () Bool)

(assert (=> d!27609 m!113121))

(assert (=> b!101899 d!27609))

(declare-fun d!27611 () Bool)

(assert (=> d!27611 (= (apply!95 (+!141 lt!51688 (tuple2!2377 lt!51683 (minValue!2414 (v!2845 (underlying!348 thiss!992))))) lt!51682) (get!1319 (getValueByKey!152 (toList!797 (+!141 lt!51688 (tuple2!2377 lt!51683 (minValue!2414 (v!2845 (underlying!348 thiss!992)))))) lt!51682)))))

(declare-fun bs!4206 () Bool)

(assert (= bs!4206 d!27611))

(declare-fun m!113123 () Bool)

(assert (=> bs!4206 m!113123))

(assert (=> bs!4206 m!113123))

(declare-fun m!113125 () Bool)

(assert (=> bs!4206 m!113125))

(assert (=> b!101899 d!27611))

(declare-fun d!27613 () Bool)

(assert (=> d!27613 (= (apply!95 lt!51688 lt!51682) (get!1319 (getValueByKey!152 (toList!797 lt!51688) lt!51682)))))

(declare-fun bs!4207 () Bool)

(assert (= bs!4207 d!27613))

(declare-fun m!113127 () Bool)

(assert (=> bs!4207 m!113127))

(assert (=> bs!4207 m!113127))

(declare-fun m!113129 () Bool)

(assert (=> bs!4207 m!113129))

(assert (=> b!101899 d!27613))

(declare-fun d!27615 () Bool)

(assert (=> d!27615 (= (apply!95 (+!141 lt!51688 (tuple2!2377 lt!51683 (minValue!2414 (v!2845 (underlying!348 thiss!992))))) lt!51682) (apply!95 lt!51688 lt!51682))))

(declare-fun lt!51896 () Unit!3112)

(assert (=> d!27615 (= lt!51896 (choose!637 lt!51688 lt!51683 (minValue!2414 (v!2845 (underlying!348 thiss!992))) lt!51682))))

(declare-fun e!66452 () Bool)

(assert (=> d!27615 e!66452))

(declare-fun res!51098 () Bool)

(assert (=> d!27615 (=> (not res!51098) (not e!66452))))

(assert (=> d!27615 (= res!51098 (contains!816 lt!51688 lt!51682))))

(assert (=> d!27615 (= (addApplyDifferent!71 lt!51688 lt!51683 (minValue!2414 (v!2845 (underlying!348 thiss!992))) lt!51682) lt!51896)))

(declare-fun b!102099 () Bool)

(assert (=> b!102099 (= e!66452 (not (= lt!51682 lt!51683)))))

(assert (= (and d!27615 res!51098) b!102099))

(assert (=> d!27615 m!112763))

(assert (=> d!27615 m!112765))

(declare-fun m!113131 () Bool)

(assert (=> d!27615 m!113131))

(assert (=> d!27615 m!112765))

(assert (=> d!27615 m!112771))

(declare-fun m!113133 () Bool)

(assert (=> d!27615 m!113133))

(assert (=> b!101899 d!27615))

(declare-fun d!27617 () Bool)

(declare-fun e!66453 () Bool)

(assert (=> d!27617 e!66453))

(declare-fun res!51099 () Bool)

(assert (=> d!27617 (=> (not res!51099) (not e!66453))))

(declare-fun lt!51898 () ListLongMap!1563)

(assert (=> d!27617 (= res!51099 (contains!816 lt!51898 (_1!1198 (tuple2!2377 lt!51677 (zeroValue!2414 (v!2845 (underlying!348 thiss!992)))))))))

(declare-fun lt!51899 () List!1621)

(assert (=> d!27617 (= lt!51898 (ListLongMap!1564 lt!51899))))

(declare-fun lt!51900 () Unit!3112)

(declare-fun lt!51897 () Unit!3112)

(assert (=> d!27617 (= lt!51900 lt!51897)))

(assert (=> d!27617 (= (getValueByKey!152 lt!51899 (_1!1198 (tuple2!2377 lt!51677 (zeroValue!2414 (v!2845 (underlying!348 thiss!992)))))) (Some!157 (_2!1198 (tuple2!2377 lt!51677 (zeroValue!2414 (v!2845 (underlying!348 thiss!992)))))))))

(assert (=> d!27617 (= lt!51897 (lemmaContainsTupThenGetReturnValue!70 lt!51899 (_1!1198 (tuple2!2377 lt!51677 (zeroValue!2414 (v!2845 (underlying!348 thiss!992))))) (_2!1198 (tuple2!2377 lt!51677 (zeroValue!2414 (v!2845 (underlying!348 thiss!992)))))))))

(assert (=> d!27617 (= lt!51899 (insertStrictlySorted!72 (toList!797 lt!51674) (_1!1198 (tuple2!2377 lt!51677 (zeroValue!2414 (v!2845 (underlying!348 thiss!992))))) (_2!1198 (tuple2!2377 lt!51677 (zeroValue!2414 (v!2845 (underlying!348 thiss!992)))))))))

(assert (=> d!27617 (= (+!141 lt!51674 (tuple2!2377 lt!51677 (zeroValue!2414 (v!2845 (underlying!348 thiss!992))))) lt!51898)))

(declare-fun b!102100 () Bool)

(declare-fun res!51100 () Bool)

(assert (=> b!102100 (=> (not res!51100) (not e!66453))))

(assert (=> b!102100 (= res!51100 (= (getValueByKey!152 (toList!797 lt!51898) (_1!1198 (tuple2!2377 lt!51677 (zeroValue!2414 (v!2845 (underlying!348 thiss!992)))))) (Some!157 (_2!1198 (tuple2!2377 lt!51677 (zeroValue!2414 (v!2845 (underlying!348 thiss!992))))))))))

(declare-fun b!102101 () Bool)

(assert (=> b!102101 (= e!66453 (contains!818 (toList!797 lt!51898) (tuple2!2377 lt!51677 (zeroValue!2414 (v!2845 (underlying!348 thiss!992))))))))

(assert (= (and d!27617 res!51099) b!102100))

(assert (= (and b!102100 res!51100) b!102101))

(declare-fun m!113135 () Bool)

(assert (=> d!27617 m!113135))

(declare-fun m!113137 () Bool)

(assert (=> d!27617 m!113137))

(declare-fun m!113139 () Bool)

(assert (=> d!27617 m!113139))

(declare-fun m!113141 () Bool)

(assert (=> d!27617 m!113141))

(declare-fun m!113143 () Bool)

(assert (=> b!102100 m!113143))

(declare-fun m!113145 () Bool)

(assert (=> b!102101 m!113145))

(assert (=> b!101899 d!27617))

(declare-fun d!27619 () Bool)

(declare-fun e!66454 () Bool)

(assert (=> d!27619 e!66454))

(declare-fun res!51101 () Bool)

(assert (=> d!27619 (=> (not res!51101) (not e!66454))))

(declare-fun lt!51902 () ListLongMap!1563)

(assert (=> d!27619 (= res!51101 (contains!816 lt!51902 (_1!1198 (tuple2!2377 lt!51683 (minValue!2414 (v!2845 (underlying!348 thiss!992)))))))))

(declare-fun lt!51903 () List!1621)

(assert (=> d!27619 (= lt!51902 (ListLongMap!1564 lt!51903))))

(declare-fun lt!51904 () Unit!3112)

(declare-fun lt!51901 () Unit!3112)

(assert (=> d!27619 (= lt!51904 lt!51901)))

(assert (=> d!27619 (= (getValueByKey!152 lt!51903 (_1!1198 (tuple2!2377 lt!51683 (minValue!2414 (v!2845 (underlying!348 thiss!992)))))) (Some!157 (_2!1198 (tuple2!2377 lt!51683 (minValue!2414 (v!2845 (underlying!348 thiss!992)))))))))

(assert (=> d!27619 (= lt!51901 (lemmaContainsTupThenGetReturnValue!70 lt!51903 (_1!1198 (tuple2!2377 lt!51683 (minValue!2414 (v!2845 (underlying!348 thiss!992))))) (_2!1198 (tuple2!2377 lt!51683 (minValue!2414 (v!2845 (underlying!348 thiss!992)))))))))

(assert (=> d!27619 (= lt!51903 (insertStrictlySorted!72 (toList!797 lt!51688) (_1!1198 (tuple2!2377 lt!51683 (minValue!2414 (v!2845 (underlying!348 thiss!992))))) (_2!1198 (tuple2!2377 lt!51683 (minValue!2414 (v!2845 (underlying!348 thiss!992)))))))))

(assert (=> d!27619 (= (+!141 lt!51688 (tuple2!2377 lt!51683 (minValue!2414 (v!2845 (underlying!348 thiss!992))))) lt!51902)))

(declare-fun b!102102 () Bool)

(declare-fun res!51102 () Bool)

(assert (=> b!102102 (=> (not res!51102) (not e!66454))))

(assert (=> b!102102 (= res!51102 (= (getValueByKey!152 (toList!797 lt!51902) (_1!1198 (tuple2!2377 lt!51683 (minValue!2414 (v!2845 (underlying!348 thiss!992)))))) (Some!157 (_2!1198 (tuple2!2377 lt!51683 (minValue!2414 (v!2845 (underlying!348 thiss!992))))))))))

(declare-fun b!102103 () Bool)

(assert (=> b!102103 (= e!66454 (contains!818 (toList!797 lt!51902) (tuple2!2377 lt!51683 (minValue!2414 (v!2845 (underlying!348 thiss!992))))))))

(assert (= (and d!27619 res!51101) b!102102))

(assert (= (and b!102102 res!51102) b!102103))

(declare-fun m!113147 () Bool)

(assert (=> d!27619 m!113147))

(declare-fun m!113149 () Bool)

(assert (=> d!27619 m!113149))

(declare-fun m!113151 () Bool)

(assert (=> d!27619 m!113151))

(declare-fun m!113153 () Bool)

(assert (=> d!27619 m!113153))

(declare-fun m!113155 () Bool)

(assert (=> b!102102 m!113155))

(declare-fun m!113157 () Bool)

(assert (=> b!102103 m!113157))

(assert (=> b!101899 d!27619))

(declare-fun b!102128 () Bool)

(declare-fun res!51114 () Bool)

(declare-fun e!66469 () Bool)

(assert (=> b!102128 (=> (not res!51114) (not e!66469))))

(declare-fun lt!51919 () ListLongMap!1563)

(assert (=> b!102128 (= res!51114 (not (contains!816 lt!51919 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!102129 () Bool)

(declare-fun e!66470 () Bool)

(declare-fun e!66472 () Bool)

(assert (=> b!102129 (= e!66470 e!66472)))

(declare-fun c!17616 () Bool)

(assert (=> b!102129 (= c!17616 (bvslt (bvadd #b00000000000000000000000000000001 from!355) (size!2285 (_keys!4236 (v!2845 (underlying!348 thiss!992))))))))

(declare-fun b!102130 () Bool)

(declare-fun e!66474 () ListLongMap!1563)

(assert (=> b!102130 (= e!66474 (ListLongMap!1564 Nil!1618))))

(declare-fun d!27621 () Bool)

(assert (=> d!27621 e!66469))

(declare-fun res!51111 () Bool)

(assert (=> d!27621 (=> (not res!51111) (not e!66469))))

(assert (=> d!27621 (= res!51111 (not (contains!816 lt!51919 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!27621 (= lt!51919 e!66474)))

(declare-fun c!17614 () Bool)

(assert (=> d!27621 (= c!17614 (bvsge (bvadd #b00000000000000000000000000000001 from!355) (size!2285 (_keys!4236 (v!2845 (underlying!348 thiss!992))))))))

(assert (=> d!27621 (validMask!0 (mask!6659 (v!2845 (underlying!348 thiss!992))))))

(assert (=> d!27621 (= (getCurrentListMapNoExtraKeys!105 (_keys!4236 (v!2845 (underlying!348 thiss!992))) (_values!2519 (v!2845 (underlying!348 thiss!992))) (mask!6659 (v!2845 (underlying!348 thiss!992))) (extraKeys!2347 (v!2845 (underlying!348 thiss!992))) (zeroValue!2414 (v!2845 (underlying!348 thiss!992))) (minValue!2414 (v!2845 (underlying!348 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2536 (v!2845 (underlying!348 thiss!992)))) lt!51919)))

(declare-fun b!102131 () Bool)

(declare-fun e!66475 () Bool)

(assert (=> b!102131 (= e!66475 (validKeyInArray!0 (select (arr!2032 (_keys!4236 (v!2845 (underlying!348 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))))))

(assert (=> b!102131 (bvsge (bvadd #b00000000000000000000000000000001 from!355) #b00000000000000000000000000000000)))

(declare-fun b!102132 () Bool)

(assert (=> b!102132 (= e!66472 (= lt!51919 (getCurrentListMapNoExtraKeys!105 (_keys!4236 (v!2845 (underlying!348 thiss!992))) (_values!2519 (v!2845 (underlying!348 thiss!992))) (mask!6659 (v!2845 (underlying!348 thiss!992))) (extraKeys!2347 (v!2845 (underlying!348 thiss!992))) (zeroValue!2414 (v!2845 (underlying!348 thiss!992))) (minValue!2414 (v!2845 (underlying!348 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355 #b00000000000000000000000000000001) (defaultEntry!2536 (v!2845 (underlying!348 thiss!992))))))))

(declare-fun b!102133 () Bool)

(assert (=> b!102133 (= e!66469 e!66470)))

(declare-fun c!17617 () Bool)

(assert (=> b!102133 (= c!17617 e!66475)))

(declare-fun res!51112 () Bool)

(assert (=> b!102133 (=> (not res!51112) (not e!66475))))

(assert (=> b!102133 (= res!51112 (bvslt (bvadd #b00000000000000000000000000000001 from!355) (size!2285 (_keys!4236 (v!2845 (underlying!348 thiss!992))))))))

(declare-fun b!102134 () Bool)

(declare-fun lt!51923 () Unit!3112)

(declare-fun lt!51924 () Unit!3112)

(assert (=> b!102134 (= lt!51923 lt!51924)))

(declare-fun lt!51922 () (_ BitVec 64))

(declare-fun lt!51921 () (_ BitVec 64))

(declare-fun lt!51920 () V!3179)

(declare-fun lt!51925 () ListLongMap!1563)

(assert (=> b!102134 (not (contains!816 (+!141 lt!51925 (tuple2!2377 lt!51921 lt!51920)) lt!51922))))

(declare-fun addStillNotContains!45 (ListLongMap!1563 (_ BitVec 64) V!3179 (_ BitVec 64)) Unit!3112)

(assert (=> b!102134 (= lt!51924 (addStillNotContains!45 lt!51925 lt!51921 lt!51920 lt!51922))))

(assert (=> b!102134 (= lt!51922 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!102134 (= lt!51920 (get!1316 (select (arr!2033 (_values!2519 (v!2845 (underlying!348 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (dynLambda!383 (defaultEntry!2536 (v!2845 (underlying!348 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!102134 (= lt!51921 (select (arr!2032 (_keys!4236 (v!2845 (underlying!348 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)))))

(declare-fun call!10668 () ListLongMap!1563)

(assert (=> b!102134 (= lt!51925 call!10668)))

(declare-fun e!66473 () ListLongMap!1563)

(assert (=> b!102134 (= e!66473 (+!141 call!10668 (tuple2!2377 (select (arr!2032 (_keys!4236 (v!2845 (underlying!348 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (get!1316 (select (arr!2033 (_values!2519 (v!2845 (underlying!348 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (dynLambda!383 (defaultEntry!2536 (v!2845 (underlying!348 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!102135 () Bool)

(declare-fun e!66471 () Bool)

(assert (=> b!102135 (= e!66470 e!66471)))

(assert (=> b!102135 (and (bvsge (bvadd #b00000000000000000000000000000001 from!355) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!355) (size!2285 (_keys!4236 (v!2845 (underlying!348 thiss!992))))))))

(declare-fun res!51113 () Bool)

(assert (=> b!102135 (= res!51113 (contains!816 lt!51919 (select (arr!2032 (_keys!4236 (v!2845 (underlying!348 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))))))

(assert (=> b!102135 (=> (not res!51113) (not e!66471))))

(declare-fun b!102136 () Bool)

(assert (=> b!102136 (= e!66473 call!10668)))

(declare-fun b!102137 () Bool)

(assert (=> b!102137 (and (bvsge (bvadd #b00000000000000000000000000000001 from!355) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!355) (size!2285 (_keys!4236 (v!2845 (underlying!348 thiss!992))))))))

(assert (=> b!102137 (and (bvsge (bvadd #b00000000000000000000000000000001 from!355) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!355) (size!2286 (_values!2519 (v!2845 (underlying!348 thiss!992))))))))

(assert (=> b!102137 (= e!66471 (= (apply!95 lt!51919 (select (arr!2032 (_keys!4236 (v!2845 (underlying!348 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))) (get!1316 (select (arr!2033 (_values!2519 (v!2845 (underlying!348 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (dynLambda!383 (defaultEntry!2536 (v!2845 (underlying!348 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!102138 () Bool)

(assert (=> b!102138 (= e!66474 e!66473)))

(declare-fun c!17615 () Bool)

(assert (=> b!102138 (= c!17615 (validKeyInArray!0 (select (arr!2032 (_keys!4236 (v!2845 (underlying!348 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))))))

(declare-fun bm!10665 () Bool)

(assert (=> bm!10665 (= call!10668 (getCurrentListMapNoExtraKeys!105 (_keys!4236 (v!2845 (underlying!348 thiss!992))) (_values!2519 (v!2845 (underlying!348 thiss!992))) (mask!6659 (v!2845 (underlying!348 thiss!992))) (extraKeys!2347 (v!2845 (underlying!348 thiss!992))) (zeroValue!2414 (v!2845 (underlying!348 thiss!992))) (minValue!2414 (v!2845 (underlying!348 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355 #b00000000000000000000000000000001) (defaultEntry!2536 (v!2845 (underlying!348 thiss!992)))))))

(declare-fun b!102139 () Bool)

(declare-fun isEmpty!370 (ListLongMap!1563) Bool)

(assert (=> b!102139 (= e!66472 (isEmpty!370 lt!51919))))

(assert (= (and d!27621 c!17614) b!102130))

(assert (= (and d!27621 (not c!17614)) b!102138))

(assert (= (and b!102138 c!17615) b!102134))

(assert (= (and b!102138 (not c!17615)) b!102136))

(assert (= (or b!102134 b!102136) bm!10665))

(assert (= (and d!27621 res!51111) b!102128))

(assert (= (and b!102128 res!51114) b!102133))

(assert (= (and b!102133 res!51112) b!102131))

(assert (= (and b!102133 c!17617) b!102135))

(assert (= (and b!102133 (not c!17617)) b!102129))

(assert (= (and b!102135 res!51113) b!102137))

(assert (= (and b!102129 c!17616) b!102132))

(assert (= (and b!102129 (not c!17616)) b!102139))

(declare-fun b_lambda!4583 () Bool)

(assert (=> (not b_lambda!4583) (not b!102134)))

(assert (=> b!102134 t!5639))

(declare-fun b_and!6293 () Bool)

(assert (= b_and!6289 (and (=> t!5639 result!3353) b_and!6293)))

(assert (=> b!102134 t!5641))

(declare-fun b_and!6295 () Bool)

(assert (= b_and!6291 (and (=> t!5641 result!3357) b_and!6295)))

(declare-fun b_lambda!4585 () Bool)

(assert (=> (not b_lambda!4585) (not b!102137)))

(assert (=> b!102137 t!5639))

(declare-fun b_and!6297 () Bool)

(assert (= b_and!6293 (and (=> t!5639 result!3353) b_and!6297)))

(assert (=> b!102137 t!5641))

(declare-fun b_and!6299 () Bool)

(assert (= b_and!6295 (and (=> t!5641 result!3357) b_and!6299)))

(assert (=> b!102137 m!112747))

(assert (=> b!102137 m!112637))

(assert (=> b!102137 m!112747))

(assert (=> b!102137 m!112543))

(assert (=> b!102137 m!112749))

(assert (=> b!102137 m!112543))

(assert (=> b!102137 m!112637))

(declare-fun m!113159 () Bool)

(assert (=> b!102137 m!113159))

(declare-fun m!113161 () Bool)

(assert (=> b!102128 m!113161))

(assert (=> b!102138 m!112637))

(assert (=> b!102138 m!112637))

(assert (=> b!102138 m!112757))

(declare-fun m!113163 () Bool)

(assert (=> bm!10665 m!113163))

(assert (=> b!102134 m!112747))

(declare-fun m!113165 () Bool)

(assert (=> b!102134 m!113165))

(assert (=> b!102134 m!112637))

(declare-fun m!113167 () Bool)

(assert (=> b!102134 m!113167))

(assert (=> b!102134 m!112747))

(assert (=> b!102134 m!112543))

(assert (=> b!102134 m!112749))

(assert (=> b!102134 m!112543))

(declare-fun m!113169 () Bool)

(assert (=> b!102134 m!113169))

(assert (=> b!102134 m!113167))

(declare-fun m!113171 () Bool)

(assert (=> b!102134 m!113171))

(declare-fun m!113173 () Bool)

(assert (=> b!102139 m!113173))

(assert (=> b!102131 m!112637))

(assert (=> b!102131 m!112637))

(assert (=> b!102131 m!112757))

(declare-fun m!113175 () Bool)

(assert (=> d!27621 m!113175))

(assert (=> d!27621 m!112583))

(assert (=> b!102132 m!113163))

(assert (=> b!102135 m!112637))

(assert (=> b!102135 m!112637))

(declare-fun m!113177 () Bool)

(assert (=> b!102135 m!113177))

(assert (=> b!101899 d!27621))

(declare-fun d!27623 () Bool)

(assert (=> d!27623 (contains!816 (+!141 lt!51674 (tuple2!2377 lt!51677 (zeroValue!2414 (v!2845 (underlying!348 thiss!992))))) lt!51687)))

(declare-fun lt!51928 () Unit!3112)

(declare-fun choose!638 (ListLongMap!1563 (_ BitVec 64) V!3179 (_ BitVec 64)) Unit!3112)

(assert (=> d!27623 (= lt!51928 (choose!638 lt!51674 lt!51677 (zeroValue!2414 (v!2845 (underlying!348 thiss!992))) lt!51687))))

(assert (=> d!27623 (contains!816 lt!51674 lt!51687)))

(assert (=> d!27623 (= (addStillContains!71 lt!51674 lt!51677 (zeroValue!2414 (v!2845 (underlying!348 thiss!992))) lt!51687) lt!51928)))

(declare-fun bs!4208 () Bool)

(assert (= bs!4208 d!27623))

(assert (=> bs!4208 m!112769))

(assert (=> bs!4208 m!112769))

(assert (=> bs!4208 m!112789))

(declare-fun m!113179 () Bool)

(assert (=> bs!4208 m!113179))

(declare-fun m!113181 () Bool)

(assert (=> bs!4208 m!113181))

(assert (=> b!101899 d!27623))

(declare-fun d!27625 () Bool)

(declare-fun e!66477 () Bool)

(assert (=> d!27625 e!66477))

(declare-fun res!51115 () Bool)

(assert (=> d!27625 (=> res!51115 e!66477)))

(declare-fun lt!51929 () Bool)

(assert (=> d!27625 (= res!51115 (not lt!51929))))

(declare-fun lt!51930 () Bool)

(assert (=> d!27625 (= lt!51929 lt!51930)))

(declare-fun lt!51932 () Unit!3112)

(declare-fun e!66476 () Unit!3112)

(assert (=> d!27625 (= lt!51932 e!66476)))

(declare-fun c!17618 () Bool)

(assert (=> d!27625 (= c!17618 lt!51930)))

(assert (=> d!27625 (= lt!51930 (containsKey!156 (toList!797 (+!141 lt!51674 (tuple2!2377 lt!51677 (zeroValue!2414 (v!2845 (underlying!348 thiss!992)))))) lt!51687))))

(assert (=> d!27625 (= (contains!816 (+!141 lt!51674 (tuple2!2377 lt!51677 (zeroValue!2414 (v!2845 (underlying!348 thiss!992))))) lt!51687) lt!51929)))

(declare-fun b!102141 () Bool)

(declare-fun lt!51931 () Unit!3112)

(assert (=> b!102141 (= e!66476 lt!51931)))

(assert (=> b!102141 (= lt!51931 (lemmaContainsKeyImpliesGetValueByKeyDefined!105 (toList!797 (+!141 lt!51674 (tuple2!2377 lt!51677 (zeroValue!2414 (v!2845 (underlying!348 thiss!992)))))) lt!51687))))

(assert (=> b!102141 (isDefined!106 (getValueByKey!152 (toList!797 (+!141 lt!51674 (tuple2!2377 lt!51677 (zeroValue!2414 (v!2845 (underlying!348 thiss!992)))))) lt!51687))))

(declare-fun b!102142 () Bool)

(declare-fun Unit!3132 () Unit!3112)

(assert (=> b!102142 (= e!66476 Unit!3132)))

(declare-fun b!102143 () Bool)

(assert (=> b!102143 (= e!66477 (isDefined!106 (getValueByKey!152 (toList!797 (+!141 lt!51674 (tuple2!2377 lt!51677 (zeroValue!2414 (v!2845 (underlying!348 thiss!992)))))) lt!51687)))))

(assert (= (and d!27625 c!17618) b!102141))

(assert (= (and d!27625 (not c!17618)) b!102142))

(assert (= (and d!27625 (not res!51115)) b!102143))

(declare-fun m!113183 () Bool)

(assert (=> d!27625 m!113183))

(declare-fun m!113185 () Bool)

(assert (=> b!102141 m!113185))

(declare-fun m!113187 () Bool)

(assert (=> b!102141 m!113187))

(assert (=> b!102141 m!113187))

(declare-fun m!113189 () Bool)

(assert (=> b!102141 m!113189))

(assert (=> b!102143 m!113187))

(assert (=> b!102143 m!113187))

(assert (=> b!102143 m!113189))

(assert (=> b!101899 d!27625))

(declare-fun d!27627 () Bool)

(assert (=> d!27627 (= (apply!95 (+!141 lt!51675 (tuple2!2377 lt!51684 (minValue!2414 (v!2845 (underlying!348 thiss!992))))) lt!51671) (get!1319 (getValueByKey!152 (toList!797 (+!141 lt!51675 (tuple2!2377 lt!51684 (minValue!2414 (v!2845 (underlying!348 thiss!992)))))) lt!51671)))))

(declare-fun bs!4209 () Bool)

(assert (= bs!4209 d!27627))

(declare-fun m!113191 () Bool)

(assert (=> bs!4209 m!113191))

(assert (=> bs!4209 m!113191))

(declare-fun m!113193 () Bool)

(assert (=> bs!4209 m!113193))

(assert (=> b!101899 d!27627))

(declare-fun d!27629 () Bool)

(declare-fun e!66478 () Bool)

(assert (=> d!27629 e!66478))

(declare-fun res!51116 () Bool)

(assert (=> d!27629 (=> (not res!51116) (not e!66478))))

(declare-fun lt!51934 () ListLongMap!1563)

(assert (=> d!27629 (= res!51116 (contains!816 lt!51934 (_1!1198 (tuple2!2377 lt!51685 (zeroValue!2414 (v!2845 (underlying!348 thiss!992)))))))))

(declare-fun lt!51935 () List!1621)

(assert (=> d!27629 (= lt!51934 (ListLongMap!1564 lt!51935))))

(declare-fun lt!51936 () Unit!3112)

(declare-fun lt!51933 () Unit!3112)

(assert (=> d!27629 (= lt!51936 lt!51933)))

(assert (=> d!27629 (= (getValueByKey!152 lt!51935 (_1!1198 (tuple2!2377 lt!51685 (zeroValue!2414 (v!2845 (underlying!348 thiss!992)))))) (Some!157 (_2!1198 (tuple2!2377 lt!51685 (zeroValue!2414 (v!2845 (underlying!348 thiss!992)))))))))

(assert (=> d!27629 (= lt!51933 (lemmaContainsTupThenGetReturnValue!70 lt!51935 (_1!1198 (tuple2!2377 lt!51685 (zeroValue!2414 (v!2845 (underlying!348 thiss!992))))) (_2!1198 (tuple2!2377 lt!51685 (zeroValue!2414 (v!2845 (underlying!348 thiss!992)))))))))

(assert (=> d!27629 (= lt!51935 (insertStrictlySorted!72 (toList!797 lt!51679) (_1!1198 (tuple2!2377 lt!51685 (zeroValue!2414 (v!2845 (underlying!348 thiss!992))))) (_2!1198 (tuple2!2377 lt!51685 (zeroValue!2414 (v!2845 (underlying!348 thiss!992)))))))))

(assert (=> d!27629 (= (+!141 lt!51679 (tuple2!2377 lt!51685 (zeroValue!2414 (v!2845 (underlying!348 thiss!992))))) lt!51934)))

(declare-fun b!102144 () Bool)

(declare-fun res!51117 () Bool)

(assert (=> b!102144 (=> (not res!51117) (not e!66478))))

(assert (=> b!102144 (= res!51117 (= (getValueByKey!152 (toList!797 lt!51934) (_1!1198 (tuple2!2377 lt!51685 (zeroValue!2414 (v!2845 (underlying!348 thiss!992)))))) (Some!157 (_2!1198 (tuple2!2377 lt!51685 (zeroValue!2414 (v!2845 (underlying!348 thiss!992))))))))))

(declare-fun b!102145 () Bool)

(assert (=> b!102145 (= e!66478 (contains!818 (toList!797 lt!51934) (tuple2!2377 lt!51685 (zeroValue!2414 (v!2845 (underlying!348 thiss!992))))))))

(assert (= (and d!27629 res!51116) b!102144))

(assert (= (and b!102144 res!51117) b!102145))

(declare-fun m!113195 () Bool)

(assert (=> d!27629 m!113195))

(declare-fun m!113197 () Bool)

(assert (=> d!27629 m!113197))

(declare-fun m!113199 () Bool)

(assert (=> d!27629 m!113199))

(declare-fun m!113201 () Bool)

(assert (=> d!27629 m!113201))

(declare-fun m!113203 () Bool)

(assert (=> b!102144 m!113203))

(declare-fun m!113205 () Bool)

(assert (=> b!102145 m!113205))

(assert (=> b!101899 d!27629))

(assert (=> d!27561 d!27541))

(assert (=> bm!10599 d!27559))

(declare-fun b!102147 () Bool)

(declare-fun e!66479 () Bool)

(declare-fun e!66482 () Bool)

(assert (=> b!102147 (= e!66479 e!66482)))

(declare-fun res!51119 () Bool)

(assert (=> b!102147 (=> (not res!51119) (not e!66482))))

(declare-fun e!66481 () Bool)

(assert (=> b!102147 (= res!51119 (not e!66481))))

(declare-fun res!51120 () Bool)

(assert (=> b!102147 (=> (not res!51120) (not e!66481))))

(assert (=> b!102147 (= res!51120 (validKeyInArray!0 (select (arr!2032 (_keys!4236 newMap!16)) #b00000000000000000000000000000000)))))

(declare-fun b!102148 () Bool)

(declare-fun e!66480 () Bool)

(declare-fun call!10669 () Bool)

(assert (=> b!102148 (= e!66480 call!10669)))

(declare-fun b!102149 () Bool)

(assert (=> b!102149 (= e!66482 e!66480)))

(declare-fun c!17619 () Bool)

(assert (=> b!102149 (= c!17619 (validKeyInArray!0 (select (arr!2032 (_keys!4236 newMap!16)) #b00000000000000000000000000000000)))))

(declare-fun b!102150 () Bool)

(assert (=> b!102150 (= e!66480 call!10669)))

(declare-fun bm!10666 () Bool)

(assert (=> bm!10666 (= call!10669 (arrayNoDuplicates!0 (_keys!4236 newMap!16) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!17619 (Cons!1616 (select (arr!2032 (_keys!4236 newMap!16)) #b00000000000000000000000000000000) Nil!1617) Nil!1617)))))

(declare-fun d!27631 () Bool)

(declare-fun res!51118 () Bool)

(assert (=> d!27631 (=> res!51118 e!66479)))

(assert (=> d!27631 (= res!51118 (bvsge #b00000000000000000000000000000000 (size!2285 (_keys!4236 newMap!16))))))

(assert (=> d!27631 (= (arrayNoDuplicates!0 (_keys!4236 newMap!16) #b00000000000000000000000000000000 Nil!1617) e!66479)))

(declare-fun b!102146 () Bool)

(assert (=> b!102146 (= e!66481 (contains!817 Nil!1617 (select (arr!2032 (_keys!4236 newMap!16)) #b00000000000000000000000000000000)))))

(assert (= (and d!27631 (not res!51118)) b!102147))

(assert (= (and b!102147 res!51120) b!102146))

(assert (= (and b!102147 res!51119) b!102149))

(assert (= (and b!102149 c!17619) b!102150))

(assert (= (and b!102149 (not c!17619)) b!102148))

(assert (= (or b!102150 b!102148) bm!10666))

(assert (=> b!102147 m!112805))

(assert (=> b!102147 m!112805))

(assert (=> b!102147 m!112821))

(assert (=> b!102149 m!112805))

(assert (=> b!102149 m!112805))

(assert (=> b!102149 m!112821))

(assert (=> bm!10666 m!112805))

(declare-fun m!113207 () Bool)

(assert (=> bm!10666 m!113207))

(assert (=> b!102146 m!112805))

(assert (=> b!102146 m!112805))

(declare-fun m!113209 () Bool)

(assert (=> b!102146 m!113209))

(assert (=> b!101830 d!27631))

(declare-fun d!27633 () Bool)

(declare-fun res!51121 () Bool)

(declare-fun e!66483 () Bool)

(assert (=> d!27633 (=> (not res!51121) (not e!66483))))

(assert (=> d!27633 (= res!51121 (simpleValid!70 (_2!1197 lt!51600)))))

(assert (=> d!27633 (= (valid!393 (_2!1197 lt!51600)) e!66483)))

(declare-fun b!102151 () Bool)

(declare-fun res!51122 () Bool)

(assert (=> b!102151 (=> (not res!51122) (not e!66483))))

(assert (=> b!102151 (= res!51122 (= (arrayCountValidKeys!0 (_keys!4236 (_2!1197 lt!51600)) #b00000000000000000000000000000000 (size!2285 (_keys!4236 (_2!1197 lt!51600)))) (_size!484 (_2!1197 lt!51600))))))

(declare-fun b!102152 () Bool)

(declare-fun res!51123 () Bool)

(assert (=> b!102152 (=> (not res!51123) (not e!66483))))

(assert (=> b!102152 (= res!51123 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!4236 (_2!1197 lt!51600)) (mask!6659 (_2!1197 lt!51600))))))

(declare-fun b!102153 () Bool)

(assert (=> b!102153 (= e!66483 (arrayNoDuplicates!0 (_keys!4236 (_2!1197 lt!51600)) #b00000000000000000000000000000000 Nil!1617))))

(assert (= (and d!27633 res!51121) b!102151))

(assert (= (and b!102151 res!51122) b!102152))

(assert (= (and b!102152 res!51123) b!102153))

(declare-fun m!113211 () Bool)

(assert (=> d!27633 m!113211))

(declare-fun m!113213 () Bool)

(assert (=> b!102151 m!113213))

(declare-fun m!113215 () Bool)

(assert (=> b!102152 m!113215))

(declare-fun m!113217 () Bool)

(assert (=> b!102153 m!113217))

(assert (=> d!27547 d!27633))

(assert (=> d!27547 d!27551))

(declare-fun b!102162 () Bool)

(declare-fun e!66489 () (_ BitVec 32))

(declare-fun e!66488 () (_ BitVec 32))

(assert (=> b!102162 (= e!66489 e!66488)))

(declare-fun c!17624 () Bool)

(assert (=> b!102162 (= c!17624 (validKeyInArray!0 (select (arr!2032 (_keys!4236 newMap!16)) #b00000000000000000000000000000000)))))

(declare-fun bm!10669 () Bool)

(declare-fun call!10672 () (_ BitVec 32))

(assert (=> bm!10669 (= call!10672 (arrayCountValidKeys!0 (_keys!4236 newMap!16) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!2285 (_keys!4236 newMap!16))))))

(declare-fun d!27635 () Bool)

(declare-fun lt!51939 () (_ BitVec 32))

(assert (=> d!27635 (and (bvsge lt!51939 #b00000000000000000000000000000000) (bvsle lt!51939 (bvsub (size!2285 (_keys!4236 newMap!16)) #b00000000000000000000000000000000)))))

(assert (=> d!27635 (= lt!51939 e!66489)))

(declare-fun c!17625 () Bool)

(assert (=> d!27635 (= c!17625 (bvsge #b00000000000000000000000000000000 (size!2285 (_keys!4236 newMap!16))))))

(assert (=> d!27635 (and (bvsle #b00000000000000000000000000000000 (size!2285 (_keys!4236 newMap!16))) (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvsle (size!2285 (_keys!4236 newMap!16)) (size!2285 (_keys!4236 newMap!16))))))

(assert (=> d!27635 (= (arrayCountValidKeys!0 (_keys!4236 newMap!16) #b00000000000000000000000000000000 (size!2285 (_keys!4236 newMap!16))) lt!51939)))

(declare-fun b!102163 () Bool)

(assert (=> b!102163 (= e!66488 (bvadd #b00000000000000000000000000000001 call!10672))))

(declare-fun b!102164 () Bool)

(assert (=> b!102164 (= e!66489 #b00000000000000000000000000000000)))

(declare-fun b!102165 () Bool)

(assert (=> b!102165 (= e!66488 call!10672)))

(assert (= (and d!27635 c!17625) b!102164))

(assert (= (and d!27635 (not c!17625)) b!102162))

(assert (= (and b!102162 c!17624) b!102163))

(assert (= (and b!102162 (not c!17624)) b!102165))

(assert (= (or b!102163 b!102165) bm!10669))

(assert (=> b!102162 m!112805))

(assert (=> b!102162 m!112805))

(assert (=> b!102162 m!112821))

(declare-fun m!113219 () Bool)

(assert (=> bm!10669 m!113219))

(assert (=> b!101828 d!27635))

(assert (=> d!27527 d!27531))

(declare-fun d!27637 () Bool)

(assert (=> d!27637 (not (arrayContainsKey!0 (_keys!4236 (v!2845 (underlying!348 thiss!992))) (select (arr!2032 (_keys!4236 (v!2845 (underlying!348 thiss!992)))) from!355) (bvadd #b00000000000000000000000000000001 from!355)))))

(assert (=> d!27637 true))

(declare-fun _$68!100 () Unit!3112)

(assert (=> d!27637 (= (choose!68 (_keys!4236 (v!2845 (underlying!348 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (select (arr!2032 (_keys!4236 (v!2845 (underlying!348 thiss!992)))) from!355) (Cons!1616 (select (arr!2032 (_keys!4236 (v!2845 (underlying!348 thiss!992)))) from!355) Nil!1617)) _$68!100)))

(declare-fun bs!4210 () Bool)

(assert (= bs!4210 d!27637))

(assert (=> bs!4210 m!112547))

(assert (=> bs!4210 m!112561))

(assert (=> d!27527 d!27637))

(assert (=> bm!10617 d!27621))

(declare-fun b!102178 () Bool)

(declare-fun e!66497 () SeekEntryResult!266)

(declare-fun e!66498 () SeekEntryResult!266)

(assert (=> b!102178 (= e!66497 e!66498)))

(declare-fun lt!51947 () (_ BitVec 64))

(declare-fun lt!51946 () SeekEntryResult!266)

(assert (=> b!102178 (= lt!51947 (select (arr!2032 (_keys!4236 newMap!16)) (index!3212 lt!51946)))))

(declare-fun c!17633 () Bool)

(assert (=> b!102178 (= c!17633 (= lt!51947 (select (arr!2032 (_keys!4236 (v!2845 (underlying!348 thiss!992)))) from!355)))))

(declare-fun b!102179 () Bool)

(assert (=> b!102179 (= e!66498 (Found!266 (index!3212 lt!51946)))))

(declare-fun b!102180 () Bool)

(declare-fun e!66496 () SeekEntryResult!266)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!4282 (_ BitVec 32)) SeekEntryResult!266)

(assert (=> b!102180 (= e!66496 (seekKeyOrZeroReturnVacant!0 (x!13349 lt!51946) (index!3212 lt!51946) (index!3212 lt!51946) (select (arr!2032 (_keys!4236 (v!2845 (underlying!348 thiss!992)))) from!355) (_keys!4236 newMap!16) (mask!6659 newMap!16)))))

(declare-fun b!102181 () Bool)

(assert (=> b!102181 (= e!66497 Undefined!266)))

(declare-fun lt!51948 () SeekEntryResult!266)

(declare-fun d!27639 () Bool)

(assert (=> d!27639 (and (or ((_ is Undefined!266) lt!51948) (not ((_ is Found!266) lt!51948)) (and (bvsge (index!3211 lt!51948) #b00000000000000000000000000000000) (bvslt (index!3211 lt!51948) (size!2285 (_keys!4236 newMap!16))))) (or ((_ is Undefined!266) lt!51948) ((_ is Found!266) lt!51948) (not ((_ is MissingZero!266) lt!51948)) (and (bvsge (index!3210 lt!51948) #b00000000000000000000000000000000) (bvslt (index!3210 lt!51948) (size!2285 (_keys!4236 newMap!16))))) (or ((_ is Undefined!266) lt!51948) ((_ is Found!266) lt!51948) ((_ is MissingZero!266) lt!51948) (not ((_ is MissingVacant!266) lt!51948)) (and (bvsge (index!3213 lt!51948) #b00000000000000000000000000000000) (bvslt (index!3213 lt!51948) (size!2285 (_keys!4236 newMap!16))))) (or ((_ is Undefined!266) lt!51948) (ite ((_ is Found!266) lt!51948) (= (select (arr!2032 (_keys!4236 newMap!16)) (index!3211 lt!51948)) (select (arr!2032 (_keys!4236 (v!2845 (underlying!348 thiss!992)))) from!355)) (ite ((_ is MissingZero!266) lt!51948) (= (select (arr!2032 (_keys!4236 newMap!16)) (index!3210 lt!51948)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!266) lt!51948) (= (select (arr!2032 (_keys!4236 newMap!16)) (index!3213 lt!51948)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!27639 (= lt!51948 e!66497)))

(declare-fun c!17632 () Bool)

(assert (=> d!27639 (= c!17632 (and ((_ is Intermediate!266) lt!51946) (undefined!1078 lt!51946)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!4282 (_ BitVec 32)) SeekEntryResult!266)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!27639 (= lt!51946 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!2032 (_keys!4236 (v!2845 (underlying!348 thiss!992)))) from!355) (mask!6659 newMap!16)) (select (arr!2032 (_keys!4236 (v!2845 (underlying!348 thiss!992)))) from!355) (_keys!4236 newMap!16) (mask!6659 newMap!16)))))

(assert (=> d!27639 (validMask!0 (mask!6659 newMap!16))))

(assert (=> d!27639 (= (seekEntryOrOpen!0 (select (arr!2032 (_keys!4236 (v!2845 (underlying!348 thiss!992)))) from!355) (_keys!4236 newMap!16) (mask!6659 newMap!16)) lt!51948)))

(declare-fun b!102182 () Bool)

(assert (=> b!102182 (= e!66496 (MissingZero!266 (index!3212 lt!51946)))))

(declare-fun b!102183 () Bool)

(declare-fun c!17634 () Bool)

(assert (=> b!102183 (= c!17634 (= lt!51947 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!102183 (= e!66498 e!66496)))

(assert (= (and d!27639 c!17632) b!102181))

(assert (= (and d!27639 (not c!17632)) b!102178))

(assert (= (and b!102178 c!17633) b!102179))

(assert (= (and b!102178 (not c!17633)) b!102183))

(assert (= (and b!102183 c!17634) b!102182))

(assert (= (and b!102183 (not c!17634)) b!102180))

(declare-fun m!113221 () Bool)

(assert (=> b!102178 m!113221))

(assert (=> b!102180 m!112547))

(declare-fun m!113223 () Bool)

(assert (=> b!102180 m!113223))

(declare-fun m!113225 () Bool)

(assert (=> d!27639 m!113225))

(declare-fun m!113227 () Bool)

(assert (=> d!27639 m!113227))

(assert (=> d!27639 m!112547))

(declare-fun m!113229 () Bool)

(assert (=> d!27639 m!113229))

(assert (=> d!27639 m!112823))

(declare-fun m!113231 () Bool)

(assert (=> d!27639 m!113231))

(assert (=> d!27639 m!112547))

(assert (=> d!27639 m!113227))

(declare-fun m!113233 () Bool)

(assert (=> d!27639 m!113233))

(assert (=> bm!10582 d!27639))

(declare-fun d!27641 () Bool)

(assert (=> d!27641 (= (validKeyInArray!0 (select (arr!2032 (_keys!4236 (v!2845 (underlying!348 thiss!992)))) #b00000000000000000000000000000000)) (and (not (= (select (arr!2032 (_keys!4236 (v!2845 (underlying!348 thiss!992)))) #b00000000000000000000000000000000) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!2032 (_keys!4236 (v!2845 (underlying!348 thiss!992)))) #b00000000000000000000000000000000) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!101683 d!27641))

(declare-fun d!27643 () Bool)

(assert (=> d!27643 (= (apply!95 lt!51692 #b1000000000000000000000000000000000000000000000000000000000000000) (get!1319 (getValueByKey!152 (toList!797 lt!51692) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun bs!4211 () Bool)

(assert (= bs!4211 d!27643))

(declare-fun m!113235 () Bool)

(assert (=> bs!4211 m!113235))

(assert (=> bs!4211 m!113235))

(declare-fun m!113237 () Bool)

(assert (=> bs!4211 m!113237))

(assert (=> b!101902 d!27643))

(declare-fun d!27645 () Bool)

(declare-fun e!66499 () Bool)

(assert (=> d!27645 e!66499))

(declare-fun res!51124 () Bool)

(assert (=> d!27645 (=> (not res!51124) (not e!66499))))

(declare-fun lt!51950 () ListLongMap!1563)

(assert (=> d!27645 (= res!51124 (contains!816 lt!51950 (_1!1198 (tuple2!2377 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2414 (v!2845 (underlying!348 thiss!992)))))))))

(declare-fun lt!51951 () List!1621)

(assert (=> d!27645 (= lt!51950 (ListLongMap!1564 lt!51951))))

(declare-fun lt!51952 () Unit!3112)

(declare-fun lt!51949 () Unit!3112)

(assert (=> d!27645 (= lt!51952 lt!51949)))

(assert (=> d!27645 (= (getValueByKey!152 lt!51951 (_1!1198 (tuple2!2377 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2414 (v!2845 (underlying!348 thiss!992)))))) (Some!157 (_2!1198 (tuple2!2377 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2414 (v!2845 (underlying!348 thiss!992)))))))))

(assert (=> d!27645 (= lt!51949 (lemmaContainsTupThenGetReturnValue!70 lt!51951 (_1!1198 (tuple2!2377 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2414 (v!2845 (underlying!348 thiss!992))))) (_2!1198 (tuple2!2377 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2414 (v!2845 (underlying!348 thiss!992)))))))))

(assert (=> d!27645 (= lt!51951 (insertStrictlySorted!72 (toList!797 call!10621) (_1!1198 (tuple2!2377 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2414 (v!2845 (underlying!348 thiss!992))))) (_2!1198 (tuple2!2377 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2414 (v!2845 (underlying!348 thiss!992)))))))))

(assert (=> d!27645 (= (+!141 call!10621 (tuple2!2377 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2414 (v!2845 (underlying!348 thiss!992))))) lt!51950)))

(declare-fun b!102184 () Bool)

(declare-fun res!51125 () Bool)

(assert (=> b!102184 (=> (not res!51125) (not e!66499))))

(assert (=> b!102184 (= res!51125 (= (getValueByKey!152 (toList!797 lt!51950) (_1!1198 (tuple2!2377 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2414 (v!2845 (underlying!348 thiss!992)))))) (Some!157 (_2!1198 (tuple2!2377 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2414 (v!2845 (underlying!348 thiss!992))))))))))

(declare-fun b!102185 () Bool)

(assert (=> b!102185 (= e!66499 (contains!818 (toList!797 lt!51950) (tuple2!2377 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2414 (v!2845 (underlying!348 thiss!992))))))))

(assert (= (and d!27645 res!51124) b!102184))

(assert (= (and b!102184 res!51125) b!102185))

(declare-fun m!113239 () Bool)

(assert (=> d!27645 m!113239))

(declare-fun m!113241 () Bool)

(assert (=> d!27645 m!113241))

(declare-fun m!113243 () Bool)

(assert (=> d!27645 m!113243))

(declare-fun m!113245 () Bool)

(assert (=> d!27645 m!113245))

(declare-fun m!113247 () Bool)

(assert (=> b!102184 m!113247))

(declare-fun m!113249 () Bool)

(assert (=> b!102185 m!113249))

(assert (=> b!101886 d!27645))

(declare-fun d!27647 () Bool)

(assert (=> d!27647 (= (apply!95 lt!51692 (select (arr!2032 (_keys!4236 (v!2845 (underlying!348 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))) (get!1319 (getValueByKey!152 (toList!797 lt!51692) (select (arr!2032 (_keys!4236 (v!2845 (underlying!348 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)))))))

(declare-fun bs!4212 () Bool)

(assert (= bs!4212 d!27647))

(assert (=> bs!4212 m!112637))

(assert (=> bs!4212 m!112897))

(assert (=> bs!4212 m!112897))

(declare-fun m!113251 () Bool)

(assert (=> bs!4212 m!113251))

(assert (=> b!101889 d!27647))

(declare-fun d!27649 () Bool)

(declare-fun c!17635 () Bool)

(assert (=> d!27649 (= c!17635 ((_ is ValueCellFull!981) (select (arr!2033 (_values!2519 (v!2845 (underlying!348 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))))))

(declare-fun e!66500 () V!3179)

(assert (=> d!27649 (= (get!1316 (select (arr!2033 (_values!2519 (v!2845 (underlying!348 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (dynLambda!383 (defaultEntry!2536 (v!2845 (underlying!348 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) e!66500)))

(declare-fun b!102186 () Bool)

(assert (=> b!102186 (= e!66500 (get!1317 (select (arr!2033 (_values!2519 (v!2845 (underlying!348 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (dynLambda!383 (defaultEntry!2536 (v!2845 (underlying!348 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!102187 () Bool)

(assert (=> b!102187 (= e!66500 (get!1318 (select (arr!2033 (_values!2519 (v!2845 (underlying!348 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (dynLambda!383 (defaultEntry!2536 (v!2845 (underlying!348 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!27649 c!17635) b!102186))

(assert (= (and d!27649 (not c!17635)) b!102187))

(assert (=> b!102186 m!112747))

(assert (=> b!102186 m!112543))

(declare-fun m!113253 () Bool)

(assert (=> b!102186 m!113253))

(assert (=> b!102187 m!112747))

(assert (=> b!102187 m!112543))

(declare-fun m!113255 () Bool)

(assert (=> b!102187 m!113255))

(assert (=> b!101889 d!27649))

(declare-fun d!27651 () Bool)

(declare-fun e!66502 () Bool)

(assert (=> d!27651 e!66502))

(declare-fun res!51126 () Bool)

(assert (=> d!27651 (=> res!51126 e!66502)))

(declare-fun lt!51953 () Bool)

(assert (=> d!27651 (= res!51126 (not lt!51953))))

(declare-fun lt!51954 () Bool)

(assert (=> d!27651 (= lt!51953 lt!51954)))

(declare-fun lt!51956 () Unit!3112)

(declare-fun e!66501 () Unit!3112)

(assert (=> d!27651 (= lt!51956 e!66501)))

(declare-fun c!17636 () Bool)

(assert (=> d!27651 (= c!17636 lt!51954)))

(assert (=> d!27651 (= lt!51954 (containsKey!156 (toList!797 e!66263) (select (arr!2032 (_keys!4236 (v!2845 (underlying!348 thiss!992)))) from!355)))))

(assert (=> d!27651 (= (contains!816 e!66263 (select (arr!2032 (_keys!4236 (v!2845 (underlying!348 thiss!992)))) from!355)) lt!51953)))

(declare-fun b!102188 () Bool)

(declare-fun lt!51955 () Unit!3112)

(assert (=> b!102188 (= e!66501 lt!51955)))

(assert (=> b!102188 (= lt!51955 (lemmaContainsKeyImpliesGetValueByKeyDefined!105 (toList!797 e!66263) (select (arr!2032 (_keys!4236 (v!2845 (underlying!348 thiss!992)))) from!355)))))

(assert (=> b!102188 (isDefined!106 (getValueByKey!152 (toList!797 e!66263) (select (arr!2032 (_keys!4236 (v!2845 (underlying!348 thiss!992)))) from!355)))))

(declare-fun b!102189 () Bool)

(declare-fun Unit!3133 () Unit!3112)

(assert (=> b!102189 (= e!66501 Unit!3133)))

(declare-fun b!102190 () Bool)

(assert (=> b!102190 (= e!66502 (isDefined!106 (getValueByKey!152 (toList!797 e!66263) (select (arr!2032 (_keys!4236 (v!2845 (underlying!348 thiss!992)))) from!355))))))

(assert (= (and d!27651 c!17636) b!102188))

(assert (= (and d!27651 (not c!17636)) b!102189))

(assert (= (and d!27651 (not res!51126)) b!102190))

(assert (=> d!27651 m!112547))

(declare-fun m!113257 () Bool)

(assert (=> d!27651 m!113257))

(assert (=> b!102188 m!112547))

(declare-fun m!113259 () Bool)

(assert (=> b!102188 m!113259))

(assert (=> b!102188 m!112547))

(declare-fun m!113261 () Bool)

(assert (=> b!102188 m!113261))

(assert (=> b!102188 m!113261))

(declare-fun m!113263 () Bool)

(assert (=> b!102188 m!113263))

(assert (=> b!102190 m!112547))

(assert (=> b!102190 m!113261))

(assert (=> b!102190 m!113261))

(assert (=> b!102190 m!113263))

(assert (=> bm!10593 d!27651))

(assert (=> b!101685 d!27641))

(declare-fun d!27653 () Bool)

(declare-fun res!51127 () Bool)

(declare-fun e!66503 () Bool)

(assert (=> d!27653 (=> (not res!51127) (not e!66503))))

(assert (=> d!27653 (= res!51127 (simpleValid!70 (v!2845 (underlying!348 thiss!992))))))

(assert (=> d!27653 (= (valid!393 (v!2845 (underlying!348 thiss!992))) e!66503)))

(declare-fun b!102191 () Bool)

(declare-fun res!51128 () Bool)

(assert (=> b!102191 (=> (not res!51128) (not e!66503))))

(assert (=> b!102191 (= res!51128 (= (arrayCountValidKeys!0 (_keys!4236 (v!2845 (underlying!348 thiss!992))) #b00000000000000000000000000000000 (size!2285 (_keys!4236 (v!2845 (underlying!348 thiss!992))))) (_size!484 (v!2845 (underlying!348 thiss!992)))))))

(declare-fun b!102192 () Bool)

(declare-fun res!51129 () Bool)

(assert (=> b!102192 (=> (not res!51129) (not e!66503))))

(assert (=> b!102192 (= res!51129 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!4236 (v!2845 (underlying!348 thiss!992))) (mask!6659 (v!2845 (underlying!348 thiss!992)))))))

(declare-fun b!102193 () Bool)

(assert (=> b!102193 (= e!66503 (arrayNoDuplicates!0 (_keys!4236 (v!2845 (underlying!348 thiss!992))) #b00000000000000000000000000000000 Nil!1617))))

(assert (= (and d!27653 res!51127) b!102191))

(assert (= (and b!102191 res!51128) b!102192))

(assert (= (and b!102192 res!51129) b!102193))

(declare-fun m!113265 () Bool)

(assert (=> d!27653 m!113265))

(declare-fun m!113267 () Bool)

(assert (=> b!102191 m!113267))

(assert (=> b!102192 m!112577))

(assert (=> b!102193 m!112567))

(assert (=> d!27563 d!27653))

(declare-fun d!27655 () Bool)

(declare-fun e!66504 () Bool)

(assert (=> d!27655 e!66504))

(declare-fun res!51130 () Bool)

(assert (=> d!27655 (=> (not res!51130) (not e!66504))))

(declare-fun lt!51958 () ListLongMap!1563)

(assert (=> d!27655 (= res!51130 (contains!816 lt!51958 (_1!1198 (tuple2!2377 (select (arr!2032 (_keys!4236 (v!2845 (underlying!348 thiss!992)))) from!355) (get!1316 (select (arr!2033 (_values!2519 (v!2845 (underlying!348 thiss!992)))) from!355) (dynLambda!383 (defaultEntry!2536 (v!2845 (underlying!348 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun lt!51959 () List!1621)

(assert (=> d!27655 (= lt!51958 (ListLongMap!1564 lt!51959))))

(declare-fun lt!51960 () Unit!3112)

(declare-fun lt!51957 () Unit!3112)

(assert (=> d!27655 (= lt!51960 lt!51957)))

(assert (=> d!27655 (= (getValueByKey!152 lt!51959 (_1!1198 (tuple2!2377 (select (arr!2032 (_keys!4236 (v!2845 (underlying!348 thiss!992)))) from!355) (get!1316 (select (arr!2033 (_values!2519 (v!2845 (underlying!348 thiss!992)))) from!355) (dynLambda!383 (defaultEntry!2536 (v!2845 (underlying!348 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))) (Some!157 (_2!1198 (tuple2!2377 (select (arr!2032 (_keys!4236 (v!2845 (underlying!348 thiss!992)))) from!355) (get!1316 (select (arr!2033 (_values!2519 (v!2845 (underlying!348 thiss!992)))) from!355) (dynLambda!383 (defaultEntry!2536 (v!2845 (underlying!348 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!27655 (= lt!51957 (lemmaContainsTupThenGetReturnValue!70 lt!51959 (_1!1198 (tuple2!2377 (select (arr!2032 (_keys!4236 (v!2845 (underlying!348 thiss!992)))) from!355) (get!1316 (select (arr!2033 (_values!2519 (v!2845 (underlying!348 thiss!992)))) from!355) (dynLambda!383 (defaultEntry!2536 (v!2845 (underlying!348 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (_2!1198 (tuple2!2377 (select (arr!2032 (_keys!4236 (v!2845 (underlying!348 thiss!992)))) from!355) (get!1316 (select (arr!2033 (_values!2519 (v!2845 (underlying!348 thiss!992)))) from!355) (dynLambda!383 (defaultEntry!2536 (v!2845 (underlying!348 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!27655 (= lt!51959 (insertStrictlySorted!72 (toList!797 call!10583) (_1!1198 (tuple2!2377 (select (arr!2032 (_keys!4236 (v!2845 (underlying!348 thiss!992)))) from!355) (get!1316 (select (arr!2033 (_values!2519 (v!2845 (underlying!348 thiss!992)))) from!355) (dynLambda!383 (defaultEntry!2536 (v!2845 (underlying!348 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (_2!1198 (tuple2!2377 (select (arr!2032 (_keys!4236 (v!2845 (underlying!348 thiss!992)))) from!355) (get!1316 (select (arr!2033 (_values!2519 (v!2845 (underlying!348 thiss!992)))) from!355) (dynLambda!383 (defaultEntry!2536 (v!2845 (underlying!348 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!27655 (= (+!141 call!10583 (tuple2!2377 (select (arr!2032 (_keys!4236 (v!2845 (underlying!348 thiss!992)))) from!355) (get!1316 (select (arr!2033 (_values!2519 (v!2845 (underlying!348 thiss!992)))) from!355) (dynLambda!383 (defaultEntry!2536 (v!2845 (underlying!348 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) lt!51958)))

(declare-fun b!102194 () Bool)

(declare-fun res!51131 () Bool)

(assert (=> b!102194 (=> (not res!51131) (not e!66504))))

(assert (=> b!102194 (= res!51131 (= (getValueByKey!152 (toList!797 lt!51958) (_1!1198 (tuple2!2377 (select (arr!2032 (_keys!4236 (v!2845 (underlying!348 thiss!992)))) from!355) (get!1316 (select (arr!2033 (_values!2519 (v!2845 (underlying!348 thiss!992)))) from!355) (dynLambda!383 (defaultEntry!2536 (v!2845 (underlying!348 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))) (Some!157 (_2!1198 (tuple2!2377 (select (arr!2032 (_keys!4236 (v!2845 (underlying!348 thiss!992)))) from!355) (get!1316 (select (arr!2033 (_values!2519 (v!2845 (underlying!348 thiss!992)))) from!355) (dynLambda!383 (defaultEntry!2536 (v!2845 (underlying!348 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))))))))

(declare-fun b!102195 () Bool)

(assert (=> b!102195 (= e!66504 (contains!818 (toList!797 lt!51958) (tuple2!2377 (select (arr!2032 (_keys!4236 (v!2845 (underlying!348 thiss!992)))) from!355) (get!1316 (select (arr!2033 (_values!2519 (v!2845 (underlying!348 thiss!992)))) from!355) (dynLambda!383 (defaultEntry!2536 (v!2845 (underlying!348 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (= (and d!27655 res!51130) b!102194))

(assert (= (and b!102194 res!51131) b!102195))

(declare-fun m!113269 () Bool)

(assert (=> d!27655 m!113269))

(declare-fun m!113271 () Bool)

(assert (=> d!27655 m!113271))

(declare-fun m!113273 () Bool)

(assert (=> d!27655 m!113273))

(declare-fun m!113275 () Bool)

(assert (=> d!27655 m!113275))

(declare-fun m!113277 () Bool)

(assert (=> b!102194 m!113277))

(declare-fun m!113279 () Bool)

(assert (=> b!102195 m!113279))

(assert (=> b!101804 d!27655))

(declare-fun d!27657 () Bool)

(assert (=> d!27657 (= (validKeyInArray!0 (select (arr!2032 (_keys!4236 (v!2845 (underlying!348 thiss!992)))) from!355)) (and (not (= (select (arr!2032 (_keys!4236 (v!2845 (underlying!348 thiss!992)))) from!355) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!2032 (_keys!4236 (v!2845 (underlying!348 thiss!992)))) from!355) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!101678 d!27657))

(declare-fun d!27659 () Bool)

(assert (=> d!27659 (= (+!141 (getCurrentListMap!477 (_keys!4236 newMap!16) (_values!2519 newMap!16) (mask!6659 newMap!16) (extraKeys!2347 newMap!16) (zeroValue!2414 newMap!16) (minValue!2414 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2536 newMap!16)) (tuple2!2377 #b1000000000000000000000000000000000000000000000000000000000000000 (get!1316 (select (arr!2033 (_values!2519 (v!2845 (underlying!348 thiss!992)))) from!355) (dynLambda!383 (defaultEntry!2536 (v!2845 (underlying!348 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (getCurrentListMap!477 (_keys!4236 newMap!16) (_values!2519 newMap!16) (mask!6659 newMap!16) lt!51611 (zeroValue!2414 newMap!16) (get!1316 (select (arr!2033 (_values!2519 (v!2845 (underlying!348 thiss!992)))) from!355) (dynLambda!383 (defaultEntry!2536 (v!2845 (underlying!348 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) #b00000000000000000000000000000000 (defaultEntry!2536 newMap!16)))))

(declare-fun lt!51963 () Unit!3112)

(declare-fun choose!639 (array!4282 array!4284 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!3179 V!3179 V!3179 Int) Unit!3112)

(assert (=> d!27659 (= lt!51963 (choose!639 (_keys!4236 newMap!16) (_values!2519 newMap!16) (mask!6659 newMap!16) (extraKeys!2347 newMap!16) lt!51611 (zeroValue!2414 newMap!16) (minValue!2414 newMap!16) (get!1316 (select (arr!2033 (_values!2519 (v!2845 (underlying!348 thiss!992)))) from!355) (dynLambda!383 (defaultEntry!2536 (v!2845 (underlying!348 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (defaultEntry!2536 newMap!16)))))

(assert (=> d!27659 (validMask!0 (mask!6659 newMap!16))))

(assert (=> d!27659 (= (lemmaChangeLongMinValueKeyThenAddPairToListMap!44 (_keys!4236 newMap!16) (_values!2519 newMap!16) (mask!6659 newMap!16) (extraKeys!2347 newMap!16) lt!51611 (zeroValue!2414 newMap!16) (minValue!2414 newMap!16) (get!1316 (select (arr!2033 (_values!2519 (v!2845 (underlying!348 thiss!992)))) from!355) (dynLambda!383 (defaultEntry!2536 (v!2845 (underlying!348 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (defaultEntry!2536 newMap!16)) lt!51963)))

(declare-fun bs!4213 () Bool)

(assert (= bs!4213 d!27659))

(assert (=> bs!4213 m!112741))

(assert (=> bs!4213 m!112545))

(declare-fun m!113281 () Bool)

(assert (=> bs!4213 m!113281))

(assert (=> bs!4213 m!112741))

(declare-fun m!113283 () Bool)

(assert (=> bs!4213 m!113283))

(assert (=> bs!4213 m!112823))

(assert (=> bs!4213 m!112545))

(declare-fun m!113285 () Bool)

(assert (=> bs!4213 m!113285))

(assert (=> b!101778 d!27659))

(declare-fun d!27661 () Bool)

(declare-fun e!66505 () Bool)

(assert (=> d!27661 e!66505))

(declare-fun res!51132 () Bool)

(assert (=> d!27661 (=> (not res!51132) (not e!66505))))

(declare-fun lt!51965 () ListLongMap!1563)

(assert (=> d!27661 (= res!51132 (contains!816 lt!51965 (_1!1198 (ite (or c!17558 c!17557) (tuple2!2377 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2414 (v!2845 (underlying!348 thiss!992)))) (tuple2!2377 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2414 (v!2845 (underlying!348 thiss!992))))))))))

(declare-fun lt!51966 () List!1621)

(assert (=> d!27661 (= lt!51965 (ListLongMap!1564 lt!51966))))

(declare-fun lt!51967 () Unit!3112)

(declare-fun lt!51964 () Unit!3112)

(assert (=> d!27661 (= lt!51967 lt!51964)))

(assert (=> d!27661 (= (getValueByKey!152 lt!51966 (_1!1198 (ite (or c!17558 c!17557) (tuple2!2377 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2414 (v!2845 (underlying!348 thiss!992)))) (tuple2!2377 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2414 (v!2845 (underlying!348 thiss!992))))))) (Some!157 (_2!1198 (ite (or c!17558 c!17557) (tuple2!2377 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2414 (v!2845 (underlying!348 thiss!992)))) (tuple2!2377 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2414 (v!2845 (underlying!348 thiss!992))))))))))

(assert (=> d!27661 (= lt!51964 (lemmaContainsTupThenGetReturnValue!70 lt!51966 (_1!1198 (ite (or c!17558 c!17557) (tuple2!2377 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2414 (v!2845 (underlying!348 thiss!992)))) (tuple2!2377 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2414 (v!2845 (underlying!348 thiss!992)))))) (_2!1198 (ite (or c!17558 c!17557) (tuple2!2377 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2414 (v!2845 (underlying!348 thiss!992)))) (tuple2!2377 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2414 (v!2845 (underlying!348 thiss!992))))))))))

(assert (=> d!27661 (= lt!51966 (insertStrictlySorted!72 (toList!797 (ite c!17558 call!10623 (ite c!17557 call!10622 call!10625))) (_1!1198 (ite (or c!17558 c!17557) (tuple2!2377 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2414 (v!2845 (underlying!348 thiss!992)))) (tuple2!2377 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2414 (v!2845 (underlying!348 thiss!992)))))) (_2!1198 (ite (or c!17558 c!17557) (tuple2!2377 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2414 (v!2845 (underlying!348 thiss!992)))) (tuple2!2377 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2414 (v!2845 (underlying!348 thiss!992))))))))))

(assert (=> d!27661 (= (+!141 (ite c!17558 call!10623 (ite c!17557 call!10622 call!10625)) (ite (or c!17558 c!17557) (tuple2!2377 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2414 (v!2845 (underlying!348 thiss!992)))) (tuple2!2377 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2414 (v!2845 (underlying!348 thiss!992)))))) lt!51965)))

(declare-fun b!102196 () Bool)

(declare-fun res!51133 () Bool)

(assert (=> b!102196 (=> (not res!51133) (not e!66505))))

(assert (=> b!102196 (= res!51133 (= (getValueByKey!152 (toList!797 lt!51965) (_1!1198 (ite (or c!17558 c!17557) (tuple2!2377 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2414 (v!2845 (underlying!348 thiss!992)))) (tuple2!2377 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2414 (v!2845 (underlying!348 thiss!992))))))) (Some!157 (_2!1198 (ite (or c!17558 c!17557) (tuple2!2377 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2414 (v!2845 (underlying!348 thiss!992)))) (tuple2!2377 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2414 (v!2845 (underlying!348 thiss!992)))))))))))

(declare-fun b!102197 () Bool)

(assert (=> b!102197 (= e!66505 (contains!818 (toList!797 lt!51965) (ite (or c!17558 c!17557) (tuple2!2377 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2414 (v!2845 (underlying!348 thiss!992)))) (tuple2!2377 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2414 (v!2845 (underlying!348 thiss!992)))))))))

(assert (= (and d!27661 res!51132) b!102196))

(assert (= (and b!102196 res!51133) b!102197))

(declare-fun m!113287 () Bool)

(assert (=> d!27661 m!113287))

(declare-fun m!113289 () Bool)

(assert (=> d!27661 m!113289))

(declare-fun m!113291 () Bool)

(assert (=> d!27661 m!113291))

(declare-fun m!113293 () Bool)

(assert (=> d!27661 m!113293))

(declare-fun m!113295 () Bool)

(assert (=> b!102196 m!113295))

(declare-fun m!113297 () Bool)

(assert (=> b!102197 m!113297))

(assert (=> bm!10618 d!27661))

(declare-fun b!102199 () Bool)

(declare-fun e!66506 () Bool)

(declare-fun e!66509 () Bool)

(assert (=> b!102199 (= e!66506 e!66509)))

(declare-fun res!51135 () Bool)

(assert (=> b!102199 (=> (not res!51135) (not e!66509))))

(declare-fun e!66508 () Bool)

(assert (=> b!102199 (= res!51135 (not e!66508))))

(declare-fun res!51136 () Bool)

(assert (=> b!102199 (=> (not res!51136) (not e!66508))))

(assert (=> b!102199 (= res!51136 (validKeyInArray!0 (select (arr!2032 (_keys!4236 (v!2845 (underlying!348 thiss!992)))) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun b!102200 () Bool)

(declare-fun e!66507 () Bool)

(declare-fun call!10673 () Bool)

(assert (=> b!102200 (= e!66507 call!10673)))

(declare-fun b!102201 () Bool)

(assert (=> b!102201 (= e!66509 e!66507)))

(declare-fun c!17637 () Bool)

(assert (=> b!102201 (= c!17637 (validKeyInArray!0 (select (arr!2032 (_keys!4236 (v!2845 (underlying!348 thiss!992)))) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun b!102202 () Bool)

(assert (=> b!102202 (= e!66507 call!10673)))

(declare-fun bm!10670 () Bool)

(assert (=> bm!10670 (= call!10673 (arrayNoDuplicates!0 (_keys!4236 (v!2845 (underlying!348 thiss!992))) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (ite c!17637 (Cons!1616 (select (arr!2032 (_keys!4236 (v!2845 (underlying!348 thiss!992)))) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) (ite c!17494 (Cons!1616 (select (arr!2032 (_keys!4236 (v!2845 (underlying!348 thiss!992)))) #b00000000000000000000000000000000) Nil!1617) Nil!1617)) (ite c!17494 (Cons!1616 (select (arr!2032 (_keys!4236 (v!2845 (underlying!348 thiss!992)))) #b00000000000000000000000000000000) Nil!1617) Nil!1617))))))

(declare-fun d!27663 () Bool)

(declare-fun res!51134 () Bool)

(assert (=> d!27663 (=> res!51134 e!66506)))

(assert (=> d!27663 (= res!51134 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!2285 (_keys!4236 (v!2845 (underlying!348 thiss!992))))))))

(assert (=> d!27663 (= (arrayNoDuplicates!0 (_keys!4236 (v!2845 (underlying!348 thiss!992))) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!17494 (Cons!1616 (select (arr!2032 (_keys!4236 (v!2845 (underlying!348 thiss!992)))) #b00000000000000000000000000000000) Nil!1617) Nil!1617)) e!66506)))

(declare-fun b!102198 () Bool)

(assert (=> b!102198 (= e!66508 (contains!817 (ite c!17494 (Cons!1616 (select (arr!2032 (_keys!4236 (v!2845 (underlying!348 thiss!992)))) #b00000000000000000000000000000000) Nil!1617) Nil!1617) (select (arr!2032 (_keys!4236 (v!2845 (underlying!348 thiss!992)))) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(assert (= (and d!27663 (not res!51134)) b!102199))

(assert (= (and b!102199 res!51136) b!102198))

(assert (= (and b!102199 res!51135) b!102201))

(assert (= (and b!102201 c!17637) b!102202))

(assert (= (and b!102201 (not c!17637)) b!102200))

(assert (= (or b!102202 b!102200) bm!10670))

(declare-fun m!113299 () Bool)

(assert (=> b!102199 m!113299))

(assert (=> b!102199 m!113299))

(declare-fun m!113301 () Bool)

(assert (=> b!102199 m!113301))

(assert (=> b!102201 m!113299))

(assert (=> b!102201 m!113299))

(assert (=> b!102201 m!113301))

(assert (=> bm!10670 m!113299))

(declare-fun m!113303 () Bool)

(assert (=> bm!10670 m!113303))

(assert (=> b!102198 m!113299))

(assert (=> b!102198 m!113299))

(declare-fun m!113305 () Bool)

(assert (=> b!102198 m!113305))

(assert (=> bm!10527 d!27663))

(declare-fun b!102204 () Bool)

(declare-fun e!66510 () Bool)

(declare-fun e!66513 () Bool)

(assert (=> b!102204 (= e!66510 e!66513)))

(declare-fun res!51138 () Bool)

(assert (=> b!102204 (=> (not res!51138) (not e!66513))))

(declare-fun e!66512 () Bool)

(assert (=> b!102204 (= res!51138 (not e!66512))))

(declare-fun res!51139 () Bool)

(assert (=> b!102204 (=> (not res!51139) (not e!66512))))

(assert (=> b!102204 (= res!51139 (validKeyInArray!0 (select (arr!2032 (_keys!4236 (v!2845 (underlying!348 thiss!992)))) (bvadd from!355 #b00000000000000000000000000000001))))))

(declare-fun b!102205 () Bool)

(declare-fun e!66511 () Bool)

(declare-fun call!10674 () Bool)

(assert (=> b!102205 (= e!66511 call!10674)))

(declare-fun b!102206 () Bool)

(assert (=> b!102206 (= e!66513 e!66511)))

(declare-fun c!17638 () Bool)

(assert (=> b!102206 (= c!17638 (validKeyInArray!0 (select (arr!2032 (_keys!4236 (v!2845 (underlying!348 thiss!992)))) (bvadd from!355 #b00000000000000000000000000000001))))))

(declare-fun b!102207 () Bool)

(assert (=> b!102207 (= e!66511 call!10674)))

(declare-fun bm!10671 () Bool)

(assert (=> bm!10671 (= call!10674 (arrayNoDuplicates!0 (_keys!4236 (v!2845 (underlying!348 thiss!992))) (bvadd from!355 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (ite c!17638 (Cons!1616 (select (arr!2032 (_keys!4236 (v!2845 (underlying!348 thiss!992)))) (bvadd from!355 #b00000000000000000000000000000001)) (ite c!17493 (Cons!1616 (select (arr!2032 (_keys!4236 (v!2845 (underlying!348 thiss!992)))) from!355) Nil!1617) Nil!1617)) (ite c!17493 (Cons!1616 (select (arr!2032 (_keys!4236 (v!2845 (underlying!348 thiss!992)))) from!355) Nil!1617) Nil!1617))))))

(declare-fun d!27665 () Bool)

(declare-fun res!51137 () Bool)

(assert (=> d!27665 (=> res!51137 e!66510)))

(assert (=> d!27665 (= res!51137 (bvsge (bvadd from!355 #b00000000000000000000000000000001) (size!2285 (_keys!4236 (v!2845 (underlying!348 thiss!992))))))))

(assert (=> d!27665 (= (arrayNoDuplicates!0 (_keys!4236 (v!2845 (underlying!348 thiss!992))) (bvadd from!355 #b00000000000000000000000000000001) (ite c!17493 (Cons!1616 (select (arr!2032 (_keys!4236 (v!2845 (underlying!348 thiss!992)))) from!355) Nil!1617) Nil!1617)) e!66510)))

(declare-fun b!102203 () Bool)

(assert (=> b!102203 (= e!66512 (contains!817 (ite c!17493 (Cons!1616 (select (arr!2032 (_keys!4236 (v!2845 (underlying!348 thiss!992)))) from!355) Nil!1617) Nil!1617) (select (arr!2032 (_keys!4236 (v!2845 (underlying!348 thiss!992)))) (bvadd from!355 #b00000000000000000000000000000001))))))

(assert (= (and d!27665 (not res!51137)) b!102204))

(assert (= (and b!102204 res!51139) b!102203))

(assert (= (and b!102204 res!51138) b!102206))

(assert (= (and b!102206 c!17638) b!102207))

(assert (= (and b!102206 (not c!17638)) b!102205))

(assert (= (or b!102207 b!102205) bm!10671))

(declare-fun m!113307 () Bool)

(assert (=> b!102204 m!113307))

(assert (=> b!102204 m!113307))

(declare-fun m!113309 () Bool)

(assert (=> b!102204 m!113309))

(assert (=> b!102206 m!113307))

(assert (=> b!102206 m!113307))

(assert (=> b!102206 m!113309))

(assert (=> bm!10671 m!113307))

(declare-fun m!113311 () Bool)

(assert (=> bm!10671 m!113311))

(assert (=> b!102203 m!113307))

(assert (=> b!102203 m!113307))

(declare-fun m!113313 () Bool)

(assert (=> b!102203 m!113313))

(assert (=> bm!10526 d!27665))

(declare-fun d!27667 () Bool)

(declare-fun res!51140 () Bool)

(declare-fun e!66514 () Bool)

(assert (=> d!27667 (=> res!51140 e!66514)))

(assert (=> d!27667 (= res!51140 (= (select (arr!2032 (_keys!4236 (v!2845 (underlying!348 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355 #b00000000000000000000000000000001)) (select (arr!2032 (_keys!4236 (v!2845 (underlying!348 thiss!992)))) from!355)))))

(assert (=> d!27667 (= (arrayContainsKey!0 (_keys!4236 (v!2845 (underlying!348 thiss!992))) (select (arr!2032 (_keys!4236 (v!2845 (underlying!348 thiss!992)))) from!355) (bvadd #b00000000000000000000000000000001 from!355 #b00000000000000000000000000000001)) e!66514)))

(declare-fun b!102208 () Bool)

(declare-fun e!66515 () Bool)

(assert (=> b!102208 (= e!66514 e!66515)))

(declare-fun res!51141 () Bool)

(assert (=> b!102208 (=> (not res!51141) (not e!66515))))

(assert (=> b!102208 (= res!51141 (bvslt (bvadd #b00000000000000000000000000000001 from!355 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (size!2285 (_keys!4236 (v!2845 (underlying!348 thiss!992))))))))

(declare-fun b!102209 () Bool)

(assert (=> b!102209 (= e!66515 (arrayContainsKey!0 (_keys!4236 (v!2845 (underlying!348 thiss!992))) (select (arr!2032 (_keys!4236 (v!2845 (underlying!348 thiss!992)))) from!355) (bvadd #b00000000000000000000000000000001 from!355 #b00000000000000000000000000000001 #b00000000000000000000000000000001)))))

(assert (= (and d!27667 (not res!51140)) b!102208))

(assert (= (and b!102208 res!51141) b!102209))

(declare-fun m!113315 () Bool)

(assert (=> d!27667 m!113315))

(assert (=> b!102209 m!112547))

(declare-fun m!113317 () Bool)

(assert (=> b!102209 m!113317))

(assert (=> b!101660 d!27667))

(assert (=> b!101680 d!27657))

(assert (=> b!101780 d!27639))

(declare-fun bm!10672 () Bool)

(declare-fun call!10675 () Bool)

(assert (=> bm!10672 (= call!10675 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (_keys!4236 (v!2845 (underlying!348 thiss!992))) (mask!6659 (v!2845 (underlying!348 thiss!992)))))))

(declare-fun b!102210 () Bool)

(declare-fun e!66517 () Bool)

(assert (=> b!102210 (= e!66517 call!10675)))

(declare-fun b!102211 () Bool)

(declare-fun e!66518 () Bool)

(assert (=> b!102211 (= e!66518 e!66517)))

(declare-fun c!17639 () Bool)

(assert (=> b!102211 (= c!17639 (validKeyInArray!0 (select (arr!2032 (_keys!4236 (v!2845 (underlying!348 thiss!992)))) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun d!27669 () Bool)

(declare-fun res!51142 () Bool)

(assert (=> d!27669 (=> res!51142 e!66518)))

(assert (=> d!27669 (= res!51142 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!2285 (_keys!4236 (v!2845 (underlying!348 thiss!992))))))))

(assert (=> d!27669 (= (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (_keys!4236 (v!2845 (underlying!348 thiss!992))) (mask!6659 (v!2845 (underlying!348 thiss!992)))) e!66518)))

(declare-fun b!102212 () Bool)

(declare-fun e!66516 () Bool)

(assert (=> b!102212 (= e!66516 call!10675)))

(declare-fun b!102213 () Bool)

(assert (=> b!102213 (= e!66517 e!66516)))

(declare-fun lt!51969 () (_ BitVec 64))

(assert (=> b!102213 (= lt!51969 (select (arr!2032 (_keys!4236 (v!2845 (underlying!348 thiss!992)))) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(declare-fun lt!51970 () Unit!3112)

(assert (=> b!102213 (= lt!51970 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!4236 (v!2845 (underlying!348 thiss!992))) lt!51969 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (=> b!102213 (arrayContainsKey!0 (_keys!4236 (v!2845 (underlying!348 thiss!992))) lt!51969 #b00000000000000000000000000000000)))

(declare-fun lt!51968 () Unit!3112)

(assert (=> b!102213 (= lt!51968 lt!51970)))

(declare-fun res!51143 () Bool)

(assert (=> b!102213 (= res!51143 (= (seekEntryOrOpen!0 (select (arr!2032 (_keys!4236 (v!2845 (underlying!348 thiss!992)))) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) (_keys!4236 (v!2845 (underlying!348 thiss!992))) (mask!6659 (v!2845 (underlying!348 thiss!992)))) (Found!266 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(assert (=> b!102213 (=> (not res!51143) (not e!66516))))

(assert (= (and d!27669 (not res!51142)) b!102211))

(assert (= (and b!102211 c!17639) b!102213))

(assert (= (and b!102211 (not c!17639)) b!102210))

(assert (= (and b!102213 res!51143) b!102212))

(assert (= (or b!102212 b!102210) bm!10672))

(declare-fun m!113319 () Bool)

(assert (=> bm!10672 m!113319))

(assert (=> b!102211 m!113299))

(assert (=> b!102211 m!113299))

(assert (=> b!102211 m!113301))

(assert (=> b!102213 m!113299))

(declare-fun m!113321 () Bool)

(assert (=> b!102213 m!113321))

(declare-fun m!113323 () Bool)

(assert (=> b!102213 m!113323))

(assert (=> b!102213 m!113299))

(declare-fun m!113325 () Bool)

(assert (=> b!102213 m!113325))

(assert (=> bm!10602 d!27669))

(declare-fun d!27671 () Bool)

(assert (=> d!27671 (= (get!1318 (select (arr!2033 (_values!2519 (v!2845 (underlying!348 thiss!992)))) from!355) (dynLambda!383 (defaultEntry!2536 (v!2845 (underlying!348 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (dynLambda!383 (defaultEntry!2536 (v!2845 (underlying!348 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!101821 d!27671))

(declare-fun d!27673 () Bool)

(assert (=> d!27673 (= (map!1266 (_2!1197 lt!51600)) (getCurrentListMap!477 (_keys!4236 (_2!1197 lt!51600)) (_values!2519 (_2!1197 lt!51600)) (mask!6659 (_2!1197 lt!51600)) (extraKeys!2347 (_2!1197 lt!51600)) (zeroValue!2414 (_2!1197 lt!51600)) (minValue!2414 (_2!1197 lt!51600)) #b00000000000000000000000000000000 (defaultEntry!2536 (_2!1197 lt!51600))))))

(declare-fun bs!4214 () Bool)

(assert (= bs!4214 d!27673))

(declare-fun m!113327 () Bool)

(assert (=> bs!4214 m!113327))

(assert (=> bm!10578 d!27673))

(declare-fun d!27675 () Bool)

(declare-fun e!66521 () Bool)

(assert (=> d!27675 e!66521))

(declare-fun c!17642 () Bool)

(assert (=> d!27675 (= c!17642 (and (not (= (select (arr!2032 (_keys!4236 (v!2845 (underlying!348 thiss!992)))) from!355) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!2032 (_keys!4236 (v!2845 (underlying!348 thiss!992)))) from!355) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> d!27675 true))

(declare-fun _$29!135 () Unit!3112)

(assert (=> d!27675 (= (choose!633 (_keys!4236 (v!2845 (underlying!348 thiss!992))) (_values!2519 (v!2845 (underlying!348 thiss!992))) (mask!6659 (v!2845 (underlying!348 thiss!992))) (extraKeys!2347 (v!2845 (underlying!348 thiss!992))) (zeroValue!2414 (v!2845 (underlying!348 thiss!992))) (minValue!2414 (v!2845 (underlying!348 thiss!992))) (select (arr!2032 (_keys!4236 (v!2845 (underlying!348 thiss!992)))) from!355) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2536 (v!2845 (underlying!348 thiss!992)))) _$29!135)))

(declare-fun b!102218 () Bool)

(assert (=> b!102218 (= e!66521 (arrayContainsKey!0 (_keys!4236 (v!2845 (underlying!348 thiss!992))) (select (arr!2032 (_keys!4236 (v!2845 (underlying!348 thiss!992)))) from!355) (bvadd #b00000000000000000000000000000001 from!355)))))

(declare-fun b!102219 () Bool)

(assert (=> b!102219 (= e!66521 (ite (= (select (arr!2032 (_keys!4236 (v!2845 (underlying!348 thiss!992)))) from!355) #b0000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand (extraKeys!2347 (v!2845 (underlying!348 thiss!992))) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (extraKeys!2347 (v!2845 (underlying!348 thiss!992))) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (= (and d!27675 c!17642) b!102218))

(assert (= (and d!27675 (not c!17642)) b!102219))

(assert (=> b!102218 m!112547))

(assert (=> b!102218 m!112561))

(assert (=> d!27533 d!27675))

(assert (=> d!27533 d!27541))

(declare-fun b!102220 () Bool)

(declare-fun e!66527 () Bool)

(declare-fun e!66522 () Bool)

(assert (=> b!102220 (= e!66527 e!66522)))

(declare-fun res!51146 () Bool)

(declare-fun call!10680 () Bool)

(assert (=> b!102220 (= res!51146 call!10680)))

(assert (=> b!102220 (=> (not res!51146) (not e!66522))))

(declare-fun b!102221 () Bool)

(declare-fun e!66524 () ListLongMap!1563)

(declare-fun call!10677 () ListLongMap!1563)

(assert (=> b!102221 (= e!66524 (+!141 call!10677 (tuple2!2377 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2414 newMap!16))))))

(declare-fun b!102222 () Bool)

(declare-fun res!51145 () Bool)

(declare-fun e!66528 () Bool)

(assert (=> b!102222 (=> (not res!51145) (not e!66528))))

(declare-fun e!66532 () Bool)

(assert (=> b!102222 (= res!51145 e!66532)))

(declare-fun c!17644 () Bool)

(assert (=> b!102222 (= c!17644 (not (= (bvand (ite (and c!17536 c!17525) lt!51612 (extraKeys!2347 newMap!16)) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun call!10679 () ListLongMap!1563)

(declare-fun bm!10673 () Bool)

(assert (=> bm!10673 (= call!10679 (getCurrentListMapNoExtraKeys!105 (_keys!4236 newMap!16) (_values!2519 newMap!16) (mask!6659 newMap!16) (ite (and c!17536 c!17525) lt!51612 (extraKeys!2347 newMap!16)) (ite (and c!17536 c!17525) (get!1316 (select (arr!2033 (_values!2519 (v!2845 (underlying!348 thiss!992)))) from!355) (dynLambda!383 (defaultEntry!2536 (v!2845 (underlying!348 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (zeroValue!2414 newMap!16)) (minValue!2414 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2536 newMap!16)))))

(declare-fun b!102223 () Bool)

(declare-fun e!66530 () ListLongMap!1563)

(declare-fun call!10676 () ListLongMap!1563)

(assert (=> b!102223 (= e!66530 call!10676)))

(declare-fun b!102224 () Bool)

(declare-fun e!66525 () Bool)

(declare-fun lt!51992 () ListLongMap!1563)

(assert (=> b!102224 (= e!66525 (= (apply!95 lt!51992 (select (arr!2032 (_keys!4236 newMap!16)) #b00000000000000000000000000000000)) (get!1316 (select (arr!2033 (_values!2519 newMap!16)) #b00000000000000000000000000000000) (dynLambda!383 (defaultEntry!2536 newMap!16) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!102224 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!2286 (_values!2519 newMap!16))))))

(assert (=> b!102224 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!2285 (_keys!4236 newMap!16))))))

(declare-fun b!102225 () Bool)

(declare-fun e!66526 () Bool)

(assert (=> b!102225 (= e!66526 (validKeyInArray!0 (select (arr!2032 (_keys!4236 newMap!16)) #b00000000000000000000000000000000)))))

(declare-fun call!10678 () ListLongMap!1563)

(declare-fun call!10681 () ListLongMap!1563)

(declare-fun c!17646 () Bool)

(declare-fun c!17645 () Bool)

(declare-fun bm!10674 () Bool)

(assert (=> bm!10674 (= call!10677 (+!141 (ite c!17646 call!10679 (ite c!17645 call!10678 call!10681)) (ite (or c!17646 c!17645) (tuple2!2377 #b0000000000000000000000000000000000000000000000000000000000000000 (ite (and c!17536 c!17525) (get!1316 (select (arr!2033 (_values!2519 (v!2845 (underlying!348 thiss!992)))) from!355) (dynLambda!383 (defaultEntry!2536 (v!2845 (underlying!348 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (zeroValue!2414 newMap!16))) (tuple2!2377 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2414 newMap!16)))))))

(declare-fun b!102226 () Bool)

(declare-fun e!66523 () Bool)

(assert (=> b!102226 (= e!66532 e!66523)))

(declare-fun res!51147 () Bool)

(declare-fun call!10682 () Bool)

(assert (=> b!102226 (= res!51147 call!10682)))

(assert (=> b!102226 (=> (not res!51147) (not e!66523))))

(declare-fun b!102227 () Bool)

(assert (=> b!102227 (= e!66528 e!66527)))

(declare-fun c!17647 () Bool)

(assert (=> b!102227 (= c!17647 (not (= (bvand (ite (and c!17536 c!17525) lt!51612 (extraKeys!2347 newMap!16)) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!102228 () Bool)

(declare-fun e!66533 () Bool)

(assert (=> b!102228 (= e!66533 e!66525)))

(declare-fun res!51144 () Bool)

(assert (=> b!102228 (=> (not res!51144) (not e!66525))))

(assert (=> b!102228 (= res!51144 (contains!816 lt!51992 (select (arr!2032 (_keys!4236 newMap!16)) #b00000000000000000000000000000000)))))

(assert (=> b!102228 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!2285 (_keys!4236 newMap!16))))))

(declare-fun b!102229 () Bool)

(declare-fun e!66531 () ListLongMap!1563)

(assert (=> b!102229 (= e!66524 e!66531)))

(assert (=> b!102229 (= c!17645 (and (not (= (bvand (ite (and c!17536 c!17525) lt!51612 (extraKeys!2347 newMap!16)) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand (ite (and c!17536 c!17525) lt!51612 (extraKeys!2347 newMap!16)) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun bm!10675 () Bool)

(assert (=> bm!10675 (= call!10682 (contains!816 lt!51992 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!102230 () Bool)

(declare-fun e!66534 () Unit!3112)

(declare-fun Unit!3134 () Unit!3112)

(assert (=> b!102230 (= e!66534 Unit!3134)))

(declare-fun b!102231 () Bool)

(assert (=> b!102231 (= e!66530 call!10681)))

(declare-fun b!102232 () Bool)

(assert (=> b!102232 (= e!66527 (not call!10680))))

(declare-fun bm!10676 () Bool)

(assert (=> bm!10676 (= call!10676 call!10677)))

(declare-fun b!102233 () Bool)

(assert (=> b!102233 (= e!66523 (= (apply!95 lt!51992 #b0000000000000000000000000000000000000000000000000000000000000000) (ite (and c!17536 c!17525) (get!1316 (select (arr!2033 (_values!2519 (v!2845 (underlying!348 thiss!992)))) from!355) (dynLambda!383 (defaultEntry!2536 (v!2845 (underlying!348 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (zeroValue!2414 newMap!16))))))

(declare-fun b!102234 () Bool)

(declare-fun lt!51989 () Unit!3112)

(assert (=> b!102234 (= e!66534 lt!51989)))

(declare-fun lt!51974 () ListLongMap!1563)

(assert (=> b!102234 (= lt!51974 (getCurrentListMapNoExtraKeys!105 (_keys!4236 newMap!16) (_values!2519 newMap!16) (mask!6659 newMap!16) (ite (and c!17536 c!17525) lt!51612 (extraKeys!2347 newMap!16)) (ite (and c!17536 c!17525) (get!1316 (select (arr!2033 (_values!2519 (v!2845 (underlying!348 thiss!992)))) from!355) (dynLambda!383 (defaultEntry!2536 (v!2845 (underlying!348 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (zeroValue!2414 newMap!16)) (minValue!2414 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2536 newMap!16)))))

(declare-fun lt!51977 () (_ BitVec 64))

(assert (=> b!102234 (= lt!51977 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!51987 () (_ BitVec 64))

(assert (=> b!102234 (= lt!51987 (select (arr!2032 (_keys!4236 newMap!16)) #b00000000000000000000000000000000))))

(declare-fun lt!51972 () Unit!3112)

(assert (=> b!102234 (= lt!51972 (addStillContains!71 lt!51974 lt!51977 (ite (and c!17536 c!17525) (get!1316 (select (arr!2033 (_values!2519 (v!2845 (underlying!348 thiss!992)))) from!355) (dynLambda!383 (defaultEntry!2536 (v!2845 (underlying!348 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (zeroValue!2414 newMap!16)) lt!51987))))

(assert (=> b!102234 (contains!816 (+!141 lt!51974 (tuple2!2377 lt!51977 (ite (and c!17536 c!17525) (get!1316 (select (arr!2033 (_values!2519 (v!2845 (underlying!348 thiss!992)))) from!355) (dynLambda!383 (defaultEntry!2536 (v!2845 (underlying!348 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (zeroValue!2414 newMap!16)))) lt!51987)))

(declare-fun lt!51976 () Unit!3112)

(assert (=> b!102234 (= lt!51976 lt!51972)))

(declare-fun lt!51988 () ListLongMap!1563)

(assert (=> b!102234 (= lt!51988 (getCurrentListMapNoExtraKeys!105 (_keys!4236 newMap!16) (_values!2519 newMap!16) (mask!6659 newMap!16) (ite (and c!17536 c!17525) lt!51612 (extraKeys!2347 newMap!16)) (ite (and c!17536 c!17525) (get!1316 (select (arr!2033 (_values!2519 (v!2845 (underlying!348 thiss!992)))) from!355) (dynLambda!383 (defaultEntry!2536 (v!2845 (underlying!348 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (zeroValue!2414 newMap!16)) (minValue!2414 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2536 newMap!16)))))

(declare-fun lt!51983 () (_ BitVec 64))

(assert (=> b!102234 (= lt!51983 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!51982 () (_ BitVec 64))

(assert (=> b!102234 (= lt!51982 (select (arr!2032 (_keys!4236 newMap!16)) #b00000000000000000000000000000000))))

(declare-fun lt!51973 () Unit!3112)

(assert (=> b!102234 (= lt!51973 (addApplyDifferent!71 lt!51988 lt!51983 (minValue!2414 newMap!16) lt!51982))))

(assert (=> b!102234 (= (apply!95 (+!141 lt!51988 (tuple2!2377 lt!51983 (minValue!2414 newMap!16))) lt!51982) (apply!95 lt!51988 lt!51982))))

(declare-fun lt!51986 () Unit!3112)

(assert (=> b!102234 (= lt!51986 lt!51973)))

(declare-fun lt!51979 () ListLongMap!1563)

(assert (=> b!102234 (= lt!51979 (getCurrentListMapNoExtraKeys!105 (_keys!4236 newMap!16) (_values!2519 newMap!16) (mask!6659 newMap!16) (ite (and c!17536 c!17525) lt!51612 (extraKeys!2347 newMap!16)) (ite (and c!17536 c!17525) (get!1316 (select (arr!2033 (_values!2519 (v!2845 (underlying!348 thiss!992)))) from!355) (dynLambda!383 (defaultEntry!2536 (v!2845 (underlying!348 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (zeroValue!2414 newMap!16)) (minValue!2414 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2536 newMap!16)))))

(declare-fun lt!51985 () (_ BitVec 64))

(assert (=> b!102234 (= lt!51985 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!51980 () (_ BitVec 64))

(assert (=> b!102234 (= lt!51980 (select (arr!2032 (_keys!4236 newMap!16)) #b00000000000000000000000000000000))))

(declare-fun lt!51990 () Unit!3112)

(assert (=> b!102234 (= lt!51990 (addApplyDifferent!71 lt!51979 lt!51985 (ite (and c!17536 c!17525) (get!1316 (select (arr!2033 (_values!2519 (v!2845 (underlying!348 thiss!992)))) from!355) (dynLambda!383 (defaultEntry!2536 (v!2845 (underlying!348 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (zeroValue!2414 newMap!16)) lt!51980))))

(assert (=> b!102234 (= (apply!95 (+!141 lt!51979 (tuple2!2377 lt!51985 (ite (and c!17536 c!17525) (get!1316 (select (arr!2033 (_values!2519 (v!2845 (underlying!348 thiss!992)))) from!355) (dynLambda!383 (defaultEntry!2536 (v!2845 (underlying!348 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (zeroValue!2414 newMap!16)))) lt!51980) (apply!95 lt!51979 lt!51980))))

(declare-fun lt!51991 () Unit!3112)

(assert (=> b!102234 (= lt!51991 lt!51990)))

(declare-fun lt!51975 () ListLongMap!1563)

(assert (=> b!102234 (= lt!51975 (getCurrentListMapNoExtraKeys!105 (_keys!4236 newMap!16) (_values!2519 newMap!16) (mask!6659 newMap!16) (ite (and c!17536 c!17525) lt!51612 (extraKeys!2347 newMap!16)) (ite (and c!17536 c!17525) (get!1316 (select (arr!2033 (_values!2519 (v!2845 (underlying!348 thiss!992)))) from!355) (dynLambda!383 (defaultEntry!2536 (v!2845 (underlying!348 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (zeroValue!2414 newMap!16)) (minValue!2414 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2536 newMap!16)))))

(declare-fun lt!51984 () (_ BitVec 64))

(assert (=> b!102234 (= lt!51984 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!51971 () (_ BitVec 64))

(assert (=> b!102234 (= lt!51971 (select (arr!2032 (_keys!4236 newMap!16)) #b00000000000000000000000000000000))))

(assert (=> b!102234 (= lt!51989 (addApplyDifferent!71 lt!51975 lt!51984 (minValue!2414 newMap!16) lt!51971))))

(assert (=> b!102234 (= (apply!95 (+!141 lt!51975 (tuple2!2377 lt!51984 (minValue!2414 newMap!16))) lt!51971) (apply!95 lt!51975 lt!51971))))

(declare-fun b!102235 () Bool)

(declare-fun c!17643 () Bool)

(assert (=> b!102235 (= c!17643 (and (not (= (bvand (ite (and c!17536 c!17525) lt!51612 (extraKeys!2347 newMap!16)) #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand (ite (and c!17536 c!17525) lt!51612 (extraKeys!2347 newMap!16)) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!102235 (= e!66531 e!66530)))

(declare-fun b!102236 () Bool)

(declare-fun res!51151 () Bool)

(assert (=> b!102236 (=> (not res!51151) (not e!66528))))

(assert (=> b!102236 (= res!51151 e!66533)))

(declare-fun res!51148 () Bool)

(assert (=> b!102236 (=> res!51148 e!66533)))

(assert (=> b!102236 (= res!51148 (not e!66526))))

(declare-fun res!51152 () Bool)

(assert (=> b!102236 (=> (not res!51152) (not e!66526))))

(assert (=> b!102236 (= res!51152 (bvslt #b00000000000000000000000000000000 (size!2285 (_keys!4236 newMap!16))))))

(declare-fun bm!10677 () Bool)

(assert (=> bm!10677 (= call!10680 (contains!816 lt!51992 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!102237 () Bool)

(assert (=> b!102237 (= e!66522 (= (apply!95 lt!51992 #b1000000000000000000000000000000000000000000000000000000000000000) (minValue!2414 newMap!16)))))

(declare-fun d!27677 () Bool)

(assert (=> d!27677 e!66528))

(declare-fun res!51149 () Bool)

(assert (=> d!27677 (=> (not res!51149) (not e!66528))))

(assert (=> d!27677 (= res!51149 (or (bvsge #b00000000000000000000000000000000 (size!2285 (_keys!4236 newMap!16))) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!2285 (_keys!4236 newMap!16))))))))

(declare-fun lt!51978 () ListLongMap!1563)

(assert (=> d!27677 (= lt!51992 lt!51978)))

(declare-fun lt!51981 () Unit!3112)

(assert (=> d!27677 (= lt!51981 e!66534)))

(declare-fun c!17648 () Bool)

(declare-fun e!66529 () Bool)

(assert (=> d!27677 (= c!17648 e!66529)))

(declare-fun res!51150 () Bool)

(assert (=> d!27677 (=> (not res!51150) (not e!66529))))

(assert (=> d!27677 (= res!51150 (bvslt #b00000000000000000000000000000000 (size!2285 (_keys!4236 newMap!16))))))

(assert (=> d!27677 (= lt!51978 e!66524)))

(assert (=> d!27677 (= c!17646 (and (not (= (bvand (ite (and c!17536 c!17525) lt!51612 (extraKeys!2347 newMap!16)) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (ite (and c!17536 c!17525) lt!51612 (extraKeys!2347 newMap!16)) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!27677 (validMask!0 (mask!6659 newMap!16))))

(assert (=> d!27677 (= (getCurrentListMap!477 (_keys!4236 newMap!16) (_values!2519 newMap!16) (mask!6659 newMap!16) (ite (and c!17536 c!17525) lt!51612 (extraKeys!2347 newMap!16)) (ite (and c!17536 c!17525) (get!1316 (select (arr!2033 (_values!2519 (v!2845 (underlying!348 thiss!992)))) from!355) (dynLambda!383 (defaultEntry!2536 (v!2845 (underlying!348 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (zeroValue!2414 newMap!16)) (minValue!2414 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2536 newMap!16)) lt!51992)))

(declare-fun b!102238 () Bool)

(assert (=> b!102238 (= e!66531 call!10676)))

(declare-fun b!102239 () Bool)

(assert (=> b!102239 (= e!66532 (not call!10682))))

(declare-fun bm!10678 () Bool)

(assert (=> bm!10678 (= call!10681 call!10678)))

(declare-fun bm!10679 () Bool)

(assert (=> bm!10679 (= call!10678 call!10679)))

(declare-fun b!102240 () Bool)

(assert (=> b!102240 (= e!66529 (validKeyInArray!0 (select (arr!2032 (_keys!4236 newMap!16)) #b00000000000000000000000000000000)))))

(assert (= (and d!27677 c!17646) b!102221))

(assert (= (and d!27677 (not c!17646)) b!102229))

(assert (= (and b!102229 c!17645) b!102238))

(assert (= (and b!102229 (not c!17645)) b!102235))

(assert (= (and b!102235 c!17643) b!102223))

(assert (= (and b!102235 (not c!17643)) b!102231))

(assert (= (or b!102223 b!102231) bm!10678))

(assert (= (or b!102238 bm!10678) bm!10679))

(assert (= (or b!102238 b!102223) bm!10676))

(assert (= (or b!102221 bm!10679) bm!10673))

(assert (= (or b!102221 bm!10676) bm!10674))

(assert (= (and d!27677 res!51150) b!102240))

(assert (= (and d!27677 c!17648) b!102234))

(assert (= (and d!27677 (not c!17648)) b!102230))

(assert (= (and d!27677 res!51149) b!102236))

(assert (= (and b!102236 res!51152) b!102225))

(assert (= (and b!102236 (not res!51148)) b!102228))

(assert (= (and b!102228 res!51144) b!102224))

(assert (= (and b!102236 res!51151) b!102222))

(assert (= (and b!102222 c!17644) b!102226))

(assert (= (and b!102222 (not c!17644)) b!102239))

(assert (= (and b!102226 res!51147) b!102233))

(assert (= (or b!102226 b!102239) bm!10675))

(assert (= (and b!102222 res!51145) b!102227))

(assert (= (and b!102227 c!17647) b!102220))

(assert (= (and b!102227 (not c!17647)) b!102232))

(assert (= (and b!102220 res!51146) b!102237))

(assert (= (or b!102220 b!102232) bm!10677))

(declare-fun b_lambda!4587 () Bool)

(assert (=> (not b_lambda!4587) (not b!102224)))

(assert (=> b!102224 t!5650))

(declare-fun b_and!6301 () Bool)

(assert (= b_and!6297 (and (=> t!5650 result!3367) b_and!6301)))

(assert (=> b!102224 t!5652))

(declare-fun b_and!6303 () Bool)

(assert (= b_and!6299 (and (=> t!5652 result!3369) b_and!6303)))

(declare-fun m!113329 () Bool)

(assert (=> bm!10675 m!113329))

(assert (=> b!102224 m!112805))

(declare-fun m!113331 () Bool)

(assert (=> b!102224 m!113331))

(assert (=> b!102224 m!112809))

(assert (=> b!102224 m!112905))

(assert (=> b!102224 m!112809))

(assert (=> b!102224 m!112907))

(assert (=> b!102224 m!112905))

(assert (=> b!102224 m!112805))

(declare-fun m!113333 () Bool)

(assert (=> b!102221 m!113333))

(declare-fun m!113335 () Bool)

(assert (=> b!102233 m!113335))

(declare-fun m!113337 () Bool)

(assert (=> bm!10674 m!113337))

(assert (=> b!102225 m!112805))

(assert (=> b!102225 m!112805))

(assert (=> b!102225 m!112821))

(assert (=> d!27677 m!112823))

(declare-fun m!113339 () Bool)

(assert (=> bm!10677 m!113339))

(declare-fun m!113341 () Bool)

(assert (=> b!102234 m!113341))

(declare-fun m!113343 () Bool)

(assert (=> b!102234 m!113343))

(declare-fun m!113345 () Bool)

(assert (=> b!102234 m!113345))

(declare-fun m!113347 () Bool)

(assert (=> b!102234 m!113347))

(declare-fun m!113349 () Bool)

(assert (=> b!102234 m!113349))

(assert (=> b!102234 m!113345))

(declare-fun m!113351 () Bool)

(assert (=> b!102234 m!113351))

(declare-fun m!113353 () Bool)

(assert (=> b!102234 m!113353))

(declare-fun m!113355 () Bool)

(assert (=> b!102234 m!113355))

(assert (=> b!102234 m!113353))

(declare-fun m!113357 () Bool)

(assert (=> b!102234 m!113357))

(declare-fun m!113359 () Bool)

(assert (=> b!102234 m!113359))

(declare-fun m!113361 () Bool)

(assert (=> b!102234 m!113361))

(declare-fun m!113363 () Bool)

(assert (=> b!102234 m!113363))

(assert (=> b!102234 m!113361))

(declare-fun m!113365 () Bool)

(assert (=> b!102234 m!113365))

(declare-fun m!113367 () Bool)

(assert (=> b!102234 m!113367))

(assert (=> b!102234 m!113349))

(declare-fun m!113369 () Bool)

(assert (=> b!102234 m!113369))

(declare-fun m!113371 () Bool)

(assert (=> b!102234 m!113371))

(assert (=> b!102234 m!112805))

(assert (=> b!102228 m!112805))

(assert (=> b!102228 m!112805))

(declare-fun m!113373 () Bool)

(assert (=> b!102228 m!113373))

(assert (=> b!102240 m!112805))

(assert (=> b!102240 m!112805))

(assert (=> b!102240 m!112821))

(assert (=> bm!10673 m!113371))

(declare-fun m!113375 () Bool)

(assert (=> b!102237 m!113375))

(assert (=> bm!10589 d!27677))

(declare-fun d!27679 () Bool)

(declare-fun res!51157 () Bool)

(declare-fun e!66539 () Bool)

(assert (=> d!27679 (=> res!51157 e!66539)))

(assert (=> d!27679 (= res!51157 (and ((_ is Cons!1617) (toList!797 lt!51494)) (= (_1!1198 (h!2213 (toList!797 lt!51494))) (select (arr!2032 (_keys!4236 (v!2845 (underlying!348 thiss!992)))) from!355))))))

(assert (=> d!27679 (= (containsKey!156 (toList!797 lt!51494) (select (arr!2032 (_keys!4236 (v!2845 (underlying!348 thiss!992)))) from!355)) e!66539)))

(declare-fun b!102245 () Bool)

(declare-fun e!66540 () Bool)

(assert (=> b!102245 (= e!66539 e!66540)))

(declare-fun res!51158 () Bool)

(assert (=> b!102245 (=> (not res!51158) (not e!66540))))

(assert (=> b!102245 (= res!51158 (and (or (not ((_ is Cons!1617) (toList!797 lt!51494))) (bvsle (_1!1198 (h!2213 (toList!797 lt!51494))) (select (arr!2032 (_keys!4236 (v!2845 (underlying!348 thiss!992)))) from!355))) ((_ is Cons!1617) (toList!797 lt!51494)) (bvslt (_1!1198 (h!2213 (toList!797 lt!51494))) (select (arr!2032 (_keys!4236 (v!2845 (underlying!348 thiss!992)))) from!355))))))

(declare-fun b!102246 () Bool)

(assert (=> b!102246 (= e!66540 (containsKey!156 (t!5643 (toList!797 lt!51494)) (select (arr!2032 (_keys!4236 (v!2845 (underlying!348 thiss!992)))) from!355)))))

(assert (= (and d!27679 (not res!51157)) b!102245))

(assert (= (and b!102245 res!51158) b!102246))

(assert (=> b!102246 m!112547))

(declare-fun m!113377 () Bool)

(assert (=> b!102246 m!113377))

(assert (=> d!27545 d!27679))

(assert (=> b!101840 d!27641))

(declare-fun d!27681 () Bool)

(declare-fun e!66543 () Bool)

(assert (=> d!27681 e!66543))

(declare-fun res!51164 () Bool)

(assert (=> d!27681 (=> (not res!51164) (not e!66543))))

(declare-fun lt!51998 () SeekEntryResult!266)

(assert (=> d!27681 (= res!51164 ((_ is Found!266) lt!51998))))

(assert (=> d!27681 (= lt!51998 (seekEntryOrOpen!0 (select (arr!2032 (_keys!4236 (v!2845 (underlying!348 thiss!992)))) from!355) (_keys!4236 newMap!16) (mask!6659 newMap!16)))))

(declare-fun lt!51997 () Unit!3112)

(declare-fun choose!640 (array!4282 array!4284 (_ BitVec 32) (_ BitVec 32) V!3179 V!3179 (_ BitVec 64) Int) Unit!3112)

(assert (=> d!27681 (= lt!51997 (choose!640 (_keys!4236 newMap!16) (_values!2519 newMap!16) (mask!6659 newMap!16) (extraKeys!2347 newMap!16) (zeroValue!2414 newMap!16) (minValue!2414 newMap!16) (select (arr!2032 (_keys!4236 (v!2845 (underlying!348 thiss!992)))) from!355) (defaultEntry!2536 newMap!16)))))

(assert (=> d!27681 (validMask!0 (mask!6659 newMap!16))))

(assert (=> d!27681 (= (lemmaInListMapThenSeekEntryOrOpenFindsIt!44 (_keys!4236 newMap!16) (_values!2519 newMap!16) (mask!6659 newMap!16) (extraKeys!2347 newMap!16) (zeroValue!2414 newMap!16) (minValue!2414 newMap!16) (select (arr!2032 (_keys!4236 (v!2845 (underlying!348 thiss!992)))) from!355) (defaultEntry!2536 newMap!16)) lt!51997)))

(declare-fun b!102251 () Bool)

(declare-fun res!51163 () Bool)

(assert (=> b!102251 (=> (not res!51163) (not e!66543))))

(assert (=> b!102251 (= res!51163 (inRange!0 (index!3211 lt!51998) (mask!6659 newMap!16)))))

(declare-fun b!102252 () Bool)

(assert (=> b!102252 (= e!66543 (= (select (arr!2032 (_keys!4236 newMap!16)) (index!3211 lt!51998)) (select (arr!2032 (_keys!4236 (v!2845 (underlying!348 thiss!992)))) from!355)))))

(assert (=> b!102252 (and (bvsge (index!3211 lt!51998) #b00000000000000000000000000000000) (bvslt (index!3211 lt!51998) (size!2285 (_keys!4236 newMap!16))))))

(assert (= (and d!27681 res!51164) b!102251))

(assert (= (and b!102251 res!51163) b!102252))

(assert (=> d!27681 m!112547))

(assert (=> d!27681 m!112697))

(assert (=> d!27681 m!112547))

(declare-fun m!113379 () Bool)

(assert (=> d!27681 m!113379))

(assert (=> d!27681 m!112823))

(declare-fun m!113381 () Bool)

(assert (=> b!102251 m!113381))

(declare-fun m!113383 () Bool)

(assert (=> b!102252 m!113383))

(assert (=> bm!10579 d!27681))

(declare-fun b!102262 () Bool)

(declare-fun res!51175 () Bool)

(declare-fun e!66546 () Bool)

(assert (=> b!102262 (=> (not res!51175) (not e!66546))))

(declare-fun size!2289 (LongMapFixedSize!870) (_ BitVec 32))

(assert (=> b!102262 (= res!51175 (bvsge (size!2289 newMap!16) (_size!484 newMap!16)))))

(declare-fun b!102261 () Bool)

(declare-fun res!51176 () Bool)

(assert (=> b!102261 (=> (not res!51176) (not e!66546))))

(assert (=> b!102261 (= res!51176 (and (= (size!2286 (_values!2519 newMap!16)) (bvadd (mask!6659 newMap!16) #b00000000000000000000000000000001)) (= (size!2285 (_keys!4236 newMap!16)) (size!2286 (_values!2519 newMap!16))) (bvsge (_size!484 newMap!16) #b00000000000000000000000000000000) (bvsle (_size!484 newMap!16) (bvadd (mask!6659 newMap!16) #b00000000000000000000000000000001))))))

(declare-fun b!102263 () Bool)

(declare-fun res!51173 () Bool)

(assert (=> b!102263 (=> (not res!51173) (not e!66546))))

(assert (=> b!102263 (= res!51173 (= (size!2289 newMap!16) (bvadd (_size!484 newMap!16) (bvsdiv (bvadd (extraKeys!2347 newMap!16) #b00000000000000000000000000000001) #b00000000000000000000000000000010))))))

(declare-fun b!102264 () Bool)

(assert (=> b!102264 (= e!66546 (and (bvsge (extraKeys!2347 newMap!16) #b00000000000000000000000000000000) (bvsle (extraKeys!2347 newMap!16) #b00000000000000000000000000000011) (bvsge (_vacant!484 newMap!16) #b00000000000000000000000000000000)))))

(declare-fun d!27683 () Bool)

(declare-fun res!51174 () Bool)

(assert (=> d!27683 (=> (not res!51174) (not e!66546))))

(assert (=> d!27683 (= res!51174 (validMask!0 (mask!6659 newMap!16)))))

(assert (=> d!27683 (= (simpleValid!70 newMap!16) e!66546)))

(assert (= (and d!27683 res!51174) b!102261))

(assert (= (and b!102261 res!51176) b!102262))

(assert (= (and b!102262 res!51175) b!102263))

(assert (= (and b!102263 res!51173) b!102264))

(declare-fun m!113385 () Bool)

(assert (=> b!102262 m!113385))

(assert (=> b!102263 m!113385))

(assert (=> d!27683 m!112823))

(assert (=> d!27551 d!27683))

(declare-fun d!27685 () Bool)

(assert (=> d!27685 (arrayContainsKey!0 (_keys!4236 (v!2845 (underlying!348 thiss!992))) lt!51625 #b00000000000000000000000000000000)))

(declare-fun lt!52001 () Unit!3112)

(declare-fun choose!13 (array!4282 (_ BitVec 64) (_ BitVec 32)) Unit!3112)

(assert (=> d!27685 (= lt!52001 (choose!13 (_keys!4236 (v!2845 (underlying!348 thiss!992))) lt!51625 #b00000000000000000000000000000000))))

(assert (=> d!27685 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(assert (=> d!27685 (= (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!4236 (v!2845 (underlying!348 thiss!992))) lt!51625 #b00000000000000000000000000000000) lt!52001)))

(declare-fun bs!4215 () Bool)

(assert (= bs!4215 d!27685))

(assert (=> bs!4215 m!112737))

(declare-fun m!113387 () Bool)

(assert (=> bs!4215 m!113387))

(assert (=> b!101842 d!27685))

(declare-fun d!27687 () Bool)

(declare-fun res!51177 () Bool)

(declare-fun e!66547 () Bool)

(assert (=> d!27687 (=> res!51177 e!66547)))

(assert (=> d!27687 (= res!51177 (= (select (arr!2032 (_keys!4236 (v!2845 (underlying!348 thiss!992)))) #b00000000000000000000000000000000) lt!51625))))

(assert (=> d!27687 (= (arrayContainsKey!0 (_keys!4236 (v!2845 (underlying!348 thiss!992))) lt!51625 #b00000000000000000000000000000000) e!66547)))

(declare-fun b!102265 () Bool)

(declare-fun e!66548 () Bool)

(assert (=> b!102265 (= e!66547 e!66548)))

(declare-fun res!51178 () Bool)

(assert (=> b!102265 (=> (not res!51178) (not e!66548))))

(assert (=> b!102265 (= res!51178 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!2285 (_keys!4236 (v!2845 (underlying!348 thiss!992))))))))

(declare-fun b!102266 () Bool)

(assert (=> b!102266 (= e!66548 (arrayContainsKey!0 (_keys!4236 (v!2845 (underlying!348 thiss!992))) lt!51625 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!27687 (not res!51177)) b!102265))

(assert (= (and b!102265 res!51178) b!102266))

(assert (=> d!27687 m!112649))

(declare-fun m!113389 () Bool)

(assert (=> b!102266 m!113389))

(assert (=> b!101842 d!27687))

(declare-fun b!102267 () Bool)

(declare-fun e!66550 () SeekEntryResult!266)

(declare-fun e!66551 () SeekEntryResult!266)

(assert (=> b!102267 (= e!66550 e!66551)))

(declare-fun lt!52003 () (_ BitVec 64))

(declare-fun lt!52002 () SeekEntryResult!266)

(assert (=> b!102267 (= lt!52003 (select (arr!2032 (_keys!4236 (v!2845 (underlying!348 thiss!992)))) (index!3212 lt!52002)))))

(declare-fun c!17650 () Bool)

(assert (=> b!102267 (= c!17650 (= lt!52003 (select (arr!2032 (_keys!4236 (v!2845 (underlying!348 thiss!992)))) #b00000000000000000000000000000000)))))

(declare-fun b!102268 () Bool)

(assert (=> b!102268 (= e!66551 (Found!266 (index!3212 lt!52002)))))

(declare-fun b!102269 () Bool)

(declare-fun e!66549 () SeekEntryResult!266)

(assert (=> b!102269 (= e!66549 (seekKeyOrZeroReturnVacant!0 (x!13349 lt!52002) (index!3212 lt!52002) (index!3212 lt!52002) (select (arr!2032 (_keys!4236 (v!2845 (underlying!348 thiss!992)))) #b00000000000000000000000000000000) (_keys!4236 (v!2845 (underlying!348 thiss!992))) (mask!6659 (v!2845 (underlying!348 thiss!992)))))))

(declare-fun b!102270 () Bool)

(assert (=> b!102270 (= e!66550 Undefined!266)))

(declare-fun d!27689 () Bool)

(declare-fun lt!52004 () SeekEntryResult!266)

(assert (=> d!27689 (and (or ((_ is Undefined!266) lt!52004) (not ((_ is Found!266) lt!52004)) (and (bvsge (index!3211 lt!52004) #b00000000000000000000000000000000) (bvslt (index!3211 lt!52004) (size!2285 (_keys!4236 (v!2845 (underlying!348 thiss!992))))))) (or ((_ is Undefined!266) lt!52004) ((_ is Found!266) lt!52004) (not ((_ is MissingZero!266) lt!52004)) (and (bvsge (index!3210 lt!52004) #b00000000000000000000000000000000) (bvslt (index!3210 lt!52004) (size!2285 (_keys!4236 (v!2845 (underlying!348 thiss!992))))))) (or ((_ is Undefined!266) lt!52004) ((_ is Found!266) lt!52004) ((_ is MissingZero!266) lt!52004) (not ((_ is MissingVacant!266) lt!52004)) (and (bvsge (index!3213 lt!52004) #b00000000000000000000000000000000) (bvslt (index!3213 lt!52004) (size!2285 (_keys!4236 (v!2845 (underlying!348 thiss!992))))))) (or ((_ is Undefined!266) lt!52004) (ite ((_ is Found!266) lt!52004) (= (select (arr!2032 (_keys!4236 (v!2845 (underlying!348 thiss!992)))) (index!3211 lt!52004)) (select (arr!2032 (_keys!4236 (v!2845 (underlying!348 thiss!992)))) #b00000000000000000000000000000000)) (ite ((_ is MissingZero!266) lt!52004) (= (select (arr!2032 (_keys!4236 (v!2845 (underlying!348 thiss!992)))) (index!3210 lt!52004)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!266) lt!52004) (= (select (arr!2032 (_keys!4236 (v!2845 (underlying!348 thiss!992)))) (index!3213 lt!52004)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!27689 (= lt!52004 e!66550)))

(declare-fun c!17649 () Bool)

(assert (=> d!27689 (= c!17649 (and ((_ is Intermediate!266) lt!52002) (undefined!1078 lt!52002)))))

(assert (=> d!27689 (= lt!52002 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!2032 (_keys!4236 (v!2845 (underlying!348 thiss!992)))) #b00000000000000000000000000000000) (mask!6659 (v!2845 (underlying!348 thiss!992)))) (select (arr!2032 (_keys!4236 (v!2845 (underlying!348 thiss!992)))) #b00000000000000000000000000000000) (_keys!4236 (v!2845 (underlying!348 thiss!992))) (mask!6659 (v!2845 (underlying!348 thiss!992)))))))

(assert (=> d!27689 (validMask!0 (mask!6659 (v!2845 (underlying!348 thiss!992))))))

(assert (=> d!27689 (= (seekEntryOrOpen!0 (select (arr!2032 (_keys!4236 (v!2845 (underlying!348 thiss!992)))) #b00000000000000000000000000000000) (_keys!4236 (v!2845 (underlying!348 thiss!992))) (mask!6659 (v!2845 (underlying!348 thiss!992)))) lt!52004)))

(declare-fun b!102271 () Bool)

(assert (=> b!102271 (= e!66549 (MissingZero!266 (index!3212 lt!52002)))))

(declare-fun b!102272 () Bool)

(declare-fun c!17651 () Bool)

(assert (=> b!102272 (= c!17651 (= lt!52003 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!102272 (= e!66551 e!66549)))

(assert (= (and d!27689 c!17649) b!102270))

(assert (= (and d!27689 (not c!17649)) b!102267))

(assert (= (and b!102267 c!17650) b!102268))

(assert (= (and b!102267 (not c!17650)) b!102272))

(assert (= (and b!102272 c!17651) b!102271))

(assert (= (and b!102272 (not c!17651)) b!102269))

(declare-fun m!113391 () Bool)

(assert (=> b!102267 m!113391))

(assert (=> b!102269 m!112649))

(declare-fun m!113393 () Bool)

(assert (=> b!102269 m!113393))

(declare-fun m!113395 () Bool)

(assert (=> d!27689 m!113395))

(declare-fun m!113397 () Bool)

(assert (=> d!27689 m!113397))

(assert (=> d!27689 m!112649))

(declare-fun m!113399 () Bool)

(assert (=> d!27689 m!113399))

(assert (=> d!27689 m!112583))

(declare-fun m!113401 () Bool)

(assert (=> d!27689 m!113401))

(assert (=> d!27689 m!112649))

(assert (=> d!27689 m!113397))

(declare-fun m!113403 () Bool)

(assert (=> d!27689 m!113403))

(assert (=> b!101842 d!27689))

(assert (=> d!27529 d!27535))

(declare-fun d!27691 () Bool)

(assert (=> d!27691 (arrayNoDuplicates!0 (_keys!4236 (v!2845 (underlying!348 thiss!992))) from!355 Nil!1617)))

(assert (=> d!27691 true))

(declare-fun _$71!141 () Unit!3112)

(assert (=> d!27691 (= (choose!39 (_keys!4236 (v!2845 (underlying!348 thiss!992))) #b00000000000000000000000000000000 from!355) _$71!141)))

(declare-fun bs!4216 () Bool)

(assert (= bs!4216 d!27691))

(assert (=> bs!4216 m!112557))

(assert (=> d!27529 d!27691))

(declare-fun d!27693 () Bool)

(assert (=> d!27693 (= (apply!95 lt!51692 #b0000000000000000000000000000000000000000000000000000000000000000) (get!1319 (getValueByKey!152 (toList!797 lt!51692) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun bs!4217 () Bool)

(assert (= bs!4217 d!27693))

(assert (=> bs!4217 m!113079))

(assert (=> bs!4217 m!113079))

(declare-fun m!113405 () Bool)

(assert (=> bs!4217 m!113405))

(assert (=> b!101898 d!27693))

(declare-fun d!27695 () Bool)

(declare-fun e!66553 () Bool)

(assert (=> d!27695 e!66553))

(declare-fun res!51179 () Bool)

(assert (=> d!27695 (=> res!51179 e!66553)))

(declare-fun lt!52005 () Bool)

(assert (=> d!27695 (= res!51179 (not lt!52005))))

(declare-fun lt!52006 () Bool)

(assert (=> d!27695 (= lt!52005 lt!52006)))

(declare-fun lt!52008 () Unit!3112)

(declare-fun e!66552 () Unit!3112)

(assert (=> d!27695 (= lt!52008 e!66552)))

(declare-fun c!17652 () Bool)

(assert (=> d!27695 (= c!17652 lt!52006)))

(assert (=> d!27695 (= lt!52006 (containsKey!156 (toList!797 lt!51692) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!27695 (= (contains!816 lt!51692 #b1000000000000000000000000000000000000000000000000000000000000000) lt!52005)))

(declare-fun b!102273 () Bool)

(declare-fun lt!52007 () Unit!3112)

(assert (=> b!102273 (= e!66552 lt!52007)))

(assert (=> b!102273 (= lt!52007 (lemmaContainsKeyImpliesGetValueByKeyDefined!105 (toList!797 lt!51692) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!102273 (isDefined!106 (getValueByKey!152 (toList!797 lt!51692) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!102274 () Bool)

(declare-fun Unit!3135 () Unit!3112)

(assert (=> b!102274 (= e!66552 Unit!3135)))

(declare-fun b!102275 () Bool)

(assert (=> b!102275 (= e!66553 (isDefined!106 (getValueByKey!152 (toList!797 lt!51692) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!27695 c!17652) b!102273))

(assert (= (and d!27695 (not c!17652)) b!102274))

(assert (= (and d!27695 (not res!51179)) b!102275))

(declare-fun m!113407 () Bool)

(assert (=> d!27695 m!113407))

(declare-fun m!113409 () Bool)

(assert (=> b!102273 m!113409))

(assert (=> b!102273 m!113235))

(assert (=> b!102273 m!113235))

(declare-fun m!113411 () Bool)

(assert (=> b!102273 m!113411))

(assert (=> b!102275 m!113235))

(assert (=> b!102275 m!113235))

(assert (=> b!102275 m!113411))

(assert (=> bm!10621 d!27695))

(assert (=> b!101665 d!27531))

(declare-fun bm!10680 () Bool)

(declare-fun call!10683 () Bool)

(assert (=> bm!10680 (= call!10683 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (_keys!4236 newMap!16) (mask!6659 newMap!16)))))

(declare-fun b!102276 () Bool)

(declare-fun e!66555 () Bool)

(assert (=> b!102276 (= e!66555 call!10683)))

(declare-fun b!102277 () Bool)

(declare-fun e!66556 () Bool)

(assert (=> b!102277 (= e!66556 e!66555)))

(declare-fun c!17653 () Bool)

(assert (=> b!102277 (= c!17653 (validKeyInArray!0 (select (arr!2032 (_keys!4236 newMap!16)) #b00000000000000000000000000000000)))))

(declare-fun d!27697 () Bool)

(declare-fun res!51180 () Bool)

(assert (=> d!27697 (=> res!51180 e!66556)))

(assert (=> d!27697 (= res!51180 (bvsge #b00000000000000000000000000000000 (size!2285 (_keys!4236 newMap!16))))))

(assert (=> d!27697 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!4236 newMap!16) (mask!6659 newMap!16)) e!66556)))

(declare-fun b!102278 () Bool)

(declare-fun e!66554 () Bool)

(assert (=> b!102278 (= e!66554 call!10683)))

(declare-fun b!102279 () Bool)

(assert (=> b!102279 (= e!66555 e!66554)))

(declare-fun lt!52010 () (_ BitVec 64))

(assert (=> b!102279 (= lt!52010 (select (arr!2032 (_keys!4236 newMap!16)) #b00000000000000000000000000000000))))

(declare-fun lt!52011 () Unit!3112)

(assert (=> b!102279 (= lt!52011 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!4236 newMap!16) lt!52010 #b00000000000000000000000000000000))))

(assert (=> b!102279 (arrayContainsKey!0 (_keys!4236 newMap!16) lt!52010 #b00000000000000000000000000000000)))

(declare-fun lt!52009 () Unit!3112)

(assert (=> b!102279 (= lt!52009 lt!52011)))

(declare-fun res!51181 () Bool)

(assert (=> b!102279 (= res!51181 (= (seekEntryOrOpen!0 (select (arr!2032 (_keys!4236 newMap!16)) #b00000000000000000000000000000000) (_keys!4236 newMap!16) (mask!6659 newMap!16)) (Found!266 #b00000000000000000000000000000000)))))

(assert (=> b!102279 (=> (not res!51181) (not e!66554))))

(assert (= (and d!27697 (not res!51180)) b!102277))

(assert (= (and b!102277 c!17653) b!102279))

(assert (= (and b!102277 (not c!17653)) b!102276))

(assert (= (and b!102279 res!51181) b!102278))

(assert (= (or b!102278 b!102276) bm!10680))

(declare-fun m!113413 () Bool)

(assert (=> bm!10680 m!113413))

(assert (=> b!102277 m!112805))

(assert (=> b!102277 m!112805))

(assert (=> b!102277 m!112821))

(assert (=> b!102279 m!112805))

(declare-fun m!113415 () Bool)

(assert (=> b!102279 m!113415))

(declare-fun m!113417 () Bool)

(assert (=> b!102279 m!113417))

(assert (=> b!102279 m!112805))

(declare-fun m!113419 () Bool)

(assert (=> b!102279 m!113419))

(assert (=> b!101829 d!27697))

(declare-fun d!27699 () Bool)

(assert (=> d!27699 (= (inRange!0 (ite c!17529 (ite c!17533 (index!3211 lt!51597) (ite c!17530 (index!3210 lt!51598) (index!3213 lt!51598))) (ite c!17532 (index!3211 lt!51592) (ite c!17531 (index!3210 lt!51607) (index!3213 lt!51607)))) (mask!6659 newMap!16)) (and (bvsge (ite c!17529 (ite c!17533 (index!3211 lt!51597) (ite c!17530 (index!3210 lt!51598) (index!3213 lt!51598))) (ite c!17532 (index!3211 lt!51592) (ite c!17531 (index!3210 lt!51607) (index!3213 lt!51607)))) #b00000000000000000000000000000000) (bvslt (ite c!17529 (ite c!17533 (index!3211 lt!51597) (ite c!17530 (index!3210 lt!51598) (index!3213 lt!51598))) (ite c!17532 (index!3211 lt!51592) (ite c!17531 (index!3210 lt!51607) (index!3213 lt!51607)))) (bvadd (mask!6659 newMap!16) #b00000000000000000000000000000001))))))

(assert (=> bm!10591 d!27699))

(declare-fun d!27701 () Bool)

(declare-fun e!66558 () Bool)

(assert (=> d!27701 e!66558))

(declare-fun res!51182 () Bool)

(assert (=> d!27701 (=> res!51182 e!66558)))

(declare-fun lt!52012 () Bool)

(assert (=> d!27701 (= res!51182 (not lt!52012))))

(declare-fun lt!52013 () Bool)

(assert (=> d!27701 (= lt!52012 lt!52013)))

(declare-fun lt!52015 () Unit!3112)

(declare-fun e!66557 () Unit!3112)

(assert (=> d!27701 (= lt!52015 e!66557)))

(declare-fun c!17654 () Bool)

(assert (=> d!27701 (= c!17654 lt!52013)))

(assert (=> d!27701 (= lt!52013 (containsKey!156 (toList!797 call!10596) (select (arr!2032 (_keys!4236 newMap!16)) (index!3211 lt!51617))))))

(assert (=> d!27701 (= (contains!816 call!10596 (select (arr!2032 (_keys!4236 newMap!16)) (index!3211 lt!51617))) lt!52012)))

(declare-fun b!102280 () Bool)

(declare-fun lt!52014 () Unit!3112)

(assert (=> b!102280 (= e!66557 lt!52014)))

(assert (=> b!102280 (= lt!52014 (lemmaContainsKeyImpliesGetValueByKeyDefined!105 (toList!797 call!10596) (select (arr!2032 (_keys!4236 newMap!16)) (index!3211 lt!51617))))))

(assert (=> b!102280 (isDefined!106 (getValueByKey!152 (toList!797 call!10596) (select (arr!2032 (_keys!4236 newMap!16)) (index!3211 lt!51617))))))

(declare-fun b!102281 () Bool)

(declare-fun Unit!3136 () Unit!3112)

(assert (=> b!102281 (= e!66557 Unit!3136)))

(declare-fun b!102282 () Bool)

(assert (=> b!102282 (= e!66558 (isDefined!106 (getValueByKey!152 (toList!797 call!10596) (select (arr!2032 (_keys!4236 newMap!16)) (index!3211 lt!51617)))))))

(assert (= (and d!27701 c!17654) b!102280))

(assert (= (and d!27701 (not c!17654)) b!102281))

(assert (= (and d!27701 (not res!51182)) b!102282))

(assert (=> d!27701 m!112701))

(declare-fun m!113421 () Bool)

(assert (=> d!27701 m!113421))

(assert (=> b!102280 m!112701))

(declare-fun m!113423 () Bool)

(assert (=> b!102280 m!113423))

(assert (=> b!102280 m!112701))

(declare-fun m!113425 () Bool)

(assert (=> b!102280 m!113425))

(assert (=> b!102280 m!113425))

(declare-fun m!113427 () Bool)

(assert (=> b!102280 m!113427))

(assert (=> b!102282 m!112701))

(assert (=> b!102282 m!113425))

(assert (=> b!102282 m!113425))

(assert (=> b!102282 m!113427))

(assert (=> b!101789 d!27701))

(declare-fun d!27703 () Bool)

(declare-fun e!66561 () Bool)

(assert (=> d!27703 e!66561))

(declare-fun res!51185 () Bool)

(assert (=> d!27703 (=> (not res!51185) (not e!66561))))

(assert (=> d!27703 (= res!51185 (and (bvsge (index!3211 lt!51617) #b00000000000000000000000000000000) (bvslt (index!3211 lt!51617) (size!2285 (_keys!4236 newMap!16)))))))

(declare-fun lt!52018 () Unit!3112)

(declare-fun choose!641 (array!4282 array!4284 (_ BitVec 32) (_ BitVec 32) V!3179 V!3179 (_ BitVec 32) Int) Unit!3112)

(assert (=> d!27703 (= lt!52018 (choose!641 (_keys!4236 newMap!16) lt!51613 (mask!6659 newMap!16) (extraKeys!2347 newMap!16) (zeroValue!2414 newMap!16) (minValue!2414 newMap!16) (index!3211 lt!51617) (defaultEntry!2536 newMap!16)))))

(assert (=> d!27703 (validMask!0 (mask!6659 newMap!16))))

(assert (=> d!27703 (= (lemmaValidKeyInArrayIsInListMap!102 (_keys!4236 newMap!16) lt!51613 (mask!6659 newMap!16) (extraKeys!2347 newMap!16) (zeroValue!2414 newMap!16) (minValue!2414 newMap!16) (index!3211 lt!51617) (defaultEntry!2536 newMap!16)) lt!52018)))

(declare-fun b!102285 () Bool)

(assert (=> b!102285 (= e!66561 (contains!816 (getCurrentListMap!477 (_keys!4236 newMap!16) lt!51613 (mask!6659 newMap!16) (extraKeys!2347 newMap!16) (zeroValue!2414 newMap!16) (minValue!2414 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2536 newMap!16)) (select (arr!2032 (_keys!4236 newMap!16)) (index!3211 lt!51617))))))

(assert (= (and d!27703 res!51185) b!102285))

(declare-fun m!113429 () Bool)

(assert (=> d!27703 m!113429))

(assert (=> d!27703 m!112823))

(declare-fun m!113431 () Bool)

(assert (=> b!102285 m!113431))

(assert (=> b!102285 m!112701))

(assert (=> b!102285 m!113431))

(assert (=> b!102285 m!112701))

(declare-fun m!113433 () Bool)

(assert (=> b!102285 m!113433))

(assert (=> b!101789 d!27703))

(declare-fun d!27705 () Bool)

(declare-fun e!66564 () Bool)

(assert (=> d!27705 e!66564))

(declare-fun res!51188 () Bool)

(assert (=> d!27705 (=> (not res!51188) (not e!66564))))

(assert (=> d!27705 (= res!51188 (and (bvsge (index!3211 lt!51617) #b00000000000000000000000000000000) (bvslt (index!3211 lt!51617) (size!2286 (_values!2519 newMap!16)))))))

(declare-fun lt!52021 () Unit!3112)

(declare-fun choose!642 (array!4282 array!4284 (_ BitVec 32) (_ BitVec 32) V!3179 V!3179 (_ BitVec 32) (_ BitVec 64) V!3179 Int) Unit!3112)

(assert (=> d!27705 (= lt!52021 (choose!642 (_keys!4236 newMap!16) (_values!2519 newMap!16) (mask!6659 newMap!16) (extraKeys!2347 newMap!16) (zeroValue!2414 newMap!16) (minValue!2414 newMap!16) (index!3211 lt!51617) (select (arr!2032 (_keys!4236 (v!2845 (underlying!348 thiss!992)))) from!355) (get!1316 (select (arr!2033 (_values!2519 (v!2845 (underlying!348 thiss!992)))) from!355) (dynLambda!383 (defaultEntry!2536 (v!2845 (underlying!348 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (defaultEntry!2536 newMap!16)))))

(assert (=> d!27705 (validMask!0 (mask!6659 newMap!16))))

(assert (=> d!27705 (= (lemmaChangeValueExistingKeyToArrayThenAddPairToListMap!44 (_keys!4236 newMap!16) (_values!2519 newMap!16) (mask!6659 newMap!16) (extraKeys!2347 newMap!16) (zeroValue!2414 newMap!16) (minValue!2414 newMap!16) (index!3211 lt!51617) (select (arr!2032 (_keys!4236 (v!2845 (underlying!348 thiss!992)))) from!355) (get!1316 (select (arr!2033 (_values!2519 (v!2845 (underlying!348 thiss!992)))) from!355) (dynLambda!383 (defaultEntry!2536 (v!2845 (underlying!348 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (defaultEntry!2536 newMap!16)) lt!52021)))

(declare-fun b!102288 () Bool)

(assert (=> b!102288 (= e!66564 (= (+!141 (getCurrentListMap!477 (_keys!4236 newMap!16) (_values!2519 newMap!16) (mask!6659 newMap!16) (extraKeys!2347 newMap!16) (zeroValue!2414 newMap!16) (minValue!2414 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2536 newMap!16)) (tuple2!2377 (select (arr!2032 (_keys!4236 (v!2845 (underlying!348 thiss!992)))) from!355) (get!1316 (select (arr!2033 (_values!2519 (v!2845 (underlying!348 thiss!992)))) from!355) (dynLambda!383 (defaultEntry!2536 (v!2845 (underlying!348 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (getCurrentListMap!477 (_keys!4236 newMap!16) (array!4285 (store (arr!2033 (_values!2519 newMap!16)) (index!3211 lt!51617) (ValueCellFull!981 (get!1316 (select (arr!2033 (_values!2519 (v!2845 (underlying!348 thiss!992)))) from!355) (dynLambda!383 (defaultEntry!2536 (v!2845 (underlying!348 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (size!2286 (_values!2519 newMap!16))) (mask!6659 newMap!16) (extraKeys!2347 newMap!16) (zeroValue!2414 newMap!16) (minValue!2414 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2536 newMap!16))))))

(assert (= (and d!27705 res!51188) b!102288))

(assert (=> d!27705 m!112547))

(assert (=> d!27705 m!112545))

(declare-fun m!113435 () Bool)

(assert (=> d!27705 m!113435))

(assert (=> d!27705 m!112823))

(assert (=> b!102288 m!112741))

(assert (=> b!102288 m!112741))

(assert (=> b!102288 m!112989))

(assert (=> b!102288 m!112679))

(declare-fun m!113437 () Bool)

(assert (=> b!102288 m!113437))

(assert (=> b!101789 d!27705))

(declare-fun d!27707 () Bool)

(declare-fun lt!52022 () Bool)

(assert (=> d!27707 (= lt!52022 (select (content!105 Nil!1617) (select (arr!2032 (_keys!4236 (v!2845 (underlying!348 thiss!992)))) #b00000000000000000000000000000000)))))

(declare-fun e!66566 () Bool)

(assert (=> d!27707 (= lt!52022 e!66566)))

(declare-fun res!51190 () Bool)

(assert (=> d!27707 (=> (not res!51190) (not e!66566))))

(assert (=> d!27707 (= res!51190 ((_ is Cons!1616) Nil!1617))))

(assert (=> d!27707 (= (contains!817 Nil!1617 (select (arr!2032 (_keys!4236 (v!2845 (underlying!348 thiss!992)))) #b00000000000000000000000000000000)) lt!52022)))

(declare-fun b!102289 () Bool)

(declare-fun e!66565 () Bool)

(assert (=> b!102289 (= e!66566 e!66565)))

(declare-fun res!51189 () Bool)

(assert (=> b!102289 (=> res!51189 e!66565)))

(assert (=> b!102289 (= res!51189 (= (h!2212 Nil!1617) (select (arr!2032 (_keys!4236 (v!2845 (underlying!348 thiss!992)))) #b00000000000000000000000000000000)))))

(declare-fun b!102290 () Bool)

(assert (=> b!102290 (= e!66565 (contains!817 (t!5642 Nil!1617) (select (arr!2032 (_keys!4236 (v!2845 (underlying!348 thiss!992)))) #b00000000000000000000000000000000)))))

(assert (= (and d!27707 res!51190) b!102289))

(assert (= (and b!102289 (not res!51189)) b!102290))

(assert (=> d!27707 m!112883))

(assert (=> d!27707 m!112649))

(declare-fun m!113439 () Bool)

(assert (=> d!27707 m!113439))

(assert (=> b!102290 m!112649))

(declare-fun m!113441 () Bool)

(assert (=> b!102290 m!113441))

(assert (=> b!101682 d!27707))

(declare-fun mapIsEmpty!3833 () Bool)

(declare-fun mapRes!3833 () Bool)

(assert (=> mapIsEmpty!3833 mapRes!3833))

(declare-fun b!102292 () Bool)

(declare-fun e!66567 () Bool)

(assert (=> b!102292 (= e!66567 tp_is_empty!2649)))

(declare-fun b!102291 () Bool)

(declare-fun e!66568 () Bool)

(assert (=> b!102291 (= e!66568 tp_is_empty!2649)))

(declare-fun condMapEmpty!3833 () Bool)

(declare-fun mapDefault!3833 () ValueCell!981)

(assert (=> mapNonEmpty!3831 (= condMapEmpty!3833 (= mapRest!3831 ((as const (Array (_ BitVec 32) ValueCell!981)) mapDefault!3833)))))

(assert (=> mapNonEmpty!3831 (= tp!9717 (and e!66567 mapRes!3833))))

(declare-fun mapNonEmpty!3833 () Bool)

(declare-fun tp!9719 () Bool)

(assert (=> mapNonEmpty!3833 (= mapRes!3833 (and tp!9719 e!66568))))

(declare-fun mapValue!3833 () ValueCell!981)

(declare-fun mapKey!3833 () (_ BitVec 32))

(declare-fun mapRest!3833 () (Array (_ BitVec 32) ValueCell!981))

(assert (=> mapNonEmpty!3833 (= mapRest!3831 (store mapRest!3833 mapKey!3833 mapValue!3833))))

(assert (= (and mapNonEmpty!3831 condMapEmpty!3833) mapIsEmpty!3833))

(assert (= (and mapNonEmpty!3831 (not condMapEmpty!3833)) mapNonEmpty!3833))

(assert (= (and mapNonEmpty!3833 ((_ is ValueCellFull!981) mapValue!3833)) b!102291))

(assert (= (and mapNonEmpty!3831 ((_ is ValueCellFull!981) mapDefault!3833)) b!102292))

(declare-fun m!113443 () Bool)

(assert (=> mapNonEmpty!3833 m!113443))

(declare-fun mapIsEmpty!3834 () Bool)

(declare-fun mapRes!3834 () Bool)

(assert (=> mapIsEmpty!3834 mapRes!3834))

(declare-fun b!102294 () Bool)

(declare-fun e!66569 () Bool)

(assert (=> b!102294 (= e!66569 tp_is_empty!2649)))

(declare-fun b!102293 () Bool)

(declare-fun e!66570 () Bool)

(assert (=> b!102293 (= e!66570 tp_is_empty!2649)))

(declare-fun condMapEmpty!3834 () Bool)

(declare-fun mapDefault!3834 () ValueCell!981)

(assert (=> mapNonEmpty!3832 (= condMapEmpty!3834 (= mapRest!3832 ((as const (Array (_ BitVec 32) ValueCell!981)) mapDefault!3834)))))

(assert (=> mapNonEmpty!3832 (= tp!9718 (and e!66569 mapRes!3834))))

(declare-fun mapNonEmpty!3834 () Bool)

(declare-fun tp!9720 () Bool)

(assert (=> mapNonEmpty!3834 (= mapRes!3834 (and tp!9720 e!66570))))

(declare-fun mapKey!3834 () (_ BitVec 32))

(declare-fun mapRest!3834 () (Array (_ BitVec 32) ValueCell!981))

(declare-fun mapValue!3834 () ValueCell!981)

(assert (=> mapNonEmpty!3834 (= mapRest!3832 (store mapRest!3834 mapKey!3834 mapValue!3834))))

(assert (= (and mapNonEmpty!3832 condMapEmpty!3834) mapIsEmpty!3834))

(assert (= (and mapNonEmpty!3832 (not condMapEmpty!3834)) mapNonEmpty!3834))

(assert (= (and mapNonEmpty!3834 ((_ is ValueCellFull!981) mapValue!3834)) b!102293))

(assert (= (and mapNonEmpty!3832 ((_ is ValueCellFull!981) mapDefault!3834)) b!102294))

(declare-fun m!113445 () Bool)

(assert (=> mapNonEmpty!3834 m!113445))

(declare-fun b_lambda!4589 () Bool)

(assert (= b_lambda!4577 (or (and b!101587 b_free!2465 (= (defaultEntry!2536 (v!2845 (underlying!348 thiss!992))) (defaultEntry!2536 newMap!16))) (and b!101570 b_free!2467) b_lambda!4589)))

(declare-fun b_lambda!4591 () Bool)

(assert (= b_lambda!4583 (or (and b!101587 b_free!2465) (and b!101570 b_free!2467 (= (defaultEntry!2536 newMap!16) (defaultEntry!2536 (v!2845 (underlying!348 thiss!992))))) b_lambda!4591)))

(declare-fun b_lambda!4593 () Bool)

(assert (= b_lambda!4579 (or (and b!101587 b_free!2465 (= (defaultEntry!2536 (v!2845 (underlying!348 thiss!992))) (defaultEntry!2536 newMap!16))) (and b!101570 b_free!2467) b_lambda!4593)))

(declare-fun b_lambda!4595 () Bool)

(assert (= b_lambda!4585 (or (and b!101587 b_free!2465) (and b!101570 b_free!2467 (= (defaultEntry!2536 newMap!16) (defaultEntry!2536 (v!2845 (underlying!348 thiss!992))))) b_lambda!4595)))

(declare-fun b_lambda!4597 () Bool)

(assert (= b_lambda!4581 (or (and b!101587 b_free!2465 (= (defaultEntry!2536 (v!2845 (underlying!348 thiss!992))) (defaultEntry!2536 newMap!16))) (and b!101570 b_free!2467) b_lambda!4597)))

(declare-fun b_lambda!4599 () Bool)

(assert (= b_lambda!4587 (or (and b!101587 b_free!2465 (= (defaultEntry!2536 (v!2845 (underlying!348 thiss!992))) (defaultEntry!2536 newMap!16))) (and b!101570 b_free!2467) b_lambda!4599)))

(check-sat (not d!27625) (not b!102132) (not bm!10625) (not b_lambda!4571) (not b!102185) (not d!27629) (not d!27567) (not b!102087) (not d!27575) (not d!27605) (not bm!10658) (not b!102234) (not d!27591) b_and!6303 (not b!102089) (not b!102033) (not bm!10631) (not b!102275) (not b!102263) (not b!102266) (not b!101962) (not b!102203) (not b!102209) (not b!102192) (not b!101921) (not b!102101) (not b!102070) (not d!27655) (not d!27609) (not b!102135) (not b!102032) (not b_lambda!4595) (not b!102190) (not b!101984) (not b!102277) (not bm!10654) (not bm!10633) (not d!27607) tp_is_empty!2649 (not b!102233) (not bm!10648) (not b!102262) (not bm!10624) (not b!102269) (not bm!10671) (not b!101933) (not d!27633) (not b!101980) (not b!101943) (not b!102092) (not d!27621) (not b!102194) (not d!27587) (not b!102149) (not b_lambda!4593) (not b!102131) (not d!27647) (not b!102074) (not d!27645) (not b!101972) (not bm!10626) (not d!27585) (not b_next!2465) (not b!102228) (not bm!10655) (not d!27705) (not b!101936) (not bm!10669) (not b!102067) (not bm!10632) (not b!102204) (not b!102079) (not b!102139) (not d!27615) (not b!102198) (not b!102162) (not d!27579) (not b!101951) (not b!102288) (not bm!10675) (not b!102141) (not b!102100) (not bm!10635) (not d!27701) (not b!101966) (not d!27653) (not d!27693) (not bm!10657) (not b!101971) (not d!27673) (not b!101929) (not d!27619) (not d!27623) (not d!27599) (not bm!10656) (not d!27627) (not d!27637) (not b!101920) (not bm!10649) (not b!102144) (not b!102195) (not b!102199) (not b!102151) (not b!102103) (not d!27651) (not b!101964) (not d!27643) (not b!102211) (not d!27611) (not d!27681) (not bm!10677) (not b!102225) (not b!102034) (not b!101924) (not bm!10666) (not b!102191) (not b!102187) (not d!27569) (not b!102213) (not b!102290) (not bm!10674) (not bm!10660) (not b!102137) (not d!27703) (not b!102091) (not b!102188) (not b!102240) (not b!102086) (not b!102193) (not d!27677) (not b!101942) (not b!102147) (not bm!10680) (not bm!10665) (not d!27601) (not b!102282) (not d!27683) (not b_next!2467) (not b_lambda!4591) (not b!101930) (not b_lambda!4575) (not d!27659) (not b!102221) (not b!102028) (not bm!10628) (not b_lambda!4597) (not b!101917) (not d!27695) (not d!27581) (not d!27589) (not b!102237) (not b!102143) (not d!27583) (not b!102146) (not b!102251) (not b!102134) (not b!102218) (not d!27617) (not b!102080) (not b!102145) (not d!27613) (not b!102273) (not b!102180) (not d!27573) (not b!102102) (not d!27661) (not d!27689) (not bm!10646) (not b!102153) (not b!102224) (not d!27685) (not b!102279) (not b!102138) (not b!102083) (not b!101975) (not b!102022) (not b!102184) (not b!101987) (not bm!10670) (not b!101981) (not d!27691) (not b!102071) (not d!27707) (not b!102246) (not bm!10672) b_and!6301 (not bm!10673) (not b!102038) (not b!102186) (not d!27603) (not b!101968) (not b_lambda!4589) (not b!101945) (not mapNonEmpty!3833) (not b!102285) (not b!102280) (not d!27571) (not mapNonEmpty!3834) (not b!102093) (not d!27639) (not b!102197) (not b!102152) (not d!27595) (not b!102201) (not b!102041) (not b!102128) (not b!101941) (not b!102206) (not b!102196) (not b_lambda!4599))
(check-sat b_and!6301 b_and!6303 (not b_next!2465) (not b_next!2467))

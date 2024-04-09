; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!11074 () Bool)

(assert start!11074)

(declare-fun b!90055 () Bool)

(declare-fun b_free!2285 () Bool)

(declare-fun b_next!2285 () Bool)

(assert (=> b!90055 (= b_free!2285 (not b_next!2285))))

(declare-fun tp!9102 () Bool)

(declare-fun b_and!5409 () Bool)

(assert (=> b!90055 (= tp!9102 b_and!5409)))

(declare-fun b!90048 () Bool)

(declare-fun b_free!2287 () Bool)

(declare-fun b_next!2287 () Bool)

(assert (=> b!90048 (= b_free!2287 (not b_next!2287))))

(declare-fun tp!9099 () Bool)

(declare-fun b_and!5411 () Bool)

(assert (=> b!90048 (= tp!9099 b_and!5411)))

(declare-fun b!90041 () Bool)

(declare-fun e!58650 () Bool)

(declare-fun tp_is_empty!2559 () Bool)

(assert (=> b!90041 (= e!58650 tp_is_empty!2559)))

(declare-fun b!90042 () Bool)

(declare-fun e!58643 () Bool)

(declare-fun e!58654 () Bool)

(assert (=> b!90042 (= e!58643 e!58654)))

(declare-fun b!90043 () Bool)

(declare-fun e!58658 () Bool)

(assert (=> b!90043 (= e!58658 tp_is_empty!2559)))

(declare-fun b!90044 () Bool)

(declare-fun e!58656 () Bool)

(declare-fun e!58657 () Bool)

(declare-fun mapRes!3492 () Bool)

(assert (=> b!90044 (= e!58656 (and e!58657 mapRes!3492))))

(declare-fun condMapEmpty!3491 () Bool)

(declare-datatypes ((V!3059 0))(
  ( (V!3060 (val!1324 Int)) )
))
(declare-datatypes ((array!4082 0))(
  ( (array!4083 (arr!1942 (Array (_ BitVec 32) (_ BitVec 64))) (size!2189 (_ BitVec 32))) )
))
(declare-datatypes ((ValueCell!936 0))(
  ( (ValueCellFull!936 (v!2694 V!3059)) (EmptyCell!936) )
))
(declare-datatypes ((array!4084 0))(
  ( (array!4085 (arr!1943 (Array (_ BitVec 32) ValueCell!936)) (size!2190 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!780 0))(
  ( (LongMapFixedSize!781 (defaultEntry!2388 Int) (mask!6440 (_ BitVec 32)) (extraKeys!2219 (_ BitVec 32)) (zeroValue!2276 V!3059) (minValue!2276 V!3059) (_size!439 (_ BitVec 32)) (_keys!4068 array!4082) (_values!2371 array!4084) (_vacant!439 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!586 0))(
  ( (Cell!587 (v!2695 LongMapFixedSize!780)) )
))
(declare-datatypes ((LongMap!586 0))(
  ( (LongMap!587 (underlying!304 Cell!586)) )
))
(declare-fun thiss!992 () LongMap!586)

(declare-fun mapDefault!3491 () ValueCell!936)

(assert (=> b!90044 (= condMapEmpty!3491 (= (arr!1943 (_values!2371 (v!2695 (underlying!304 thiss!992)))) ((as const (Array (_ BitVec 32) ValueCell!936)) mapDefault!3491)))))

(declare-fun b!90045 () Bool)

(declare-datatypes ((Unit!2698 0))(
  ( (Unit!2699) )
))
(declare-fun e!58653 () Unit!2698)

(declare-fun Unit!2700 () Unit!2698)

(assert (=> b!90045 (= e!58653 Unit!2700)))

(declare-fun lt!43359 () Unit!2698)

(declare-fun from!355 () (_ BitVec 32))

(declare-fun lemmaListMapContainsThenArrayContainsFrom!79 (array!4082 array!4084 (_ BitVec 32) (_ BitVec 32) V!3059 V!3059 (_ BitVec 64) (_ BitVec 32) Int) Unit!2698)

(assert (=> b!90045 (= lt!43359 (lemmaListMapContainsThenArrayContainsFrom!79 (_keys!4068 (v!2695 (underlying!304 thiss!992))) (_values!2371 (v!2695 (underlying!304 thiss!992))) (mask!6440 (v!2695 (underlying!304 thiss!992))) (extraKeys!2219 (v!2695 (underlying!304 thiss!992))) (zeroValue!2276 (v!2695 (underlying!304 thiss!992))) (minValue!2276 (v!2695 (underlying!304 thiss!992))) (select (arr!1942 (_keys!4068 (v!2695 (underlying!304 thiss!992)))) from!355) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2388 (v!2695 (underlying!304 thiss!992)))))))

(declare-fun arrayContainsKey!0 (array!4082 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!90045 (arrayContainsKey!0 (_keys!4068 (v!2695 (underlying!304 thiss!992))) (select (arr!1942 (_keys!4068 (v!2695 (underlying!304 thiss!992)))) from!355) (bvadd #b00000000000000000000000000000001 from!355))))

(declare-fun lt!43374 () Unit!2698)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!4082 (_ BitVec 32) (_ BitVec 32)) Unit!2698)

(assert (=> b!90045 (= lt!43374 (lemmaNoDuplicateFromThenFromBigger!0 (_keys!4068 (v!2695 (underlying!304 thiss!992))) #b00000000000000000000000000000000 from!355))))

(declare-datatypes ((List!1567 0))(
  ( (Nil!1564) (Cons!1563 (h!2155 (_ BitVec 64)) (t!5357 List!1567)) )
))
(declare-fun arrayNoDuplicates!0 (array!4082 (_ BitVec 32) List!1567) Bool)

(assert (=> b!90045 (arrayNoDuplicates!0 (_keys!4068 (v!2695 (underlying!304 thiss!992))) from!355 Nil!1564)))

(declare-fun lt!43367 () Unit!2698)

(declare-fun lemmaArrayNoDuplicateFromNotContainsKeysInAcc!0 (array!4082 (_ BitVec 32) (_ BitVec 64) List!1567) Unit!2698)

(assert (=> b!90045 (= lt!43367 (lemmaArrayNoDuplicateFromNotContainsKeysInAcc!0 (_keys!4068 (v!2695 (underlying!304 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (select (arr!1942 (_keys!4068 (v!2695 (underlying!304 thiss!992)))) from!355) (Cons!1563 (select (arr!1942 (_keys!4068 (v!2695 (underlying!304 thiss!992)))) from!355) Nil!1564)))))

(assert (=> b!90045 false))

(declare-fun b!90046 () Bool)

(assert (=> b!90046 (= e!58657 tp_is_empty!2559)))

(declare-fun b!90047 () Bool)

(declare-fun e!58648 () Bool)

(assert (=> b!90047 (= e!58648 tp_is_empty!2559)))

(declare-fun e!58659 () Bool)

(declare-fun newMap!16 () LongMapFixedSize!780)

(declare-fun e!58651 () Bool)

(declare-fun array_inv!1165 (array!4082) Bool)

(declare-fun array_inv!1166 (array!4084) Bool)

(assert (=> b!90048 (= e!58651 (and tp!9099 tp_is_empty!2559 (array_inv!1165 (_keys!4068 newMap!16)) (array_inv!1166 (_values!2371 newMap!16)) e!58659))))

(declare-fun b!90049 () Bool)

(declare-fun e!58655 () Bool)

(declare-fun e!58647 () Bool)

(assert (=> b!90049 (= e!58655 e!58647)))

(declare-fun res!45980 () Bool)

(assert (=> b!90049 (=> (not res!45980) (not e!58647))))

(assert (=> b!90049 (= res!45980 (and (not (= (select (arr!1942 (_keys!4068 (v!2695 (underlying!304 thiss!992)))) from!355) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!1942 (_keys!4068 (v!2695 (underlying!304 thiss!992)))) from!355) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun lt!43358 () V!3059)

(declare-fun get!1236 (ValueCell!936 V!3059) V!3059)

(declare-fun dynLambda!359 (Int (_ BitVec 64)) V!3059)

(assert (=> b!90049 (= lt!43358 (get!1236 (select (arr!1943 (_values!2371 (v!2695 (underlying!304 thiss!992)))) from!355) (dynLambda!359 (defaultEntry!2388 (v!2695 (underlying!304 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun mapIsEmpty!3491 () Bool)

(declare-fun mapRes!3491 () Bool)

(assert (=> mapIsEmpty!3491 mapRes!3491))

(declare-fun mapNonEmpty!3491 () Bool)

(declare-fun tp!9100 () Bool)

(assert (=> mapNonEmpty!3491 (= mapRes!3492 (and tp!9100 e!58650))))

(declare-fun mapKey!3492 () (_ BitVec 32))

(declare-fun mapValue!3491 () ValueCell!936)

(declare-fun mapRest!3491 () (Array (_ BitVec 32) ValueCell!936))

(assert (=> mapNonEmpty!3491 (= (arr!1943 (_values!2371 (v!2695 (underlying!304 thiss!992)))) (store mapRest!3491 mapKey!3492 mapValue!3491))))

(declare-fun b!90050 () Bool)

(declare-fun res!45983 () Bool)

(declare-fun e!58646 () Bool)

(assert (=> b!90050 (=> (not res!45983) (not e!58646))))

(assert (=> b!90050 (= res!45983 (bvsge (bvadd #b00000000000000000000000000000001 (mask!6440 newMap!16)) (_size!439 (v!2695 (underlying!304 thiss!992)))))))

(declare-fun mapIsEmpty!3492 () Bool)

(assert (=> mapIsEmpty!3492 mapRes!3492))

(declare-fun b!90051 () Bool)

(declare-fun res!45982 () Bool)

(assert (=> b!90051 (=> (not res!45982) (not e!58646))))

(declare-fun valid!343 (LongMapFixedSize!780) Bool)

(assert (=> b!90051 (= res!45982 (valid!343 newMap!16))))

(declare-fun b!90052 () Bool)

(declare-fun e!58652 () Bool)

(assert (=> b!90052 (= e!58654 e!58652)))

(declare-fun b!90053 () Bool)

(declare-fun e!58645 () Bool)

(declare-datatypes ((tuple2!2258 0))(
  ( (tuple2!2259 (_1!1139 Bool) (_2!1139 LongMapFixedSize!780)) )
))
(declare-fun lt!43361 () tuple2!2258)

(assert (=> b!90053 (= e!58645 (not (valid!343 (_2!1139 lt!43361))))))

(declare-datatypes ((tuple2!2260 0))(
  ( (tuple2!2261 (_1!1140 (_ BitVec 64)) (_2!1140 V!3059)) )
))
(declare-fun lt!43375 () tuple2!2260)

(declare-datatypes ((List!1568 0))(
  ( (Nil!1565) (Cons!1564 (h!2156 tuple2!2260) (t!5358 List!1568)) )
))
(declare-datatypes ((ListLongMap!1501 0))(
  ( (ListLongMap!1502 (toList!766 List!1568)) )
))
(declare-fun lt!43362 () ListLongMap!1501)

(declare-fun lt!43370 () tuple2!2260)

(declare-fun lt!43360 () ListLongMap!1501)

(declare-fun +!123 (ListLongMap!1501 tuple2!2260) ListLongMap!1501)

(assert (=> b!90053 (= (+!123 lt!43360 lt!43370) (+!123 (+!123 lt!43362 lt!43370) lt!43375))))

(assert (=> b!90053 (= lt!43370 (tuple2!2261 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2276 (v!2695 (underlying!304 thiss!992)))))))

(declare-fun lt!43371 () Unit!2698)

(declare-fun addCommutativeForDiffKeys!42 (ListLongMap!1501 (_ BitVec 64) V!3059 (_ BitVec 64) V!3059) Unit!2698)

(assert (=> b!90053 (= lt!43371 (addCommutativeForDiffKeys!42 lt!43362 (select (arr!1942 (_keys!4068 (v!2695 (underlying!304 thiss!992)))) from!355) lt!43358 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2276 (v!2695 (underlying!304 thiss!992)))))))

(declare-fun lt!43368 () ListLongMap!1501)

(assert (=> b!90053 (= lt!43368 lt!43360)))

(assert (=> b!90053 (= lt!43360 (+!123 lt!43362 lt!43375))))

(declare-fun lt!43366 () ListLongMap!1501)

(declare-fun lt!43365 () tuple2!2260)

(assert (=> b!90053 (= lt!43368 (+!123 lt!43366 lt!43365))))

(declare-fun lt!43369 () ListLongMap!1501)

(assert (=> b!90053 (= lt!43362 (+!123 lt!43369 lt!43365))))

(assert (=> b!90053 (= lt!43365 (tuple2!2261 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2276 (v!2695 (underlying!304 thiss!992)))))))

(assert (=> b!90053 (= lt!43366 (+!123 lt!43369 lt!43375))))

(assert (=> b!90053 (= lt!43375 (tuple2!2261 (select (arr!1942 (_keys!4068 (v!2695 (underlying!304 thiss!992)))) from!355) lt!43358))))

(declare-fun lt!43372 () Unit!2698)

(assert (=> b!90053 (= lt!43372 (addCommutativeForDiffKeys!42 lt!43369 (select (arr!1942 (_keys!4068 (v!2695 (underlying!304 thiss!992)))) from!355) lt!43358 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2276 (v!2695 (underlying!304 thiss!992)))))))

(declare-fun getCurrentListMapNoExtraKeys!87 (array!4082 array!4084 (_ BitVec 32) (_ BitVec 32) V!3059 V!3059 (_ BitVec 32) Int) ListLongMap!1501)

(assert (=> b!90053 (= lt!43369 (getCurrentListMapNoExtraKeys!87 (_keys!4068 (v!2695 (underlying!304 thiss!992))) (_values!2371 (v!2695 (underlying!304 thiss!992))) (mask!6440 (v!2695 (underlying!304 thiss!992))) (extraKeys!2219 (v!2695 (underlying!304 thiss!992))) (zeroValue!2276 (v!2695 (underlying!304 thiss!992))) (minValue!2276 (v!2695 (underlying!304 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2388 (v!2695 (underlying!304 thiss!992)))))))

(declare-fun b!90054 () Bool)

(assert (=> b!90054 (= e!58646 e!58655)))

(declare-fun res!45978 () Bool)

(assert (=> b!90054 (=> (not res!45978) (not e!58655))))

(declare-fun lt!43363 () ListLongMap!1501)

(declare-fun lt!43373 () ListLongMap!1501)

(assert (=> b!90054 (= res!45978 (= lt!43363 lt!43373))))

(declare-fun map!1208 (LongMapFixedSize!780) ListLongMap!1501)

(assert (=> b!90054 (= lt!43373 (map!1208 newMap!16))))

(declare-fun getCurrentListMap!448 (array!4082 array!4084 (_ BitVec 32) (_ BitVec 32) V!3059 V!3059 (_ BitVec 32) Int) ListLongMap!1501)

(assert (=> b!90054 (= lt!43363 (getCurrentListMap!448 (_keys!4068 (v!2695 (underlying!304 thiss!992))) (_values!2371 (v!2695 (underlying!304 thiss!992))) (mask!6440 (v!2695 (underlying!304 thiss!992))) (extraKeys!2219 (v!2695 (underlying!304 thiss!992))) (zeroValue!2276 (v!2695 (underlying!304 thiss!992))) (minValue!2276 (v!2695 (underlying!304 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2388 (v!2695 (underlying!304 thiss!992)))))))

(declare-fun mapNonEmpty!3492 () Bool)

(declare-fun tp!9101 () Bool)

(assert (=> mapNonEmpty!3492 (= mapRes!3491 (and tp!9101 e!58648))))

(declare-fun mapValue!3492 () ValueCell!936)

(declare-fun mapKey!3491 () (_ BitVec 32))

(declare-fun mapRest!3492 () (Array (_ BitVec 32) ValueCell!936))

(assert (=> mapNonEmpty!3492 (= (arr!1943 (_values!2371 newMap!16)) (store mapRest!3492 mapKey!3491 mapValue!3492))))

(declare-fun res!45984 () Bool)

(assert (=> start!11074 (=> (not res!45984) (not e!58646))))

(declare-fun valid!344 (LongMap!586) Bool)

(assert (=> start!11074 (= res!45984 (valid!344 thiss!992))))

(assert (=> start!11074 e!58646))

(assert (=> start!11074 e!58643))

(assert (=> start!11074 true))

(assert (=> start!11074 e!58651))

(assert (=> b!90055 (= e!58652 (and tp!9102 tp_is_empty!2559 (array_inv!1165 (_keys!4068 (v!2695 (underlying!304 thiss!992)))) (array_inv!1166 (_values!2371 (v!2695 (underlying!304 thiss!992)))) e!58656))))

(declare-fun b!90056 () Bool)

(declare-fun res!45981 () Bool)

(assert (=> b!90056 (=> (not res!45981) (not e!58646))))

(assert (=> b!90056 (= res!45981 (and (bvsge from!355 #b00000000000000000000000000000000) (bvslt from!355 (size!2189 (_keys!4068 (v!2695 (underlying!304 thiss!992)))))))))

(declare-fun b!90057 () Bool)

(declare-fun Unit!2701 () Unit!2698)

(assert (=> b!90057 (= e!58653 Unit!2701)))

(declare-fun b!90058 () Bool)

(assert (=> b!90058 (= e!58659 (and e!58658 mapRes!3491))))

(declare-fun condMapEmpty!3492 () Bool)

(declare-fun mapDefault!3492 () ValueCell!936)

(assert (=> b!90058 (= condMapEmpty!3492 (= (arr!1943 (_values!2371 newMap!16)) ((as const (Array (_ BitVec 32) ValueCell!936)) mapDefault!3492)))))

(declare-fun b!90059 () Bool)

(assert (=> b!90059 (= e!58647 e!58645)))

(declare-fun res!45979 () Bool)

(assert (=> b!90059 (=> (not res!45979) (not e!58645))))

(assert (=> b!90059 (= res!45979 (and (_1!1139 lt!43361) (bvsgt from!355 #b00000000000000000000000000000000)))))

(declare-fun lt!43364 () Unit!2698)

(assert (=> b!90059 (= lt!43364 e!58653)))

(declare-fun c!14965 () Bool)

(declare-fun contains!773 (ListLongMap!1501 (_ BitVec 64)) Bool)

(assert (=> b!90059 (= c!14965 (contains!773 lt!43373 (select (arr!1942 (_keys!4068 (v!2695 (underlying!304 thiss!992)))) from!355)))))

(declare-fun update!127 (LongMapFixedSize!780 (_ BitVec 64) V!3059) tuple2!2258)

(assert (=> b!90059 (= lt!43361 (update!127 newMap!16 (select (arr!1942 (_keys!4068 (v!2695 (underlying!304 thiss!992)))) from!355) lt!43358))))

(assert (= (and start!11074 res!45984) b!90056))

(assert (= (and b!90056 res!45981) b!90051))

(assert (= (and b!90051 res!45982) b!90050))

(assert (= (and b!90050 res!45983) b!90054))

(assert (= (and b!90054 res!45978) b!90049))

(assert (= (and b!90049 res!45980) b!90059))

(assert (= (and b!90059 c!14965) b!90045))

(assert (= (and b!90059 (not c!14965)) b!90057))

(assert (= (and b!90059 res!45979) b!90053))

(assert (= (and b!90044 condMapEmpty!3491) mapIsEmpty!3492))

(assert (= (and b!90044 (not condMapEmpty!3491)) mapNonEmpty!3491))

(get-info :version)

(assert (= (and mapNonEmpty!3491 ((_ is ValueCellFull!936) mapValue!3491)) b!90041))

(assert (= (and b!90044 ((_ is ValueCellFull!936) mapDefault!3491)) b!90046))

(assert (= b!90055 b!90044))

(assert (= b!90052 b!90055))

(assert (= b!90042 b!90052))

(assert (= start!11074 b!90042))

(assert (= (and b!90058 condMapEmpty!3492) mapIsEmpty!3491))

(assert (= (and b!90058 (not condMapEmpty!3492)) mapNonEmpty!3492))

(assert (= (and mapNonEmpty!3492 ((_ is ValueCellFull!936) mapValue!3492)) b!90047))

(assert (= (and b!90058 ((_ is ValueCellFull!936) mapDefault!3492)) b!90043))

(assert (= b!90048 b!90058))

(assert (= start!11074 b!90048))

(declare-fun b_lambda!3979 () Bool)

(assert (=> (not b_lambda!3979) (not b!90049)))

(declare-fun t!5354 () Bool)

(declare-fun tb!1757 () Bool)

(assert (=> (and b!90055 (= (defaultEntry!2388 (v!2695 (underlying!304 thiss!992))) (defaultEntry!2388 (v!2695 (underlying!304 thiss!992)))) t!5354) tb!1757))

(declare-fun result!3011 () Bool)

(assert (=> tb!1757 (= result!3011 tp_is_empty!2559)))

(assert (=> b!90049 t!5354))

(declare-fun b_and!5413 () Bool)

(assert (= b_and!5409 (and (=> t!5354 result!3011) b_and!5413)))

(declare-fun tb!1759 () Bool)

(declare-fun t!5356 () Bool)

(assert (=> (and b!90048 (= (defaultEntry!2388 newMap!16) (defaultEntry!2388 (v!2695 (underlying!304 thiss!992)))) t!5356) tb!1759))

(declare-fun result!3015 () Bool)

(assert (= result!3015 result!3011))

(assert (=> b!90049 t!5356))

(declare-fun b_and!5415 () Bool)

(assert (= b_and!5411 (and (=> t!5356 result!3015) b_and!5415)))

(declare-fun m!96495 () Bool)

(assert (=> mapNonEmpty!3492 m!96495))

(declare-fun m!96497 () Bool)

(assert (=> b!90045 m!96497))

(declare-fun m!96499 () Bool)

(assert (=> b!90045 m!96499))

(declare-fun m!96501 () Bool)

(assert (=> b!90045 m!96501))

(declare-fun m!96503 () Bool)

(assert (=> b!90045 m!96503))

(assert (=> b!90045 m!96501))

(assert (=> b!90045 m!96501))

(declare-fun m!96505 () Bool)

(assert (=> b!90045 m!96505))

(assert (=> b!90045 m!96501))

(declare-fun m!96507 () Bool)

(assert (=> b!90045 m!96507))

(assert (=> b!90059 m!96501))

(assert (=> b!90059 m!96501))

(declare-fun m!96509 () Bool)

(assert (=> b!90059 m!96509))

(assert (=> b!90059 m!96501))

(declare-fun m!96511 () Bool)

(assert (=> b!90059 m!96511))

(declare-fun m!96513 () Bool)

(assert (=> mapNonEmpty!3491 m!96513))

(declare-fun m!96515 () Bool)

(assert (=> b!90055 m!96515))

(declare-fun m!96517 () Bool)

(assert (=> b!90055 m!96517))

(declare-fun m!96519 () Bool)

(assert (=> b!90048 m!96519))

(declare-fun m!96521 () Bool)

(assert (=> b!90048 m!96521))

(assert (=> b!90049 m!96501))

(declare-fun m!96523 () Bool)

(assert (=> b!90049 m!96523))

(declare-fun m!96525 () Bool)

(assert (=> b!90049 m!96525))

(assert (=> b!90049 m!96523))

(assert (=> b!90049 m!96525))

(declare-fun m!96527 () Bool)

(assert (=> b!90049 m!96527))

(declare-fun m!96529 () Bool)

(assert (=> b!90054 m!96529))

(declare-fun m!96531 () Bool)

(assert (=> b!90054 m!96531))

(declare-fun m!96533 () Bool)

(assert (=> b!90051 m!96533))

(declare-fun m!96535 () Bool)

(assert (=> start!11074 m!96535))

(declare-fun m!96537 () Bool)

(assert (=> b!90053 m!96537))

(declare-fun m!96539 () Bool)

(assert (=> b!90053 m!96539))

(declare-fun m!96541 () Bool)

(assert (=> b!90053 m!96541))

(declare-fun m!96543 () Bool)

(assert (=> b!90053 m!96543))

(assert (=> b!90053 m!96501))

(declare-fun m!96545 () Bool)

(assert (=> b!90053 m!96545))

(declare-fun m!96547 () Bool)

(assert (=> b!90053 m!96547))

(declare-fun m!96549 () Bool)

(assert (=> b!90053 m!96549))

(declare-fun m!96551 () Bool)

(assert (=> b!90053 m!96551))

(assert (=> b!90053 m!96501))

(declare-fun m!96553 () Bool)

(assert (=> b!90053 m!96553))

(assert (=> b!90053 m!96539))

(assert (=> b!90053 m!96501))

(declare-fun m!96555 () Bool)

(assert (=> b!90053 m!96555))

(declare-fun m!96557 () Bool)

(assert (=> b!90053 m!96557))

(check-sat (not b!90054) (not b_next!2287) (not mapNonEmpty!3491) (not b_next!2285) (not b!90048) (not b!90059) (not b!90049) b_and!5413 (not b!90045) tp_is_empty!2559 (not start!11074) (not b!90051) (not b_lambda!3979) (not b!90055) b_and!5415 (not b!90053) (not mapNonEmpty!3492))
(check-sat b_and!5413 b_and!5415 (not b_next!2285) (not b_next!2287))
(get-model)

(declare-fun b_lambda!3983 () Bool)

(assert (= b_lambda!3979 (or (and b!90055 b_free!2285) (and b!90048 b_free!2287 (= (defaultEntry!2388 newMap!16) (defaultEntry!2388 (v!2695 (underlying!304 thiss!992))))) b_lambda!3983)))

(check-sat (not b!90054) (not b_next!2287) (not mapNonEmpty!3491) (not b_next!2285) (not b!90048) (not b!90059) (not b!90049) (not b!90045) tp_is_empty!2559 (not start!11074) (not b!90051) (not b!90055) b_and!5415 (not b!90053) (not mapNonEmpty!3492) b_and!5413 (not b_lambda!3983))
(check-sat b_and!5413 b_and!5415 (not b_next!2285) (not b_next!2287))
(get-model)

(declare-fun d!23929 () Bool)

(declare-fun res!46012 () Bool)

(declare-fun e!58713 () Bool)

(assert (=> d!23929 (=> (not res!46012) (not e!58713))))

(declare-fun simpleValid!60 (LongMapFixedSize!780) Bool)

(assert (=> d!23929 (= res!46012 (simpleValid!60 newMap!16))))

(assert (=> d!23929 (= (valid!343 newMap!16) e!58713)))

(declare-fun b!90127 () Bool)

(declare-fun res!46013 () Bool)

(assert (=> b!90127 (=> (not res!46013) (not e!58713))))

(declare-fun arrayCountValidKeys!0 (array!4082 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!90127 (= res!46013 (= (arrayCountValidKeys!0 (_keys!4068 newMap!16) #b00000000000000000000000000000000 (size!2189 (_keys!4068 newMap!16))) (_size!439 newMap!16)))))

(declare-fun b!90128 () Bool)

(declare-fun res!46014 () Bool)

(assert (=> b!90128 (=> (not res!46014) (not e!58713))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!4082 (_ BitVec 32)) Bool)

(assert (=> b!90128 (= res!46014 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!4068 newMap!16) (mask!6440 newMap!16)))))

(declare-fun b!90129 () Bool)

(assert (=> b!90129 (= e!58713 (arrayNoDuplicates!0 (_keys!4068 newMap!16) #b00000000000000000000000000000000 Nil!1564))))

(assert (= (and d!23929 res!46012) b!90127))

(assert (= (and b!90127 res!46013) b!90128))

(assert (= (and b!90128 res!46014) b!90129))

(declare-fun m!96623 () Bool)

(assert (=> d!23929 m!96623))

(declare-fun m!96625 () Bool)

(assert (=> b!90127 m!96625))

(declare-fun m!96627 () Bool)

(assert (=> b!90128 m!96627))

(declare-fun m!96629 () Bool)

(assert (=> b!90129 m!96629))

(assert (=> b!90051 d!23929))

(declare-fun d!23931 () Bool)

(declare-fun c!14971 () Bool)

(assert (=> d!23931 (= c!14971 ((_ is ValueCellFull!936) (select (arr!1943 (_values!2371 (v!2695 (underlying!304 thiss!992)))) from!355)))))

(declare-fun e!58716 () V!3059)

(assert (=> d!23931 (= (get!1236 (select (arr!1943 (_values!2371 (v!2695 (underlying!304 thiss!992)))) from!355) (dynLambda!359 (defaultEntry!2388 (v!2695 (underlying!304 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) e!58716)))

(declare-fun b!90134 () Bool)

(declare-fun get!1237 (ValueCell!936 V!3059) V!3059)

(assert (=> b!90134 (= e!58716 (get!1237 (select (arr!1943 (_values!2371 (v!2695 (underlying!304 thiss!992)))) from!355) (dynLambda!359 (defaultEntry!2388 (v!2695 (underlying!304 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!90135 () Bool)

(declare-fun get!1238 (ValueCell!936 V!3059) V!3059)

(assert (=> b!90135 (= e!58716 (get!1238 (select (arr!1943 (_values!2371 (v!2695 (underlying!304 thiss!992)))) from!355) (dynLambda!359 (defaultEntry!2388 (v!2695 (underlying!304 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!23931 c!14971) b!90134))

(assert (= (and d!23931 (not c!14971)) b!90135))

(assert (=> b!90134 m!96523))

(assert (=> b!90134 m!96525))

(declare-fun m!96631 () Bool)

(assert (=> b!90134 m!96631))

(assert (=> b!90135 m!96523))

(assert (=> b!90135 m!96525))

(declare-fun m!96633 () Bool)

(assert (=> b!90135 m!96633))

(assert (=> b!90049 d!23931))

(declare-fun d!23933 () Bool)

(assert (=> d!23933 (= (valid!344 thiss!992) (valid!343 (v!2695 (underlying!304 thiss!992))))))

(declare-fun bs!3760 () Bool)

(assert (= bs!3760 d!23933))

(declare-fun m!96635 () Bool)

(assert (=> bs!3760 m!96635))

(assert (=> start!11074 d!23933))

(declare-fun d!23935 () Bool)

(assert (=> d!23935 (= (array_inv!1165 (_keys!4068 newMap!16)) (bvsge (size!2189 (_keys!4068 newMap!16)) #b00000000000000000000000000000000))))

(assert (=> b!90048 d!23935))

(declare-fun d!23937 () Bool)

(assert (=> d!23937 (= (array_inv!1166 (_values!2371 newMap!16)) (bvsge (size!2190 (_values!2371 newMap!16)) #b00000000000000000000000000000000))))

(assert (=> b!90048 d!23937))

(declare-fun d!23939 () Bool)

(assert (=> d!23939 (= (array_inv!1165 (_keys!4068 (v!2695 (underlying!304 thiss!992)))) (bvsge (size!2189 (_keys!4068 (v!2695 (underlying!304 thiss!992)))) #b00000000000000000000000000000000))))

(assert (=> b!90055 d!23939))

(declare-fun d!23941 () Bool)

(assert (=> d!23941 (= (array_inv!1166 (_values!2371 (v!2695 (underlying!304 thiss!992)))) (bvsge (size!2190 (_values!2371 (v!2695 (underlying!304 thiss!992)))) #b00000000000000000000000000000000))))

(assert (=> b!90055 d!23941))

(declare-fun d!23943 () Bool)

(assert (=> d!23943 (= (map!1208 newMap!16) (getCurrentListMap!448 (_keys!4068 newMap!16) (_values!2371 newMap!16) (mask!6440 newMap!16) (extraKeys!2219 newMap!16) (zeroValue!2276 newMap!16) (minValue!2276 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2388 newMap!16)))))

(declare-fun bs!3761 () Bool)

(assert (= bs!3761 d!23943))

(declare-fun m!96637 () Bool)

(assert (=> bs!3761 m!96637))

(assert (=> b!90054 d!23943))

(declare-fun b!90178 () Bool)

(declare-fun e!58749 () Bool)

(declare-fun e!58745 () Bool)

(assert (=> b!90178 (= e!58749 e!58745)))

(declare-fun c!14989 () Bool)

(assert (=> b!90178 (= c!14989 (not (= (bvand (extraKeys!2219 (v!2695 (underlying!304 thiss!992))) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!90179 () Bool)

(declare-fun e!58753 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!90179 (= e!58753 (validKeyInArray!0 (select (arr!1942 (_keys!4068 (v!2695 (underlying!304 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))))))

(declare-fun b!90180 () Bool)

(declare-fun e!58748 () Bool)

(declare-fun call!8729 () Bool)

(assert (=> b!90180 (= e!58748 (not call!8729))))

(declare-fun b!90181 () Bool)

(declare-fun call!8730 () Bool)

(assert (=> b!90181 (= e!58745 (not call!8730))))

(declare-fun bm!8726 () Bool)

(declare-fun lt!43493 () ListLongMap!1501)

(assert (=> bm!8726 (= call!8729 (contains!773 lt!43493 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun call!8732 () ListLongMap!1501)

(declare-fun call!8731 () ListLongMap!1501)

(declare-fun call!8734 () ListLongMap!1501)

(declare-fun call!8735 () ListLongMap!1501)

(declare-fun c!14984 () Bool)

(declare-fun bm!8727 () Bool)

(declare-fun c!14985 () Bool)

(assert (=> bm!8727 (= call!8735 (+!123 (ite c!14985 call!8732 (ite c!14984 call!8731 call!8734)) (ite (or c!14985 c!14984) (tuple2!2261 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2276 (v!2695 (underlying!304 thiss!992)))) (tuple2!2261 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2276 (v!2695 (underlying!304 thiss!992)))))))))

(declare-fun bm!8728 () Bool)

(assert (=> bm!8728 (= call!8731 call!8732)))

(declare-fun d!23945 () Bool)

(assert (=> d!23945 e!58749))

(declare-fun res!46039 () Bool)

(assert (=> d!23945 (=> (not res!46039) (not e!58749))))

(assert (=> d!23945 (= res!46039 (or (bvsge (bvadd #b00000000000000000000000000000001 from!355) (size!2189 (_keys!4068 (v!2695 (underlying!304 thiss!992))))) (and (bvsge (bvadd #b00000000000000000000000000000001 from!355) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!355) (size!2189 (_keys!4068 (v!2695 (underlying!304 thiss!992))))))))))

(declare-fun lt!43475 () ListLongMap!1501)

(assert (=> d!23945 (= lt!43493 lt!43475)))

(declare-fun lt!43485 () Unit!2698)

(declare-fun e!58743 () Unit!2698)

(assert (=> d!23945 (= lt!43485 e!58743)))

(declare-fun c!14987 () Bool)

(declare-fun e!58754 () Bool)

(assert (=> d!23945 (= c!14987 e!58754)))

(declare-fun res!46035 () Bool)

(assert (=> d!23945 (=> (not res!46035) (not e!58754))))

(assert (=> d!23945 (= res!46035 (bvslt (bvadd #b00000000000000000000000000000001 from!355) (size!2189 (_keys!4068 (v!2695 (underlying!304 thiss!992))))))))

(declare-fun e!58752 () ListLongMap!1501)

(assert (=> d!23945 (= lt!43475 e!58752)))

(assert (=> d!23945 (= c!14985 (and (not (= (bvand (extraKeys!2219 (v!2695 (underlying!304 thiss!992))) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (extraKeys!2219 (v!2695 (underlying!304 thiss!992))) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> d!23945 (validMask!0 (mask!6440 (v!2695 (underlying!304 thiss!992))))))

(assert (=> d!23945 (= (getCurrentListMap!448 (_keys!4068 (v!2695 (underlying!304 thiss!992))) (_values!2371 (v!2695 (underlying!304 thiss!992))) (mask!6440 (v!2695 (underlying!304 thiss!992))) (extraKeys!2219 (v!2695 (underlying!304 thiss!992))) (zeroValue!2276 (v!2695 (underlying!304 thiss!992))) (minValue!2276 (v!2695 (underlying!304 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2388 (v!2695 (underlying!304 thiss!992)))) lt!43493)))

(declare-fun bm!8729 () Bool)

(assert (=> bm!8729 (= call!8734 call!8731)))

(declare-fun b!90182 () Bool)

(declare-fun e!58750 () ListLongMap!1501)

(declare-fun call!8733 () ListLongMap!1501)

(assert (=> b!90182 (= e!58750 call!8733)))

(declare-fun b!90183 () Bool)

(declare-fun Unit!2702 () Unit!2698)

(assert (=> b!90183 (= e!58743 Unit!2702)))

(declare-fun bm!8730 () Bool)

(assert (=> bm!8730 (= call!8733 call!8735)))

(declare-fun bm!8731 () Bool)

(assert (=> bm!8731 (= call!8732 (getCurrentListMapNoExtraKeys!87 (_keys!4068 (v!2695 (underlying!304 thiss!992))) (_values!2371 (v!2695 (underlying!304 thiss!992))) (mask!6440 (v!2695 (underlying!304 thiss!992))) (extraKeys!2219 (v!2695 (underlying!304 thiss!992))) (zeroValue!2276 (v!2695 (underlying!304 thiss!992))) (minValue!2276 (v!2695 (underlying!304 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2388 (v!2695 (underlying!304 thiss!992)))))))

(declare-fun b!90184 () Bool)

(declare-fun res!46041 () Bool)

(assert (=> b!90184 (=> (not res!46041) (not e!58749))))

(declare-fun e!58746 () Bool)

(assert (=> b!90184 (= res!46041 e!58746)))

(declare-fun res!46034 () Bool)

(assert (=> b!90184 (=> res!46034 e!58746)))

(assert (=> b!90184 (= res!46034 (not e!58753))))

(declare-fun res!46038 () Bool)

(assert (=> b!90184 (=> (not res!46038) (not e!58753))))

(assert (=> b!90184 (= res!46038 (bvslt (bvadd #b00000000000000000000000000000001 from!355) (size!2189 (_keys!4068 (v!2695 (underlying!304 thiss!992))))))))

(declare-fun b!90185 () Bool)

(declare-fun e!58755 () Bool)

(assert (=> b!90185 (= e!58746 e!58755)))

(declare-fun res!46037 () Bool)

(assert (=> b!90185 (=> (not res!46037) (not e!58755))))

(assert (=> b!90185 (= res!46037 (contains!773 lt!43493 (select (arr!1942 (_keys!4068 (v!2695 (underlying!304 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))))))

(assert (=> b!90185 (and (bvsge (bvadd #b00000000000000000000000000000001 from!355) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!355) (size!2189 (_keys!4068 (v!2695 (underlying!304 thiss!992))))))))

(declare-fun b!90186 () Bool)

(declare-fun e!58751 () Bool)

(assert (=> b!90186 (= e!58745 e!58751)))

(declare-fun res!46036 () Bool)

(assert (=> b!90186 (= res!46036 call!8730)))

(assert (=> b!90186 (=> (not res!46036) (not e!58751))))

(declare-fun b!90187 () Bool)

(declare-fun apply!85 (ListLongMap!1501 (_ BitVec 64)) V!3059)

(assert (=> b!90187 (= e!58755 (= (apply!85 lt!43493 (select (arr!1942 (_keys!4068 (v!2695 (underlying!304 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))) (get!1236 (select (arr!1943 (_values!2371 (v!2695 (underlying!304 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (dynLambda!359 (defaultEntry!2388 (v!2695 (underlying!304 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!90187 (and (bvsge (bvadd #b00000000000000000000000000000001 from!355) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!355) (size!2190 (_values!2371 (v!2695 (underlying!304 thiss!992))))))))

(assert (=> b!90187 (and (bvsge (bvadd #b00000000000000000000000000000001 from!355) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!355) (size!2189 (_keys!4068 (v!2695 (underlying!304 thiss!992))))))))

(declare-fun b!90188 () Bool)

(assert (=> b!90188 (= e!58751 (= (apply!85 lt!43493 #b1000000000000000000000000000000000000000000000000000000000000000) (minValue!2276 (v!2695 (underlying!304 thiss!992)))))))

(declare-fun b!90189 () Bool)

(declare-fun e!58747 () ListLongMap!1501)

(assert (=> b!90189 (= e!58747 call!8734)))

(declare-fun b!90190 () Bool)

(declare-fun res!46033 () Bool)

(assert (=> b!90190 (=> (not res!46033) (not e!58749))))

(assert (=> b!90190 (= res!46033 e!58748)))

(declare-fun c!14988 () Bool)

(assert (=> b!90190 (= c!14988 (not (= (bvand (extraKeys!2219 (v!2695 (underlying!304 thiss!992))) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!90191 () Bool)

(declare-fun e!58744 () Bool)

(assert (=> b!90191 (= e!58744 (= (apply!85 lt!43493 #b0000000000000000000000000000000000000000000000000000000000000000) (zeroValue!2276 (v!2695 (underlying!304 thiss!992)))))))

(declare-fun b!90192 () Bool)

(assert (=> b!90192 (= e!58754 (validKeyInArray!0 (select (arr!1942 (_keys!4068 (v!2695 (underlying!304 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))))))

(declare-fun b!90193 () Bool)

(assert (=> b!90193 (= e!58752 (+!123 call!8735 (tuple2!2261 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2276 (v!2695 (underlying!304 thiss!992))))))))

(declare-fun b!90194 () Bool)

(assert (=> b!90194 (= e!58752 e!58750)))

(assert (=> b!90194 (= c!14984 (and (not (= (bvand (extraKeys!2219 (v!2695 (underlying!304 thiss!992))) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand (extraKeys!2219 (v!2695 (underlying!304 thiss!992))) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!90195 () Bool)

(assert (=> b!90195 (= e!58748 e!58744)))

(declare-fun res!46040 () Bool)

(assert (=> b!90195 (= res!46040 call!8729)))

(assert (=> b!90195 (=> (not res!46040) (not e!58744))))

(declare-fun b!90196 () Bool)

(declare-fun c!14986 () Bool)

(assert (=> b!90196 (= c!14986 (and (not (= (bvand (extraKeys!2219 (v!2695 (underlying!304 thiss!992))) #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand (extraKeys!2219 (v!2695 (underlying!304 thiss!992))) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!90196 (= e!58750 e!58747)))

(declare-fun bm!8732 () Bool)

(assert (=> bm!8732 (= call!8730 (contains!773 lt!43493 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!90197 () Bool)

(assert (=> b!90197 (= e!58747 call!8733)))

(declare-fun b!90198 () Bool)

(declare-fun lt!43478 () Unit!2698)

(assert (=> b!90198 (= e!58743 lt!43478)))

(declare-fun lt!43484 () ListLongMap!1501)

(assert (=> b!90198 (= lt!43484 (getCurrentListMapNoExtraKeys!87 (_keys!4068 (v!2695 (underlying!304 thiss!992))) (_values!2371 (v!2695 (underlying!304 thiss!992))) (mask!6440 (v!2695 (underlying!304 thiss!992))) (extraKeys!2219 (v!2695 (underlying!304 thiss!992))) (zeroValue!2276 (v!2695 (underlying!304 thiss!992))) (minValue!2276 (v!2695 (underlying!304 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2388 (v!2695 (underlying!304 thiss!992)))))))

(declare-fun lt!43481 () (_ BitVec 64))

(assert (=> b!90198 (= lt!43481 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!43494 () (_ BitVec 64))

(assert (=> b!90198 (= lt!43494 (select (arr!1942 (_keys!4068 (v!2695 (underlying!304 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)))))

(declare-fun lt!43480 () Unit!2698)

(declare-fun addStillContains!61 (ListLongMap!1501 (_ BitVec 64) V!3059 (_ BitVec 64)) Unit!2698)

(assert (=> b!90198 (= lt!43480 (addStillContains!61 lt!43484 lt!43481 (zeroValue!2276 (v!2695 (underlying!304 thiss!992))) lt!43494))))

(assert (=> b!90198 (contains!773 (+!123 lt!43484 (tuple2!2261 lt!43481 (zeroValue!2276 (v!2695 (underlying!304 thiss!992))))) lt!43494)))

(declare-fun lt!43487 () Unit!2698)

(assert (=> b!90198 (= lt!43487 lt!43480)))

(declare-fun lt!43477 () ListLongMap!1501)

(assert (=> b!90198 (= lt!43477 (getCurrentListMapNoExtraKeys!87 (_keys!4068 (v!2695 (underlying!304 thiss!992))) (_values!2371 (v!2695 (underlying!304 thiss!992))) (mask!6440 (v!2695 (underlying!304 thiss!992))) (extraKeys!2219 (v!2695 (underlying!304 thiss!992))) (zeroValue!2276 (v!2695 (underlying!304 thiss!992))) (minValue!2276 (v!2695 (underlying!304 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2388 (v!2695 (underlying!304 thiss!992)))))))

(declare-fun lt!43486 () (_ BitVec 64))

(assert (=> b!90198 (= lt!43486 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!43479 () (_ BitVec 64))

(assert (=> b!90198 (= lt!43479 (select (arr!1942 (_keys!4068 (v!2695 (underlying!304 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)))))

(declare-fun lt!43490 () Unit!2698)

(declare-fun addApplyDifferent!61 (ListLongMap!1501 (_ BitVec 64) V!3059 (_ BitVec 64)) Unit!2698)

(assert (=> b!90198 (= lt!43490 (addApplyDifferent!61 lt!43477 lt!43486 (minValue!2276 (v!2695 (underlying!304 thiss!992))) lt!43479))))

(assert (=> b!90198 (= (apply!85 (+!123 lt!43477 (tuple2!2261 lt!43486 (minValue!2276 (v!2695 (underlying!304 thiss!992))))) lt!43479) (apply!85 lt!43477 lt!43479))))

(declare-fun lt!43483 () Unit!2698)

(assert (=> b!90198 (= lt!43483 lt!43490)))

(declare-fun lt!43491 () ListLongMap!1501)

(assert (=> b!90198 (= lt!43491 (getCurrentListMapNoExtraKeys!87 (_keys!4068 (v!2695 (underlying!304 thiss!992))) (_values!2371 (v!2695 (underlying!304 thiss!992))) (mask!6440 (v!2695 (underlying!304 thiss!992))) (extraKeys!2219 (v!2695 (underlying!304 thiss!992))) (zeroValue!2276 (v!2695 (underlying!304 thiss!992))) (minValue!2276 (v!2695 (underlying!304 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2388 (v!2695 (underlying!304 thiss!992)))))))

(declare-fun lt!43482 () (_ BitVec 64))

(assert (=> b!90198 (= lt!43482 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!43488 () (_ BitVec 64))

(assert (=> b!90198 (= lt!43488 (select (arr!1942 (_keys!4068 (v!2695 (underlying!304 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)))))

(declare-fun lt!43492 () Unit!2698)

(assert (=> b!90198 (= lt!43492 (addApplyDifferent!61 lt!43491 lt!43482 (zeroValue!2276 (v!2695 (underlying!304 thiss!992))) lt!43488))))

(assert (=> b!90198 (= (apply!85 (+!123 lt!43491 (tuple2!2261 lt!43482 (zeroValue!2276 (v!2695 (underlying!304 thiss!992))))) lt!43488) (apply!85 lt!43491 lt!43488))))

(declare-fun lt!43495 () Unit!2698)

(assert (=> b!90198 (= lt!43495 lt!43492)))

(declare-fun lt!43474 () ListLongMap!1501)

(assert (=> b!90198 (= lt!43474 (getCurrentListMapNoExtraKeys!87 (_keys!4068 (v!2695 (underlying!304 thiss!992))) (_values!2371 (v!2695 (underlying!304 thiss!992))) (mask!6440 (v!2695 (underlying!304 thiss!992))) (extraKeys!2219 (v!2695 (underlying!304 thiss!992))) (zeroValue!2276 (v!2695 (underlying!304 thiss!992))) (minValue!2276 (v!2695 (underlying!304 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2388 (v!2695 (underlying!304 thiss!992)))))))

(declare-fun lt!43476 () (_ BitVec 64))

(assert (=> b!90198 (= lt!43476 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!43489 () (_ BitVec 64))

(assert (=> b!90198 (= lt!43489 (select (arr!1942 (_keys!4068 (v!2695 (underlying!304 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)))))

(assert (=> b!90198 (= lt!43478 (addApplyDifferent!61 lt!43474 lt!43476 (minValue!2276 (v!2695 (underlying!304 thiss!992))) lt!43489))))

(assert (=> b!90198 (= (apply!85 (+!123 lt!43474 (tuple2!2261 lt!43476 (minValue!2276 (v!2695 (underlying!304 thiss!992))))) lt!43489) (apply!85 lt!43474 lt!43489))))

(assert (= (and d!23945 c!14985) b!90193))

(assert (= (and d!23945 (not c!14985)) b!90194))

(assert (= (and b!90194 c!14984) b!90182))

(assert (= (and b!90194 (not c!14984)) b!90196))

(assert (= (and b!90196 c!14986) b!90197))

(assert (= (and b!90196 (not c!14986)) b!90189))

(assert (= (or b!90197 b!90189) bm!8729))

(assert (= (or b!90182 bm!8729) bm!8728))

(assert (= (or b!90182 b!90197) bm!8730))

(assert (= (or b!90193 bm!8728) bm!8731))

(assert (= (or b!90193 bm!8730) bm!8727))

(assert (= (and d!23945 res!46035) b!90192))

(assert (= (and d!23945 c!14987) b!90198))

(assert (= (and d!23945 (not c!14987)) b!90183))

(assert (= (and d!23945 res!46039) b!90184))

(assert (= (and b!90184 res!46038) b!90179))

(assert (= (and b!90184 (not res!46034)) b!90185))

(assert (= (and b!90185 res!46037) b!90187))

(assert (= (and b!90184 res!46041) b!90190))

(assert (= (and b!90190 c!14988) b!90195))

(assert (= (and b!90190 (not c!14988)) b!90180))

(assert (= (and b!90195 res!46040) b!90191))

(assert (= (or b!90195 b!90180) bm!8726))

(assert (= (and b!90190 res!46033) b!90178))

(assert (= (and b!90178 c!14989) b!90186))

(assert (= (and b!90178 (not c!14989)) b!90181))

(assert (= (and b!90186 res!46036) b!90188))

(assert (= (or b!90186 b!90181) bm!8732))

(declare-fun b_lambda!3985 () Bool)

(assert (=> (not b_lambda!3985) (not b!90187)))

(assert (=> b!90187 t!5354))

(declare-fun b_and!5425 () Bool)

(assert (= b_and!5413 (and (=> t!5354 result!3011) b_and!5425)))

(assert (=> b!90187 t!5356))

(declare-fun b_and!5427 () Bool)

(assert (= b_and!5415 (and (=> t!5356 result!3015) b_and!5427)))

(declare-fun m!96639 () Bool)

(assert (=> b!90188 m!96639))

(declare-fun m!96641 () Bool)

(assert (=> b!90192 m!96641))

(assert (=> b!90192 m!96641))

(declare-fun m!96643 () Bool)

(assert (=> b!90192 m!96643))

(declare-fun m!96645 () Bool)

(assert (=> b!90191 m!96645))

(declare-fun m!96647 () Bool)

(assert (=> bm!8726 m!96647))

(declare-fun m!96649 () Bool)

(assert (=> d!23945 m!96649))

(assert (=> bm!8731 m!96557))

(declare-fun m!96651 () Bool)

(assert (=> bm!8727 m!96651))

(assert (=> b!90185 m!96641))

(assert (=> b!90185 m!96641))

(declare-fun m!96653 () Bool)

(assert (=> b!90185 m!96653))

(declare-fun m!96655 () Bool)

(assert (=> b!90193 m!96655))

(declare-fun m!96657 () Bool)

(assert (=> bm!8732 m!96657))

(assert (=> b!90187 m!96525))

(declare-fun m!96659 () Bool)

(assert (=> b!90187 m!96659))

(assert (=> b!90187 m!96525))

(declare-fun m!96661 () Bool)

(assert (=> b!90187 m!96661))

(assert (=> b!90187 m!96641))

(declare-fun m!96663 () Bool)

(assert (=> b!90187 m!96663))

(assert (=> b!90187 m!96659))

(assert (=> b!90187 m!96641))

(declare-fun m!96665 () Bool)

(assert (=> b!90198 m!96665))

(declare-fun m!96667 () Bool)

(assert (=> b!90198 m!96667))

(declare-fun m!96669 () Bool)

(assert (=> b!90198 m!96669))

(declare-fun m!96671 () Bool)

(assert (=> b!90198 m!96671))

(declare-fun m!96673 () Bool)

(assert (=> b!90198 m!96673))

(declare-fun m!96675 () Bool)

(assert (=> b!90198 m!96675))

(declare-fun m!96677 () Bool)

(assert (=> b!90198 m!96677))

(declare-fun m!96679 () Bool)

(assert (=> b!90198 m!96679))

(assert (=> b!90198 m!96673))

(declare-fun m!96681 () Bool)

(assert (=> b!90198 m!96681))

(assert (=> b!90198 m!96675))

(declare-fun m!96683 () Bool)

(assert (=> b!90198 m!96683))

(assert (=> b!90198 m!96641))

(declare-fun m!96685 () Bool)

(assert (=> b!90198 m!96685))

(declare-fun m!96687 () Bool)

(assert (=> b!90198 m!96687))

(assert (=> b!90198 m!96677))

(declare-fun m!96689 () Bool)

(assert (=> b!90198 m!96689))

(assert (=> b!90198 m!96667))

(declare-fun m!96691 () Bool)

(assert (=> b!90198 m!96691))

(declare-fun m!96693 () Bool)

(assert (=> b!90198 m!96693))

(assert (=> b!90198 m!96557))

(assert (=> b!90179 m!96641))

(assert (=> b!90179 m!96641))

(assert (=> b!90179 m!96643))

(assert (=> b!90054 d!23945))

(declare-fun d!23947 () Bool)

(declare-fun e!58760 () Bool)

(assert (=> d!23947 e!58760))

(declare-fun res!46044 () Bool)

(assert (=> d!23947 (=> res!46044 e!58760)))

(declare-fun lt!43507 () Bool)

(assert (=> d!23947 (= res!46044 (not lt!43507))))

(declare-fun lt!43505 () Bool)

(assert (=> d!23947 (= lt!43507 lt!43505)))

(declare-fun lt!43506 () Unit!2698)

(declare-fun e!58761 () Unit!2698)

(assert (=> d!23947 (= lt!43506 e!58761)))

(declare-fun c!14992 () Bool)

(assert (=> d!23947 (= c!14992 lt!43505)))

(declare-fun containsKey!146 (List!1568 (_ BitVec 64)) Bool)

(assert (=> d!23947 (= lt!43505 (containsKey!146 (toList!766 lt!43373) (select (arr!1942 (_keys!4068 (v!2695 (underlying!304 thiss!992)))) from!355)))))

(assert (=> d!23947 (= (contains!773 lt!43373 (select (arr!1942 (_keys!4068 (v!2695 (underlying!304 thiss!992)))) from!355)) lt!43507)))

(declare-fun b!90205 () Bool)

(declare-fun lt!43504 () Unit!2698)

(assert (=> b!90205 (= e!58761 lt!43504)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!95 (List!1568 (_ BitVec 64)) Unit!2698)

(assert (=> b!90205 (= lt!43504 (lemmaContainsKeyImpliesGetValueByKeyDefined!95 (toList!766 lt!43373) (select (arr!1942 (_keys!4068 (v!2695 (underlying!304 thiss!992)))) from!355)))))

(declare-datatypes ((Option!148 0))(
  ( (Some!147 (v!2698 V!3059)) (None!146) )
))
(declare-fun isDefined!96 (Option!148) Bool)

(declare-fun getValueByKey!142 (List!1568 (_ BitVec 64)) Option!148)

(assert (=> b!90205 (isDefined!96 (getValueByKey!142 (toList!766 lt!43373) (select (arr!1942 (_keys!4068 (v!2695 (underlying!304 thiss!992)))) from!355)))))

(declare-fun b!90206 () Bool)

(declare-fun Unit!2703 () Unit!2698)

(assert (=> b!90206 (= e!58761 Unit!2703)))

(declare-fun b!90207 () Bool)

(assert (=> b!90207 (= e!58760 (isDefined!96 (getValueByKey!142 (toList!766 lt!43373) (select (arr!1942 (_keys!4068 (v!2695 (underlying!304 thiss!992)))) from!355))))))

(assert (= (and d!23947 c!14992) b!90205))

(assert (= (and d!23947 (not c!14992)) b!90206))

(assert (= (and d!23947 (not res!46044)) b!90207))

(assert (=> d!23947 m!96501))

(declare-fun m!96695 () Bool)

(assert (=> d!23947 m!96695))

(assert (=> b!90205 m!96501))

(declare-fun m!96697 () Bool)

(assert (=> b!90205 m!96697))

(assert (=> b!90205 m!96501))

(declare-fun m!96699 () Bool)

(assert (=> b!90205 m!96699))

(assert (=> b!90205 m!96699))

(declare-fun m!96701 () Bool)

(assert (=> b!90205 m!96701))

(assert (=> b!90207 m!96501))

(assert (=> b!90207 m!96699))

(assert (=> b!90207 m!96699))

(assert (=> b!90207 m!96701))

(assert (=> b!90059 d!23947))

(declare-fun b!90288 () Bool)

(declare-datatypes ((SeekEntryResult!256 0))(
  ( (MissingZero!256 (index!3164 (_ BitVec 32))) (Found!256 (index!3165 (_ BitVec 32))) (Intermediate!256 (undefined!1068 Bool) (index!3166 (_ BitVec 32)) (x!12345 (_ BitVec 32))) (Undefined!256) (MissingVacant!256 (index!3167 (_ BitVec 32))) )
))
(declare-fun lt!43585 () SeekEntryResult!256)

(declare-fun e!58817 () Bool)

(assert (=> b!90288 (= e!58817 (= (select (arr!1942 (_keys!4068 newMap!16)) (index!3165 lt!43585)) (select (arr!1942 (_keys!4068 (v!2695 (underlying!304 thiss!992)))) from!355)))))

(declare-fun e!58814 () Bool)

(declare-fun b!90290 () Bool)

(declare-fun lt!43588 () SeekEntryResult!256)

(assert (=> b!90290 (= e!58814 (= (select (arr!1942 (_keys!4068 newMap!16)) (index!3165 lt!43588)) (select (arr!1942 (_keys!4068 (v!2695 (underlying!304 thiss!992)))) from!355)))))

(declare-fun bm!8781 () Bool)

(declare-fun call!8797 () Bool)

(declare-fun call!8790 () Bool)

(assert (=> bm!8781 (= call!8797 call!8790)))

(declare-fun b!90291 () Bool)

(declare-fun res!46074 () Bool)

(declare-fun call!8804 () Bool)

(assert (=> b!90291 (= res!46074 call!8804)))

(assert (=> b!90291 (=> (not res!46074) (not e!58817))))

(declare-fun bm!8782 () Bool)

(assert (=> bm!8782 (= call!8790 (arrayContainsKey!0 (_keys!4068 newMap!16) (select (arr!1942 (_keys!4068 (v!2695 (underlying!304 thiss!992)))) from!355) #b00000000000000000000000000000000))))

(declare-fun b!90292 () Bool)

(declare-fun lt!43566 () Unit!2698)

(declare-fun lt!43577 () Unit!2698)

(assert (=> b!90292 (= lt!43566 lt!43577)))

(declare-fun call!8807 () ListLongMap!1501)

(declare-fun call!8791 () ListLongMap!1501)

(assert (=> b!90292 (= call!8807 call!8791)))

(declare-fun lt!43571 () (_ BitVec 32))

(declare-fun lemmaChangeZeroKeyThenAddPairToListMap!34 (array!4082 array!4084 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!3059 V!3059 V!3059 Int) Unit!2698)

(assert (=> b!90292 (= lt!43577 (lemmaChangeZeroKeyThenAddPairToListMap!34 (_keys!4068 newMap!16) (_values!2371 newMap!16) (mask!6440 newMap!16) (extraKeys!2219 newMap!16) lt!43571 (zeroValue!2276 newMap!16) lt!43358 (minValue!2276 newMap!16) (defaultEntry!2388 newMap!16)))))

(assert (=> b!90292 (= lt!43571 (bvor (extraKeys!2219 newMap!16) #b00000000000000000000000000000001))))

(declare-fun e!58815 () tuple2!2258)

(assert (=> b!90292 (= e!58815 (tuple2!2259 true (LongMapFixedSize!781 (defaultEntry!2388 newMap!16) (mask!6440 newMap!16) (bvor (extraKeys!2219 newMap!16) #b00000000000000000000000000000001) lt!43358 (minValue!2276 newMap!16) (_size!439 newMap!16) (_keys!4068 newMap!16) (_values!2371 newMap!16) (_vacant!439 newMap!16))))))

(declare-fun b!90293 () Bool)

(declare-fun e!58821 () tuple2!2258)

(assert (=> b!90293 (= e!58821 e!58815)))

(declare-fun c!15020 () Bool)

(assert (=> b!90293 (= c!15020 (= (select (arr!1942 (_keys!4068 (v!2695 (underlying!304 thiss!992)))) from!355) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!90294 () Bool)

(declare-fun e!58811 () tuple2!2258)

(declare-fun lt!43576 () tuple2!2258)

(assert (=> b!90294 (= e!58811 (tuple2!2259 (_1!1139 lt!43576) (_2!1139 lt!43576)))))

(declare-fun call!8800 () tuple2!2258)

(assert (=> b!90294 (= lt!43576 call!8800)))

(declare-fun b!90295 () Bool)

(declare-fun e!58823 () tuple2!2258)

(assert (=> b!90295 (= e!58821 e!58823)))

(declare-fun lt!43583 () SeekEntryResult!256)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!4082 (_ BitVec 32)) SeekEntryResult!256)

(assert (=> b!90295 (= lt!43583 (seekEntryOrOpen!0 (select (arr!1942 (_keys!4068 (v!2695 (underlying!304 thiss!992)))) from!355) (_keys!4068 newMap!16) (mask!6440 newMap!16)))))

(declare-fun c!15027 () Bool)

(assert (=> b!90295 (= c!15027 ((_ is Undefined!256) lt!43583))))

(declare-fun b!90296 () Bool)

(declare-fun res!46085 () Bool)

(declare-fun call!8792 () Bool)

(assert (=> b!90296 (= res!46085 call!8792)))

(assert (=> b!90296 (=> (not res!46085) (not e!58814))))

(declare-fun c!15030 () Bool)

(declare-fun e!58818 () ListLongMap!1501)

(declare-fun call!8801 () ListLongMap!1501)

(declare-fun bm!8783 () Bool)

(assert (=> bm!8783 (= call!8801 (+!123 e!58818 (ite c!15030 (ite c!15020 (tuple2!2261 #b0000000000000000000000000000000000000000000000000000000000000000 lt!43358) (tuple2!2261 #b1000000000000000000000000000000000000000000000000000000000000000 lt!43358)) (tuple2!2261 (select (arr!1942 (_keys!4068 (v!2695 (underlying!304 thiss!992)))) from!355) lt!43358))))))

(declare-fun c!15026 () Bool)

(assert (=> bm!8783 (= c!15026 c!15030)))

(declare-fun b!90289 () Bool)

(declare-fun lt!43567 () tuple2!2258)

(assert (=> b!90289 (= lt!43567 call!8800)))

(declare-fun e!58820 () tuple2!2258)

(assert (=> b!90289 (= e!58820 (tuple2!2259 (_1!1139 lt!43567) (_2!1139 lt!43567)))))

(declare-fun d!23949 () Bool)

(declare-fun e!58813 () Bool)

(assert (=> d!23949 e!58813))

(declare-fun res!46082 () Bool)

(assert (=> d!23949 (=> (not res!46082) (not e!58813))))

(declare-fun lt!43573 () tuple2!2258)

(assert (=> d!23949 (= res!46082 (valid!343 (_2!1139 lt!43573)))))

(assert (=> d!23949 (= lt!43573 e!58821)))

(assert (=> d!23949 (= c!15030 (= (select (arr!1942 (_keys!4068 (v!2695 (underlying!304 thiss!992)))) from!355) (bvneg (select (arr!1942 (_keys!4068 (v!2695 (underlying!304 thiss!992)))) from!355))))))

(assert (=> d!23949 (valid!343 newMap!16)))

(assert (=> d!23949 (= (update!127 newMap!16 (select (arr!1942 (_keys!4068 (v!2695 (underlying!304 thiss!992)))) from!355) lt!43358) lt!43573)))

(declare-fun b!90297 () Bool)

(declare-fun e!58822 () Unit!2698)

(declare-fun Unit!2704 () Unit!2698)

(assert (=> b!90297 (= e!58822 Unit!2704)))

(declare-fun lt!43584 () Unit!2698)

(declare-fun call!8785 () Unit!2698)

(assert (=> b!90297 (= lt!43584 call!8785)))

(declare-fun lt!43568 () SeekEntryResult!256)

(declare-fun call!8798 () SeekEntryResult!256)

(assert (=> b!90297 (= lt!43568 call!8798)))

(declare-fun c!15021 () Bool)

(assert (=> b!90297 (= c!15021 ((_ is MissingZero!256) lt!43568))))

(declare-fun e!58819 () Bool)

(assert (=> b!90297 e!58819))

(declare-fun lt!43587 () Unit!2698)

(assert (=> b!90297 (= lt!43587 lt!43584)))

(assert (=> b!90297 false))

(declare-fun b!90298 () Bool)

(declare-fun call!8786 () ListLongMap!1501)

(declare-fun call!8787 () ListLongMap!1501)

(declare-fun e!58804 () Bool)

(assert (=> b!90298 (= e!58804 (= call!8786 (+!123 call!8787 (tuple2!2261 (select (arr!1942 (_keys!4068 (v!2695 (underlying!304 thiss!992)))) from!355) lt!43358))))))

(declare-fun bm!8784 () Bool)

(assert (=> bm!8784 (= call!8807 call!8801)))

(declare-fun bm!8785 () Bool)

(declare-fun call!8794 () SeekEntryResult!256)

(assert (=> bm!8785 (= call!8798 call!8794)))

(declare-fun bm!8786 () Bool)

(assert (=> bm!8786 (= call!8794 (seekEntryOrOpen!0 (select (arr!1942 (_keys!4068 (v!2695 (underlying!304 thiss!992)))) from!355) (_keys!4068 newMap!16) (mask!6440 newMap!16)))))

(declare-fun bm!8787 () Bool)

(declare-fun call!8805 () SeekEntryResult!256)

(assert (=> bm!8787 (= call!8805 call!8794)))

(declare-fun b!90299 () Bool)

(declare-fun e!58816 () Bool)

(assert (=> b!90299 (= e!58816 (not call!8797))))

(declare-fun b!90300 () Bool)

(assert (=> b!90300 (= e!58818 (getCurrentListMap!448 (_keys!4068 newMap!16) (_values!2371 newMap!16) (mask!6440 newMap!16) (extraKeys!2219 newMap!16) (zeroValue!2276 newMap!16) (minValue!2276 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2388 newMap!16)))))

(declare-fun b!90301 () Bool)

(declare-fun c!15028 () Bool)

(assert (=> b!90301 (= c!15028 ((_ is MissingVacant!256) lt!43583))))

(assert (=> b!90301 (= e!58823 e!58811)))

(declare-fun b!90302 () Bool)

(declare-fun e!58807 () Bool)

(assert (=> b!90302 (= e!58807 e!58816)))

(declare-fun res!46084 () Bool)

(declare-fun call!8788 () Bool)

(assert (=> b!90302 (= res!46084 call!8788)))

(assert (=> b!90302 (=> (not res!46084) (not e!58816))))

(declare-fun b!90303 () Bool)

(declare-fun e!58810 () Unit!2698)

(declare-fun lt!43586 () Unit!2698)

(assert (=> b!90303 (= e!58810 lt!43586)))

(assert (=> b!90303 (= lt!43586 call!8785)))

(declare-fun lt!43569 () SeekEntryResult!256)

(assert (=> b!90303 (= lt!43569 call!8805)))

(declare-fun c!15029 () Bool)

(assert (=> b!90303 (= c!15029 ((_ is MissingZero!256) lt!43569))))

(declare-fun e!58806 () Bool)

(assert (=> b!90303 e!58806))

(declare-fun bm!8788 () Bool)

(declare-fun call!8784 () ListLongMap!1501)

(declare-fun call!8799 () ListLongMap!1501)

(assert (=> bm!8788 (= call!8784 call!8799)))

(declare-fun b!90304 () Bool)

(declare-fun e!58812 () Bool)

(declare-fun call!8793 () Bool)

(assert (=> b!90304 (= e!58812 (not call!8793))))

(declare-fun b!90305 () Bool)

(declare-fun lt!43562 () Unit!2698)

(declare-fun lt!43579 () Unit!2698)

(assert (=> b!90305 (= lt!43562 lt!43579)))

(assert (=> b!90305 (= call!8807 call!8791)))

(declare-fun lt!43564 () (_ BitVec 32))

(declare-fun lemmaChangeLongMinValueKeyThenAddPairToListMap!34 (array!4082 array!4084 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!3059 V!3059 V!3059 Int) Unit!2698)

(assert (=> b!90305 (= lt!43579 (lemmaChangeLongMinValueKeyThenAddPairToListMap!34 (_keys!4068 newMap!16) (_values!2371 newMap!16) (mask!6440 newMap!16) (extraKeys!2219 newMap!16) lt!43564 (zeroValue!2276 newMap!16) (minValue!2276 newMap!16) lt!43358 (defaultEntry!2388 newMap!16)))))

(assert (=> b!90305 (= lt!43564 (bvor (extraKeys!2219 newMap!16) #b00000000000000000000000000000010))))

(assert (=> b!90305 (= e!58815 (tuple2!2259 true (LongMapFixedSize!781 (defaultEntry!2388 newMap!16) (mask!6440 newMap!16) (bvor (extraKeys!2219 newMap!16) #b00000000000000000000000000000010) (zeroValue!2276 newMap!16) lt!43358 (_size!439 newMap!16) (_keys!4068 newMap!16) (_values!2371 newMap!16) (_vacant!439 newMap!16))))))

(declare-fun b!90306 () Bool)

(declare-fun c!15023 () Bool)

(assert (=> b!90306 (= c!15023 ((_ is MissingVacant!256) lt!43568))))

(declare-fun e!58805 () Bool)

(assert (=> b!90306 (= e!58819 e!58805)))

(declare-fun call!8806 () Unit!2698)

(declare-fun bm!8789 () Bool)

(declare-fun lemmaInListMapThenSeekEntryOrOpenFindsIt!34 (array!4082 array!4084 (_ BitVec 32) (_ BitVec 32) V!3059 V!3059 (_ BitVec 64) Int) Unit!2698)

(assert (=> bm!8789 (= call!8806 (lemmaInListMapThenSeekEntryOrOpenFindsIt!34 (_keys!4068 newMap!16) (_values!2371 newMap!16) (mask!6440 newMap!16) (extraKeys!2219 newMap!16) (zeroValue!2276 newMap!16) (minValue!2276 newMap!16) (select (arr!1942 (_keys!4068 (v!2695 (underlying!304 thiss!992)))) from!355) (defaultEntry!2388 newMap!16)))))

(declare-fun b!90307 () Bool)

(declare-fun lt!43578 () Unit!2698)

(declare-fun lt!43572 () Unit!2698)

(assert (=> b!90307 (= lt!43578 lt!43572)))

(declare-fun call!8795 () Bool)

(assert (=> b!90307 call!8795))

(declare-fun lt!43563 () array!4084)

(declare-fun lemmaValidKeyInArrayIsInListMap!92 (array!4082 array!4084 (_ BitVec 32) (_ BitVec 32) V!3059 V!3059 (_ BitVec 32) Int) Unit!2698)

(assert (=> b!90307 (= lt!43572 (lemmaValidKeyInArrayIsInListMap!92 (_keys!4068 newMap!16) lt!43563 (mask!6440 newMap!16) (extraKeys!2219 newMap!16) (zeroValue!2276 newMap!16) (minValue!2276 newMap!16) (index!3165 lt!43583) (defaultEntry!2388 newMap!16)))))

(assert (=> b!90307 (= lt!43563 (array!4085 (store (arr!1943 (_values!2371 newMap!16)) (index!3165 lt!43583) (ValueCellFull!936 lt!43358)) (size!2190 (_values!2371 newMap!16))))))

(declare-fun lt!43575 () Unit!2698)

(declare-fun lt!43582 () Unit!2698)

(assert (=> b!90307 (= lt!43575 lt!43582)))

(declare-fun call!8802 () ListLongMap!1501)

(assert (=> b!90307 (= call!8801 call!8802)))

(declare-fun lemmaChangeValueExistingKeyToArrayThenAddPairToListMap!34 (array!4082 array!4084 (_ BitVec 32) (_ BitVec 32) V!3059 V!3059 (_ BitVec 32) (_ BitVec 64) V!3059 Int) Unit!2698)

(assert (=> b!90307 (= lt!43582 (lemmaChangeValueExistingKeyToArrayThenAddPairToListMap!34 (_keys!4068 newMap!16) (_values!2371 newMap!16) (mask!6440 newMap!16) (extraKeys!2219 newMap!16) (zeroValue!2276 newMap!16) (minValue!2276 newMap!16) (index!3165 lt!43583) (select (arr!1942 (_keys!4068 (v!2695 (underlying!304 thiss!992)))) from!355) lt!43358 (defaultEntry!2388 newMap!16)))))

(declare-fun lt!43565 () Unit!2698)

(assert (=> b!90307 (= lt!43565 e!58822)))

(declare-fun c!15022 () Bool)

(assert (=> b!90307 (= c!15022 (contains!773 (getCurrentListMap!448 (_keys!4068 newMap!16) (_values!2371 newMap!16) (mask!6440 newMap!16) (extraKeys!2219 newMap!16) (zeroValue!2276 newMap!16) (minValue!2276 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2388 newMap!16)) (select (arr!1942 (_keys!4068 (v!2695 (underlying!304 thiss!992)))) from!355)))))

(assert (=> b!90307 (= e!58820 (tuple2!2259 true (LongMapFixedSize!781 (defaultEntry!2388 newMap!16) (mask!6440 newMap!16) (extraKeys!2219 newMap!16) (zeroValue!2276 newMap!16) (minValue!2276 newMap!16) (_size!439 newMap!16) (_keys!4068 newMap!16) (array!4085 (store (arr!1943 (_values!2371 newMap!16)) (index!3165 lt!43583) (ValueCellFull!936 lt!43358)) (size!2190 (_values!2371 newMap!16))) (_vacant!439 newMap!16))))))

(declare-fun bm!8790 () Bool)

(assert (=> bm!8790 (= call!8793 call!8790)))

(declare-fun b!90308 () Bool)

(declare-fun res!46078 () Bool)

(declare-fun e!58824 () Bool)

(assert (=> b!90308 (=> (not res!46078) (not e!58824))))

(assert (=> b!90308 (= res!46078 (= (select (arr!1942 (_keys!4068 newMap!16)) (index!3164 lt!43569)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!90309 () Bool)

(declare-fun c!15024 () Bool)

(assert (=> b!90309 (= c!15024 ((_ is MissingVacant!256) lt!43569))))

(assert (=> b!90309 (= e!58806 e!58807)))

(declare-fun bm!8791 () Bool)

(declare-fun call!8796 () ListLongMap!1501)

(assert (=> bm!8791 (= call!8796 call!8802)))

(declare-fun b!90310 () Bool)

(assert (=> b!90310 (= e!58818 call!8796)))

(declare-fun b!90311 () Bool)

(declare-fun res!46083 () Bool)

(assert (=> b!90311 (=> (not res!46083) (not e!58812))))

(assert (=> b!90311 (= res!46083 (= (select (arr!1942 (_keys!4068 newMap!16)) (index!3164 lt!43568)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun bm!8792 () Bool)

(declare-fun call!8789 () Bool)

(assert (=> bm!8792 (= call!8792 call!8789)))

(declare-fun b!90312 () Bool)

(declare-fun res!46080 () Bool)

(assert (=> b!90312 (= res!46080 (= (select (arr!1942 (_keys!4068 newMap!16)) (index!3167 lt!43569)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!90312 (=> (not res!46080) (not e!58816))))

(declare-fun b!90313 () Bool)

(declare-fun e!58809 () Bool)

(assert (=> b!90313 (= e!58809 (= call!8786 call!8787))))

(declare-fun b!90314 () Bool)

(assert (=> b!90314 (= e!58805 ((_ is Undefined!256) lt!43568))))

(declare-fun bm!8793 () Bool)

(declare-fun c!15025 () Bool)

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> bm!8793 (= call!8789 (inRange!0 (ite c!15027 (ite c!15025 (index!3165 lt!43585) (ite c!15029 (index!3164 lt!43569) (index!3167 lt!43569))) (ite c!15022 (index!3165 lt!43588) (ite c!15021 (index!3164 lt!43568) (index!3167 lt!43568)))) (mask!6440 newMap!16)))))

(declare-fun b!90315 () Bool)

(declare-fun e!58808 () Bool)

(assert (=> b!90315 (= e!58808 (not call!8793))))

(declare-fun bm!8794 () Bool)

(assert (=> bm!8794 (= call!8804 call!8789)))

(declare-fun bm!8795 () Bool)

(assert (=> bm!8795 (= call!8802 (getCurrentListMap!448 (_keys!4068 newMap!16) (ite c!15030 (_values!2371 newMap!16) (array!4085 (store (arr!1943 (_values!2371 newMap!16)) (index!3165 lt!43583) (ValueCellFull!936 lt!43358)) (size!2190 (_values!2371 newMap!16)))) (mask!6440 newMap!16) (extraKeys!2219 newMap!16) (zeroValue!2276 newMap!16) (minValue!2276 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2388 newMap!16)))))

(declare-fun bm!8796 () Bool)

(assert (=> bm!8796 (= call!8791 call!8799)))

(declare-fun b!90316 () Bool)

(assert (=> b!90316 (= e!58824 (not call!8797))))

(declare-fun b!90317 () Bool)

(assert (=> b!90317 (= e!58811 e!58820)))

(declare-fun c!15019 () Bool)

(assert (=> b!90317 (= c!15019 ((_ is MissingZero!256) lt!43583))))

(declare-fun bm!8797 () Bool)

(declare-fun lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!34 (array!4082 array!4084 (_ BitVec 32) (_ BitVec 32) V!3059 V!3059 (_ BitVec 64) Int) Unit!2698)

(assert (=> bm!8797 (= call!8785 (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!34 (_keys!4068 newMap!16) (_values!2371 newMap!16) (mask!6440 newMap!16) (extraKeys!2219 newMap!16) (zeroValue!2276 newMap!16) (minValue!2276 newMap!16) (select (arr!1942 (_keys!4068 (v!2695 (underlying!304 thiss!992)))) from!355) (defaultEntry!2388 newMap!16)))))

(declare-fun bm!8798 () Bool)

(assert (=> bm!8798 (= call!8786 (map!1208 (_2!1139 lt!43573)))))

(declare-fun bm!8799 () Bool)

(declare-fun call!8803 () Bool)

(assert (=> bm!8799 (= call!8803 call!8792)))

(declare-fun bm!8800 () Bool)

(declare-fun updateHelperNewKey!34 (LongMapFixedSize!780 (_ BitVec 64) V!3059 (_ BitVec 32)) tuple2!2258)

(assert (=> bm!8800 (= call!8800 (updateHelperNewKey!34 newMap!16 (select (arr!1942 (_keys!4068 (v!2695 (underlying!304 thiss!992)))) from!355) lt!43358 (ite c!15028 (index!3167 lt!43583) (index!3164 lt!43583))))))

(declare-fun bm!8801 () Bool)

(assert (=> bm!8801 (= call!8799 (getCurrentListMap!448 (_keys!4068 newMap!16) (ite (or c!15030 c!15027) (_values!2371 newMap!16) lt!43563) (mask!6440 newMap!16) (ite c!15030 (ite c!15020 lt!43571 lt!43564) (extraKeys!2219 newMap!16)) (ite (and c!15030 c!15020) lt!43358 (zeroValue!2276 newMap!16)) (ite c!15030 (ite c!15020 (minValue!2276 newMap!16) lt!43358) (minValue!2276 newMap!16)) #b00000000000000000000000000000000 (defaultEntry!2388 newMap!16)))))

(declare-fun b!90318 () Bool)

(declare-fun res!46081 () Bool)

(assert (=> b!90318 (= res!46081 (= (select (arr!1942 (_keys!4068 newMap!16)) (index!3167 lt!43568)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!90318 (=> (not res!46081) (not e!58808))))

(declare-fun bm!8802 () Bool)

(assert (=> bm!8802 (= call!8788 call!8804)))

(declare-fun b!90319 () Bool)

(assert (=> b!90319 (= e!58813 e!58809)))

(declare-fun c!15031 () Bool)

(assert (=> b!90319 (= c!15031 (_1!1139 lt!43573))))

(declare-fun b!90320 () Bool)

(declare-fun res!46079 () Bool)

(assert (=> b!90320 (=> (not res!46079) (not e!58824))))

(assert (=> b!90320 (= res!46079 call!8788)))

(assert (=> b!90320 (= e!58806 e!58824)))

(declare-fun b!90321 () Bool)

(assert (=> b!90321 (= e!58809 e!58804)))

(declare-fun res!46075 () Bool)

(assert (=> b!90321 (= res!46075 (contains!773 call!8786 (select (arr!1942 (_keys!4068 (v!2695 (underlying!304 thiss!992)))) from!355)))))

(assert (=> b!90321 (=> (not res!46075) (not e!58804))))

(declare-fun bm!8803 () Bool)

(assert (=> bm!8803 (= call!8787 (map!1208 newMap!16))))

(declare-fun bm!8804 () Bool)

(assert (=> bm!8804 (= call!8795 (contains!773 call!8784 (ite c!15027 (select (arr!1942 (_keys!4068 (v!2695 (underlying!304 thiss!992)))) from!355) (select (arr!1942 (_keys!4068 newMap!16)) (index!3165 lt!43583)))))))

(declare-fun b!90322 () Bool)

(declare-fun lt!43574 () Unit!2698)

(assert (=> b!90322 (= lt!43574 e!58810)))

(assert (=> b!90322 (= c!15025 call!8795)))

(assert (=> b!90322 (= e!58823 (tuple2!2259 false newMap!16))))

(declare-fun b!90323 () Bool)

(declare-fun Unit!2705 () Unit!2698)

(assert (=> b!90323 (= e!58810 Unit!2705)))

(declare-fun lt!43581 () Unit!2698)

(assert (=> b!90323 (= lt!43581 call!8806)))

(assert (=> b!90323 (= lt!43585 call!8805)))

(declare-fun res!46086 () Bool)

(assert (=> b!90323 (= res!46086 ((_ is Found!256) lt!43585))))

(assert (=> b!90323 (=> (not res!46086) (not e!58817))))

(assert (=> b!90323 e!58817))

(declare-fun lt!43570 () Unit!2698)

(assert (=> b!90323 (= lt!43570 lt!43581)))

(assert (=> b!90323 false))

(declare-fun b!90324 () Bool)

(declare-fun lt!43580 () Unit!2698)

(assert (=> b!90324 (= e!58822 lt!43580)))

(assert (=> b!90324 (= lt!43580 call!8806)))

(assert (=> b!90324 (= lt!43588 call!8798)))

(declare-fun res!46073 () Bool)

(assert (=> b!90324 (= res!46073 ((_ is Found!256) lt!43588))))

(assert (=> b!90324 (=> (not res!46073) (not e!58814))))

(assert (=> b!90324 e!58814))

(declare-fun b!90325 () Bool)

(assert (=> b!90325 (= e!58805 e!58808)))

(declare-fun res!46076 () Bool)

(assert (=> b!90325 (= res!46076 call!8803)))

(assert (=> b!90325 (=> (not res!46076) (not e!58808))))

(declare-fun b!90326 () Bool)

(assert (=> b!90326 (= e!58807 ((_ is Undefined!256) lt!43569))))

(declare-fun b!90327 () Bool)

(declare-fun res!46077 () Bool)

(assert (=> b!90327 (=> (not res!46077) (not e!58812))))

(assert (=> b!90327 (= res!46077 call!8803)))

(assert (=> b!90327 (= e!58819 e!58812)))

(assert (= (and d!23949 c!15030) b!90293))

(assert (= (and d!23949 (not c!15030)) b!90295))

(assert (= (and b!90293 c!15020) b!90292))

(assert (= (and b!90293 (not c!15020)) b!90305))

(assert (= (or b!90292 b!90305) bm!8796))

(assert (= (or b!90292 b!90305) bm!8791))

(assert (= (or b!90292 b!90305) bm!8784))

(assert (= (and b!90295 c!15027) b!90322))

(assert (= (and b!90295 (not c!15027)) b!90301))

(assert (= (and b!90322 c!15025) b!90323))

(assert (= (and b!90322 (not c!15025)) b!90303))

(assert (= (and b!90323 res!46086) b!90291))

(assert (= (and b!90291 res!46074) b!90288))

(assert (= (and b!90303 c!15029) b!90320))

(assert (= (and b!90303 (not c!15029)) b!90309))

(assert (= (and b!90320 res!46079) b!90308))

(assert (= (and b!90308 res!46078) b!90316))

(assert (= (and b!90309 c!15024) b!90302))

(assert (= (and b!90309 (not c!15024)) b!90326))

(assert (= (and b!90302 res!46084) b!90312))

(assert (= (and b!90312 res!46080) b!90299))

(assert (= (or b!90320 b!90302) bm!8802))

(assert (= (or b!90316 b!90299) bm!8781))

(assert (= (or b!90291 bm!8802) bm!8794))

(assert (= (or b!90323 b!90303) bm!8787))

(assert (= (and b!90301 c!15028) b!90294))

(assert (= (and b!90301 (not c!15028)) b!90317))

(assert (= (and b!90317 c!15019) b!90289))

(assert (= (and b!90317 (not c!15019)) b!90307))

(assert (= (and b!90307 c!15022) b!90324))

(assert (= (and b!90307 (not c!15022)) b!90297))

(assert (= (and b!90324 res!46073) b!90296))

(assert (= (and b!90296 res!46085) b!90290))

(assert (= (and b!90297 c!15021) b!90327))

(assert (= (and b!90297 (not c!15021)) b!90306))

(assert (= (and b!90327 res!46077) b!90311))

(assert (= (and b!90311 res!46083) b!90304))

(assert (= (and b!90306 c!15023) b!90325))

(assert (= (and b!90306 (not c!15023)) b!90314))

(assert (= (and b!90325 res!46076) b!90318))

(assert (= (and b!90318 res!46081) b!90315))

(assert (= (or b!90327 b!90325) bm!8799))

(assert (= (or b!90304 b!90315) bm!8790))

(assert (= (or b!90296 bm!8799) bm!8792))

(assert (= (or b!90324 b!90297) bm!8785))

(assert (= (or b!90294 b!90289) bm!8800))

(assert (= (or bm!8787 bm!8785) bm!8786))

(assert (= (or bm!8781 bm!8790) bm!8782))

(assert (= (or bm!8794 bm!8792) bm!8793))

(assert (= (or b!90323 b!90324) bm!8789))

(assert (= (or b!90322 b!90307) bm!8788))

(assert (= (or b!90303 b!90297) bm!8797))

(assert (= (or b!90322 b!90307) bm!8804))

(assert (= (or bm!8791 b!90307) bm!8795))

(assert (= (or bm!8796 bm!8788) bm!8801))

(assert (= (or bm!8784 b!90307) bm!8783))

(assert (= (and bm!8783 c!15026) b!90310))

(assert (= (and bm!8783 (not c!15026)) b!90300))

(assert (= (and d!23949 res!46082) b!90319))

(assert (= (and b!90319 c!15031) b!90321))

(assert (= (and b!90319 (not c!15031)) b!90313))

(assert (= (and b!90321 res!46075) b!90298))

(assert (= (or b!90321 b!90298 b!90313) bm!8798))

(assert (= (or b!90298 b!90313) bm!8803))

(assert (=> bm!8786 m!96501))

(declare-fun m!96703 () Bool)

(assert (=> bm!8786 m!96703))

(assert (=> bm!8803 m!96529))

(declare-fun m!96705 () Bool)

(assert (=> bm!8804 m!96705))

(declare-fun m!96707 () Bool)

(assert (=> bm!8804 m!96707))

(declare-fun m!96709 () Bool)

(assert (=> b!90288 m!96709))

(declare-fun m!96711 () Bool)

(assert (=> b!90290 m!96711))

(declare-fun m!96713 () Bool)

(assert (=> bm!8793 m!96713))

(assert (=> bm!8797 m!96501))

(declare-fun m!96715 () Bool)

(assert (=> bm!8797 m!96715))

(declare-fun m!96717 () Bool)

(assert (=> bm!8801 m!96717))

(declare-fun m!96719 () Bool)

(assert (=> bm!8783 m!96719))

(declare-fun m!96721 () Bool)

(assert (=> d!23949 m!96721))

(assert (=> d!23949 m!96533))

(assert (=> b!90321 m!96501))

(declare-fun m!96723 () Bool)

(assert (=> b!90321 m!96723))

(assert (=> bm!8800 m!96501))

(declare-fun m!96725 () Bool)

(assert (=> bm!8800 m!96725))

(assert (=> b!90307 m!96637))

(declare-fun m!96727 () Bool)

(assert (=> b!90307 m!96727))

(assert (=> b!90307 m!96637))

(assert (=> b!90307 m!96501))

(declare-fun m!96729 () Bool)

(assert (=> b!90307 m!96729))

(declare-fun m!96731 () Bool)

(assert (=> b!90307 m!96731))

(assert (=> b!90307 m!96501))

(declare-fun m!96733 () Bool)

(assert (=> b!90307 m!96733))

(assert (=> bm!8795 m!96731))

(declare-fun m!96735 () Bool)

(assert (=> bm!8795 m!96735))

(declare-fun m!96737 () Bool)

(assert (=> b!90305 m!96737))

(assert (=> bm!8789 m!96501))

(declare-fun m!96739 () Bool)

(assert (=> bm!8789 m!96739))

(declare-fun m!96741 () Bool)

(assert (=> b!90318 m!96741))

(declare-fun m!96743 () Bool)

(assert (=> bm!8798 m!96743))

(declare-fun m!96745 () Bool)

(assert (=> b!90311 m!96745))

(assert (=> b!90300 m!96637))

(declare-fun m!96747 () Bool)

(assert (=> b!90292 m!96747))

(declare-fun m!96749 () Bool)

(assert (=> b!90308 m!96749))

(assert (=> b!90295 m!96501))

(assert (=> b!90295 m!96703))

(declare-fun m!96751 () Bool)

(assert (=> b!90312 m!96751))

(declare-fun m!96753 () Bool)

(assert (=> b!90298 m!96753))

(assert (=> bm!8782 m!96501))

(declare-fun m!96755 () Bool)

(assert (=> bm!8782 m!96755))

(assert (=> b!90059 d!23949))

(declare-fun d!23951 () Bool)

(assert (=> d!23951 (not (arrayContainsKey!0 (_keys!4068 (v!2695 (underlying!304 thiss!992))) (select (arr!1942 (_keys!4068 (v!2695 (underlying!304 thiss!992)))) from!355) (bvadd #b00000000000000000000000000000001 from!355)))))

(declare-fun lt!43591 () Unit!2698)

(declare-fun choose!68 (array!4082 (_ BitVec 32) (_ BitVec 64) List!1567) Unit!2698)

(assert (=> d!23951 (= lt!43591 (choose!68 (_keys!4068 (v!2695 (underlying!304 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (select (arr!1942 (_keys!4068 (v!2695 (underlying!304 thiss!992)))) from!355) (Cons!1563 (select (arr!1942 (_keys!4068 (v!2695 (underlying!304 thiss!992)))) from!355) Nil!1564)))))

(assert (=> d!23951 (bvslt (size!2189 (_keys!4068 (v!2695 (underlying!304 thiss!992)))) #b01111111111111111111111111111111)))

(assert (=> d!23951 (= (lemmaArrayNoDuplicateFromNotContainsKeysInAcc!0 (_keys!4068 (v!2695 (underlying!304 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (select (arr!1942 (_keys!4068 (v!2695 (underlying!304 thiss!992)))) from!355) (Cons!1563 (select (arr!1942 (_keys!4068 (v!2695 (underlying!304 thiss!992)))) from!355) Nil!1564)) lt!43591)))

(declare-fun bs!3762 () Bool)

(assert (= bs!3762 d!23951))

(assert (=> bs!3762 m!96501))

(assert (=> bs!3762 m!96505))

(assert (=> bs!3762 m!96501))

(declare-fun m!96757 () Bool)

(assert (=> bs!3762 m!96757))

(assert (=> b!90045 d!23951))

(declare-fun d!23953 () Bool)

(assert (=> d!23953 (arrayNoDuplicates!0 (_keys!4068 (v!2695 (underlying!304 thiss!992))) from!355 Nil!1564)))

(declare-fun lt!43594 () Unit!2698)

(declare-fun choose!39 (array!4082 (_ BitVec 32) (_ BitVec 32)) Unit!2698)

(assert (=> d!23953 (= lt!43594 (choose!39 (_keys!4068 (v!2695 (underlying!304 thiss!992))) #b00000000000000000000000000000000 from!355))))

(assert (=> d!23953 (bvslt (size!2189 (_keys!4068 (v!2695 (underlying!304 thiss!992)))) #b01111111111111111111111111111111)))

(assert (=> d!23953 (= (lemmaNoDuplicateFromThenFromBigger!0 (_keys!4068 (v!2695 (underlying!304 thiss!992))) #b00000000000000000000000000000000 from!355) lt!43594)))

(declare-fun bs!3763 () Bool)

(assert (= bs!3763 d!23953))

(assert (=> bs!3763 m!96499))

(declare-fun m!96759 () Bool)

(assert (=> bs!3763 m!96759))

(assert (=> b!90045 d!23953))

(declare-fun d!23955 () Bool)

(declare-fun res!46091 () Bool)

(declare-fun e!58829 () Bool)

(assert (=> d!23955 (=> res!46091 e!58829)))

(assert (=> d!23955 (= res!46091 (= (select (arr!1942 (_keys!4068 (v!2695 (underlying!304 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (select (arr!1942 (_keys!4068 (v!2695 (underlying!304 thiss!992)))) from!355)))))

(assert (=> d!23955 (= (arrayContainsKey!0 (_keys!4068 (v!2695 (underlying!304 thiss!992))) (select (arr!1942 (_keys!4068 (v!2695 (underlying!304 thiss!992)))) from!355) (bvadd #b00000000000000000000000000000001 from!355)) e!58829)))

(declare-fun b!90332 () Bool)

(declare-fun e!58830 () Bool)

(assert (=> b!90332 (= e!58829 e!58830)))

(declare-fun res!46092 () Bool)

(assert (=> b!90332 (=> (not res!46092) (not e!58830))))

(assert (=> b!90332 (= res!46092 (bvslt (bvadd #b00000000000000000000000000000001 from!355 #b00000000000000000000000000000001) (size!2189 (_keys!4068 (v!2695 (underlying!304 thiss!992))))))))

(declare-fun b!90333 () Bool)

(assert (=> b!90333 (= e!58830 (arrayContainsKey!0 (_keys!4068 (v!2695 (underlying!304 thiss!992))) (select (arr!1942 (_keys!4068 (v!2695 (underlying!304 thiss!992)))) from!355) (bvadd #b00000000000000000000000000000001 from!355 #b00000000000000000000000000000001)))))

(assert (= (and d!23955 (not res!46091)) b!90332))

(assert (= (and b!90332 res!46092) b!90333))

(assert (=> d!23955 m!96641))

(assert (=> b!90333 m!96501))

(declare-fun m!96761 () Bool)

(assert (=> b!90333 m!96761))

(assert (=> b!90045 d!23955))

(declare-fun d!23957 () Bool)

(declare-fun e!58833 () Bool)

(assert (=> d!23957 e!58833))

(declare-fun c!15034 () Bool)

(assert (=> d!23957 (= c!15034 (and (not (= (select (arr!1942 (_keys!4068 (v!2695 (underlying!304 thiss!992)))) from!355) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!1942 (_keys!4068 (v!2695 (underlying!304 thiss!992)))) from!355) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun lt!43597 () Unit!2698)

(declare-fun choose!547 (array!4082 array!4084 (_ BitVec 32) (_ BitVec 32) V!3059 V!3059 (_ BitVec 64) (_ BitVec 32) Int) Unit!2698)

(assert (=> d!23957 (= lt!43597 (choose!547 (_keys!4068 (v!2695 (underlying!304 thiss!992))) (_values!2371 (v!2695 (underlying!304 thiss!992))) (mask!6440 (v!2695 (underlying!304 thiss!992))) (extraKeys!2219 (v!2695 (underlying!304 thiss!992))) (zeroValue!2276 (v!2695 (underlying!304 thiss!992))) (minValue!2276 (v!2695 (underlying!304 thiss!992))) (select (arr!1942 (_keys!4068 (v!2695 (underlying!304 thiss!992)))) from!355) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2388 (v!2695 (underlying!304 thiss!992)))))))

(assert (=> d!23957 (validMask!0 (mask!6440 (v!2695 (underlying!304 thiss!992))))))

(assert (=> d!23957 (= (lemmaListMapContainsThenArrayContainsFrom!79 (_keys!4068 (v!2695 (underlying!304 thiss!992))) (_values!2371 (v!2695 (underlying!304 thiss!992))) (mask!6440 (v!2695 (underlying!304 thiss!992))) (extraKeys!2219 (v!2695 (underlying!304 thiss!992))) (zeroValue!2276 (v!2695 (underlying!304 thiss!992))) (minValue!2276 (v!2695 (underlying!304 thiss!992))) (select (arr!1942 (_keys!4068 (v!2695 (underlying!304 thiss!992)))) from!355) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2388 (v!2695 (underlying!304 thiss!992)))) lt!43597)))

(declare-fun b!90338 () Bool)

(assert (=> b!90338 (= e!58833 (arrayContainsKey!0 (_keys!4068 (v!2695 (underlying!304 thiss!992))) (select (arr!1942 (_keys!4068 (v!2695 (underlying!304 thiss!992)))) from!355) (bvadd #b00000000000000000000000000000001 from!355)))))

(declare-fun b!90339 () Bool)

(assert (=> b!90339 (= e!58833 (ite (= (select (arr!1942 (_keys!4068 (v!2695 (underlying!304 thiss!992)))) from!355) #b0000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand (extraKeys!2219 (v!2695 (underlying!304 thiss!992))) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (extraKeys!2219 (v!2695 (underlying!304 thiss!992))) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (= (and d!23957 c!15034) b!90338))

(assert (= (and d!23957 (not c!15034)) b!90339))

(assert (=> d!23957 m!96501))

(declare-fun m!96763 () Bool)

(assert (=> d!23957 m!96763))

(assert (=> d!23957 m!96649))

(assert (=> b!90338 m!96501))

(assert (=> b!90338 m!96505))

(assert (=> b!90045 d!23957))

(declare-fun b!90350 () Bool)

(declare-fun e!58842 () Bool)

(declare-fun contains!774 (List!1567 (_ BitVec 64)) Bool)

(assert (=> b!90350 (= e!58842 (contains!774 Nil!1564 (select (arr!1942 (_keys!4068 (v!2695 (underlying!304 thiss!992)))) from!355)))))

(declare-fun bm!8807 () Bool)

(declare-fun c!15037 () Bool)

(declare-fun call!8810 () Bool)

(assert (=> bm!8807 (= call!8810 (arrayNoDuplicates!0 (_keys!4068 (v!2695 (underlying!304 thiss!992))) (bvadd from!355 #b00000000000000000000000000000001) (ite c!15037 (Cons!1563 (select (arr!1942 (_keys!4068 (v!2695 (underlying!304 thiss!992)))) from!355) Nil!1564) Nil!1564)))))

(declare-fun b!90351 () Bool)

(declare-fun e!58845 () Bool)

(assert (=> b!90351 (= e!58845 call!8810)))

(declare-fun b!90352 () Bool)

(declare-fun e!58843 () Bool)

(declare-fun e!58844 () Bool)

(assert (=> b!90352 (= e!58843 e!58844)))

(declare-fun res!46099 () Bool)

(assert (=> b!90352 (=> (not res!46099) (not e!58844))))

(assert (=> b!90352 (= res!46099 (not e!58842))))

(declare-fun res!46100 () Bool)

(assert (=> b!90352 (=> (not res!46100) (not e!58842))))

(assert (=> b!90352 (= res!46100 (validKeyInArray!0 (select (arr!1942 (_keys!4068 (v!2695 (underlying!304 thiss!992)))) from!355)))))

(declare-fun b!90353 () Bool)

(assert (=> b!90353 (= e!58845 call!8810)))

(declare-fun b!90354 () Bool)

(assert (=> b!90354 (= e!58844 e!58845)))

(assert (=> b!90354 (= c!15037 (validKeyInArray!0 (select (arr!1942 (_keys!4068 (v!2695 (underlying!304 thiss!992)))) from!355)))))

(declare-fun d!23959 () Bool)

(declare-fun res!46101 () Bool)

(assert (=> d!23959 (=> res!46101 e!58843)))

(assert (=> d!23959 (= res!46101 (bvsge from!355 (size!2189 (_keys!4068 (v!2695 (underlying!304 thiss!992))))))))

(assert (=> d!23959 (= (arrayNoDuplicates!0 (_keys!4068 (v!2695 (underlying!304 thiss!992))) from!355 Nil!1564) e!58843)))

(assert (= (and d!23959 (not res!46101)) b!90352))

(assert (= (and b!90352 res!46100) b!90350))

(assert (= (and b!90352 res!46099) b!90354))

(assert (= (and b!90354 c!15037) b!90353))

(assert (= (and b!90354 (not c!15037)) b!90351))

(assert (= (or b!90353 b!90351) bm!8807))

(assert (=> b!90350 m!96501))

(assert (=> b!90350 m!96501))

(declare-fun m!96765 () Bool)

(assert (=> b!90350 m!96765))

(assert (=> bm!8807 m!96501))

(declare-fun m!96767 () Bool)

(assert (=> bm!8807 m!96767))

(assert (=> b!90352 m!96501))

(assert (=> b!90352 m!96501))

(declare-fun m!96769 () Bool)

(assert (=> b!90352 m!96769))

(assert (=> b!90354 m!96501))

(assert (=> b!90354 m!96501))

(assert (=> b!90354 m!96769))

(assert (=> b!90045 d!23959))

(declare-fun d!23961 () Bool)

(assert (=> d!23961 (= (+!123 (+!123 lt!43362 (tuple2!2261 (select (arr!1942 (_keys!4068 (v!2695 (underlying!304 thiss!992)))) from!355) lt!43358)) (tuple2!2261 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2276 (v!2695 (underlying!304 thiss!992))))) (+!123 (+!123 lt!43362 (tuple2!2261 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2276 (v!2695 (underlying!304 thiss!992))))) (tuple2!2261 (select (arr!1942 (_keys!4068 (v!2695 (underlying!304 thiss!992)))) from!355) lt!43358)))))

(declare-fun lt!43600 () Unit!2698)

(declare-fun choose!548 (ListLongMap!1501 (_ BitVec 64) V!3059 (_ BitVec 64) V!3059) Unit!2698)

(assert (=> d!23961 (= lt!43600 (choose!548 lt!43362 (select (arr!1942 (_keys!4068 (v!2695 (underlying!304 thiss!992)))) from!355) lt!43358 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2276 (v!2695 (underlying!304 thiss!992)))))))

(assert (=> d!23961 (not (= (select (arr!1942 (_keys!4068 (v!2695 (underlying!304 thiss!992)))) from!355) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!23961 (= (addCommutativeForDiffKeys!42 lt!43362 (select (arr!1942 (_keys!4068 (v!2695 (underlying!304 thiss!992)))) from!355) lt!43358 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2276 (v!2695 (underlying!304 thiss!992)))) lt!43600)))

(declare-fun bs!3764 () Bool)

(assert (= bs!3764 d!23961))

(assert (=> bs!3764 m!96501))

(declare-fun m!96771 () Bool)

(assert (=> bs!3764 m!96771))

(declare-fun m!96773 () Bool)

(assert (=> bs!3764 m!96773))

(declare-fun m!96775 () Bool)

(assert (=> bs!3764 m!96775))

(assert (=> bs!3764 m!96775))

(declare-fun m!96777 () Bool)

(assert (=> bs!3764 m!96777))

(assert (=> bs!3764 m!96773))

(declare-fun m!96779 () Bool)

(assert (=> bs!3764 m!96779))

(assert (=> b!90053 d!23961))

(declare-fun b!90379 () Bool)

(declare-fun e!58862 () Bool)

(assert (=> b!90379 (= e!58862 (validKeyInArray!0 (select (arr!1942 (_keys!4068 (v!2695 (underlying!304 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))))))

(assert (=> b!90379 (bvsge (bvadd #b00000000000000000000000000000001 from!355) #b00000000000000000000000000000000)))

(declare-fun b!90380 () Bool)

(declare-fun e!58865 () ListLongMap!1501)

(declare-fun e!58866 () ListLongMap!1501)

(assert (=> b!90380 (= e!58865 e!58866)))

(declare-fun c!15047 () Bool)

(assert (=> b!90380 (= c!15047 (validKeyInArray!0 (select (arr!1942 (_keys!4068 (v!2695 (underlying!304 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))))))

(declare-fun b!90381 () Bool)

(declare-fun lt!43617 () Unit!2698)

(declare-fun lt!43615 () Unit!2698)

(assert (=> b!90381 (= lt!43617 lt!43615)))

(declare-fun lt!43620 () ListLongMap!1501)

(declare-fun lt!43621 () (_ BitVec 64))

(declare-fun lt!43619 () (_ BitVec 64))

(declare-fun lt!43616 () V!3059)

(assert (=> b!90381 (not (contains!773 (+!123 lt!43620 (tuple2!2261 lt!43621 lt!43616)) lt!43619))))

(declare-fun addStillNotContains!36 (ListLongMap!1501 (_ BitVec 64) V!3059 (_ BitVec 64)) Unit!2698)

(assert (=> b!90381 (= lt!43615 (addStillNotContains!36 lt!43620 lt!43621 lt!43616 lt!43619))))

(assert (=> b!90381 (= lt!43619 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!90381 (= lt!43616 (get!1236 (select (arr!1943 (_values!2371 (v!2695 (underlying!304 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (dynLambda!359 (defaultEntry!2388 (v!2695 (underlying!304 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!90381 (= lt!43621 (select (arr!1942 (_keys!4068 (v!2695 (underlying!304 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)))))

(declare-fun call!8813 () ListLongMap!1501)

(assert (=> b!90381 (= lt!43620 call!8813)))

(assert (=> b!90381 (= e!58866 (+!123 call!8813 (tuple2!2261 (select (arr!1942 (_keys!4068 (v!2695 (underlying!304 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (get!1236 (select (arr!1943 (_values!2371 (v!2695 (underlying!304 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (dynLambda!359 (defaultEntry!2388 (v!2695 (underlying!304 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun d!23963 () Bool)

(declare-fun e!58864 () Bool)

(assert (=> d!23963 e!58864))

(declare-fun res!46110 () Bool)

(assert (=> d!23963 (=> (not res!46110) (not e!58864))))

(declare-fun lt!43618 () ListLongMap!1501)

(assert (=> d!23963 (= res!46110 (not (contains!773 lt!43618 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!23963 (= lt!43618 e!58865)))

(declare-fun c!15046 () Bool)

(assert (=> d!23963 (= c!15046 (bvsge (bvadd #b00000000000000000000000000000001 from!355) (size!2189 (_keys!4068 (v!2695 (underlying!304 thiss!992))))))))

(assert (=> d!23963 (validMask!0 (mask!6440 (v!2695 (underlying!304 thiss!992))))))

(assert (=> d!23963 (= (getCurrentListMapNoExtraKeys!87 (_keys!4068 (v!2695 (underlying!304 thiss!992))) (_values!2371 (v!2695 (underlying!304 thiss!992))) (mask!6440 (v!2695 (underlying!304 thiss!992))) (extraKeys!2219 (v!2695 (underlying!304 thiss!992))) (zeroValue!2276 (v!2695 (underlying!304 thiss!992))) (minValue!2276 (v!2695 (underlying!304 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2388 (v!2695 (underlying!304 thiss!992)))) lt!43618)))

(declare-fun b!90382 () Bool)

(declare-fun e!58863 () Bool)

(declare-fun e!58860 () Bool)

(assert (=> b!90382 (= e!58863 e!58860)))

(assert (=> b!90382 (and (bvsge (bvadd #b00000000000000000000000000000001 from!355) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!355) (size!2189 (_keys!4068 (v!2695 (underlying!304 thiss!992))))))))

(declare-fun res!46112 () Bool)

(assert (=> b!90382 (= res!46112 (contains!773 lt!43618 (select (arr!1942 (_keys!4068 (v!2695 (underlying!304 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))))))

(assert (=> b!90382 (=> (not res!46112) (not e!58860))))

(declare-fun b!90383 () Bool)

(assert (=> b!90383 (= e!58866 call!8813)))

(declare-fun b!90384 () Bool)

(assert (=> b!90384 (and (bvsge (bvadd #b00000000000000000000000000000001 from!355) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!355) (size!2189 (_keys!4068 (v!2695 (underlying!304 thiss!992))))))))

(assert (=> b!90384 (and (bvsge (bvadd #b00000000000000000000000000000001 from!355) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!355) (size!2190 (_values!2371 (v!2695 (underlying!304 thiss!992))))))))

(assert (=> b!90384 (= e!58860 (= (apply!85 lt!43618 (select (arr!1942 (_keys!4068 (v!2695 (underlying!304 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))) (get!1236 (select (arr!1943 (_values!2371 (v!2695 (underlying!304 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (dynLambda!359 (defaultEntry!2388 (v!2695 (underlying!304 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!90385 () Bool)

(declare-fun e!58861 () Bool)

(assert (=> b!90385 (= e!58861 (= lt!43618 (getCurrentListMapNoExtraKeys!87 (_keys!4068 (v!2695 (underlying!304 thiss!992))) (_values!2371 (v!2695 (underlying!304 thiss!992))) (mask!6440 (v!2695 (underlying!304 thiss!992))) (extraKeys!2219 (v!2695 (underlying!304 thiss!992))) (zeroValue!2276 (v!2695 (underlying!304 thiss!992))) (minValue!2276 (v!2695 (underlying!304 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355 #b00000000000000000000000000000001) (defaultEntry!2388 (v!2695 (underlying!304 thiss!992))))))))

(declare-fun b!90386 () Bool)

(declare-fun isEmpty!349 (ListLongMap!1501) Bool)

(assert (=> b!90386 (= e!58861 (isEmpty!349 lt!43618))))

(declare-fun bm!8810 () Bool)

(assert (=> bm!8810 (= call!8813 (getCurrentListMapNoExtraKeys!87 (_keys!4068 (v!2695 (underlying!304 thiss!992))) (_values!2371 (v!2695 (underlying!304 thiss!992))) (mask!6440 (v!2695 (underlying!304 thiss!992))) (extraKeys!2219 (v!2695 (underlying!304 thiss!992))) (zeroValue!2276 (v!2695 (underlying!304 thiss!992))) (minValue!2276 (v!2695 (underlying!304 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355 #b00000000000000000000000000000001) (defaultEntry!2388 (v!2695 (underlying!304 thiss!992)))))))

(declare-fun b!90387 () Bool)

(assert (=> b!90387 (= e!58864 e!58863)))

(declare-fun c!15048 () Bool)

(assert (=> b!90387 (= c!15048 e!58862)))

(declare-fun res!46113 () Bool)

(assert (=> b!90387 (=> (not res!46113) (not e!58862))))

(assert (=> b!90387 (= res!46113 (bvslt (bvadd #b00000000000000000000000000000001 from!355) (size!2189 (_keys!4068 (v!2695 (underlying!304 thiss!992))))))))

(declare-fun b!90388 () Bool)

(assert (=> b!90388 (= e!58863 e!58861)))

(declare-fun c!15049 () Bool)

(assert (=> b!90388 (= c!15049 (bvslt (bvadd #b00000000000000000000000000000001 from!355) (size!2189 (_keys!4068 (v!2695 (underlying!304 thiss!992))))))))

(declare-fun b!90389 () Bool)

(assert (=> b!90389 (= e!58865 (ListLongMap!1502 Nil!1565))))

(declare-fun b!90390 () Bool)

(declare-fun res!46111 () Bool)

(assert (=> b!90390 (=> (not res!46111) (not e!58864))))

(assert (=> b!90390 (= res!46111 (not (contains!773 lt!43618 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!23963 c!15046) b!90389))

(assert (= (and d!23963 (not c!15046)) b!90380))

(assert (= (and b!90380 c!15047) b!90381))

(assert (= (and b!90380 (not c!15047)) b!90383))

(assert (= (or b!90381 b!90383) bm!8810))

(assert (= (and d!23963 res!46110) b!90390))

(assert (= (and b!90390 res!46111) b!90387))

(assert (= (and b!90387 res!46113) b!90379))

(assert (= (and b!90387 c!15048) b!90382))

(assert (= (and b!90387 (not c!15048)) b!90388))

(assert (= (and b!90382 res!46112) b!90384))

(assert (= (and b!90388 c!15049) b!90385))

(assert (= (and b!90388 (not c!15049)) b!90386))

(declare-fun b_lambda!3987 () Bool)

(assert (=> (not b_lambda!3987) (not b!90381)))

(assert (=> b!90381 t!5354))

(declare-fun b_and!5429 () Bool)

(assert (= b_and!5425 (and (=> t!5354 result!3011) b_and!5429)))

(assert (=> b!90381 t!5356))

(declare-fun b_and!5431 () Bool)

(assert (= b_and!5427 (and (=> t!5356 result!3015) b_and!5431)))

(declare-fun b_lambda!3989 () Bool)

(assert (=> (not b_lambda!3989) (not b!90384)))

(assert (=> b!90384 t!5354))

(declare-fun b_and!5433 () Bool)

(assert (= b_and!5429 (and (=> t!5354 result!3011) b_and!5433)))

(assert (=> b!90384 t!5356))

(declare-fun b_and!5435 () Bool)

(assert (= b_and!5431 (and (=> t!5356 result!3015) b_and!5435)))

(declare-fun m!96781 () Bool)

(assert (=> d!23963 m!96781))

(assert (=> d!23963 m!96649))

(declare-fun m!96783 () Bool)

(assert (=> bm!8810 m!96783))

(assert (=> b!90384 m!96641))

(declare-fun m!96785 () Bool)

(assert (=> b!90384 m!96785))

(assert (=> b!90384 m!96641))

(assert (=> b!90384 m!96659))

(assert (=> b!90384 m!96525))

(assert (=> b!90384 m!96661))

(assert (=> b!90384 m!96659))

(assert (=> b!90384 m!96525))

(assert (=> b!90379 m!96641))

(assert (=> b!90379 m!96641))

(assert (=> b!90379 m!96643))

(declare-fun m!96787 () Bool)

(assert (=> b!90381 m!96787))

(assert (=> b!90381 m!96641))

(declare-fun m!96789 () Bool)

(assert (=> b!90381 m!96789))

(declare-fun m!96791 () Bool)

(assert (=> b!90381 m!96791))

(assert (=> b!90381 m!96659))

(assert (=> b!90381 m!96525))

(assert (=> b!90381 m!96661))

(assert (=> b!90381 m!96659))

(assert (=> b!90381 m!96525))

(declare-fun m!96793 () Bool)

(assert (=> b!90381 m!96793))

(assert (=> b!90381 m!96789))

(declare-fun m!96795 () Bool)

(assert (=> b!90390 m!96795))

(declare-fun m!96797 () Bool)

(assert (=> b!90386 m!96797))

(assert (=> b!90385 m!96783))

(assert (=> b!90380 m!96641))

(assert (=> b!90380 m!96641))

(assert (=> b!90380 m!96643))

(assert (=> b!90382 m!96641))

(assert (=> b!90382 m!96641))

(declare-fun m!96799 () Bool)

(assert (=> b!90382 m!96799))

(assert (=> b!90053 d!23963))

(declare-fun d!23965 () Bool)

(declare-fun e!58869 () Bool)

(assert (=> d!23965 e!58869))

(declare-fun res!46119 () Bool)

(assert (=> d!23965 (=> (not res!46119) (not e!58869))))

(declare-fun lt!43631 () ListLongMap!1501)

(assert (=> d!23965 (= res!46119 (contains!773 lt!43631 (_1!1140 lt!43365)))))

(declare-fun lt!43633 () List!1568)

(assert (=> d!23965 (= lt!43631 (ListLongMap!1502 lt!43633))))

(declare-fun lt!43632 () Unit!2698)

(declare-fun lt!43630 () Unit!2698)

(assert (=> d!23965 (= lt!43632 lt!43630)))

(assert (=> d!23965 (= (getValueByKey!142 lt!43633 (_1!1140 lt!43365)) (Some!147 (_2!1140 lt!43365)))))

(declare-fun lemmaContainsTupThenGetReturnValue!61 (List!1568 (_ BitVec 64) V!3059) Unit!2698)

(assert (=> d!23965 (= lt!43630 (lemmaContainsTupThenGetReturnValue!61 lt!43633 (_1!1140 lt!43365) (_2!1140 lt!43365)))))

(declare-fun insertStrictlySorted!63 (List!1568 (_ BitVec 64) V!3059) List!1568)

(assert (=> d!23965 (= lt!43633 (insertStrictlySorted!63 (toList!766 lt!43369) (_1!1140 lt!43365) (_2!1140 lt!43365)))))

(assert (=> d!23965 (= (+!123 lt!43369 lt!43365) lt!43631)))

(declare-fun b!90395 () Bool)

(declare-fun res!46118 () Bool)

(assert (=> b!90395 (=> (not res!46118) (not e!58869))))

(assert (=> b!90395 (= res!46118 (= (getValueByKey!142 (toList!766 lt!43631) (_1!1140 lt!43365)) (Some!147 (_2!1140 lt!43365))))))

(declare-fun b!90396 () Bool)

(declare-fun contains!775 (List!1568 tuple2!2260) Bool)

(assert (=> b!90396 (= e!58869 (contains!775 (toList!766 lt!43631) lt!43365))))

(assert (= (and d!23965 res!46119) b!90395))

(assert (= (and b!90395 res!46118) b!90396))

(declare-fun m!96801 () Bool)

(assert (=> d!23965 m!96801))

(declare-fun m!96803 () Bool)

(assert (=> d!23965 m!96803))

(declare-fun m!96805 () Bool)

(assert (=> d!23965 m!96805))

(declare-fun m!96807 () Bool)

(assert (=> d!23965 m!96807))

(declare-fun m!96809 () Bool)

(assert (=> b!90395 m!96809))

(declare-fun m!96811 () Bool)

(assert (=> b!90396 m!96811))

(assert (=> b!90053 d!23965))

(declare-fun d!23967 () Bool)

(declare-fun e!58870 () Bool)

(assert (=> d!23967 e!58870))

(declare-fun res!46121 () Bool)

(assert (=> d!23967 (=> (not res!46121) (not e!58870))))

(declare-fun lt!43635 () ListLongMap!1501)

(assert (=> d!23967 (= res!46121 (contains!773 lt!43635 (_1!1140 lt!43370)))))

(declare-fun lt!43637 () List!1568)

(assert (=> d!23967 (= lt!43635 (ListLongMap!1502 lt!43637))))

(declare-fun lt!43636 () Unit!2698)

(declare-fun lt!43634 () Unit!2698)

(assert (=> d!23967 (= lt!43636 lt!43634)))

(assert (=> d!23967 (= (getValueByKey!142 lt!43637 (_1!1140 lt!43370)) (Some!147 (_2!1140 lt!43370)))))

(assert (=> d!23967 (= lt!43634 (lemmaContainsTupThenGetReturnValue!61 lt!43637 (_1!1140 lt!43370) (_2!1140 lt!43370)))))

(assert (=> d!23967 (= lt!43637 (insertStrictlySorted!63 (toList!766 lt!43360) (_1!1140 lt!43370) (_2!1140 lt!43370)))))

(assert (=> d!23967 (= (+!123 lt!43360 lt!43370) lt!43635)))

(declare-fun b!90397 () Bool)

(declare-fun res!46120 () Bool)

(assert (=> b!90397 (=> (not res!46120) (not e!58870))))

(assert (=> b!90397 (= res!46120 (= (getValueByKey!142 (toList!766 lt!43635) (_1!1140 lt!43370)) (Some!147 (_2!1140 lt!43370))))))

(declare-fun b!90398 () Bool)

(assert (=> b!90398 (= e!58870 (contains!775 (toList!766 lt!43635) lt!43370))))

(assert (= (and d!23967 res!46121) b!90397))

(assert (= (and b!90397 res!46120) b!90398))

(declare-fun m!96813 () Bool)

(assert (=> d!23967 m!96813))

(declare-fun m!96815 () Bool)

(assert (=> d!23967 m!96815))

(declare-fun m!96817 () Bool)

(assert (=> d!23967 m!96817))

(declare-fun m!96819 () Bool)

(assert (=> d!23967 m!96819))

(declare-fun m!96821 () Bool)

(assert (=> b!90397 m!96821))

(declare-fun m!96823 () Bool)

(assert (=> b!90398 m!96823))

(assert (=> b!90053 d!23967))

(declare-fun d!23969 () Bool)

(declare-fun e!58871 () Bool)

(assert (=> d!23969 e!58871))

(declare-fun res!46123 () Bool)

(assert (=> d!23969 (=> (not res!46123) (not e!58871))))

(declare-fun lt!43639 () ListLongMap!1501)

(assert (=> d!23969 (= res!46123 (contains!773 lt!43639 (_1!1140 lt!43375)))))

(declare-fun lt!43641 () List!1568)

(assert (=> d!23969 (= lt!43639 (ListLongMap!1502 lt!43641))))

(declare-fun lt!43640 () Unit!2698)

(declare-fun lt!43638 () Unit!2698)

(assert (=> d!23969 (= lt!43640 lt!43638)))

(assert (=> d!23969 (= (getValueByKey!142 lt!43641 (_1!1140 lt!43375)) (Some!147 (_2!1140 lt!43375)))))

(assert (=> d!23969 (= lt!43638 (lemmaContainsTupThenGetReturnValue!61 lt!43641 (_1!1140 lt!43375) (_2!1140 lt!43375)))))

(assert (=> d!23969 (= lt!43641 (insertStrictlySorted!63 (toList!766 lt!43369) (_1!1140 lt!43375) (_2!1140 lt!43375)))))

(assert (=> d!23969 (= (+!123 lt!43369 lt!43375) lt!43639)))

(declare-fun b!90399 () Bool)

(declare-fun res!46122 () Bool)

(assert (=> b!90399 (=> (not res!46122) (not e!58871))))

(assert (=> b!90399 (= res!46122 (= (getValueByKey!142 (toList!766 lt!43639) (_1!1140 lt!43375)) (Some!147 (_2!1140 lt!43375))))))

(declare-fun b!90400 () Bool)

(assert (=> b!90400 (= e!58871 (contains!775 (toList!766 lt!43639) lt!43375))))

(assert (= (and d!23969 res!46123) b!90399))

(assert (= (and b!90399 res!46122) b!90400))

(declare-fun m!96825 () Bool)

(assert (=> d!23969 m!96825))

(declare-fun m!96827 () Bool)

(assert (=> d!23969 m!96827))

(declare-fun m!96829 () Bool)

(assert (=> d!23969 m!96829))

(declare-fun m!96831 () Bool)

(assert (=> d!23969 m!96831))

(declare-fun m!96833 () Bool)

(assert (=> b!90399 m!96833))

(declare-fun m!96835 () Bool)

(assert (=> b!90400 m!96835))

(assert (=> b!90053 d!23969))

(declare-fun d!23971 () Bool)

(declare-fun e!58872 () Bool)

(assert (=> d!23971 e!58872))

(declare-fun res!46125 () Bool)

(assert (=> d!23971 (=> (not res!46125) (not e!58872))))

(declare-fun lt!43643 () ListLongMap!1501)

(assert (=> d!23971 (= res!46125 (contains!773 lt!43643 (_1!1140 lt!43370)))))

(declare-fun lt!43645 () List!1568)

(assert (=> d!23971 (= lt!43643 (ListLongMap!1502 lt!43645))))

(declare-fun lt!43644 () Unit!2698)

(declare-fun lt!43642 () Unit!2698)

(assert (=> d!23971 (= lt!43644 lt!43642)))

(assert (=> d!23971 (= (getValueByKey!142 lt!43645 (_1!1140 lt!43370)) (Some!147 (_2!1140 lt!43370)))))

(assert (=> d!23971 (= lt!43642 (lemmaContainsTupThenGetReturnValue!61 lt!43645 (_1!1140 lt!43370) (_2!1140 lt!43370)))))

(assert (=> d!23971 (= lt!43645 (insertStrictlySorted!63 (toList!766 lt!43362) (_1!1140 lt!43370) (_2!1140 lt!43370)))))

(assert (=> d!23971 (= (+!123 lt!43362 lt!43370) lt!43643)))

(declare-fun b!90401 () Bool)

(declare-fun res!46124 () Bool)

(assert (=> b!90401 (=> (not res!46124) (not e!58872))))

(assert (=> b!90401 (= res!46124 (= (getValueByKey!142 (toList!766 lt!43643) (_1!1140 lt!43370)) (Some!147 (_2!1140 lt!43370))))))

(declare-fun b!90402 () Bool)

(assert (=> b!90402 (= e!58872 (contains!775 (toList!766 lt!43643) lt!43370))))

(assert (= (and d!23971 res!46125) b!90401))

(assert (= (and b!90401 res!46124) b!90402))

(declare-fun m!96837 () Bool)

(assert (=> d!23971 m!96837))

(declare-fun m!96839 () Bool)

(assert (=> d!23971 m!96839))

(declare-fun m!96841 () Bool)

(assert (=> d!23971 m!96841))

(declare-fun m!96843 () Bool)

(assert (=> d!23971 m!96843))

(declare-fun m!96845 () Bool)

(assert (=> b!90401 m!96845))

(declare-fun m!96847 () Bool)

(assert (=> b!90402 m!96847))

(assert (=> b!90053 d!23971))

(declare-fun d!23973 () Bool)

(declare-fun e!58873 () Bool)

(assert (=> d!23973 e!58873))

(declare-fun res!46127 () Bool)

(assert (=> d!23973 (=> (not res!46127) (not e!58873))))

(declare-fun lt!43647 () ListLongMap!1501)

(assert (=> d!23973 (= res!46127 (contains!773 lt!43647 (_1!1140 lt!43375)))))

(declare-fun lt!43649 () List!1568)

(assert (=> d!23973 (= lt!43647 (ListLongMap!1502 lt!43649))))

(declare-fun lt!43648 () Unit!2698)

(declare-fun lt!43646 () Unit!2698)

(assert (=> d!23973 (= lt!43648 lt!43646)))

(assert (=> d!23973 (= (getValueByKey!142 lt!43649 (_1!1140 lt!43375)) (Some!147 (_2!1140 lt!43375)))))

(assert (=> d!23973 (= lt!43646 (lemmaContainsTupThenGetReturnValue!61 lt!43649 (_1!1140 lt!43375) (_2!1140 lt!43375)))))

(assert (=> d!23973 (= lt!43649 (insertStrictlySorted!63 (toList!766 lt!43362) (_1!1140 lt!43375) (_2!1140 lt!43375)))))

(assert (=> d!23973 (= (+!123 lt!43362 lt!43375) lt!43647)))

(declare-fun b!90403 () Bool)

(declare-fun res!46126 () Bool)

(assert (=> b!90403 (=> (not res!46126) (not e!58873))))

(assert (=> b!90403 (= res!46126 (= (getValueByKey!142 (toList!766 lt!43647) (_1!1140 lt!43375)) (Some!147 (_2!1140 lt!43375))))))

(declare-fun b!90404 () Bool)

(assert (=> b!90404 (= e!58873 (contains!775 (toList!766 lt!43647) lt!43375))))

(assert (= (and d!23973 res!46127) b!90403))

(assert (= (and b!90403 res!46126) b!90404))

(declare-fun m!96849 () Bool)

(assert (=> d!23973 m!96849))

(declare-fun m!96851 () Bool)

(assert (=> d!23973 m!96851))

(declare-fun m!96853 () Bool)

(assert (=> d!23973 m!96853))

(declare-fun m!96855 () Bool)

(assert (=> d!23973 m!96855))

(declare-fun m!96857 () Bool)

(assert (=> b!90403 m!96857))

(declare-fun m!96859 () Bool)

(assert (=> b!90404 m!96859))

(assert (=> b!90053 d!23973))

(declare-fun d!23975 () Bool)

(declare-fun e!58874 () Bool)

(assert (=> d!23975 e!58874))

(declare-fun res!46129 () Bool)

(assert (=> d!23975 (=> (not res!46129) (not e!58874))))

(declare-fun lt!43651 () ListLongMap!1501)

(assert (=> d!23975 (= res!46129 (contains!773 lt!43651 (_1!1140 lt!43375)))))

(declare-fun lt!43653 () List!1568)

(assert (=> d!23975 (= lt!43651 (ListLongMap!1502 lt!43653))))

(declare-fun lt!43652 () Unit!2698)

(declare-fun lt!43650 () Unit!2698)

(assert (=> d!23975 (= lt!43652 lt!43650)))

(assert (=> d!23975 (= (getValueByKey!142 lt!43653 (_1!1140 lt!43375)) (Some!147 (_2!1140 lt!43375)))))

(assert (=> d!23975 (= lt!43650 (lemmaContainsTupThenGetReturnValue!61 lt!43653 (_1!1140 lt!43375) (_2!1140 lt!43375)))))

(assert (=> d!23975 (= lt!43653 (insertStrictlySorted!63 (toList!766 (+!123 lt!43362 lt!43370)) (_1!1140 lt!43375) (_2!1140 lt!43375)))))

(assert (=> d!23975 (= (+!123 (+!123 lt!43362 lt!43370) lt!43375) lt!43651)))

(declare-fun b!90405 () Bool)

(declare-fun res!46128 () Bool)

(assert (=> b!90405 (=> (not res!46128) (not e!58874))))

(assert (=> b!90405 (= res!46128 (= (getValueByKey!142 (toList!766 lt!43651) (_1!1140 lt!43375)) (Some!147 (_2!1140 lt!43375))))))

(declare-fun b!90406 () Bool)

(assert (=> b!90406 (= e!58874 (contains!775 (toList!766 lt!43651) lt!43375))))

(assert (= (and d!23975 res!46129) b!90405))

(assert (= (and b!90405 res!46128) b!90406))

(declare-fun m!96861 () Bool)

(assert (=> d!23975 m!96861))

(declare-fun m!96863 () Bool)

(assert (=> d!23975 m!96863))

(declare-fun m!96865 () Bool)

(assert (=> d!23975 m!96865))

(declare-fun m!96867 () Bool)

(assert (=> d!23975 m!96867))

(declare-fun m!96869 () Bool)

(assert (=> b!90405 m!96869))

(declare-fun m!96871 () Bool)

(assert (=> b!90406 m!96871))

(assert (=> b!90053 d!23975))

(declare-fun d!23977 () Bool)

(declare-fun res!46130 () Bool)

(declare-fun e!58875 () Bool)

(assert (=> d!23977 (=> (not res!46130) (not e!58875))))

(assert (=> d!23977 (= res!46130 (simpleValid!60 (_2!1139 lt!43361)))))

(assert (=> d!23977 (= (valid!343 (_2!1139 lt!43361)) e!58875)))

(declare-fun b!90407 () Bool)

(declare-fun res!46131 () Bool)

(assert (=> b!90407 (=> (not res!46131) (not e!58875))))

(assert (=> b!90407 (= res!46131 (= (arrayCountValidKeys!0 (_keys!4068 (_2!1139 lt!43361)) #b00000000000000000000000000000000 (size!2189 (_keys!4068 (_2!1139 lt!43361)))) (_size!439 (_2!1139 lt!43361))))))

(declare-fun b!90408 () Bool)

(declare-fun res!46132 () Bool)

(assert (=> b!90408 (=> (not res!46132) (not e!58875))))

(assert (=> b!90408 (= res!46132 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!4068 (_2!1139 lt!43361)) (mask!6440 (_2!1139 lt!43361))))))

(declare-fun b!90409 () Bool)

(assert (=> b!90409 (= e!58875 (arrayNoDuplicates!0 (_keys!4068 (_2!1139 lt!43361)) #b00000000000000000000000000000000 Nil!1564))))

(assert (= (and d!23977 res!46130) b!90407))

(assert (= (and b!90407 res!46131) b!90408))

(assert (= (and b!90408 res!46132) b!90409))

(declare-fun m!96873 () Bool)

(assert (=> d!23977 m!96873))

(declare-fun m!96875 () Bool)

(assert (=> b!90407 m!96875))

(declare-fun m!96877 () Bool)

(assert (=> b!90408 m!96877))

(declare-fun m!96879 () Bool)

(assert (=> b!90409 m!96879))

(assert (=> b!90053 d!23977))

(declare-fun d!23979 () Bool)

(declare-fun e!58876 () Bool)

(assert (=> d!23979 e!58876))

(declare-fun res!46134 () Bool)

(assert (=> d!23979 (=> (not res!46134) (not e!58876))))

(declare-fun lt!43655 () ListLongMap!1501)

(assert (=> d!23979 (= res!46134 (contains!773 lt!43655 (_1!1140 lt!43365)))))

(declare-fun lt!43657 () List!1568)

(assert (=> d!23979 (= lt!43655 (ListLongMap!1502 lt!43657))))

(declare-fun lt!43656 () Unit!2698)

(declare-fun lt!43654 () Unit!2698)

(assert (=> d!23979 (= lt!43656 lt!43654)))

(assert (=> d!23979 (= (getValueByKey!142 lt!43657 (_1!1140 lt!43365)) (Some!147 (_2!1140 lt!43365)))))

(assert (=> d!23979 (= lt!43654 (lemmaContainsTupThenGetReturnValue!61 lt!43657 (_1!1140 lt!43365) (_2!1140 lt!43365)))))

(assert (=> d!23979 (= lt!43657 (insertStrictlySorted!63 (toList!766 lt!43366) (_1!1140 lt!43365) (_2!1140 lt!43365)))))

(assert (=> d!23979 (= (+!123 lt!43366 lt!43365) lt!43655)))

(declare-fun b!90410 () Bool)

(declare-fun res!46133 () Bool)

(assert (=> b!90410 (=> (not res!46133) (not e!58876))))

(assert (=> b!90410 (= res!46133 (= (getValueByKey!142 (toList!766 lt!43655) (_1!1140 lt!43365)) (Some!147 (_2!1140 lt!43365))))))

(declare-fun b!90411 () Bool)

(assert (=> b!90411 (= e!58876 (contains!775 (toList!766 lt!43655) lt!43365))))

(assert (= (and d!23979 res!46134) b!90410))

(assert (= (and b!90410 res!46133) b!90411))

(declare-fun m!96881 () Bool)

(assert (=> d!23979 m!96881))

(declare-fun m!96883 () Bool)

(assert (=> d!23979 m!96883))

(declare-fun m!96885 () Bool)

(assert (=> d!23979 m!96885))

(declare-fun m!96887 () Bool)

(assert (=> d!23979 m!96887))

(declare-fun m!96889 () Bool)

(assert (=> b!90410 m!96889))

(declare-fun m!96891 () Bool)

(assert (=> b!90411 m!96891))

(assert (=> b!90053 d!23979))

(declare-fun d!23981 () Bool)

(assert (=> d!23981 (= (+!123 (+!123 lt!43369 (tuple2!2261 (select (arr!1942 (_keys!4068 (v!2695 (underlying!304 thiss!992)))) from!355) lt!43358)) (tuple2!2261 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2276 (v!2695 (underlying!304 thiss!992))))) (+!123 (+!123 lt!43369 (tuple2!2261 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2276 (v!2695 (underlying!304 thiss!992))))) (tuple2!2261 (select (arr!1942 (_keys!4068 (v!2695 (underlying!304 thiss!992)))) from!355) lt!43358)))))

(declare-fun lt!43658 () Unit!2698)

(assert (=> d!23981 (= lt!43658 (choose!548 lt!43369 (select (arr!1942 (_keys!4068 (v!2695 (underlying!304 thiss!992)))) from!355) lt!43358 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2276 (v!2695 (underlying!304 thiss!992)))))))

(assert (=> d!23981 (not (= (select (arr!1942 (_keys!4068 (v!2695 (underlying!304 thiss!992)))) from!355) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!23981 (= (addCommutativeForDiffKeys!42 lt!43369 (select (arr!1942 (_keys!4068 (v!2695 (underlying!304 thiss!992)))) from!355) lt!43358 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2276 (v!2695 (underlying!304 thiss!992)))) lt!43658)))

(declare-fun bs!3765 () Bool)

(assert (= bs!3765 d!23981))

(assert (=> bs!3765 m!96501))

(declare-fun m!96893 () Bool)

(assert (=> bs!3765 m!96893))

(declare-fun m!96895 () Bool)

(assert (=> bs!3765 m!96895))

(declare-fun m!96897 () Bool)

(assert (=> bs!3765 m!96897))

(assert (=> bs!3765 m!96897))

(declare-fun m!96899 () Bool)

(assert (=> bs!3765 m!96899))

(assert (=> bs!3765 m!96895))

(declare-fun m!96901 () Bool)

(assert (=> bs!3765 m!96901))

(assert (=> b!90053 d!23981))

(declare-fun condMapEmpty!3501 () Bool)

(declare-fun mapDefault!3501 () ValueCell!936)

(assert (=> mapNonEmpty!3492 (= condMapEmpty!3501 (= mapRest!3492 ((as const (Array (_ BitVec 32) ValueCell!936)) mapDefault!3501)))))

(declare-fun e!58882 () Bool)

(declare-fun mapRes!3501 () Bool)

(assert (=> mapNonEmpty!3492 (= tp!9101 (and e!58882 mapRes!3501))))

(declare-fun b!90418 () Bool)

(declare-fun e!58881 () Bool)

(assert (=> b!90418 (= e!58881 tp_is_empty!2559)))

(declare-fun mapNonEmpty!3501 () Bool)

(declare-fun tp!9117 () Bool)

(assert (=> mapNonEmpty!3501 (= mapRes!3501 (and tp!9117 e!58881))))

(declare-fun mapKey!3501 () (_ BitVec 32))

(declare-fun mapValue!3501 () ValueCell!936)

(declare-fun mapRest!3501 () (Array (_ BitVec 32) ValueCell!936))

(assert (=> mapNonEmpty!3501 (= mapRest!3492 (store mapRest!3501 mapKey!3501 mapValue!3501))))

(declare-fun b!90419 () Bool)

(assert (=> b!90419 (= e!58882 tp_is_empty!2559)))

(declare-fun mapIsEmpty!3501 () Bool)

(assert (=> mapIsEmpty!3501 mapRes!3501))

(assert (= (and mapNonEmpty!3492 condMapEmpty!3501) mapIsEmpty!3501))

(assert (= (and mapNonEmpty!3492 (not condMapEmpty!3501)) mapNonEmpty!3501))

(assert (= (and mapNonEmpty!3501 ((_ is ValueCellFull!936) mapValue!3501)) b!90418))

(assert (= (and mapNonEmpty!3492 ((_ is ValueCellFull!936) mapDefault!3501)) b!90419))

(declare-fun m!96903 () Bool)

(assert (=> mapNonEmpty!3501 m!96903))

(declare-fun condMapEmpty!3502 () Bool)

(declare-fun mapDefault!3502 () ValueCell!936)

(assert (=> mapNonEmpty!3491 (= condMapEmpty!3502 (= mapRest!3491 ((as const (Array (_ BitVec 32) ValueCell!936)) mapDefault!3502)))))

(declare-fun e!58884 () Bool)

(declare-fun mapRes!3502 () Bool)

(assert (=> mapNonEmpty!3491 (= tp!9100 (and e!58884 mapRes!3502))))

(declare-fun b!90420 () Bool)

(declare-fun e!58883 () Bool)

(assert (=> b!90420 (= e!58883 tp_is_empty!2559)))

(declare-fun mapNonEmpty!3502 () Bool)

(declare-fun tp!9118 () Bool)

(assert (=> mapNonEmpty!3502 (= mapRes!3502 (and tp!9118 e!58883))))

(declare-fun mapRest!3502 () (Array (_ BitVec 32) ValueCell!936))

(declare-fun mapKey!3502 () (_ BitVec 32))

(declare-fun mapValue!3502 () ValueCell!936)

(assert (=> mapNonEmpty!3502 (= mapRest!3491 (store mapRest!3502 mapKey!3502 mapValue!3502))))

(declare-fun b!90421 () Bool)

(assert (=> b!90421 (= e!58884 tp_is_empty!2559)))

(declare-fun mapIsEmpty!3502 () Bool)

(assert (=> mapIsEmpty!3502 mapRes!3502))

(assert (= (and mapNonEmpty!3491 condMapEmpty!3502) mapIsEmpty!3502))

(assert (= (and mapNonEmpty!3491 (not condMapEmpty!3502)) mapNonEmpty!3502))

(assert (= (and mapNonEmpty!3502 ((_ is ValueCellFull!936) mapValue!3502)) b!90420))

(assert (= (and mapNonEmpty!3491 ((_ is ValueCellFull!936) mapDefault!3502)) b!90421))

(declare-fun m!96905 () Bool)

(assert (=> mapNonEmpty!3502 m!96905))

(declare-fun b_lambda!3991 () Bool)

(assert (= b_lambda!3985 (or (and b!90055 b_free!2285) (and b!90048 b_free!2287 (= (defaultEntry!2388 newMap!16) (defaultEntry!2388 (v!2695 (underlying!304 thiss!992))))) b_lambda!3991)))

(declare-fun b_lambda!3993 () Bool)

(assert (= b_lambda!3987 (or (and b!90055 b_free!2285) (and b!90048 b_free!2287 (= (defaultEntry!2388 newMap!16) (defaultEntry!2388 (v!2695 (underlying!304 thiss!992))))) b_lambda!3993)))

(declare-fun b_lambda!3995 () Bool)

(assert (= b_lambda!3989 (or (and b!90055 b_free!2285) (and b!90048 b_free!2287 (= (defaultEntry!2388 newMap!16) (defaultEntry!2388 (v!2695 (underlying!304 thiss!992))))) b_lambda!3995)))

(check-sat (not b_lambda!3995) (not b!90399) (not b!90127) (not b!90295) (not b!90397) (not b_lambda!3991) (not b!90402) (not b!90385) (not b!90410) (not bm!8804) (not d!23947) (not d!23929) (not bm!8732) (not b!90384) (not d!23961) (not b!90292) (not bm!8727) (not d!23965) (not b_lambda!3993) (not b!90193) (not bm!8786) (not mapNonEmpty!3501) (not b_next!2287) (not b!90403) (not b!90205) (not b!90405) (not bm!8801) (not bm!8782) (not b!90379) (not b!90192) (not b!90305) (not bm!8793) (not d!23953) (not b!90128) (not bm!8800) (not b!90298) (not d!23971) (not b!90398) (not b!90188) (not b!90386) (not bm!8726) (not b!90135) (not bm!8783) (not b!90396) (not d!23981) (not b!90338) (not b!90198) b_and!5433 (not bm!8807) (not d!23967) (not b_next!2285) (not d!23933) (not b!90185) (not b!90406) (not bm!8789) (not b!90134) (not d!23951) (not b!90179) (not bm!8810) (not d!23949) (not bm!8798) (not bm!8731) (not b!90411) (not bm!8797) (not b!90407) (not bm!8803) (not d!23943) (not d!23975) (not b!90321) (not bm!8795) (not b!90207) (not d!23963) (not b!90352) (not mapNonEmpty!3502) (not b!90408) (not d!23979) (not b!90404) (not b!90382) (not b!90395) (not b_lambda!3983) (not b!90187) (not b!90300) (not b!90354) (not d!23945) tp_is_empty!2559 (not b!90381) (not b!90380) (not d!23977) (not b!90390) b_and!5435 (not b!90191) (not b!90129) (not b!90307) (not d!23973) (not b!90333) (not b!90350) (not b!90400) (not b!90409) (not b!90401) (not d!23957) (not d!23969))
(check-sat b_and!5433 b_and!5435 (not b_next!2285) (not b_next!2287))

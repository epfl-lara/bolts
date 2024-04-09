; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!14600 () Bool)

(assert start!14600)

(declare-fun b!138287 () Bool)

(declare-fun b_free!2993 () Bool)

(declare-fun b_next!2993 () Bool)

(assert (=> b!138287 (= b_free!2993 (not b_next!2993))))

(declare-fun tp!11442 () Bool)

(declare-fun b_and!8641 () Bool)

(assert (=> b!138287 (= tp!11442 b_and!8641)))

(declare-fun b!138277 () Bool)

(declare-fun b_free!2995 () Bool)

(declare-fun b_next!2995 () Bool)

(assert (=> b!138277 (= b_free!2995 (not b_next!2995))))

(declare-fun tp!11441 () Bool)

(declare-fun b_and!8643 () Bool)

(assert (=> b!138277 (= tp!11441 b_and!8643)))

(declare-fun res!66224 () Bool)

(declare-fun e!90143 () Bool)

(assert (=> start!14600 (=> (not res!66224) (not e!90143))))

(declare-datatypes ((V!3531 0))(
  ( (V!3532 (val!1501 Int)) )
))
(declare-datatypes ((array!4856 0))(
  ( (array!4857 (arr!2296 (Array (_ BitVec 32) (_ BitVec 64))) (size!2567 (_ BitVec 32))) )
))
(declare-datatypes ((ValueCell!1113 0))(
  ( (ValueCellFull!1113 (v!3253 V!3531)) (EmptyCell!1113) )
))
(declare-datatypes ((array!4858 0))(
  ( (array!4859 (arr!2297 (Array (_ BitVec 32) ValueCell!1113)) (size!2568 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1134 0))(
  ( (LongMapFixedSize!1135 (defaultEntry!2919 Int) (mask!7249 (_ BitVec 32)) (extraKeys!2676 (_ BitVec 32)) (zeroValue!2770 V!3531) (minValue!2770 V!3531) (_size!616 (_ BitVec 32)) (_keys!4676 array!4856) (_values!2902 array!4858) (_vacant!616 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!922 0))(
  ( (Cell!923 (v!3254 LongMapFixedSize!1134)) )
))
(declare-datatypes ((LongMap!922 0))(
  ( (LongMap!923 (underlying!472 Cell!922)) )
))
(declare-fun thiss!992 () LongMap!922)

(declare-fun valid!544 (LongMap!922) Bool)

(assert (=> start!14600 (= res!66224 (valid!544 thiss!992))))

(assert (=> start!14600 e!90143))

(declare-fun e!90155 () Bool)

(assert (=> start!14600 e!90155))

(assert (=> start!14600 true))

(declare-fun e!90149 () Bool)

(assert (=> start!14600 e!90149))

(declare-fun mapIsEmpty!4769 () Bool)

(declare-fun mapRes!4769 () Bool)

(assert (=> mapIsEmpty!4769 mapRes!4769))

(declare-fun b!138271 () Bool)

(declare-fun res!66222 () Bool)

(assert (=> b!138271 (=> (not res!66222) (not e!90143))))

(declare-fun from!355 () (_ BitVec 32))

(assert (=> b!138271 (= res!66222 (and (bvsge from!355 #b00000000000000000000000000000000) (bvslt from!355 (size!2567 (_keys!4676 (v!3254 (underlying!472 thiss!992)))))))))

(declare-fun b!138272 () Bool)

(declare-fun e!90151 () Bool)

(declare-fun e!90154 () Bool)

(assert (=> b!138272 (= e!90151 (not e!90154))))

(declare-fun res!66223 () Bool)

(assert (=> b!138272 (=> res!66223 e!90154)))

(assert (=> b!138272 (= res!66223 (or (bvsge (size!2567 (_keys!4676 (v!3254 (underlying!472 thiss!992)))) #b01111111111111111111111111111111) (bvsgt #b00000000000000000000000000000000 (size!2567 (_keys!4676 (v!3254 (underlying!472 thiss!992))))) (bvsgt from!355 (size!2567 (_keys!4676 (v!3254 (underlying!472 thiss!992)))))))))

(declare-fun arrayContainsKey!0 (array!4856 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!138272 (arrayContainsKey!0 (_keys!4676 (v!3254 (underlying!472 thiss!992))) (select (arr!2296 (_keys!4676 (v!3254 (underlying!472 thiss!992)))) from!355) (bvadd #b00000000000000000000000000000001 from!355))))

(declare-datatypes ((Unit!4366 0))(
  ( (Unit!4367) )
))
(declare-fun lt!72299 () Unit!4366)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!140 (array!4856 array!4858 (_ BitVec 32) (_ BitVec 32) V!3531 V!3531 (_ BitVec 64) (_ BitVec 32) Int) Unit!4366)

(assert (=> b!138272 (= lt!72299 (lemmaListMapContainsThenArrayContainsFrom!140 (_keys!4676 (v!3254 (underlying!472 thiss!992))) (_values!2902 (v!3254 (underlying!472 thiss!992))) (mask!7249 (v!3254 (underlying!472 thiss!992))) (extraKeys!2676 (v!3254 (underlying!472 thiss!992))) (zeroValue!2770 (v!3254 (underlying!472 thiss!992))) (minValue!2770 (v!3254 (underlying!472 thiss!992))) (select (arr!2296 (_keys!4676 (v!3254 (underlying!472 thiss!992)))) from!355) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2919 (v!3254 (underlying!472 thiss!992)))))))

(declare-fun b!138273 () Bool)

(declare-fun e!90150 () Bool)

(declare-fun e!90140 () Bool)

(assert (=> b!138273 (= e!90150 (and e!90140 mapRes!4769))))

(declare-fun condMapEmpty!4770 () Bool)

(declare-fun mapDefault!4770 () ValueCell!1113)

(assert (=> b!138273 (= condMapEmpty!4770 (= (arr!2297 (_values!2902 (v!3254 (underlying!472 thiss!992)))) ((as const (Array (_ BitVec 32) ValueCell!1113)) mapDefault!4770)))))

(declare-fun mapIsEmpty!4770 () Bool)

(declare-fun mapRes!4770 () Bool)

(assert (=> mapIsEmpty!4770 mapRes!4770))

(declare-fun b!138274 () Bool)

(declare-fun e!90142 () Bool)

(declare-fun tp_is_empty!2913 () Bool)

(assert (=> b!138274 (= e!90142 tp_is_empty!2913)))

(declare-fun b!138275 () Bool)

(declare-fun e!90145 () Bool)

(assert (=> b!138275 (= e!90155 e!90145)))

(declare-fun b!138276 () Bool)

(declare-fun res!66220 () Bool)

(assert (=> b!138276 (=> (not res!66220) (not e!90143))))

(declare-fun newMap!16 () LongMapFixedSize!1134)

(assert (=> b!138276 (= res!66220 (bvsge (bvadd #b00000000000000000000000000000001 (mask!7249 newMap!16)) (_size!616 (v!3254 (underlying!472 thiss!992)))))))

(declare-fun e!90152 () Bool)

(declare-fun array_inv!1419 (array!4856) Bool)

(declare-fun array_inv!1420 (array!4858) Bool)

(assert (=> b!138277 (= e!90149 (and tp!11441 tp_is_empty!2913 (array_inv!1419 (_keys!4676 newMap!16)) (array_inv!1420 (_values!2902 newMap!16)) e!90152))))

(declare-fun b!138278 () Bool)

(declare-fun e!90153 () Bool)

(assert (=> b!138278 (= e!90143 e!90153)))

(declare-fun res!66225 () Bool)

(assert (=> b!138278 (=> (not res!66225) (not e!90153))))

(declare-datatypes ((tuple2!2650 0))(
  ( (tuple2!2651 (_1!1335 (_ BitVec 64)) (_2!1335 V!3531)) )
))
(declare-datatypes ((List!1749 0))(
  ( (Nil!1746) (Cons!1745 (h!2352 tuple2!2650) (t!6305 List!1749)) )
))
(declare-datatypes ((ListLongMap!1729 0))(
  ( (ListLongMap!1730 (toList!880 List!1749)) )
))
(declare-fun lt!72301 () ListLongMap!1729)

(declare-fun lt!72302 () ListLongMap!1729)

(assert (=> b!138278 (= res!66225 (and (= lt!72302 lt!72301) (not (= (select (arr!2296 (_keys!4676 (v!3254 (underlying!472 thiss!992)))) from!355) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!2296 (_keys!4676 (v!3254 (underlying!472 thiss!992)))) from!355) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun map!1426 (LongMapFixedSize!1134) ListLongMap!1729)

(assert (=> b!138278 (= lt!72301 (map!1426 newMap!16))))

(declare-fun getCurrentListMap!549 (array!4856 array!4858 (_ BitVec 32) (_ BitVec 32) V!3531 V!3531 (_ BitVec 32) Int) ListLongMap!1729)

(assert (=> b!138278 (= lt!72302 (getCurrentListMap!549 (_keys!4676 (v!3254 (underlying!472 thiss!992))) (_values!2902 (v!3254 (underlying!472 thiss!992))) (mask!7249 (v!3254 (underlying!472 thiss!992))) (extraKeys!2676 (v!3254 (underlying!472 thiss!992))) (zeroValue!2770 (v!3254 (underlying!472 thiss!992))) (minValue!2770 (v!3254 (underlying!472 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2919 (v!3254 (underlying!472 thiss!992)))))))

(declare-fun b!138279 () Bool)

(declare-datatypes ((List!1750 0))(
  ( (Nil!1747) (Cons!1746 (h!2353 (_ BitVec 64)) (t!6306 List!1750)) )
))
(declare-fun arrayNoDuplicates!0 (array!4856 (_ BitVec 32) List!1750) Bool)

(assert (=> b!138279 (= e!90154 (arrayNoDuplicates!0 (_keys!4676 (v!3254 (underlying!472 thiss!992))) #b00000000000000000000000000000000 Nil!1747))))

(declare-fun b!138280 () Bool)

(assert (=> b!138280 (= e!90140 tp_is_empty!2913)))

(declare-fun b!138281 () Bool)

(declare-fun e!90148 () Bool)

(assert (=> b!138281 (= e!90148 tp_is_empty!2913)))

(declare-fun mapNonEmpty!4769 () Bool)

(declare-fun tp!11440 () Bool)

(declare-fun e!90141 () Bool)

(assert (=> mapNonEmpty!4769 (= mapRes!4769 (and tp!11440 e!90141))))

(declare-fun mapRest!4769 () (Array (_ BitVec 32) ValueCell!1113))

(declare-fun mapValue!4770 () ValueCell!1113)

(declare-fun mapKey!4769 () (_ BitVec 32))

(assert (=> mapNonEmpty!4769 (= (arr!2297 (_values!2902 (v!3254 (underlying!472 thiss!992)))) (store mapRest!4769 mapKey!4769 mapValue!4770))))

(declare-fun b!138282 () Bool)

(declare-fun e!90147 () Bool)

(assert (=> b!138282 (= e!90145 e!90147)))

(declare-fun b!138283 () Bool)

(assert (=> b!138283 (= e!90153 e!90151)))

(declare-fun res!66226 () Bool)

(assert (=> b!138283 (=> (not res!66226) (not e!90151))))

(declare-fun contains!910 (ListLongMap!1729 (_ BitVec 64)) Bool)

(assert (=> b!138283 (= res!66226 (contains!910 lt!72301 (select (arr!2296 (_keys!4676 (v!3254 (underlying!472 thiss!992)))) from!355)))))

(declare-datatypes ((tuple2!2652 0))(
  ( (tuple2!2653 (_1!1336 Bool) (_2!1336 LongMapFixedSize!1134)) )
))
(declare-fun lt!72300 () tuple2!2652)

(declare-fun update!202 (LongMapFixedSize!1134 (_ BitVec 64) V!3531) tuple2!2652)

(declare-fun get!1516 (ValueCell!1113 V!3531) V!3531)

(declare-fun dynLambda!435 (Int (_ BitVec 64)) V!3531)

(assert (=> b!138283 (= lt!72300 (update!202 newMap!16 (select (arr!2296 (_keys!4676 (v!3254 (underlying!472 thiss!992)))) from!355) (get!1516 (select (arr!2297 (_values!2902 (v!3254 (underlying!472 thiss!992)))) from!355) (dynLambda!435 (defaultEntry!2919 (v!3254 (underlying!472 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun mapNonEmpty!4770 () Bool)

(declare-fun tp!11439 () Bool)

(assert (=> mapNonEmpty!4770 (= mapRes!4770 (and tp!11439 e!90142))))

(declare-fun mapValue!4769 () ValueCell!1113)

(declare-fun mapRest!4770 () (Array (_ BitVec 32) ValueCell!1113))

(declare-fun mapKey!4770 () (_ BitVec 32))

(assert (=> mapNonEmpty!4770 (= (arr!2297 (_values!2902 newMap!16)) (store mapRest!4770 mapKey!4770 mapValue!4769))))

(declare-fun b!138284 () Bool)

(declare-fun res!66221 () Bool)

(assert (=> b!138284 (=> (not res!66221) (not e!90143))))

(declare-fun valid!545 (LongMapFixedSize!1134) Bool)

(assert (=> b!138284 (= res!66221 (valid!545 newMap!16))))

(declare-fun b!138285 () Bool)

(assert (=> b!138285 (= e!90141 tp_is_empty!2913)))

(declare-fun b!138286 () Bool)

(assert (=> b!138286 (= e!90152 (and e!90148 mapRes!4770))))

(declare-fun condMapEmpty!4769 () Bool)

(declare-fun mapDefault!4769 () ValueCell!1113)

(assert (=> b!138286 (= condMapEmpty!4769 (= (arr!2297 (_values!2902 newMap!16)) ((as const (Array (_ BitVec 32) ValueCell!1113)) mapDefault!4769)))))

(assert (=> b!138287 (= e!90147 (and tp!11442 tp_is_empty!2913 (array_inv!1419 (_keys!4676 (v!3254 (underlying!472 thiss!992)))) (array_inv!1420 (_values!2902 (v!3254 (underlying!472 thiss!992)))) e!90150))))

(assert (= (and start!14600 res!66224) b!138271))

(assert (= (and b!138271 res!66222) b!138284))

(assert (= (and b!138284 res!66221) b!138276))

(assert (= (and b!138276 res!66220) b!138278))

(assert (= (and b!138278 res!66225) b!138283))

(assert (= (and b!138283 res!66226) b!138272))

(assert (= (and b!138272 (not res!66223)) b!138279))

(assert (= (and b!138273 condMapEmpty!4770) mapIsEmpty!4769))

(assert (= (and b!138273 (not condMapEmpty!4770)) mapNonEmpty!4769))

(get-info :version)

(assert (= (and mapNonEmpty!4769 ((_ is ValueCellFull!1113) mapValue!4770)) b!138285))

(assert (= (and b!138273 ((_ is ValueCellFull!1113) mapDefault!4770)) b!138280))

(assert (= b!138287 b!138273))

(assert (= b!138282 b!138287))

(assert (= b!138275 b!138282))

(assert (= start!14600 b!138275))

(assert (= (and b!138286 condMapEmpty!4769) mapIsEmpty!4770))

(assert (= (and b!138286 (not condMapEmpty!4769)) mapNonEmpty!4770))

(assert (= (and mapNonEmpty!4770 ((_ is ValueCellFull!1113) mapValue!4769)) b!138274))

(assert (= (and b!138286 ((_ is ValueCellFull!1113) mapDefault!4769)) b!138281))

(assert (= b!138277 b!138286))

(assert (= start!14600 b!138277))

(declare-fun b_lambda!6231 () Bool)

(assert (=> (not b_lambda!6231) (not b!138283)))

(declare-fun t!6302 () Bool)

(declare-fun tb!2517 () Bool)

(assert (=> (and b!138287 (= (defaultEntry!2919 (v!3254 (underlying!472 thiss!992))) (defaultEntry!2919 (v!3254 (underlying!472 thiss!992)))) t!6302) tb!2517))

(declare-fun result!4127 () Bool)

(assert (=> tb!2517 (= result!4127 tp_is_empty!2913)))

(assert (=> b!138283 t!6302))

(declare-fun b_and!8645 () Bool)

(assert (= b_and!8641 (and (=> t!6302 result!4127) b_and!8645)))

(declare-fun tb!2519 () Bool)

(declare-fun t!6304 () Bool)

(assert (=> (and b!138277 (= (defaultEntry!2919 newMap!16) (defaultEntry!2919 (v!3254 (underlying!472 thiss!992)))) t!6304) tb!2519))

(declare-fun result!4131 () Bool)

(assert (= result!4131 result!4127))

(assert (=> b!138283 t!6304))

(declare-fun b_and!8647 () Bool)

(assert (= b_and!8643 (and (=> t!6304 result!4131) b_and!8647)))

(declare-fun m!165499 () Bool)

(assert (=> b!138278 m!165499))

(declare-fun m!165501 () Bool)

(assert (=> b!138278 m!165501))

(declare-fun m!165503 () Bool)

(assert (=> b!138278 m!165503))

(declare-fun m!165505 () Bool)

(assert (=> b!138283 m!165505))

(declare-fun m!165507 () Bool)

(assert (=> b!138283 m!165507))

(declare-fun m!165509 () Bool)

(assert (=> b!138283 m!165509))

(assert (=> b!138283 m!165499))

(assert (=> b!138283 m!165507))

(assert (=> b!138283 m!165499))

(declare-fun m!165511 () Bool)

(assert (=> b!138283 m!165511))

(assert (=> b!138283 m!165499))

(assert (=> b!138283 m!165509))

(declare-fun m!165513 () Bool)

(assert (=> b!138283 m!165513))

(assert (=> b!138283 m!165505))

(declare-fun m!165515 () Bool)

(assert (=> mapNonEmpty!4770 m!165515))

(declare-fun m!165517 () Bool)

(assert (=> mapNonEmpty!4769 m!165517))

(declare-fun m!165519 () Bool)

(assert (=> b!138284 m!165519))

(assert (=> b!138272 m!165499))

(assert (=> b!138272 m!165499))

(declare-fun m!165521 () Bool)

(assert (=> b!138272 m!165521))

(assert (=> b!138272 m!165499))

(declare-fun m!165523 () Bool)

(assert (=> b!138272 m!165523))

(declare-fun m!165525 () Bool)

(assert (=> b!138287 m!165525))

(declare-fun m!165527 () Bool)

(assert (=> b!138287 m!165527))

(declare-fun m!165529 () Bool)

(assert (=> b!138277 m!165529))

(declare-fun m!165531 () Bool)

(assert (=> b!138277 m!165531))

(declare-fun m!165533 () Bool)

(assert (=> b!138279 m!165533))

(declare-fun m!165535 () Bool)

(assert (=> start!14600 m!165535))

(check-sat tp_is_empty!2913 (not b_next!2993) (not mapNonEmpty!4770) (not mapNonEmpty!4769) b_and!8647 (not b!138279) (not b!138287) (not b_lambda!6231) (not b!138283) (not b!138272) (not b_next!2995) (not b!138278) (not start!14600) b_and!8645 (not b!138284) (not b!138277))
(check-sat b_and!8645 b_and!8647 (not b_next!2993) (not b_next!2995))
(get-model)

(declare-fun b_lambda!6235 () Bool)

(assert (= b_lambda!6231 (or (and b!138287 b_free!2993) (and b!138277 b_free!2995 (= (defaultEntry!2919 newMap!16) (defaultEntry!2919 (v!3254 (underlying!472 thiss!992))))) b_lambda!6235)))

(check-sat tp_is_empty!2913 (not b_next!2993) (not mapNonEmpty!4769) b_and!8647 (not b!138279) (not b!138287) (not b!138283) (not b!138272) (not b_next!2995) (not mapNonEmpty!4770) (not b_lambda!6235) (not b!138278) (not start!14600) b_and!8645 (not b!138284) (not b!138277))
(check-sat b_and!8645 b_and!8647 (not b_next!2993) (not b_next!2995))
(get-model)

(declare-fun b!138353 () Bool)

(declare-fun e!90213 () Bool)

(declare-fun e!90214 () Bool)

(assert (=> b!138353 (= e!90213 e!90214)))

(declare-fun c!25867 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!138353 (= c!25867 (validKeyInArray!0 (select (arr!2296 (_keys!4676 (v!3254 (underlying!472 thiss!992)))) #b00000000000000000000000000000000)))))

(declare-fun bm!15183 () Bool)

(declare-fun call!15186 () Bool)

(assert (=> bm!15183 (= call!15186 (arrayNoDuplicates!0 (_keys!4676 (v!3254 (underlying!472 thiss!992))) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!25867 (Cons!1746 (select (arr!2296 (_keys!4676 (v!3254 (underlying!472 thiss!992)))) #b00000000000000000000000000000000) Nil!1747) Nil!1747)))))

(declare-fun b!138354 () Bool)

(assert (=> b!138354 (= e!90214 call!15186)))

(declare-fun b!138355 () Bool)

(declare-fun e!90215 () Bool)

(assert (=> b!138355 (= e!90215 e!90213)))

(declare-fun res!66255 () Bool)

(assert (=> b!138355 (=> (not res!66255) (not e!90213))))

(declare-fun e!90212 () Bool)

(assert (=> b!138355 (= res!66255 (not e!90212))))

(declare-fun res!66254 () Bool)

(assert (=> b!138355 (=> (not res!66254) (not e!90212))))

(assert (=> b!138355 (= res!66254 (validKeyInArray!0 (select (arr!2296 (_keys!4676 (v!3254 (underlying!472 thiss!992)))) #b00000000000000000000000000000000)))))

(declare-fun b!138356 () Bool)

(assert (=> b!138356 (= e!90214 call!15186)))

(declare-fun b!138357 () Bool)

(declare-fun contains!912 (List!1750 (_ BitVec 64)) Bool)

(assert (=> b!138357 (= e!90212 (contains!912 Nil!1747 (select (arr!2296 (_keys!4676 (v!3254 (underlying!472 thiss!992)))) #b00000000000000000000000000000000)))))

(declare-fun d!43245 () Bool)

(declare-fun res!66256 () Bool)

(assert (=> d!43245 (=> res!66256 e!90215)))

(assert (=> d!43245 (= res!66256 (bvsge #b00000000000000000000000000000000 (size!2567 (_keys!4676 (v!3254 (underlying!472 thiss!992))))))))

(assert (=> d!43245 (= (arrayNoDuplicates!0 (_keys!4676 (v!3254 (underlying!472 thiss!992))) #b00000000000000000000000000000000 Nil!1747) e!90215)))

(assert (= (and d!43245 (not res!66256)) b!138355))

(assert (= (and b!138355 res!66254) b!138357))

(assert (= (and b!138355 res!66255) b!138353))

(assert (= (and b!138353 c!25867) b!138356))

(assert (= (and b!138353 (not c!25867)) b!138354))

(assert (= (or b!138356 b!138354) bm!15183))

(declare-fun m!165575 () Bool)

(assert (=> b!138353 m!165575))

(assert (=> b!138353 m!165575))

(declare-fun m!165577 () Bool)

(assert (=> b!138353 m!165577))

(assert (=> bm!15183 m!165575))

(declare-fun m!165579 () Bool)

(assert (=> bm!15183 m!165579))

(assert (=> b!138355 m!165575))

(assert (=> b!138355 m!165575))

(assert (=> b!138355 m!165577))

(assert (=> b!138357 m!165575))

(assert (=> b!138357 m!165575))

(declare-fun m!165581 () Bool)

(assert (=> b!138357 m!165581))

(assert (=> b!138279 d!43245))

(declare-fun d!43247 () Bool)

(declare-fun res!66263 () Bool)

(declare-fun e!90218 () Bool)

(assert (=> d!43247 (=> (not res!66263) (not e!90218))))

(declare-fun simpleValid!93 (LongMapFixedSize!1134) Bool)

(assert (=> d!43247 (= res!66263 (simpleValid!93 newMap!16))))

(assert (=> d!43247 (= (valid!545 newMap!16) e!90218)))

(declare-fun b!138364 () Bool)

(declare-fun res!66264 () Bool)

(assert (=> b!138364 (=> (not res!66264) (not e!90218))))

(declare-fun arrayCountValidKeys!0 (array!4856 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!138364 (= res!66264 (= (arrayCountValidKeys!0 (_keys!4676 newMap!16) #b00000000000000000000000000000000 (size!2567 (_keys!4676 newMap!16))) (_size!616 newMap!16)))))

(declare-fun b!138365 () Bool)

(declare-fun res!66265 () Bool)

(assert (=> b!138365 (=> (not res!66265) (not e!90218))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!4856 (_ BitVec 32)) Bool)

(assert (=> b!138365 (= res!66265 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!4676 newMap!16) (mask!7249 newMap!16)))))

(declare-fun b!138366 () Bool)

(assert (=> b!138366 (= e!90218 (arrayNoDuplicates!0 (_keys!4676 newMap!16) #b00000000000000000000000000000000 Nil!1747))))

(assert (= (and d!43247 res!66263) b!138364))

(assert (= (and b!138364 res!66264) b!138365))

(assert (= (and b!138365 res!66265) b!138366))

(declare-fun m!165583 () Bool)

(assert (=> d!43247 m!165583))

(declare-fun m!165585 () Bool)

(assert (=> b!138364 m!165585))

(declare-fun m!165587 () Bool)

(assert (=> b!138365 m!165587))

(declare-fun m!165589 () Bool)

(assert (=> b!138366 m!165589))

(assert (=> b!138284 d!43247))

(declare-fun d!43249 () Bool)

(assert (=> d!43249 (= (array_inv!1419 (_keys!4676 newMap!16)) (bvsge (size!2567 (_keys!4676 newMap!16)) #b00000000000000000000000000000000))))

(assert (=> b!138277 d!43249))

(declare-fun d!43251 () Bool)

(assert (=> d!43251 (= (array_inv!1420 (_values!2902 newMap!16)) (bvsge (size!2568 (_values!2902 newMap!16)) #b00000000000000000000000000000000))))

(assert (=> b!138277 d!43251))

(declare-fun d!43253 () Bool)

(declare-fun res!66270 () Bool)

(declare-fun e!90223 () Bool)

(assert (=> d!43253 (=> res!66270 e!90223)))

(assert (=> d!43253 (= res!66270 (= (select (arr!2296 (_keys!4676 (v!3254 (underlying!472 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (select (arr!2296 (_keys!4676 (v!3254 (underlying!472 thiss!992)))) from!355)))))

(assert (=> d!43253 (= (arrayContainsKey!0 (_keys!4676 (v!3254 (underlying!472 thiss!992))) (select (arr!2296 (_keys!4676 (v!3254 (underlying!472 thiss!992)))) from!355) (bvadd #b00000000000000000000000000000001 from!355)) e!90223)))

(declare-fun b!138371 () Bool)

(declare-fun e!90224 () Bool)

(assert (=> b!138371 (= e!90223 e!90224)))

(declare-fun res!66271 () Bool)

(assert (=> b!138371 (=> (not res!66271) (not e!90224))))

(assert (=> b!138371 (= res!66271 (bvslt (bvadd #b00000000000000000000000000000001 from!355 #b00000000000000000000000000000001) (size!2567 (_keys!4676 (v!3254 (underlying!472 thiss!992))))))))

(declare-fun b!138372 () Bool)

(assert (=> b!138372 (= e!90224 (arrayContainsKey!0 (_keys!4676 (v!3254 (underlying!472 thiss!992))) (select (arr!2296 (_keys!4676 (v!3254 (underlying!472 thiss!992)))) from!355) (bvadd #b00000000000000000000000000000001 from!355 #b00000000000000000000000000000001)))))

(assert (= (and d!43253 (not res!66270)) b!138371))

(assert (= (and b!138371 res!66271) b!138372))

(declare-fun m!165591 () Bool)

(assert (=> d!43253 m!165591))

(assert (=> b!138372 m!165499))

(declare-fun m!165593 () Bool)

(assert (=> b!138372 m!165593))

(assert (=> b!138272 d!43253))

(declare-fun d!43255 () Bool)

(declare-fun e!90227 () Bool)

(assert (=> d!43255 e!90227))

(declare-fun c!25870 () Bool)

(assert (=> d!43255 (= c!25870 (and (not (= (select (arr!2296 (_keys!4676 (v!3254 (underlying!472 thiss!992)))) from!355) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!2296 (_keys!4676 (v!3254 (underlying!472 thiss!992)))) from!355) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun lt!72317 () Unit!4366)

(declare-fun choose!852 (array!4856 array!4858 (_ BitVec 32) (_ BitVec 32) V!3531 V!3531 (_ BitVec 64) (_ BitVec 32) Int) Unit!4366)

(assert (=> d!43255 (= lt!72317 (choose!852 (_keys!4676 (v!3254 (underlying!472 thiss!992))) (_values!2902 (v!3254 (underlying!472 thiss!992))) (mask!7249 (v!3254 (underlying!472 thiss!992))) (extraKeys!2676 (v!3254 (underlying!472 thiss!992))) (zeroValue!2770 (v!3254 (underlying!472 thiss!992))) (minValue!2770 (v!3254 (underlying!472 thiss!992))) (select (arr!2296 (_keys!4676 (v!3254 (underlying!472 thiss!992)))) from!355) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2919 (v!3254 (underlying!472 thiss!992)))))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> d!43255 (validMask!0 (mask!7249 (v!3254 (underlying!472 thiss!992))))))

(assert (=> d!43255 (= (lemmaListMapContainsThenArrayContainsFrom!140 (_keys!4676 (v!3254 (underlying!472 thiss!992))) (_values!2902 (v!3254 (underlying!472 thiss!992))) (mask!7249 (v!3254 (underlying!472 thiss!992))) (extraKeys!2676 (v!3254 (underlying!472 thiss!992))) (zeroValue!2770 (v!3254 (underlying!472 thiss!992))) (minValue!2770 (v!3254 (underlying!472 thiss!992))) (select (arr!2296 (_keys!4676 (v!3254 (underlying!472 thiss!992)))) from!355) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2919 (v!3254 (underlying!472 thiss!992)))) lt!72317)))

(declare-fun b!138377 () Bool)

(assert (=> b!138377 (= e!90227 (arrayContainsKey!0 (_keys!4676 (v!3254 (underlying!472 thiss!992))) (select (arr!2296 (_keys!4676 (v!3254 (underlying!472 thiss!992)))) from!355) (bvadd #b00000000000000000000000000000001 from!355)))))

(declare-fun b!138378 () Bool)

(assert (=> b!138378 (= e!90227 (ite (= (select (arr!2296 (_keys!4676 (v!3254 (underlying!472 thiss!992)))) from!355) #b0000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand (extraKeys!2676 (v!3254 (underlying!472 thiss!992))) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (extraKeys!2676 (v!3254 (underlying!472 thiss!992))) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (= (and d!43255 c!25870) b!138377))

(assert (= (and d!43255 (not c!25870)) b!138378))

(assert (=> d!43255 m!165499))

(declare-fun m!165595 () Bool)

(assert (=> d!43255 m!165595))

(declare-fun m!165597 () Bool)

(assert (=> d!43255 m!165597))

(assert (=> b!138377 m!165499))

(assert (=> b!138377 m!165521))

(assert (=> b!138272 d!43255))

(declare-fun d!43257 () Bool)

(assert (=> d!43257 (= (valid!544 thiss!992) (valid!545 (v!3254 (underlying!472 thiss!992))))))

(declare-fun bs!5809 () Bool)

(assert (= bs!5809 d!43257))

(declare-fun m!165599 () Bool)

(assert (=> bs!5809 m!165599))

(assert (=> start!14600 d!43257))

(declare-fun d!43259 () Bool)

(declare-fun e!90233 () Bool)

(assert (=> d!43259 e!90233))

(declare-fun res!66274 () Bool)

(assert (=> d!43259 (=> res!66274 e!90233)))

(declare-fun lt!72327 () Bool)

(assert (=> d!43259 (= res!66274 (not lt!72327))))

(declare-fun lt!72329 () Bool)

(assert (=> d!43259 (= lt!72327 lt!72329)))

(declare-fun lt!72326 () Unit!4366)

(declare-fun e!90232 () Unit!4366)

(assert (=> d!43259 (= lt!72326 e!90232)))

(declare-fun c!25873 () Bool)

(assert (=> d!43259 (= c!25873 lt!72329)))

(declare-fun containsKey!177 (List!1749 (_ BitVec 64)) Bool)

(assert (=> d!43259 (= lt!72329 (containsKey!177 (toList!880 lt!72301) (select (arr!2296 (_keys!4676 (v!3254 (underlying!472 thiss!992)))) from!355)))))

(assert (=> d!43259 (= (contains!910 lt!72301 (select (arr!2296 (_keys!4676 (v!3254 (underlying!472 thiss!992)))) from!355)) lt!72327)))

(declare-fun b!138385 () Bool)

(declare-fun lt!72328 () Unit!4366)

(assert (=> b!138385 (= e!90232 lt!72328)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!126 (List!1749 (_ BitVec 64)) Unit!4366)

(assert (=> b!138385 (= lt!72328 (lemmaContainsKeyImpliesGetValueByKeyDefined!126 (toList!880 lt!72301) (select (arr!2296 (_keys!4676 (v!3254 (underlying!472 thiss!992)))) from!355)))))

(declare-datatypes ((Option!179 0))(
  ( (Some!178 (v!3258 V!3531)) (None!177) )
))
(declare-fun isDefined!127 (Option!179) Bool)

(declare-fun getValueByKey!173 (List!1749 (_ BitVec 64)) Option!179)

(assert (=> b!138385 (isDefined!127 (getValueByKey!173 (toList!880 lt!72301) (select (arr!2296 (_keys!4676 (v!3254 (underlying!472 thiss!992)))) from!355)))))

(declare-fun b!138386 () Bool)

(declare-fun Unit!4368 () Unit!4366)

(assert (=> b!138386 (= e!90232 Unit!4368)))

(declare-fun b!138387 () Bool)

(assert (=> b!138387 (= e!90233 (isDefined!127 (getValueByKey!173 (toList!880 lt!72301) (select (arr!2296 (_keys!4676 (v!3254 (underlying!472 thiss!992)))) from!355))))))

(assert (= (and d!43259 c!25873) b!138385))

(assert (= (and d!43259 (not c!25873)) b!138386))

(assert (= (and d!43259 (not res!66274)) b!138387))

(assert (=> d!43259 m!165499))

(declare-fun m!165601 () Bool)

(assert (=> d!43259 m!165601))

(assert (=> b!138385 m!165499))

(declare-fun m!165603 () Bool)

(assert (=> b!138385 m!165603))

(assert (=> b!138385 m!165499))

(declare-fun m!165605 () Bool)

(assert (=> b!138385 m!165605))

(assert (=> b!138385 m!165605))

(declare-fun m!165607 () Bool)

(assert (=> b!138385 m!165607))

(assert (=> b!138387 m!165499))

(assert (=> b!138387 m!165605))

(assert (=> b!138387 m!165605))

(assert (=> b!138387 m!165607))

(assert (=> b!138283 d!43259))

(declare-fun b!138472 () Bool)

(declare-fun res!66306 () Bool)

(declare-fun e!90291 () Bool)

(assert (=> b!138472 (=> (not res!66306) (not e!90291))))

(declare-datatypes ((SeekEntryResult!287 0))(
  ( (MissingZero!287 (index!3310 (_ BitVec 32))) (Found!287 (index!3311 (_ BitVec 32))) (Intermediate!287 (undefined!1099 Bool) (index!3312 (_ BitVec 32)) (x!16001 (_ BitVec 32))) (Undefined!287) (MissingVacant!287 (index!3313 (_ BitVec 32))) )
))
(declare-fun lt!72398 () SeekEntryResult!287)

(assert (=> b!138472 (= res!66306 (= (select (arr!2296 (_keys!4676 newMap!16)) (index!3310 lt!72398)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun d!43261 () Bool)

(declare-fun e!90299 () Bool)

(assert (=> d!43261 e!90299))

(declare-fun res!66314 () Bool)

(assert (=> d!43261 (=> (not res!66314) (not e!90299))))

(declare-fun lt!72399 () tuple2!2652)

(assert (=> d!43261 (= res!66314 (valid!545 (_2!1336 lt!72399)))))

(declare-fun e!90283 () tuple2!2652)

(assert (=> d!43261 (= lt!72399 e!90283)))

(declare-fun c!25908 () Bool)

(assert (=> d!43261 (= c!25908 (= (select (arr!2296 (_keys!4676 (v!3254 (underlying!472 thiss!992)))) from!355) (bvneg (select (arr!2296 (_keys!4676 (v!3254 (underlying!472 thiss!992)))) from!355))))))

(assert (=> d!43261 (valid!545 newMap!16)))

(assert (=> d!43261 (= (update!202 newMap!16 (select (arr!2296 (_keys!4676 (v!3254 (underlying!472 thiss!992)))) from!355) (get!1516 (select (arr!2297 (_values!2902 (v!3254 (underlying!472 thiss!992)))) from!355) (dynLambda!435 (defaultEntry!2919 (v!3254 (underlying!472 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) lt!72399)))

(declare-fun bm!15232 () Bool)

(declare-fun call!15247 () Bool)

(declare-fun call!15258 () Bool)

(assert (=> bm!15232 (= call!15247 call!15258)))

(declare-fun b!138473 () Bool)

(declare-fun res!66310 () Bool)

(declare-fun call!15257 () Bool)

(assert (=> b!138473 (= res!66310 call!15257)))

(declare-fun e!90285 () Bool)

(assert (=> b!138473 (=> (not res!66310) (not e!90285))))

(declare-fun b!138474 () Bool)

(declare-fun e!90282 () Bool)

(assert (=> b!138474 (= e!90282 ((_ is Undefined!287) lt!72398))))

(declare-fun bm!15233 () Bool)

(declare-fun call!15249 () Bool)

(assert (=> bm!15233 (= call!15249 call!15257)))

(declare-fun b!138475 () Bool)

(declare-fun lt!72400 () Unit!4366)

(declare-fun lt!72386 () Unit!4366)

(assert (=> b!138475 (= lt!72400 lt!72386)))

(declare-fun call!15238 () ListLongMap!1729)

(declare-fun call!15242 () ListLongMap!1729)

(assert (=> b!138475 (= call!15238 call!15242)))

(declare-fun lt!72405 () (_ BitVec 32))

(declare-fun lemmaChangeLongMinValueKeyThenAddPairToListMap!63 (array!4856 array!4858 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!3531 V!3531 V!3531 Int) Unit!4366)

(assert (=> b!138475 (= lt!72386 (lemmaChangeLongMinValueKeyThenAddPairToListMap!63 (_keys!4676 newMap!16) (_values!2902 newMap!16) (mask!7249 newMap!16) (extraKeys!2676 newMap!16) lt!72405 (zeroValue!2770 newMap!16) (minValue!2770 newMap!16) (get!1516 (select (arr!2297 (_values!2902 (v!3254 (underlying!472 thiss!992)))) from!355) (dynLambda!435 (defaultEntry!2919 (v!3254 (underlying!472 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (defaultEntry!2919 newMap!16)))))

(assert (=> b!138475 (= lt!72405 (bvor (extraKeys!2676 newMap!16) #b00000000000000000000000000000010))))

(declare-fun e!90279 () tuple2!2652)

(assert (=> b!138475 (= e!90279 (tuple2!2653 true (LongMapFixedSize!1135 (defaultEntry!2919 newMap!16) (mask!7249 newMap!16) (bvor (extraKeys!2676 newMap!16) #b00000000000000000000000000000010) (zeroValue!2770 newMap!16) (get!1516 (select (arr!2297 (_values!2902 (v!3254 (underlying!472 thiss!992)))) from!355) (dynLambda!435 (defaultEntry!2919 (v!3254 (underlying!472 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (_size!616 newMap!16) (_keys!4676 newMap!16) (_values!2902 newMap!16) (_vacant!616 newMap!16))))))

(declare-fun bm!15234 () Bool)

(declare-fun call!15246 () Bool)

(declare-fun call!15252 () Bool)

(assert (=> bm!15234 (= call!15246 call!15252)))

(declare-fun c!25904 () Bool)

(declare-fun lt!72385 () array!4858)

(declare-fun c!25903 () Bool)

(declare-fun bm!15235 () Bool)

(declare-fun call!15241 () ListLongMap!1729)

(declare-fun lt!72395 () (_ BitVec 32))

(assert (=> bm!15235 (= call!15241 (getCurrentListMap!549 (_keys!4676 newMap!16) (ite (or c!25908 c!25904) (_values!2902 newMap!16) lt!72385) (mask!7249 newMap!16) (ite c!25908 (ite c!25903 lt!72395 lt!72405) (extraKeys!2676 newMap!16)) (ite (and c!25908 c!25903) (get!1516 (select (arr!2297 (_values!2902 (v!3254 (underlying!472 thiss!992)))) from!355) (dynLambda!435 (defaultEntry!2919 (v!3254 (underlying!472 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (zeroValue!2770 newMap!16)) (ite c!25908 (ite c!25903 (minValue!2770 newMap!16) (get!1516 (select (arr!2297 (_values!2902 (v!3254 (underlying!472 thiss!992)))) from!355) (dynLambda!435 (defaultEntry!2919 (v!3254 (underlying!472 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (minValue!2770 newMap!16)) #b00000000000000000000000000000000 (defaultEntry!2919 newMap!16)))))

(declare-fun b!138476 () Bool)

(declare-fun e!90281 () Unit!4366)

(declare-fun lt!72396 () Unit!4366)

(assert (=> b!138476 (= e!90281 lt!72396)))

(declare-fun call!15250 () Unit!4366)

(assert (=> b!138476 (= lt!72396 call!15250)))

(declare-fun lt!72389 () SeekEntryResult!287)

(declare-fun call!15237 () SeekEntryResult!287)

(assert (=> b!138476 (= lt!72389 call!15237)))

(declare-fun res!66309 () Bool)

(assert (=> b!138476 (= res!66309 ((_ is Found!287) lt!72389))))

(declare-fun e!90280 () Bool)

(assert (=> b!138476 (=> (not res!66309) (not e!90280))))

(assert (=> b!138476 e!90280))

(declare-fun bm!15236 () Bool)

(declare-fun c!25913 () Bool)

(assert (=> bm!15236 (= c!25913 c!25904)))

(declare-fun e!90286 () ListLongMap!1729)

(declare-fun call!15236 () Bool)

(assert (=> bm!15236 (= call!15236 (contains!910 e!90286 (select (arr!2296 (_keys!4676 (v!3254 (underlying!472 thiss!992)))) from!355)))))

(declare-fun bm!15237 () Bool)

(declare-fun call!15256 () Bool)

(assert (=> bm!15237 (= call!15256 call!15252)))

(declare-fun c!25905 () Bool)

(declare-fun lt!72403 () SeekEntryResult!287)

(declare-fun bm!15238 () Bool)

(declare-fun c!25911 () Bool)

(declare-fun c!25915 () Bool)

(declare-fun lt!72410 () SeekEntryResult!287)

(declare-fun c!25910 () Bool)

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> bm!15238 (= call!15258 (inRange!0 (ite c!25904 (ite c!25915 (index!3311 lt!72403) (ite c!25911 (index!3310 lt!72410) (index!3313 lt!72410))) (ite c!25910 (index!3311 lt!72389) (ite c!25905 (index!3310 lt!72398) (index!3313 lt!72398)))) (mask!7249 newMap!16)))))

(declare-fun b!138477 () Bool)

(declare-fun e!90297 () Unit!4366)

(declare-fun Unit!4369 () Unit!4366)

(assert (=> b!138477 (= e!90297 Unit!4369)))

(declare-fun lt!72394 () Unit!4366)

(assert (=> b!138477 (= lt!72394 call!15250)))

(declare-fun call!15235 () SeekEntryResult!287)

(assert (=> b!138477 (= lt!72403 call!15235)))

(declare-fun res!66316 () Bool)

(assert (=> b!138477 (= res!66316 ((_ is Found!287) lt!72403))))

(assert (=> b!138477 (=> (not res!66316) (not e!90285))))

(assert (=> b!138477 e!90285))

(declare-fun lt!72390 () Unit!4366)

(assert (=> b!138477 (= lt!72390 lt!72394)))

(assert (=> b!138477 false))

(declare-fun b!138478 () Bool)

(declare-fun res!66313 () Bool)

(declare-fun e!90294 () Bool)

(assert (=> b!138478 (=> (not res!66313) (not e!90294))))

(assert (=> b!138478 (= res!66313 (= (select (arr!2296 (_keys!4676 newMap!16)) (index!3310 lt!72410)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun bm!15239 () Bool)

(declare-fun call!15255 () ListLongMap!1729)

(assert (=> bm!15239 (= call!15255 call!15241)))

(declare-fun bm!15240 () Bool)

(declare-fun call!15254 () ListLongMap!1729)

(declare-fun call!15239 () ListLongMap!1729)

(assert (=> bm!15240 (= call!15254 call!15239)))

(declare-fun b!138479 () Bool)

(assert (=> b!138479 (= e!90294 (not call!15256))))

(declare-fun b!138480 () Bool)

(declare-fun e!90287 () Bool)

(declare-fun call!15251 () ListLongMap!1729)

(declare-fun call!15244 () ListLongMap!1729)

(assert (=> b!138480 (= e!90287 (= call!15251 call!15244))))

(declare-fun b!138481 () Bool)

(declare-fun e!90292 () tuple2!2652)

(declare-fun lt!72397 () tuple2!2652)

(assert (=> b!138481 (= e!90292 (tuple2!2653 (_1!1336 lt!72397) (_2!1336 lt!72397)))))

(declare-fun call!15248 () tuple2!2652)

(assert (=> b!138481 (= lt!72397 call!15248)))

(declare-fun b!138482 () Bool)

(declare-fun e!90278 () Bool)

(declare-fun e!90288 () Bool)

(assert (=> b!138482 (= e!90278 e!90288)))

(declare-fun res!66303 () Bool)

(assert (=> b!138482 (= res!66303 call!15249)))

(assert (=> b!138482 (=> (not res!66303) (not e!90288))))

(declare-fun b!138483 () Bool)

(assert (=> b!138483 (= e!90286 call!15255)))

(declare-fun bm!15241 () Bool)

(declare-fun call!15245 () SeekEntryResult!287)

(assert (=> bm!15241 (= call!15235 call!15245)))

(declare-fun b!138484 () Bool)

(declare-fun res!66312 () Bool)

(assert (=> b!138484 (=> (not res!66312) (not e!90291))))

(declare-fun call!15253 () Bool)

(assert (=> b!138484 (= res!66312 call!15253)))

(declare-fun e!90298 () Bool)

(assert (=> b!138484 (= e!90298 e!90291)))

(declare-fun lt!72404 () SeekEntryResult!287)

(declare-fun bm!15242 () Bool)

(declare-fun c!25912 () Bool)

(declare-fun updateHelperNewKey!63 (LongMapFixedSize!1134 (_ BitVec 64) V!3531 (_ BitVec 32)) tuple2!2652)

(assert (=> bm!15242 (= call!15248 (updateHelperNewKey!63 newMap!16 (select (arr!2296 (_keys!4676 (v!3254 (underlying!472 thiss!992)))) from!355) (get!1516 (select (arr!2297 (_values!2902 (v!3254 (underlying!472 thiss!992)))) from!355) (dynLambda!435 (defaultEntry!2919 (v!3254 (underlying!472 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (ite c!25912 (index!3313 lt!72404) (index!3310 lt!72404))))))

(declare-fun b!138485 () Bool)

(declare-fun e!90293 () ListLongMap!1729)

(assert (=> b!138485 (= e!90293 call!15254)))

(declare-fun bm!15243 () Bool)

(assert (=> bm!15243 (= call!15239 (getCurrentListMap!549 (_keys!4676 newMap!16) (ite c!25908 (_values!2902 newMap!16) (array!4859 (store (arr!2297 (_values!2902 newMap!16)) (index!3311 lt!72404) (ValueCellFull!1113 (get!1516 (select (arr!2297 (_values!2902 (v!3254 (underlying!472 thiss!992)))) from!355) (dynLambda!435 (defaultEntry!2919 (v!3254 (underlying!472 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (size!2568 (_values!2902 newMap!16)))) (mask!7249 newMap!16) (extraKeys!2676 newMap!16) (zeroValue!2770 newMap!16) (minValue!2770 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2919 newMap!16)))))

(declare-fun b!138486 () Bool)

(declare-fun e!90290 () tuple2!2652)

(assert (=> b!138486 (= e!90292 e!90290)))

(declare-fun c!25907 () Bool)

(assert (=> b!138486 (= c!25907 ((_ is MissingZero!287) lt!72404))))

(declare-fun b!138487 () Bool)

(declare-fun e!90295 () Bool)

(assert (=> b!138487 (= e!90287 e!90295)))

(declare-fun res!66311 () Bool)

(assert (=> b!138487 (= res!66311 (contains!910 call!15244 (select (arr!2296 (_keys!4676 (v!3254 (underlying!472 thiss!992)))) from!355)))))

(assert (=> b!138487 (=> (not res!66311) (not e!90295))))

(declare-fun b!138488 () Bool)

(declare-fun res!66308 () Bool)

(assert (=> b!138488 (= res!66308 call!15247)))

(assert (=> b!138488 (=> (not res!66308) (not e!90280))))

(declare-fun b!138489 () Bool)

(assert (=> b!138489 (= e!90283 e!90279)))

(assert (=> b!138489 (= c!25903 (= (select (arr!2296 (_keys!4676 (v!3254 (underlying!472 thiss!992)))) from!355) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun bm!15244 () Bool)

(declare-fun c!25906 () Bool)

(assert (=> bm!15244 (= call!15251 (map!1426 (ite c!25906 newMap!16 (_2!1336 lt!72399))))))

(declare-fun b!138490 () Bool)

(assert (=> b!138490 (= e!90285 (= (select (arr!2296 (_keys!4676 newMap!16)) (index!3311 lt!72403)) (select (arr!2296 (_keys!4676 (v!3254 (underlying!472 thiss!992)))) from!355)))))

(declare-fun bm!15245 () Bool)

(declare-fun call!15243 () Unit!4366)

(declare-fun lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!63 (array!4856 array!4858 (_ BitVec 32) (_ BitVec 32) V!3531 V!3531 (_ BitVec 64) Int) Unit!4366)

(assert (=> bm!15245 (= call!15243 (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!63 (_keys!4676 newMap!16) (_values!2902 newMap!16) (mask!7249 newMap!16) (extraKeys!2676 newMap!16) (zeroValue!2770 newMap!16) (minValue!2770 newMap!16) (select (arr!2296 (_keys!4676 (v!3254 (underlying!472 thiss!992)))) from!355) (defaultEntry!2919 newMap!16)))))

(declare-fun b!138491 () Bool)

(assert (=> b!138491 (= e!90278 ((_ is Undefined!287) lt!72410))))

(declare-fun bm!15246 () Bool)

(assert (=> bm!15246 (= call!15242 call!15241)))

(declare-fun bm!15247 () Bool)

(declare-fun call!15240 () ListLongMap!1729)

(assert (=> bm!15247 (= call!15238 call!15240)))

(declare-fun b!138492 () Bool)

(assert (=> b!138492 (= e!90299 e!90287)))

(assert (=> b!138492 (= c!25906 (_1!1336 lt!72399))))

(declare-fun b!138493 () Bool)

(declare-fun res!66315 () Bool)

(assert (=> b!138493 (=> (not res!66315) (not e!90294))))

(assert (=> b!138493 (= res!66315 call!15249)))

(declare-fun e!90296 () Bool)

(assert (=> b!138493 (= e!90296 e!90294)))

(declare-fun bm!15248 () Bool)

(declare-fun +!172 (ListLongMap!1729 tuple2!2650) ListLongMap!1729)

(assert (=> bm!15248 (= call!15240 (+!172 e!90293 (ite c!25908 (ite c!25903 (tuple2!2651 #b0000000000000000000000000000000000000000000000000000000000000000 (get!1516 (select (arr!2297 (_values!2902 (v!3254 (underlying!472 thiss!992)))) from!355) (dynLambda!435 (defaultEntry!2919 (v!3254 (underlying!472 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (tuple2!2651 #b1000000000000000000000000000000000000000000000000000000000000000 (get!1516 (select (arr!2297 (_values!2902 (v!3254 (underlying!472 thiss!992)))) from!355) (dynLambda!435 (defaultEntry!2919 (v!3254 (underlying!472 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (tuple2!2651 (select (arr!2296 (_keys!4676 (v!3254 (underlying!472 thiss!992)))) from!355) (get!1516 (select (arr!2297 (_values!2902 (v!3254 (underlying!472 thiss!992)))) from!355) (dynLambda!435 (defaultEntry!2919 (v!3254 (underlying!472 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun c!25914 () Bool)

(assert (=> bm!15248 (= c!25914 c!25908)))

(declare-fun b!138494 () Bool)

(declare-fun res!66305 () Bool)

(assert (=> b!138494 (= res!66305 (= (select (arr!2296 (_keys!4676 newMap!16)) (index!3313 lt!72398)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!90289 () Bool)

(assert (=> b!138494 (=> (not res!66305) (not e!90289))))

(declare-fun bm!15249 () Bool)

(declare-fun lemmaInListMapThenSeekEntryOrOpenFindsIt!63 (array!4856 array!4858 (_ BitVec 32) (_ BitVec 32) V!3531 V!3531 (_ BitVec 64) Int) Unit!4366)

(assert (=> bm!15249 (= call!15250 (lemmaInListMapThenSeekEntryOrOpenFindsIt!63 (_keys!4676 newMap!16) (_values!2902 newMap!16) (mask!7249 newMap!16) (extraKeys!2676 newMap!16) (zeroValue!2770 newMap!16) (minValue!2770 newMap!16) (select (arr!2296 (_keys!4676 (v!3254 (underlying!472 thiss!992)))) from!355) (defaultEntry!2919 newMap!16)))))

(declare-fun b!138495 () Bool)

(declare-fun lt!72392 () Unit!4366)

(declare-fun lt!72406 () Unit!4366)

(assert (=> b!138495 (= lt!72392 lt!72406)))

(assert (=> b!138495 (contains!910 call!15255 (select (arr!2296 (_keys!4676 newMap!16)) (index!3311 lt!72404)))))

(declare-fun lemmaValidKeyInArrayIsInListMap!121 (array!4856 array!4858 (_ BitVec 32) (_ BitVec 32) V!3531 V!3531 (_ BitVec 32) Int) Unit!4366)

(assert (=> b!138495 (= lt!72406 (lemmaValidKeyInArrayIsInListMap!121 (_keys!4676 newMap!16) lt!72385 (mask!7249 newMap!16) (extraKeys!2676 newMap!16) (zeroValue!2770 newMap!16) (minValue!2770 newMap!16) (index!3311 lt!72404) (defaultEntry!2919 newMap!16)))))

(assert (=> b!138495 (= lt!72385 (array!4859 (store (arr!2297 (_values!2902 newMap!16)) (index!3311 lt!72404) (ValueCellFull!1113 (get!1516 (select (arr!2297 (_values!2902 (v!3254 (underlying!472 thiss!992)))) from!355) (dynLambda!435 (defaultEntry!2919 (v!3254 (underlying!472 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (size!2568 (_values!2902 newMap!16))))))

(declare-fun lt!72393 () Unit!4366)

(declare-fun lt!72388 () Unit!4366)

(assert (=> b!138495 (= lt!72393 lt!72388)))

(assert (=> b!138495 (= call!15240 call!15239)))

(declare-fun lemmaChangeValueExistingKeyToArrayThenAddPairToListMap!63 (array!4856 array!4858 (_ BitVec 32) (_ BitVec 32) V!3531 V!3531 (_ BitVec 32) (_ BitVec 64) V!3531 Int) Unit!4366)

(assert (=> b!138495 (= lt!72388 (lemmaChangeValueExistingKeyToArrayThenAddPairToListMap!63 (_keys!4676 newMap!16) (_values!2902 newMap!16) (mask!7249 newMap!16) (extraKeys!2676 newMap!16) (zeroValue!2770 newMap!16) (minValue!2770 newMap!16) (index!3311 lt!72404) (select (arr!2296 (_keys!4676 (v!3254 (underlying!472 thiss!992)))) from!355) (get!1516 (select (arr!2297 (_values!2902 (v!3254 (underlying!472 thiss!992)))) from!355) (dynLambda!435 (defaultEntry!2919 (v!3254 (underlying!472 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (defaultEntry!2919 newMap!16)))))

(declare-fun lt!72407 () Unit!4366)

(assert (=> b!138495 (= lt!72407 e!90281)))

(assert (=> b!138495 (= c!25910 call!15236)))

(assert (=> b!138495 (= e!90290 (tuple2!2653 true (LongMapFixedSize!1135 (defaultEntry!2919 newMap!16) (mask!7249 newMap!16) (extraKeys!2676 newMap!16) (zeroValue!2770 newMap!16) (minValue!2770 newMap!16) (_size!616 newMap!16) (_keys!4676 newMap!16) (array!4859 (store (arr!2297 (_values!2902 newMap!16)) (index!3311 lt!72404) (ValueCellFull!1113 (get!1516 (select (arr!2297 (_values!2902 (v!3254 (underlying!472 thiss!992)))) from!355) (dynLambda!435 (defaultEntry!2919 (v!3254 (underlying!472 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (size!2568 (_values!2902 newMap!16))) (_vacant!616 newMap!16))))))

(declare-fun b!138496 () Bool)

(declare-fun c!25909 () Bool)

(assert (=> b!138496 (= c!25909 ((_ is MissingVacant!287) lt!72398))))

(assert (=> b!138496 (= e!90298 e!90282)))

(declare-fun b!138497 () Bool)

(declare-fun lt!72384 () Unit!4366)

(assert (=> b!138497 (= lt!72384 e!90297)))

(assert (=> b!138497 (= c!25915 call!15236)))

(declare-fun e!90284 () tuple2!2652)

(assert (=> b!138497 (= e!90284 (tuple2!2653 false newMap!16))))

(declare-fun bm!15250 () Bool)

(assert (=> bm!15250 (= call!15257 call!15258)))

(declare-fun b!138498 () Bool)

(assert (=> b!138498 (= e!90288 (not call!15256))))

(declare-fun b!138499 () Bool)

(assert (=> b!138499 (= e!90286 (getCurrentListMap!549 (_keys!4676 newMap!16) (_values!2902 newMap!16) (mask!7249 newMap!16) (extraKeys!2676 newMap!16) (zeroValue!2770 newMap!16) (minValue!2770 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2919 newMap!16)))))

(declare-fun b!138500 () Bool)

(assert (=> b!138500 (= e!90283 e!90284)))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!4856 (_ BitVec 32)) SeekEntryResult!287)

(assert (=> b!138500 (= lt!72404 (seekEntryOrOpen!0 (select (arr!2296 (_keys!4676 (v!3254 (underlying!472 thiss!992)))) from!355) (_keys!4676 newMap!16) (mask!7249 newMap!16)))))

(assert (=> b!138500 (= c!25904 ((_ is Undefined!287) lt!72404))))

(declare-fun b!138501 () Bool)

(declare-fun res!66307 () Bool)

(assert (=> b!138501 (= res!66307 (= (select (arr!2296 (_keys!4676 newMap!16)) (index!3313 lt!72410)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!138501 (=> (not res!66307) (not e!90288))))

(declare-fun bm!15251 () Bool)

(assert (=> bm!15251 (= call!15245 (seekEntryOrOpen!0 (select (arr!2296 (_keys!4676 (v!3254 (underlying!472 thiss!992)))) from!355) (_keys!4676 newMap!16) (mask!7249 newMap!16)))))

(declare-fun b!138502 () Bool)

(assert (=> b!138502 (= e!90280 (= (select (arr!2296 (_keys!4676 newMap!16)) (index!3311 lt!72389)) (select (arr!2296 (_keys!4676 (v!3254 (underlying!472 thiss!992)))) from!355)))))

(declare-fun bm!15252 () Bool)

(assert (=> bm!15252 (= call!15244 (map!1426 (ite c!25906 (_2!1336 lt!72399) newMap!16)))))

(declare-fun b!138503 () Bool)

(assert (=> b!138503 (= e!90289 (not call!15246))))

(declare-fun b!138504 () Bool)

(assert (=> b!138504 (= e!90282 e!90289)))

(declare-fun res!66304 () Bool)

(assert (=> b!138504 (= res!66304 call!15253)))

(assert (=> b!138504 (=> (not res!66304) (not e!90289))))

(declare-fun b!138505 () Bool)

(declare-fun lt!72402 () tuple2!2652)

(assert (=> b!138505 (= lt!72402 call!15248)))

(assert (=> b!138505 (= e!90290 (tuple2!2653 (_1!1336 lt!72402) (_2!1336 lt!72402)))))

(declare-fun b!138506 () Bool)

(declare-fun Unit!4370 () Unit!4366)

(assert (=> b!138506 (= e!90281 Unit!4370)))

(declare-fun lt!72409 () Unit!4366)

(assert (=> b!138506 (= lt!72409 call!15243)))

(assert (=> b!138506 (= lt!72398 call!15237)))

(assert (=> b!138506 (= c!25905 ((_ is MissingZero!287) lt!72398))))

(assert (=> b!138506 e!90298))

(declare-fun lt!72387 () Unit!4366)

(assert (=> b!138506 (= lt!72387 lt!72409)))

(assert (=> b!138506 false))

(declare-fun b!138507 () Bool)

(declare-fun c!25902 () Bool)

(assert (=> b!138507 (= c!25902 ((_ is MissingVacant!287) lt!72410))))

(assert (=> b!138507 (= e!90296 e!90278)))

(declare-fun b!138508 () Bool)

(assert (=> b!138508 (= e!90295 (= call!15244 (+!172 call!15251 (tuple2!2651 (select (arr!2296 (_keys!4676 (v!3254 (underlying!472 thiss!992)))) from!355) (get!1516 (select (arr!2297 (_values!2902 (v!3254 (underlying!472 thiss!992)))) from!355) (dynLambda!435 (defaultEntry!2919 (v!3254 (underlying!472 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun bm!15253 () Bool)

(assert (=> bm!15253 (= call!15252 (arrayContainsKey!0 (_keys!4676 newMap!16) (select (arr!2296 (_keys!4676 (v!3254 (underlying!472 thiss!992)))) from!355) #b00000000000000000000000000000000))))

(declare-fun bm!15254 () Bool)

(assert (=> bm!15254 (= call!15237 call!15245)))

(declare-fun b!138509 () Bool)

(declare-fun lt!72401 () Unit!4366)

(declare-fun lt!72408 () Unit!4366)

(assert (=> b!138509 (= lt!72401 lt!72408)))

(assert (=> b!138509 (= call!15238 call!15242)))

(declare-fun lemmaChangeZeroKeyThenAddPairToListMap!63 (array!4856 array!4858 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!3531 V!3531 V!3531 Int) Unit!4366)

(assert (=> b!138509 (= lt!72408 (lemmaChangeZeroKeyThenAddPairToListMap!63 (_keys!4676 newMap!16) (_values!2902 newMap!16) (mask!7249 newMap!16) (extraKeys!2676 newMap!16) lt!72395 (zeroValue!2770 newMap!16) (get!1516 (select (arr!2297 (_values!2902 (v!3254 (underlying!472 thiss!992)))) from!355) (dynLambda!435 (defaultEntry!2919 (v!3254 (underlying!472 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (minValue!2770 newMap!16) (defaultEntry!2919 newMap!16)))))

(assert (=> b!138509 (= lt!72395 (bvor (extraKeys!2676 newMap!16) #b00000000000000000000000000000001))))

(assert (=> b!138509 (= e!90279 (tuple2!2653 true (LongMapFixedSize!1135 (defaultEntry!2919 newMap!16) (mask!7249 newMap!16) (bvor (extraKeys!2676 newMap!16) #b00000000000000000000000000000001) (get!1516 (select (arr!2297 (_values!2902 (v!3254 (underlying!472 thiss!992)))) from!355) (dynLambda!435 (defaultEntry!2919 (v!3254 (underlying!472 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (minValue!2770 newMap!16) (_size!616 newMap!16) (_keys!4676 newMap!16) (_values!2902 newMap!16) (_vacant!616 newMap!16))))))

(declare-fun bm!15255 () Bool)

(assert (=> bm!15255 (= call!15253 call!15247)))

(declare-fun b!138510 () Bool)

(assert (=> b!138510 (= e!90293 (getCurrentListMap!549 (_keys!4676 newMap!16) (_values!2902 newMap!16) (mask!7249 newMap!16) (extraKeys!2676 newMap!16) (zeroValue!2770 newMap!16) (minValue!2770 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2919 newMap!16)))))

(declare-fun b!138511 () Bool)

(declare-fun lt!72391 () Unit!4366)

(assert (=> b!138511 (= e!90297 lt!72391)))

(assert (=> b!138511 (= lt!72391 call!15243)))

(assert (=> b!138511 (= lt!72410 call!15235)))

(assert (=> b!138511 (= c!25911 ((_ is MissingZero!287) lt!72410))))

(assert (=> b!138511 e!90296))

(declare-fun b!138512 () Bool)

(assert (=> b!138512 (= e!90291 (not call!15246))))

(declare-fun b!138513 () Bool)

(assert (=> b!138513 (= c!25912 ((_ is MissingVacant!287) lt!72404))))

(assert (=> b!138513 (= e!90284 e!90292)))

(assert (= (and d!43261 c!25908) b!138489))

(assert (= (and d!43261 (not c!25908)) b!138500))

(assert (= (and b!138489 c!25903) b!138509))

(assert (= (and b!138489 (not c!25903)) b!138475))

(assert (= (or b!138509 b!138475) bm!15246))

(assert (= (or b!138509 b!138475) bm!15240))

(assert (= (or b!138509 b!138475) bm!15247))

(assert (= (and b!138500 c!25904) b!138497))

(assert (= (and b!138500 (not c!25904)) b!138513))

(assert (= (and b!138497 c!25915) b!138477))

(assert (= (and b!138497 (not c!25915)) b!138511))

(assert (= (and b!138477 res!66316) b!138473))

(assert (= (and b!138473 res!66310) b!138490))

(assert (= (and b!138511 c!25911) b!138493))

(assert (= (and b!138511 (not c!25911)) b!138507))

(assert (= (and b!138493 res!66315) b!138478))

(assert (= (and b!138478 res!66313) b!138479))

(assert (= (and b!138507 c!25902) b!138482))

(assert (= (and b!138507 (not c!25902)) b!138491))

(assert (= (and b!138482 res!66303) b!138501))

(assert (= (and b!138501 res!66307) b!138498))

(assert (= (or b!138493 b!138482) bm!15233))

(assert (= (or b!138479 b!138498) bm!15237))

(assert (= (or b!138473 bm!15233) bm!15250))

(assert (= (or b!138477 b!138511) bm!15241))

(assert (= (and b!138513 c!25912) b!138481))

(assert (= (and b!138513 (not c!25912)) b!138486))

(assert (= (and b!138486 c!25907) b!138505))

(assert (= (and b!138486 (not c!25907)) b!138495))

(assert (= (and b!138495 c!25910) b!138476))

(assert (= (and b!138495 (not c!25910)) b!138506))

(assert (= (and b!138476 res!66309) b!138488))

(assert (= (and b!138488 res!66308) b!138502))

(assert (= (and b!138506 c!25905) b!138484))

(assert (= (and b!138506 (not c!25905)) b!138496))

(assert (= (and b!138484 res!66312) b!138472))

(assert (= (and b!138472 res!66306) b!138512))

(assert (= (and b!138496 c!25909) b!138504))

(assert (= (and b!138496 (not c!25909)) b!138474))

(assert (= (and b!138504 res!66304) b!138494))

(assert (= (and b!138494 res!66305) b!138503))

(assert (= (or b!138484 b!138504) bm!15255))

(assert (= (or b!138512 b!138503) bm!15234))

(assert (= (or b!138488 bm!15255) bm!15232))

(assert (= (or b!138476 b!138506) bm!15254))

(assert (= (or b!138481 b!138505) bm!15242))

(assert (= (or b!138497 b!138495) bm!15239))

(assert (= (or bm!15237 bm!15234) bm!15253))

(assert (= (or bm!15241 bm!15254) bm!15251))

(assert (= (or bm!15250 bm!15232) bm!15238))

(assert (= (or b!138511 b!138506) bm!15245))

(assert (= (or b!138477 b!138476) bm!15249))

(assert (= (or b!138497 b!138495) bm!15236))

(assert (= (and bm!15236 c!25913) b!138483))

(assert (= (and bm!15236 (not c!25913)) b!138499))

(assert (= (or bm!15246 bm!15239) bm!15235))

(assert (= (or bm!15240 b!138495) bm!15243))

(assert (= (or bm!15247 b!138495) bm!15248))

(assert (= (and bm!15248 c!25914) b!138485))

(assert (= (and bm!15248 (not c!25914)) b!138510))

(assert (= (and d!43261 res!66314) b!138492))

(assert (= (and b!138492 c!25906) b!138487))

(assert (= (and b!138492 (not c!25906)) b!138480))

(assert (= (and b!138487 res!66311) b!138508))

(assert (= (or b!138508 b!138480) bm!15244))

(assert (= (or b!138487 b!138508 b!138480) bm!15252))

(declare-fun m!165609 () Bool)

(assert (=> bm!15248 m!165609))

(declare-fun m!165611 () Bool)

(assert (=> b!138508 m!165611))

(declare-fun m!165613 () Bool)

(assert (=> bm!15244 m!165613))

(assert (=> b!138500 m!165499))

(declare-fun m!165615 () Bool)

(assert (=> b!138500 m!165615))

(declare-fun m!165617 () Bool)

(assert (=> bm!15252 m!165617))

(assert (=> b!138487 m!165499))

(declare-fun m!165619 () Bool)

(assert (=> b!138487 m!165619))

(assert (=> bm!15253 m!165499))

(declare-fun m!165621 () Bool)

(assert (=> bm!15253 m!165621))

(declare-fun m!165623 () Bool)

(assert (=> b!138495 m!165623))

(assert (=> b!138495 m!165499))

(assert (=> b!138495 m!165509))

(declare-fun m!165625 () Bool)

(assert (=> b!138495 m!165625))

(declare-fun m!165627 () Bool)

(assert (=> b!138495 m!165627))

(declare-fun m!165629 () Bool)

(assert (=> b!138495 m!165629))

(assert (=> b!138495 m!165629))

(declare-fun m!165631 () Bool)

(assert (=> b!138495 m!165631))

(declare-fun m!165633 () Bool)

(assert (=> bm!15235 m!165633))

(assert (=> bm!15249 m!165499))

(declare-fun m!165635 () Bool)

(assert (=> bm!15249 m!165635))

(declare-fun m!165637 () Bool)

(assert (=> bm!15238 m!165637))

(declare-fun m!165639 () Bool)

(assert (=> b!138499 m!165639))

(assert (=> b!138510 m!165639))

(assert (=> b!138475 m!165509))

(declare-fun m!165641 () Bool)

(assert (=> b!138475 m!165641))

(declare-fun m!165643 () Bool)

(assert (=> b!138478 m!165643))

(assert (=> bm!15251 m!165499))

(assert (=> bm!15251 m!165615))

(declare-fun m!165645 () Bool)

(assert (=> b!138494 m!165645))

(declare-fun m!165647 () Bool)

(assert (=> b!138472 m!165647))

(assert (=> bm!15245 m!165499))

(declare-fun m!165649 () Bool)

(assert (=> bm!15245 m!165649))

(assert (=> bm!15236 m!165499))

(declare-fun m!165651 () Bool)

(assert (=> bm!15236 m!165651))

(declare-fun m!165653 () Bool)

(assert (=> b!138502 m!165653))

(declare-fun m!165655 () Bool)

(assert (=> b!138501 m!165655))

(assert (=> bm!15243 m!165627))

(declare-fun m!165657 () Bool)

(assert (=> bm!15243 m!165657))

(assert (=> b!138509 m!165509))

(declare-fun m!165659 () Bool)

(assert (=> b!138509 m!165659))

(declare-fun m!165661 () Bool)

(assert (=> b!138490 m!165661))

(assert (=> bm!15242 m!165499))

(assert (=> bm!15242 m!165509))

(declare-fun m!165663 () Bool)

(assert (=> bm!15242 m!165663))

(declare-fun m!165665 () Bool)

(assert (=> d!43261 m!165665))

(assert (=> d!43261 m!165519))

(assert (=> b!138283 d!43261))

(declare-fun d!43263 () Bool)

(declare-fun c!25918 () Bool)

(assert (=> d!43263 (= c!25918 ((_ is ValueCellFull!1113) (select (arr!2297 (_values!2902 (v!3254 (underlying!472 thiss!992)))) from!355)))))

(declare-fun e!90302 () V!3531)

(assert (=> d!43263 (= (get!1516 (select (arr!2297 (_values!2902 (v!3254 (underlying!472 thiss!992)))) from!355) (dynLambda!435 (defaultEntry!2919 (v!3254 (underlying!472 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) e!90302)))

(declare-fun b!138518 () Bool)

(declare-fun get!1518 (ValueCell!1113 V!3531) V!3531)

(assert (=> b!138518 (= e!90302 (get!1518 (select (arr!2297 (_values!2902 (v!3254 (underlying!472 thiss!992)))) from!355) (dynLambda!435 (defaultEntry!2919 (v!3254 (underlying!472 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!138519 () Bool)

(declare-fun get!1519 (ValueCell!1113 V!3531) V!3531)

(assert (=> b!138519 (= e!90302 (get!1519 (select (arr!2297 (_values!2902 (v!3254 (underlying!472 thiss!992)))) from!355) (dynLambda!435 (defaultEntry!2919 (v!3254 (underlying!472 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!43263 c!25918) b!138518))

(assert (= (and d!43263 (not c!25918)) b!138519))

(assert (=> b!138518 m!165505))

(assert (=> b!138518 m!165507))

(declare-fun m!165667 () Bool)

(assert (=> b!138518 m!165667))

(assert (=> b!138519 m!165505))

(assert (=> b!138519 m!165507))

(declare-fun m!165669 () Bool)

(assert (=> b!138519 m!165669))

(assert (=> b!138283 d!43263))

(declare-fun d!43265 () Bool)

(assert (=> d!43265 (= (array_inv!1419 (_keys!4676 (v!3254 (underlying!472 thiss!992)))) (bvsge (size!2567 (_keys!4676 (v!3254 (underlying!472 thiss!992)))) #b00000000000000000000000000000000))))

(assert (=> b!138287 d!43265))

(declare-fun d!43267 () Bool)

(assert (=> d!43267 (= (array_inv!1420 (_values!2902 (v!3254 (underlying!472 thiss!992)))) (bvsge (size!2568 (_values!2902 (v!3254 (underlying!472 thiss!992)))) #b00000000000000000000000000000000))))

(assert (=> b!138287 d!43267))

(declare-fun d!43269 () Bool)

(assert (=> d!43269 (= (map!1426 newMap!16) (getCurrentListMap!549 (_keys!4676 newMap!16) (_values!2902 newMap!16) (mask!7249 newMap!16) (extraKeys!2676 newMap!16) (zeroValue!2770 newMap!16) (minValue!2770 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2919 newMap!16)))))

(declare-fun bs!5810 () Bool)

(assert (= bs!5810 d!43269))

(assert (=> bs!5810 m!165639))

(assert (=> b!138278 d!43269))

(declare-fun b!138562 () Bool)

(declare-fun e!90333 () Bool)

(declare-fun e!90331 () Bool)

(assert (=> b!138562 (= e!90333 e!90331)))

(declare-fun res!66341 () Bool)

(declare-fun call!15273 () Bool)

(assert (=> b!138562 (= res!66341 call!15273)))

(assert (=> b!138562 (=> (not res!66341) (not e!90331))))

(declare-fun bm!15270 () Bool)

(declare-fun call!15278 () ListLongMap!1729)

(declare-fun call!15274 () ListLongMap!1729)

(assert (=> bm!15270 (= call!15278 call!15274)))

(declare-fun b!138563 () Bool)

(declare-fun e!90335 () Bool)

(declare-fun e!90336 () Bool)

(assert (=> b!138563 (= e!90335 e!90336)))

(declare-fun res!66343 () Bool)

(assert (=> b!138563 (=> (not res!66343) (not e!90336))))

(declare-fun lt!72461 () ListLongMap!1729)

(assert (=> b!138563 (= res!66343 (contains!910 lt!72461 (select (arr!2296 (_keys!4676 (v!3254 (underlying!472 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))))))

(assert (=> b!138563 (and (bvsge (bvadd #b00000000000000000000000000000001 from!355) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!355) (size!2567 (_keys!4676 (v!3254 (underlying!472 thiss!992))))))))

(declare-fun b!138564 () Bool)

(declare-fun e!90337 () Unit!4366)

(declare-fun Unit!4371 () Unit!4366)

(assert (=> b!138564 (= e!90337 Unit!4371)))

(declare-fun b!138565 () Bool)

(declare-fun e!90340 () ListLongMap!1729)

(declare-fun call!15275 () ListLongMap!1729)

(assert (=> b!138565 (= e!90340 call!15275)))

(declare-fun bm!15271 () Bool)

(declare-fun call!15277 () ListLongMap!1729)

(declare-fun getCurrentListMapNoExtraKeys!139 (array!4856 array!4858 (_ BitVec 32) (_ BitVec 32) V!3531 V!3531 (_ BitVec 32) Int) ListLongMap!1729)

(assert (=> bm!15271 (= call!15277 (getCurrentListMapNoExtraKeys!139 (_keys!4676 (v!3254 (underlying!472 thiss!992))) (_values!2902 (v!3254 (underlying!472 thiss!992))) (mask!7249 (v!3254 (underlying!472 thiss!992))) (extraKeys!2676 (v!3254 (underlying!472 thiss!992))) (zeroValue!2770 (v!3254 (underlying!472 thiss!992))) (minValue!2770 (v!3254 (underlying!472 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2919 (v!3254 (underlying!472 thiss!992)))))))

(declare-fun b!138566 () Bool)

(declare-fun e!90338 () ListLongMap!1729)

(assert (=> b!138566 (= e!90338 e!90340)))

(declare-fun c!25935 () Bool)

(assert (=> b!138566 (= c!25935 (and (not (= (bvand (extraKeys!2676 (v!3254 (underlying!472 thiss!992))) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand (extraKeys!2676 (v!3254 (underlying!472 thiss!992))) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!138567 () Bool)

(declare-fun res!66335 () Bool)

(declare-fun e!90332 () Bool)

(assert (=> b!138567 (=> (not res!66335) (not e!90332))))

(assert (=> b!138567 (= res!66335 e!90335)))

(declare-fun res!66339 () Bool)

(assert (=> b!138567 (=> res!66339 e!90335)))

(declare-fun e!90330 () Bool)

(assert (=> b!138567 (= res!66339 (not e!90330))))

(declare-fun res!66342 () Bool)

(assert (=> b!138567 (=> (not res!66342) (not e!90330))))

(assert (=> b!138567 (= res!66342 (bvslt (bvadd #b00000000000000000000000000000001 from!355) (size!2567 (_keys!4676 (v!3254 (underlying!472 thiss!992))))))))

(declare-fun b!138568 () Bool)

(declare-fun e!90334 () ListLongMap!1729)

(assert (=> b!138568 (= e!90334 call!15275)))

(declare-fun b!138569 () Bool)

(declare-fun call!15276 () ListLongMap!1729)

(assert (=> b!138569 (= e!90338 (+!172 call!15276 (tuple2!2651 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2770 (v!3254 (underlying!472 thiss!992))))))))

(declare-fun b!138570 () Bool)

(declare-fun e!90339 () Bool)

(assert (=> b!138570 (= e!90339 (validKeyInArray!0 (select (arr!2296 (_keys!4676 (v!3254 (underlying!472 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))))))

(declare-fun b!138571 () Bool)

(declare-fun c!25931 () Bool)

(assert (=> b!138571 (= c!25931 (and (not (= (bvand (extraKeys!2676 (v!3254 (underlying!472 thiss!992))) #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand (extraKeys!2676 (v!3254 (underlying!472 thiss!992))) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!138571 (= e!90340 e!90334)))

(declare-fun b!138572 () Bool)

(declare-fun res!66336 () Bool)

(assert (=> b!138572 (=> (not res!66336) (not e!90332))))

(assert (=> b!138572 (= res!66336 e!90333)))

(declare-fun c!25934 () Bool)

(assert (=> b!138572 (= c!25934 (not (= (bvand (extraKeys!2676 (v!3254 (underlying!472 thiss!992))) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!138573 () Bool)

(declare-fun e!90329 () Bool)

(declare-fun apply!118 (ListLongMap!1729 (_ BitVec 64)) V!3531)

(assert (=> b!138573 (= e!90329 (= (apply!118 lt!72461 #b1000000000000000000000000000000000000000000000000000000000000000) (minValue!2770 (v!3254 (underlying!472 thiss!992)))))))

(declare-fun b!138574 () Bool)

(declare-fun e!90341 () Bool)

(assert (=> b!138574 (= e!90341 e!90329)))

(declare-fun res!66338 () Bool)

(declare-fun call!15279 () Bool)

(assert (=> b!138574 (= res!66338 call!15279)))

(assert (=> b!138574 (=> (not res!66338) (not e!90329))))

(declare-fun bm!15272 () Bool)

(assert (=> bm!15272 (= call!15273 (contains!910 lt!72461 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun bm!15273 () Bool)

(assert (=> bm!15273 (= call!15279 (contains!910 lt!72461 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!138575 () Bool)

(assert (=> b!138575 (= e!90331 (= (apply!118 lt!72461 #b0000000000000000000000000000000000000000000000000000000000000000) (zeroValue!2770 (v!3254 (underlying!472 thiss!992)))))))

(declare-fun b!138576 () Bool)

(declare-fun lt!72462 () Unit!4366)

(assert (=> b!138576 (= e!90337 lt!72462)))

(declare-fun lt!72455 () ListLongMap!1729)

(assert (=> b!138576 (= lt!72455 (getCurrentListMapNoExtraKeys!139 (_keys!4676 (v!3254 (underlying!472 thiss!992))) (_values!2902 (v!3254 (underlying!472 thiss!992))) (mask!7249 (v!3254 (underlying!472 thiss!992))) (extraKeys!2676 (v!3254 (underlying!472 thiss!992))) (zeroValue!2770 (v!3254 (underlying!472 thiss!992))) (minValue!2770 (v!3254 (underlying!472 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2919 (v!3254 (underlying!472 thiss!992)))))))

(declare-fun lt!72469 () (_ BitVec 64))

(assert (=> b!138576 (= lt!72469 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!72459 () (_ BitVec 64))

(assert (=> b!138576 (= lt!72459 (select (arr!2296 (_keys!4676 (v!3254 (underlying!472 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)))))

(declare-fun lt!72464 () Unit!4366)

(declare-fun addStillContains!94 (ListLongMap!1729 (_ BitVec 64) V!3531 (_ BitVec 64)) Unit!4366)

(assert (=> b!138576 (= lt!72464 (addStillContains!94 lt!72455 lt!72469 (zeroValue!2770 (v!3254 (underlying!472 thiss!992))) lt!72459))))

(assert (=> b!138576 (contains!910 (+!172 lt!72455 (tuple2!2651 lt!72469 (zeroValue!2770 (v!3254 (underlying!472 thiss!992))))) lt!72459)))

(declare-fun lt!72466 () Unit!4366)

(assert (=> b!138576 (= lt!72466 lt!72464)))

(declare-fun lt!72476 () ListLongMap!1729)

(assert (=> b!138576 (= lt!72476 (getCurrentListMapNoExtraKeys!139 (_keys!4676 (v!3254 (underlying!472 thiss!992))) (_values!2902 (v!3254 (underlying!472 thiss!992))) (mask!7249 (v!3254 (underlying!472 thiss!992))) (extraKeys!2676 (v!3254 (underlying!472 thiss!992))) (zeroValue!2770 (v!3254 (underlying!472 thiss!992))) (minValue!2770 (v!3254 (underlying!472 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2919 (v!3254 (underlying!472 thiss!992)))))))

(declare-fun lt!72467 () (_ BitVec 64))

(assert (=> b!138576 (= lt!72467 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!72456 () (_ BitVec 64))

(assert (=> b!138576 (= lt!72456 (select (arr!2296 (_keys!4676 (v!3254 (underlying!472 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)))))

(declare-fun lt!72475 () Unit!4366)

(declare-fun addApplyDifferent!94 (ListLongMap!1729 (_ BitVec 64) V!3531 (_ BitVec 64)) Unit!4366)

(assert (=> b!138576 (= lt!72475 (addApplyDifferent!94 lt!72476 lt!72467 (minValue!2770 (v!3254 (underlying!472 thiss!992))) lt!72456))))

(assert (=> b!138576 (= (apply!118 (+!172 lt!72476 (tuple2!2651 lt!72467 (minValue!2770 (v!3254 (underlying!472 thiss!992))))) lt!72456) (apply!118 lt!72476 lt!72456))))

(declare-fun lt!72460 () Unit!4366)

(assert (=> b!138576 (= lt!72460 lt!72475)))

(declare-fun lt!72474 () ListLongMap!1729)

(assert (=> b!138576 (= lt!72474 (getCurrentListMapNoExtraKeys!139 (_keys!4676 (v!3254 (underlying!472 thiss!992))) (_values!2902 (v!3254 (underlying!472 thiss!992))) (mask!7249 (v!3254 (underlying!472 thiss!992))) (extraKeys!2676 (v!3254 (underlying!472 thiss!992))) (zeroValue!2770 (v!3254 (underlying!472 thiss!992))) (minValue!2770 (v!3254 (underlying!472 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2919 (v!3254 (underlying!472 thiss!992)))))))

(declare-fun lt!72473 () (_ BitVec 64))

(assert (=> b!138576 (= lt!72473 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!72457 () (_ BitVec 64))

(assert (=> b!138576 (= lt!72457 (select (arr!2296 (_keys!4676 (v!3254 (underlying!472 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)))))

(declare-fun lt!72465 () Unit!4366)

(assert (=> b!138576 (= lt!72465 (addApplyDifferent!94 lt!72474 lt!72473 (zeroValue!2770 (v!3254 (underlying!472 thiss!992))) lt!72457))))

(assert (=> b!138576 (= (apply!118 (+!172 lt!72474 (tuple2!2651 lt!72473 (zeroValue!2770 (v!3254 (underlying!472 thiss!992))))) lt!72457) (apply!118 lt!72474 lt!72457))))

(declare-fun lt!72458 () Unit!4366)

(assert (=> b!138576 (= lt!72458 lt!72465)))

(declare-fun lt!72470 () ListLongMap!1729)

(assert (=> b!138576 (= lt!72470 (getCurrentListMapNoExtraKeys!139 (_keys!4676 (v!3254 (underlying!472 thiss!992))) (_values!2902 (v!3254 (underlying!472 thiss!992))) (mask!7249 (v!3254 (underlying!472 thiss!992))) (extraKeys!2676 (v!3254 (underlying!472 thiss!992))) (zeroValue!2770 (v!3254 (underlying!472 thiss!992))) (minValue!2770 (v!3254 (underlying!472 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2919 (v!3254 (underlying!472 thiss!992)))))))

(declare-fun lt!72472 () (_ BitVec 64))

(assert (=> b!138576 (= lt!72472 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!72471 () (_ BitVec 64))

(assert (=> b!138576 (= lt!72471 (select (arr!2296 (_keys!4676 (v!3254 (underlying!472 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)))))

(assert (=> b!138576 (= lt!72462 (addApplyDifferent!94 lt!72470 lt!72472 (minValue!2770 (v!3254 (underlying!472 thiss!992))) lt!72471))))

(assert (=> b!138576 (= (apply!118 (+!172 lt!72470 (tuple2!2651 lt!72472 (minValue!2770 (v!3254 (underlying!472 thiss!992))))) lt!72471) (apply!118 lt!72470 lt!72471))))

(declare-fun bm!15274 () Bool)

(assert (=> bm!15274 (= call!15274 call!15277)))

(declare-fun b!138577 () Bool)

(assert (=> b!138577 (= e!90341 (not call!15279))))

(declare-fun b!138578 () Bool)

(assert (=> b!138578 (= e!90334 call!15278)))

(declare-fun d!43271 () Bool)

(assert (=> d!43271 e!90332))

(declare-fun res!66337 () Bool)

(assert (=> d!43271 (=> (not res!66337) (not e!90332))))

(assert (=> d!43271 (= res!66337 (or (bvsge (bvadd #b00000000000000000000000000000001 from!355) (size!2567 (_keys!4676 (v!3254 (underlying!472 thiss!992))))) (and (bvsge (bvadd #b00000000000000000000000000000001 from!355) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!355) (size!2567 (_keys!4676 (v!3254 (underlying!472 thiss!992))))))))))

(declare-fun lt!72468 () ListLongMap!1729)

(assert (=> d!43271 (= lt!72461 lt!72468)))

(declare-fun lt!72463 () Unit!4366)

(assert (=> d!43271 (= lt!72463 e!90337)))

(declare-fun c!25933 () Bool)

(assert (=> d!43271 (= c!25933 e!90339)))

(declare-fun res!66340 () Bool)

(assert (=> d!43271 (=> (not res!66340) (not e!90339))))

(assert (=> d!43271 (= res!66340 (bvslt (bvadd #b00000000000000000000000000000001 from!355) (size!2567 (_keys!4676 (v!3254 (underlying!472 thiss!992))))))))

(assert (=> d!43271 (= lt!72468 e!90338)))

(declare-fun c!25936 () Bool)

(assert (=> d!43271 (= c!25936 (and (not (= (bvand (extraKeys!2676 (v!3254 (underlying!472 thiss!992))) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (extraKeys!2676 (v!3254 (underlying!472 thiss!992))) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!43271 (validMask!0 (mask!7249 (v!3254 (underlying!472 thiss!992))))))

(assert (=> d!43271 (= (getCurrentListMap!549 (_keys!4676 (v!3254 (underlying!472 thiss!992))) (_values!2902 (v!3254 (underlying!472 thiss!992))) (mask!7249 (v!3254 (underlying!472 thiss!992))) (extraKeys!2676 (v!3254 (underlying!472 thiss!992))) (zeroValue!2770 (v!3254 (underlying!472 thiss!992))) (minValue!2770 (v!3254 (underlying!472 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2919 (v!3254 (underlying!472 thiss!992)))) lt!72461)))

(declare-fun b!138579 () Bool)

(assert (=> b!138579 (= e!90330 (validKeyInArray!0 (select (arr!2296 (_keys!4676 (v!3254 (underlying!472 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))))))

(declare-fun bm!15275 () Bool)

(assert (=> bm!15275 (= call!15275 call!15276)))

(declare-fun b!138580 () Bool)

(assert (=> b!138580 (= e!90336 (= (apply!118 lt!72461 (select (arr!2296 (_keys!4676 (v!3254 (underlying!472 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))) (get!1516 (select (arr!2297 (_values!2902 (v!3254 (underlying!472 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (dynLambda!435 (defaultEntry!2919 (v!3254 (underlying!472 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!138580 (and (bvsge (bvadd #b00000000000000000000000000000001 from!355) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!355) (size!2568 (_values!2902 (v!3254 (underlying!472 thiss!992))))))))

(assert (=> b!138580 (and (bvsge (bvadd #b00000000000000000000000000000001 from!355) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!355) (size!2567 (_keys!4676 (v!3254 (underlying!472 thiss!992))))))))

(declare-fun b!138581 () Bool)

(assert (=> b!138581 (= e!90332 e!90341)))

(declare-fun c!25932 () Bool)

(assert (=> b!138581 (= c!25932 (not (= (bvand (extraKeys!2676 (v!3254 (underlying!472 thiss!992))) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!138582 () Bool)

(assert (=> b!138582 (= e!90333 (not call!15273))))

(declare-fun bm!15276 () Bool)

(assert (=> bm!15276 (= call!15276 (+!172 (ite c!25936 call!15277 (ite c!25935 call!15274 call!15278)) (ite (or c!25936 c!25935) (tuple2!2651 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2770 (v!3254 (underlying!472 thiss!992)))) (tuple2!2651 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2770 (v!3254 (underlying!472 thiss!992)))))))))

(assert (= (and d!43271 c!25936) b!138569))

(assert (= (and d!43271 (not c!25936)) b!138566))

(assert (= (and b!138566 c!25935) b!138565))

(assert (= (and b!138566 (not c!25935)) b!138571))

(assert (= (and b!138571 c!25931) b!138568))

(assert (= (and b!138571 (not c!25931)) b!138578))

(assert (= (or b!138568 b!138578) bm!15270))

(assert (= (or b!138565 bm!15270) bm!15274))

(assert (= (or b!138565 b!138568) bm!15275))

(assert (= (or b!138569 bm!15274) bm!15271))

(assert (= (or b!138569 bm!15275) bm!15276))

(assert (= (and d!43271 res!66340) b!138570))

(assert (= (and d!43271 c!25933) b!138576))

(assert (= (and d!43271 (not c!25933)) b!138564))

(assert (= (and d!43271 res!66337) b!138567))

(assert (= (and b!138567 res!66342) b!138579))

(assert (= (and b!138567 (not res!66339)) b!138563))

(assert (= (and b!138563 res!66343) b!138580))

(assert (= (and b!138567 res!66335) b!138572))

(assert (= (and b!138572 c!25934) b!138562))

(assert (= (and b!138572 (not c!25934)) b!138582))

(assert (= (and b!138562 res!66341) b!138575))

(assert (= (or b!138562 b!138582) bm!15272))

(assert (= (and b!138572 res!66336) b!138581))

(assert (= (and b!138581 c!25932) b!138574))

(assert (= (and b!138581 (not c!25932)) b!138577))

(assert (= (and b!138574 res!66338) b!138573))

(assert (= (or b!138574 b!138577) bm!15273))

(declare-fun b_lambda!6237 () Bool)

(assert (=> (not b_lambda!6237) (not b!138580)))

(assert (=> b!138580 t!6302))

(declare-fun b_and!8657 () Bool)

(assert (= b_and!8645 (and (=> t!6302 result!4127) b_and!8657)))

(assert (=> b!138580 t!6304))

(declare-fun b_and!8659 () Bool)

(assert (= b_and!8647 (and (=> t!6304 result!4131) b_and!8659)))

(declare-fun m!165671 () Bool)

(assert (=> b!138569 m!165671))

(declare-fun m!165673 () Bool)

(assert (=> b!138576 m!165673))

(declare-fun m!165675 () Bool)

(assert (=> b!138576 m!165675))

(assert (=> b!138576 m!165591))

(assert (=> b!138576 m!165673))

(declare-fun m!165677 () Bool)

(assert (=> b!138576 m!165677))

(declare-fun m!165679 () Bool)

(assert (=> b!138576 m!165679))

(declare-fun m!165681 () Bool)

(assert (=> b!138576 m!165681))

(declare-fun m!165683 () Bool)

(assert (=> b!138576 m!165683))

(declare-fun m!165685 () Bool)

(assert (=> b!138576 m!165685))

(declare-fun m!165687 () Bool)

(assert (=> b!138576 m!165687))

(declare-fun m!165689 () Bool)

(assert (=> b!138576 m!165689))

(assert (=> b!138576 m!165687))

(declare-fun m!165691 () Bool)

(assert (=> b!138576 m!165691))

(declare-fun m!165693 () Bool)

(assert (=> b!138576 m!165693))

(declare-fun m!165695 () Bool)

(assert (=> b!138576 m!165695))

(declare-fun m!165697 () Bool)

(assert (=> b!138576 m!165697))

(assert (=> b!138576 m!165677))

(declare-fun m!165699 () Bool)

(assert (=> b!138576 m!165699))

(assert (=> b!138576 m!165681))

(declare-fun m!165701 () Bool)

(assert (=> b!138576 m!165701))

(declare-fun m!165703 () Bool)

(assert (=> b!138576 m!165703))

(assert (=> b!138563 m!165591))

(assert (=> b!138563 m!165591))

(declare-fun m!165705 () Bool)

(assert (=> b!138563 m!165705))

(declare-fun m!165707 () Bool)

(assert (=> b!138575 m!165707))

(declare-fun m!165709 () Bool)

(assert (=> bm!15272 m!165709))

(declare-fun m!165711 () Bool)

(assert (=> b!138580 m!165711))

(assert (=> b!138580 m!165507))

(declare-fun m!165713 () Bool)

(assert (=> b!138580 m!165713))

(assert (=> b!138580 m!165507))

(assert (=> b!138580 m!165711))

(assert (=> b!138580 m!165591))

(declare-fun m!165715 () Bool)

(assert (=> b!138580 m!165715))

(assert (=> b!138580 m!165591))

(assert (=> d!43271 m!165597))

(assert (=> bm!15271 m!165697))

(assert (=> b!138570 m!165591))

(assert (=> b!138570 m!165591))

(declare-fun m!165717 () Bool)

(assert (=> b!138570 m!165717))

(declare-fun m!165719 () Bool)

(assert (=> b!138573 m!165719))

(declare-fun m!165721 () Bool)

(assert (=> bm!15276 m!165721))

(assert (=> b!138579 m!165591))

(assert (=> b!138579 m!165591))

(assert (=> b!138579 m!165717))

(declare-fun m!165723 () Bool)

(assert (=> bm!15273 m!165723))

(assert (=> b!138278 d!43271))

(declare-fun condMapEmpty!4779 () Bool)

(declare-fun mapDefault!4779 () ValueCell!1113)

(assert (=> mapNonEmpty!4770 (= condMapEmpty!4779 (= mapRest!4770 ((as const (Array (_ BitVec 32) ValueCell!1113)) mapDefault!4779)))))

(declare-fun e!90347 () Bool)

(declare-fun mapRes!4779 () Bool)

(assert (=> mapNonEmpty!4770 (= tp!11439 (and e!90347 mapRes!4779))))

(declare-fun b!138589 () Bool)

(declare-fun e!90346 () Bool)

(assert (=> b!138589 (= e!90346 tp_is_empty!2913)))

(declare-fun mapIsEmpty!4779 () Bool)

(assert (=> mapIsEmpty!4779 mapRes!4779))

(declare-fun b!138590 () Bool)

(assert (=> b!138590 (= e!90347 tp_is_empty!2913)))

(declare-fun mapNonEmpty!4779 () Bool)

(declare-fun tp!11457 () Bool)

(assert (=> mapNonEmpty!4779 (= mapRes!4779 (and tp!11457 e!90346))))

(declare-fun mapValue!4779 () ValueCell!1113)

(declare-fun mapKey!4779 () (_ BitVec 32))

(declare-fun mapRest!4779 () (Array (_ BitVec 32) ValueCell!1113))

(assert (=> mapNonEmpty!4779 (= mapRest!4770 (store mapRest!4779 mapKey!4779 mapValue!4779))))

(assert (= (and mapNonEmpty!4770 condMapEmpty!4779) mapIsEmpty!4779))

(assert (= (and mapNonEmpty!4770 (not condMapEmpty!4779)) mapNonEmpty!4779))

(assert (= (and mapNonEmpty!4779 ((_ is ValueCellFull!1113) mapValue!4779)) b!138589))

(assert (= (and mapNonEmpty!4770 ((_ is ValueCellFull!1113) mapDefault!4779)) b!138590))

(declare-fun m!165725 () Bool)

(assert (=> mapNonEmpty!4779 m!165725))

(declare-fun condMapEmpty!4780 () Bool)

(declare-fun mapDefault!4780 () ValueCell!1113)

(assert (=> mapNonEmpty!4769 (= condMapEmpty!4780 (= mapRest!4769 ((as const (Array (_ BitVec 32) ValueCell!1113)) mapDefault!4780)))))

(declare-fun e!90349 () Bool)

(declare-fun mapRes!4780 () Bool)

(assert (=> mapNonEmpty!4769 (= tp!11440 (and e!90349 mapRes!4780))))

(declare-fun b!138591 () Bool)

(declare-fun e!90348 () Bool)

(assert (=> b!138591 (= e!90348 tp_is_empty!2913)))

(declare-fun mapIsEmpty!4780 () Bool)

(assert (=> mapIsEmpty!4780 mapRes!4780))

(declare-fun b!138592 () Bool)

(assert (=> b!138592 (= e!90349 tp_is_empty!2913)))

(declare-fun mapNonEmpty!4780 () Bool)

(declare-fun tp!11458 () Bool)

(assert (=> mapNonEmpty!4780 (= mapRes!4780 (and tp!11458 e!90348))))

(declare-fun mapKey!4780 () (_ BitVec 32))

(declare-fun mapValue!4780 () ValueCell!1113)

(declare-fun mapRest!4780 () (Array (_ BitVec 32) ValueCell!1113))

(assert (=> mapNonEmpty!4780 (= mapRest!4769 (store mapRest!4780 mapKey!4780 mapValue!4780))))

(assert (= (and mapNonEmpty!4769 condMapEmpty!4780) mapIsEmpty!4780))

(assert (= (and mapNonEmpty!4769 (not condMapEmpty!4780)) mapNonEmpty!4780))

(assert (= (and mapNonEmpty!4780 ((_ is ValueCellFull!1113) mapValue!4780)) b!138591))

(assert (= (and mapNonEmpty!4769 ((_ is ValueCellFull!1113) mapDefault!4780)) b!138592))

(declare-fun m!165727 () Bool)

(assert (=> mapNonEmpty!4780 m!165727))

(declare-fun b_lambda!6239 () Bool)

(assert (= b_lambda!6237 (or (and b!138287 b_free!2993) (and b!138277 b_free!2995 (= (defaultEntry!2919 newMap!16) (defaultEntry!2919 (v!3254 (underlying!472 thiss!992))))) b_lambda!6239)))

(check-sat (not b!138372) (not d!43257) (not b!138569) (not mapNonEmpty!4780) (not b!138495) (not bm!15271) (not b!138385) (not b!138510) b_and!8657 (not b!138366) (not b_lambda!6239) (not b!138508) (not b!138509) (not bm!15244) (not b!138475) (not b!138580) (not b!138365) (not d!43247) (not b!138500) (not b_next!2995) (not b!138570) b_and!8659 (not bm!15235) (not b!138355) (not bm!15252) tp_is_empty!2913 (not bm!15248) (not d!43271) (not bm!15183) (not bm!15249) (not b_next!2993) (not bm!15251) (not b!138575) (not bm!15273) (not b!138377) (not b_lambda!6235) (not d!43269) (not b!138563) (not bm!15245) (not mapNonEmpty!4779) (not b!138576) (not bm!15253) (not bm!15236) (not bm!15243) (not b!138487) (not d!43259) (not b!138579) (not b!138387) (not b!138518) (not d!43255) (not b!138357) (not b!138499) (not d!43261) (not bm!15242) (not bm!15276) (not bm!15238) (not bm!15272) (not b!138353) (not b!138519) (not b!138364) (not b!138573))
(check-sat b_and!8657 b_and!8659 (not b_next!2993) (not b_next!2995))
(get-model)

(declare-fun d!43273 () Bool)

(assert (=> d!43273 (= (validKeyInArray!0 (select (arr!2296 (_keys!4676 (v!3254 (underlying!472 thiss!992)))) #b00000000000000000000000000000000)) (and (not (= (select (arr!2296 (_keys!4676 (v!3254 (underlying!472 thiss!992)))) #b00000000000000000000000000000000) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!2296 (_keys!4676 (v!3254 (underlying!472 thiss!992)))) #b00000000000000000000000000000000) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!138355 d!43273))

(declare-fun d!43275 () Bool)

(declare-fun e!90351 () Bool)

(assert (=> d!43275 e!90351))

(declare-fun res!66344 () Bool)

(assert (=> d!43275 (=> res!66344 e!90351)))

(declare-fun lt!72478 () Bool)

(assert (=> d!43275 (= res!66344 (not lt!72478))))

(declare-fun lt!72480 () Bool)

(assert (=> d!43275 (= lt!72478 lt!72480)))

(declare-fun lt!72477 () Unit!4366)

(declare-fun e!90350 () Unit!4366)

(assert (=> d!43275 (= lt!72477 e!90350)))

(declare-fun c!25937 () Bool)

(assert (=> d!43275 (= c!25937 lt!72480)))

(assert (=> d!43275 (= lt!72480 (containsKey!177 (toList!880 lt!72461) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!43275 (= (contains!910 lt!72461 #b1000000000000000000000000000000000000000000000000000000000000000) lt!72478)))

(declare-fun b!138593 () Bool)

(declare-fun lt!72479 () Unit!4366)

(assert (=> b!138593 (= e!90350 lt!72479)))

(assert (=> b!138593 (= lt!72479 (lemmaContainsKeyImpliesGetValueByKeyDefined!126 (toList!880 lt!72461) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!138593 (isDefined!127 (getValueByKey!173 (toList!880 lt!72461) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!138594 () Bool)

(declare-fun Unit!4372 () Unit!4366)

(assert (=> b!138594 (= e!90350 Unit!4372)))

(declare-fun b!138595 () Bool)

(assert (=> b!138595 (= e!90351 (isDefined!127 (getValueByKey!173 (toList!880 lt!72461) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!43275 c!25937) b!138593))

(assert (= (and d!43275 (not c!25937)) b!138594))

(assert (= (and d!43275 (not res!66344)) b!138595))

(declare-fun m!165729 () Bool)

(assert (=> d!43275 m!165729))

(declare-fun m!165731 () Bool)

(assert (=> b!138593 m!165731))

(declare-fun m!165733 () Bool)

(assert (=> b!138593 m!165733))

(assert (=> b!138593 m!165733))

(declare-fun m!165735 () Bool)

(assert (=> b!138593 m!165735))

(assert (=> b!138595 m!165733))

(assert (=> b!138595 m!165733))

(assert (=> b!138595 m!165735))

(assert (=> bm!15273 d!43275))

(declare-fun d!43277 () Bool)

(declare-fun e!90353 () Bool)

(assert (=> d!43277 e!90353))

(declare-fun res!66345 () Bool)

(assert (=> d!43277 (=> res!66345 e!90353)))

(declare-fun lt!72482 () Bool)

(assert (=> d!43277 (= res!66345 (not lt!72482))))

(declare-fun lt!72484 () Bool)

(assert (=> d!43277 (= lt!72482 lt!72484)))

(declare-fun lt!72481 () Unit!4366)

(declare-fun e!90352 () Unit!4366)

(assert (=> d!43277 (= lt!72481 e!90352)))

(declare-fun c!25938 () Bool)

(assert (=> d!43277 (= c!25938 lt!72484)))

(assert (=> d!43277 (= lt!72484 (containsKey!177 (toList!880 call!15244) (select (arr!2296 (_keys!4676 (v!3254 (underlying!472 thiss!992)))) from!355)))))

(assert (=> d!43277 (= (contains!910 call!15244 (select (arr!2296 (_keys!4676 (v!3254 (underlying!472 thiss!992)))) from!355)) lt!72482)))

(declare-fun b!138596 () Bool)

(declare-fun lt!72483 () Unit!4366)

(assert (=> b!138596 (= e!90352 lt!72483)))

(assert (=> b!138596 (= lt!72483 (lemmaContainsKeyImpliesGetValueByKeyDefined!126 (toList!880 call!15244) (select (arr!2296 (_keys!4676 (v!3254 (underlying!472 thiss!992)))) from!355)))))

(assert (=> b!138596 (isDefined!127 (getValueByKey!173 (toList!880 call!15244) (select (arr!2296 (_keys!4676 (v!3254 (underlying!472 thiss!992)))) from!355)))))

(declare-fun b!138597 () Bool)

(declare-fun Unit!4373 () Unit!4366)

(assert (=> b!138597 (= e!90352 Unit!4373)))

(declare-fun b!138598 () Bool)

(assert (=> b!138598 (= e!90353 (isDefined!127 (getValueByKey!173 (toList!880 call!15244) (select (arr!2296 (_keys!4676 (v!3254 (underlying!472 thiss!992)))) from!355))))))

(assert (= (and d!43277 c!25938) b!138596))

(assert (= (and d!43277 (not c!25938)) b!138597))

(assert (= (and d!43277 (not res!66345)) b!138598))

(assert (=> d!43277 m!165499))

(declare-fun m!165737 () Bool)

(assert (=> d!43277 m!165737))

(assert (=> b!138596 m!165499))

(declare-fun m!165739 () Bool)

(assert (=> b!138596 m!165739))

(assert (=> b!138596 m!165499))

(declare-fun m!165741 () Bool)

(assert (=> b!138596 m!165741))

(assert (=> b!138596 m!165741))

(declare-fun m!165743 () Bool)

(assert (=> b!138596 m!165743))

(assert (=> b!138598 m!165499))

(assert (=> b!138598 m!165741))

(assert (=> b!138598 m!165741))

(assert (=> b!138598 m!165743))

(assert (=> b!138487 d!43277))

(declare-fun d!43279 () Bool)

(declare-fun lt!72487 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!135 (List!1750) (InoxSet (_ BitVec 64)))

(assert (=> d!43279 (= lt!72487 (select (content!135 Nil!1747) (select (arr!2296 (_keys!4676 (v!3254 (underlying!472 thiss!992)))) #b00000000000000000000000000000000)))))

(declare-fun e!90359 () Bool)

(assert (=> d!43279 (= lt!72487 e!90359)))

(declare-fun res!66350 () Bool)

(assert (=> d!43279 (=> (not res!66350) (not e!90359))))

(assert (=> d!43279 (= res!66350 ((_ is Cons!1746) Nil!1747))))

(assert (=> d!43279 (= (contains!912 Nil!1747 (select (arr!2296 (_keys!4676 (v!3254 (underlying!472 thiss!992)))) #b00000000000000000000000000000000)) lt!72487)))

(declare-fun b!138603 () Bool)

(declare-fun e!90358 () Bool)

(assert (=> b!138603 (= e!90359 e!90358)))

(declare-fun res!66351 () Bool)

(assert (=> b!138603 (=> res!66351 e!90358)))

(assert (=> b!138603 (= res!66351 (= (h!2353 Nil!1747) (select (arr!2296 (_keys!4676 (v!3254 (underlying!472 thiss!992)))) #b00000000000000000000000000000000)))))

(declare-fun b!138604 () Bool)

(assert (=> b!138604 (= e!90358 (contains!912 (t!6306 Nil!1747) (select (arr!2296 (_keys!4676 (v!3254 (underlying!472 thiss!992)))) #b00000000000000000000000000000000)))))

(assert (= (and d!43279 res!66350) b!138603))

(assert (= (and b!138603 (not res!66351)) b!138604))

(declare-fun m!165745 () Bool)

(assert (=> d!43279 m!165745))

(assert (=> d!43279 m!165575))

(declare-fun m!165747 () Bool)

(assert (=> d!43279 m!165747))

(assert (=> b!138604 m!165575))

(declare-fun m!165749 () Bool)

(assert (=> b!138604 m!165749))

(assert (=> b!138357 d!43279))

(declare-fun d!43281 () Bool)

(declare-fun get!1520 (Option!179) V!3531)

(assert (=> d!43281 (= (apply!118 lt!72474 lt!72457) (get!1520 (getValueByKey!173 (toList!880 lt!72474) lt!72457)))))

(declare-fun bs!5811 () Bool)

(assert (= bs!5811 d!43281))

(declare-fun m!165751 () Bool)

(assert (=> bs!5811 m!165751))

(assert (=> bs!5811 m!165751))

(declare-fun m!165753 () Bool)

(assert (=> bs!5811 m!165753))

(assert (=> b!138576 d!43281))

(declare-fun d!43283 () Bool)

(declare-fun e!90361 () Bool)

(assert (=> d!43283 e!90361))

(declare-fun res!66352 () Bool)

(assert (=> d!43283 (=> res!66352 e!90361)))

(declare-fun lt!72489 () Bool)

(assert (=> d!43283 (= res!66352 (not lt!72489))))

(declare-fun lt!72491 () Bool)

(assert (=> d!43283 (= lt!72489 lt!72491)))

(declare-fun lt!72488 () Unit!4366)

(declare-fun e!90360 () Unit!4366)

(assert (=> d!43283 (= lt!72488 e!90360)))

(declare-fun c!25939 () Bool)

(assert (=> d!43283 (= c!25939 lt!72491)))

(assert (=> d!43283 (= lt!72491 (containsKey!177 (toList!880 (+!172 lt!72455 (tuple2!2651 lt!72469 (zeroValue!2770 (v!3254 (underlying!472 thiss!992)))))) lt!72459))))

(assert (=> d!43283 (= (contains!910 (+!172 lt!72455 (tuple2!2651 lt!72469 (zeroValue!2770 (v!3254 (underlying!472 thiss!992))))) lt!72459) lt!72489)))

(declare-fun b!138605 () Bool)

(declare-fun lt!72490 () Unit!4366)

(assert (=> b!138605 (= e!90360 lt!72490)))

(assert (=> b!138605 (= lt!72490 (lemmaContainsKeyImpliesGetValueByKeyDefined!126 (toList!880 (+!172 lt!72455 (tuple2!2651 lt!72469 (zeroValue!2770 (v!3254 (underlying!472 thiss!992)))))) lt!72459))))

(assert (=> b!138605 (isDefined!127 (getValueByKey!173 (toList!880 (+!172 lt!72455 (tuple2!2651 lt!72469 (zeroValue!2770 (v!3254 (underlying!472 thiss!992)))))) lt!72459))))

(declare-fun b!138606 () Bool)

(declare-fun Unit!4374 () Unit!4366)

(assert (=> b!138606 (= e!90360 Unit!4374)))

(declare-fun b!138607 () Bool)

(assert (=> b!138607 (= e!90361 (isDefined!127 (getValueByKey!173 (toList!880 (+!172 lt!72455 (tuple2!2651 lt!72469 (zeroValue!2770 (v!3254 (underlying!472 thiss!992)))))) lt!72459)))))

(assert (= (and d!43283 c!25939) b!138605))

(assert (= (and d!43283 (not c!25939)) b!138606))

(assert (= (and d!43283 (not res!66352)) b!138607))

(declare-fun m!165755 () Bool)

(assert (=> d!43283 m!165755))

(declare-fun m!165757 () Bool)

(assert (=> b!138605 m!165757))

(declare-fun m!165759 () Bool)

(assert (=> b!138605 m!165759))

(assert (=> b!138605 m!165759))

(declare-fun m!165761 () Bool)

(assert (=> b!138605 m!165761))

(assert (=> b!138607 m!165759))

(assert (=> b!138607 m!165759))

(assert (=> b!138607 m!165761))

(assert (=> b!138576 d!43283))

(declare-fun b!138632 () Bool)

(declare-fun res!66363 () Bool)

(declare-fun e!90381 () Bool)

(assert (=> b!138632 (=> (not res!66363) (not e!90381))))

(declare-fun lt!72510 () ListLongMap!1729)

(assert (=> b!138632 (= res!66363 (not (contains!910 lt!72510 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!138634 () Bool)

(declare-fun e!90382 () Bool)

(assert (=> b!138634 (= e!90381 e!90382)))

(declare-fun c!25950 () Bool)

(declare-fun e!90377 () Bool)

(assert (=> b!138634 (= c!25950 e!90377)))

(declare-fun res!66362 () Bool)

(assert (=> b!138634 (=> (not res!66362) (not e!90377))))

(assert (=> b!138634 (= res!66362 (bvslt (bvadd #b00000000000000000000000000000001 from!355) (size!2567 (_keys!4676 (v!3254 (underlying!472 thiss!992))))))))

(declare-fun e!90378 () Bool)

(declare-fun b!138635 () Bool)

(assert (=> b!138635 (= e!90378 (= lt!72510 (getCurrentListMapNoExtraKeys!139 (_keys!4676 (v!3254 (underlying!472 thiss!992))) (_values!2902 (v!3254 (underlying!472 thiss!992))) (mask!7249 (v!3254 (underlying!472 thiss!992))) (extraKeys!2676 (v!3254 (underlying!472 thiss!992))) (zeroValue!2770 (v!3254 (underlying!472 thiss!992))) (minValue!2770 (v!3254 (underlying!472 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355 #b00000000000000000000000000000001) (defaultEntry!2919 (v!3254 (underlying!472 thiss!992))))))))

(declare-fun b!138636 () Bool)

(declare-fun e!90379 () ListLongMap!1729)

(assert (=> b!138636 (= e!90379 (ListLongMap!1730 Nil!1746))))

(declare-fun b!138637 () Bool)

(declare-fun e!90380 () Bool)

(assert (=> b!138637 (= e!90382 e!90380)))

(assert (=> b!138637 (and (bvsge (bvadd #b00000000000000000000000000000001 from!355) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!355) (size!2567 (_keys!4676 (v!3254 (underlying!472 thiss!992))))))))

(declare-fun res!66361 () Bool)

(assert (=> b!138637 (= res!66361 (contains!910 lt!72510 (select (arr!2296 (_keys!4676 (v!3254 (underlying!472 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))))))

(assert (=> b!138637 (=> (not res!66361) (not e!90380))))

(declare-fun d!43285 () Bool)

(assert (=> d!43285 e!90381))

(declare-fun res!66364 () Bool)

(assert (=> d!43285 (=> (not res!66364) (not e!90381))))

(assert (=> d!43285 (= res!66364 (not (contains!910 lt!72510 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!43285 (= lt!72510 e!90379)))

(declare-fun c!25949 () Bool)

(assert (=> d!43285 (= c!25949 (bvsge (bvadd #b00000000000000000000000000000001 from!355) (size!2567 (_keys!4676 (v!3254 (underlying!472 thiss!992))))))))

(assert (=> d!43285 (validMask!0 (mask!7249 (v!3254 (underlying!472 thiss!992))))))

(assert (=> d!43285 (= (getCurrentListMapNoExtraKeys!139 (_keys!4676 (v!3254 (underlying!472 thiss!992))) (_values!2902 (v!3254 (underlying!472 thiss!992))) (mask!7249 (v!3254 (underlying!472 thiss!992))) (extraKeys!2676 (v!3254 (underlying!472 thiss!992))) (zeroValue!2770 (v!3254 (underlying!472 thiss!992))) (minValue!2770 (v!3254 (underlying!472 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2919 (v!3254 (underlying!472 thiss!992)))) lt!72510)))

(declare-fun b!138633 () Bool)

(declare-fun e!90376 () ListLongMap!1729)

(assert (=> b!138633 (= e!90379 e!90376)))

(declare-fun c!25951 () Bool)

(assert (=> b!138633 (= c!25951 (validKeyInArray!0 (select (arr!2296 (_keys!4676 (v!3254 (underlying!472 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))))))

(declare-fun b!138638 () Bool)

(declare-fun isEmpty!420 (ListLongMap!1729) Bool)

(assert (=> b!138638 (= e!90378 (isEmpty!420 lt!72510))))

(declare-fun b!138639 () Bool)

(assert (=> b!138639 (= e!90377 (validKeyInArray!0 (select (arr!2296 (_keys!4676 (v!3254 (underlying!472 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))))))

(assert (=> b!138639 (bvsge (bvadd #b00000000000000000000000000000001 from!355) #b00000000000000000000000000000000)))

(declare-fun bm!15279 () Bool)

(declare-fun call!15282 () ListLongMap!1729)

(assert (=> bm!15279 (= call!15282 (getCurrentListMapNoExtraKeys!139 (_keys!4676 (v!3254 (underlying!472 thiss!992))) (_values!2902 (v!3254 (underlying!472 thiss!992))) (mask!7249 (v!3254 (underlying!472 thiss!992))) (extraKeys!2676 (v!3254 (underlying!472 thiss!992))) (zeroValue!2770 (v!3254 (underlying!472 thiss!992))) (minValue!2770 (v!3254 (underlying!472 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355 #b00000000000000000000000000000001) (defaultEntry!2919 (v!3254 (underlying!472 thiss!992)))))))

(declare-fun b!138640 () Bool)

(assert (=> b!138640 (and (bvsge (bvadd #b00000000000000000000000000000001 from!355) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!355) (size!2567 (_keys!4676 (v!3254 (underlying!472 thiss!992))))))))

(assert (=> b!138640 (and (bvsge (bvadd #b00000000000000000000000000000001 from!355) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!355) (size!2568 (_values!2902 (v!3254 (underlying!472 thiss!992))))))))

(assert (=> b!138640 (= e!90380 (= (apply!118 lt!72510 (select (arr!2296 (_keys!4676 (v!3254 (underlying!472 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))) (get!1516 (select (arr!2297 (_values!2902 (v!3254 (underlying!472 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (dynLambda!435 (defaultEntry!2919 (v!3254 (underlying!472 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!138641 () Bool)

(assert (=> b!138641 (= e!90382 e!90378)))

(declare-fun c!25948 () Bool)

(assert (=> b!138641 (= c!25948 (bvslt (bvadd #b00000000000000000000000000000001 from!355) (size!2567 (_keys!4676 (v!3254 (underlying!472 thiss!992))))))))

(declare-fun b!138642 () Bool)

(declare-fun lt!72507 () Unit!4366)

(declare-fun lt!72511 () Unit!4366)

(assert (=> b!138642 (= lt!72507 lt!72511)))

(declare-fun lt!72508 () ListLongMap!1729)

(declare-fun lt!72506 () (_ BitVec 64))

(declare-fun lt!72512 () (_ BitVec 64))

(declare-fun lt!72509 () V!3531)

(assert (=> b!138642 (not (contains!910 (+!172 lt!72508 (tuple2!2651 lt!72512 lt!72509)) lt!72506))))

(declare-fun addStillNotContains!65 (ListLongMap!1729 (_ BitVec 64) V!3531 (_ BitVec 64)) Unit!4366)

(assert (=> b!138642 (= lt!72511 (addStillNotContains!65 lt!72508 lt!72512 lt!72509 lt!72506))))

(assert (=> b!138642 (= lt!72506 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!138642 (= lt!72509 (get!1516 (select (arr!2297 (_values!2902 (v!3254 (underlying!472 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (dynLambda!435 (defaultEntry!2919 (v!3254 (underlying!472 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!138642 (= lt!72512 (select (arr!2296 (_keys!4676 (v!3254 (underlying!472 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)))))

(assert (=> b!138642 (= lt!72508 call!15282)))

(assert (=> b!138642 (= e!90376 (+!172 call!15282 (tuple2!2651 (select (arr!2296 (_keys!4676 (v!3254 (underlying!472 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (get!1516 (select (arr!2297 (_values!2902 (v!3254 (underlying!472 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (dynLambda!435 (defaultEntry!2919 (v!3254 (underlying!472 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!138643 () Bool)

(assert (=> b!138643 (= e!90376 call!15282)))

(assert (= (and d!43285 c!25949) b!138636))

(assert (= (and d!43285 (not c!25949)) b!138633))

(assert (= (and b!138633 c!25951) b!138642))

(assert (= (and b!138633 (not c!25951)) b!138643))

(assert (= (or b!138642 b!138643) bm!15279))

(assert (= (and d!43285 res!66364) b!138632))

(assert (= (and b!138632 res!66363) b!138634))

(assert (= (and b!138634 res!66362) b!138639))

(assert (= (and b!138634 c!25950) b!138637))

(assert (= (and b!138634 (not c!25950)) b!138641))

(assert (= (and b!138637 res!66361) b!138640))

(assert (= (and b!138641 c!25948) b!138635))

(assert (= (and b!138641 (not c!25948)) b!138638))

(declare-fun b_lambda!6241 () Bool)

(assert (=> (not b_lambda!6241) (not b!138640)))

(assert (=> b!138640 t!6302))

(declare-fun b_and!8661 () Bool)

(assert (= b_and!8657 (and (=> t!6302 result!4127) b_and!8661)))

(assert (=> b!138640 t!6304))

(declare-fun b_and!8663 () Bool)

(assert (= b_and!8659 (and (=> t!6304 result!4131) b_and!8663)))

(declare-fun b_lambda!6243 () Bool)

(assert (=> (not b_lambda!6243) (not b!138642)))

(assert (=> b!138642 t!6302))

(declare-fun b_and!8665 () Bool)

(assert (= b_and!8661 (and (=> t!6302 result!4127) b_and!8665)))

(assert (=> b!138642 t!6304))

(declare-fun b_and!8667 () Bool)

(assert (= b_and!8663 (and (=> t!6304 result!4131) b_and!8667)))

(declare-fun m!165763 () Bool)

(assert (=> bm!15279 m!165763))

(assert (=> b!138637 m!165591))

(assert (=> b!138637 m!165591))

(declare-fun m!165765 () Bool)

(assert (=> b!138637 m!165765))

(assert (=> b!138633 m!165591))

(assert (=> b!138633 m!165591))

(assert (=> b!138633 m!165717))

(declare-fun m!165767 () Bool)

(assert (=> d!43285 m!165767))

(assert (=> d!43285 m!165597))

(declare-fun m!165769 () Bool)

(assert (=> b!138642 m!165769))

(assert (=> b!138642 m!165711))

(assert (=> b!138642 m!165507))

(assert (=> b!138642 m!165711))

(assert (=> b!138642 m!165507))

(assert (=> b!138642 m!165713))

(assert (=> b!138642 m!165591))

(declare-fun m!165771 () Bool)

(assert (=> b!138642 m!165771))

(assert (=> b!138642 m!165769))

(declare-fun m!165773 () Bool)

(assert (=> b!138642 m!165773))

(declare-fun m!165775 () Bool)

(assert (=> b!138642 m!165775))

(assert (=> b!138635 m!165763))

(assert (=> b!138639 m!165591))

(assert (=> b!138639 m!165591))

(assert (=> b!138639 m!165717))

(declare-fun m!165777 () Bool)

(assert (=> b!138638 m!165777))

(assert (=> b!138640 m!165711))

(assert (=> b!138640 m!165711))

(assert (=> b!138640 m!165507))

(assert (=> b!138640 m!165713))

(assert (=> b!138640 m!165591))

(assert (=> b!138640 m!165591))

(declare-fun m!165779 () Bool)

(assert (=> b!138640 m!165779))

(assert (=> b!138640 m!165507))

(declare-fun m!165781 () Bool)

(assert (=> b!138632 m!165781))

(assert (=> b!138576 d!43285))

(declare-fun d!43287 () Bool)

(assert (=> d!43287 (= (apply!118 lt!72476 lt!72456) (get!1520 (getValueByKey!173 (toList!880 lt!72476) lt!72456)))))

(declare-fun bs!5812 () Bool)

(assert (= bs!5812 d!43287))

(declare-fun m!165783 () Bool)

(assert (=> bs!5812 m!165783))

(assert (=> bs!5812 m!165783))

(declare-fun m!165785 () Bool)

(assert (=> bs!5812 m!165785))

(assert (=> b!138576 d!43287))

(declare-fun d!43289 () Bool)

(declare-fun e!90385 () Bool)

(assert (=> d!43289 e!90385))

(declare-fun res!66369 () Bool)

(assert (=> d!43289 (=> (not res!66369) (not e!90385))))

(declare-fun lt!72523 () ListLongMap!1729)

(assert (=> d!43289 (= res!66369 (contains!910 lt!72523 (_1!1335 (tuple2!2651 lt!72467 (minValue!2770 (v!3254 (underlying!472 thiss!992)))))))))

(declare-fun lt!72521 () List!1749)

(assert (=> d!43289 (= lt!72523 (ListLongMap!1730 lt!72521))))

(declare-fun lt!72524 () Unit!4366)

(declare-fun lt!72522 () Unit!4366)

(assert (=> d!43289 (= lt!72524 lt!72522)))

(assert (=> d!43289 (= (getValueByKey!173 lt!72521 (_1!1335 (tuple2!2651 lt!72467 (minValue!2770 (v!3254 (underlying!472 thiss!992)))))) (Some!178 (_2!1335 (tuple2!2651 lt!72467 (minValue!2770 (v!3254 (underlying!472 thiss!992)))))))))

(declare-fun lemmaContainsTupThenGetReturnValue!90 (List!1749 (_ BitVec 64) V!3531) Unit!4366)

(assert (=> d!43289 (= lt!72522 (lemmaContainsTupThenGetReturnValue!90 lt!72521 (_1!1335 (tuple2!2651 lt!72467 (minValue!2770 (v!3254 (underlying!472 thiss!992))))) (_2!1335 (tuple2!2651 lt!72467 (minValue!2770 (v!3254 (underlying!472 thiss!992)))))))))

(declare-fun insertStrictlySorted!92 (List!1749 (_ BitVec 64) V!3531) List!1749)

(assert (=> d!43289 (= lt!72521 (insertStrictlySorted!92 (toList!880 lt!72476) (_1!1335 (tuple2!2651 lt!72467 (minValue!2770 (v!3254 (underlying!472 thiss!992))))) (_2!1335 (tuple2!2651 lt!72467 (minValue!2770 (v!3254 (underlying!472 thiss!992)))))))))

(assert (=> d!43289 (= (+!172 lt!72476 (tuple2!2651 lt!72467 (minValue!2770 (v!3254 (underlying!472 thiss!992))))) lt!72523)))

(declare-fun b!138648 () Bool)

(declare-fun res!66370 () Bool)

(assert (=> b!138648 (=> (not res!66370) (not e!90385))))

(assert (=> b!138648 (= res!66370 (= (getValueByKey!173 (toList!880 lt!72523) (_1!1335 (tuple2!2651 lt!72467 (minValue!2770 (v!3254 (underlying!472 thiss!992)))))) (Some!178 (_2!1335 (tuple2!2651 lt!72467 (minValue!2770 (v!3254 (underlying!472 thiss!992))))))))))

(declare-fun b!138649 () Bool)

(declare-fun contains!913 (List!1749 tuple2!2650) Bool)

(assert (=> b!138649 (= e!90385 (contains!913 (toList!880 lt!72523) (tuple2!2651 lt!72467 (minValue!2770 (v!3254 (underlying!472 thiss!992))))))))

(assert (= (and d!43289 res!66369) b!138648))

(assert (= (and b!138648 res!66370) b!138649))

(declare-fun m!165787 () Bool)

(assert (=> d!43289 m!165787))

(declare-fun m!165789 () Bool)

(assert (=> d!43289 m!165789))

(declare-fun m!165791 () Bool)

(assert (=> d!43289 m!165791))

(declare-fun m!165793 () Bool)

(assert (=> d!43289 m!165793))

(declare-fun m!165795 () Bool)

(assert (=> b!138648 m!165795))

(declare-fun m!165797 () Bool)

(assert (=> b!138649 m!165797))

(assert (=> b!138576 d!43289))

(declare-fun d!43291 () Bool)

(declare-fun e!90386 () Bool)

(assert (=> d!43291 e!90386))

(declare-fun res!66371 () Bool)

(assert (=> d!43291 (=> (not res!66371) (not e!90386))))

(declare-fun lt!72527 () ListLongMap!1729)

(assert (=> d!43291 (= res!66371 (contains!910 lt!72527 (_1!1335 (tuple2!2651 lt!72469 (zeroValue!2770 (v!3254 (underlying!472 thiss!992)))))))))

(declare-fun lt!72525 () List!1749)

(assert (=> d!43291 (= lt!72527 (ListLongMap!1730 lt!72525))))

(declare-fun lt!72528 () Unit!4366)

(declare-fun lt!72526 () Unit!4366)

(assert (=> d!43291 (= lt!72528 lt!72526)))

(assert (=> d!43291 (= (getValueByKey!173 lt!72525 (_1!1335 (tuple2!2651 lt!72469 (zeroValue!2770 (v!3254 (underlying!472 thiss!992)))))) (Some!178 (_2!1335 (tuple2!2651 lt!72469 (zeroValue!2770 (v!3254 (underlying!472 thiss!992)))))))))

(assert (=> d!43291 (= lt!72526 (lemmaContainsTupThenGetReturnValue!90 lt!72525 (_1!1335 (tuple2!2651 lt!72469 (zeroValue!2770 (v!3254 (underlying!472 thiss!992))))) (_2!1335 (tuple2!2651 lt!72469 (zeroValue!2770 (v!3254 (underlying!472 thiss!992)))))))))

(assert (=> d!43291 (= lt!72525 (insertStrictlySorted!92 (toList!880 lt!72455) (_1!1335 (tuple2!2651 lt!72469 (zeroValue!2770 (v!3254 (underlying!472 thiss!992))))) (_2!1335 (tuple2!2651 lt!72469 (zeroValue!2770 (v!3254 (underlying!472 thiss!992)))))))))

(assert (=> d!43291 (= (+!172 lt!72455 (tuple2!2651 lt!72469 (zeroValue!2770 (v!3254 (underlying!472 thiss!992))))) lt!72527)))

(declare-fun b!138650 () Bool)

(declare-fun res!66372 () Bool)

(assert (=> b!138650 (=> (not res!66372) (not e!90386))))

(assert (=> b!138650 (= res!66372 (= (getValueByKey!173 (toList!880 lt!72527) (_1!1335 (tuple2!2651 lt!72469 (zeroValue!2770 (v!3254 (underlying!472 thiss!992)))))) (Some!178 (_2!1335 (tuple2!2651 lt!72469 (zeroValue!2770 (v!3254 (underlying!472 thiss!992))))))))))

(declare-fun b!138651 () Bool)

(assert (=> b!138651 (= e!90386 (contains!913 (toList!880 lt!72527) (tuple2!2651 lt!72469 (zeroValue!2770 (v!3254 (underlying!472 thiss!992))))))))

(assert (= (and d!43291 res!66371) b!138650))

(assert (= (and b!138650 res!66372) b!138651))

(declare-fun m!165799 () Bool)

(assert (=> d!43291 m!165799))

(declare-fun m!165801 () Bool)

(assert (=> d!43291 m!165801))

(declare-fun m!165803 () Bool)

(assert (=> d!43291 m!165803))

(declare-fun m!165805 () Bool)

(assert (=> d!43291 m!165805))

(declare-fun m!165807 () Bool)

(assert (=> b!138650 m!165807))

(declare-fun m!165809 () Bool)

(assert (=> b!138651 m!165809))

(assert (=> b!138576 d!43291))

(declare-fun d!43293 () Bool)

(assert (=> d!43293 (= (apply!118 (+!172 lt!72470 (tuple2!2651 lt!72472 (minValue!2770 (v!3254 (underlying!472 thiss!992))))) lt!72471) (get!1520 (getValueByKey!173 (toList!880 (+!172 lt!72470 (tuple2!2651 lt!72472 (minValue!2770 (v!3254 (underlying!472 thiss!992)))))) lt!72471)))))

(declare-fun bs!5813 () Bool)

(assert (= bs!5813 d!43293))

(declare-fun m!165811 () Bool)

(assert (=> bs!5813 m!165811))

(assert (=> bs!5813 m!165811))

(declare-fun m!165813 () Bool)

(assert (=> bs!5813 m!165813))

(assert (=> b!138576 d!43293))

(declare-fun d!43295 () Bool)

(assert (=> d!43295 (= (apply!118 (+!172 lt!72474 (tuple2!2651 lt!72473 (zeroValue!2770 (v!3254 (underlying!472 thiss!992))))) lt!72457) (apply!118 lt!72474 lt!72457))))

(declare-fun lt!72531 () Unit!4366)

(declare-fun choose!853 (ListLongMap!1729 (_ BitVec 64) V!3531 (_ BitVec 64)) Unit!4366)

(assert (=> d!43295 (= lt!72531 (choose!853 lt!72474 lt!72473 (zeroValue!2770 (v!3254 (underlying!472 thiss!992))) lt!72457))))

(declare-fun e!90389 () Bool)

(assert (=> d!43295 e!90389))

(declare-fun res!66375 () Bool)

(assert (=> d!43295 (=> (not res!66375) (not e!90389))))

(assert (=> d!43295 (= res!66375 (contains!910 lt!72474 lt!72457))))

(assert (=> d!43295 (= (addApplyDifferent!94 lt!72474 lt!72473 (zeroValue!2770 (v!3254 (underlying!472 thiss!992))) lt!72457) lt!72531)))

(declare-fun b!138655 () Bool)

(assert (=> b!138655 (= e!90389 (not (= lt!72457 lt!72473)))))

(assert (= (and d!43295 res!66375) b!138655))

(assert (=> d!43295 m!165687))

(assert (=> d!43295 m!165689))

(declare-fun m!165815 () Bool)

(assert (=> d!43295 m!165815))

(assert (=> d!43295 m!165687))

(declare-fun m!165817 () Bool)

(assert (=> d!43295 m!165817))

(assert (=> d!43295 m!165693))

(assert (=> b!138576 d!43295))

(declare-fun d!43297 () Bool)

(assert (=> d!43297 (contains!910 (+!172 lt!72455 (tuple2!2651 lt!72469 (zeroValue!2770 (v!3254 (underlying!472 thiss!992))))) lt!72459)))

(declare-fun lt!72534 () Unit!4366)

(declare-fun choose!854 (ListLongMap!1729 (_ BitVec 64) V!3531 (_ BitVec 64)) Unit!4366)

(assert (=> d!43297 (= lt!72534 (choose!854 lt!72455 lt!72469 (zeroValue!2770 (v!3254 (underlying!472 thiss!992))) lt!72459))))

(assert (=> d!43297 (contains!910 lt!72455 lt!72459)))

(assert (=> d!43297 (= (addStillContains!94 lt!72455 lt!72469 (zeroValue!2770 (v!3254 (underlying!472 thiss!992))) lt!72459) lt!72534)))

(declare-fun bs!5814 () Bool)

(assert (= bs!5814 d!43297))

(assert (=> bs!5814 m!165681))

(assert (=> bs!5814 m!165681))

(assert (=> bs!5814 m!165683))

(declare-fun m!165819 () Bool)

(assert (=> bs!5814 m!165819))

(declare-fun m!165821 () Bool)

(assert (=> bs!5814 m!165821))

(assert (=> b!138576 d!43297))

(declare-fun d!43299 () Bool)

(assert (=> d!43299 (= (apply!118 (+!172 lt!72476 (tuple2!2651 lt!72467 (minValue!2770 (v!3254 (underlying!472 thiss!992))))) lt!72456) (apply!118 lt!72476 lt!72456))))

(declare-fun lt!72535 () Unit!4366)

(assert (=> d!43299 (= lt!72535 (choose!853 lt!72476 lt!72467 (minValue!2770 (v!3254 (underlying!472 thiss!992))) lt!72456))))

(declare-fun e!90390 () Bool)

(assert (=> d!43299 e!90390))

(declare-fun res!66376 () Bool)

(assert (=> d!43299 (=> (not res!66376) (not e!90390))))

(assert (=> d!43299 (= res!66376 (contains!910 lt!72476 lt!72456))))

(assert (=> d!43299 (= (addApplyDifferent!94 lt!72476 lt!72467 (minValue!2770 (v!3254 (underlying!472 thiss!992))) lt!72456) lt!72535)))

(declare-fun b!138657 () Bool)

(assert (=> b!138657 (= e!90390 (not (= lt!72456 lt!72467)))))

(assert (= (and d!43299 res!66376) b!138657))

(assert (=> d!43299 m!165677))

(assert (=> d!43299 m!165679))

(declare-fun m!165823 () Bool)

(assert (=> d!43299 m!165823))

(assert (=> d!43299 m!165677))

(declare-fun m!165825 () Bool)

(assert (=> d!43299 m!165825))

(assert (=> d!43299 m!165691))

(assert (=> b!138576 d!43299))

(declare-fun d!43301 () Bool)

(assert (=> d!43301 (= (apply!118 (+!172 lt!72474 (tuple2!2651 lt!72473 (zeroValue!2770 (v!3254 (underlying!472 thiss!992))))) lt!72457) (get!1520 (getValueByKey!173 (toList!880 (+!172 lt!72474 (tuple2!2651 lt!72473 (zeroValue!2770 (v!3254 (underlying!472 thiss!992)))))) lt!72457)))))

(declare-fun bs!5815 () Bool)

(assert (= bs!5815 d!43301))

(declare-fun m!165827 () Bool)

(assert (=> bs!5815 m!165827))

(assert (=> bs!5815 m!165827))

(declare-fun m!165829 () Bool)

(assert (=> bs!5815 m!165829))

(assert (=> b!138576 d!43301))

(declare-fun d!43303 () Bool)

(assert (=> d!43303 (= (apply!118 lt!72470 lt!72471) (get!1520 (getValueByKey!173 (toList!880 lt!72470) lt!72471)))))

(declare-fun bs!5816 () Bool)

(assert (= bs!5816 d!43303))

(declare-fun m!165831 () Bool)

(assert (=> bs!5816 m!165831))

(assert (=> bs!5816 m!165831))

(declare-fun m!165833 () Bool)

(assert (=> bs!5816 m!165833))

(assert (=> b!138576 d!43303))

(declare-fun d!43305 () Bool)

(assert (=> d!43305 (= (apply!118 (+!172 lt!72470 (tuple2!2651 lt!72472 (minValue!2770 (v!3254 (underlying!472 thiss!992))))) lt!72471) (apply!118 lt!72470 lt!72471))))

(declare-fun lt!72536 () Unit!4366)

(assert (=> d!43305 (= lt!72536 (choose!853 lt!72470 lt!72472 (minValue!2770 (v!3254 (underlying!472 thiss!992))) lt!72471))))

(declare-fun e!90391 () Bool)

(assert (=> d!43305 e!90391))

(declare-fun res!66377 () Bool)

(assert (=> d!43305 (=> (not res!66377) (not e!90391))))

(assert (=> d!43305 (= res!66377 (contains!910 lt!72470 lt!72471))))

(assert (=> d!43305 (= (addApplyDifferent!94 lt!72470 lt!72472 (minValue!2770 (v!3254 (underlying!472 thiss!992))) lt!72471) lt!72536)))

(declare-fun b!138658 () Bool)

(assert (=> b!138658 (= e!90391 (not (= lt!72471 lt!72472)))))

(assert (= (and d!43305 res!66377) b!138658))

(assert (=> d!43305 m!165673))

(assert (=> d!43305 m!165675))

(declare-fun m!165835 () Bool)

(assert (=> d!43305 m!165835))

(assert (=> d!43305 m!165673))

(declare-fun m!165837 () Bool)

(assert (=> d!43305 m!165837))

(assert (=> d!43305 m!165695))

(assert (=> b!138576 d!43305))

(declare-fun d!43307 () Bool)

(declare-fun e!90392 () Bool)

(assert (=> d!43307 e!90392))

(declare-fun res!66378 () Bool)

(assert (=> d!43307 (=> (not res!66378) (not e!90392))))

(declare-fun lt!72539 () ListLongMap!1729)

(assert (=> d!43307 (= res!66378 (contains!910 lt!72539 (_1!1335 (tuple2!2651 lt!72473 (zeroValue!2770 (v!3254 (underlying!472 thiss!992)))))))))

(declare-fun lt!72537 () List!1749)

(assert (=> d!43307 (= lt!72539 (ListLongMap!1730 lt!72537))))

(declare-fun lt!72540 () Unit!4366)

(declare-fun lt!72538 () Unit!4366)

(assert (=> d!43307 (= lt!72540 lt!72538)))

(assert (=> d!43307 (= (getValueByKey!173 lt!72537 (_1!1335 (tuple2!2651 lt!72473 (zeroValue!2770 (v!3254 (underlying!472 thiss!992)))))) (Some!178 (_2!1335 (tuple2!2651 lt!72473 (zeroValue!2770 (v!3254 (underlying!472 thiss!992)))))))))

(assert (=> d!43307 (= lt!72538 (lemmaContainsTupThenGetReturnValue!90 lt!72537 (_1!1335 (tuple2!2651 lt!72473 (zeroValue!2770 (v!3254 (underlying!472 thiss!992))))) (_2!1335 (tuple2!2651 lt!72473 (zeroValue!2770 (v!3254 (underlying!472 thiss!992)))))))))

(assert (=> d!43307 (= lt!72537 (insertStrictlySorted!92 (toList!880 lt!72474) (_1!1335 (tuple2!2651 lt!72473 (zeroValue!2770 (v!3254 (underlying!472 thiss!992))))) (_2!1335 (tuple2!2651 lt!72473 (zeroValue!2770 (v!3254 (underlying!472 thiss!992)))))))))

(assert (=> d!43307 (= (+!172 lt!72474 (tuple2!2651 lt!72473 (zeroValue!2770 (v!3254 (underlying!472 thiss!992))))) lt!72539)))

(declare-fun b!138659 () Bool)

(declare-fun res!66379 () Bool)

(assert (=> b!138659 (=> (not res!66379) (not e!90392))))

(assert (=> b!138659 (= res!66379 (= (getValueByKey!173 (toList!880 lt!72539) (_1!1335 (tuple2!2651 lt!72473 (zeroValue!2770 (v!3254 (underlying!472 thiss!992)))))) (Some!178 (_2!1335 (tuple2!2651 lt!72473 (zeroValue!2770 (v!3254 (underlying!472 thiss!992))))))))))

(declare-fun b!138660 () Bool)

(assert (=> b!138660 (= e!90392 (contains!913 (toList!880 lt!72539) (tuple2!2651 lt!72473 (zeroValue!2770 (v!3254 (underlying!472 thiss!992))))))))

(assert (= (and d!43307 res!66378) b!138659))

(assert (= (and b!138659 res!66379) b!138660))

(declare-fun m!165839 () Bool)

(assert (=> d!43307 m!165839))

(declare-fun m!165841 () Bool)

(assert (=> d!43307 m!165841))

(declare-fun m!165843 () Bool)

(assert (=> d!43307 m!165843))

(declare-fun m!165845 () Bool)

(assert (=> d!43307 m!165845))

(declare-fun m!165847 () Bool)

(assert (=> b!138659 m!165847))

(declare-fun m!165849 () Bool)

(assert (=> b!138660 m!165849))

(assert (=> b!138576 d!43307))

(declare-fun d!43309 () Bool)

(declare-fun e!90393 () Bool)

(assert (=> d!43309 e!90393))

(declare-fun res!66380 () Bool)

(assert (=> d!43309 (=> (not res!66380) (not e!90393))))

(declare-fun lt!72543 () ListLongMap!1729)

(assert (=> d!43309 (= res!66380 (contains!910 lt!72543 (_1!1335 (tuple2!2651 lt!72472 (minValue!2770 (v!3254 (underlying!472 thiss!992)))))))))

(declare-fun lt!72541 () List!1749)

(assert (=> d!43309 (= lt!72543 (ListLongMap!1730 lt!72541))))

(declare-fun lt!72544 () Unit!4366)

(declare-fun lt!72542 () Unit!4366)

(assert (=> d!43309 (= lt!72544 lt!72542)))

(assert (=> d!43309 (= (getValueByKey!173 lt!72541 (_1!1335 (tuple2!2651 lt!72472 (minValue!2770 (v!3254 (underlying!472 thiss!992)))))) (Some!178 (_2!1335 (tuple2!2651 lt!72472 (minValue!2770 (v!3254 (underlying!472 thiss!992)))))))))

(assert (=> d!43309 (= lt!72542 (lemmaContainsTupThenGetReturnValue!90 lt!72541 (_1!1335 (tuple2!2651 lt!72472 (minValue!2770 (v!3254 (underlying!472 thiss!992))))) (_2!1335 (tuple2!2651 lt!72472 (minValue!2770 (v!3254 (underlying!472 thiss!992)))))))))

(assert (=> d!43309 (= lt!72541 (insertStrictlySorted!92 (toList!880 lt!72470) (_1!1335 (tuple2!2651 lt!72472 (minValue!2770 (v!3254 (underlying!472 thiss!992))))) (_2!1335 (tuple2!2651 lt!72472 (minValue!2770 (v!3254 (underlying!472 thiss!992)))))))))

(assert (=> d!43309 (= (+!172 lt!72470 (tuple2!2651 lt!72472 (minValue!2770 (v!3254 (underlying!472 thiss!992))))) lt!72543)))

(declare-fun b!138661 () Bool)

(declare-fun res!66381 () Bool)

(assert (=> b!138661 (=> (not res!66381) (not e!90393))))

(assert (=> b!138661 (= res!66381 (= (getValueByKey!173 (toList!880 lt!72543) (_1!1335 (tuple2!2651 lt!72472 (minValue!2770 (v!3254 (underlying!472 thiss!992)))))) (Some!178 (_2!1335 (tuple2!2651 lt!72472 (minValue!2770 (v!3254 (underlying!472 thiss!992))))))))))

(declare-fun b!138662 () Bool)

(assert (=> b!138662 (= e!90393 (contains!913 (toList!880 lt!72543) (tuple2!2651 lt!72472 (minValue!2770 (v!3254 (underlying!472 thiss!992))))))))

(assert (= (and d!43309 res!66380) b!138661))

(assert (= (and b!138661 res!66381) b!138662))

(declare-fun m!165851 () Bool)

(assert (=> d!43309 m!165851))

(declare-fun m!165853 () Bool)

(assert (=> d!43309 m!165853))

(declare-fun m!165855 () Bool)

(assert (=> d!43309 m!165855))

(declare-fun m!165857 () Bool)

(assert (=> d!43309 m!165857))

(declare-fun m!165859 () Bool)

(assert (=> b!138661 m!165859))

(declare-fun m!165861 () Bool)

(assert (=> b!138662 m!165861))

(assert (=> b!138576 d!43309))

(declare-fun d!43311 () Bool)

(assert (=> d!43311 (= (apply!118 (+!172 lt!72476 (tuple2!2651 lt!72467 (minValue!2770 (v!3254 (underlying!472 thiss!992))))) lt!72456) (get!1520 (getValueByKey!173 (toList!880 (+!172 lt!72476 (tuple2!2651 lt!72467 (minValue!2770 (v!3254 (underlying!472 thiss!992)))))) lt!72456)))))

(declare-fun bs!5817 () Bool)

(assert (= bs!5817 d!43311))

(declare-fun m!165863 () Bool)

(assert (=> bs!5817 m!165863))

(assert (=> bs!5817 m!165863))

(declare-fun m!165865 () Bool)

(assert (=> bs!5817 m!165865))

(assert (=> b!138576 d!43311))

(declare-fun d!43313 () Bool)

(assert (=> d!43313 (= (validMask!0 (mask!7249 (v!3254 (underlying!472 thiss!992)))) (and (or (= (mask!7249 (v!3254 (underlying!472 thiss!992))) #b00000000000000000000000000000111) (= (mask!7249 (v!3254 (underlying!472 thiss!992))) #b00000000000000000000000000001111) (= (mask!7249 (v!3254 (underlying!472 thiss!992))) #b00000000000000000000000000011111) (= (mask!7249 (v!3254 (underlying!472 thiss!992))) #b00000000000000000000000000111111) (= (mask!7249 (v!3254 (underlying!472 thiss!992))) #b00000000000000000000000001111111) (= (mask!7249 (v!3254 (underlying!472 thiss!992))) #b00000000000000000000000011111111) (= (mask!7249 (v!3254 (underlying!472 thiss!992))) #b00000000000000000000000111111111) (= (mask!7249 (v!3254 (underlying!472 thiss!992))) #b00000000000000000000001111111111) (= (mask!7249 (v!3254 (underlying!472 thiss!992))) #b00000000000000000000011111111111) (= (mask!7249 (v!3254 (underlying!472 thiss!992))) #b00000000000000000000111111111111) (= (mask!7249 (v!3254 (underlying!472 thiss!992))) #b00000000000000000001111111111111) (= (mask!7249 (v!3254 (underlying!472 thiss!992))) #b00000000000000000011111111111111) (= (mask!7249 (v!3254 (underlying!472 thiss!992))) #b00000000000000000111111111111111) (= (mask!7249 (v!3254 (underlying!472 thiss!992))) #b00000000000000001111111111111111) (= (mask!7249 (v!3254 (underlying!472 thiss!992))) #b00000000000000011111111111111111) (= (mask!7249 (v!3254 (underlying!472 thiss!992))) #b00000000000000111111111111111111) (= (mask!7249 (v!3254 (underlying!472 thiss!992))) #b00000000000001111111111111111111) (= (mask!7249 (v!3254 (underlying!472 thiss!992))) #b00000000000011111111111111111111) (= (mask!7249 (v!3254 (underlying!472 thiss!992))) #b00000000000111111111111111111111) (= (mask!7249 (v!3254 (underlying!472 thiss!992))) #b00000000001111111111111111111111) (= (mask!7249 (v!3254 (underlying!472 thiss!992))) #b00000000011111111111111111111111) (= (mask!7249 (v!3254 (underlying!472 thiss!992))) #b00000000111111111111111111111111) (= (mask!7249 (v!3254 (underlying!472 thiss!992))) #b00000001111111111111111111111111) (= (mask!7249 (v!3254 (underlying!472 thiss!992))) #b00000011111111111111111111111111) (= (mask!7249 (v!3254 (underlying!472 thiss!992))) #b00000111111111111111111111111111) (= (mask!7249 (v!3254 (underlying!472 thiss!992))) #b00001111111111111111111111111111) (= (mask!7249 (v!3254 (underlying!472 thiss!992))) #b00011111111111111111111111111111) (= (mask!7249 (v!3254 (underlying!472 thiss!992))) #b00111111111111111111111111111111)) (bvsle (mask!7249 (v!3254 (underlying!472 thiss!992))) #b00111111111111111111111111111111)))))

(assert (=> d!43271 d!43313))

(declare-fun d!43315 () Bool)

(declare-fun res!66382 () Bool)

(declare-fun e!90394 () Bool)

(assert (=> d!43315 (=> (not res!66382) (not e!90394))))

(assert (=> d!43315 (= res!66382 (simpleValid!93 (_2!1336 lt!72399)))))

(assert (=> d!43315 (= (valid!545 (_2!1336 lt!72399)) e!90394)))

(declare-fun b!138663 () Bool)

(declare-fun res!66383 () Bool)

(assert (=> b!138663 (=> (not res!66383) (not e!90394))))

(assert (=> b!138663 (= res!66383 (= (arrayCountValidKeys!0 (_keys!4676 (_2!1336 lt!72399)) #b00000000000000000000000000000000 (size!2567 (_keys!4676 (_2!1336 lt!72399)))) (_size!616 (_2!1336 lt!72399))))))

(declare-fun b!138664 () Bool)

(declare-fun res!66384 () Bool)

(assert (=> b!138664 (=> (not res!66384) (not e!90394))))

(assert (=> b!138664 (= res!66384 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!4676 (_2!1336 lt!72399)) (mask!7249 (_2!1336 lt!72399))))))

(declare-fun b!138665 () Bool)

(assert (=> b!138665 (= e!90394 (arrayNoDuplicates!0 (_keys!4676 (_2!1336 lt!72399)) #b00000000000000000000000000000000 Nil!1747))))

(assert (= (and d!43315 res!66382) b!138663))

(assert (= (and b!138663 res!66383) b!138664))

(assert (= (and b!138664 res!66384) b!138665))

(declare-fun m!165867 () Bool)

(assert (=> d!43315 m!165867))

(declare-fun m!165869 () Bool)

(assert (=> b!138663 m!165869))

(declare-fun m!165871 () Bool)

(assert (=> b!138664 m!165871))

(declare-fun m!165873 () Bool)

(assert (=> b!138665 m!165873))

(assert (=> d!43261 d!43315))

(assert (=> d!43261 d!43247))

(declare-fun d!43317 () Bool)

(assert (=> d!43317 (= (validKeyInArray!0 (select (arr!2296 (_keys!4676 (v!3254 (underlying!472 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))) (and (not (= (select (arr!2296 (_keys!4676 (v!3254 (underlying!472 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!2296 (_keys!4676 (v!3254 (underlying!472 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!138570 d!43317))

(declare-fun b!138666 () Bool)

(declare-fun e!90396 () Bool)

(declare-fun e!90397 () Bool)

(assert (=> b!138666 (= e!90396 e!90397)))

(declare-fun c!25952 () Bool)

(assert (=> b!138666 (= c!25952 (validKeyInArray!0 (select (arr!2296 (_keys!4676 newMap!16)) #b00000000000000000000000000000000)))))

(declare-fun bm!15280 () Bool)

(declare-fun call!15283 () Bool)

(assert (=> bm!15280 (= call!15283 (arrayNoDuplicates!0 (_keys!4676 newMap!16) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!25952 (Cons!1746 (select (arr!2296 (_keys!4676 newMap!16)) #b00000000000000000000000000000000) Nil!1747) Nil!1747)))))

(declare-fun b!138667 () Bool)

(assert (=> b!138667 (= e!90397 call!15283)))

(declare-fun b!138668 () Bool)

(declare-fun e!90398 () Bool)

(assert (=> b!138668 (= e!90398 e!90396)))

(declare-fun res!66386 () Bool)

(assert (=> b!138668 (=> (not res!66386) (not e!90396))))

(declare-fun e!90395 () Bool)

(assert (=> b!138668 (= res!66386 (not e!90395))))

(declare-fun res!66385 () Bool)

(assert (=> b!138668 (=> (not res!66385) (not e!90395))))

(assert (=> b!138668 (= res!66385 (validKeyInArray!0 (select (arr!2296 (_keys!4676 newMap!16)) #b00000000000000000000000000000000)))))

(declare-fun b!138669 () Bool)

(assert (=> b!138669 (= e!90397 call!15283)))

(declare-fun b!138670 () Bool)

(assert (=> b!138670 (= e!90395 (contains!912 Nil!1747 (select (arr!2296 (_keys!4676 newMap!16)) #b00000000000000000000000000000000)))))

(declare-fun d!43319 () Bool)

(declare-fun res!66387 () Bool)

(assert (=> d!43319 (=> res!66387 e!90398)))

(assert (=> d!43319 (= res!66387 (bvsge #b00000000000000000000000000000000 (size!2567 (_keys!4676 newMap!16))))))

(assert (=> d!43319 (= (arrayNoDuplicates!0 (_keys!4676 newMap!16) #b00000000000000000000000000000000 Nil!1747) e!90398)))

(assert (= (and d!43319 (not res!66387)) b!138668))

(assert (= (and b!138668 res!66385) b!138670))

(assert (= (and b!138668 res!66386) b!138666))

(assert (= (and b!138666 c!25952) b!138669))

(assert (= (and b!138666 (not c!25952)) b!138667))

(assert (= (or b!138669 b!138667) bm!15280))

(declare-fun m!165875 () Bool)

(assert (=> b!138666 m!165875))

(assert (=> b!138666 m!165875))

(declare-fun m!165877 () Bool)

(assert (=> b!138666 m!165877))

(assert (=> bm!15280 m!165875))

(declare-fun m!165879 () Bool)

(assert (=> bm!15280 m!165879))

(assert (=> b!138668 m!165875))

(assert (=> b!138668 m!165875))

(assert (=> b!138668 m!165877))

(assert (=> b!138670 m!165875))

(assert (=> b!138670 m!165875))

(declare-fun m!165881 () Bool)

(assert (=> b!138670 m!165881))

(assert (=> b!138366 d!43319))

(declare-fun b!138671 () Bool)

(declare-fun e!90403 () Bool)

(declare-fun e!90401 () Bool)

(assert (=> b!138671 (= e!90403 e!90401)))

(declare-fun res!66394 () Bool)

(declare-fun call!15284 () Bool)

(assert (=> b!138671 (= res!66394 call!15284)))

(assert (=> b!138671 (=> (not res!66394) (not e!90401))))

(declare-fun bm!15281 () Bool)

(declare-fun call!15289 () ListLongMap!1729)

(declare-fun call!15285 () ListLongMap!1729)

(assert (=> bm!15281 (= call!15289 call!15285)))

(declare-fun b!138672 () Bool)

(declare-fun e!90405 () Bool)

(declare-fun e!90406 () Bool)

(assert (=> b!138672 (= e!90405 e!90406)))

(declare-fun res!66396 () Bool)

(assert (=> b!138672 (=> (not res!66396) (not e!90406))))

(declare-fun lt!72551 () ListLongMap!1729)

(assert (=> b!138672 (= res!66396 (contains!910 lt!72551 (select (arr!2296 (_keys!4676 newMap!16)) #b00000000000000000000000000000000)))))

(assert (=> b!138672 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!2567 (_keys!4676 newMap!16))))))

(declare-fun b!138673 () Bool)

(declare-fun e!90407 () Unit!4366)

(declare-fun Unit!4375 () Unit!4366)

(assert (=> b!138673 (= e!90407 Unit!4375)))

(declare-fun b!138674 () Bool)

(declare-fun e!90410 () ListLongMap!1729)

(declare-fun call!15286 () ListLongMap!1729)

(assert (=> b!138674 (= e!90410 call!15286)))

(declare-fun bm!15282 () Bool)

(declare-fun call!15288 () ListLongMap!1729)

(assert (=> bm!15282 (= call!15288 (getCurrentListMapNoExtraKeys!139 (_keys!4676 newMap!16) (_values!2902 newMap!16) (mask!7249 newMap!16) (extraKeys!2676 newMap!16) (zeroValue!2770 newMap!16) (minValue!2770 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2919 newMap!16)))))

(declare-fun b!138675 () Bool)

(declare-fun e!90408 () ListLongMap!1729)

(assert (=> b!138675 (= e!90408 e!90410)))

(declare-fun c!25957 () Bool)

(assert (=> b!138675 (= c!25957 (and (not (= (bvand (extraKeys!2676 newMap!16) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand (extraKeys!2676 newMap!16) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!138676 () Bool)

(declare-fun res!66388 () Bool)

(declare-fun e!90402 () Bool)

(assert (=> b!138676 (=> (not res!66388) (not e!90402))))

(assert (=> b!138676 (= res!66388 e!90405)))

(declare-fun res!66392 () Bool)

(assert (=> b!138676 (=> res!66392 e!90405)))

(declare-fun e!90400 () Bool)

(assert (=> b!138676 (= res!66392 (not e!90400))))

(declare-fun res!66395 () Bool)

(assert (=> b!138676 (=> (not res!66395) (not e!90400))))

(assert (=> b!138676 (= res!66395 (bvslt #b00000000000000000000000000000000 (size!2567 (_keys!4676 newMap!16))))))

(declare-fun b!138677 () Bool)

(declare-fun e!90404 () ListLongMap!1729)

(assert (=> b!138677 (= e!90404 call!15286)))

(declare-fun b!138678 () Bool)

(declare-fun call!15287 () ListLongMap!1729)

(assert (=> b!138678 (= e!90408 (+!172 call!15287 (tuple2!2651 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2770 newMap!16))))))

(declare-fun b!138679 () Bool)

(declare-fun e!90409 () Bool)

(assert (=> b!138679 (= e!90409 (validKeyInArray!0 (select (arr!2296 (_keys!4676 newMap!16)) #b00000000000000000000000000000000)))))

(declare-fun b!138680 () Bool)

(declare-fun c!25953 () Bool)

(assert (=> b!138680 (= c!25953 (and (not (= (bvand (extraKeys!2676 newMap!16) #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand (extraKeys!2676 newMap!16) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!138680 (= e!90410 e!90404)))

(declare-fun b!138681 () Bool)

(declare-fun res!66389 () Bool)

(assert (=> b!138681 (=> (not res!66389) (not e!90402))))

(assert (=> b!138681 (= res!66389 e!90403)))

(declare-fun c!25956 () Bool)

(assert (=> b!138681 (= c!25956 (not (= (bvand (extraKeys!2676 newMap!16) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!138682 () Bool)

(declare-fun e!90399 () Bool)

(assert (=> b!138682 (= e!90399 (= (apply!118 lt!72551 #b1000000000000000000000000000000000000000000000000000000000000000) (minValue!2770 newMap!16)))))

(declare-fun b!138683 () Bool)

(declare-fun e!90411 () Bool)

(assert (=> b!138683 (= e!90411 e!90399)))

(declare-fun res!66391 () Bool)

(declare-fun call!15290 () Bool)

(assert (=> b!138683 (= res!66391 call!15290)))

(assert (=> b!138683 (=> (not res!66391) (not e!90399))))

(declare-fun bm!15283 () Bool)

(assert (=> bm!15283 (= call!15284 (contains!910 lt!72551 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun bm!15284 () Bool)

(assert (=> bm!15284 (= call!15290 (contains!910 lt!72551 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!138684 () Bool)

(assert (=> b!138684 (= e!90401 (= (apply!118 lt!72551 #b0000000000000000000000000000000000000000000000000000000000000000) (zeroValue!2770 newMap!16)))))

(declare-fun b!138685 () Bool)

(declare-fun lt!72552 () Unit!4366)

(assert (=> b!138685 (= e!90407 lt!72552)))

(declare-fun lt!72545 () ListLongMap!1729)

(assert (=> b!138685 (= lt!72545 (getCurrentListMapNoExtraKeys!139 (_keys!4676 newMap!16) (_values!2902 newMap!16) (mask!7249 newMap!16) (extraKeys!2676 newMap!16) (zeroValue!2770 newMap!16) (minValue!2770 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2919 newMap!16)))))

(declare-fun lt!72559 () (_ BitVec 64))

(assert (=> b!138685 (= lt!72559 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!72549 () (_ BitVec 64))

(assert (=> b!138685 (= lt!72549 (select (arr!2296 (_keys!4676 newMap!16)) #b00000000000000000000000000000000))))

(declare-fun lt!72554 () Unit!4366)

(assert (=> b!138685 (= lt!72554 (addStillContains!94 lt!72545 lt!72559 (zeroValue!2770 newMap!16) lt!72549))))

(assert (=> b!138685 (contains!910 (+!172 lt!72545 (tuple2!2651 lt!72559 (zeroValue!2770 newMap!16))) lt!72549)))

(declare-fun lt!72556 () Unit!4366)

(assert (=> b!138685 (= lt!72556 lt!72554)))

(declare-fun lt!72566 () ListLongMap!1729)

(assert (=> b!138685 (= lt!72566 (getCurrentListMapNoExtraKeys!139 (_keys!4676 newMap!16) (_values!2902 newMap!16) (mask!7249 newMap!16) (extraKeys!2676 newMap!16) (zeroValue!2770 newMap!16) (minValue!2770 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2919 newMap!16)))))

(declare-fun lt!72557 () (_ BitVec 64))

(assert (=> b!138685 (= lt!72557 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!72546 () (_ BitVec 64))

(assert (=> b!138685 (= lt!72546 (select (arr!2296 (_keys!4676 newMap!16)) #b00000000000000000000000000000000))))

(declare-fun lt!72565 () Unit!4366)

(assert (=> b!138685 (= lt!72565 (addApplyDifferent!94 lt!72566 lt!72557 (minValue!2770 newMap!16) lt!72546))))

(assert (=> b!138685 (= (apply!118 (+!172 lt!72566 (tuple2!2651 lt!72557 (minValue!2770 newMap!16))) lt!72546) (apply!118 lt!72566 lt!72546))))

(declare-fun lt!72550 () Unit!4366)

(assert (=> b!138685 (= lt!72550 lt!72565)))

(declare-fun lt!72564 () ListLongMap!1729)

(assert (=> b!138685 (= lt!72564 (getCurrentListMapNoExtraKeys!139 (_keys!4676 newMap!16) (_values!2902 newMap!16) (mask!7249 newMap!16) (extraKeys!2676 newMap!16) (zeroValue!2770 newMap!16) (minValue!2770 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2919 newMap!16)))))

(declare-fun lt!72563 () (_ BitVec 64))

(assert (=> b!138685 (= lt!72563 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!72547 () (_ BitVec 64))

(assert (=> b!138685 (= lt!72547 (select (arr!2296 (_keys!4676 newMap!16)) #b00000000000000000000000000000000))))

(declare-fun lt!72555 () Unit!4366)

(assert (=> b!138685 (= lt!72555 (addApplyDifferent!94 lt!72564 lt!72563 (zeroValue!2770 newMap!16) lt!72547))))

(assert (=> b!138685 (= (apply!118 (+!172 lt!72564 (tuple2!2651 lt!72563 (zeroValue!2770 newMap!16))) lt!72547) (apply!118 lt!72564 lt!72547))))

(declare-fun lt!72548 () Unit!4366)

(assert (=> b!138685 (= lt!72548 lt!72555)))

(declare-fun lt!72560 () ListLongMap!1729)

(assert (=> b!138685 (= lt!72560 (getCurrentListMapNoExtraKeys!139 (_keys!4676 newMap!16) (_values!2902 newMap!16) (mask!7249 newMap!16) (extraKeys!2676 newMap!16) (zeroValue!2770 newMap!16) (minValue!2770 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2919 newMap!16)))))

(declare-fun lt!72562 () (_ BitVec 64))

(assert (=> b!138685 (= lt!72562 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!72561 () (_ BitVec 64))

(assert (=> b!138685 (= lt!72561 (select (arr!2296 (_keys!4676 newMap!16)) #b00000000000000000000000000000000))))

(assert (=> b!138685 (= lt!72552 (addApplyDifferent!94 lt!72560 lt!72562 (minValue!2770 newMap!16) lt!72561))))

(assert (=> b!138685 (= (apply!118 (+!172 lt!72560 (tuple2!2651 lt!72562 (minValue!2770 newMap!16))) lt!72561) (apply!118 lt!72560 lt!72561))))

(declare-fun bm!15285 () Bool)

(assert (=> bm!15285 (= call!15285 call!15288)))

(declare-fun b!138686 () Bool)

(assert (=> b!138686 (= e!90411 (not call!15290))))

(declare-fun b!138687 () Bool)

(assert (=> b!138687 (= e!90404 call!15289)))

(declare-fun d!43321 () Bool)

(assert (=> d!43321 e!90402))

(declare-fun res!66390 () Bool)

(assert (=> d!43321 (=> (not res!66390) (not e!90402))))

(assert (=> d!43321 (= res!66390 (or (bvsge #b00000000000000000000000000000000 (size!2567 (_keys!4676 newMap!16))) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!2567 (_keys!4676 newMap!16))))))))

(declare-fun lt!72558 () ListLongMap!1729)

(assert (=> d!43321 (= lt!72551 lt!72558)))

(declare-fun lt!72553 () Unit!4366)

(assert (=> d!43321 (= lt!72553 e!90407)))

(declare-fun c!25955 () Bool)

(assert (=> d!43321 (= c!25955 e!90409)))

(declare-fun res!66393 () Bool)

(assert (=> d!43321 (=> (not res!66393) (not e!90409))))

(assert (=> d!43321 (= res!66393 (bvslt #b00000000000000000000000000000000 (size!2567 (_keys!4676 newMap!16))))))

(assert (=> d!43321 (= lt!72558 e!90408)))

(declare-fun c!25958 () Bool)

(assert (=> d!43321 (= c!25958 (and (not (= (bvand (extraKeys!2676 newMap!16) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (extraKeys!2676 newMap!16) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!43321 (validMask!0 (mask!7249 newMap!16))))

(assert (=> d!43321 (= (getCurrentListMap!549 (_keys!4676 newMap!16) (_values!2902 newMap!16) (mask!7249 newMap!16) (extraKeys!2676 newMap!16) (zeroValue!2770 newMap!16) (minValue!2770 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2919 newMap!16)) lt!72551)))

(declare-fun b!138688 () Bool)

(assert (=> b!138688 (= e!90400 (validKeyInArray!0 (select (arr!2296 (_keys!4676 newMap!16)) #b00000000000000000000000000000000)))))

(declare-fun bm!15286 () Bool)

(assert (=> bm!15286 (= call!15286 call!15287)))

(declare-fun b!138689 () Bool)

(assert (=> b!138689 (= e!90406 (= (apply!118 lt!72551 (select (arr!2296 (_keys!4676 newMap!16)) #b00000000000000000000000000000000)) (get!1516 (select (arr!2297 (_values!2902 newMap!16)) #b00000000000000000000000000000000) (dynLambda!435 (defaultEntry!2919 newMap!16) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!138689 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!2568 (_values!2902 newMap!16))))))

(assert (=> b!138689 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!2567 (_keys!4676 newMap!16))))))

(declare-fun b!138690 () Bool)

(assert (=> b!138690 (= e!90402 e!90411)))

(declare-fun c!25954 () Bool)

(assert (=> b!138690 (= c!25954 (not (= (bvand (extraKeys!2676 newMap!16) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!138691 () Bool)

(assert (=> b!138691 (= e!90403 (not call!15284))))

(declare-fun bm!15287 () Bool)

(assert (=> bm!15287 (= call!15287 (+!172 (ite c!25958 call!15288 (ite c!25957 call!15285 call!15289)) (ite (or c!25958 c!25957) (tuple2!2651 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2770 newMap!16)) (tuple2!2651 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2770 newMap!16)))))))

(assert (= (and d!43321 c!25958) b!138678))

(assert (= (and d!43321 (not c!25958)) b!138675))

(assert (= (and b!138675 c!25957) b!138674))

(assert (= (and b!138675 (not c!25957)) b!138680))

(assert (= (and b!138680 c!25953) b!138677))

(assert (= (and b!138680 (not c!25953)) b!138687))

(assert (= (or b!138677 b!138687) bm!15281))

(assert (= (or b!138674 bm!15281) bm!15285))

(assert (= (or b!138674 b!138677) bm!15286))

(assert (= (or b!138678 bm!15285) bm!15282))

(assert (= (or b!138678 bm!15286) bm!15287))

(assert (= (and d!43321 res!66393) b!138679))

(assert (= (and d!43321 c!25955) b!138685))

(assert (= (and d!43321 (not c!25955)) b!138673))

(assert (= (and d!43321 res!66390) b!138676))

(assert (= (and b!138676 res!66395) b!138688))

(assert (= (and b!138676 (not res!66392)) b!138672))

(assert (= (and b!138672 res!66396) b!138689))

(assert (= (and b!138676 res!66388) b!138681))

(assert (= (and b!138681 c!25956) b!138671))

(assert (= (and b!138681 (not c!25956)) b!138691))

(assert (= (and b!138671 res!66394) b!138684))

(assert (= (or b!138671 b!138691) bm!15283))

(assert (= (and b!138681 res!66389) b!138690))

(assert (= (and b!138690 c!25954) b!138683))

(assert (= (and b!138690 (not c!25954)) b!138686))

(assert (= (and b!138683 res!66391) b!138682))

(assert (= (or b!138683 b!138686) bm!15284))

(declare-fun b_lambda!6245 () Bool)

(assert (=> (not b_lambda!6245) (not b!138689)))

(declare-fun t!6314 () Bool)

(declare-fun tb!2525 () Bool)

(assert (=> (and b!138287 (= (defaultEntry!2919 (v!3254 (underlying!472 thiss!992))) (defaultEntry!2919 newMap!16)) t!6314) tb!2525))

(declare-fun result!4141 () Bool)

(assert (=> tb!2525 (= result!4141 tp_is_empty!2913)))

(assert (=> b!138689 t!6314))

(declare-fun b_and!8669 () Bool)

(assert (= b_and!8665 (and (=> t!6314 result!4141) b_and!8669)))

(declare-fun t!6316 () Bool)

(declare-fun tb!2527 () Bool)

(assert (=> (and b!138277 (= (defaultEntry!2919 newMap!16) (defaultEntry!2919 newMap!16)) t!6316) tb!2527))

(declare-fun result!4143 () Bool)

(assert (= result!4143 result!4141))

(assert (=> b!138689 t!6316))

(declare-fun b_and!8671 () Bool)

(assert (= b_and!8667 (and (=> t!6316 result!4143) b_and!8671)))

(declare-fun m!165883 () Bool)

(assert (=> b!138678 m!165883))

(declare-fun m!165885 () Bool)

(assert (=> b!138685 m!165885))

(declare-fun m!165887 () Bool)

(assert (=> b!138685 m!165887))

(assert (=> b!138685 m!165875))

(assert (=> b!138685 m!165885))

(declare-fun m!165889 () Bool)

(assert (=> b!138685 m!165889))

(declare-fun m!165891 () Bool)

(assert (=> b!138685 m!165891))

(declare-fun m!165893 () Bool)

(assert (=> b!138685 m!165893))

(declare-fun m!165895 () Bool)

(assert (=> b!138685 m!165895))

(declare-fun m!165897 () Bool)

(assert (=> b!138685 m!165897))

(declare-fun m!165899 () Bool)

(assert (=> b!138685 m!165899))

(declare-fun m!165901 () Bool)

(assert (=> b!138685 m!165901))

(assert (=> b!138685 m!165899))

(declare-fun m!165903 () Bool)

(assert (=> b!138685 m!165903))

(declare-fun m!165905 () Bool)

(assert (=> b!138685 m!165905))

(declare-fun m!165907 () Bool)

(assert (=> b!138685 m!165907))

(declare-fun m!165909 () Bool)

(assert (=> b!138685 m!165909))

(assert (=> b!138685 m!165889))

(declare-fun m!165911 () Bool)

(assert (=> b!138685 m!165911))

(assert (=> b!138685 m!165893))

(declare-fun m!165913 () Bool)

(assert (=> b!138685 m!165913))

(declare-fun m!165915 () Bool)

(assert (=> b!138685 m!165915))

(assert (=> b!138672 m!165875))

(assert (=> b!138672 m!165875))

(declare-fun m!165917 () Bool)

(assert (=> b!138672 m!165917))

(declare-fun m!165919 () Bool)

(assert (=> b!138684 m!165919))

(declare-fun m!165921 () Bool)

(assert (=> bm!15283 m!165921))

(declare-fun m!165923 () Bool)

(assert (=> b!138689 m!165923))

(declare-fun m!165925 () Bool)

(assert (=> b!138689 m!165925))

(declare-fun m!165927 () Bool)

(assert (=> b!138689 m!165927))

(assert (=> b!138689 m!165925))

(assert (=> b!138689 m!165923))

(assert (=> b!138689 m!165875))

(declare-fun m!165929 () Bool)

(assert (=> b!138689 m!165929))

(assert (=> b!138689 m!165875))

(declare-fun m!165931 () Bool)

(assert (=> d!43321 m!165931))

(assert (=> bm!15282 m!165909))

(assert (=> b!138679 m!165875))

(assert (=> b!138679 m!165875))

(assert (=> b!138679 m!165877))

(declare-fun m!165933 () Bool)

(assert (=> b!138682 m!165933))

(declare-fun m!165935 () Bool)

(assert (=> bm!15287 m!165935))

(assert (=> b!138688 m!165875))

(assert (=> b!138688 m!165875))

(assert (=> b!138688 m!165877))

(declare-fun m!165937 () Bool)

(assert (=> bm!15284 m!165937))

(assert (=> d!43269 d!43321))

(declare-fun call!15301 () Bool)

(declare-fun bm!15296 () Bool)

(assert (=> bm!15296 (= call!15301 (arrayContainsKey!0 (_keys!4676 newMap!16) (select (arr!2296 (_keys!4676 (v!3254 (underlying!472 thiss!992)))) from!355) #b00000000000000000000000000000000))))

(declare-fun b!138726 () Bool)

(declare-fun res!66421 () Bool)

(declare-fun call!15299 () Bool)

(assert (=> b!138726 (= res!66421 call!15299)))

(declare-fun e!90435 () Bool)

(assert (=> b!138726 (=> (not res!66421) (not e!90435))))

(declare-fun d!43323 () Bool)

(declare-fun e!90428 () Bool)

(assert (=> d!43323 e!90428))

(declare-fun res!66415 () Bool)

(assert (=> d!43323 (=> (not res!66415) (not e!90428))))

(declare-fun lt!72652 () tuple2!2652)

(assert (=> d!43323 (= res!66415 (_1!1336 lt!72652))))

(assert (=> d!43323 (= lt!72652 (tuple2!2653 true (LongMapFixedSize!1135 (defaultEntry!2919 newMap!16) (mask!7249 newMap!16) (extraKeys!2676 newMap!16) (zeroValue!2770 newMap!16) (minValue!2770 newMap!16) (bvadd (_size!616 newMap!16) #b00000000000000000000000000000001) (array!4857 (store (arr!2296 (_keys!4676 newMap!16)) (ite c!25912 (index!3313 lt!72404) (index!3310 lt!72404)) (select (arr!2296 (_keys!4676 (v!3254 (underlying!472 thiss!992)))) from!355)) (size!2567 (_keys!4676 newMap!16))) (array!4859 (store (arr!2297 (_values!2902 newMap!16)) (ite c!25912 (index!3313 lt!72404) (index!3310 lt!72404)) (ValueCellFull!1113 (get!1516 (select (arr!2297 (_values!2902 (v!3254 (underlying!472 thiss!992)))) from!355) (dynLambda!435 (defaultEntry!2919 (v!3254 (underlying!472 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (size!2568 (_values!2902 newMap!16))) (_vacant!616 newMap!16))))))

(declare-fun lt!72636 () Unit!4366)

(declare-fun lt!72645 () Unit!4366)

(assert (=> d!43323 (= lt!72636 lt!72645)))

(declare-fun lt!72634 () array!4858)

(declare-fun lt!72633 () array!4856)

(assert (=> d!43323 (contains!910 (getCurrentListMap!549 lt!72633 lt!72634 (mask!7249 newMap!16) (extraKeys!2676 newMap!16) (zeroValue!2770 newMap!16) (minValue!2770 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2919 newMap!16)) (select (store (arr!2296 (_keys!4676 newMap!16)) (ite c!25912 (index!3313 lt!72404) (index!3310 lt!72404)) (select (arr!2296 (_keys!4676 (v!3254 (underlying!472 thiss!992)))) from!355)) (ite c!25912 (index!3313 lt!72404) (index!3310 lt!72404))))))

(assert (=> d!43323 (= lt!72645 (lemmaValidKeyInArrayIsInListMap!121 lt!72633 lt!72634 (mask!7249 newMap!16) (extraKeys!2676 newMap!16) (zeroValue!2770 newMap!16) (minValue!2770 newMap!16) (ite c!25912 (index!3313 lt!72404) (index!3310 lt!72404)) (defaultEntry!2919 newMap!16)))))

(assert (=> d!43323 (= lt!72634 (array!4859 (store (arr!2297 (_values!2902 newMap!16)) (ite c!25912 (index!3313 lt!72404) (index!3310 lt!72404)) (ValueCellFull!1113 (get!1516 (select (arr!2297 (_values!2902 (v!3254 (underlying!472 thiss!992)))) from!355) (dynLambda!435 (defaultEntry!2919 (v!3254 (underlying!472 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (size!2568 (_values!2902 newMap!16))))))

(assert (=> d!43323 (= lt!72633 (array!4857 (store (arr!2296 (_keys!4676 newMap!16)) (ite c!25912 (index!3313 lt!72404) (index!3310 lt!72404)) (select (arr!2296 (_keys!4676 (v!3254 (underlying!472 thiss!992)))) from!355)) (size!2567 (_keys!4676 newMap!16))))))

(declare-fun lt!72628 () Unit!4366)

(declare-fun lt!72649 () Unit!4366)

(assert (=> d!43323 (= lt!72628 lt!72649)))

(declare-fun lt!72640 () array!4856)

(assert (=> d!43323 (= (arrayCountValidKeys!0 lt!72640 (ite c!25912 (index!3313 lt!72404) (index!3310 lt!72404)) (bvadd (ite c!25912 (index!3313 lt!72404) (index!3310 lt!72404)) #b00000000000000000000000000000001)) #b00000000000000000000000000000001)))

(declare-fun lemmaValidKeyAtIImpliesCountKeysIsOne!0 (array!4856 (_ BitVec 32)) Unit!4366)

(assert (=> d!43323 (= lt!72649 (lemmaValidKeyAtIImpliesCountKeysIsOne!0 lt!72640 (ite c!25912 (index!3313 lt!72404) (index!3310 lt!72404))))))

(assert (=> d!43323 (= lt!72640 (array!4857 (store (arr!2296 (_keys!4676 newMap!16)) (ite c!25912 (index!3313 lt!72404) (index!3310 lt!72404)) (select (arr!2296 (_keys!4676 (v!3254 (underlying!472 thiss!992)))) from!355)) (size!2567 (_keys!4676 newMap!16))))))

(declare-fun lt!72629 () Unit!4366)

(declare-fun lt!72643 () Unit!4366)

(assert (=> d!43323 (= lt!72629 lt!72643)))

(declare-fun lt!72653 () array!4856)

(assert (=> d!43323 (arrayContainsKey!0 lt!72653 (select (arr!2296 (_keys!4676 (v!3254 (underlying!472 thiss!992)))) from!355) #b00000000000000000000000000000000)))

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!4856 (_ BitVec 64) (_ BitVec 32)) Unit!4366)

(assert (=> d!43323 (= lt!72643 (lemmaArrayContainsFromImpliesContainsFromZero!0 lt!72653 (select (arr!2296 (_keys!4676 (v!3254 (underlying!472 thiss!992)))) from!355) (ite c!25912 (index!3313 lt!72404) (index!3310 lt!72404))))))

(assert (=> d!43323 (= lt!72653 (array!4857 (store (arr!2296 (_keys!4676 newMap!16)) (ite c!25912 (index!3313 lt!72404) (index!3310 lt!72404)) (select (arr!2296 (_keys!4676 (v!3254 (underlying!472 thiss!992)))) from!355)) (size!2567 (_keys!4676 newMap!16))))))

(declare-fun lt!72654 () Unit!4366)

(declare-fun lt!72648 () Unit!4366)

(assert (=> d!43323 (= lt!72654 lt!72648)))

(assert (=> d!43323 (= (+!172 (getCurrentListMap!549 (_keys!4676 newMap!16) (_values!2902 newMap!16) (mask!7249 newMap!16) (extraKeys!2676 newMap!16) (zeroValue!2770 newMap!16) (minValue!2770 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2919 newMap!16)) (tuple2!2651 (select (arr!2296 (_keys!4676 (v!3254 (underlying!472 thiss!992)))) from!355) (get!1516 (select (arr!2297 (_values!2902 (v!3254 (underlying!472 thiss!992)))) from!355) (dynLambda!435 (defaultEntry!2919 (v!3254 (underlying!472 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (getCurrentListMap!549 (array!4857 (store (arr!2296 (_keys!4676 newMap!16)) (ite c!25912 (index!3313 lt!72404) (index!3310 lt!72404)) (select (arr!2296 (_keys!4676 (v!3254 (underlying!472 thiss!992)))) from!355)) (size!2567 (_keys!4676 newMap!16))) (array!4859 (store (arr!2297 (_values!2902 newMap!16)) (ite c!25912 (index!3313 lt!72404) (index!3310 lt!72404)) (ValueCellFull!1113 (get!1516 (select (arr!2297 (_values!2902 (v!3254 (underlying!472 thiss!992)))) from!355) (dynLambda!435 (defaultEntry!2919 (v!3254 (underlying!472 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (size!2568 (_values!2902 newMap!16))) (mask!7249 newMap!16) (extraKeys!2676 newMap!16) (zeroValue!2770 newMap!16) (minValue!2770 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2919 newMap!16)))))

(declare-fun lemmaAddValidKeyToArrayThenAddPairToListMap!44 (array!4856 array!4858 (_ BitVec 32) (_ BitVec 32) V!3531 V!3531 (_ BitVec 32) (_ BitVec 64) V!3531 Int) Unit!4366)

(assert (=> d!43323 (= lt!72648 (lemmaAddValidKeyToArrayThenAddPairToListMap!44 (_keys!4676 newMap!16) (_values!2902 newMap!16) (mask!7249 newMap!16) (extraKeys!2676 newMap!16) (zeroValue!2770 newMap!16) (minValue!2770 newMap!16) (ite c!25912 (index!3313 lt!72404) (index!3310 lt!72404)) (select (arr!2296 (_keys!4676 (v!3254 (underlying!472 thiss!992)))) from!355) (get!1516 (select (arr!2297 (_values!2902 (v!3254 (underlying!472 thiss!992)))) from!355) (dynLambda!435 (defaultEntry!2919 (v!3254 (underlying!472 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (defaultEntry!2919 newMap!16)))))

(declare-fun lt!72641 () Unit!4366)

(declare-fun lt!72647 () Unit!4366)

(assert (=> d!43323 (= lt!72641 lt!72647)))

(assert (=> d!43323 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (array!4857 (store (arr!2296 (_keys!4676 newMap!16)) (ite c!25912 (index!3313 lt!72404) (index!3310 lt!72404)) (select (arr!2296 (_keys!4676 (v!3254 (underlying!472 thiss!992)))) from!355)) (size!2567 (_keys!4676 newMap!16))) (mask!7249 newMap!16))))

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpen!0 ((_ BitVec 64) array!4856 (_ BitVec 32) (_ BitVec 32)) Unit!4366)

(assert (=> d!43323 (= lt!72647 (lemmaPutValidKeyPreservesForallSeekEntryOrOpen!0 (select (arr!2296 (_keys!4676 (v!3254 (underlying!472 thiss!992)))) from!355) (_keys!4676 newMap!16) (ite c!25912 (index!3313 lt!72404) (index!3310 lt!72404)) (mask!7249 newMap!16)))))

(declare-fun lt!72630 () Unit!4366)

(declare-fun lt!72638 () Unit!4366)

(assert (=> d!43323 (= lt!72630 lt!72638)))

(assert (=> d!43323 (= (arrayCountValidKeys!0 (array!4857 (store (arr!2296 (_keys!4676 newMap!16)) (ite c!25912 (index!3313 lt!72404) (index!3310 lt!72404)) (select (arr!2296 (_keys!4676 (v!3254 (underlying!472 thiss!992)))) from!355)) (size!2567 (_keys!4676 newMap!16))) #b00000000000000000000000000000000 (size!2567 (_keys!4676 newMap!16))) (bvadd (arrayCountValidKeys!0 (_keys!4676 newMap!16) #b00000000000000000000000000000000 (size!2567 (_keys!4676 newMap!16))) #b00000000000000000000000000000001))))

(declare-fun lemmaAddValidKeyIncreasesNumberOfValidKeysInArray!0 (array!4856 (_ BitVec 32) (_ BitVec 64)) Unit!4366)

(assert (=> d!43323 (= lt!72638 (lemmaAddValidKeyIncreasesNumberOfValidKeysInArray!0 (_keys!4676 newMap!16) (ite c!25912 (index!3313 lt!72404) (index!3310 lt!72404)) (select (arr!2296 (_keys!4676 (v!3254 (underlying!472 thiss!992)))) from!355)))))

(declare-fun lt!72637 () Unit!4366)

(declare-fun lt!72655 () Unit!4366)

(assert (=> d!43323 (= lt!72637 lt!72655)))

(declare-fun lt!72646 () List!1750)

(declare-fun lt!72639 () (_ BitVec 32))

(assert (=> d!43323 (arrayNoDuplicates!0 (array!4857 (store (arr!2296 (_keys!4676 newMap!16)) (ite c!25912 (index!3313 lt!72404) (index!3310 lt!72404)) (select (arr!2296 (_keys!4676 (v!3254 (underlying!472 thiss!992)))) from!355)) (size!2567 (_keys!4676 newMap!16))) lt!72639 lt!72646)))

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!4856 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!1750) Unit!4366)

(assert (=> d!43323 (= lt!72655 (lemmaPutNewValidKeyPreservesNoDuplicate!0 (_keys!4676 newMap!16) (select (arr!2296 (_keys!4676 (v!3254 (underlying!472 thiss!992)))) from!355) (ite c!25912 (index!3313 lt!72404) (index!3310 lt!72404)) lt!72639 lt!72646))))

(assert (=> d!43323 (= lt!72646 Nil!1747)))

(assert (=> d!43323 (= lt!72639 #b00000000000000000000000000000000)))

(declare-fun lt!72650 () Unit!4366)

(declare-fun e!90429 () Unit!4366)

(assert (=> d!43323 (= lt!72650 e!90429)))

(declare-fun c!25968 () Bool)

(assert (=> d!43323 (= c!25968 (arrayContainsKey!0 (_keys!4676 newMap!16) (select (arr!2296 (_keys!4676 (v!3254 (underlying!472 thiss!992)))) from!355) #b00000000000000000000000000000000))))

(declare-fun lt!72631 () Unit!4366)

(declare-fun e!90433 () Unit!4366)

(assert (=> d!43323 (= lt!72631 e!90433)))

(declare-fun c!25967 () Bool)

(assert (=> d!43323 (= c!25967 (contains!910 (getCurrentListMap!549 (_keys!4676 newMap!16) (_values!2902 newMap!16) (mask!7249 newMap!16) (extraKeys!2676 newMap!16) (zeroValue!2770 newMap!16) (minValue!2770 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2919 newMap!16)) (select (arr!2296 (_keys!4676 (v!3254 (underlying!472 thiss!992)))) from!355)))))

(assert (=> d!43323 (valid!545 newMap!16)))

(assert (=> d!43323 (= (updateHelperNewKey!63 newMap!16 (select (arr!2296 (_keys!4676 (v!3254 (underlying!472 thiss!992)))) from!355) (get!1516 (select (arr!2297 (_values!2902 (v!3254 (underlying!472 thiss!992)))) from!355) (dynLambda!435 (defaultEntry!2919 (v!3254 (underlying!472 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (ite c!25912 (index!3313 lt!72404) (index!3310 lt!72404))) lt!72652)))

(declare-fun c!25970 () Bool)

(declare-fun lt!72627 () SeekEntryResult!287)

(declare-fun bm!15297 () Bool)

(declare-fun lt!72656 () SeekEntryResult!287)

(assert (=> bm!15297 (= call!15299 (inRange!0 (ite c!25967 (index!3311 lt!72656) (ite c!25970 (index!3310 lt!72627) (index!3313 lt!72627))) (mask!7249 newMap!16)))))

(declare-fun b!138727 () Bool)

(declare-fun e!90434 () Bool)

(assert (=> b!138727 (= e!90434 (not call!15301))))

(declare-fun b!138728 () Bool)

(declare-fun Unit!4376 () Unit!4366)

(assert (=> b!138728 (= e!90429 Unit!4376)))

(declare-fun b!138729 () Bool)

(declare-fun Unit!4377 () Unit!4366)

(assert (=> b!138729 (= e!90429 Unit!4377)))

(declare-fun lt!72644 () Unit!4366)

(declare-fun lemmaArrayContainsKeyThenInListMap!44 (array!4856 array!4858 (_ BitVec 32) (_ BitVec 32) V!3531 V!3531 (_ BitVec 64) (_ BitVec 32) Int) Unit!4366)

(assert (=> b!138729 (= lt!72644 (lemmaArrayContainsKeyThenInListMap!44 (_keys!4676 newMap!16) (_values!2902 newMap!16) (mask!7249 newMap!16) (extraKeys!2676 newMap!16) (zeroValue!2770 newMap!16) (minValue!2770 newMap!16) (select (arr!2296 (_keys!4676 (v!3254 (underlying!472 thiss!992)))) from!355) #b00000000000000000000000000000000 (defaultEntry!2919 newMap!16)))))

(assert (=> b!138729 (contains!910 (getCurrentListMap!549 (_keys!4676 newMap!16) (_values!2902 newMap!16) (mask!7249 newMap!16) (extraKeys!2676 newMap!16) (zeroValue!2770 newMap!16) (minValue!2770 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2919 newMap!16)) (select (arr!2296 (_keys!4676 (v!3254 (underlying!472 thiss!992)))) from!355))))

(declare-fun lt!72651 () Unit!4366)

(assert (=> b!138729 (= lt!72651 lt!72644)))

(assert (=> b!138729 false))

(declare-fun b!138730 () Bool)

(declare-fun res!66416 () Bool)

(assert (=> b!138730 (= res!66416 (= (select (arr!2296 (_keys!4676 newMap!16)) (index!3313 lt!72627)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!138730 (=> (not res!66416) (not e!90434))))

(declare-fun b!138731 () Bool)

(declare-fun e!90432 () Bool)

(assert (=> b!138731 (= e!90432 (not call!15301))))

(declare-fun b!138732 () Bool)

(assert (=> b!138732 (= e!90435 (= (select (arr!2296 (_keys!4676 newMap!16)) (index!3311 lt!72656)) (select (arr!2296 (_keys!4676 (v!3254 (underlying!472 thiss!992)))) from!355)))))

(declare-fun b!138733 () Bool)

(declare-fun e!90430 () Bool)

(assert (=> b!138733 (= e!90430 ((_ is Undefined!287) lt!72627))))

(declare-fun b!138734 () Bool)

(declare-fun lt!72642 () Unit!4366)

(assert (=> b!138734 (= e!90433 lt!72642)))

(assert (=> b!138734 (= lt!72642 (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!63 (_keys!4676 newMap!16) (_values!2902 newMap!16) (mask!7249 newMap!16) (extraKeys!2676 newMap!16) (zeroValue!2770 newMap!16) (minValue!2770 newMap!16) (select (arr!2296 (_keys!4676 (v!3254 (underlying!472 thiss!992)))) from!355) (defaultEntry!2919 newMap!16)))))

(declare-fun call!15302 () SeekEntryResult!287)

(assert (=> b!138734 (= lt!72627 call!15302)))

(assert (=> b!138734 (= c!25970 ((_ is MissingZero!287) lt!72627))))

(declare-fun e!90431 () Bool)

(assert (=> b!138734 e!90431))

(declare-fun b!138735 () Bool)

(assert (=> b!138735 (= e!90430 e!90434)))

(declare-fun res!66418 () Bool)

(declare-fun call!15300 () Bool)

(assert (=> b!138735 (= res!66418 call!15300)))

(assert (=> b!138735 (=> (not res!66418) (not e!90434))))

(declare-fun b!138736 () Bool)

(declare-fun res!66419 () Bool)

(assert (=> b!138736 (=> (not res!66419) (not e!90428))))

(assert (=> b!138736 (= res!66419 (valid!545 (_2!1336 lt!72652)))))

(declare-fun b!138737 () Bool)

(declare-fun Unit!4378 () Unit!4366)

(assert (=> b!138737 (= e!90433 Unit!4378)))

(declare-fun lt!72632 () Unit!4366)

(assert (=> b!138737 (= lt!72632 (lemmaInListMapThenSeekEntryOrOpenFindsIt!63 (_keys!4676 newMap!16) (_values!2902 newMap!16) (mask!7249 newMap!16) (extraKeys!2676 newMap!16) (zeroValue!2770 newMap!16) (minValue!2770 newMap!16) (select (arr!2296 (_keys!4676 (v!3254 (underlying!472 thiss!992)))) from!355) (defaultEntry!2919 newMap!16)))))

(assert (=> b!138737 (= lt!72656 call!15302)))

(declare-fun res!66423 () Bool)

(assert (=> b!138737 (= res!66423 ((_ is Found!287) lt!72656))))

(assert (=> b!138737 (=> (not res!66423) (not e!90435))))

(assert (=> b!138737 e!90435))

(declare-fun lt!72635 () Unit!4366)

(assert (=> b!138737 (= lt!72635 lt!72632)))

(assert (=> b!138737 false))

(declare-fun bm!15298 () Bool)

(assert (=> bm!15298 (= call!15302 (seekEntryOrOpen!0 (select (arr!2296 (_keys!4676 (v!3254 (underlying!472 thiss!992)))) from!355) (_keys!4676 newMap!16) (mask!7249 newMap!16)))))

(declare-fun b!138738 () Bool)

(declare-fun c!25969 () Bool)

(assert (=> b!138738 (= c!25969 ((_ is MissingVacant!287) lt!72627))))

(assert (=> b!138738 (= e!90431 e!90430)))

(declare-fun b!138739 () Bool)

(assert (=> b!138739 (= e!90428 (= (map!1426 (_2!1336 lt!72652)) (+!172 (map!1426 newMap!16) (tuple2!2651 (select (arr!2296 (_keys!4676 (v!3254 (underlying!472 thiss!992)))) from!355) (get!1516 (select (arr!2297 (_values!2902 (v!3254 (underlying!472 thiss!992)))) from!355) (dynLambda!435 (defaultEntry!2919 (v!3254 (underlying!472 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun bm!15299 () Bool)

(assert (=> bm!15299 (= call!15300 call!15299)))

(declare-fun b!138740 () Bool)

(declare-fun res!66420 () Bool)

(assert (=> b!138740 (=> (not res!66420) (not e!90432))))

(assert (=> b!138740 (= res!66420 call!15300)))

(assert (=> b!138740 (= e!90431 e!90432)))

(declare-fun b!138741 () Bool)

(declare-fun res!66422 () Bool)

(assert (=> b!138741 (=> (not res!66422) (not e!90432))))

(assert (=> b!138741 (= res!66422 (= (select (arr!2296 (_keys!4676 newMap!16)) (index!3310 lt!72627)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!138742 () Bool)

(declare-fun res!66417 () Bool)

(assert (=> b!138742 (=> (not res!66417) (not e!90428))))

(assert (=> b!138742 (= res!66417 (contains!910 (map!1426 (_2!1336 lt!72652)) (select (arr!2296 (_keys!4676 (v!3254 (underlying!472 thiss!992)))) from!355)))))

(assert (= (and d!43323 c!25967) b!138737))

(assert (= (and d!43323 (not c!25967)) b!138734))

(assert (= (and b!138737 res!66423) b!138726))

(assert (= (and b!138726 res!66421) b!138732))

(assert (= (and b!138734 c!25970) b!138740))

(assert (= (and b!138734 (not c!25970)) b!138738))

(assert (= (and b!138740 res!66420) b!138741))

(assert (= (and b!138741 res!66422) b!138731))

(assert (= (and b!138738 c!25969) b!138735))

(assert (= (and b!138738 (not c!25969)) b!138733))

(assert (= (and b!138735 res!66418) b!138730))

(assert (= (and b!138730 res!66416) b!138727))

(assert (= (or b!138740 b!138735) bm!15299))

(assert (= (or b!138731 b!138727) bm!15296))

(assert (= (or b!138726 bm!15299) bm!15297))

(assert (= (or b!138737 b!138734) bm!15298))

(assert (= (and d!43323 c!25968) b!138729))

(assert (= (and d!43323 (not c!25968)) b!138728))

(assert (= (and d!43323 res!66415) b!138736))

(assert (= (and b!138736 res!66419) b!138742))

(assert (= (and b!138742 res!66417) b!138739))

(declare-fun m!165939 () Bool)

(assert (=> b!138739 m!165939))

(assert (=> b!138739 m!165501))

(assert (=> b!138739 m!165501))

(declare-fun m!165941 () Bool)

(assert (=> b!138739 m!165941))

(assert (=> bm!15296 m!165499))

(assert (=> bm!15296 m!165621))

(declare-fun m!165943 () Bool)

(assert (=> b!138732 m!165943))

(assert (=> b!138734 m!165499))

(assert (=> b!138734 m!165649))

(declare-fun m!165945 () Bool)

(assert (=> b!138736 m!165945))

(assert (=> b!138737 m!165499))

(assert (=> b!138737 m!165635))

(declare-fun m!165947 () Bool)

(assert (=> bm!15297 m!165947))

(assert (=> bm!15298 m!165499))

(assert (=> bm!15298 m!165615))

(declare-fun m!165949 () Bool)

(assert (=> d!43323 m!165949))

(assert (=> d!43323 m!165499))

(declare-fun m!165951 () Bool)

(assert (=> d!43323 m!165951))

(assert (=> d!43323 m!165499))

(assert (=> d!43323 m!165621))

(assert (=> d!43323 m!165499))

(declare-fun m!165953 () Bool)

(assert (=> d!43323 m!165953))

(assert (=> d!43323 m!165639))

(declare-fun m!165955 () Bool)

(assert (=> d!43323 m!165955))

(declare-fun m!165957 () Bool)

(assert (=> d!43323 m!165957))

(assert (=> d!43323 m!165499))

(declare-fun m!165959 () Bool)

(assert (=> d!43323 m!165959))

(assert (=> d!43323 m!165499))

(declare-fun m!165961 () Bool)

(assert (=> d!43323 m!165961))

(assert (=> d!43323 m!165639))

(assert (=> d!43323 m!165499))

(declare-fun m!165963 () Bool)

(assert (=> d!43323 m!165963))

(assert (=> d!43323 m!165585))

(declare-fun m!165965 () Bool)

(assert (=> d!43323 m!165965))

(declare-fun m!165967 () Bool)

(assert (=> d!43323 m!165967))

(declare-fun m!165969 () Bool)

(assert (=> d!43323 m!165969))

(assert (=> d!43323 m!165639))

(declare-fun m!165971 () Bool)

(assert (=> d!43323 m!165971))

(declare-fun m!165973 () Bool)

(assert (=> d!43323 m!165973))

(declare-fun m!165975 () Bool)

(assert (=> d!43323 m!165975))

(declare-fun m!165977 () Bool)

(assert (=> d!43323 m!165977))

(declare-fun m!165979 () Bool)

(assert (=> d!43323 m!165979))

(declare-fun m!165981 () Bool)

(assert (=> d!43323 m!165981))

(assert (=> d!43323 m!165499))

(assert (=> d!43323 m!165509))

(declare-fun m!165983 () Bool)

(assert (=> d!43323 m!165983))

(assert (=> d!43323 m!165519))

(assert (=> d!43323 m!165979))

(assert (=> d!43323 m!165969))

(declare-fun m!165985 () Bool)

(assert (=> d!43323 m!165985))

(assert (=> d!43323 m!165499))

(declare-fun m!165987 () Bool)

(assert (=> d!43323 m!165987))

(assert (=> b!138742 m!165939))

(assert (=> b!138742 m!165939))

(assert (=> b!138742 m!165499))

(declare-fun m!165989 () Bool)

(assert (=> b!138742 m!165989))

(assert (=> b!138729 m!165499))

(declare-fun m!165991 () Bool)

(assert (=> b!138729 m!165991))

(assert (=> b!138729 m!165639))

(assert (=> b!138729 m!165639))

(assert (=> b!138729 m!165499))

(assert (=> b!138729 m!165963))

(declare-fun m!165993 () Bool)

(assert (=> b!138741 m!165993))

(declare-fun m!165995 () Bool)

(assert (=> b!138730 m!165995))

(assert (=> bm!15242 d!43323))

(declare-fun b!138743 () Bool)

(declare-fun e!90437 () Bool)

(declare-fun e!90438 () Bool)

(assert (=> b!138743 (= e!90437 e!90438)))

(declare-fun c!25971 () Bool)

(assert (=> b!138743 (= c!25971 (validKeyInArray!0 (select (arr!2296 (_keys!4676 (v!3254 (underlying!472 thiss!992)))) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun call!15303 () Bool)

(declare-fun bm!15300 () Bool)

(assert (=> bm!15300 (= call!15303 (arrayNoDuplicates!0 (_keys!4676 (v!3254 (underlying!472 thiss!992))) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (ite c!25971 (Cons!1746 (select (arr!2296 (_keys!4676 (v!3254 (underlying!472 thiss!992)))) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) (ite c!25867 (Cons!1746 (select (arr!2296 (_keys!4676 (v!3254 (underlying!472 thiss!992)))) #b00000000000000000000000000000000) Nil!1747) Nil!1747)) (ite c!25867 (Cons!1746 (select (arr!2296 (_keys!4676 (v!3254 (underlying!472 thiss!992)))) #b00000000000000000000000000000000) Nil!1747) Nil!1747))))))

(declare-fun b!138744 () Bool)

(assert (=> b!138744 (= e!90438 call!15303)))

(declare-fun b!138745 () Bool)

(declare-fun e!90439 () Bool)

(assert (=> b!138745 (= e!90439 e!90437)))

(declare-fun res!66425 () Bool)

(assert (=> b!138745 (=> (not res!66425) (not e!90437))))

(declare-fun e!90436 () Bool)

(assert (=> b!138745 (= res!66425 (not e!90436))))

(declare-fun res!66424 () Bool)

(assert (=> b!138745 (=> (not res!66424) (not e!90436))))

(assert (=> b!138745 (= res!66424 (validKeyInArray!0 (select (arr!2296 (_keys!4676 (v!3254 (underlying!472 thiss!992)))) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun b!138746 () Bool)

(assert (=> b!138746 (= e!90438 call!15303)))

(declare-fun b!138747 () Bool)

(assert (=> b!138747 (= e!90436 (contains!912 (ite c!25867 (Cons!1746 (select (arr!2296 (_keys!4676 (v!3254 (underlying!472 thiss!992)))) #b00000000000000000000000000000000) Nil!1747) Nil!1747) (select (arr!2296 (_keys!4676 (v!3254 (underlying!472 thiss!992)))) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun d!43325 () Bool)

(declare-fun res!66426 () Bool)

(assert (=> d!43325 (=> res!66426 e!90439)))

(assert (=> d!43325 (= res!66426 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!2567 (_keys!4676 (v!3254 (underlying!472 thiss!992))))))))

(assert (=> d!43325 (= (arrayNoDuplicates!0 (_keys!4676 (v!3254 (underlying!472 thiss!992))) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!25867 (Cons!1746 (select (arr!2296 (_keys!4676 (v!3254 (underlying!472 thiss!992)))) #b00000000000000000000000000000000) Nil!1747) Nil!1747)) e!90439)))

(assert (= (and d!43325 (not res!66426)) b!138745))

(assert (= (and b!138745 res!66424) b!138747))

(assert (= (and b!138745 res!66425) b!138743))

(assert (= (and b!138743 c!25971) b!138746))

(assert (= (and b!138743 (not c!25971)) b!138744))

(assert (= (or b!138746 b!138744) bm!15300))

(declare-fun m!165997 () Bool)

(assert (=> b!138743 m!165997))

(assert (=> b!138743 m!165997))

(declare-fun m!165999 () Bool)

(assert (=> b!138743 m!165999))

(assert (=> bm!15300 m!165997))

(declare-fun m!166001 () Bool)

(assert (=> bm!15300 m!166001))

(assert (=> b!138745 m!165997))

(assert (=> b!138745 m!165997))

(assert (=> b!138745 m!165999))

(assert (=> b!138747 m!165997))

(assert (=> b!138747 m!165997))

(declare-fun m!166003 () Bool)

(assert (=> b!138747 m!166003))

(assert (=> bm!15183 d!43325))

(assert (=> b!138499 d!43321))

(declare-fun b!138748 () Bool)

(declare-fun e!90444 () Bool)

(declare-fun e!90442 () Bool)

(assert (=> b!138748 (= e!90444 e!90442)))

(declare-fun res!66433 () Bool)

(declare-fun call!15304 () Bool)

(assert (=> b!138748 (= res!66433 call!15304)))

(assert (=> b!138748 (=> (not res!66433) (not e!90442))))

(declare-fun bm!15301 () Bool)

(declare-fun call!15309 () ListLongMap!1729)

(declare-fun call!15305 () ListLongMap!1729)

(assert (=> bm!15301 (= call!15309 call!15305)))

(declare-fun b!138749 () Bool)

(declare-fun e!90446 () Bool)

(declare-fun e!90447 () Bool)

(assert (=> b!138749 (= e!90446 e!90447)))

(declare-fun res!66435 () Bool)

(assert (=> b!138749 (=> (not res!66435) (not e!90447))))

(declare-fun lt!72663 () ListLongMap!1729)

(assert (=> b!138749 (= res!66435 (contains!910 lt!72663 (select (arr!2296 (_keys!4676 newMap!16)) #b00000000000000000000000000000000)))))

(assert (=> b!138749 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!2567 (_keys!4676 newMap!16))))))

(declare-fun b!138750 () Bool)

(declare-fun e!90448 () Unit!4366)

(declare-fun Unit!4379 () Unit!4366)

(assert (=> b!138750 (= e!90448 Unit!4379)))

(declare-fun b!138751 () Bool)

(declare-fun e!90451 () ListLongMap!1729)

(declare-fun call!15306 () ListLongMap!1729)

(assert (=> b!138751 (= e!90451 call!15306)))

(declare-fun bm!15302 () Bool)

(declare-fun call!15308 () ListLongMap!1729)

(assert (=> bm!15302 (= call!15308 (getCurrentListMapNoExtraKeys!139 (_keys!4676 newMap!16) (ite c!25908 (_values!2902 newMap!16) (array!4859 (store (arr!2297 (_values!2902 newMap!16)) (index!3311 lt!72404) (ValueCellFull!1113 (get!1516 (select (arr!2297 (_values!2902 (v!3254 (underlying!472 thiss!992)))) from!355) (dynLambda!435 (defaultEntry!2919 (v!3254 (underlying!472 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (size!2568 (_values!2902 newMap!16)))) (mask!7249 newMap!16) (extraKeys!2676 newMap!16) (zeroValue!2770 newMap!16) (minValue!2770 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2919 newMap!16)))))

(declare-fun b!138752 () Bool)

(declare-fun e!90449 () ListLongMap!1729)

(assert (=> b!138752 (= e!90449 e!90451)))

(declare-fun c!25976 () Bool)

(assert (=> b!138752 (= c!25976 (and (not (= (bvand (extraKeys!2676 newMap!16) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand (extraKeys!2676 newMap!16) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!138753 () Bool)

(declare-fun res!66427 () Bool)

(declare-fun e!90443 () Bool)

(assert (=> b!138753 (=> (not res!66427) (not e!90443))))

(assert (=> b!138753 (= res!66427 e!90446)))

(declare-fun res!66431 () Bool)

(assert (=> b!138753 (=> res!66431 e!90446)))

(declare-fun e!90441 () Bool)

(assert (=> b!138753 (= res!66431 (not e!90441))))

(declare-fun res!66434 () Bool)

(assert (=> b!138753 (=> (not res!66434) (not e!90441))))

(assert (=> b!138753 (= res!66434 (bvslt #b00000000000000000000000000000000 (size!2567 (_keys!4676 newMap!16))))))

(declare-fun b!138754 () Bool)

(declare-fun e!90445 () ListLongMap!1729)

(assert (=> b!138754 (= e!90445 call!15306)))

(declare-fun b!138755 () Bool)

(declare-fun call!15307 () ListLongMap!1729)

(assert (=> b!138755 (= e!90449 (+!172 call!15307 (tuple2!2651 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2770 newMap!16))))))

(declare-fun b!138756 () Bool)

(declare-fun e!90450 () Bool)

(assert (=> b!138756 (= e!90450 (validKeyInArray!0 (select (arr!2296 (_keys!4676 newMap!16)) #b00000000000000000000000000000000)))))

(declare-fun b!138757 () Bool)

(declare-fun c!25972 () Bool)

(assert (=> b!138757 (= c!25972 (and (not (= (bvand (extraKeys!2676 newMap!16) #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand (extraKeys!2676 newMap!16) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!138757 (= e!90451 e!90445)))

(declare-fun b!138758 () Bool)

(declare-fun res!66428 () Bool)

(assert (=> b!138758 (=> (not res!66428) (not e!90443))))

(assert (=> b!138758 (= res!66428 e!90444)))

(declare-fun c!25975 () Bool)

(assert (=> b!138758 (= c!25975 (not (= (bvand (extraKeys!2676 newMap!16) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!138759 () Bool)

(declare-fun e!90440 () Bool)

(assert (=> b!138759 (= e!90440 (= (apply!118 lt!72663 #b1000000000000000000000000000000000000000000000000000000000000000) (minValue!2770 newMap!16)))))

(declare-fun b!138760 () Bool)

(declare-fun e!90452 () Bool)

(assert (=> b!138760 (= e!90452 e!90440)))

(declare-fun res!66430 () Bool)

(declare-fun call!15310 () Bool)

(assert (=> b!138760 (= res!66430 call!15310)))

(assert (=> b!138760 (=> (not res!66430) (not e!90440))))

(declare-fun bm!15303 () Bool)

(assert (=> bm!15303 (= call!15304 (contains!910 lt!72663 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun bm!15304 () Bool)

(assert (=> bm!15304 (= call!15310 (contains!910 lt!72663 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!138761 () Bool)

(assert (=> b!138761 (= e!90442 (= (apply!118 lt!72663 #b0000000000000000000000000000000000000000000000000000000000000000) (zeroValue!2770 newMap!16)))))

(declare-fun b!138762 () Bool)

(declare-fun lt!72664 () Unit!4366)

(assert (=> b!138762 (= e!90448 lt!72664)))

(declare-fun lt!72657 () ListLongMap!1729)

(assert (=> b!138762 (= lt!72657 (getCurrentListMapNoExtraKeys!139 (_keys!4676 newMap!16) (ite c!25908 (_values!2902 newMap!16) (array!4859 (store (arr!2297 (_values!2902 newMap!16)) (index!3311 lt!72404) (ValueCellFull!1113 (get!1516 (select (arr!2297 (_values!2902 (v!3254 (underlying!472 thiss!992)))) from!355) (dynLambda!435 (defaultEntry!2919 (v!3254 (underlying!472 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (size!2568 (_values!2902 newMap!16)))) (mask!7249 newMap!16) (extraKeys!2676 newMap!16) (zeroValue!2770 newMap!16) (minValue!2770 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2919 newMap!16)))))

(declare-fun lt!72671 () (_ BitVec 64))

(assert (=> b!138762 (= lt!72671 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!72661 () (_ BitVec 64))

(assert (=> b!138762 (= lt!72661 (select (arr!2296 (_keys!4676 newMap!16)) #b00000000000000000000000000000000))))

(declare-fun lt!72666 () Unit!4366)

(assert (=> b!138762 (= lt!72666 (addStillContains!94 lt!72657 lt!72671 (zeroValue!2770 newMap!16) lt!72661))))

(assert (=> b!138762 (contains!910 (+!172 lt!72657 (tuple2!2651 lt!72671 (zeroValue!2770 newMap!16))) lt!72661)))

(declare-fun lt!72668 () Unit!4366)

(assert (=> b!138762 (= lt!72668 lt!72666)))

(declare-fun lt!72678 () ListLongMap!1729)

(assert (=> b!138762 (= lt!72678 (getCurrentListMapNoExtraKeys!139 (_keys!4676 newMap!16) (ite c!25908 (_values!2902 newMap!16) (array!4859 (store (arr!2297 (_values!2902 newMap!16)) (index!3311 lt!72404) (ValueCellFull!1113 (get!1516 (select (arr!2297 (_values!2902 (v!3254 (underlying!472 thiss!992)))) from!355) (dynLambda!435 (defaultEntry!2919 (v!3254 (underlying!472 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (size!2568 (_values!2902 newMap!16)))) (mask!7249 newMap!16) (extraKeys!2676 newMap!16) (zeroValue!2770 newMap!16) (minValue!2770 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2919 newMap!16)))))

(declare-fun lt!72669 () (_ BitVec 64))

(assert (=> b!138762 (= lt!72669 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!72658 () (_ BitVec 64))

(assert (=> b!138762 (= lt!72658 (select (arr!2296 (_keys!4676 newMap!16)) #b00000000000000000000000000000000))))

(declare-fun lt!72677 () Unit!4366)

(assert (=> b!138762 (= lt!72677 (addApplyDifferent!94 lt!72678 lt!72669 (minValue!2770 newMap!16) lt!72658))))

(assert (=> b!138762 (= (apply!118 (+!172 lt!72678 (tuple2!2651 lt!72669 (minValue!2770 newMap!16))) lt!72658) (apply!118 lt!72678 lt!72658))))

(declare-fun lt!72662 () Unit!4366)

(assert (=> b!138762 (= lt!72662 lt!72677)))

(declare-fun lt!72676 () ListLongMap!1729)

(assert (=> b!138762 (= lt!72676 (getCurrentListMapNoExtraKeys!139 (_keys!4676 newMap!16) (ite c!25908 (_values!2902 newMap!16) (array!4859 (store (arr!2297 (_values!2902 newMap!16)) (index!3311 lt!72404) (ValueCellFull!1113 (get!1516 (select (arr!2297 (_values!2902 (v!3254 (underlying!472 thiss!992)))) from!355) (dynLambda!435 (defaultEntry!2919 (v!3254 (underlying!472 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (size!2568 (_values!2902 newMap!16)))) (mask!7249 newMap!16) (extraKeys!2676 newMap!16) (zeroValue!2770 newMap!16) (minValue!2770 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2919 newMap!16)))))

(declare-fun lt!72675 () (_ BitVec 64))

(assert (=> b!138762 (= lt!72675 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!72659 () (_ BitVec 64))

(assert (=> b!138762 (= lt!72659 (select (arr!2296 (_keys!4676 newMap!16)) #b00000000000000000000000000000000))))

(declare-fun lt!72667 () Unit!4366)

(assert (=> b!138762 (= lt!72667 (addApplyDifferent!94 lt!72676 lt!72675 (zeroValue!2770 newMap!16) lt!72659))))

(assert (=> b!138762 (= (apply!118 (+!172 lt!72676 (tuple2!2651 lt!72675 (zeroValue!2770 newMap!16))) lt!72659) (apply!118 lt!72676 lt!72659))))

(declare-fun lt!72660 () Unit!4366)

(assert (=> b!138762 (= lt!72660 lt!72667)))

(declare-fun lt!72672 () ListLongMap!1729)

(assert (=> b!138762 (= lt!72672 (getCurrentListMapNoExtraKeys!139 (_keys!4676 newMap!16) (ite c!25908 (_values!2902 newMap!16) (array!4859 (store (arr!2297 (_values!2902 newMap!16)) (index!3311 lt!72404) (ValueCellFull!1113 (get!1516 (select (arr!2297 (_values!2902 (v!3254 (underlying!472 thiss!992)))) from!355) (dynLambda!435 (defaultEntry!2919 (v!3254 (underlying!472 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (size!2568 (_values!2902 newMap!16)))) (mask!7249 newMap!16) (extraKeys!2676 newMap!16) (zeroValue!2770 newMap!16) (minValue!2770 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2919 newMap!16)))))

(declare-fun lt!72674 () (_ BitVec 64))

(assert (=> b!138762 (= lt!72674 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!72673 () (_ BitVec 64))

(assert (=> b!138762 (= lt!72673 (select (arr!2296 (_keys!4676 newMap!16)) #b00000000000000000000000000000000))))

(assert (=> b!138762 (= lt!72664 (addApplyDifferent!94 lt!72672 lt!72674 (minValue!2770 newMap!16) lt!72673))))

(assert (=> b!138762 (= (apply!118 (+!172 lt!72672 (tuple2!2651 lt!72674 (minValue!2770 newMap!16))) lt!72673) (apply!118 lt!72672 lt!72673))))

(declare-fun bm!15305 () Bool)

(assert (=> bm!15305 (= call!15305 call!15308)))

(declare-fun b!138763 () Bool)

(assert (=> b!138763 (= e!90452 (not call!15310))))

(declare-fun b!138764 () Bool)

(assert (=> b!138764 (= e!90445 call!15309)))

(declare-fun d!43327 () Bool)

(assert (=> d!43327 e!90443))

(declare-fun res!66429 () Bool)

(assert (=> d!43327 (=> (not res!66429) (not e!90443))))

(assert (=> d!43327 (= res!66429 (or (bvsge #b00000000000000000000000000000000 (size!2567 (_keys!4676 newMap!16))) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!2567 (_keys!4676 newMap!16))))))))

(declare-fun lt!72670 () ListLongMap!1729)

(assert (=> d!43327 (= lt!72663 lt!72670)))

(declare-fun lt!72665 () Unit!4366)

(assert (=> d!43327 (= lt!72665 e!90448)))

(declare-fun c!25974 () Bool)

(assert (=> d!43327 (= c!25974 e!90450)))

(declare-fun res!66432 () Bool)

(assert (=> d!43327 (=> (not res!66432) (not e!90450))))

(assert (=> d!43327 (= res!66432 (bvslt #b00000000000000000000000000000000 (size!2567 (_keys!4676 newMap!16))))))

(assert (=> d!43327 (= lt!72670 e!90449)))

(declare-fun c!25977 () Bool)

(assert (=> d!43327 (= c!25977 (and (not (= (bvand (extraKeys!2676 newMap!16) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (extraKeys!2676 newMap!16) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!43327 (validMask!0 (mask!7249 newMap!16))))

(assert (=> d!43327 (= (getCurrentListMap!549 (_keys!4676 newMap!16) (ite c!25908 (_values!2902 newMap!16) (array!4859 (store (arr!2297 (_values!2902 newMap!16)) (index!3311 lt!72404) (ValueCellFull!1113 (get!1516 (select (arr!2297 (_values!2902 (v!3254 (underlying!472 thiss!992)))) from!355) (dynLambda!435 (defaultEntry!2919 (v!3254 (underlying!472 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (size!2568 (_values!2902 newMap!16)))) (mask!7249 newMap!16) (extraKeys!2676 newMap!16) (zeroValue!2770 newMap!16) (minValue!2770 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2919 newMap!16)) lt!72663)))

(declare-fun b!138765 () Bool)

(assert (=> b!138765 (= e!90441 (validKeyInArray!0 (select (arr!2296 (_keys!4676 newMap!16)) #b00000000000000000000000000000000)))))

(declare-fun bm!15306 () Bool)

(assert (=> bm!15306 (= call!15306 call!15307)))

(declare-fun b!138766 () Bool)

(assert (=> b!138766 (= e!90447 (= (apply!118 lt!72663 (select (arr!2296 (_keys!4676 newMap!16)) #b00000000000000000000000000000000)) (get!1516 (select (arr!2297 (ite c!25908 (_values!2902 newMap!16) (array!4859 (store (arr!2297 (_values!2902 newMap!16)) (index!3311 lt!72404) (ValueCellFull!1113 (get!1516 (select (arr!2297 (_values!2902 (v!3254 (underlying!472 thiss!992)))) from!355) (dynLambda!435 (defaultEntry!2919 (v!3254 (underlying!472 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (size!2568 (_values!2902 newMap!16))))) #b00000000000000000000000000000000) (dynLambda!435 (defaultEntry!2919 newMap!16) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!138766 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!2568 (ite c!25908 (_values!2902 newMap!16) (array!4859 (store (arr!2297 (_values!2902 newMap!16)) (index!3311 lt!72404) (ValueCellFull!1113 (get!1516 (select (arr!2297 (_values!2902 (v!3254 (underlying!472 thiss!992)))) from!355) (dynLambda!435 (defaultEntry!2919 (v!3254 (underlying!472 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (size!2568 (_values!2902 newMap!16)))))))))

(assert (=> b!138766 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!2567 (_keys!4676 newMap!16))))))

(declare-fun b!138767 () Bool)

(assert (=> b!138767 (= e!90443 e!90452)))

(declare-fun c!25973 () Bool)

(assert (=> b!138767 (= c!25973 (not (= (bvand (extraKeys!2676 newMap!16) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!138768 () Bool)

(assert (=> b!138768 (= e!90444 (not call!15304))))

(declare-fun bm!15307 () Bool)

(assert (=> bm!15307 (= call!15307 (+!172 (ite c!25977 call!15308 (ite c!25976 call!15305 call!15309)) (ite (or c!25977 c!25976) (tuple2!2651 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2770 newMap!16)) (tuple2!2651 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2770 newMap!16)))))))

(assert (= (and d!43327 c!25977) b!138755))

(assert (= (and d!43327 (not c!25977)) b!138752))

(assert (= (and b!138752 c!25976) b!138751))

(assert (= (and b!138752 (not c!25976)) b!138757))

(assert (= (and b!138757 c!25972) b!138754))

(assert (= (and b!138757 (not c!25972)) b!138764))

(assert (= (or b!138754 b!138764) bm!15301))

(assert (= (or b!138751 bm!15301) bm!15305))

(assert (= (or b!138751 b!138754) bm!15306))

(assert (= (or b!138755 bm!15305) bm!15302))

(assert (= (or b!138755 bm!15306) bm!15307))

(assert (= (and d!43327 res!66432) b!138756))

(assert (= (and d!43327 c!25974) b!138762))

(assert (= (and d!43327 (not c!25974)) b!138750))

(assert (= (and d!43327 res!66429) b!138753))

(assert (= (and b!138753 res!66434) b!138765))

(assert (= (and b!138753 (not res!66431)) b!138749))

(assert (= (and b!138749 res!66435) b!138766))

(assert (= (and b!138753 res!66427) b!138758))

(assert (= (and b!138758 c!25975) b!138748))

(assert (= (and b!138758 (not c!25975)) b!138768))

(assert (= (and b!138748 res!66433) b!138761))

(assert (= (or b!138748 b!138768) bm!15303))

(assert (= (and b!138758 res!66428) b!138767))

(assert (= (and b!138767 c!25973) b!138760))

(assert (= (and b!138767 (not c!25973)) b!138763))

(assert (= (and b!138760 res!66430) b!138759))

(assert (= (or b!138760 b!138763) bm!15304))

(declare-fun b_lambda!6247 () Bool)

(assert (=> (not b_lambda!6247) (not b!138766)))

(assert (=> b!138766 t!6314))

(declare-fun b_and!8673 () Bool)

(assert (= b_and!8669 (and (=> t!6314 result!4141) b_and!8673)))

(assert (=> b!138766 t!6316))

(declare-fun b_and!8675 () Bool)

(assert (= b_and!8671 (and (=> t!6316 result!4143) b_and!8675)))

(declare-fun m!166005 () Bool)

(assert (=> b!138755 m!166005))

(declare-fun m!166007 () Bool)

(assert (=> b!138762 m!166007))

(declare-fun m!166009 () Bool)

(assert (=> b!138762 m!166009))

(assert (=> b!138762 m!165875))

(assert (=> b!138762 m!166007))

(declare-fun m!166011 () Bool)

(assert (=> b!138762 m!166011))

(declare-fun m!166013 () Bool)

(assert (=> b!138762 m!166013))

(declare-fun m!166015 () Bool)

(assert (=> b!138762 m!166015))

(declare-fun m!166017 () Bool)

(assert (=> b!138762 m!166017))

(declare-fun m!166019 () Bool)

(assert (=> b!138762 m!166019))

(declare-fun m!166021 () Bool)

(assert (=> b!138762 m!166021))

(declare-fun m!166023 () Bool)

(assert (=> b!138762 m!166023))

(assert (=> b!138762 m!166021))

(declare-fun m!166025 () Bool)

(assert (=> b!138762 m!166025))

(declare-fun m!166027 () Bool)

(assert (=> b!138762 m!166027))

(declare-fun m!166029 () Bool)

(assert (=> b!138762 m!166029))

(declare-fun m!166031 () Bool)

(assert (=> b!138762 m!166031))

(assert (=> b!138762 m!166011))

(declare-fun m!166033 () Bool)

(assert (=> b!138762 m!166033))

(assert (=> b!138762 m!166015))

(declare-fun m!166035 () Bool)

(assert (=> b!138762 m!166035))

(declare-fun m!166037 () Bool)

(assert (=> b!138762 m!166037))

(assert (=> b!138749 m!165875))

(assert (=> b!138749 m!165875))

(declare-fun m!166039 () Bool)

(assert (=> b!138749 m!166039))

(declare-fun m!166041 () Bool)

(assert (=> b!138761 m!166041))

(declare-fun m!166043 () Bool)

(assert (=> bm!15303 m!166043))

(declare-fun m!166045 () Bool)

(assert (=> b!138766 m!166045))

(assert (=> b!138766 m!165925))

(declare-fun m!166047 () Bool)

(assert (=> b!138766 m!166047))

(assert (=> b!138766 m!165925))

(assert (=> b!138766 m!166045))

(assert (=> b!138766 m!165875))

(declare-fun m!166049 () Bool)

(assert (=> b!138766 m!166049))

(assert (=> b!138766 m!165875))

(assert (=> d!43327 m!165931))

(assert (=> bm!15302 m!166031))

(assert (=> b!138756 m!165875))

(assert (=> b!138756 m!165875))

(assert (=> b!138756 m!165877))

(declare-fun m!166051 () Bool)

(assert (=> b!138759 m!166051))

(declare-fun m!166053 () Bool)

(assert (=> bm!15307 m!166053))

(assert (=> b!138765 m!165875))

(assert (=> b!138765 m!165875))

(assert (=> b!138765 m!165877))

(declare-fun m!166055 () Bool)

(assert (=> bm!15304 m!166055))

(assert (=> bm!15243 d!43327))

(declare-fun d!43329 () Bool)

(declare-fun e!90453 () Bool)

(assert (=> d!43329 e!90453))

(declare-fun res!66436 () Bool)

(assert (=> d!43329 (=> (not res!66436) (not e!90453))))

(declare-fun lt!72681 () ListLongMap!1729)

(assert (=> d!43329 (= res!66436 (contains!910 lt!72681 (_1!1335 (ite (or c!25936 c!25935) (tuple2!2651 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2770 (v!3254 (underlying!472 thiss!992)))) (tuple2!2651 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2770 (v!3254 (underlying!472 thiss!992))))))))))

(declare-fun lt!72679 () List!1749)

(assert (=> d!43329 (= lt!72681 (ListLongMap!1730 lt!72679))))

(declare-fun lt!72682 () Unit!4366)

(declare-fun lt!72680 () Unit!4366)

(assert (=> d!43329 (= lt!72682 lt!72680)))

(assert (=> d!43329 (= (getValueByKey!173 lt!72679 (_1!1335 (ite (or c!25936 c!25935) (tuple2!2651 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2770 (v!3254 (underlying!472 thiss!992)))) (tuple2!2651 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2770 (v!3254 (underlying!472 thiss!992))))))) (Some!178 (_2!1335 (ite (or c!25936 c!25935) (tuple2!2651 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2770 (v!3254 (underlying!472 thiss!992)))) (tuple2!2651 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2770 (v!3254 (underlying!472 thiss!992))))))))))

(assert (=> d!43329 (= lt!72680 (lemmaContainsTupThenGetReturnValue!90 lt!72679 (_1!1335 (ite (or c!25936 c!25935) (tuple2!2651 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2770 (v!3254 (underlying!472 thiss!992)))) (tuple2!2651 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2770 (v!3254 (underlying!472 thiss!992)))))) (_2!1335 (ite (or c!25936 c!25935) (tuple2!2651 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2770 (v!3254 (underlying!472 thiss!992)))) (tuple2!2651 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2770 (v!3254 (underlying!472 thiss!992))))))))))

(assert (=> d!43329 (= lt!72679 (insertStrictlySorted!92 (toList!880 (ite c!25936 call!15277 (ite c!25935 call!15274 call!15278))) (_1!1335 (ite (or c!25936 c!25935) (tuple2!2651 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2770 (v!3254 (underlying!472 thiss!992)))) (tuple2!2651 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2770 (v!3254 (underlying!472 thiss!992)))))) (_2!1335 (ite (or c!25936 c!25935) (tuple2!2651 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2770 (v!3254 (underlying!472 thiss!992)))) (tuple2!2651 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2770 (v!3254 (underlying!472 thiss!992))))))))))

(assert (=> d!43329 (= (+!172 (ite c!25936 call!15277 (ite c!25935 call!15274 call!15278)) (ite (or c!25936 c!25935) (tuple2!2651 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2770 (v!3254 (underlying!472 thiss!992)))) (tuple2!2651 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2770 (v!3254 (underlying!472 thiss!992)))))) lt!72681)))

(declare-fun b!138769 () Bool)

(declare-fun res!66437 () Bool)

(assert (=> b!138769 (=> (not res!66437) (not e!90453))))

(assert (=> b!138769 (= res!66437 (= (getValueByKey!173 (toList!880 lt!72681) (_1!1335 (ite (or c!25936 c!25935) (tuple2!2651 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2770 (v!3254 (underlying!472 thiss!992)))) (tuple2!2651 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2770 (v!3254 (underlying!472 thiss!992))))))) (Some!178 (_2!1335 (ite (or c!25936 c!25935) (tuple2!2651 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2770 (v!3254 (underlying!472 thiss!992)))) (tuple2!2651 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2770 (v!3254 (underlying!472 thiss!992)))))))))))

(declare-fun b!138770 () Bool)

(assert (=> b!138770 (= e!90453 (contains!913 (toList!880 lt!72681) (ite (or c!25936 c!25935) (tuple2!2651 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2770 (v!3254 (underlying!472 thiss!992)))) (tuple2!2651 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2770 (v!3254 (underlying!472 thiss!992)))))))))

(assert (= (and d!43329 res!66436) b!138769))

(assert (= (and b!138769 res!66437) b!138770))

(declare-fun m!166057 () Bool)

(assert (=> d!43329 m!166057))

(declare-fun m!166059 () Bool)

(assert (=> d!43329 m!166059))

(declare-fun m!166061 () Bool)

(assert (=> d!43329 m!166061))

(declare-fun m!166063 () Bool)

(assert (=> d!43329 m!166063))

(declare-fun m!166065 () Bool)

(assert (=> b!138769 m!166065))

(declare-fun m!166067 () Bool)

(assert (=> b!138770 m!166067))

(assert (=> bm!15276 d!43329))

(declare-fun d!43331 () Bool)

(declare-fun e!90454 () Bool)

(assert (=> d!43331 e!90454))

(declare-fun res!66438 () Bool)

(assert (=> d!43331 (=> (not res!66438) (not e!90454))))

(declare-fun lt!72685 () ListLongMap!1729)

(assert (=> d!43331 (= res!66438 (contains!910 lt!72685 (_1!1335 (ite c!25908 (ite c!25903 (tuple2!2651 #b0000000000000000000000000000000000000000000000000000000000000000 (get!1516 (select (arr!2297 (_values!2902 (v!3254 (underlying!472 thiss!992)))) from!355) (dynLambda!435 (defaultEntry!2919 (v!3254 (underlying!472 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (tuple2!2651 #b1000000000000000000000000000000000000000000000000000000000000000 (get!1516 (select (arr!2297 (_values!2902 (v!3254 (underlying!472 thiss!992)))) from!355) (dynLambda!435 (defaultEntry!2919 (v!3254 (underlying!472 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (tuple2!2651 (select (arr!2296 (_keys!4676 (v!3254 (underlying!472 thiss!992)))) from!355) (get!1516 (select (arr!2297 (_values!2902 (v!3254 (underlying!472 thiss!992)))) from!355) (dynLambda!435 (defaultEntry!2919 (v!3254 (underlying!472 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))))))))

(declare-fun lt!72683 () List!1749)

(assert (=> d!43331 (= lt!72685 (ListLongMap!1730 lt!72683))))

(declare-fun lt!72686 () Unit!4366)

(declare-fun lt!72684 () Unit!4366)

(assert (=> d!43331 (= lt!72686 lt!72684)))

(assert (=> d!43331 (= (getValueByKey!173 lt!72683 (_1!1335 (ite c!25908 (ite c!25903 (tuple2!2651 #b0000000000000000000000000000000000000000000000000000000000000000 (get!1516 (select (arr!2297 (_values!2902 (v!3254 (underlying!472 thiss!992)))) from!355) (dynLambda!435 (defaultEntry!2919 (v!3254 (underlying!472 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (tuple2!2651 #b1000000000000000000000000000000000000000000000000000000000000000 (get!1516 (select (arr!2297 (_values!2902 (v!3254 (underlying!472 thiss!992)))) from!355) (dynLambda!435 (defaultEntry!2919 (v!3254 (underlying!472 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (tuple2!2651 (select (arr!2296 (_keys!4676 (v!3254 (underlying!472 thiss!992)))) from!355) (get!1516 (select (arr!2297 (_values!2902 (v!3254 (underlying!472 thiss!992)))) from!355) (dynLambda!435 (defaultEntry!2919 (v!3254 (underlying!472 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))))) (Some!178 (_2!1335 (ite c!25908 (ite c!25903 (tuple2!2651 #b0000000000000000000000000000000000000000000000000000000000000000 (get!1516 (select (arr!2297 (_values!2902 (v!3254 (underlying!472 thiss!992)))) from!355) (dynLambda!435 (defaultEntry!2919 (v!3254 (underlying!472 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (tuple2!2651 #b1000000000000000000000000000000000000000000000000000000000000000 (get!1516 (select (arr!2297 (_values!2902 (v!3254 (underlying!472 thiss!992)))) from!355) (dynLambda!435 (defaultEntry!2919 (v!3254 (underlying!472 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (tuple2!2651 (select (arr!2296 (_keys!4676 (v!3254 (underlying!472 thiss!992)))) from!355) (get!1516 (select (arr!2297 (_values!2902 (v!3254 (underlying!472 thiss!992)))) from!355) (dynLambda!435 (defaultEntry!2919 (v!3254 (underlying!472 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))))))))

(assert (=> d!43331 (= lt!72684 (lemmaContainsTupThenGetReturnValue!90 lt!72683 (_1!1335 (ite c!25908 (ite c!25903 (tuple2!2651 #b0000000000000000000000000000000000000000000000000000000000000000 (get!1516 (select (arr!2297 (_values!2902 (v!3254 (underlying!472 thiss!992)))) from!355) (dynLambda!435 (defaultEntry!2919 (v!3254 (underlying!472 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (tuple2!2651 #b1000000000000000000000000000000000000000000000000000000000000000 (get!1516 (select (arr!2297 (_values!2902 (v!3254 (underlying!472 thiss!992)))) from!355) (dynLambda!435 (defaultEntry!2919 (v!3254 (underlying!472 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (tuple2!2651 (select (arr!2296 (_keys!4676 (v!3254 (underlying!472 thiss!992)))) from!355) (get!1516 (select (arr!2297 (_values!2902 (v!3254 (underlying!472 thiss!992)))) from!355) (dynLambda!435 (defaultEntry!2919 (v!3254 (underlying!472 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))) (_2!1335 (ite c!25908 (ite c!25903 (tuple2!2651 #b0000000000000000000000000000000000000000000000000000000000000000 (get!1516 (select (arr!2297 (_values!2902 (v!3254 (underlying!472 thiss!992)))) from!355) (dynLambda!435 (defaultEntry!2919 (v!3254 (underlying!472 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (tuple2!2651 #b1000000000000000000000000000000000000000000000000000000000000000 (get!1516 (select (arr!2297 (_values!2902 (v!3254 (underlying!472 thiss!992)))) from!355) (dynLambda!435 (defaultEntry!2919 (v!3254 (underlying!472 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (tuple2!2651 (select (arr!2296 (_keys!4676 (v!3254 (underlying!472 thiss!992)))) from!355) (get!1516 (select (arr!2297 (_values!2902 (v!3254 (underlying!472 thiss!992)))) from!355) (dynLambda!435 (defaultEntry!2919 (v!3254 (underlying!472 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))))))))

(assert (=> d!43331 (= lt!72683 (insertStrictlySorted!92 (toList!880 e!90293) (_1!1335 (ite c!25908 (ite c!25903 (tuple2!2651 #b0000000000000000000000000000000000000000000000000000000000000000 (get!1516 (select (arr!2297 (_values!2902 (v!3254 (underlying!472 thiss!992)))) from!355) (dynLambda!435 (defaultEntry!2919 (v!3254 (underlying!472 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (tuple2!2651 #b1000000000000000000000000000000000000000000000000000000000000000 (get!1516 (select (arr!2297 (_values!2902 (v!3254 (underlying!472 thiss!992)))) from!355) (dynLambda!435 (defaultEntry!2919 (v!3254 (underlying!472 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (tuple2!2651 (select (arr!2296 (_keys!4676 (v!3254 (underlying!472 thiss!992)))) from!355) (get!1516 (select (arr!2297 (_values!2902 (v!3254 (underlying!472 thiss!992)))) from!355) (dynLambda!435 (defaultEntry!2919 (v!3254 (underlying!472 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))) (_2!1335 (ite c!25908 (ite c!25903 (tuple2!2651 #b0000000000000000000000000000000000000000000000000000000000000000 (get!1516 (select (arr!2297 (_values!2902 (v!3254 (underlying!472 thiss!992)))) from!355) (dynLambda!435 (defaultEntry!2919 (v!3254 (underlying!472 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (tuple2!2651 #b1000000000000000000000000000000000000000000000000000000000000000 (get!1516 (select (arr!2297 (_values!2902 (v!3254 (underlying!472 thiss!992)))) from!355) (dynLambda!435 (defaultEntry!2919 (v!3254 (underlying!472 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (tuple2!2651 (select (arr!2296 (_keys!4676 (v!3254 (underlying!472 thiss!992)))) from!355) (get!1516 (select (arr!2297 (_values!2902 (v!3254 (underlying!472 thiss!992)))) from!355) (dynLambda!435 (defaultEntry!2919 (v!3254 (underlying!472 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))))))))

(assert (=> d!43331 (= (+!172 e!90293 (ite c!25908 (ite c!25903 (tuple2!2651 #b0000000000000000000000000000000000000000000000000000000000000000 (get!1516 (select (arr!2297 (_values!2902 (v!3254 (underlying!472 thiss!992)))) from!355) (dynLambda!435 (defaultEntry!2919 (v!3254 (underlying!472 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (tuple2!2651 #b1000000000000000000000000000000000000000000000000000000000000000 (get!1516 (select (arr!2297 (_values!2902 (v!3254 (underlying!472 thiss!992)))) from!355) (dynLambda!435 (defaultEntry!2919 (v!3254 (underlying!472 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (tuple2!2651 (select (arr!2296 (_keys!4676 (v!3254 (underlying!472 thiss!992)))) from!355) (get!1516 (select (arr!2297 (_values!2902 (v!3254 (underlying!472 thiss!992)))) from!355) (dynLambda!435 (defaultEntry!2919 (v!3254 (underlying!472 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))) lt!72685)))

(declare-fun b!138771 () Bool)

(declare-fun res!66439 () Bool)

(assert (=> b!138771 (=> (not res!66439) (not e!90454))))

(assert (=> b!138771 (= res!66439 (= (getValueByKey!173 (toList!880 lt!72685) (_1!1335 (ite c!25908 (ite c!25903 (tuple2!2651 #b0000000000000000000000000000000000000000000000000000000000000000 (get!1516 (select (arr!2297 (_values!2902 (v!3254 (underlying!472 thiss!992)))) from!355) (dynLambda!435 (defaultEntry!2919 (v!3254 (underlying!472 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (tuple2!2651 #b1000000000000000000000000000000000000000000000000000000000000000 (get!1516 (select (arr!2297 (_values!2902 (v!3254 (underlying!472 thiss!992)))) from!355) (dynLambda!435 (defaultEntry!2919 (v!3254 (underlying!472 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (tuple2!2651 (select (arr!2296 (_keys!4676 (v!3254 (underlying!472 thiss!992)))) from!355) (get!1516 (select (arr!2297 (_values!2902 (v!3254 (underlying!472 thiss!992)))) from!355) (dynLambda!435 (defaultEntry!2919 (v!3254 (underlying!472 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))))) (Some!178 (_2!1335 (ite c!25908 (ite c!25903 (tuple2!2651 #b0000000000000000000000000000000000000000000000000000000000000000 (get!1516 (select (arr!2297 (_values!2902 (v!3254 (underlying!472 thiss!992)))) from!355) (dynLambda!435 (defaultEntry!2919 (v!3254 (underlying!472 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (tuple2!2651 #b1000000000000000000000000000000000000000000000000000000000000000 (get!1516 (select (arr!2297 (_values!2902 (v!3254 (underlying!472 thiss!992)))) from!355) (dynLambda!435 (defaultEntry!2919 (v!3254 (underlying!472 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (tuple2!2651 (select (arr!2296 (_keys!4676 (v!3254 (underlying!472 thiss!992)))) from!355) (get!1516 (select (arr!2297 (_values!2902 (v!3254 (underlying!472 thiss!992)))) from!355) (dynLambda!435 (defaultEntry!2919 (v!3254 (underlying!472 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))))))))

(declare-fun b!138772 () Bool)

(assert (=> b!138772 (= e!90454 (contains!913 (toList!880 lt!72685) (ite c!25908 (ite c!25903 (tuple2!2651 #b0000000000000000000000000000000000000000000000000000000000000000 (get!1516 (select (arr!2297 (_values!2902 (v!3254 (underlying!472 thiss!992)))) from!355) (dynLambda!435 (defaultEntry!2919 (v!3254 (underlying!472 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (tuple2!2651 #b1000000000000000000000000000000000000000000000000000000000000000 (get!1516 (select (arr!2297 (_values!2902 (v!3254 (underlying!472 thiss!992)))) from!355) (dynLambda!435 (defaultEntry!2919 (v!3254 (underlying!472 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (tuple2!2651 (select (arr!2296 (_keys!4676 (v!3254 (underlying!472 thiss!992)))) from!355) (get!1516 (select (arr!2297 (_values!2902 (v!3254 (underlying!472 thiss!992)))) from!355) (dynLambda!435 (defaultEntry!2919 (v!3254 (underlying!472 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (= (and d!43331 res!66438) b!138771))

(assert (= (and b!138771 res!66439) b!138772))

(declare-fun m!166069 () Bool)

(assert (=> d!43331 m!166069))

(declare-fun m!166071 () Bool)

(assert (=> d!43331 m!166071))

(declare-fun m!166073 () Bool)

(assert (=> d!43331 m!166073))

(declare-fun m!166075 () Bool)

(assert (=> d!43331 m!166075))

(declare-fun m!166077 () Bool)

(assert (=> b!138771 m!166077))

(declare-fun m!166079 () Bool)

(assert (=> b!138772 m!166079))

(assert (=> bm!15248 d!43331))

(declare-fun d!43333 () Bool)

(assert (=> d!43333 (isDefined!127 (getValueByKey!173 (toList!880 lt!72301) (select (arr!2296 (_keys!4676 (v!3254 (underlying!472 thiss!992)))) from!355)))))

(declare-fun lt!72689 () Unit!4366)

(declare-fun choose!855 (List!1749 (_ BitVec 64)) Unit!4366)

(assert (=> d!43333 (= lt!72689 (choose!855 (toList!880 lt!72301) (select (arr!2296 (_keys!4676 (v!3254 (underlying!472 thiss!992)))) from!355)))))

(declare-fun e!90457 () Bool)

(assert (=> d!43333 e!90457))

(declare-fun res!66442 () Bool)

(assert (=> d!43333 (=> (not res!66442) (not e!90457))))

(declare-fun isStrictlySorted!319 (List!1749) Bool)

(assert (=> d!43333 (= res!66442 (isStrictlySorted!319 (toList!880 lt!72301)))))

(assert (=> d!43333 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!126 (toList!880 lt!72301) (select (arr!2296 (_keys!4676 (v!3254 (underlying!472 thiss!992)))) from!355)) lt!72689)))

(declare-fun b!138775 () Bool)

(assert (=> b!138775 (= e!90457 (containsKey!177 (toList!880 lt!72301) (select (arr!2296 (_keys!4676 (v!3254 (underlying!472 thiss!992)))) from!355)))))

(assert (= (and d!43333 res!66442) b!138775))

(assert (=> d!43333 m!165499))

(assert (=> d!43333 m!165605))

(assert (=> d!43333 m!165605))

(assert (=> d!43333 m!165607))

(assert (=> d!43333 m!165499))

(declare-fun m!166081 () Bool)

(assert (=> d!43333 m!166081))

(declare-fun m!166083 () Bool)

(assert (=> d!43333 m!166083))

(assert (=> b!138775 m!165499))

(assert (=> b!138775 m!165601))

(assert (=> b!138385 d!43333))

(declare-fun d!43335 () Bool)

(declare-fun isEmpty!421 (Option!179) Bool)

(assert (=> d!43335 (= (isDefined!127 (getValueByKey!173 (toList!880 lt!72301) (select (arr!2296 (_keys!4676 (v!3254 (underlying!472 thiss!992)))) from!355))) (not (isEmpty!421 (getValueByKey!173 (toList!880 lt!72301) (select (arr!2296 (_keys!4676 (v!3254 (underlying!472 thiss!992)))) from!355)))))))

(declare-fun bs!5818 () Bool)

(assert (= bs!5818 d!43335))

(assert (=> bs!5818 m!165605))

(declare-fun m!166085 () Bool)

(assert (=> bs!5818 m!166085))

(assert (=> b!138385 d!43335))

(declare-fun b!138785 () Bool)

(declare-fun e!90462 () Option!179)

(declare-fun e!90463 () Option!179)

(assert (=> b!138785 (= e!90462 e!90463)))

(declare-fun c!25983 () Bool)

(assert (=> b!138785 (= c!25983 (and ((_ is Cons!1745) (toList!880 lt!72301)) (not (= (_1!1335 (h!2352 (toList!880 lt!72301))) (select (arr!2296 (_keys!4676 (v!3254 (underlying!472 thiss!992)))) from!355)))))))

(declare-fun b!138786 () Bool)

(assert (=> b!138786 (= e!90463 (getValueByKey!173 (t!6305 (toList!880 lt!72301)) (select (arr!2296 (_keys!4676 (v!3254 (underlying!472 thiss!992)))) from!355)))))

(declare-fun d!43337 () Bool)

(declare-fun c!25982 () Bool)

(assert (=> d!43337 (= c!25982 (and ((_ is Cons!1745) (toList!880 lt!72301)) (= (_1!1335 (h!2352 (toList!880 lt!72301))) (select (arr!2296 (_keys!4676 (v!3254 (underlying!472 thiss!992)))) from!355))))))

(assert (=> d!43337 (= (getValueByKey!173 (toList!880 lt!72301) (select (arr!2296 (_keys!4676 (v!3254 (underlying!472 thiss!992)))) from!355)) e!90462)))

(declare-fun b!138787 () Bool)

(assert (=> b!138787 (= e!90463 None!177)))

(declare-fun b!138784 () Bool)

(assert (=> b!138784 (= e!90462 (Some!178 (_2!1335 (h!2352 (toList!880 lt!72301)))))))

(assert (= (and d!43337 c!25982) b!138784))

(assert (= (and d!43337 (not c!25982)) b!138785))

(assert (= (and b!138785 c!25983) b!138786))

(assert (= (and b!138785 (not c!25983)) b!138787))

(assert (=> b!138786 m!165499))

(declare-fun m!166087 () Bool)

(assert (=> b!138786 m!166087))

(assert (=> b!138385 d!43337))

(assert (=> b!138387 d!43335))

(assert (=> b!138387 d!43337))

(declare-fun bm!15310 () Bool)

(declare-fun call!15313 () (_ BitVec 32))

(assert (=> bm!15310 (= call!15313 (arrayCountValidKeys!0 (_keys!4676 newMap!16) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!2567 (_keys!4676 newMap!16))))))

(declare-fun b!138796 () Bool)

(declare-fun e!90468 () (_ BitVec 32))

(declare-fun e!90469 () (_ BitVec 32))

(assert (=> b!138796 (= e!90468 e!90469)))

(declare-fun c!25988 () Bool)

(assert (=> b!138796 (= c!25988 (validKeyInArray!0 (select (arr!2296 (_keys!4676 newMap!16)) #b00000000000000000000000000000000)))))

(declare-fun b!138797 () Bool)

(assert (=> b!138797 (= e!90469 (bvadd #b00000000000000000000000000000001 call!15313))))

(declare-fun b!138798 () Bool)

(assert (=> b!138798 (= e!90469 call!15313)))

(declare-fun b!138799 () Bool)

(assert (=> b!138799 (= e!90468 #b00000000000000000000000000000000)))

(declare-fun d!43339 () Bool)

(declare-fun lt!72692 () (_ BitVec 32))

(assert (=> d!43339 (and (bvsge lt!72692 #b00000000000000000000000000000000) (bvsle lt!72692 (bvsub (size!2567 (_keys!4676 newMap!16)) #b00000000000000000000000000000000)))))

(assert (=> d!43339 (= lt!72692 e!90468)))

(declare-fun c!25989 () Bool)

(assert (=> d!43339 (= c!25989 (bvsge #b00000000000000000000000000000000 (size!2567 (_keys!4676 newMap!16))))))

(assert (=> d!43339 (and (bvsle #b00000000000000000000000000000000 (size!2567 (_keys!4676 newMap!16))) (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvsle (size!2567 (_keys!4676 newMap!16)) (size!2567 (_keys!4676 newMap!16))))))

(assert (=> d!43339 (= (arrayCountValidKeys!0 (_keys!4676 newMap!16) #b00000000000000000000000000000000 (size!2567 (_keys!4676 newMap!16))) lt!72692)))

(assert (= (and d!43339 c!25989) b!138799))

(assert (= (and d!43339 (not c!25989)) b!138796))

(assert (= (and b!138796 c!25988) b!138797))

(assert (= (and b!138796 (not c!25988)) b!138798))

(assert (= (or b!138797 b!138798) bm!15310))

(declare-fun m!166089 () Bool)

(assert (=> bm!15310 m!166089))

(assert (=> b!138796 m!165875))

(assert (=> b!138796 m!165875))

(assert (=> b!138796 m!165877))

(assert (=> b!138364 d!43339))

(declare-fun d!43341 () Bool)

(declare-fun e!90472 () Bool)

(assert (=> d!43341 e!90472))

(declare-fun res!66447 () Bool)

(assert (=> d!43341 (=> (not res!66447) (not e!90472))))

(declare-fun lt!72698 () SeekEntryResult!287)

(assert (=> d!43341 (= res!66447 ((_ is Found!287) lt!72698))))

(assert (=> d!43341 (= lt!72698 (seekEntryOrOpen!0 (select (arr!2296 (_keys!4676 (v!3254 (underlying!472 thiss!992)))) from!355) (_keys!4676 newMap!16) (mask!7249 newMap!16)))))

(declare-fun lt!72697 () Unit!4366)

(declare-fun choose!856 (array!4856 array!4858 (_ BitVec 32) (_ BitVec 32) V!3531 V!3531 (_ BitVec 64) Int) Unit!4366)

(assert (=> d!43341 (= lt!72697 (choose!856 (_keys!4676 newMap!16) (_values!2902 newMap!16) (mask!7249 newMap!16) (extraKeys!2676 newMap!16) (zeroValue!2770 newMap!16) (minValue!2770 newMap!16) (select (arr!2296 (_keys!4676 (v!3254 (underlying!472 thiss!992)))) from!355) (defaultEntry!2919 newMap!16)))))

(assert (=> d!43341 (validMask!0 (mask!7249 newMap!16))))

(assert (=> d!43341 (= (lemmaInListMapThenSeekEntryOrOpenFindsIt!63 (_keys!4676 newMap!16) (_values!2902 newMap!16) (mask!7249 newMap!16) (extraKeys!2676 newMap!16) (zeroValue!2770 newMap!16) (minValue!2770 newMap!16) (select (arr!2296 (_keys!4676 (v!3254 (underlying!472 thiss!992)))) from!355) (defaultEntry!2919 newMap!16)) lt!72697)))

(declare-fun b!138804 () Bool)

(declare-fun res!66448 () Bool)

(assert (=> b!138804 (=> (not res!66448) (not e!90472))))

(assert (=> b!138804 (= res!66448 (inRange!0 (index!3311 lt!72698) (mask!7249 newMap!16)))))

(declare-fun b!138805 () Bool)

(assert (=> b!138805 (= e!90472 (= (select (arr!2296 (_keys!4676 newMap!16)) (index!3311 lt!72698)) (select (arr!2296 (_keys!4676 (v!3254 (underlying!472 thiss!992)))) from!355)))))

(assert (=> b!138805 (and (bvsge (index!3311 lt!72698) #b00000000000000000000000000000000) (bvslt (index!3311 lt!72698) (size!2567 (_keys!4676 newMap!16))))))

(assert (= (and d!43341 res!66447) b!138804))

(assert (= (and b!138804 res!66448) b!138805))

(assert (=> d!43341 m!165499))

(assert (=> d!43341 m!165615))

(assert (=> d!43341 m!165499))

(declare-fun m!166091 () Bool)

(assert (=> d!43341 m!166091))

(assert (=> d!43341 m!165931))

(declare-fun m!166093 () Bool)

(assert (=> b!138804 m!166093))

(declare-fun m!166095 () Bool)

(assert (=> b!138805 m!166095))

(assert (=> bm!15249 d!43341))

(declare-fun lt!72703 () SeekEntryResult!287)

(declare-fun call!15318 () Bool)

(declare-fun bm!15315 () Bool)

(declare-fun c!25994 () Bool)

(assert (=> bm!15315 (= call!15318 (inRange!0 (ite c!25994 (index!3310 lt!72703) (index!3313 lt!72703)) (mask!7249 newMap!16)))))

(declare-fun b!138822 () Bool)

(declare-fun res!66459 () Bool)

(declare-fun e!90481 () Bool)

(assert (=> b!138822 (=> (not res!66459) (not e!90481))))

(assert (=> b!138822 (= res!66459 (= (select (arr!2296 (_keys!4676 newMap!16)) (index!3313 lt!72703)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!138822 (and (bvsge (index!3313 lt!72703) #b00000000000000000000000000000000) (bvslt (index!3313 lt!72703) (size!2567 (_keys!4676 newMap!16))))))

(declare-fun b!138823 () Bool)

(declare-fun e!90483 () Bool)

(declare-fun e!90482 () Bool)

(assert (=> b!138823 (= e!90483 e!90482)))

(declare-fun c!25995 () Bool)

(assert (=> b!138823 (= c!25995 ((_ is MissingVacant!287) lt!72703))))

(declare-fun b!138824 () Bool)

(declare-fun e!90484 () Bool)

(declare-fun call!15319 () Bool)

(assert (=> b!138824 (= e!90484 (not call!15319))))

(declare-fun b!138825 () Bool)

(assert (=> b!138825 (and (bvsge (index!3310 lt!72703) #b00000000000000000000000000000000) (bvslt (index!3310 lt!72703) (size!2567 (_keys!4676 newMap!16))))))

(declare-fun res!66458 () Bool)

(assert (=> b!138825 (= res!66458 (= (select (arr!2296 (_keys!4676 newMap!16)) (index!3310 lt!72703)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!138825 (=> (not res!66458) (not e!90484))))

(declare-fun b!138826 () Bool)

(assert (=> b!138826 (= e!90483 e!90484)))

(declare-fun res!66460 () Bool)

(assert (=> b!138826 (= res!66460 call!15318)))

(assert (=> b!138826 (=> (not res!66460) (not e!90484))))

(declare-fun bm!15316 () Bool)

(assert (=> bm!15316 (= call!15319 (arrayContainsKey!0 (_keys!4676 newMap!16) (select (arr!2296 (_keys!4676 (v!3254 (underlying!472 thiss!992)))) from!355) #b00000000000000000000000000000000))))

(declare-fun b!138827 () Bool)

(declare-fun res!66457 () Bool)

(assert (=> b!138827 (=> (not res!66457) (not e!90481))))

(assert (=> b!138827 (= res!66457 call!15318)))

(assert (=> b!138827 (= e!90482 e!90481)))

(declare-fun d!43343 () Bool)

(assert (=> d!43343 e!90483))

(assert (=> d!43343 (= c!25994 ((_ is MissingZero!287) lt!72703))))

(assert (=> d!43343 (= lt!72703 (seekEntryOrOpen!0 (select (arr!2296 (_keys!4676 (v!3254 (underlying!472 thiss!992)))) from!355) (_keys!4676 newMap!16) (mask!7249 newMap!16)))))

(declare-fun lt!72704 () Unit!4366)

(declare-fun choose!857 (array!4856 array!4858 (_ BitVec 32) (_ BitVec 32) V!3531 V!3531 (_ BitVec 64) Int) Unit!4366)

(assert (=> d!43343 (= lt!72704 (choose!857 (_keys!4676 newMap!16) (_values!2902 newMap!16) (mask!7249 newMap!16) (extraKeys!2676 newMap!16) (zeroValue!2770 newMap!16) (minValue!2770 newMap!16) (select (arr!2296 (_keys!4676 (v!3254 (underlying!472 thiss!992)))) from!355) (defaultEntry!2919 newMap!16)))))

(assert (=> d!43343 (validMask!0 (mask!7249 newMap!16))))

(assert (=> d!43343 (= (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!63 (_keys!4676 newMap!16) (_values!2902 newMap!16) (mask!7249 newMap!16) (extraKeys!2676 newMap!16) (zeroValue!2770 newMap!16) (minValue!2770 newMap!16) (select (arr!2296 (_keys!4676 (v!3254 (underlying!472 thiss!992)))) from!355) (defaultEntry!2919 newMap!16)) lt!72704)))

(declare-fun b!138828 () Bool)

(assert (=> b!138828 (= e!90482 ((_ is Undefined!287) lt!72703))))

(declare-fun b!138829 () Bool)

(assert (=> b!138829 (= e!90481 (not call!15319))))

(assert (= (and d!43343 c!25994) b!138826))

(assert (= (and d!43343 (not c!25994)) b!138823))

(assert (= (and b!138826 res!66460) b!138825))

(assert (= (and b!138825 res!66458) b!138824))

(assert (= (and b!138823 c!25995) b!138827))

(assert (= (and b!138823 (not c!25995)) b!138828))

(assert (= (and b!138827 res!66457) b!138822))

(assert (= (and b!138822 res!66459) b!138829))

(assert (= (or b!138826 b!138827) bm!15315))

(assert (= (or b!138824 b!138829) bm!15316))

(declare-fun m!166097 () Bool)

(assert (=> b!138822 m!166097))

(assert (=> d!43343 m!165499))

(assert (=> d!43343 m!165615))

(assert (=> d!43343 m!165499))

(declare-fun m!166099 () Bool)

(assert (=> d!43343 m!166099))

(assert (=> d!43343 m!165931))

(declare-fun m!166101 () Bool)

(assert (=> b!138825 m!166101))

(assert (=> bm!15316 m!165499))

(assert (=> bm!15316 m!165621))

(declare-fun m!166103 () Bool)

(assert (=> bm!15315 m!166103))

(assert (=> bm!15245 d!43343))

(declare-fun d!43345 () Bool)

(assert (=> d!43345 (= (inRange!0 (ite c!25904 (ite c!25915 (index!3311 lt!72403) (ite c!25911 (index!3310 lt!72410) (index!3313 lt!72410))) (ite c!25910 (index!3311 lt!72389) (ite c!25905 (index!3310 lt!72398) (index!3313 lt!72398)))) (mask!7249 newMap!16)) (and (bvsge (ite c!25904 (ite c!25915 (index!3311 lt!72403) (ite c!25911 (index!3310 lt!72410) (index!3313 lt!72410))) (ite c!25910 (index!3311 lt!72389) (ite c!25905 (index!3310 lt!72398) (index!3313 lt!72398)))) #b00000000000000000000000000000000) (bvslt (ite c!25904 (ite c!25915 (index!3311 lt!72403) (ite c!25911 (index!3310 lt!72410) (index!3313 lt!72410))) (ite c!25910 (index!3311 lt!72389) (ite c!25905 (index!3310 lt!72398) (index!3313 lt!72398)))) (bvadd (mask!7249 newMap!16) #b00000000000000000000000000000001))))))

(assert (=> bm!15238 d!43345))

(declare-fun d!43347 () Bool)

(declare-fun e!90486 () Bool)

(assert (=> d!43347 e!90486))

(declare-fun res!66461 () Bool)

(assert (=> d!43347 (=> res!66461 e!90486)))

(declare-fun lt!72706 () Bool)

(assert (=> d!43347 (= res!66461 (not lt!72706))))

(declare-fun lt!72708 () Bool)

(assert (=> d!43347 (= lt!72706 lt!72708)))

(declare-fun lt!72705 () Unit!4366)

(declare-fun e!90485 () Unit!4366)

(assert (=> d!43347 (= lt!72705 e!90485)))

(declare-fun c!25996 () Bool)

(assert (=> d!43347 (= c!25996 lt!72708)))

(assert (=> d!43347 (= lt!72708 (containsKey!177 (toList!880 lt!72461) (select (arr!2296 (_keys!4676 (v!3254 (underlying!472 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))))))

(assert (=> d!43347 (= (contains!910 lt!72461 (select (arr!2296 (_keys!4676 (v!3254 (underlying!472 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))) lt!72706)))

(declare-fun b!138830 () Bool)

(declare-fun lt!72707 () Unit!4366)

(assert (=> b!138830 (= e!90485 lt!72707)))

(assert (=> b!138830 (= lt!72707 (lemmaContainsKeyImpliesGetValueByKeyDefined!126 (toList!880 lt!72461) (select (arr!2296 (_keys!4676 (v!3254 (underlying!472 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))))))

(assert (=> b!138830 (isDefined!127 (getValueByKey!173 (toList!880 lt!72461) (select (arr!2296 (_keys!4676 (v!3254 (underlying!472 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))))))

(declare-fun b!138831 () Bool)

(declare-fun Unit!4380 () Unit!4366)

(assert (=> b!138831 (= e!90485 Unit!4380)))

(declare-fun b!138832 () Bool)

(assert (=> b!138832 (= e!90486 (isDefined!127 (getValueByKey!173 (toList!880 lt!72461) (select (arr!2296 (_keys!4676 (v!3254 (underlying!472 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)))))))

(assert (= (and d!43347 c!25996) b!138830))

(assert (= (and d!43347 (not c!25996)) b!138831))

(assert (= (and d!43347 (not res!66461)) b!138832))

(assert (=> d!43347 m!165591))

(declare-fun m!166105 () Bool)

(assert (=> d!43347 m!166105))

(assert (=> b!138830 m!165591))

(declare-fun m!166107 () Bool)

(assert (=> b!138830 m!166107))

(assert (=> b!138830 m!165591))

(declare-fun m!166109 () Bool)

(assert (=> b!138830 m!166109))

(assert (=> b!138830 m!166109))

(declare-fun m!166111 () Bool)

(assert (=> b!138830 m!166111))

(assert (=> b!138832 m!165591))

(assert (=> b!138832 m!166109))

(assert (=> b!138832 m!166109))

(assert (=> b!138832 m!166111))

(assert (=> b!138563 d!43347))

(declare-fun d!43349 () Bool)

(assert (=> d!43349 (= (get!1519 (select (arr!2297 (_values!2902 (v!3254 (underlying!472 thiss!992)))) from!355) (dynLambda!435 (defaultEntry!2919 (v!3254 (underlying!472 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (dynLambda!435 (defaultEntry!2919 (v!3254 (underlying!472 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!138519 d!43349))

(declare-fun d!43351 () Bool)

(declare-fun e!90487 () Bool)

(assert (=> d!43351 e!90487))

(declare-fun res!66462 () Bool)

(assert (=> d!43351 (=> (not res!66462) (not e!90487))))

(declare-fun lt!72711 () ListLongMap!1729)

(assert (=> d!43351 (= res!66462 (contains!910 lt!72711 (_1!1335 (tuple2!2651 (select (arr!2296 (_keys!4676 (v!3254 (underlying!472 thiss!992)))) from!355) (get!1516 (select (arr!2297 (_values!2902 (v!3254 (underlying!472 thiss!992)))) from!355) (dynLambda!435 (defaultEntry!2919 (v!3254 (underlying!472 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun lt!72709 () List!1749)

(assert (=> d!43351 (= lt!72711 (ListLongMap!1730 lt!72709))))

(declare-fun lt!72712 () Unit!4366)

(declare-fun lt!72710 () Unit!4366)

(assert (=> d!43351 (= lt!72712 lt!72710)))

(assert (=> d!43351 (= (getValueByKey!173 lt!72709 (_1!1335 (tuple2!2651 (select (arr!2296 (_keys!4676 (v!3254 (underlying!472 thiss!992)))) from!355) (get!1516 (select (arr!2297 (_values!2902 (v!3254 (underlying!472 thiss!992)))) from!355) (dynLambda!435 (defaultEntry!2919 (v!3254 (underlying!472 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))) (Some!178 (_2!1335 (tuple2!2651 (select (arr!2296 (_keys!4676 (v!3254 (underlying!472 thiss!992)))) from!355) (get!1516 (select (arr!2297 (_values!2902 (v!3254 (underlying!472 thiss!992)))) from!355) (dynLambda!435 (defaultEntry!2919 (v!3254 (underlying!472 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!43351 (= lt!72710 (lemmaContainsTupThenGetReturnValue!90 lt!72709 (_1!1335 (tuple2!2651 (select (arr!2296 (_keys!4676 (v!3254 (underlying!472 thiss!992)))) from!355) (get!1516 (select (arr!2297 (_values!2902 (v!3254 (underlying!472 thiss!992)))) from!355) (dynLambda!435 (defaultEntry!2919 (v!3254 (underlying!472 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (_2!1335 (tuple2!2651 (select (arr!2296 (_keys!4676 (v!3254 (underlying!472 thiss!992)))) from!355) (get!1516 (select (arr!2297 (_values!2902 (v!3254 (underlying!472 thiss!992)))) from!355) (dynLambda!435 (defaultEntry!2919 (v!3254 (underlying!472 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!43351 (= lt!72709 (insertStrictlySorted!92 (toList!880 call!15251) (_1!1335 (tuple2!2651 (select (arr!2296 (_keys!4676 (v!3254 (underlying!472 thiss!992)))) from!355) (get!1516 (select (arr!2297 (_values!2902 (v!3254 (underlying!472 thiss!992)))) from!355) (dynLambda!435 (defaultEntry!2919 (v!3254 (underlying!472 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (_2!1335 (tuple2!2651 (select (arr!2296 (_keys!4676 (v!3254 (underlying!472 thiss!992)))) from!355) (get!1516 (select (arr!2297 (_values!2902 (v!3254 (underlying!472 thiss!992)))) from!355) (dynLambda!435 (defaultEntry!2919 (v!3254 (underlying!472 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!43351 (= (+!172 call!15251 (tuple2!2651 (select (arr!2296 (_keys!4676 (v!3254 (underlying!472 thiss!992)))) from!355) (get!1516 (select (arr!2297 (_values!2902 (v!3254 (underlying!472 thiss!992)))) from!355) (dynLambda!435 (defaultEntry!2919 (v!3254 (underlying!472 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) lt!72711)))

(declare-fun b!138833 () Bool)

(declare-fun res!66463 () Bool)

(assert (=> b!138833 (=> (not res!66463) (not e!90487))))

(assert (=> b!138833 (= res!66463 (= (getValueByKey!173 (toList!880 lt!72711) (_1!1335 (tuple2!2651 (select (arr!2296 (_keys!4676 (v!3254 (underlying!472 thiss!992)))) from!355) (get!1516 (select (arr!2297 (_values!2902 (v!3254 (underlying!472 thiss!992)))) from!355) (dynLambda!435 (defaultEntry!2919 (v!3254 (underlying!472 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))) (Some!178 (_2!1335 (tuple2!2651 (select (arr!2296 (_keys!4676 (v!3254 (underlying!472 thiss!992)))) from!355) (get!1516 (select (arr!2297 (_values!2902 (v!3254 (underlying!472 thiss!992)))) from!355) (dynLambda!435 (defaultEntry!2919 (v!3254 (underlying!472 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))))))))

(declare-fun b!138834 () Bool)

(assert (=> b!138834 (= e!90487 (contains!913 (toList!880 lt!72711) (tuple2!2651 (select (arr!2296 (_keys!4676 (v!3254 (underlying!472 thiss!992)))) from!355) (get!1516 (select (arr!2297 (_values!2902 (v!3254 (underlying!472 thiss!992)))) from!355) (dynLambda!435 (defaultEntry!2919 (v!3254 (underlying!472 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (= (and d!43351 res!66462) b!138833))

(assert (= (and b!138833 res!66463) b!138834))

(declare-fun m!166113 () Bool)

(assert (=> d!43351 m!166113))

(declare-fun m!166115 () Bool)

(assert (=> d!43351 m!166115))

(declare-fun m!166117 () Bool)

(assert (=> d!43351 m!166117))

(declare-fun m!166119 () Bool)

(assert (=> d!43351 m!166119))

(declare-fun m!166121 () Bool)

(assert (=> b!138833 m!166121))

(declare-fun m!166123 () Bool)

(assert (=> b!138834 m!166123))

(assert (=> b!138508 d!43351))

(declare-fun d!43353 () Bool)

(declare-fun e!90489 () Bool)

(assert (=> d!43353 e!90489))

(declare-fun res!66464 () Bool)

(assert (=> d!43353 (=> res!66464 e!90489)))

(declare-fun lt!72714 () Bool)

(assert (=> d!43353 (= res!66464 (not lt!72714))))

(declare-fun lt!72716 () Bool)

(assert (=> d!43353 (= lt!72714 lt!72716)))

(declare-fun lt!72713 () Unit!4366)

(declare-fun e!90488 () Unit!4366)

(assert (=> d!43353 (= lt!72713 e!90488)))

(declare-fun c!25997 () Bool)

(assert (=> d!43353 (= c!25997 lt!72716)))

(assert (=> d!43353 (= lt!72716 (containsKey!177 (toList!880 lt!72461) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!43353 (= (contains!910 lt!72461 #b0000000000000000000000000000000000000000000000000000000000000000) lt!72714)))

(declare-fun b!138835 () Bool)

(declare-fun lt!72715 () Unit!4366)

(assert (=> b!138835 (= e!90488 lt!72715)))

(assert (=> b!138835 (= lt!72715 (lemmaContainsKeyImpliesGetValueByKeyDefined!126 (toList!880 lt!72461) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!138835 (isDefined!127 (getValueByKey!173 (toList!880 lt!72461) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!138836 () Bool)

(declare-fun Unit!4381 () Unit!4366)

(assert (=> b!138836 (= e!90488 Unit!4381)))

(declare-fun b!138837 () Bool)

(assert (=> b!138837 (= e!90489 (isDefined!127 (getValueByKey!173 (toList!880 lt!72461) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!43353 c!25997) b!138835))

(assert (= (and d!43353 (not c!25997)) b!138836))

(assert (= (and d!43353 (not res!66464)) b!138837))

(declare-fun m!166125 () Bool)

(assert (=> d!43353 m!166125))

(declare-fun m!166127 () Bool)

(assert (=> b!138835 m!166127))

(declare-fun m!166129 () Bool)

(assert (=> b!138835 m!166129))

(assert (=> b!138835 m!166129))

(declare-fun m!166131 () Bool)

(assert (=> b!138835 m!166131))

(assert (=> b!138837 m!166129))

(assert (=> b!138837 m!166129))

(assert (=> b!138837 m!166131))

(assert (=> bm!15272 d!43353))

(declare-fun d!43355 () Bool)

(assert (=> d!43355 (= (+!172 (getCurrentListMap!549 (_keys!4676 newMap!16) (_values!2902 newMap!16) (mask!7249 newMap!16) (extraKeys!2676 newMap!16) (zeroValue!2770 newMap!16) (minValue!2770 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2919 newMap!16)) (tuple2!2651 #b1000000000000000000000000000000000000000000000000000000000000000 (get!1516 (select (arr!2297 (_values!2902 (v!3254 (underlying!472 thiss!992)))) from!355) (dynLambda!435 (defaultEntry!2919 (v!3254 (underlying!472 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (getCurrentListMap!549 (_keys!4676 newMap!16) (_values!2902 newMap!16) (mask!7249 newMap!16) lt!72405 (zeroValue!2770 newMap!16) (get!1516 (select (arr!2297 (_values!2902 (v!3254 (underlying!472 thiss!992)))) from!355) (dynLambda!435 (defaultEntry!2919 (v!3254 (underlying!472 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) #b00000000000000000000000000000000 (defaultEntry!2919 newMap!16)))))

(declare-fun lt!72719 () Unit!4366)

(declare-fun choose!858 (array!4856 array!4858 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!3531 V!3531 V!3531 Int) Unit!4366)

(assert (=> d!43355 (= lt!72719 (choose!858 (_keys!4676 newMap!16) (_values!2902 newMap!16) (mask!7249 newMap!16) (extraKeys!2676 newMap!16) lt!72405 (zeroValue!2770 newMap!16) (minValue!2770 newMap!16) (get!1516 (select (arr!2297 (_values!2902 (v!3254 (underlying!472 thiss!992)))) from!355) (dynLambda!435 (defaultEntry!2919 (v!3254 (underlying!472 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (defaultEntry!2919 newMap!16)))))

(assert (=> d!43355 (validMask!0 (mask!7249 newMap!16))))

(assert (=> d!43355 (= (lemmaChangeLongMinValueKeyThenAddPairToListMap!63 (_keys!4676 newMap!16) (_values!2902 newMap!16) (mask!7249 newMap!16) (extraKeys!2676 newMap!16) lt!72405 (zeroValue!2770 newMap!16) (minValue!2770 newMap!16) (get!1516 (select (arr!2297 (_values!2902 (v!3254 (underlying!472 thiss!992)))) from!355) (dynLambda!435 (defaultEntry!2919 (v!3254 (underlying!472 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (defaultEntry!2919 newMap!16)) lt!72719)))

(declare-fun bs!5819 () Bool)

(assert (= bs!5819 d!43355))

(assert (=> bs!5819 m!165509))

(declare-fun m!166133 () Bool)

(assert (=> bs!5819 m!166133))

(assert (=> bs!5819 m!165509))

(declare-fun m!166135 () Bool)

(assert (=> bs!5819 m!166135))

(assert (=> bs!5819 m!165639))

(declare-fun m!166137 () Bool)

(assert (=> bs!5819 m!166137))

(assert (=> bs!5819 m!165639))

(assert (=> bs!5819 m!165931))

(assert (=> b!138475 d!43355))

(declare-fun b!138850 () Bool)

(declare-fun e!90496 () SeekEntryResult!287)

(declare-fun lt!72726 () SeekEntryResult!287)

(assert (=> b!138850 (= e!90496 (Found!287 (index!3312 lt!72726)))))

(declare-fun b!138851 () Bool)

(declare-fun e!90498 () SeekEntryResult!287)

(assert (=> b!138851 (= e!90498 e!90496)))

(declare-fun lt!72727 () (_ BitVec 64))

(assert (=> b!138851 (= lt!72727 (select (arr!2296 (_keys!4676 newMap!16)) (index!3312 lt!72726)))))

(declare-fun c!26004 () Bool)

(assert (=> b!138851 (= c!26004 (= lt!72727 (select (arr!2296 (_keys!4676 (v!3254 (underlying!472 thiss!992)))) from!355)))))

(declare-fun lt!72728 () SeekEntryResult!287)

(declare-fun d!43357 () Bool)

(assert (=> d!43357 (and (or ((_ is Undefined!287) lt!72728) (not ((_ is Found!287) lt!72728)) (and (bvsge (index!3311 lt!72728) #b00000000000000000000000000000000) (bvslt (index!3311 lt!72728) (size!2567 (_keys!4676 newMap!16))))) (or ((_ is Undefined!287) lt!72728) ((_ is Found!287) lt!72728) (not ((_ is MissingZero!287) lt!72728)) (and (bvsge (index!3310 lt!72728) #b00000000000000000000000000000000) (bvslt (index!3310 lt!72728) (size!2567 (_keys!4676 newMap!16))))) (or ((_ is Undefined!287) lt!72728) ((_ is Found!287) lt!72728) ((_ is MissingZero!287) lt!72728) (not ((_ is MissingVacant!287) lt!72728)) (and (bvsge (index!3313 lt!72728) #b00000000000000000000000000000000) (bvslt (index!3313 lt!72728) (size!2567 (_keys!4676 newMap!16))))) (or ((_ is Undefined!287) lt!72728) (ite ((_ is Found!287) lt!72728) (= (select (arr!2296 (_keys!4676 newMap!16)) (index!3311 lt!72728)) (select (arr!2296 (_keys!4676 (v!3254 (underlying!472 thiss!992)))) from!355)) (ite ((_ is MissingZero!287) lt!72728) (= (select (arr!2296 (_keys!4676 newMap!16)) (index!3310 lt!72728)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!287) lt!72728) (= (select (arr!2296 (_keys!4676 newMap!16)) (index!3313 lt!72728)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!43357 (= lt!72728 e!90498)))

(declare-fun c!26005 () Bool)

(assert (=> d!43357 (= c!26005 (and ((_ is Intermediate!287) lt!72726) (undefined!1099 lt!72726)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!4856 (_ BitVec 32)) SeekEntryResult!287)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!43357 (= lt!72726 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!2296 (_keys!4676 (v!3254 (underlying!472 thiss!992)))) from!355) (mask!7249 newMap!16)) (select (arr!2296 (_keys!4676 (v!3254 (underlying!472 thiss!992)))) from!355) (_keys!4676 newMap!16) (mask!7249 newMap!16)))))

(assert (=> d!43357 (validMask!0 (mask!7249 newMap!16))))

(assert (=> d!43357 (= (seekEntryOrOpen!0 (select (arr!2296 (_keys!4676 (v!3254 (underlying!472 thiss!992)))) from!355) (_keys!4676 newMap!16) (mask!7249 newMap!16)) lt!72728)))

(declare-fun b!138852 () Bool)

(assert (=> b!138852 (= e!90498 Undefined!287)))

(declare-fun b!138853 () Bool)

(declare-fun c!26006 () Bool)

(assert (=> b!138853 (= c!26006 (= lt!72727 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!90497 () SeekEntryResult!287)

(assert (=> b!138853 (= e!90496 e!90497)))

(declare-fun b!138854 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!4856 (_ BitVec 32)) SeekEntryResult!287)

(assert (=> b!138854 (= e!90497 (seekKeyOrZeroReturnVacant!0 (x!16001 lt!72726) (index!3312 lt!72726) (index!3312 lt!72726) (select (arr!2296 (_keys!4676 (v!3254 (underlying!472 thiss!992)))) from!355) (_keys!4676 newMap!16) (mask!7249 newMap!16)))))

(declare-fun b!138855 () Bool)

(assert (=> b!138855 (= e!90497 (MissingZero!287 (index!3312 lt!72726)))))

(assert (= (and d!43357 c!26005) b!138852))

(assert (= (and d!43357 (not c!26005)) b!138851))

(assert (= (and b!138851 c!26004) b!138850))

(assert (= (and b!138851 (not c!26004)) b!138853))

(assert (= (and b!138853 c!26006) b!138855))

(assert (= (and b!138853 (not c!26006)) b!138854))

(declare-fun m!166139 () Bool)

(assert (=> b!138851 m!166139))

(assert (=> d!43357 m!165499))

(declare-fun m!166141 () Bool)

(assert (=> d!43357 m!166141))

(declare-fun m!166143 () Bool)

(assert (=> d!43357 m!166143))

(declare-fun m!166145 () Bool)

(assert (=> d!43357 m!166145))

(declare-fun m!166147 () Bool)

(assert (=> d!43357 m!166147))

(assert (=> d!43357 m!165931))

(assert (=> d!43357 m!166141))

(assert (=> d!43357 m!165499))

(declare-fun m!166149 () Bool)

(assert (=> d!43357 m!166149))

(assert (=> b!138854 m!165499))

(declare-fun m!166151 () Bool)

(assert (=> b!138854 m!166151))

(assert (=> b!138500 d!43357))

(assert (=> bm!15251 d!43357))

(declare-fun d!43359 () Bool)

(declare-fun e!90501 () Bool)

(assert (=> d!43359 e!90501))

(declare-fun c!26009 () Bool)

(assert (=> d!43359 (= c!26009 (and (not (= (select (arr!2296 (_keys!4676 (v!3254 (underlying!472 thiss!992)))) from!355) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!2296 (_keys!4676 (v!3254 (underlying!472 thiss!992)))) from!355) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> d!43359 true))

(declare-fun _$29!162 () Unit!4366)

(assert (=> d!43359 (= (choose!852 (_keys!4676 (v!3254 (underlying!472 thiss!992))) (_values!2902 (v!3254 (underlying!472 thiss!992))) (mask!7249 (v!3254 (underlying!472 thiss!992))) (extraKeys!2676 (v!3254 (underlying!472 thiss!992))) (zeroValue!2770 (v!3254 (underlying!472 thiss!992))) (minValue!2770 (v!3254 (underlying!472 thiss!992))) (select (arr!2296 (_keys!4676 (v!3254 (underlying!472 thiss!992)))) from!355) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2919 (v!3254 (underlying!472 thiss!992)))) _$29!162)))

(declare-fun b!138860 () Bool)

(assert (=> b!138860 (= e!90501 (arrayContainsKey!0 (_keys!4676 (v!3254 (underlying!472 thiss!992))) (select (arr!2296 (_keys!4676 (v!3254 (underlying!472 thiss!992)))) from!355) (bvadd #b00000000000000000000000000000001 from!355)))))

(declare-fun b!138861 () Bool)

(assert (=> b!138861 (= e!90501 (ite (= (select (arr!2296 (_keys!4676 (v!3254 (underlying!472 thiss!992)))) from!355) #b0000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand (extraKeys!2676 (v!3254 (underlying!472 thiss!992))) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (extraKeys!2676 (v!3254 (underlying!472 thiss!992))) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (= (and d!43359 c!26009) b!138860))

(assert (= (and d!43359 (not c!26009)) b!138861))

(assert (=> b!138860 m!165499))

(assert (=> b!138860 m!165521))

(assert (=> d!43255 d!43359))

(assert (=> d!43255 d!43313))

(declare-fun d!43361 () Bool)

(assert (=> d!43361 (= (apply!118 lt!72461 #b0000000000000000000000000000000000000000000000000000000000000000) (get!1520 (getValueByKey!173 (toList!880 lt!72461) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun bs!5820 () Bool)

(assert (= bs!5820 d!43361))

(assert (=> bs!5820 m!166129))

(assert (=> bs!5820 m!166129))

(declare-fun m!166153 () Bool)

(assert (=> bs!5820 m!166153))

(assert (=> b!138575 d!43361))

(declare-fun b!138862 () Bool)

(declare-fun e!90506 () Bool)

(declare-fun e!90504 () Bool)

(assert (=> b!138862 (= e!90506 e!90504)))

(declare-fun res!66471 () Bool)

(declare-fun call!15320 () Bool)

(assert (=> b!138862 (= res!66471 call!15320)))

(assert (=> b!138862 (=> (not res!66471) (not e!90504))))

(declare-fun bm!15317 () Bool)

(declare-fun call!15325 () ListLongMap!1729)

(declare-fun call!15321 () ListLongMap!1729)

(assert (=> bm!15317 (= call!15325 call!15321)))

(declare-fun b!138863 () Bool)

(declare-fun e!90508 () Bool)

(declare-fun e!90509 () Bool)

(assert (=> b!138863 (= e!90508 e!90509)))

(declare-fun res!66473 () Bool)

(assert (=> b!138863 (=> (not res!66473) (not e!90509))))

(declare-fun lt!72735 () ListLongMap!1729)

(assert (=> b!138863 (= res!66473 (contains!910 lt!72735 (select (arr!2296 (_keys!4676 newMap!16)) #b00000000000000000000000000000000)))))

(assert (=> b!138863 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!2567 (_keys!4676 newMap!16))))))

(declare-fun b!138864 () Bool)

(declare-fun e!90510 () Unit!4366)

(declare-fun Unit!4382 () Unit!4366)

(assert (=> b!138864 (= e!90510 Unit!4382)))

(declare-fun b!138865 () Bool)

(declare-fun e!90513 () ListLongMap!1729)

(declare-fun call!15322 () ListLongMap!1729)

(assert (=> b!138865 (= e!90513 call!15322)))

(declare-fun bm!15318 () Bool)

(declare-fun call!15324 () ListLongMap!1729)

(assert (=> bm!15318 (= call!15324 (getCurrentListMapNoExtraKeys!139 (_keys!4676 newMap!16) (ite (or c!25908 c!25904) (_values!2902 newMap!16) lt!72385) (mask!7249 newMap!16) (ite c!25908 (ite c!25903 lt!72395 lt!72405) (extraKeys!2676 newMap!16)) (ite (and c!25908 c!25903) (get!1516 (select (arr!2297 (_values!2902 (v!3254 (underlying!472 thiss!992)))) from!355) (dynLambda!435 (defaultEntry!2919 (v!3254 (underlying!472 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (zeroValue!2770 newMap!16)) (ite c!25908 (ite c!25903 (minValue!2770 newMap!16) (get!1516 (select (arr!2297 (_values!2902 (v!3254 (underlying!472 thiss!992)))) from!355) (dynLambda!435 (defaultEntry!2919 (v!3254 (underlying!472 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (minValue!2770 newMap!16)) #b00000000000000000000000000000000 (defaultEntry!2919 newMap!16)))))

(declare-fun b!138866 () Bool)

(declare-fun e!90511 () ListLongMap!1729)

(assert (=> b!138866 (= e!90511 e!90513)))

(declare-fun c!26014 () Bool)

(assert (=> b!138866 (= c!26014 (and (not (= (bvand (ite c!25908 (ite c!25903 lt!72395 lt!72405) (extraKeys!2676 newMap!16)) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand (ite c!25908 (ite c!25903 lt!72395 lt!72405) (extraKeys!2676 newMap!16)) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!138867 () Bool)

(declare-fun res!66465 () Bool)

(declare-fun e!90505 () Bool)

(assert (=> b!138867 (=> (not res!66465) (not e!90505))))

(assert (=> b!138867 (= res!66465 e!90508)))

(declare-fun res!66469 () Bool)

(assert (=> b!138867 (=> res!66469 e!90508)))

(declare-fun e!90503 () Bool)

(assert (=> b!138867 (= res!66469 (not e!90503))))

(declare-fun res!66472 () Bool)

(assert (=> b!138867 (=> (not res!66472) (not e!90503))))

(assert (=> b!138867 (= res!66472 (bvslt #b00000000000000000000000000000000 (size!2567 (_keys!4676 newMap!16))))))

(declare-fun b!138868 () Bool)

(declare-fun e!90507 () ListLongMap!1729)

(assert (=> b!138868 (= e!90507 call!15322)))

(declare-fun b!138869 () Bool)

(declare-fun call!15323 () ListLongMap!1729)

(assert (=> b!138869 (= e!90511 (+!172 call!15323 (tuple2!2651 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!25908 (ite c!25903 (minValue!2770 newMap!16) (get!1516 (select (arr!2297 (_values!2902 (v!3254 (underlying!472 thiss!992)))) from!355) (dynLambda!435 (defaultEntry!2919 (v!3254 (underlying!472 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (minValue!2770 newMap!16)))))))

(declare-fun b!138870 () Bool)

(declare-fun e!90512 () Bool)

(assert (=> b!138870 (= e!90512 (validKeyInArray!0 (select (arr!2296 (_keys!4676 newMap!16)) #b00000000000000000000000000000000)))))

(declare-fun c!26010 () Bool)

(declare-fun b!138871 () Bool)

(assert (=> b!138871 (= c!26010 (and (not (= (bvand (ite c!25908 (ite c!25903 lt!72395 lt!72405) (extraKeys!2676 newMap!16)) #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand (ite c!25908 (ite c!25903 lt!72395 lt!72405) (extraKeys!2676 newMap!16)) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!138871 (= e!90513 e!90507)))

(declare-fun b!138872 () Bool)

(declare-fun res!66466 () Bool)

(assert (=> b!138872 (=> (not res!66466) (not e!90505))))

(assert (=> b!138872 (= res!66466 e!90506)))

(declare-fun c!26013 () Bool)

(assert (=> b!138872 (= c!26013 (not (= (bvand (ite c!25908 (ite c!25903 lt!72395 lt!72405) (extraKeys!2676 newMap!16)) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!138873 () Bool)

(declare-fun e!90502 () Bool)

(assert (=> b!138873 (= e!90502 (= (apply!118 lt!72735 #b1000000000000000000000000000000000000000000000000000000000000000) (ite c!25908 (ite c!25903 (minValue!2770 newMap!16) (get!1516 (select (arr!2297 (_values!2902 (v!3254 (underlying!472 thiss!992)))) from!355) (dynLambda!435 (defaultEntry!2919 (v!3254 (underlying!472 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (minValue!2770 newMap!16))))))

(declare-fun b!138874 () Bool)

(declare-fun e!90514 () Bool)

(assert (=> b!138874 (= e!90514 e!90502)))

(declare-fun res!66468 () Bool)

(declare-fun call!15326 () Bool)

(assert (=> b!138874 (= res!66468 call!15326)))

(assert (=> b!138874 (=> (not res!66468) (not e!90502))))

(declare-fun bm!15319 () Bool)

(assert (=> bm!15319 (= call!15320 (contains!910 lt!72735 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun bm!15320 () Bool)

(assert (=> bm!15320 (= call!15326 (contains!910 lt!72735 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!138875 () Bool)

(assert (=> b!138875 (= e!90504 (= (apply!118 lt!72735 #b0000000000000000000000000000000000000000000000000000000000000000) (ite (and c!25908 c!25903) (get!1516 (select (arr!2297 (_values!2902 (v!3254 (underlying!472 thiss!992)))) from!355) (dynLambda!435 (defaultEntry!2919 (v!3254 (underlying!472 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (zeroValue!2770 newMap!16))))))

(declare-fun b!138876 () Bool)

(declare-fun lt!72736 () Unit!4366)

(assert (=> b!138876 (= e!90510 lt!72736)))

(declare-fun lt!72729 () ListLongMap!1729)

(assert (=> b!138876 (= lt!72729 (getCurrentListMapNoExtraKeys!139 (_keys!4676 newMap!16) (ite (or c!25908 c!25904) (_values!2902 newMap!16) lt!72385) (mask!7249 newMap!16) (ite c!25908 (ite c!25903 lt!72395 lt!72405) (extraKeys!2676 newMap!16)) (ite (and c!25908 c!25903) (get!1516 (select (arr!2297 (_values!2902 (v!3254 (underlying!472 thiss!992)))) from!355) (dynLambda!435 (defaultEntry!2919 (v!3254 (underlying!472 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (zeroValue!2770 newMap!16)) (ite c!25908 (ite c!25903 (minValue!2770 newMap!16) (get!1516 (select (arr!2297 (_values!2902 (v!3254 (underlying!472 thiss!992)))) from!355) (dynLambda!435 (defaultEntry!2919 (v!3254 (underlying!472 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (minValue!2770 newMap!16)) #b00000000000000000000000000000000 (defaultEntry!2919 newMap!16)))))

(declare-fun lt!72743 () (_ BitVec 64))

(assert (=> b!138876 (= lt!72743 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!72733 () (_ BitVec 64))

(assert (=> b!138876 (= lt!72733 (select (arr!2296 (_keys!4676 newMap!16)) #b00000000000000000000000000000000))))

(declare-fun lt!72738 () Unit!4366)

(assert (=> b!138876 (= lt!72738 (addStillContains!94 lt!72729 lt!72743 (ite (and c!25908 c!25903) (get!1516 (select (arr!2297 (_values!2902 (v!3254 (underlying!472 thiss!992)))) from!355) (dynLambda!435 (defaultEntry!2919 (v!3254 (underlying!472 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (zeroValue!2770 newMap!16)) lt!72733))))

(assert (=> b!138876 (contains!910 (+!172 lt!72729 (tuple2!2651 lt!72743 (ite (and c!25908 c!25903) (get!1516 (select (arr!2297 (_values!2902 (v!3254 (underlying!472 thiss!992)))) from!355) (dynLambda!435 (defaultEntry!2919 (v!3254 (underlying!472 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (zeroValue!2770 newMap!16)))) lt!72733)))

(declare-fun lt!72740 () Unit!4366)

(assert (=> b!138876 (= lt!72740 lt!72738)))

(declare-fun lt!72750 () ListLongMap!1729)

(assert (=> b!138876 (= lt!72750 (getCurrentListMapNoExtraKeys!139 (_keys!4676 newMap!16) (ite (or c!25908 c!25904) (_values!2902 newMap!16) lt!72385) (mask!7249 newMap!16) (ite c!25908 (ite c!25903 lt!72395 lt!72405) (extraKeys!2676 newMap!16)) (ite (and c!25908 c!25903) (get!1516 (select (arr!2297 (_values!2902 (v!3254 (underlying!472 thiss!992)))) from!355) (dynLambda!435 (defaultEntry!2919 (v!3254 (underlying!472 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (zeroValue!2770 newMap!16)) (ite c!25908 (ite c!25903 (minValue!2770 newMap!16) (get!1516 (select (arr!2297 (_values!2902 (v!3254 (underlying!472 thiss!992)))) from!355) (dynLambda!435 (defaultEntry!2919 (v!3254 (underlying!472 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (minValue!2770 newMap!16)) #b00000000000000000000000000000000 (defaultEntry!2919 newMap!16)))))

(declare-fun lt!72741 () (_ BitVec 64))

(assert (=> b!138876 (= lt!72741 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!72730 () (_ BitVec 64))

(assert (=> b!138876 (= lt!72730 (select (arr!2296 (_keys!4676 newMap!16)) #b00000000000000000000000000000000))))

(declare-fun lt!72749 () Unit!4366)

(assert (=> b!138876 (= lt!72749 (addApplyDifferent!94 lt!72750 lt!72741 (ite c!25908 (ite c!25903 (minValue!2770 newMap!16) (get!1516 (select (arr!2297 (_values!2902 (v!3254 (underlying!472 thiss!992)))) from!355) (dynLambda!435 (defaultEntry!2919 (v!3254 (underlying!472 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (minValue!2770 newMap!16)) lt!72730))))

(assert (=> b!138876 (= (apply!118 (+!172 lt!72750 (tuple2!2651 lt!72741 (ite c!25908 (ite c!25903 (minValue!2770 newMap!16) (get!1516 (select (arr!2297 (_values!2902 (v!3254 (underlying!472 thiss!992)))) from!355) (dynLambda!435 (defaultEntry!2919 (v!3254 (underlying!472 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (minValue!2770 newMap!16)))) lt!72730) (apply!118 lt!72750 lt!72730))))

(declare-fun lt!72734 () Unit!4366)

(assert (=> b!138876 (= lt!72734 lt!72749)))

(declare-fun lt!72748 () ListLongMap!1729)

(assert (=> b!138876 (= lt!72748 (getCurrentListMapNoExtraKeys!139 (_keys!4676 newMap!16) (ite (or c!25908 c!25904) (_values!2902 newMap!16) lt!72385) (mask!7249 newMap!16) (ite c!25908 (ite c!25903 lt!72395 lt!72405) (extraKeys!2676 newMap!16)) (ite (and c!25908 c!25903) (get!1516 (select (arr!2297 (_values!2902 (v!3254 (underlying!472 thiss!992)))) from!355) (dynLambda!435 (defaultEntry!2919 (v!3254 (underlying!472 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (zeroValue!2770 newMap!16)) (ite c!25908 (ite c!25903 (minValue!2770 newMap!16) (get!1516 (select (arr!2297 (_values!2902 (v!3254 (underlying!472 thiss!992)))) from!355) (dynLambda!435 (defaultEntry!2919 (v!3254 (underlying!472 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (minValue!2770 newMap!16)) #b00000000000000000000000000000000 (defaultEntry!2919 newMap!16)))))

(declare-fun lt!72747 () (_ BitVec 64))

(assert (=> b!138876 (= lt!72747 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!72731 () (_ BitVec 64))

(assert (=> b!138876 (= lt!72731 (select (arr!2296 (_keys!4676 newMap!16)) #b00000000000000000000000000000000))))

(declare-fun lt!72739 () Unit!4366)

(assert (=> b!138876 (= lt!72739 (addApplyDifferent!94 lt!72748 lt!72747 (ite (and c!25908 c!25903) (get!1516 (select (arr!2297 (_values!2902 (v!3254 (underlying!472 thiss!992)))) from!355) (dynLambda!435 (defaultEntry!2919 (v!3254 (underlying!472 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (zeroValue!2770 newMap!16)) lt!72731))))

(assert (=> b!138876 (= (apply!118 (+!172 lt!72748 (tuple2!2651 lt!72747 (ite (and c!25908 c!25903) (get!1516 (select (arr!2297 (_values!2902 (v!3254 (underlying!472 thiss!992)))) from!355) (dynLambda!435 (defaultEntry!2919 (v!3254 (underlying!472 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (zeroValue!2770 newMap!16)))) lt!72731) (apply!118 lt!72748 lt!72731))))

(declare-fun lt!72732 () Unit!4366)

(assert (=> b!138876 (= lt!72732 lt!72739)))

(declare-fun lt!72744 () ListLongMap!1729)

(assert (=> b!138876 (= lt!72744 (getCurrentListMapNoExtraKeys!139 (_keys!4676 newMap!16) (ite (or c!25908 c!25904) (_values!2902 newMap!16) lt!72385) (mask!7249 newMap!16) (ite c!25908 (ite c!25903 lt!72395 lt!72405) (extraKeys!2676 newMap!16)) (ite (and c!25908 c!25903) (get!1516 (select (arr!2297 (_values!2902 (v!3254 (underlying!472 thiss!992)))) from!355) (dynLambda!435 (defaultEntry!2919 (v!3254 (underlying!472 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (zeroValue!2770 newMap!16)) (ite c!25908 (ite c!25903 (minValue!2770 newMap!16) (get!1516 (select (arr!2297 (_values!2902 (v!3254 (underlying!472 thiss!992)))) from!355) (dynLambda!435 (defaultEntry!2919 (v!3254 (underlying!472 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (minValue!2770 newMap!16)) #b00000000000000000000000000000000 (defaultEntry!2919 newMap!16)))))

(declare-fun lt!72746 () (_ BitVec 64))

(assert (=> b!138876 (= lt!72746 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!72745 () (_ BitVec 64))

(assert (=> b!138876 (= lt!72745 (select (arr!2296 (_keys!4676 newMap!16)) #b00000000000000000000000000000000))))

(assert (=> b!138876 (= lt!72736 (addApplyDifferent!94 lt!72744 lt!72746 (ite c!25908 (ite c!25903 (minValue!2770 newMap!16) (get!1516 (select (arr!2297 (_values!2902 (v!3254 (underlying!472 thiss!992)))) from!355) (dynLambda!435 (defaultEntry!2919 (v!3254 (underlying!472 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (minValue!2770 newMap!16)) lt!72745))))

(assert (=> b!138876 (= (apply!118 (+!172 lt!72744 (tuple2!2651 lt!72746 (ite c!25908 (ite c!25903 (minValue!2770 newMap!16) (get!1516 (select (arr!2297 (_values!2902 (v!3254 (underlying!472 thiss!992)))) from!355) (dynLambda!435 (defaultEntry!2919 (v!3254 (underlying!472 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (minValue!2770 newMap!16)))) lt!72745) (apply!118 lt!72744 lt!72745))))

(declare-fun bm!15321 () Bool)

(assert (=> bm!15321 (= call!15321 call!15324)))

(declare-fun b!138877 () Bool)

(assert (=> b!138877 (= e!90514 (not call!15326))))

(declare-fun b!138878 () Bool)

(assert (=> b!138878 (= e!90507 call!15325)))

(declare-fun d!43363 () Bool)

(assert (=> d!43363 e!90505))

(declare-fun res!66467 () Bool)

(assert (=> d!43363 (=> (not res!66467) (not e!90505))))

(assert (=> d!43363 (= res!66467 (or (bvsge #b00000000000000000000000000000000 (size!2567 (_keys!4676 newMap!16))) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!2567 (_keys!4676 newMap!16))))))))

(declare-fun lt!72742 () ListLongMap!1729)

(assert (=> d!43363 (= lt!72735 lt!72742)))

(declare-fun lt!72737 () Unit!4366)

(assert (=> d!43363 (= lt!72737 e!90510)))

(declare-fun c!26012 () Bool)

(assert (=> d!43363 (= c!26012 e!90512)))

(declare-fun res!66470 () Bool)

(assert (=> d!43363 (=> (not res!66470) (not e!90512))))

(assert (=> d!43363 (= res!66470 (bvslt #b00000000000000000000000000000000 (size!2567 (_keys!4676 newMap!16))))))

(assert (=> d!43363 (= lt!72742 e!90511)))

(declare-fun c!26015 () Bool)

(assert (=> d!43363 (= c!26015 (and (not (= (bvand (ite c!25908 (ite c!25903 lt!72395 lt!72405) (extraKeys!2676 newMap!16)) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (ite c!25908 (ite c!25903 lt!72395 lt!72405) (extraKeys!2676 newMap!16)) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!43363 (validMask!0 (mask!7249 newMap!16))))

(assert (=> d!43363 (= (getCurrentListMap!549 (_keys!4676 newMap!16) (ite (or c!25908 c!25904) (_values!2902 newMap!16) lt!72385) (mask!7249 newMap!16) (ite c!25908 (ite c!25903 lt!72395 lt!72405) (extraKeys!2676 newMap!16)) (ite (and c!25908 c!25903) (get!1516 (select (arr!2297 (_values!2902 (v!3254 (underlying!472 thiss!992)))) from!355) (dynLambda!435 (defaultEntry!2919 (v!3254 (underlying!472 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (zeroValue!2770 newMap!16)) (ite c!25908 (ite c!25903 (minValue!2770 newMap!16) (get!1516 (select (arr!2297 (_values!2902 (v!3254 (underlying!472 thiss!992)))) from!355) (dynLambda!435 (defaultEntry!2919 (v!3254 (underlying!472 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (minValue!2770 newMap!16)) #b00000000000000000000000000000000 (defaultEntry!2919 newMap!16)) lt!72735)))

(declare-fun b!138879 () Bool)

(assert (=> b!138879 (= e!90503 (validKeyInArray!0 (select (arr!2296 (_keys!4676 newMap!16)) #b00000000000000000000000000000000)))))

(declare-fun bm!15322 () Bool)

(assert (=> bm!15322 (= call!15322 call!15323)))

(declare-fun b!138880 () Bool)

(assert (=> b!138880 (= e!90509 (= (apply!118 lt!72735 (select (arr!2296 (_keys!4676 newMap!16)) #b00000000000000000000000000000000)) (get!1516 (select (arr!2297 (ite (or c!25908 c!25904) (_values!2902 newMap!16) lt!72385)) #b00000000000000000000000000000000) (dynLambda!435 (defaultEntry!2919 newMap!16) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!138880 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!2568 (ite (or c!25908 c!25904) (_values!2902 newMap!16) lt!72385))))))

(assert (=> b!138880 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!2567 (_keys!4676 newMap!16))))))

(declare-fun b!138881 () Bool)

(assert (=> b!138881 (= e!90505 e!90514)))

(declare-fun c!26011 () Bool)

(assert (=> b!138881 (= c!26011 (not (= (bvand (ite c!25908 (ite c!25903 lt!72395 lt!72405) (extraKeys!2676 newMap!16)) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!138882 () Bool)

(assert (=> b!138882 (= e!90506 (not call!15320))))

(declare-fun bm!15323 () Bool)

(assert (=> bm!15323 (= call!15323 (+!172 (ite c!26015 call!15324 (ite c!26014 call!15321 call!15325)) (ite (or c!26015 c!26014) (tuple2!2651 #b0000000000000000000000000000000000000000000000000000000000000000 (ite (and c!25908 c!25903) (get!1516 (select (arr!2297 (_values!2902 (v!3254 (underlying!472 thiss!992)))) from!355) (dynLambda!435 (defaultEntry!2919 (v!3254 (underlying!472 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (zeroValue!2770 newMap!16))) (tuple2!2651 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!25908 (ite c!25903 (minValue!2770 newMap!16) (get!1516 (select (arr!2297 (_values!2902 (v!3254 (underlying!472 thiss!992)))) from!355) (dynLambda!435 (defaultEntry!2919 (v!3254 (underlying!472 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (minValue!2770 newMap!16))))))))

(assert (= (and d!43363 c!26015) b!138869))

(assert (= (and d!43363 (not c!26015)) b!138866))

(assert (= (and b!138866 c!26014) b!138865))

(assert (= (and b!138866 (not c!26014)) b!138871))

(assert (= (and b!138871 c!26010) b!138868))

(assert (= (and b!138871 (not c!26010)) b!138878))

(assert (= (or b!138868 b!138878) bm!15317))

(assert (= (or b!138865 bm!15317) bm!15321))

(assert (= (or b!138865 b!138868) bm!15322))

(assert (= (or b!138869 bm!15321) bm!15318))

(assert (= (or b!138869 bm!15322) bm!15323))

(assert (= (and d!43363 res!66470) b!138870))

(assert (= (and d!43363 c!26012) b!138876))

(assert (= (and d!43363 (not c!26012)) b!138864))

(assert (= (and d!43363 res!66467) b!138867))

(assert (= (and b!138867 res!66472) b!138879))

(assert (= (and b!138867 (not res!66469)) b!138863))

(assert (= (and b!138863 res!66473) b!138880))

(assert (= (and b!138867 res!66465) b!138872))

(assert (= (and b!138872 c!26013) b!138862))

(assert (= (and b!138872 (not c!26013)) b!138882))

(assert (= (and b!138862 res!66471) b!138875))

(assert (= (or b!138862 b!138882) bm!15319))

(assert (= (and b!138872 res!66466) b!138881))

(assert (= (and b!138881 c!26011) b!138874))

(assert (= (and b!138881 (not c!26011)) b!138877))

(assert (= (and b!138874 res!66468) b!138873))

(assert (= (or b!138874 b!138877) bm!15320))

(declare-fun b_lambda!6249 () Bool)

(assert (=> (not b_lambda!6249) (not b!138880)))

(assert (=> b!138880 t!6314))

(declare-fun b_and!8677 () Bool)

(assert (= b_and!8673 (and (=> t!6314 result!4141) b_and!8677)))

(assert (=> b!138880 t!6316))

(declare-fun b_and!8679 () Bool)

(assert (= b_and!8675 (and (=> t!6316 result!4143) b_and!8679)))

(declare-fun m!166155 () Bool)

(assert (=> b!138869 m!166155))

(declare-fun m!166157 () Bool)

(assert (=> b!138876 m!166157))

(declare-fun m!166159 () Bool)

(assert (=> b!138876 m!166159))

(assert (=> b!138876 m!165875))

(assert (=> b!138876 m!166157))

(declare-fun m!166161 () Bool)

(assert (=> b!138876 m!166161))

(declare-fun m!166163 () Bool)

(assert (=> b!138876 m!166163))

(declare-fun m!166165 () Bool)

(assert (=> b!138876 m!166165))

(declare-fun m!166167 () Bool)

(assert (=> b!138876 m!166167))

(declare-fun m!166169 () Bool)

(assert (=> b!138876 m!166169))

(declare-fun m!166171 () Bool)

(assert (=> b!138876 m!166171))

(declare-fun m!166173 () Bool)

(assert (=> b!138876 m!166173))

(assert (=> b!138876 m!166171))

(declare-fun m!166175 () Bool)

(assert (=> b!138876 m!166175))

(declare-fun m!166177 () Bool)

(assert (=> b!138876 m!166177))

(declare-fun m!166179 () Bool)

(assert (=> b!138876 m!166179))

(declare-fun m!166181 () Bool)

(assert (=> b!138876 m!166181))

(assert (=> b!138876 m!166161))

(declare-fun m!166183 () Bool)

(assert (=> b!138876 m!166183))

(assert (=> b!138876 m!166165))

(declare-fun m!166185 () Bool)

(assert (=> b!138876 m!166185))

(declare-fun m!166187 () Bool)

(assert (=> b!138876 m!166187))

(assert (=> b!138863 m!165875))

(assert (=> b!138863 m!165875))

(declare-fun m!166189 () Bool)

(assert (=> b!138863 m!166189))

(declare-fun m!166191 () Bool)

(assert (=> b!138875 m!166191))

(declare-fun m!166193 () Bool)

(assert (=> bm!15319 m!166193))

(declare-fun m!166195 () Bool)

(assert (=> b!138880 m!166195))

(assert (=> b!138880 m!165925))

(declare-fun m!166197 () Bool)

(assert (=> b!138880 m!166197))

(assert (=> b!138880 m!165925))

(assert (=> b!138880 m!166195))

(assert (=> b!138880 m!165875))

(declare-fun m!166199 () Bool)

(assert (=> b!138880 m!166199))

(assert (=> b!138880 m!165875))

(assert (=> d!43363 m!165931))

(assert (=> bm!15318 m!166181))

(assert (=> b!138870 m!165875))

(assert (=> b!138870 m!165875))

(assert (=> b!138870 m!165877))

(declare-fun m!166201 () Bool)

(assert (=> b!138873 m!166201))

(declare-fun m!166203 () Bool)

(assert (=> bm!15323 m!166203))

(assert (=> b!138879 m!165875))

(assert (=> b!138879 m!165875))

(assert (=> b!138879 m!165877))

(declare-fun m!166205 () Bool)

(assert (=> bm!15320 m!166205))

(assert (=> bm!15235 d!43363))

(assert (=> b!138377 d!43253))

(declare-fun d!43365 () Bool)

(assert (=> d!43365 (= (map!1426 (ite c!25906 newMap!16 (_2!1336 lt!72399))) (getCurrentListMap!549 (_keys!4676 (ite c!25906 newMap!16 (_2!1336 lt!72399))) (_values!2902 (ite c!25906 newMap!16 (_2!1336 lt!72399))) (mask!7249 (ite c!25906 newMap!16 (_2!1336 lt!72399))) (extraKeys!2676 (ite c!25906 newMap!16 (_2!1336 lt!72399))) (zeroValue!2770 (ite c!25906 newMap!16 (_2!1336 lt!72399))) (minValue!2770 (ite c!25906 newMap!16 (_2!1336 lt!72399))) #b00000000000000000000000000000000 (defaultEntry!2919 (ite c!25906 newMap!16 (_2!1336 lt!72399)))))))

(declare-fun bs!5821 () Bool)

(assert (= bs!5821 d!43365))

(declare-fun m!166207 () Bool)

(assert (=> bs!5821 m!166207))

(assert (=> bm!15244 d!43365))

(declare-fun d!43367 () Bool)

(declare-fun e!90516 () Bool)

(assert (=> d!43367 e!90516))

(declare-fun res!66474 () Bool)

(assert (=> d!43367 (=> res!66474 e!90516)))

(declare-fun lt!72752 () Bool)

(assert (=> d!43367 (= res!66474 (not lt!72752))))

(declare-fun lt!72754 () Bool)

(assert (=> d!43367 (= lt!72752 lt!72754)))

(declare-fun lt!72751 () Unit!4366)

(declare-fun e!90515 () Unit!4366)

(assert (=> d!43367 (= lt!72751 e!90515)))

(declare-fun c!26016 () Bool)

(assert (=> d!43367 (= c!26016 lt!72754)))

(assert (=> d!43367 (= lt!72754 (containsKey!177 (toList!880 e!90286) (select (arr!2296 (_keys!4676 (v!3254 (underlying!472 thiss!992)))) from!355)))))

(assert (=> d!43367 (= (contains!910 e!90286 (select (arr!2296 (_keys!4676 (v!3254 (underlying!472 thiss!992)))) from!355)) lt!72752)))

(declare-fun b!138883 () Bool)

(declare-fun lt!72753 () Unit!4366)

(assert (=> b!138883 (= e!90515 lt!72753)))

(assert (=> b!138883 (= lt!72753 (lemmaContainsKeyImpliesGetValueByKeyDefined!126 (toList!880 e!90286) (select (arr!2296 (_keys!4676 (v!3254 (underlying!472 thiss!992)))) from!355)))))

(assert (=> b!138883 (isDefined!127 (getValueByKey!173 (toList!880 e!90286) (select (arr!2296 (_keys!4676 (v!3254 (underlying!472 thiss!992)))) from!355)))))

(declare-fun b!138884 () Bool)

(declare-fun Unit!4383 () Unit!4366)

(assert (=> b!138884 (= e!90515 Unit!4383)))

(declare-fun b!138885 () Bool)

(assert (=> b!138885 (= e!90516 (isDefined!127 (getValueByKey!173 (toList!880 e!90286) (select (arr!2296 (_keys!4676 (v!3254 (underlying!472 thiss!992)))) from!355))))))

(assert (= (and d!43367 c!26016) b!138883))

(assert (= (and d!43367 (not c!26016)) b!138884))

(assert (= (and d!43367 (not res!66474)) b!138885))

(assert (=> d!43367 m!165499))

(declare-fun m!166209 () Bool)

(assert (=> d!43367 m!166209))

(assert (=> b!138883 m!165499))

(declare-fun m!166211 () Bool)

(assert (=> b!138883 m!166211))

(assert (=> b!138883 m!165499))

(declare-fun m!166213 () Bool)

(assert (=> b!138883 m!166213))

(assert (=> b!138883 m!166213))

(declare-fun m!166215 () Bool)

(assert (=> b!138883 m!166215))

(assert (=> b!138885 m!165499))

(assert (=> b!138885 m!166213))

(assert (=> b!138885 m!166213))

(assert (=> b!138885 m!166215))

(assert (=> bm!15236 d!43367))

(declare-fun d!43369 () Bool)

(assert (=> d!43369 (= (map!1426 (ite c!25906 (_2!1336 lt!72399) newMap!16)) (getCurrentListMap!549 (_keys!4676 (ite c!25906 (_2!1336 lt!72399) newMap!16)) (_values!2902 (ite c!25906 (_2!1336 lt!72399) newMap!16)) (mask!7249 (ite c!25906 (_2!1336 lt!72399) newMap!16)) (extraKeys!2676 (ite c!25906 (_2!1336 lt!72399) newMap!16)) (zeroValue!2770 (ite c!25906 (_2!1336 lt!72399) newMap!16)) (minValue!2770 (ite c!25906 (_2!1336 lt!72399) newMap!16)) #b00000000000000000000000000000000 (defaultEntry!2919 (ite c!25906 (_2!1336 lt!72399) newMap!16))))))

(declare-fun bs!5822 () Bool)

(assert (= bs!5822 d!43369))

(declare-fun m!166217 () Bool)

(assert (=> bs!5822 m!166217))

(assert (=> bm!15252 d!43369))

(declare-fun d!43371 () Bool)

(declare-fun res!66475 () Bool)

(declare-fun e!90517 () Bool)

(assert (=> d!43371 (=> res!66475 e!90517)))

(assert (=> d!43371 (= res!66475 (= (select (arr!2296 (_keys!4676 (v!3254 (underlying!472 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355 #b00000000000000000000000000000001)) (select (arr!2296 (_keys!4676 (v!3254 (underlying!472 thiss!992)))) from!355)))))

(assert (=> d!43371 (= (arrayContainsKey!0 (_keys!4676 (v!3254 (underlying!472 thiss!992))) (select (arr!2296 (_keys!4676 (v!3254 (underlying!472 thiss!992)))) from!355) (bvadd #b00000000000000000000000000000001 from!355 #b00000000000000000000000000000001)) e!90517)))

(declare-fun b!138886 () Bool)

(declare-fun e!90518 () Bool)

(assert (=> b!138886 (= e!90517 e!90518)))

(declare-fun res!66476 () Bool)

(assert (=> b!138886 (=> (not res!66476) (not e!90518))))

(assert (=> b!138886 (= res!66476 (bvslt (bvadd #b00000000000000000000000000000001 from!355 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (size!2567 (_keys!4676 (v!3254 (underlying!472 thiss!992))))))))

(declare-fun b!138887 () Bool)

(assert (=> b!138887 (= e!90518 (arrayContainsKey!0 (_keys!4676 (v!3254 (underlying!472 thiss!992))) (select (arr!2296 (_keys!4676 (v!3254 (underlying!472 thiss!992)))) from!355) (bvadd #b00000000000000000000000000000001 from!355 #b00000000000000000000000000000001 #b00000000000000000000000000000001)))))

(assert (= (and d!43371 (not res!66475)) b!138886))

(assert (= (and b!138886 res!66476) b!138887))

(declare-fun m!166219 () Bool)

(assert (=> d!43371 m!166219))

(assert (=> b!138887 m!165499))

(declare-fun m!166221 () Bool)

(assert (=> b!138887 m!166221))

(assert (=> b!138372 d!43371))

(declare-fun d!43373 () Bool)

(declare-fun e!90519 () Bool)

(assert (=> d!43373 e!90519))

(declare-fun res!66477 () Bool)

(assert (=> d!43373 (=> (not res!66477) (not e!90519))))

(declare-fun lt!72757 () ListLongMap!1729)

(assert (=> d!43373 (= res!66477 (contains!910 lt!72757 (_1!1335 (tuple2!2651 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2770 (v!3254 (underlying!472 thiss!992)))))))))

(declare-fun lt!72755 () List!1749)

(assert (=> d!43373 (= lt!72757 (ListLongMap!1730 lt!72755))))

(declare-fun lt!72758 () Unit!4366)

(declare-fun lt!72756 () Unit!4366)

(assert (=> d!43373 (= lt!72758 lt!72756)))

(assert (=> d!43373 (= (getValueByKey!173 lt!72755 (_1!1335 (tuple2!2651 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2770 (v!3254 (underlying!472 thiss!992)))))) (Some!178 (_2!1335 (tuple2!2651 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2770 (v!3254 (underlying!472 thiss!992)))))))))

(assert (=> d!43373 (= lt!72756 (lemmaContainsTupThenGetReturnValue!90 lt!72755 (_1!1335 (tuple2!2651 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2770 (v!3254 (underlying!472 thiss!992))))) (_2!1335 (tuple2!2651 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2770 (v!3254 (underlying!472 thiss!992)))))))))

(assert (=> d!43373 (= lt!72755 (insertStrictlySorted!92 (toList!880 call!15276) (_1!1335 (tuple2!2651 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2770 (v!3254 (underlying!472 thiss!992))))) (_2!1335 (tuple2!2651 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2770 (v!3254 (underlying!472 thiss!992)))))))))

(assert (=> d!43373 (= (+!172 call!15276 (tuple2!2651 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2770 (v!3254 (underlying!472 thiss!992))))) lt!72757)))

(declare-fun b!138888 () Bool)

(declare-fun res!66478 () Bool)

(assert (=> b!138888 (=> (not res!66478) (not e!90519))))

(assert (=> b!138888 (= res!66478 (= (getValueByKey!173 (toList!880 lt!72757) (_1!1335 (tuple2!2651 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2770 (v!3254 (underlying!472 thiss!992)))))) (Some!178 (_2!1335 (tuple2!2651 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2770 (v!3254 (underlying!472 thiss!992))))))))))

(declare-fun b!138889 () Bool)

(assert (=> b!138889 (= e!90519 (contains!913 (toList!880 lt!72757) (tuple2!2651 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2770 (v!3254 (underlying!472 thiss!992))))))))

(assert (= (and d!43373 res!66477) b!138888))

(assert (= (and b!138888 res!66478) b!138889))

(declare-fun m!166223 () Bool)

(assert (=> d!43373 m!166223))

(declare-fun m!166225 () Bool)

(assert (=> d!43373 m!166225))

(declare-fun m!166227 () Bool)

(assert (=> d!43373 m!166227))

(declare-fun m!166229 () Bool)

(assert (=> d!43373 m!166229))

(declare-fun m!166231 () Bool)

(assert (=> b!138888 m!166231))

(declare-fun m!166233 () Bool)

(assert (=> b!138889 m!166233))

(assert (=> b!138569 d!43373))

(declare-fun d!43375 () Bool)

(assert (=> d!43375 (= (apply!118 lt!72461 #b1000000000000000000000000000000000000000000000000000000000000000) (get!1520 (getValueByKey!173 (toList!880 lt!72461) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun bs!5823 () Bool)

(assert (= bs!5823 d!43375))

(assert (=> bs!5823 m!165733))

(assert (=> bs!5823 m!165733))

(declare-fun m!166235 () Bool)

(assert (=> bs!5823 m!166235))

(assert (=> b!138573 d!43375))

(declare-fun d!43377 () Bool)

(declare-fun res!66483 () Bool)

(declare-fun e!90524 () Bool)

(assert (=> d!43377 (=> res!66483 e!90524)))

(assert (=> d!43377 (= res!66483 (and ((_ is Cons!1745) (toList!880 lt!72301)) (= (_1!1335 (h!2352 (toList!880 lt!72301))) (select (arr!2296 (_keys!4676 (v!3254 (underlying!472 thiss!992)))) from!355))))))

(assert (=> d!43377 (= (containsKey!177 (toList!880 lt!72301) (select (arr!2296 (_keys!4676 (v!3254 (underlying!472 thiss!992)))) from!355)) e!90524)))

(declare-fun b!138894 () Bool)

(declare-fun e!90525 () Bool)

(assert (=> b!138894 (= e!90524 e!90525)))

(declare-fun res!66484 () Bool)

(assert (=> b!138894 (=> (not res!66484) (not e!90525))))

(assert (=> b!138894 (= res!66484 (and (or (not ((_ is Cons!1745) (toList!880 lt!72301))) (bvsle (_1!1335 (h!2352 (toList!880 lt!72301))) (select (arr!2296 (_keys!4676 (v!3254 (underlying!472 thiss!992)))) from!355))) ((_ is Cons!1745) (toList!880 lt!72301)) (bvslt (_1!1335 (h!2352 (toList!880 lt!72301))) (select (arr!2296 (_keys!4676 (v!3254 (underlying!472 thiss!992)))) from!355))))))

(declare-fun b!138895 () Bool)

(assert (=> b!138895 (= e!90525 (containsKey!177 (t!6305 (toList!880 lt!72301)) (select (arr!2296 (_keys!4676 (v!3254 (underlying!472 thiss!992)))) from!355)))))

(assert (= (and d!43377 (not res!66483)) b!138894))

(assert (= (and b!138894 res!66484) b!138895))

(assert (=> b!138895 m!165499))

(declare-fun m!166237 () Bool)

(assert (=> b!138895 m!166237))

(assert (=> d!43259 d!43377))

(assert (=> b!138353 d!43273))

(declare-fun d!43379 () Bool)

(declare-fun res!66485 () Bool)

(declare-fun e!90526 () Bool)

(assert (=> d!43379 (=> res!66485 e!90526)))

(assert (=> d!43379 (= res!66485 (= (select (arr!2296 (_keys!4676 newMap!16)) #b00000000000000000000000000000000) (select (arr!2296 (_keys!4676 (v!3254 (underlying!472 thiss!992)))) from!355)))))

(assert (=> d!43379 (= (arrayContainsKey!0 (_keys!4676 newMap!16) (select (arr!2296 (_keys!4676 (v!3254 (underlying!472 thiss!992)))) from!355) #b00000000000000000000000000000000) e!90526)))

(declare-fun b!138896 () Bool)

(declare-fun e!90527 () Bool)

(assert (=> b!138896 (= e!90526 e!90527)))

(declare-fun res!66486 () Bool)

(assert (=> b!138896 (=> (not res!66486) (not e!90527))))

(assert (=> b!138896 (= res!66486 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!2567 (_keys!4676 newMap!16))))))

(declare-fun b!138897 () Bool)

(assert (=> b!138897 (= e!90527 (arrayContainsKey!0 (_keys!4676 newMap!16) (select (arr!2296 (_keys!4676 (v!3254 (underlying!472 thiss!992)))) from!355) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!43379 (not res!66485)) b!138896))

(assert (= (and b!138896 res!66486) b!138897))

(assert (=> d!43379 m!165875))

(assert (=> b!138897 m!165499))

(declare-fun m!166239 () Bool)

(assert (=> b!138897 m!166239))

(assert (=> bm!15253 d!43379))

(assert (=> bm!15271 d!43285))

(declare-fun d!43381 () Bool)

(declare-fun res!66487 () Bool)

(declare-fun e!90528 () Bool)

(assert (=> d!43381 (=> (not res!66487) (not e!90528))))

(assert (=> d!43381 (= res!66487 (simpleValid!93 (v!3254 (underlying!472 thiss!992))))))

(assert (=> d!43381 (= (valid!545 (v!3254 (underlying!472 thiss!992))) e!90528)))

(declare-fun b!138898 () Bool)

(declare-fun res!66488 () Bool)

(assert (=> b!138898 (=> (not res!66488) (not e!90528))))

(assert (=> b!138898 (= res!66488 (= (arrayCountValidKeys!0 (_keys!4676 (v!3254 (underlying!472 thiss!992))) #b00000000000000000000000000000000 (size!2567 (_keys!4676 (v!3254 (underlying!472 thiss!992))))) (_size!616 (v!3254 (underlying!472 thiss!992)))))))

(declare-fun b!138899 () Bool)

(declare-fun res!66489 () Bool)

(assert (=> b!138899 (=> (not res!66489) (not e!90528))))

(assert (=> b!138899 (= res!66489 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!4676 (v!3254 (underlying!472 thiss!992))) (mask!7249 (v!3254 (underlying!472 thiss!992)))))))

(declare-fun b!138900 () Bool)

(assert (=> b!138900 (= e!90528 (arrayNoDuplicates!0 (_keys!4676 (v!3254 (underlying!472 thiss!992))) #b00000000000000000000000000000000 Nil!1747))))

(assert (= (and d!43381 res!66487) b!138898))

(assert (= (and b!138898 res!66488) b!138899))

(assert (= (and b!138899 res!66489) b!138900))

(declare-fun m!166241 () Bool)

(assert (=> d!43381 m!166241))

(declare-fun m!166243 () Bool)

(assert (=> b!138898 m!166243))

(declare-fun m!166245 () Bool)

(assert (=> b!138899 m!166245))

(assert (=> b!138900 m!165533))

(assert (=> d!43257 d!43381))

(declare-fun d!43383 () Bool)

(declare-fun res!66501 () Bool)

(declare-fun e!90531 () Bool)

(assert (=> d!43383 (=> (not res!66501) (not e!90531))))

(assert (=> d!43383 (= res!66501 (validMask!0 (mask!7249 newMap!16)))))

(assert (=> d!43383 (= (simpleValid!93 newMap!16) e!90531)))

(declare-fun b!138909 () Bool)

(declare-fun res!66498 () Bool)

(assert (=> b!138909 (=> (not res!66498) (not e!90531))))

(assert (=> b!138909 (= res!66498 (and (= (size!2568 (_values!2902 newMap!16)) (bvadd (mask!7249 newMap!16) #b00000000000000000000000000000001)) (= (size!2567 (_keys!4676 newMap!16)) (size!2568 (_values!2902 newMap!16))) (bvsge (_size!616 newMap!16) #b00000000000000000000000000000000) (bvsle (_size!616 newMap!16) (bvadd (mask!7249 newMap!16) #b00000000000000000000000000000001))))))

(declare-fun b!138910 () Bool)

(declare-fun res!66500 () Bool)

(assert (=> b!138910 (=> (not res!66500) (not e!90531))))

(declare-fun size!2571 (LongMapFixedSize!1134) (_ BitVec 32))

(assert (=> b!138910 (= res!66500 (bvsge (size!2571 newMap!16) (_size!616 newMap!16)))))

(declare-fun b!138911 () Bool)

(declare-fun res!66499 () Bool)

(assert (=> b!138911 (=> (not res!66499) (not e!90531))))

(assert (=> b!138911 (= res!66499 (= (size!2571 newMap!16) (bvadd (_size!616 newMap!16) (bvsdiv (bvadd (extraKeys!2676 newMap!16) #b00000000000000000000000000000001) #b00000000000000000000000000000010))))))

(declare-fun b!138912 () Bool)

(assert (=> b!138912 (= e!90531 (and (bvsge (extraKeys!2676 newMap!16) #b00000000000000000000000000000000) (bvsle (extraKeys!2676 newMap!16) #b00000000000000000000000000000011) (bvsge (_vacant!616 newMap!16) #b00000000000000000000000000000000)))))

(assert (= (and d!43383 res!66501) b!138909))

(assert (= (and b!138909 res!66498) b!138910))

(assert (= (and b!138910 res!66500) b!138911))

(assert (= (and b!138911 res!66499) b!138912))

(assert (=> d!43383 m!165931))

(declare-fun m!166247 () Bool)

(assert (=> b!138910 m!166247))

(assert (=> b!138911 m!166247))

(assert (=> d!43247 d!43383))

(declare-fun d!43385 () Bool)

(assert (=> d!43385 (= (+!172 (getCurrentListMap!549 (_keys!4676 newMap!16) (_values!2902 newMap!16) (mask!7249 newMap!16) (extraKeys!2676 newMap!16) (zeroValue!2770 newMap!16) (minValue!2770 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2919 newMap!16)) (tuple2!2651 #b0000000000000000000000000000000000000000000000000000000000000000 (get!1516 (select (arr!2297 (_values!2902 (v!3254 (underlying!472 thiss!992)))) from!355) (dynLambda!435 (defaultEntry!2919 (v!3254 (underlying!472 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (getCurrentListMap!549 (_keys!4676 newMap!16) (_values!2902 newMap!16) (mask!7249 newMap!16) lt!72395 (get!1516 (select (arr!2297 (_values!2902 (v!3254 (underlying!472 thiss!992)))) from!355) (dynLambda!435 (defaultEntry!2919 (v!3254 (underlying!472 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (minValue!2770 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2919 newMap!16)))))

(declare-fun lt!72761 () Unit!4366)

(declare-fun choose!859 (array!4856 array!4858 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!3531 V!3531 V!3531 Int) Unit!4366)

(assert (=> d!43385 (= lt!72761 (choose!859 (_keys!4676 newMap!16) (_values!2902 newMap!16) (mask!7249 newMap!16) (extraKeys!2676 newMap!16) lt!72395 (zeroValue!2770 newMap!16) (get!1516 (select (arr!2297 (_values!2902 (v!3254 (underlying!472 thiss!992)))) from!355) (dynLambda!435 (defaultEntry!2919 (v!3254 (underlying!472 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (minValue!2770 newMap!16) (defaultEntry!2919 newMap!16)))))

(assert (=> d!43385 (validMask!0 (mask!7249 newMap!16))))

(assert (=> d!43385 (= (lemmaChangeZeroKeyThenAddPairToListMap!63 (_keys!4676 newMap!16) (_values!2902 newMap!16) (mask!7249 newMap!16) (extraKeys!2676 newMap!16) lt!72395 (zeroValue!2770 newMap!16) (get!1516 (select (arr!2297 (_values!2902 (v!3254 (underlying!472 thiss!992)))) from!355) (dynLambda!435 (defaultEntry!2919 (v!3254 (underlying!472 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (minValue!2770 newMap!16) (defaultEntry!2919 newMap!16)) lt!72761)))

(declare-fun bs!5824 () Bool)

(assert (= bs!5824 d!43385))

(assert (=> bs!5824 m!165509))

(declare-fun m!166249 () Bool)

(assert (=> bs!5824 m!166249))

(assert (=> bs!5824 m!165931))

(assert (=> bs!5824 m!165509))

(declare-fun m!166251 () Bool)

(assert (=> bs!5824 m!166251))

(assert (=> bs!5824 m!165639))

(assert (=> bs!5824 m!165639))

(declare-fun m!166253 () Bool)

(assert (=> bs!5824 m!166253))

(assert (=> b!138509 d!43385))

(assert (=> b!138510 d!43321))

(declare-fun bm!15326 () Bool)

(declare-fun call!15329 () Bool)

(assert (=> bm!15326 (= call!15329 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (_keys!4676 newMap!16) (mask!7249 newMap!16)))))

(declare-fun b!138922 () Bool)

(declare-fun e!90540 () Bool)

(declare-fun e!90538 () Bool)

(assert (=> b!138922 (= e!90540 e!90538)))

(declare-fun lt!72768 () (_ BitVec 64))

(assert (=> b!138922 (= lt!72768 (select (arr!2296 (_keys!4676 newMap!16)) #b00000000000000000000000000000000))))

(declare-fun lt!72769 () Unit!4366)

(assert (=> b!138922 (= lt!72769 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!4676 newMap!16) lt!72768 #b00000000000000000000000000000000))))

(assert (=> b!138922 (arrayContainsKey!0 (_keys!4676 newMap!16) lt!72768 #b00000000000000000000000000000000)))

(declare-fun lt!72770 () Unit!4366)

(assert (=> b!138922 (= lt!72770 lt!72769)))

(declare-fun res!66506 () Bool)

(assert (=> b!138922 (= res!66506 (= (seekEntryOrOpen!0 (select (arr!2296 (_keys!4676 newMap!16)) #b00000000000000000000000000000000) (_keys!4676 newMap!16) (mask!7249 newMap!16)) (Found!287 #b00000000000000000000000000000000)))))

(assert (=> b!138922 (=> (not res!66506) (not e!90538))))

(declare-fun b!138923 () Bool)

(declare-fun e!90539 () Bool)

(assert (=> b!138923 (= e!90539 e!90540)))

(declare-fun c!26019 () Bool)

(assert (=> b!138923 (= c!26019 (validKeyInArray!0 (select (arr!2296 (_keys!4676 newMap!16)) #b00000000000000000000000000000000)))))

(declare-fun b!138924 () Bool)

(assert (=> b!138924 (= e!90540 call!15329)))

(declare-fun d!43387 () Bool)

(declare-fun res!66507 () Bool)

(assert (=> d!43387 (=> res!66507 e!90539)))

(assert (=> d!43387 (= res!66507 (bvsge #b00000000000000000000000000000000 (size!2567 (_keys!4676 newMap!16))))))

(assert (=> d!43387 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!4676 newMap!16) (mask!7249 newMap!16)) e!90539)))

(declare-fun b!138921 () Bool)

(assert (=> b!138921 (= e!90538 call!15329)))

(assert (= (and d!43387 (not res!66507)) b!138923))

(assert (= (and b!138923 c!26019) b!138922))

(assert (= (and b!138923 (not c!26019)) b!138924))

(assert (= (and b!138922 res!66506) b!138921))

(assert (= (or b!138921 b!138924) bm!15326))

(declare-fun m!166255 () Bool)

(assert (=> bm!15326 m!166255))

(assert (=> b!138922 m!165875))

(declare-fun m!166257 () Bool)

(assert (=> b!138922 m!166257))

(declare-fun m!166259 () Bool)

(assert (=> b!138922 m!166259))

(assert (=> b!138922 m!165875))

(declare-fun m!166261 () Bool)

(assert (=> b!138922 m!166261))

(assert (=> b!138923 m!165875))

(assert (=> b!138923 m!165875))

(assert (=> b!138923 m!165877))

(assert (=> b!138365 d!43387))

(declare-fun d!43389 () Bool)

(declare-fun e!90542 () Bool)

(assert (=> d!43389 e!90542))

(declare-fun res!66508 () Bool)

(assert (=> d!43389 (=> res!66508 e!90542)))

(declare-fun lt!72772 () Bool)

(assert (=> d!43389 (= res!66508 (not lt!72772))))

(declare-fun lt!72774 () Bool)

(assert (=> d!43389 (= lt!72772 lt!72774)))

(declare-fun lt!72771 () Unit!4366)

(declare-fun e!90541 () Unit!4366)

(assert (=> d!43389 (= lt!72771 e!90541)))

(declare-fun c!26020 () Bool)

(assert (=> d!43389 (= c!26020 lt!72774)))

(assert (=> d!43389 (= lt!72774 (containsKey!177 (toList!880 call!15255) (select (arr!2296 (_keys!4676 newMap!16)) (index!3311 lt!72404))))))

(assert (=> d!43389 (= (contains!910 call!15255 (select (arr!2296 (_keys!4676 newMap!16)) (index!3311 lt!72404))) lt!72772)))

(declare-fun b!138925 () Bool)

(declare-fun lt!72773 () Unit!4366)

(assert (=> b!138925 (= e!90541 lt!72773)))

(assert (=> b!138925 (= lt!72773 (lemmaContainsKeyImpliesGetValueByKeyDefined!126 (toList!880 call!15255) (select (arr!2296 (_keys!4676 newMap!16)) (index!3311 lt!72404))))))

(assert (=> b!138925 (isDefined!127 (getValueByKey!173 (toList!880 call!15255) (select (arr!2296 (_keys!4676 newMap!16)) (index!3311 lt!72404))))))

(declare-fun b!138926 () Bool)

(declare-fun Unit!4384 () Unit!4366)

(assert (=> b!138926 (= e!90541 Unit!4384)))

(declare-fun b!138927 () Bool)

(assert (=> b!138927 (= e!90542 (isDefined!127 (getValueByKey!173 (toList!880 call!15255) (select (arr!2296 (_keys!4676 newMap!16)) (index!3311 lt!72404)))))))

(assert (= (and d!43389 c!26020) b!138925))

(assert (= (and d!43389 (not c!26020)) b!138926))

(assert (= (and d!43389 (not res!66508)) b!138927))

(assert (=> d!43389 m!165629))

(declare-fun m!166263 () Bool)

(assert (=> d!43389 m!166263))

(assert (=> b!138925 m!165629))

(declare-fun m!166265 () Bool)

(assert (=> b!138925 m!166265))

(assert (=> b!138925 m!165629))

(declare-fun m!166267 () Bool)

(assert (=> b!138925 m!166267))

(assert (=> b!138925 m!166267))

(declare-fun m!166269 () Bool)

(assert (=> b!138925 m!166269))

(assert (=> b!138927 m!165629))

(assert (=> b!138927 m!166267))

(assert (=> b!138927 m!166267))

(assert (=> b!138927 m!166269))

(assert (=> b!138495 d!43389))

(declare-fun d!43391 () Bool)

(declare-fun e!90545 () Bool)

(assert (=> d!43391 e!90545))

(declare-fun res!66511 () Bool)

(assert (=> d!43391 (=> (not res!66511) (not e!90545))))

(assert (=> d!43391 (= res!66511 (and (bvsge (index!3311 lt!72404) #b00000000000000000000000000000000) (bvslt (index!3311 lt!72404) (size!2567 (_keys!4676 newMap!16)))))))

(declare-fun lt!72777 () Unit!4366)

(declare-fun choose!860 (array!4856 array!4858 (_ BitVec 32) (_ BitVec 32) V!3531 V!3531 (_ BitVec 32) Int) Unit!4366)

(assert (=> d!43391 (= lt!72777 (choose!860 (_keys!4676 newMap!16) lt!72385 (mask!7249 newMap!16) (extraKeys!2676 newMap!16) (zeroValue!2770 newMap!16) (minValue!2770 newMap!16) (index!3311 lt!72404) (defaultEntry!2919 newMap!16)))))

(assert (=> d!43391 (validMask!0 (mask!7249 newMap!16))))

(assert (=> d!43391 (= (lemmaValidKeyInArrayIsInListMap!121 (_keys!4676 newMap!16) lt!72385 (mask!7249 newMap!16) (extraKeys!2676 newMap!16) (zeroValue!2770 newMap!16) (minValue!2770 newMap!16) (index!3311 lt!72404) (defaultEntry!2919 newMap!16)) lt!72777)))

(declare-fun b!138930 () Bool)

(assert (=> b!138930 (= e!90545 (contains!910 (getCurrentListMap!549 (_keys!4676 newMap!16) lt!72385 (mask!7249 newMap!16) (extraKeys!2676 newMap!16) (zeroValue!2770 newMap!16) (minValue!2770 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2919 newMap!16)) (select (arr!2296 (_keys!4676 newMap!16)) (index!3311 lt!72404))))))

(assert (= (and d!43391 res!66511) b!138930))

(declare-fun m!166271 () Bool)

(assert (=> d!43391 m!166271))

(assert (=> d!43391 m!165931))

(declare-fun m!166273 () Bool)

(assert (=> b!138930 m!166273))

(assert (=> b!138930 m!165629))

(assert (=> b!138930 m!166273))

(assert (=> b!138930 m!165629))

(declare-fun m!166275 () Bool)

(assert (=> b!138930 m!166275))

(assert (=> b!138495 d!43391))

(declare-fun d!43393 () Bool)

(declare-fun e!90548 () Bool)

(assert (=> d!43393 e!90548))

(declare-fun res!66514 () Bool)

(assert (=> d!43393 (=> (not res!66514) (not e!90548))))

(assert (=> d!43393 (= res!66514 (and (bvsge (index!3311 lt!72404) #b00000000000000000000000000000000) (bvslt (index!3311 lt!72404) (size!2568 (_values!2902 newMap!16)))))))

(declare-fun lt!72780 () Unit!4366)

(declare-fun choose!861 (array!4856 array!4858 (_ BitVec 32) (_ BitVec 32) V!3531 V!3531 (_ BitVec 32) (_ BitVec 64) V!3531 Int) Unit!4366)

(assert (=> d!43393 (= lt!72780 (choose!861 (_keys!4676 newMap!16) (_values!2902 newMap!16) (mask!7249 newMap!16) (extraKeys!2676 newMap!16) (zeroValue!2770 newMap!16) (minValue!2770 newMap!16) (index!3311 lt!72404) (select (arr!2296 (_keys!4676 (v!3254 (underlying!472 thiss!992)))) from!355) (get!1516 (select (arr!2297 (_values!2902 (v!3254 (underlying!472 thiss!992)))) from!355) (dynLambda!435 (defaultEntry!2919 (v!3254 (underlying!472 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (defaultEntry!2919 newMap!16)))))

(assert (=> d!43393 (validMask!0 (mask!7249 newMap!16))))

(assert (=> d!43393 (= (lemmaChangeValueExistingKeyToArrayThenAddPairToListMap!63 (_keys!4676 newMap!16) (_values!2902 newMap!16) (mask!7249 newMap!16) (extraKeys!2676 newMap!16) (zeroValue!2770 newMap!16) (minValue!2770 newMap!16) (index!3311 lt!72404) (select (arr!2296 (_keys!4676 (v!3254 (underlying!472 thiss!992)))) from!355) (get!1516 (select (arr!2297 (_values!2902 (v!3254 (underlying!472 thiss!992)))) from!355) (dynLambda!435 (defaultEntry!2919 (v!3254 (underlying!472 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (defaultEntry!2919 newMap!16)) lt!72780)))

(declare-fun b!138933 () Bool)

(assert (=> b!138933 (= e!90548 (= (+!172 (getCurrentListMap!549 (_keys!4676 newMap!16) (_values!2902 newMap!16) (mask!7249 newMap!16) (extraKeys!2676 newMap!16) (zeroValue!2770 newMap!16) (minValue!2770 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2919 newMap!16)) (tuple2!2651 (select (arr!2296 (_keys!4676 (v!3254 (underlying!472 thiss!992)))) from!355) (get!1516 (select (arr!2297 (_values!2902 (v!3254 (underlying!472 thiss!992)))) from!355) (dynLambda!435 (defaultEntry!2919 (v!3254 (underlying!472 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (getCurrentListMap!549 (_keys!4676 newMap!16) (array!4859 (store (arr!2297 (_values!2902 newMap!16)) (index!3311 lt!72404) (ValueCellFull!1113 (get!1516 (select (arr!2297 (_values!2902 (v!3254 (underlying!472 thiss!992)))) from!355) (dynLambda!435 (defaultEntry!2919 (v!3254 (underlying!472 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (size!2568 (_values!2902 newMap!16))) (mask!7249 newMap!16) (extraKeys!2676 newMap!16) (zeroValue!2770 newMap!16) (minValue!2770 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2919 newMap!16))))))

(assert (= (and d!43393 res!66514) b!138933))

(assert (=> d!43393 m!165499))

(assert (=> d!43393 m!165509))

(declare-fun m!166277 () Bool)

(assert (=> d!43393 m!166277))

(assert (=> d!43393 m!165931))

(assert (=> b!138933 m!165639))

(assert (=> b!138933 m!165639))

(assert (=> b!138933 m!165955))

(assert (=> b!138933 m!165627))

(declare-fun m!166279 () Bool)

(assert (=> b!138933 m!166279))

(assert (=> b!138495 d!43393))

(assert (=> b!138579 d!43317))

(declare-fun d!43395 () Bool)

(assert (=> d!43395 (= (get!1518 (select (arr!2297 (_values!2902 (v!3254 (underlying!472 thiss!992)))) from!355) (dynLambda!435 (defaultEntry!2919 (v!3254 (underlying!472 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (v!3253 (select (arr!2297 (_values!2902 (v!3254 (underlying!472 thiss!992)))) from!355)))))

(assert (=> b!138518 d!43395))

(declare-fun d!43397 () Bool)

(assert (=> d!43397 (= (apply!118 lt!72461 (select (arr!2296 (_keys!4676 (v!3254 (underlying!472 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))) (get!1520 (getValueByKey!173 (toList!880 lt!72461) (select (arr!2296 (_keys!4676 (v!3254 (underlying!472 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)))))))

(declare-fun bs!5825 () Bool)

(assert (= bs!5825 d!43397))

(assert (=> bs!5825 m!165591))

(assert (=> bs!5825 m!166109))

(assert (=> bs!5825 m!166109))

(declare-fun m!166281 () Bool)

(assert (=> bs!5825 m!166281))

(assert (=> b!138580 d!43397))

(declare-fun d!43399 () Bool)

(declare-fun c!26021 () Bool)

(assert (=> d!43399 (= c!26021 ((_ is ValueCellFull!1113) (select (arr!2297 (_values!2902 (v!3254 (underlying!472 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))))))

(declare-fun e!90549 () V!3531)

(assert (=> d!43399 (= (get!1516 (select (arr!2297 (_values!2902 (v!3254 (underlying!472 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (dynLambda!435 (defaultEntry!2919 (v!3254 (underlying!472 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) e!90549)))

(declare-fun b!138934 () Bool)

(assert (=> b!138934 (= e!90549 (get!1518 (select (arr!2297 (_values!2902 (v!3254 (underlying!472 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (dynLambda!435 (defaultEntry!2919 (v!3254 (underlying!472 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!138935 () Bool)

(assert (=> b!138935 (= e!90549 (get!1519 (select (arr!2297 (_values!2902 (v!3254 (underlying!472 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (dynLambda!435 (defaultEntry!2919 (v!3254 (underlying!472 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!43399 c!26021) b!138934))

(assert (= (and d!43399 (not c!26021)) b!138935))

(assert (=> b!138934 m!165711))

(assert (=> b!138934 m!165507))

(declare-fun m!166283 () Bool)

(assert (=> b!138934 m!166283))

(assert (=> b!138935 m!165711))

(assert (=> b!138935 m!165507))

(declare-fun m!166285 () Bool)

(assert (=> b!138935 m!166285))

(assert (=> b!138580 d!43399))

(declare-fun condMapEmpty!4781 () Bool)

(declare-fun mapDefault!4781 () ValueCell!1113)

(assert (=> mapNonEmpty!4779 (= condMapEmpty!4781 (= mapRest!4779 ((as const (Array (_ BitVec 32) ValueCell!1113)) mapDefault!4781)))))

(declare-fun e!90551 () Bool)

(declare-fun mapRes!4781 () Bool)

(assert (=> mapNonEmpty!4779 (= tp!11457 (and e!90551 mapRes!4781))))

(declare-fun b!138936 () Bool)

(declare-fun e!90550 () Bool)

(assert (=> b!138936 (= e!90550 tp_is_empty!2913)))

(declare-fun mapIsEmpty!4781 () Bool)

(assert (=> mapIsEmpty!4781 mapRes!4781))

(declare-fun b!138937 () Bool)

(assert (=> b!138937 (= e!90551 tp_is_empty!2913)))

(declare-fun mapNonEmpty!4781 () Bool)

(declare-fun tp!11459 () Bool)

(assert (=> mapNonEmpty!4781 (= mapRes!4781 (and tp!11459 e!90550))))

(declare-fun mapKey!4781 () (_ BitVec 32))

(declare-fun mapValue!4781 () ValueCell!1113)

(declare-fun mapRest!4781 () (Array (_ BitVec 32) ValueCell!1113))

(assert (=> mapNonEmpty!4781 (= mapRest!4779 (store mapRest!4781 mapKey!4781 mapValue!4781))))

(assert (= (and mapNonEmpty!4779 condMapEmpty!4781) mapIsEmpty!4781))

(assert (= (and mapNonEmpty!4779 (not condMapEmpty!4781)) mapNonEmpty!4781))

(assert (= (and mapNonEmpty!4781 ((_ is ValueCellFull!1113) mapValue!4781)) b!138936))

(assert (= (and mapNonEmpty!4779 ((_ is ValueCellFull!1113) mapDefault!4781)) b!138937))

(declare-fun m!166287 () Bool)

(assert (=> mapNonEmpty!4781 m!166287))

(declare-fun condMapEmpty!4782 () Bool)

(declare-fun mapDefault!4782 () ValueCell!1113)

(assert (=> mapNonEmpty!4780 (= condMapEmpty!4782 (= mapRest!4780 ((as const (Array (_ BitVec 32) ValueCell!1113)) mapDefault!4782)))))

(declare-fun e!90553 () Bool)

(declare-fun mapRes!4782 () Bool)

(assert (=> mapNonEmpty!4780 (= tp!11458 (and e!90553 mapRes!4782))))

(declare-fun b!138938 () Bool)

(declare-fun e!90552 () Bool)

(assert (=> b!138938 (= e!90552 tp_is_empty!2913)))

(declare-fun mapIsEmpty!4782 () Bool)

(assert (=> mapIsEmpty!4782 mapRes!4782))

(declare-fun b!138939 () Bool)

(assert (=> b!138939 (= e!90553 tp_is_empty!2913)))

(declare-fun mapNonEmpty!4782 () Bool)

(declare-fun tp!11460 () Bool)

(assert (=> mapNonEmpty!4782 (= mapRes!4782 (and tp!11460 e!90552))))

(declare-fun mapRest!4782 () (Array (_ BitVec 32) ValueCell!1113))

(declare-fun mapKey!4782 () (_ BitVec 32))

(declare-fun mapValue!4782 () ValueCell!1113)

(assert (=> mapNonEmpty!4782 (= mapRest!4780 (store mapRest!4782 mapKey!4782 mapValue!4782))))

(assert (= (and mapNonEmpty!4780 condMapEmpty!4782) mapIsEmpty!4782))

(assert (= (and mapNonEmpty!4780 (not condMapEmpty!4782)) mapNonEmpty!4782))

(assert (= (and mapNonEmpty!4782 ((_ is ValueCellFull!1113) mapValue!4782)) b!138938))

(assert (= (and mapNonEmpty!4780 ((_ is ValueCellFull!1113) mapDefault!4782)) b!138939))

(declare-fun m!166289 () Bool)

(assert (=> mapNonEmpty!4782 m!166289))

(declare-fun b_lambda!6251 () Bool)

(assert (= b_lambda!6249 (or (and b!138287 b_free!2993 (= (defaultEntry!2919 (v!3254 (underlying!472 thiss!992))) (defaultEntry!2919 newMap!16))) (and b!138277 b_free!2995) b_lambda!6251)))

(declare-fun b_lambda!6253 () Bool)

(assert (= b_lambda!6245 (or (and b!138287 b_free!2993 (= (defaultEntry!2919 (v!3254 (underlying!472 thiss!992))) (defaultEntry!2919 newMap!16))) (and b!138277 b_free!2995) b_lambda!6253)))

(declare-fun b_lambda!6255 () Bool)

(assert (= b_lambda!6241 (or (and b!138287 b_free!2993) (and b!138277 b_free!2995 (= (defaultEntry!2919 newMap!16) (defaultEntry!2919 (v!3254 (underlying!472 thiss!992))))) b_lambda!6255)))

(declare-fun b_lambda!6257 () Bool)

(assert (= b_lambda!6243 (or (and b!138287 b_free!2993) (and b!138277 b_free!2995 (= (defaultEntry!2919 newMap!16) (defaultEntry!2919 (v!3254 (underlying!472 thiss!992))))) b_lambda!6257)))

(declare-fun b_lambda!6259 () Bool)

(assert (= b_lambda!6247 (or (and b!138287 b_free!2993 (= (defaultEntry!2919 (v!3254 (underlying!472 thiss!992))) (defaultEntry!2919 newMap!16))) (and b!138277 b_free!2995) b_lambda!6259)))

(check-sat (not b_lambda!6239) (not b!138650) (not bm!15303) (not b!138688) (not d!43357) (not b!138765) (not mapNonEmpty!4782) (not d!43297) (not b!138742) (not b!138672) (not b!138766) (not b!138734) (not d!43283) (not d!43331) (not b!138775) (not d!43391) (not bm!15298) (not d!43385) (not b_lambda!6253) (not b!138739) (not b!138833) (not b!138759) (not b!138873) (not b!138830) (not d!43343) (not d!43369) (not b!138649) (not b!138743) (not b!138679) (not bm!15304) (not b!138662) (not d!43293) (not d!43329) (not b_next!2995) (not b!138664) (not d!43327) (not b!138668) (not b!138633) (not b!138661) (not d!43397) b_and!8677 (not bm!15307) (not b!138888) (not bm!15319) (not b!138682) tp_is_empty!2913 (not b!138663) (not b!138897) (not d!43389) (not d!43305) (not b!138925) (not d!43341) (not b!138899) (not d!43309) (not b_next!2993) (not d!43381) (not b!138772) (not b!138598) (not d!43285) (not d!43301) (not b!138737) (not d!43355) (not d!43323) (not b_lambda!6235) (not b!138935) (not b!138635) (not b_lambda!6255) (not d!43277) (not bm!15282) (not b!138895) (not b!138911) (not d!43311) (not b!138756) (not b!138770) (not b!138604) (not bm!15302) (not b!138684) (not d!43361) (not b!138889) (not b!138771) (not bm!15280) (not bm!15310) (not b!138933) (not b!138860) (not d!43307) (not bm!15296) (not d!43353) (not b!138689) (not b!138835) (not b!138593) (not d!43295) (not bm!15279) (not d!43291) (not bm!15320) (not b!138736) (not b!138637) (not d!43367) (not bm!15297) (not b!138595) (not b!138745) (not d!43393) (not b!138922) (not d!43281) (not b!138665) (not d!43375) (not d!43363) (not b!138910) (not d!43275) (not b!138870) (not b!138640) (not b!138796) (not b!138761) (not b!138648) (not b!138607) (not b!138670) (not b!138605) (not b!138869) (not b_lambda!6251) (not b_lambda!6259) (not b!138638) (not bm!15300) (not b!138930) (not b!138642) (not d!43279) (not d!43303) (not b!138651) (not b!138596) (not d!43299) (not b!138898) (not bm!15326) (not d!43315) (not b!138880) (not b!138639) (not d!43287) (not b!138678) (not b!138632) (not d!43289) (not d!43351) (not b!138934) (not bm!15323) (not b!138666) (not d!43321) (not b!138685) (not b!138729) (not b!138879) (not bm!15287) (not b!138885) (not b!138927) (not bm!15318) (not b!138876) (not b!138887) (not b!138749) (not b!138804) (not bm!15283) (not d!43333) (not b!138900) (not b!138883) (not b!138755) (not b!138863) (not d!43383) (not d!43373) (not b!138923) (not b!138832) (not b!138659) (not b!138769) (not d!43347) (not bm!15316) (not d!43365) (not b!138786) (not b!138837) (not b!138834) (not bm!15284) (not d!43335) (not b!138747) (not b!138875) (not b_lambda!6257) (not b!138660) (not b!138854) (not b!138762) (not mapNonEmpty!4781) (not bm!15315) b_and!8679)
(check-sat b_and!8677 b_and!8679 (not b_next!2993) (not b_next!2995))

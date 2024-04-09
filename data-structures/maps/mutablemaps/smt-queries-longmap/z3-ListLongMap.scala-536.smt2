; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!13534 () Bool)

(assert start!13534)

(declare-fun b!124133 () Bool)

(declare-fun b_free!2825 () Bool)

(declare-fun b_next!2825 () Bool)

(assert (=> b!124133 (= b_free!2825 (not b_next!2825))))

(declare-fun tp!10871 () Bool)

(declare-fun b_and!7637 () Bool)

(assert (=> b!124133 (= tp!10871 b_and!7637)))

(declare-fun b!124129 () Bool)

(declare-fun b_free!2827 () Bool)

(declare-fun b_next!2827 () Bool)

(assert (=> b!124129 (= b_free!2827 (not b_next!2827))))

(declare-fun tp!10870 () Bool)

(declare-fun b_and!7639 () Bool)

(assert (=> b!124129 (= tp!10870 b_and!7639)))

(declare-fun mapNonEmpty!4451 () Bool)

(declare-fun mapRes!4451 () Bool)

(declare-fun tp!10869 () Bool)

(declare-fun e!81145 () Bool)

(assert (=> mapNonEmpty!4451 (= mapRes!4451 (and tp!10869 e!81145))))

(declare-datatypes ((V!3419 0))(
  ( (V!3420 (val!1459 Int)) )
))
(declare-datatypes ((array!4670 0))(
  ( (array!4671 (arr!2212 (Array (_ BitVec 32) (_ BitVec 64))) (size!2475 (_ BitVec 32))) )
))
(declare-datatypes ((ValueCell!1071 0))(
  ( (ValueCellFull!1071 (v!3097 V!3419)) (EmptyCell!1071) )
))
(declare-datatypes ((array!4672 0))(
  ( (array!4673 (arr!2213 (Array (_ BitVec 32) ValueCell!1071)) (size!2476 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1050 0))(
  ( (LongMapFixedSize!1051 (defaultEntry!2760 Int) (mask!7003 (_ BitVec 32)) (extraKeys!2545 (_ BitVec 32)) (zeroValue!2625 V!3419) (minValue!2625 V!3419) (_size!574 (_ BitVec 32)) (_keys!4489 array!4670) (_values!2743 array!4672) (_vacant!574 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!842 0))(
  ( (Cell!843 (v!3098 LongMapFixedSize!1050)) )
))
(declare-datatypes ((LongMap!842 0))(
  ( (LongMap!843 (underlying!432 Cell!842)) )
))
(declare-fun thiss!992 () LongMap!842)

(declare-fun mapValue!4452 () ValueCell!1071)

(declare-fun mapRest!4452 () (Array (_ BitVec 32) ValueCell!1071))

(declare-fun mapKey!4452 () (_ BitVec 32))

(assert (=> mapNonEmpty!4451 (= (arr!2213 (_values!2743 (v!3098 (underlying!432 thiss!992)))) (store mapRest!4452 mapKey!4452 mapValue!4452))))

(declare-fun e!81140 () Bool)

(declare-fun tp_is_empty!2829 () Bool)

(declare-fun newMap!16 () LongMapFixedSize!1050)

(declare-fun e!81144 () Bool)

(declare-fun array_inv!1353 (array!4670) Bool)

(declare-fun array_inv!1354 (array!4672) Bool)

(assert (=> b!124129 (= e!81140 (and tp!10870 tp_is_empty!2829 (array_inv!1353 (_keys!4489 newMap!16)) (array_inv!1354 (_values!2743 newMap!16)) e!81144))))

(declare-fun b!124130 () Bool)

(declare-fun e!81146 () Bool)

(declare-fun e!81148 () Bool)

(assert (=> b!124130 (= e!81146 e!81148)))

(declare-fun b!124131 () Bool)

(declare-fun res!60201 () Bool)

(declare-fun e!81150 () Bool)

(assert (=> b!124131 (=> (not res!60201) (not e!81150))))

(declare-fun from!355 () (_ BitVec 32))

(assert (=> b!124131 (= res!60201 (and (bvsge from!355 #b00000000000000000000000000000000) (bvslt from!355 (size!2475 (_keys!4489 (v!3098 (underlying!432 thiss!992)))))))))

(declare-fun b!124132 () Bool)

(declare-fun e!81139 () Bool)

(assert (=> b!124132 (= e!81139 tp_is_empty!2829)))

(declare-fun e!81147 () Bool)

(declare-fun e!81138 () Bool)

(assert (=> b!124133 (= e!81147 (and tp!10871 tp_is_empty!2829 (array_inv!1353 (_keys!4489 (v!3098 (underlying!432 thiss!992)))) (array_inv!1354 (_values!2743 (v!3098 (underlying!432 thiss!992)))) e!81138))))

(declare-fun b!124134 () Bool)

(declare-fun e!81151 () Bool)

(assert (=> b!124134 (= e!81150 e!81151)))

(declare-fun res!60200 () Bool)

(assert (=> b!124134 (=> (not res!60200) (not e!81151))))

(declare-datatypes ((tuple2!2554 0))(
  ( (tuple2!2555 (_1!1287 (_ BitVec 64)) (_2!1287 V!3419)) )
))
(declare-datatypes ((List!1713 0))(
  ( (Nil!1710) (Cons!1709 (h!2310 tuple2!2554) (t!6040 List!1713)) )
))
(declare-datatypes ((ListLongMap!1677 0))(
  ( (ListLongMap!1678 (toList!854 List!1713)) )
))
(declare-fun lt!63842 () ListLongMap!1677)

(declare-fun lt!63844 () ListLongMap!1677)

(assert (=> b!124134 (= res!60200 (and (= lt!63844 lt!63842) (not (= (select (arr!2212 (_keys!4489 (v!3098 (underlying!432 thiss!992)))) from!355) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!2212 (_keys!4489 (v!3098 (underlying!432 thiss!992)))) from!355) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun map!1375 (LongMapFixedSize!1050) ListLongMap!1677)

(assert (=> b!124134 (= lt!63842 (map!1375 newMap!16))))

(declare-fun getCurrentListMap!526 (array!4670 array!4672 (_ BitVec 32) (_ BitVec 32) V!3419 V!3419 (_ BitVec 32) Int) ListLongMap!1677)

(assert (=> b!124134 (= lt!63844 (getCurrentListMap!526 (_keys!4489 (v!3098 (underlying!432 thiss!992))) (_values!2743 (v!3098 (underlying!432 thiss!992))) (mask!7003 (v!3098 (underlying!432 thiss!992))) (extraKeys!2545 (v!3098 (underlying!432 thiss!992))) (zeroValue!2625 (v!3098 (underlying!432 thiss!992))) (minValue!2625 (v!3098 (underlying!432 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2760 (v!3098 (underlying!432 thiss!992)))))))

(declare-fun b!124128 () Bool)

(declare-fun e!81137 () Bool)

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!124128 (= e!81137 (not (validMask!0 (mask!7003 (v!3098 (underlying!432 thiss!992))))))))

(declare-fun res!60199 () Bool)

(assert (=> start!13534 (=> (not res!60199) (not e!81150))))

(declare-fun valid!495 (LongMap!842) Bool)

(assert (=> start!13534 (= res!60199 (valid!495 thiss!992))))

(assert (=> start!13534 e!81150))

(assert (=> start!13534 e!81146))

(assert (=> start!13534 true))

(assert (=> start!13534 e!81140))

(declare-fun mapIsEmpty!4451 () Bool)

(declare-fun mapRes!4452 () Bool)

(assert (=> mapIsEmpty!4451 mapRes!4452))

(declare-fun b!124135 () Bool)

(assert (=> b!124135 (= e!81151 e!81137)))

(declare-fun res!60202 () Bool)

(assert (=> b!124135 (=> (not res!60202) (not e!81137))))

(declare-fun contains!872 (ListLongMap!1677 (_ BitVec 64)) Bool)

(assert (=> b!124135 (= res!60202 (contains!872 lt!63842 (select (arr!2212 (_keys!4489 (v!3098 (underlying!432 thiss!992)))) from!355)))))

(declare-datatypes ((tuple2!2556 0))(
  ( (tuple2!2557 (_1!1288 Bool) (_2!1288 LongMapFixedSize!1050)) )
))
(declare-fun lt!63843 () tuple2!2556)

(declare-fun update!180 (LongMapFixedSize!1050 (_ BitVec 64) V!3419) tuple2!2556)

(declare-fun get!1440 (ValueCell!1071 V!3419) V!3419)

(declare-fun dynLambda!413 (Int (_ BitVec 64)) V!3419)

(assert (=> b!124135 (= lt!63843 (update!180 newMap!16 (select (arr!2212 (_keys!4489 (v!3098 (underlying!432 thiss!992)))) from!355) (get!1440 (select (arr!2213 (_values!2743 (v!3098 (underlying!432 thiss!992)))) from!355) (dynLambda!413 (defaultEntry!2760 (v!3098 (underlying!432 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!124136 () Bool)

(declare-fun e!81142 () Bool)

(assert (=> b!124136 (= e!81142 tp_is_empty!2829)))

(declare-fun b!124137 () Bool)

(assert (=> b!124137 (= e!81138 (and e!81139 mapRes!4451))))

(declare-fun condMapEmpty!4452 () Bool)

(declare-fun mapDefault!4451 () ValueCell!1071)

(assert (=> b!124137 (= condMapEmpty!4452 (= (arr!2213 (_values!2743 (v!3098 (underlying!432 thiss!992)))) ((as const (Array (_ BitVec 32) ValueCell!1071)) mapDefault!4451)))))

(declare-fun b!124138 () Bool)

(declare-fun e!81141 () Bool)

(assert (=> b!124138 (= e!81141 tp_is_empty!2829)))

(declare-fun mapNonEmpty!4452 () Bool)

(declare-fun tp!10872 () Bool)

(assert (=> mapNonEmpty!4452 (= mapRes!4452 (and tp!10872 e!81141))))

(declare-fun mapValue!4451 () ValueCell!1071)

(declare-fun mapRest!4451 () (Array (_ BitVec 32) ValueCell!1071))

(declare-fun mapKey!4451 () (_ BitVec 32))

(assert (=> mapNonEmpty!4452 (= (arr!2213 (_values!2743 newMap!16)) (store mapRest!4451 mapKey!4451 mapValue!4451))))

(declare-fun mapIsEmpty!4452 () Bool)

(assert (=> mapIsEmpty!4452 mapRes!4451))

(declare-fun b!124139 () Bool)

(declare-fun res!60198 () Bool)

(assert (=> b!124139 (=> (not res!60198) (not e!81150))))

(assert (=> b!124139 (= res!60198 (bvsge (bvadd #b00000000000000000000000000000001 (mask!7003 newMap!16)) (_size!574 (v!3098 (underlying!432 thiss!992)))))))

(declare-fun b!124140 () Bool)

(assert (=> b!124140 (= e!81144 (and e!81142 mapRes!4452))))

(declare-fun condMapEmpty!4451 () Bool)

(declare-fun mapDefault!4452 () ValueCell!1071)

(assert (=> b!124140 (= condMapEmpty!4451 (= (arr!2213 (_values!2743 newMap!16)) ((as const (Array (_ BitVec 32) ValueCell!1071)) mapDefault!4452)))))

(declare-fun b!124141 () Bool)

(declare-fun res!60203 () Bool)

(assert (=> b!124141 (=> (not res!60203) (not e!81150))))

(declare-fun valid!496 (LongMapFixedSize!1050) Bool)

(assert (=> b!124141 (= res!60203 (valid!496 newMap!16))))

(declare-fun b!124142 () Bool)

(assert (=> b!124142 (= e!81148 e!81147)))

(declare-fun b!124143 () Bool)

(assert (=> b!124143 (= e!81145 tp_is_empty!2829)))

(assert (= (and start!13534 res!60199) b!124131))

(assert (= (and b!124131 res!60201) b!124141))

(assert (= (and b!124141 res!60203) b!124139))

(assert (= (and b!124139 res!60198) b!124134))

(assert (= (and b!124134 res!60200) b!124135))

(assert (= (and b!124135 res!60202) b!124128))

(assert (= (and b!124137 condMapEmpty!4452) mapIsEmpty!4452))

(assert (= (and b!124137 (not condMapEmpty!4452)) mapNonEmpty!4451))

(get-info :version)

(assert (= (and mapNonEmpty!4451 ((_ is ValueCellFull!1071) mapValue!4452)) b!124143))

(assert (= (and b!124137 ((_ is ValueCellFull!1071) mapDefault!4451)) b!124132))

(assert (= b!124133 b!124137))

(assert (= b!124142 b!124133))

(assert (= b!124130 b!124142))

(assert (= start!13534 b!124130))

(assert (= (and b!124140 condMapEmpty!4451) mapIsEmpty!4451))

(assert (= (and b!124140 (not condMapEmpty!4451)) mapNonEmpty!4452))

(assert (= (and mapNonEmpty!4452 ((_ is ValueCellFull!1071) mapValue!4451)) b!124138))

(assert (= (and b!124140 ((_ is ValueCellFull!1071) mapDefault!4452)) b!124136))

(assert (= b!124129 b!124140))

(assert (= start!13534 b!124129))

(declare-fun b_lambda!5477 () Bool)

(assert (=> (not b_lambda!5477) (not b!124135)))

(declare-fun t!6037 () Bool)

(declare-fun tb!2289 () Bool)

(assert (=> (and b!124133 (= (defaultEntry!2760 (v!3098 (underlying!432 thiss!992))) (defaultEntry!2760 (v!3098 (underlying!432 thiss!992)))) t!6037) tb!2289))

(declare-fun result!3797 () Bool)

(assert (=> tb!2289 (= result!3797 tp_is_empty!2829)))

(assert (=> b!124135 t!6037))

(declare-fun b_and!7641 () Bool)

(assert (= b_and!7637 (and (=> t!6037 result!3797) b_and!7641)))

(declare-fun tb!2291 () Bool)

(declare-fun t!6039 () Bool)

(assert (=> (and b!124129 (= (defaultEntry!2760 newMap!16) (defaultEntry!2760 (v!3098 (underlying!432 thiss!992)))) t!6039) tb!2291))

(declare-fun result!3801 () Bool)

(assert (= result!3801 result!3797))

(assert (=> b!124135 t!6039))

(declare-fun b_and!7643 () Bool)

(assert (= b_and!7639 (and (=> t!6039 result!3801) b_and!7643)))

(declare-fun m!144421 () Bool)

(assert (=> b!124134 m!144421))

(declare-fun m!144423 () Bool)

(assert (=> b!124134 m!144423))

(declare-fun m!144425 () Bool)

(assert (=> b!124134 m!144425))

(declare-fun m!144427 () Bool)

(assert (=> b!124135 m!144427))

(declare-fun m!144429 () Bool)

(assert (=> b!124135 m!144429))

(declare-fun m!144431 () Bool)

(assert (=> b!124135 m!144431))

(assert (=> b!124135 m!144421))

(assert (=> b!124135 m!144429))

(assert (=> b!124135 m!144421))

(declare-fun m!144433 () Bool)

(assert (=> b!124135 m!144433))

(assert (=> b!124135 m!144421))

(assert (=> b!124135 m!144431))

(declare-fun m!144435 () Bool)

(assert (=> b!124135 m!144435))

(assert (=> b!124135 m!144427))

(declare-fun m!144437 () Bool)

(assert (=> mapNonEmpty!4452 m!144437))

(declare-fun m!144439 () Bool)

(assert (=> b!124141 m!144439))

(declare-fun m!144441 () Bool)

(assert (=> b!124128 m!144441))

(declare-fun m!144443 () Bool)

(assert (=> b!124129 m!144443))

(declare-fun m!144445 () Bool)

(assert (=> b!124129 m!144445))

(declare-fun m!144447 () Bool)

(assert (=> start!13534 m!144447))

(declare-fun m!144449 () Bool)

(assert (=> mapNonEmpty!4451 m!144449))

(declare-fun m!144451 () Bool)

(assert (=> b!124133 m!144451))

(declare-fun m!144453 () Bool)

(assert (=> b!124133 m!144453))

(check-sat (not b!124128) (not b_lambda!5477) tp_is_empty!2829 (not b!124129) (not b!124134) b_and!7641 (not b_next!2825) (not start!13534) (not b_next!2827) (not mapNonEmpty!4451) (not b!124141) (not mapNonEmpty!4452) (not b!124135) b_and!7643 (not b!124133))
(check-sat b_and!7641 b_and!7643 (not b_next!2825) (not b_next!2827))
(get-model)

(declare-fun b_lambda!5481 () Bool)

(assert (= b_lambda!5477 (or (and b!124133 b_free!2825) (and b!124129 b_free!2827 (= (defaultEntry!2760 newMap!16) (defaultEntry!2760 (v!3098 (underlying!432 thiss!992))))) b_lambda!5481)))

(check-sat (not b!124128) (not b!124129) (not b!124134) b_and!7641 (not b_next!2825) (not start!13534) (not b_next!2827) (not mapNonEmpty!4451) (not b!124141) tp_is_empty!2829 (not b_lambda!5481) (not mapNonEmpty!4452) (not b!124135) b_and!7643 (not b!124133))
(check-sat b_and!7641 b_and!7643 (not b_next!2825) (not b_next!2827))
(get-model)

(declare-fun d!37309 () Bool)

(assert (=> d!37309 (= (array_inv!1353 (_keys!4489 newMap!16)) (bvsge (size!2475 (_keys!4489 newMap!16)) #b00000000000000000000000000000000))))

(assert (=> b!124129 d!37309))

(declare-fun d!37311 () Bool)

(assert (=> d!37311 (= (array_inv!1354 (_values!2743 newMap!16)) (bvsge (size!2476 (_values!2743 newMap!16)) #b00000000000000000000000000000000))))

(assert (=> b!124129 d!37311))

(declare-fun d!37313 () Bool)

(assert (=> d!37313 (= (valid!495 thiss!992) (valid!496 (v!3098 (underlying!432 thiss!992))))))

(declare-fun bs!5144 () Bool)

(assert (= bs!5144 d!37313))

(declare-fun m!144489 () Bool)

(assert (=> bs!5144 m!144489))

(assert (=> start!13534 d!37313))

(declare-fun d!37315 () Bool)

(assert (=> d!37315 (= (map!1375 newMap!16) (getCurrentListMap!526 (_keys!4489 newMap!16) (_values!2743 newMap!16) (mask!7003 newMap!16) (extraKeys!2545 newMap!16) (zeroValue!2625 newMap!16) (minValue!2625 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2760 newMap!16)))))

(declare-fun bs!5145 () Bool)

(assert (= bs!5145 d!37315))

(declare-fun m!144491 () Bool)

(assert (=> bs!5145 m!144491))

(assert (=> b!124134 d!37315))

(declare-fun b!124238 () Bool)

(declare-fun e!81230 () ListLongMap!1677)

(declare-fun call!13198 () ListLongMap!1677)

(assert (=> b!124238 (= e!81230 call!13198)))

(declare-fun d!37317 () Bool)

(declare-fun e!81224 () Bool)

(assert (=> d!37317 e!81224))

(declare-fun res!60246 () Bool)

(assert (=> d!37317 (=> (not res!60246) (not e!81224))))

(assert (=> d!37317 (= res!60246 (or (bvsge (bvadd #b00000000000000000000000000000001 from!355) (size!2475 (_keys!4489 (v!3098 (underlying!432 thiss!992))))) (and (bvsge (bvadd #b00000000000000000000000000000001 from!355) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!355) (size!2475 (_keys!4489 (v!3098 (underlying!432 thiss!992))))))))))

(declare-fun lt!63911 () ListLongMap!1677)

(declare-fun lt!63906 () ListLongMap!1677)

(assert (=> d!37317 (= lt!63911 lt!63906)))

(declare-datatypes ((Unit!3872 0))(
  ( (Unit!3873) )
))
(declare-fun lt!63918 () Unit!3872)

(declare-fun e!81223 () Unit!3872)

(assert (=> d!37317 (= lt!63918 e!81223)))

(declare-fun c!22578 () Bool)

(declare-fun e!81232 () Bool)

(assert (=> d!37317 (= c!22578 e!81232)))

(declare-fun res!60240 () Bool)

(assert (=> d!37317 (=> (not res!60240) (not e!81232))))

(assert (=> d!37317 (= res!60240 (bvslt (bvadd #b00000000000000000000000000000001 from!355) (size!2475 (_keys!4489 (v!3098 (underlying!432 thiss!992))))))))

(declare-fun e!81233 () ListLongMap!1677)

(assert (=> d!37317 (= lt!63906 e!81233)))

(declare-fun c!22582 () Bool)

(assert (=> d!37317 (= c!22582 (and (not (= (bvand (extraKeys!2545 (v!3098 (underlying!432 thiss!992))) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (extraKeys!2545 (v!3098 (underlying!432 thiss!992))) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!37317 (validMask!0 (mask!7003 (v!3098 (underlying!432 thiss!992))))))

(assert (=> d!37317 (= (getCurrentListMap!526 (_keys!4489 (v!3098 (underlying!432 thiss!992))) (_values!2743 (v!3098 (underlying!432 thiss!992))) (mask!7003 (v!3098 (underlying!432 thiss!992))) (extraKeys!2545 (v!3098 (underlying!432 thiss!992))) (zeroValue!2625 (v!3098 (underlying!432 thiss!992))) (minValue!2625 (v!3098 (underlying!432 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2760 (v!3098 (underlying!432 thiss!992)))) lt!63911)))

(declare-fun b!124239 () Bool)

(declare-fun c!22580 () Bool)

(assert (=> b!124239 (= c!22580 (and (not (= (bvand (extraKeys!2545 (v!3098 (underlying!432 thiss!992))) #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand (extraKeys!2545 (v!3098 (underlying!432 thiss!992))) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun e!81234 () ListLongMap!1677)

(assert (=> b!124239 (= e!81230 e!81234)))

(declare-fun bm!13189 () Bool)

(declare-fun call!13197 () Bool)

(assert (=> bm!13189 (= call!13197 (contains!872 lt!63911 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!124240 () Bool)

(declare-fun lt!63902 () Unit!3872)

(assert (=> b!124240 (= e!81223 lt!63902)))

(declare-fun lt!63915 () ListLongMap!1677)

(declare-fun getCurrentListMapNoExtraKeys!130 (array!4670 array!4672 (_ BitVec 32) (_ BitVec 32) V!3419 V!3419 (_ BitVec 32) Int) ListLongMap!1677)

(assert (=> b!124240 (= lt!63915 (getCurrentListMapNoExtraKeys!130 (_keys!4489 (v!3098 (underlying!432 thiss!992))) (_values!2743 (v!3098 (underlying!432 thiss!992))) (mask!7003 (v!3098 (underlying!432 thiss!992))) (extraKeys!2545 (v!3098 (underlying!432 thiss!992))) (zeroValue!2625 (v!3098 (underlying!432 thiss!992))) (minValue!2625 (v!3098 (underlying!432 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2760 (v!3098 (underlying!432 thiss!992)))))))

(declare-fun lt!63898 () (_ BitVec 64))

(assert (=> b!124240 (= lt!63898 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!63917 () (_ BitVec 64))

(assert (=> b!124240 (= lt!63917 (select (arr!2212 (_keys!4489 (v!3098 (underlying!432 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)))))

(declare-fun lt!63908 () Unit!3872)

(declare-fun addStillContains!85 (ListLongMap!1677 (_ BitVec 64) V!3419 (_ BitVec 64)) Unit!3872)

(assert (=> b!124240 (= lt!63908 (addStillContains!85 lt!63915 lt!63898 (zeroValue!2625 (v!3098 (underlying!432 thiss!992))) lt!63917))))

(declare-fun +!163 (ListLongMap!1677 tuple2!2554) ListLongMap!1677)

(assert (=> b!124240 (contains!872 (+!163 lt!63915 (tuple2!2555 lt!63898 (zeroValue!2625 (v!3098 (underlying!432 thiss!992))))) lt!63917)))

(declare-fun lt!63901 () Unit!3872)

(assert (=> b!124240 (= lt!63901 lt!63908)))

(declare-fun lt!63899 () ListLongMap!1677)

(assert (=> b!124240 (= lt!63899 (getCurrentListMapNoExtraKeys!130 (_keys!4489 (v!3098 (underlying!432 thiss!992))) (_values!2743 (v!3098 (underlying!432 thiss!992))) (mask!7003 (v!3098 (underlying!432 thiss!992))) (extraKeys!2545 (v!3098 (underlying!432 thiss!992))) (zeroValue!2625 (v!3098 (underlying!432 thiss!992))) (minValue!2625 (v!3098 (underlying!432 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2760 (v!3098 (underlying!432 thiss!992)))))))

(declare-fun lt!63907 () (_ BitVec 64))

(assert (=> b!124240 (= lt!63907 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!63914 () (_ BitVec 64))

(assert (=> b!124240 (= lt!63914 (select (arr!2212 (_keys!4489 (v!3098 (underlying!432 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)))))

(declare-fun lt!63910 () Unit!3872)

(declare-fun addApplyDifferent!85 (ListLongMap!1677 (_ BitVec 64) V!3419 (_ BitVec 64)) Unit!3872)

(assert (=> b!124240 (= lt!63910 (addApplyDifferent!85 lt!63899 lt!63907 (minValue!2625 (v!3098 (underlying!432 thiss!992))) lt!63914))))

(declare-fun apply!109 (ListLongMap!1677 (_ BitVec 64)) V!3419)

(assert (=> b!124240 (= (apply!109 (+!163 lt!63899 (tuple2!2555 lt!63907 (minValue!2625 (v!3098 (underlying!432 thiss!992))))) lt!63914) (apply!109 lt!63899 lt!63914))))

(declare-fun lt!63900 () Unit!3872)

(assert (=> b!124240 (= lt!63900 lt!63910)))

(declare-fun lt!63909 () ListLongMap!1677)

(assert (=> b!124240 (= lt!63909 (getCurrentListMapNoExtraKeys!130 (_keys!4489 (v!3098 (underlying!432 thiss!992))) (_values!2743 (v!3098 (underlying!432 thiss!992))) (mask!7003 (v!3098 (underlying!432 thiss!992))) (extraKeys!2545 (v!3098 (underlying!432 thiss!992))) (zeroValue!2625 (v!3098 (underlying!432 thiss!992))) (minValue!2625 (v!3098 (underlying!432 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2760 (v!3098 (underlying!432 thiss!992)))))))

(declare-fun lt!63913 () (_ BitVec 64))

(assert (=> b!124240 (= lt!63913 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!63905 () (_ BitVec 64))

(assert (=> b!124240 (= lt!63905 (select (arr!2212 (_keys!4489 (v!3098 (underlying!432 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)))))

(declare-fun lt!63919 () Unit!3872)

(assert (=> b!124240 (= lt!63919 (addApplyDifferent!85 lt!63909 lt!63913 (zeroValue!2625 (v!3098 (underlying!432 thiss!992))) lt!63905))))

(assert (=> b!124240 (= (apply!109 (+!163 lt!63909 (tuple2!2555 lt!63913 (zeroValue!2625 (v!3098 (underlying!432 thiss!992))))) lt!63905) (apply!109 lt!63909 lt!63905))))

(declare-fun lt!63903 () Unit!3872)

(assert (=> b!124240 (= lt!63903 lt!63919)))

(declare-fun lt!63904 () ListLongMap!1677)

(assert (=> b!124240 (= lt!63904 (getCurrentListMapNoExtraKeys!130 (_keys!4489 (v!3098 (underlying!432 thiss!992))) (_values!2743 (v!3098 (underlying!432 thiss!992))) (mask!7003 (v!3098 (underlying!432 thiss!992))) (extraKeys!2545 (v!3098 (underlying!432 thiss!992))) (zeroValue!2625 (v!3098 (underlying!432 thiss!992))) (minValue!2625 (v!3098 (underlying!432 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2760 (v!3098 (underlying!432 thiss!992)))))))

(declare-fun lt!63912 () (_ BitVec 64))

(assert (=> b!124240 (= lt!63912 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!63916 () (_ BitVec 64))

(assert (=> b!124240 (= lt!63916 (select (arr!2212 (_keys!4489 (v!3098 (underlying!432 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)))))

(assert (=> b!124240 (= lt!63902 (addApplyDifferent!85 lt!63904 lt!63912 (minValue!2625 (v!3098 (underlying!432 thiss!992))) lt!63916))))

(assert (=> b!124240 (= (apply!109 (+!163 lt!63904 (tuple2!2555 lt!63912 (minValue!2625 (v!3098 (underlying!432 thiss!992))))) lt!63916) (apply!109 lt!63904 lt!63916))))

(declare-fun b!124241 () Bool)

(declare-fun e!81227 () Bool)

(declare-fun e!81225 () Bool)

(assert (=> b!124241 (= e!81227 e!81225)))

(declare-fun res!60245 () Bool)

(assert (=> b!124241 (= res!60245 call!13197)))

(assert (=> b!124241 (=> (not res!60245) (not e!81225))))

(declare-fun bm!13190 () Bool)

(declare-fun call!13195 () ListLongMap!1677)

(assert (=> bm!13190 (= call!13198 call!13195)))

(declare-fun b!124242 () Bool)

(declare-fun Unit!3874 () Unit!3872)

(assert (=> b!124242 (= e!81223 Unit!3874)))

(declare-fun b!124243 () Bool)

(declare-fun res!60241 () Bool)

(assert (=> b!124243 (=> (not res!60241) (not e!81224))))

(assert (=> b!124243 (= res!60241 e!81227)))

(declare-fun c!22583 () Bool)

(assert (=> b!124243 (= c!22583 (not (= (bvand (extraKeys!2545 (v!3098 (underlying!432 thiss!992))) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun bm!13191 () Bool)

(declare-fun call!13193 () ListLongMap!1677)

(declare-fun call!13194 () ListLongMap!1677)

(assert (=> bm!13191 (= call!13193 call!13194)))

(declare-fun b!124244 () Bool)

(declare-fun res!60242 () Bool)

(assert (=> b!124244 (=> (not res!60242) (not e!81224))))

(declare-fun e!81231 () Bool)

(assert (=> b!124244 (= res!60242 e!81231)))

(declare-fun res!60248 () Bool)

(assert (=> b!124244 (=> res!60248 e!81231)))

(declare-fun e!81235 () Bool)

(assert (=> b!124244 (= res!60248 (not e!81235))))

(declare-fun res!60244 () Bool)

(assert (=> b!124244 (=> (not res!60244) (not e!81235))))

(assert (=> b!124244 (= res!60244 (bvslt (bvadd #b00000000000000000000000000000001 from!355) (size!2475 (_keys!4489 (v!3098 (underlying!432 thiss!992))))))))

(declare-fun e!81228 () Bool)

(declare-fun b!124245 () Bool)

(assert (=> b!124245 (= e!81228 (= (apply!109 lt!63911 (select (arr!2212 (_keys!4489 (v!3098 (underlying!432 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))) (get!1440 (select (arr!2213 (_values!2743 (v!3098 (underlying!432 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (dynLambda!413 (defaultEntry!2760 (v!3098 (underlying!432 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!124245 (and (bvsge (bvadd #b00000000000000000000000000000001 from!355) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!355) (size!2476 (_values!2743 (v!3098 (underlying!432 thiss!992))))))))

(assert (=> b!124245 (and (bvsge (bvadd #b00000000000000000000000000000001 from!355) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!355) (size!2475 (_keys!4489 (v!3098 (underlying!432 thiss!992))))))))

(declare-fun b!124246 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!124246 (= e!81235 (validKeyInArray!0 (select (arr!2212 (_keys!4489 (v!3098 (underlying!432 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))))))

(declare-fun b!124247 () Bool)

(declare-fun e!81226 () Bool)

(declare-fun e!81229 () Bool)

(assert (=> b!124247 (= e!81226 e!81229)))

(declare-fun res!60247 () Bool)

(declare-fun call!13196 () Bool)

(assert (=> b!124247 (= res!60247 call!13196)))

(assert (=> b!124247 (=> (not res!60247) (not e!81229))))

(declare-fun b!124248 () Bool)

(assert (=> b!124248 (= e!81227 (not call!13197))))

(declare-fun b!124249 () Bool)

(assert (=> b!124249 (= e!81224 e!81226)))

(declare-fun c!22579 () Bool)

(assert (=> b!124249 (= c!22579 (not (= (bvand (extraKeys!2545 (v!3098 (underlying!432 thiss!992))) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!124250 () Bool)

(assert (=> b!124250 (= e!81232 (validKeyInArray!0 (select (arr!2212 (_keys!4489 (v!3098 (underlying!432 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))))))

(declare-fun b!124251 () Bool)

(assert (=> b!124251 (= e!81234 call!13193)))

(declare-fun bm!13192 () Bool)

(declare-fun call!13192 () ListLongMap!1677)

(assert (=> bm!13192 (= call!13194 call!13192)))

(declare-fun b!124252 () Bool)

(assert (=> b!124252 (= e!81231 e!81228)))

(declare-fun res!60243 () Bool)

(assert (=> b!124252 (=> (not res!60243) (not e!81228))))

(assert (=> b!124252 (= res!60243 (contains!872 lt!63911 (select (arr!2212 (_keys!4489 (v!3098 (underlying!432 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))))))

(assert (=> b!124252 (and (bvsge (bvadd #b00000000000000000000000000000001 from!355) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!355) (size!2475 (_keys!4489 (v!3098 (underlying!432 thiss!992))))))))

(declare-fun b!124253 () Bool)

(assert (=> b!124253 (= e!81229 (= (apply!109 lt!63911 #b1000000000000000000000000000000000000000000000000000000000000000) (minValue!2625 (v!3098 (underlying!432 thiss!992)))))))

(declare-fun b!124254 () Bool)

(assert (=> b!124254 (= e!81234 call!13198)))

(declare-fun b!124255 () Bool)

(assert (=> b!124255 (= e!81233 (+!163 call!13195 (tuple2!2555 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2625 (v!3098 (underlying!432 thiss!992))))))))

(declare-fun b!124256 () Bool)

(assert (=> b!124256 (= e!81233 e!81230)))

(declare-fun c!22581 () Bool)

(assert (=> b!124256 (= c!22581 (and (not (= (bvand (extraKeys!2545 (v!3098 (underlying!432 thiss!992))) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand (extraKeys!2545 (v!3098 (underlying!432 thiss!992))) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!124257 () Bool)

(assert (=> b!124257 (= e!81225 (= (apply!109 lt!63911 #b0000000000000000000000000000000000000000000000000000000000000000) (zeroValue!2625 (v!3098 (underlying!432 thiss!992)))))))

(declare-fun bm!13193 () Bool)

(assert (=> bm!13193 (= call!13195 (+!163 (ite c!22582 call!13192 (ite c!22581 call!13194 call!13193)) (ite (or c!22582 c!22581) (tuple2!2555 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2625 (v!3098 (underlying!432 thiss!992)))) (tuple2!2555 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2625 (v!3098 (underlying!432 thiss!992)))))))))

(declare-fun b!124258 () Bool)

(assert (=> b!124258 (= e!81226 (not call!13196))))

(declare-fun bm!13194 () Bool)

(assert (=> bm!13194 (= call!13196 (contains!872 lt!63911 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun bm!13195 () Bool)

(assert (=> bm!13195 (= call!13192 (getCurrentListMapNoExtraKeys!130 (_keys!4489 (v!3098 (underlying!432 thiss!992))) (_values!2743 (v!3098 (underlying!432 thiss!992))) (mask!7003 (v!3098 (underlying!432 thiss!992))) (extraKeys!2545 (v!3098 (underlying!432 thiss!992))) (zeroValue!2625 (v!3098 (underlying!432 thiss!992))) (minValue!2625 (v!3098 (underlying!432 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2760 (v!3098 (underlying!432 thiss!992)))))))

(assert (= (and d!37317 c!22582) b!124255))

(assert (= (and d!37317 (not c!22582)) b!124256))

(assert (= (and b!124256 c!22581) b!124238))

(assert (= (and b!124256 (not c!22581)) b!124239))

(assert (= (and b!124239 c!22580) b!124254))

(assert (= (and b!124239 (not c!22580)) b!124251))

(assert (= (or b!124254 b!124251) bm!13191))

(assert (= (or b!124238 bm!13191) bm!13192))

(assert (= (or b!124238 b!124254) bm!13190))

(assert (= (or b!124255 bm!13192) bm!13195))

(assert (= (or b!124255 bm!13190) bm!13193))

(assert (= (and d!37317 res!60240) b!124250))

(assert (= (and d!37317 c!22578) b!124240))

(assert (= (and d!37317 (not c!22578)) b!124242))

(assert (= (and d!37317 res!60246) b!124244))

(assert (= (and b!124244 res!60244) b!124246))

(assert (= (and b!124244 (not res!60248)) b!124252))

(assert (= (and b!124252 res!60243) b!124245))

(assert (= (and b!124244 res!60242) b!124243))

(assert (= (and b!124243 c!22583) b!124241))

(assert (= (and b!124243 (not c!22583)) b!124248))

(assert (= (and b!124241 res!60245) b!124257))

(assert (= (or b!124241 b!124248) bm!13189))

(assert (= (and b!124243 res!60241) b!124249))

(assert (= (and b!124249 c!22579) b!124247))

(assert (= (and b!124249 (not c!22579)) b!124258))

(assert (= (and b!124247 res!60247) b!124253))

(assert (= (or b!124247 b!124258) bm!13194))

(declare-fun b_lambda!5483 () Bool)

(assert (=> (not b_lambda!5483) (not b!124245)))

(assert (=> b!124245 t!6037))

(declare-fun b_and!7653 () Bool)

(assert (= b_and!7641 (and (=> t!6037 result!3797) b_and!7653)))

(assert (=> b!124245 t!6039))

(declare-fun b_and!7655 () Bool)

(assert (= b_and!7643 (and (=> t!6039 result!3801) b_and!7655)))

(declare-fun m!144493 () Bool)

(assert (=> b!124245 m!144493))

(declare-fun m!144495 () Bool)

(assert (=> b!124245 m!144495))

(declare-fun m!144497 () Bool)

(assert (=> b!124245 m!144497))

(assert (=> b!124245 m!144493))

(assert (=> b!124245 m!144429))

(assert (=> b!124245 m!144497))

(assert (=> b!124245 m!144429))

(declare-fun m!144499 () Bool)

(assert (=> b!124245 m!144499))

(declare-fun m!144501 () Bool)

(assert (=> bm!13195 m!144501))

(declare-fun m!144503 () Bool)

(assert (=> bm!13189 m!144503))

(assert (=> b!124252 m!144493))

(assert (=> b!124252 m!144493))

(declare-fun m!144505 () Bool)

(assert (=> b!124252 m!144505))

(assert (=> d!37317 m!144441))

(declare-fun m!144507 () Bool)

(assert (=> bm!13194 m!144507))

(assert (=> b!124250 m!144493))

(assert (=> b!124250 m!144493))

(declare-fun m!144509 () Bool)

(assert (=> b!124250 m!144509))

(assert (=> b!124246 m!144493))

(assert (=> b!124246 m!144493))

(assert (=> b!124246 m!144509))

(declare-fun m!144511 () Bool)

(assert (=> b!124255 m!144511))

(declare-fun m!144513 () Bool)

(assert (=> b!124240 m!144513))

(assert (=> b!124240 m!144501))

(declare-fun m!144515 () Bool)

(assert (=> b!124240 m!144515))

(declare-fun m!144517 () Bool)

(assert (=> b!124240 m!144517))

(declare-fun m!144519 () Bool)

(assert (=> b!124240 m!144519))

(declare-fun m!144521 () Bool)

(assert (=> b!124240 m!144521))

(declare-fun m!144523 () Bool)

(assert (=> b!124240 m!144523))

(assert (=> b!124240 m!144521))

(declare-fun m!144525 () Bool)

(assert (=> b!124240 m!144525))

(declare-fun m!144527 () Bool)

(assert (=> b!124240 m!144527))

(declare-fun m!144529 () Bool)

(assert (=> b!124240 m!144529))

(declare-fun m!144531 () Bool)

(assert (=> b!124240 m!144531))

(assert (=> b!124240 m!144519))

(declare-fun m!144533 () Bool)

(assert (=> b!124240 m!144533))

(declare-fun m!144535 () Bool)

(assert (=> b!124240 m!144535))

(declare-fun m!144537 () Bool)

(assert (=> b!124240 m!144537))

(assert (=> b!124240 m!144535))

(assert (=> b!124240 m!144529))

(assert (=> b!124240 m!144493))

(declare-fun m!144539 () Bool)

(assert (=> b!124240 m!144539))

(declare-fun m!144541 () Bool)

(assert (=> b!124240 m!144541))

(declare-fun m!144543 () Bool)

(assert (=> bm!13193 m!144543))

(declare-fun m!144545 () Bool)

(assert (=> b!124253 m!144545))

(declare-fun m!144547 () Bool)

(assert (=> b!124257 m!144547))

(assert (=> b!124134 d!37317))

(declare-fun d!37319 () Bool)

(assert (=> d!37319 (= (array_inv!1353 (_keys!4489 (v!3098 (underlying!432 thiss!992)))) (bvsge (size!2475 (_keys!4489 (v!3098 (underlying!432 thiss!992)))) #b00000000000000000000000000000000))))

(assert (=> b!124133 d!37319))

(declare-fun d!37321 () Bool)

(assert (=> d!37321 (= (array_inv!1354 (_values!2743 (v!3098 (underlying!432 thiss!992)))) (bvsge (size!2476 (_values!2743 (v!3098 (underlying!432 thiss!992)))) #b00000000000000000000000000000000))))

(assert (=> b!124133 d!37321))

(declare-fun d!37323 () Bool)

(declare-fun res!60255 () Bool)

(declare-fun e!81238 () Bool)

(assert (=> d!37323 (=> (not res!60255) (not e!81238))))

(declare-fun simpleValid!84 (LongMapFixedSize!1050) Bool)

(assert (=> d!37323 (= res!60255 (simpleValid!84 newMap!16))))

(assert (=> d!37323 (= (valid!496 newMap!16) e!81238)))

(declare-fun b!124265 () Bool)

(declare-fun res!60256 () Bool)

(assert (=> b!124265 (=> (not res!60256) (not e!81238))))

(declare-fun arrayCountValidKeys!0 (array!4670 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!124265 (= res!60256 (= (arrayCountValidKeys!0 (_keys!4489 newMap!16) #b00000000000000000000000000000000 (size!2475 (_keys!4489 newMap!16))) (_size!574 newMap!16)))))

(declare-fun b!124266 () Bool)

(declare-fun res!60257 () Bool)

(assert (=> b!124266 (=> (not res!60257) (not e!81238))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!4670 (_ BitVec 32)) Bool)

(assert (=> b!124266 (= res!60257 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!4489 newMap!16) (mask!7003 newMap!16)))))

(declare-fun b!124267 () Bool)

(declare-datatypes ((List!1714 0))(
  ( (Nil!1711) (Cons!1710 (h!2311 (_ BitVec 64)) (t!6045 List!1714)) )
))
(declare-fun arrayNoDuplicates!0 (array!4670 (_ BitVec 32) List!1714) Bool)

(assert (=> b!124267 (= e!81238 (arrayNoDuplicates!0 (_keys!4489 newMap!16) #b00000000000000000000000000000000 Nil!1711))))

(assert (= (and d!37323 res!60255) b!124265))

(assert (= (and b!124265 res!60256) b!124266))

(assert (= (and b!124266 res!60257) b!124267))

(declare-fun m!144549 () Bool)

(assert (=> d!37323 m!144549))

(declare-fun m!144551 () Bool)

(assert (=> b!124265 m!144551))

(declare-fun m!144553 () Bool)

(assert (=> b!124266 m!144553))

(declare-fun m!144555 () Bool)

(assert (=> b!124267 m!144555))

(assert (=> b!124141 d!37323))

(declare-fun d!37325 () Bool)

(assert (=> d!37325 (= (validMask!0 (mask!7003 (v!3098 (underlying!432 thiss!992)))) (and (or (= (mask!7003 (v!3098 (underlying!432 thiss!992))) #b00000000000000000000000000000111) (= (mask!7003 (v!3098 (underlying!432 thiss!992))) #b00000000000000000000000000001111) (= (mask!7003 (v!3098 (underlying!432 thiss!992))) #b00000000000000000000000000011111) (= (mask!7003 (v!3098 (underlying!432 thiss!992))) #b00000000000000000000000000111111) (= (mask!7003 (v!3098 (underlying!432 thiss!992))) #b00000000000000000000000001111111) (= (mask!7003 (v!3098 (underlying!432 thiss!992))) #b00000000000000000000000011111111) (= (mask!7003 (v!3098 (underlying!432 thiss!992))) #b00000000000000000000000111111111) (= (mask!7003 (v!3098 (underlying!432 thiss!992))) #b00000000000000000000001111111111) (= (mask!7003 (v!3098 (underlying!432 thiss!992))) #b00000000000000000000011111111111) (= (mask!7003 (v!3098 (underlying!432 thiss!992))) #b00000000000000000000111111111111) (= (mask!7003 (v!3098 (underlying!432 thiss!992))) #b00000000000000000001111111111111) (= (mask!7003 (v!3098 (underlying!432 thiss!992))) #b00000000000000000011111111111111) (= (mask!7003 (v!3098 (underlying!432 thiss!992))) #b00000000000000000111111111111111) (= (mask!7003 (v!3098 (underlying!432 thiss!992))) #b00000000000000001111111111111111) (= (mask!7003 (v!3098 (underlying!432 thiss!992))) #b00000000000000011111111111111111) (= (mask!7003 (v!3098 (underlying!432 thiss!992))) #b00000000000000111111111111111111) (= (mask!7003 (v!3098 (underlying!432 thiss!992))) #b00000000000001111111111111111111) (= (mask!7003 (v!3098 (underlying!432 thiss!992))) #b00000000000011111111111111111111) (= (mask!7003 (v!3098 (underlying!432 thiss!992))) #b00000000000111111111111111111111) (= (mask!7003 (v!3098 (underlying!432 thiss!992))) #b00000000001111111111111111111111) (= (mask!7003 (v!3098 (underlying!432 thiss!992))) #b00000000011111111111111111111111) (= (mask!7003 (v!3098 (underlying!432 thiss!992))) #b00000000111111111111111111111111) (= (mask!7003 (v!3098 (underlying!432 thiss!992))) #b00000001111111111111111111111111) (= (mask!7003 (v!3098 (underlying!432 thiss!992))) #b00000011111111111111111111111111) (= (mask!7003 (v!3098 (underlying!432 thiss!992))) #b00000111111111111111111111111111) (= (mask!7003 (v!3098 (underlying!432 thiss!992))) #b00001111111111111111111111111111) (= (mask!7003 (v!3098 (underlying!432 thiss!992))) #b00011111111111111111111111111111) (= (mask!7003 (v!3098 (underlying!432 thiss!992))) #b00111111111111111111111111111111)) (bvsle (mask!7003 (v!3098 (underlying!432 thiss!992))) #b00111111111111111111111111111111)))))

(assert (=> b!124128 d!37325))

(declare-fun d!37327 () Bool)

(declare-fun e!81244 () Bool)

(assert (=> d!37327 e!81244))

(declare-fun res!60260 () Bool)

(assert (=> d!37327 (=> res!60260 e!81244)))

(declare-fun lt!63931 () Bool)

(assert (=> d!37327 (= res!60260 (not lt!63931))))

(declare-fun lt!63928 () Bool)

(assert (=> d!37327 (= lt!63931 lt!63928)))

(declare-fun lt!63930 () Unit!3872)

(declare-fun e!81243 () Unit!3872)

(assert (=> d!37327 (= lt!63930 e!81243)))

(declare-fun c!22586 () Bool)

(assert (=> d!37327 (= c!22586 lt!63928)))

(declare-fun containsKey!168 (List!1713 (_ BitVec 64)) Bool)

(assert (=> d!37327 (= lt!63928 (containsKey!168 (toList!854 lt!63842) (select (arr!2212 (_keys!4489 (v!3098 (underlying!432 thiss!992)))) from!355)))))

(assert (=> d!37327 (= (contains!872 lt!63842 (select (arr!2212 (_keys!4489 (v!3098 (underlying!432 thiss!992)))) from!355)) lt!63931)))

(declare-fun b!124274 () Bool)

(declare-fun lt!63929 () Unit!3872)

(assert (=> b!124274 (= e!81243 lt!63929)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!117 (List!1713 (_ BitVec 64)) Unit!3872)

(assert (=> b!124274 (= lt!63929 (lemmaContainsKeyImpliesGetValueByKeyDefined!117 (toList!854 lt!63842) (select (arr!2212 (_keys!4489 (v!3098 (underlying!432 thiss!992)))) from!355)))))

(declare-datatypes ((Option!170 0))(
  ( (Some!169 (v!3102 V!3419)) (None!168) )
))
(declare-fun isDefined!118 (Option!170) Bool)

(declare-fun getValueByKey!164 (List!1713 (_ BitVec 64)) Option!170)

(assert (=> b!124274 (isDefined!118 (getValueByKey!164 (toList!854 lt!63842) (select (arr!2212 (_keys!4489 (v!3098 (underlying!432 thiss!992)))) from!355)))))

(declare-fun b!124275 () Bool)

(declare-fun Unit!3875 () Unit!3872)

(assert (=> b!124275 (= e!81243 Unit!3875)))

(declare-fun b!124276 () Bool)

(assert (=> b!124276 (= e!81244 (isDefined!118 (getValueByKey!164 (toList!854 lt!63842) (select (arr!2212 (_keys!4489 (v!3098 (underlying!432 thiss!992)))) from!355))))))

(assert (= (and d!37327 c!22586) b!124274))

(assert (= (and d!37327 (not c!22586)) b!124275))

(assert (= (and d!37327 (not res!60260)) b!124276))

(assert (=> d!37327 m!144421))

(declare-fun m!144557 () Bool)

(assert (=> d!37327 m!144557))

(assert (=> b!124274 m!144421))

(declare-fun m!144559 () Bool)

(assert (=> b!124274 m!144559))

(assert (=> b!124274 m!144421))

(declare-fun m!144561 () Bool)

(assert (=> b!124274 m!144561))

(assert (=> b!124274 m!144561))

(declare-fun m!144563 () Bool)

(assert (=> b!124274 m!144563))

(assert (=> b!124276 m!144421))

(assert (=> b!124276 m!144561))

(assert (=> b!124276 m!144561))

(assert (=> b!124276 m!144563))

(assert (=> b!124135 d!37327))

(declare-fun bm!13244 () Bool)

(declare-fun call!13254 () ListLongMap!1677)

(assert (=> bm!13244 (= call!13254 (map!1375 newMap!16))))

(declare-fun bm!13245 () Bool)

(declare-fun call!13252 () Bool)

(declare-fun call!13253 () Bool)

(assert (=> bm!13245 (= call!13252 call!13253)))

(declare-fun b!124361 () Bool)

(declare-fun lt!64004 () Unit!3872)

(declare-fun e!81302 () Unit!3872)

(assert (=> b!124361 (= lt!64004 e!81302)))

(declare-fun c!22623 () Bool)

(declare-fun call!13263 () Bool)

(assert (=> b!124361 (= c!22623 call!13263)))

(declare-fun e!81296 () tuple2!2556)

(assert (=> b!124361 (= e!81296 (tuple2!2557 false newMap!16))))

(declare-fun b!124362 () Bool)

(declare-fun lt!64010 () Unit!3872)

(declare-fun lt!63999 () Unit!3872)

(assert (=> b!124362 (= lt!64010 lt!63999)))

(declare-fun call!13265 () ListLongMap!1677)

(declare-datatypes ((SeekEntryResult!278 0))(
  ( (MissingZero!278 (index!3266 (_ BitVec 32))) (Found!278 (index!3267 (_ BitVec 32))) (Intermediate!278 (undefined!1090 Bool) (index!3268 (_ BitVec 32)) (x!14787 (_ BitVec 32))) (Undefined!278) (MissingVacant!278 (index!3269 (_ BitVec 32))) )
))
(declare-fun lt!64002 () SeekEntryResult!278)

(assert (=> b!124362 (contains!872 call!13265 (select (arr!2212 (_keys!4489 newMap!16)) (index!3267 lt!64002)))))

(declare-fun lt!63992 () array!4672)

(declare-fun lemmaValidKeyInArrayIsInListMap!112 (array!4670 array!4672 (_ BitVec 32) (_ BitVec 32) V!3419 V!3419 (_ BitVec 32) Int) Unit!3872)

(assert (=> b!124362 (= lt!63999 (lemmaValidKeyInArrayIsInListMap!112 (_keys!4489 newMap!16) lt!63992 (mask!7003 newMap!16) (extraKeys!2545 newMap!16) (zeroValue!2625 newMap!16) (minValue!2625 newMap!16) (index!3267 lt!64002) (defaultEntry!2760 newMap!16)))))

(assert (=> b!124362 (= lt!63992 (array!4673 (store (arr!2213 (_values!2743 newMap!16)) (index!3267 lt!64002) (ValueCellFull!1071 (get!1440 (select (arr!2213 (_values!2743 (v!3098 (underlying!432 thiss!992)))) from!355) (dynLambda!413 (defaultEntry!2760 (v!3098 (underlying!432 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (size!2476 (_values!2743 newMap!16))))))

(declare-fun lt!64008 () Unit!3872)

(declare-fun lt!64005 () Unit!3872)

(assert (=> b!124362 (= lt!64008 lt!64005)))

(declare-fun call!13250 () ListLongMap!1677)

(declare-fun call!13256 () ListLongMap!1677)

(assert (=> b!124362 (= call!13250 call!13256)))

(declare-fun lemmaChangeValueExistingKeyToArrayThenAddPairToListMap!54 (array!4670 array!4672 (_ BitVec 32) (_ BitVec 32) V!3419 V!3419 (_ BitVec 32) (_ BitVec 64) V!3419 Int) Unit!3872)

(assert (=> b!124362 (= lt!64005 (lemmaChangeValueExistingKeyToArrayThenAddPairToListMap!54 (_keys!4489 newMap!16) (_values!2743 newMap!16) (mask!7003 newMap!16) (extraKeys!2545 newMap!16) (zeroValue!2625 newMap!16) (minValue!2625 newMap!16) (index!3267 lt!64002) (select (arr!2212 (_keys!4489 (v!3098 (underlying!432 thiss!992)))) from!355) (get!1440 (select (arr!2213 (_values!2743 (v!3098 (underlying!432 thiss!992)))) from!355) (dynLambda!413 (defaultEntry!2760 (v!3098 (underlying!432 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (defaultEntry!2760 newMap!16)))))

(declare-fun lt!64012 () Unit!3872)

(declare-fun e!81305 () Unit!3872)

(assert (=> b!124362 (= lt!64012 e!81305)))

(declare-fun c!22617 () Bool)

(assert (=> b!124362 (= c!22617 call!13263)))

(declare-fun e!81300 () tuple2!2556)

(assert (=> b!124362 (= e!81300 (tuple2!2557 true (LongMapFixedSize!1051 (defaultEntry!2760 newMap!16) (mask!7003 newMap!16) (extraKeys!2545 newMap!16) (zeroValue!2625 newMap!16) (minValue!2625 newMap!16) (_size!574 newMap!16) (_keys!4489 newMap!16) (array!4673 (store (arr!2213 (_values!2743 newMap!16)) (index!3267 lt!64002) (ValueCellFull!1071 (get!1440 (select (arr!2213 (_values!2743 (v!3098 (underlying!432 thiss!992)))) from!355) (dynLambda!413 (defaultEntry!2760 (v!3098 (underlying!432 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (size!2476 (_values!2743 newMap!16))) (_vacant!574 newMap!16))))))

(declare-fun bm!13246 () Bool)

(declare-fun c!22626 () Bool)

(declare-fun c!22624 () Bool)

(declare-fun e!81307 () ListLongMap!1677)

(assert (=> bm!13246 (= call!13250 (+!163 e!81307 (ite c!22626 (ite c!22624 (tuple2!2555 #b0000000000000000000000000000000000000000000000000000000000000000 (get!1440 (select (arr!2213 (_values!2743 (v!3098 (underlying!432 thiss!992)))) from!355) (dynLambda!413 (defaultEntry!2760 (v!3098 (underlying!432 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (tuple2!2555 #b1000000000000000000000000000000000000000000000000000000000000000 (get!1440 (select (arr!2213 (_values!2743 (v!3098 (underlying!432 thiss!992)))) from!355) (dynLambda!413 (defaultEntry!2760 (v!3098 (underlying!432 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (tuple2!2555 (select (arr!2212 (_keys!4489 (v!3098 (underlying!432 thiss!992)))) from!355) (get!1440 (select (arr!2213 (_values!2743 (v!3098 (underlying!432 thiss!992)))) from!355) (dynLambda!413 (defaultEntry!2760 (v!3098 (underlying!432 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun c!22622 () Bool)

(assert (=> bm!13246 (= c!22622 c!22626)))

(declare-fun b!124363 () Bool)

(declare-fun e!81297 () Bool)

(assert (=> b!124363 (= e!81297 (not call!13252))))

(declare-fun b!124364 () Bool)

(declare-fun e!81301 () Bool)

(declare-fun call!13251 () Bool)

(assert (=> b!124364 (= e!81301 (not call!13251))))

(declare-fun b!124365 () Bool)

(declare-fun lt!63998 () Unit!3872)

(assert (=> b!124365 (= e!81302 lt!63998)))

(declare-fun call!13264 () Unit!3872)

(assert (=> b!124365 (= lt!63998 call!13264)))

(declare-fun lt!64011 () SeekEntryResult!278)

(declare-fun call!13258 () SeekEntryResult!278)

(assert (=> b!124365 (= lt!64011 call!13258)))

(declare-fun c!22620 () Bool)

(assert (=> b!124365 (= c!22620 ((_ is MissingZero!278) lt!64011))))

(declare-fun e!81294 () Bool)

(assert (=> b!124365 e!81294))

(declare-fun b!124366 () Bool)

(declare-fun e!81289 () Bool)

(declare-fun e!81292 () Bool)

(assert (=> b!124366 (= e!81289 e!81292)))

(declare-fun c!22618 () Bool)

(declare-fun lt!64006 () tuple2!2556)

(assert (=> b!124366 (= c!22618 (_1!1288 lt!64006))))

(declare-fun b!124367 () Bool)

(declare-fun call!13268 () ListLongMap!1677)

(assert (=> b!124367 (= e!81292 (= call!13268 call!13254))))

(declare-fun lt!63994 () SeekEntryResult!278)

(declare-fun e!81303 () Bool)

(declare-fun b!124368 () Bool)

(assert (=> b!124368 (= e!81303 (= (select (arr!2212 (_keys!4489 newMap!16)) (index!3267 lt!63994)) (select (arr!2212 (_keys!4489 (v!3098 (underlying!432 thiss!992)))) from!355)))))

(declare-fun bm!13247 () Bool)

(declare-fun c!22628 () Bool)

(declare-fun c!22627 () Bool)

(assert (=> bm!13247 (= c!22628 c!22627)))

(declare-fun e!81291 () ListLongMap!1677)

(assert (=> bm!13247 (= call!13263 (contains!872 e!81291 (select (arr!2212 (_keys!4489 (v!3098 (underlying!432 thiss!992)))) from!355)))))

(declare-fun call!13261 () ListLongMap!1677)

(declare-fun bm!13248 () Bool)

(declare-fun lt!63995 () (_ BitVec 32))

(assert (=> bm!13248 (= call!13261 (getCurrentListMap!526 (_keys!4489 newMap!16) (ite (or c!22626 c!22627) (_values!2743 newMap!16) lt!63992) (mask!7003 newMap!16) (ite (and c!22626 c!22624) lt!63995 (extraKeys!2545 newMap!16)) (ite (and c!22626 c!22624) (get!1440 (select (arr!2213 (_values!2743 (v!3098 (underlying!432 thiss!992)))) from!355) (dynLambda!413 (defaultEntry!2760 (v!3098 (underlying!432 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (zeroValue!2625 newMap!16)) (minValue!2625 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2760 newMap!16)))))

(declare-fun b!124369 () Bool)

(declare-fun e!81304 () tuple2!2556)

(declare-fun e!81298 () tuple2!2556)

(assert (=> b!124369 (= e!81304 e!81298)))

(assert (=> b!124369 (= c!22624 (= (select (arr!2212 (_keys!4489 (v!3098 (underlying!432 thiss!992)))) from!355) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!124370 () Bool)

(declare-fun e!81308 () Bool)

(declare-fun lt!63993 () SeekEntryResult!278)

(assert (=> b!124370 (= e!81308 ((_ is Undefined!278) lt!63993))))

(declare-fun b!124371 () Bool)

(declare-fun lt!63990 () tuple2!2556)

(declare-fun call!13260 () tuple2!2556)

(assert (=> b!124371 (= lt!63990 call!13260)))

(assert (=> b!124371 (= e!81300 (tuple2!2557 (_1!1288 lt!63990) (_2!1288 lt!63990)))))

(declare-fun b!124372 () Bool)

(declare-fun Unit!3876 () Unit!3872)

(assert (=> b!124372 (= e!81305 Unit!3876)))

(declare-fun lt!64007 () Unit!3872)

(assert (=> b!124372 (= lt!64007 call!13264)))

(declare-fun call!13255 () SeekEntryResult!278)

(assert (=> b!124372 (= lt!63993 call!13255)))

(declare-fun c!22616 () Bool)

(assert (=> b!124372 (= c!22616 ((_ is MissingZero!278) lt!63993))))

(declare-fun e!81293 () Bool)

(assert (=> b!124372 e!81293))

(declare-fun lt!63989 () Unit!3872)

(assert (=> b!124372 (= lt!63989 lt!64007)))

(assert (=> b!124372 false))

(declare-fun bm!13249 () Bool)

(declare-fun lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!54 (array!4670 array!4672 (_ BitVec 32) (_ BitVec 32) V!3419 V!3419 (_ BitVec 64) Int) Unit!3872)

(assert (=> bm!13249 (= call!13264 (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!54 (_keys!4489 newMap!16) (_values!2743 newMap!16) (mask!7003 newMap!16) (extraKeys!2545 newMap!16) (zeroValue!2625 newMap!16) (minValue!2625 newMap!16) (select (arr!2212 (_keys!4489 (v!3098 (underlying!432 thiss!992)))) from!355) (defaultEntry!2760 newMap!16)))))

(declare-fun b!124373 () Bool)

(declare-fun Unit!3877 () Unit!3872)

(assert (=> b!124373 (= e!81302 Unit!3877)))

(declare-fun lt!64003 () Unit!3872)

(declare-fun call!13266 () Unit!3872)

(assert (=> b!124373 (= lt!64003 call!13266)))

(assert (=> b!124373 (= lt!63994 call!13258)))

(declare-fun res!60290 () Bool)

(assert (=> b!124373 (= res!60290 ((_ is Found!278) lt!63994))))

(assert (=> b!124373 (=> (not res!60290) (not e!81303))))

(assert (=> b!124373 e!81303))

(declare-fun lt!63997 () Unit!3872)

(assert (=> b!124373 (= lt!63997 lt!64003)))

(assert (=> b!124373 false))

(declare-fun b!124374 () Bool)

(assert (=> b!124374 (= e!81304 e!81296)))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!4670 (_ BitVec 32)) SeekEntryResult!278)

(assert (=> b!124374 (= lt!64002 (seekEntryOrOpen!0 (select (arr!2212 (_keys!4489 (v!3098 (underlying!432 thiss!992)))) from!355) (_keys!4489 newMap!16) (mask!7003 newMap!16)))))

(assert (=> b!124374 (= c!22627 ((_ is Undefined!278) lt!64002))))

(declare-fun bm!13250 () Bool)

(declare-fun arrayContainsKey!0 (array!4670 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> bm!13250 (= call!13253 (arrayContainsKey!0 (_keys!4489 newMap!16) (select (arr!2212 (_keys!4489 (v!3098 (underlying!432 thiss!992)))) from!355) #b00000000000000000000000000000000))))

(declare-fun b!124375 () Bool)

(declare-fun res!60301 () Bool)

(declare-fun call!13259 () Bool)

(assert (=> b!124375 (= res!60301 call!13259)))

(assert (=> b!124375 (=> (not res!60301) (not e!81303))))

(declare-fun b!124376 () Bool)

(declare-fun res!60298 () Bool)

(declare-fun e!81309 () Bool)

(assert (=> b!124376 (=> (not res!60298) (not e!81309))))

(assert (=> b!124376 (= res!60298 (= (select (arr!2212 (_keys!4489 newMap!16)) (index!3266 lt!63993)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun bm!13251 () Bool)

(declare-fun lemmaInListMapThenSeekEntryOrOpenFindsIt!54 (array!4670 array!4672 (_ BitVec 32) (_ BitVec 32) V!3419 V!3419 (_ BitVec 64) Int) Unit!3872)

(assert (=> bm!13251 (= call!13266 (lemmaInListMapThenSeekEntryOrOpenFindsIt!54 (_keys!4489 newMap!16) (_values!2743 newMap!16) (mask!7003 newMap!16) (extraKeys!2545 newMap!16) (zeroValue!2625 newMap!16) (minValue!2625 newMap!16) (select (arr!2212 (_keys!4489 (v!3098 (underlying!432 thiss!992)))) from!355) (defaultEntry!2760 newMap!16)))))

(declare-fun b!124377 () Bool)

(declare-fun e!81299 () Bool)

(assert (=> b!124377 (= e!81299 ((_ is Undefined!278) lt!64011))))

(declare-fun bm!13252 () Bool)

(declare-fun call!13270 () ListLongMap!1677)

(assert (=> bm!13252 (= call!13270 call!13250)))

(declare-fun b!124378 () Bool)

(declare-fun e!81290 () tuple2!2556)

(declare-fun lt!63986 () tuple2!2556)

(assert (=> b!124378 (= e!81290 (tuple2!2557 (_1!1288 lt!63986) (_2!1288 lt!63986)))))

(assert (=> b!124378 (= lt!63986 call!13260)))

(declare-fun d!37329 () Bool)

(assert (=> d!37329 e!81289))

(declare-fun res!60296 () Bool)

(assert (=> d!37329 (=> (not res!60296) (not e!81289))))

(assert (=> d!37329 (= res!60296 (valid!496 (_2!1288 lt!64006)))))

(assert (=> d!37329 (= lt!64006 e!81304)))

(assert (=> d!37329 (= c!22626 (= (select (arr!2212 (_keys!4489 (v!3098 (underlying!432 thiss!992)))) from!355) (bvneg (select (arr!2212 (_keys!4489 (v!3098 (underlying!432 thiss!992)))) from!355))))))

(assert (=> d!37329 (valid!496 newMap!16)))

(assert (=> d!37329 (= (update!180 newMap!16 (select (arr!2212 (_keys!4489 (v!3098 (underlying!432 thiss!992)))) from!355) (get!1440 (select (arr!2213 (_values!2743 (v!3098 (underlying!432 thiss!992)))) from!355) (dynLambda!413 (defaultEntry!2760 (v!3098 (underlying!432 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) lt!64006)))

(declare-fun b!124379 () Bool)

(declare-fun lt!64001 () Unit!3872)

(assert (=> b!124379 (= e!81305 lt!64001)))

(assert (=> b!124379 (= lt!64001 call!13266)))

(declare-fun lt!64000 () SeekEntryResult!278)

(assert (=> b!124379 (= lt!64000 call!13255)))

(declare-fun res!60297 () Bool)

(assert (=> b!124379 (= res!60297 ((_ is Found!278) lt!64000))))

(declare-fun e!81310 () Bool)

(assert (=> b!124379 (=> (not res!60297) (not e!81310))))

(assert (=> b!124379 e!81310))

(declare-fun bm!13253 () Bool)

(declare-fun call!13249 () Bool)

(declare-fun call!13267 () Bool)

(assert (=> bm!13253 (= call!13249 call!13267)))

(declare-fun b!124380 () Bool)

(declare-fun c!22615 () Bool)

(assert (=> b!124380 (= c!22615 ((_ is MissingVacant!278) lt!64002))))

(assert (=> b!124380 (= e!81296 e!81290)))

(declare-fun b!124381 () Bool)

(declare-fun res!60300 () Bool)

(assert (=> b!124381 (= res!60300 (= (select (arr!2212 (_keys!4489 newMap!16)) (index!3269 lt!63993)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!124381 (=> (not res!60300) (not e!81297))))

(declare-fun bm!13254 () Bool)

(declare-fun call!13247 () SeekEntryResult!278)

(assert (=> bm!13254 (= call!13258 call!13247)))

(declare-fun bm!13255 () Bool)

(declare-fun updateHelperNewKey!54 (LongMapFixedSize!1050 (_ BitVec 64) V!3419 (_ BitVec 32)) tuple2!2556)

(assert (=> bm!13255 (= call!13260 (updateHelperNewKey!54 newMap!16 (select (arr!2212 (_keys!4489 (v!3098 (underlying!432 thiss!992)))) from!355) (get!1440 (select (arr!2213 (_values!2743 (v!3098 (underlying!432 thiss!992)))) from!355) (dynLambda!413 (defaultEntry!2760 (v!3098 (underlying!432 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (ite c!22615 (index!3269 lt!64002) (index!3266 lt!64002))))))

(declare-fun b!124382 () Bool)

(assert (=> b!124382 (= e!81307 (getCurrentListMap!526 (_keys!4489 newMap!16) (_values!2743 newMap!16) (mask!7003 newMap!16) (extraKeys!2545 newMap!16) (zeroValue!2625 newMap!16) (minValue!2625 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2760 newMap!16)))))

(declare-fun bm!13256 () Bool)

(declare-fun call!13269 () ListLongMap!1677)

(assert (=> bm!13256 (= call!13269 call!13261)))

(declare-fun bm!13257 () Bool)

(assert (=> bm!13257 (= call!13255 call!13247)))

(declare-fun b!124383 () Bool)

(declare-fun e!81295 () Bool)

(assert (=> b!124383 (= e!81299 e!81295)))

(declare-fun res!60299 () Bool)

(declare-fun call!13248 () Bool)

(assert (=> b!124383 (= res!60299 call!13248)))

(assert (=> b!124383 (=> (not res!60299) (not e!81295))))

(declare-fun b!124384 () Bool)

(assert (=> b!124384 (= e!81309 (not call!13252))))

(declare-fun bm!13258 () Bool)

(declare-fun call!13257 () ListLongMap!1677)

(assert (=> bm!13258 (= call!13257 call!13256)))

(declare-fun b!124385 () Bool)

(declare-fun res!60289 () Bool)

(assert (=> b!124385 (= res!60289 call!13267)))

(assert (=> b!124385 (=> (not res!60289) (not e!81310))))

(declare-fun bm!13259 () Bool)

(declare-fun call!13262 () Bool)

(assert (=> bm!13259 (= call!13267 call!13262)))

(declare-fun lt!63996 () (_ BitVec 32))

(declare-fun bm!13260 () Bool)

(assert (=> bm!13260 (= call!13256 (getCurrentListMap!526 (_keys!4489 newMap!16) (ite c!22626 (_values!2743 newMap!16) (array!4673 (store (arr!2213 (_values!2743 newMap!16)) (index!3267 lt!64002) (ValueCellFull!1071 (get!1440 (select (arr!2213 (_values!2743 (v!3098 (underlying!432 thiss!992)))) from!355) (dynLambda!413 (defaultEntry!2760 (v!3098 (underlying!432 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (size!2476 (_values!2743 newMap!16)))) (mask!7003 newMap!16) (ite c!22626 (ite c!22624 (extraKeys!2545 newMap!16) lt!63996) (extraKeys!2545 newMap!16)) (zeroValue!2625 newMap!16) (ite c!22626 (ite c!22624 (minValue!2625 newMap!16) (get!1440 (select (arr!2213 (_values!2743 (v!3098 (underlying!432 thiss!992)))) from!355) (dynLambda!413 (defaultEntry!2760 (v!3098 (underlying!432 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (minValue!2625 newMap!16)) #b00000000000000000000000000000000 (defaultEntry!2760 newMap!16)))))

(declare-fun b!124386 () Bool)

(assert (=> b!124386 (= e!81307 (ite c!22624 call!13257 call!13269))))

(declare-fun b!124387 () Bool)

(assert (=> b!124387 (= e!81291 call!13265)))

(declare-fun b!124388 () Bool)

(declare-fun c!22619 () Bool)

(assert (=> b!124388 (= c!22619 ((_ is MissingVacant!278) lt!64011))))

(assert (=> b!124388 (= e!81294 e!81299)))

(declare-fun b!124389 () Bool)

(declare-fun e!81306 () Bool)

(assert (=> b!124389 (= e!81292 e!81306)))

(declare-fun res!60294 () Bool)

(assert (=> b!124389 (= res!60294 (contains!872 call!13268 (select (arr!2212 (_keys!4489 (v!3098 (underlying!432 thiss!992)))) from!355)))))

(assert (=> b!124389 (=> (not res!60294) (not e!81306))))

(declare-fun b!124390 () Bool)

(assert (=> b!124390 (= e!81290 e!81300)))

(declare-fun c!22621 () Bool)

(assert (=> b!124390 (= c!22621 ((_ is MissingZero!278) lt!64002))))

(declare-fun b!124391 () Bool)

(assert (=> b!124391 (= e!81295 (not call!13251))))

(declare-fun b!124392 () Bool)

(declare-fun lt!63988 () Unit!3872)

(declare-fun lt!63991 () Unit!3872)

(assert (=> b!124392 (= lt!63988 lt!63991)))

(assert (=> b!124392 (= call!13270 call!13257)))

(declare-fun lemmaChangeLongMinValueKeyThenAddPairToListMap!54 (array!4670 array!4672 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!3419 V!3419 V!3419 Int) Unit!3872)

(assert (=> b!124392 (= lt!63991 (lemmaChangeLongMinValueKeyThenAddPairToListMap!54 (_keys!4489 newMap!16) (_values!2743 newMap!16) (mask!7003 newMap!16) (extraKeys!2545 newMap!16) lt!63996 (zeroValue!2625 newMap!16) (minValue!2625 newMap!16) (get!1440 (select (arr!2213 (_values!2743 (v!3098 (underlying!432 thiss!992)))) from!355) (dynLambda!413 (defaultEntry!2760 (v!3098 (underlying!432 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (defaultEntry!2760 newMap!16)))))

(assert (=> b!124392 (= lt!63996 (bvor (extraKeys!2545 newMap!16) #b00000000000000000000000000000010))))

(assert (=> b!124392 (= e!81298 (tuple2!2557 true (LongMapFixedSize!1051 (defaultEntry!2760 newMap!16) (mask!7003 newMap!16) (bvor (extraKeys!2545 newMap!16) #b00000000000000000000000000000010) (zeroValue!2625 newMap!16) (get!1440 (select (arr!2213 (_values!2743 (v!3098 (underlying!432 thiss!992)))) from!355) (dynLambda!413 (defaultEntry!2760 (v!3098 (underlying!432 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (_size!574 newMap!16) (_keys!4489 newMap!16) (_values!2743 newMap!16) (_vacant!574 newMap!16))))))

(declare-fun b!124393 () Bool)

(assert (=> b!124393 (= e!81308 e!81297)))

(declare-fun res!60291 () Bool)

(assert (=> b!124393 (= res!60291 call!13249)))

(assert (=> b!124393 (=> (not res!60291) (not e!81297))))

(declare-fun bm!13261 () Bool)

(assert (=> bm!13261 (= call!13265 call!13261)))

(declare-fun b!124394 () Bool)

(declare-fun res!60295 () Bool)

(assert (=> b!124394 (=> (not res!60295) (not e!81301))))

(assert (=> b!124394 (= res!60295 (= (select (arr!2212 (_keys!4489 newMap!16)) (index!3266 lt!64011)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun bm!13262 () Bool)

(assert (=> bm!13262 (= call!13251 call!13253)))

(declare-fun bm!13263 () Bool)

(assert (=> bm!13263 (= call!13268 (map!1375 (_2!1288 lt!64006)))))

(declare-fun b!124395 () Bool)

(assert (=> b!124395 (= e!81306 (= call!13268 (+!163 call!13254 (tuple2!2555 (select (arr!2212 (_keys!4489 (v!3098 (underlying!432 thiss!992)))) from!355) (get!1440 (select (arr!2213 (_values!2743 (v!3098 (underlying!432 thiss!992)))) from!355) (dynLambda!413 (defaultEntry!2760 (v!3098 (underlying!432 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun b!124396 () Bool)

(assert (=> b!124396 (= e!81310 (= (select (arr!2212 (_keys!4489 newMap!16)) (index!3267 lt!64000)) (select (arr!2212 (_keys!4489 (v!3098 (underlying!432 thiss!992)))) from!355)))))

(declare-fun b!124397 () Bool)

(declare-fun res!60292 () Bool)

(assert (=> b!124397 (= res!60292 (= (select (arr!2212 (_keys!4489 newMap!16)) (index!3269 lt!64011)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!124397 (=> (not res!60292) (not e!81295))))

(declare-fun bm!13264 () Bool)

(assert (=> bm!13264 (= call!13248 call!13259)))

(declare-fun bm!13265 () Bool)

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> bm!13265 (= call!13262 (inRange!0 (ite c!22627 (ite c!22623 (index!3267 lt!63994) (ite c!22620 (index!3266 lt!64011) (index!3269 lt!64011))) (ite c!22617 (index!3267 lt!64000) (ite c!22616 (index!3266 lt!63993) (index!3269 lt!63993)))) (mask!7003 newMap!16)))))

(declare-fun b!124398 () Bool)

(declare-fun lt!64009 () Unit!3872)

(declare-fun lt!63987 () Unit!3872)

(assert (=> b!124398 (= lt!64009 lt!63987)))

(assert (=> b!124398 (= call!13270 call!13269)))

(declare-fun lemmaChangeZeroKeyThenAddPairToListMap!54 (array!4670 array!4672 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!3419 V!3419 V!3419 Int) Unit!3872)

(assert (=> b!124398 (= lt!63987 (lemmaChangeZeroKeyThenAddPairToListMap!54 (_keys!4489 newMap!16) (_values!2743 newMap!16) (mask!7003 newMap!16) (extraKeys!2545 newMap!16) lt!63995 (zeroValue!2625 newMap!16) (get!1440 (select (arr!2213 (_values!2743 (v!3098 (underlying!432 thiss!992)))) from!355) (dynLambda!413 (defaultEntry!2760 (v!3098 (underlying!432 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (minValue!2625 newMap!16) (defaultEntry!2760 newMap!16)))))

(assert (=> b!124398 (= lt!63995 (bvor (extraKeys!2545 newMap!16) #b00000000000000000000000000000001))))

(assert (=> b!124398 (= e!81298 (tuple2!2557 true (LongMapFixedSize!1051 (defaultEntry!2760 newMap!16) (mask!7003 newMap!16) (bvor (extraKeys!2545 newMap!16) #b00000000000000000000000000000001) (get!1440 (select (arr!2213 (_values!2743 (v!3098 (underlying!432 thiss!992)))) from!355) (dynLambda!413 (defaultEntry!2760 (v!3098 (underlying!432 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (minValue!2625 newMap!16) (_size!574 newMap!16) (_keys!4489 newMap!16) (_values!2743 newMap!16) (_vacant!574 newMap!16))))))

(declare-fun b!124399 () Bool)

(declare-fun c!22625 () Bool)

(assert (=> b!124399 (= c!22625 ((_ is MissingVacant!278) lt!63993))))

(assert (=> b!124399 (= e!81293 e!81308)))

(declare-fun b!124400 () Bool)

(assert (=> b!124400 (= e!81291 (getCurrentListMap!526 (_keys!4489 newMap!16) (_values!2743 newMap!16) (mask!7003 newMap!16) (extraKeys!2545 newMap!16) (zeroValue!2625 newMap!16) (minValue!2625 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2760 newMap!16)))))

(declare-fun bm!13266 () Bool)

(assert (=> bm!13266 (= call!13247 (seekEntryOrOpen!0 (select (arr!2212 (_keys!4489 (v!3098 (underlying!432 thiss!992)))) from!355) (_keys!4489 newMap!16) (mask!7003 newMap!16)))))

(declare-fun b!124401 () Bool)

(declare-fun res!60293 () Bool)

(assert (=> b!124401 (=> (not res!60293) (not e!81309))))

(assert (=> b!124401 (= res!60293 call!13249)))

(assert (=> b!124401 (= e!81293 e!81309)))

(declare-fun b!124402 () Bool)

(declare-fun res!60302 () Bool)

(assert (=> b!124402 (=> (not res!60302) (not e!81301))))

(assert (=> b!124402 (= res!60302 call!13248)))

(assert (=> b!124402 (= e!81294 e!81301)))

(declare-fun bm!13267 () Bool)

(assert (=> bm!13267 (= call!13259 call!13262)))

(assert (= (and d!37329 c!22626) b!124369))

(assert (= (and d!37329 (not c!22626)) b!124374))

(assert (= (and b!124369 c!22624) b!124398))

(assert (= (and b!124369 (not c!22624)) b!124392))

(assert (= (or b!124398 b!124392) bm!13256))

(assert (= (or b!124398 b!124392) bm!13258))

(assert (= (or b!124398 b!124392) bm!13252))

(assert (= (and b!124374 c!22627) b!124361))

(assert (= (and b!124374 (not c!22627)) b!124380))

(assert (= (and b!124361 c!22623) b!124373))

(assert (= (and b!124361 (not c!22623)) b!124365))

(assert (= (and b!124373 res!60290) b!124375))

(assert (= (and b!124375 res!60301) b!124368))

(assert (= (and b!124365 c!22620) b!124402))

(assert (= (and b!124365 (not c!22620)) b!124388))

(assert (= (and b!124402 res!60302) b!124394))

(assert (= (and b!124394 res!60295) b!124364))

(assert (= (and b!124388 c!22619) b!124383))

(assert (= (and b!124388 (not c!22619)) b!124377))

(assert (= (and b!124383 res!60299) b!124397))

(assert (= (and b!124397 res!60292) b!124391))

(assert (= (or b!124402 b!124383) bm!13264))

(assert (= (or b!124364 b!124391) bm!13262))

(assert (= (or b!124375 bm!13264) bm!13267))

(assert (= (or b!124373 b!124365) bm!13254))

(assert (= (and b!124380 c!22615) b!124378))

(assert (= (and b!124380 (not c!22615)) b!124390))

(assert (= (and b!124390 c!22621) b!124371))

(assert (= (and b!124390 (not c!22621)) b!124362))

(assert (= (and b!124362 c!22617) b!124379))

(assert (= (and b!124362 (not c!22617)) b!124372))

(assert (= (and b!124379 res!60297) b!124385))

(assert (= (and b!124385 res!60289) b!124396))

(assert (= (and b!124372 c!22616) b!124401))

(assert (= (and b!124372 (not c!22616)) b!124399))

(assert (= (and b!124401 res!60293) b!124376))

(assert (= (and b!124376 res!60298) b!124384))

(assert (= (and b!124399 c!22625) b!124393))

(assert (= (and b!124399 (not c!22625)) b!124370))

(assert (= (and b!124393 res!60291) b!124381))

(assert (= (and b!124381 res!60300) b!124363))

(assert (= (or b!124401 b!124393) bm!13253))

(assert (= (or b!124384 b!124363) bm!13245))

(assert (= (or b!124385 bm!13253) bm!13259))

(assert (= (or b!124379 b!124372) bm!13257))

(assert (= (or b!124378 b!124371) bm!13255))

(assert (= (or b!124373 b!124379) bm!13251))

(assert (= (or bm!13267 bm!13259) bm!13265))

(assert (= (or b!124361 b!124362) bm!13261))

(assert (= (or bm!13262 bm!13245) bm!13250))

(assert (= (or b!124365 b!124372) bm!13249))

(assert (= (or bm!13254 bm!13257) bm!13266))

(assert (= (or b!124361 b!124362) bm!13247))

(assert (= (and bm!13247 c!22628) b!124387))

(assert (= (and bm!13247 (not c!22628)) b!124400))

(assert (= (or bm!13256 bm!13261) bm!13248))

(assert (= (or bm!13258 b!124362) bm!13260))

(assert (= (or bm!13252 b!124362) bm!13246))

(assert (= (and bm!13246 c!22622) b!124386))

(assert (= (and bm!13246 (not c!22622)) b!124382))

(assert (= (and d!37329 res!60296) b!124366))

(assert (= (and b!124366 c!22618) b!124389))

(assert (= (and b!124366 (not c!22618)) b!124367))

(assert (= (and b!124389 res!60294) b!124395))

(assert (= (or b!124395 b!124367) bm!13244))

(assert (= (or b!124389 b!124395 b!124367) bm!13263))

(assert (=> b!124400 m!144491))

(declare-fun m!144565 () Bool)

(assert (=> b!124368 m!144565))

(declare-fun m!144567 () Bool)

(assert (=> d!37329 m!144567))

(assert (=> d!37329 m!144439))

(declare-fun m!144569 () Bool)

(assert (=> b!124376 m!144569))

(assert (=> b!124392 m!144431))

(declare-fun m!144571 () Bool)

(assert (=> b!124392 m!144571))

(assert (=> bm!13247 m!144421))

(declare-fun m!144573 () Bool)

(assert (=> bm!13247 m!144573))

(declare-fun m!144575 () Bool)

(assert (=> b!124397 m!144575))

(assert (=> b!124389 m!144421))

(declare-fun m!144577 () Bool)

(assert (=> b!124389 m!144577))

(declare-fun m!144579 () Bool)

(assert (=> b!124381 m!144579))

(assert (=> b!124382 m!144491))

(declare-fun m!144581 () Bool)

(assert (=> b!124394 m!144581))

(declare-fun m!144583 () Bool)

(assert (=> bm!13248 m!144583))

(declare-fun m!144585 () Bool)

(assert (=> bm!13260 m!144585))

(declare-fun m!144587 () Bool)

(assert (=> bm!13260 m!144587))

(declare-fun m!144589 () Bool)

(assert (=> bm!13265 m!144589))

(assert (=> bm!13255 m!144421))

(assert (=> bm!13255 m!144431))

(declare-fun m!144591 () Bool)

(assert (=> bm!13255 m!144591))

(declare-fun m!144593 () Bool)

(assert (=> bm!13263 m!144593))

(assert (=> bm!13250 m!144421))

(declare-fun m!144595 () Bool)

(assert (=> bm!13250 m!144595))

(assert (=> bm!13266 m!144421))

(declare-fun m!144597 () Bool)

(assert (=> bm!13266 m!144597))

(assert (=> b!124398 m!144431))

(declare-fun m!144599 () Bool)

(assert (=> b!124398 m!144599))

(declare-fun m!144601 () Bool)

(assert (=> b!124396 m!144601))

(assert (=> bm!13249 m!144421))

(declare-fun m!144603 () Bool)

(assert (=> bm!13249 m!144603))

(assert (=> bm!13251 m!144421))

(declare-fun m!144605 () Bool)

(assert (=> bm!13251 m!144605))

(declare-fun m!144607 () Bool)

(assert (=> b!124395 m!144607))

(assert (=> b!124374 m!144421))

(assert (=> b!124374 m!144597))

(declare-fun m!144609 () Bool)

(assert (=> bm!13246 m!144609))

(declare-fun m!144611 () Bool)

(assert (=> b!124362 m!144611))

(declare-fun m!144613 () Bool)

(assert (=> b!124362 m!144613))

(assert (=> b!124362 m!144613))

(declare-fun m!144615 () Bool)

(assert (=> b!124362 m!144615))

(assert (=> b!124362 m!144585))

(assert (=> b!124362 m!144421))

(assert (=> b!124362 m!144431))

(declare-fun m!144617 () Bool)

(assert (=> b!124362 m!144617))

(assert (=> bm!13244 m!144423))

(assert (=> b!124135 d!37329))

(declare-fun d!37331 () Bool)

(declare-fun c!22631 () Bool)

(assert (=> d!37331 (= c!22631 ((_ is ValueCellFull!1071) (select (arr!2213 (_values!2743 (v!3098 (underlying!432 thiss!992)))) from!355)))))

(declare-fun e!81313 () V!3419)

(assert (=> d!37331 (= (get!1440 (select (arr!2213 (_values!2743 (v!3098 (underlying!432 thiss!992)))) from!355) (dynLambda!413 (defaultEntry!2760 (v!3098 (underlying!432 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) e!81313)))

(declare-fun b!124407 () Bool)

(declare-fun get!1441 (ValueCell!1071 V!3419) V!3419)

(assert (=> b!124407 (= e!81313 (get!1441 (select (arr!2213 (_values!2743 (v!3098 (underlying!432 thiss!992)))) from!355) (dynLambda!413 (defaultEntry!2760 (v!3098 (underlying!432 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!124408 () Bool)

(declare-fun get!1442 (ValueCell!1071 V!3419) V!3419)

(assert (=> b!124408 (= e!81313 (get!1442 (select (arr!2213 (_values!2743 (v!3098 (underlying!432 thiss!992)))) from!355) (dynLambda!413 (defaultEntry!2760 (v!3098 (underlying!432 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!37331 c!22631) b!124407))

(assert (= (and d!37331 (not c!22631)) b!124408))

(assert (=> b!124407 m!144427))

(assert (=> b!124407 m!144429))

(declare-fun m!144619 () Bool)

(assert (=> b!124407 m!144619))

(assert (=> b!124408 m!144427))

(assert (=> b!124408 m!144429))

(declare-fun m!144621 () Bool)

(assert (=> b!124408 m!144621))

(assert (=> b!124135 d!37331))

(declare-fun mapNonEmpty!4461 () Bool)

(declare-fun mapRes!4461 () Bool)

(declare-fun tp!10887 () Bool)

(declare-fun e!81319 () Bool)

(assert (=> mapNonEmpty!4461 (= mapRes!4461 (and tp!10887 e!81319))))

(declare-fun mapKey!4461 () (_ BitVec 32))

(declare-fun mapValue!4461 () ValueCell!1071)

(declare-fun mapRest!4461 () (Array (_ BitVec 32) ValueCell!1071))

(assert (=> mapNonEmpty!4461 (= mapRest!4451 (store mapRest!4461 mapKey!4461 mapValue!4461))))

(declare-fun b!124415 () Bool)

(assert (=> b!124415 (= e!81319 tp_is_empty!2829)))

(declare-fun condMapEmpty!4461 () Bool)

(declare-fun mapDefault!4461 () ValueCell!1071)

(assert (=> mapNonEmpty!4452 (= condMapEmpty!4461 (= mapRest!4451 ((as const (Array (_ BitVec 32) ValueCell!1071)) mapDefault!4461)))))

(declare-fun e!81318 () Bool)

(assert (=> mapNonEmpty!4452 (= tp!10872 (and e!81318 mapRes!4461))))

(declare-fun b!124416 () Bool)

(assert (=> b!124416 (= e!81318 tp_is_empty!2829)))

(declare-fun mapIsEmpty!4461 () Bool)

(assert (=> mapIsEmpty!4461 mapRes!4461))

(assert (= (and mapNonEmpty!4452 condMapEmpty!4461) mapIsEmpty!4461))

(assert (= (and mapNonEmpty!4452 (not condMapEmpty!4461)) mapNonEmpty!4461))

(assert (= (and mapNonEmpty!4461 ((_ is ValueCellFull!1071) mapValue!4461)) b!124415))

(assert (= (and mapNonEmpty!4452 ((_ is ValueCellFull!1071) mapDefault!4461)) b!124416))

(declare-fun m!144623 () Bool)

(assert (=> mapNonEmpty!4461 m!144623))

(declare-fun mapNonEmpty!4462 () Bool)

(declare-fun mapRes!4462 () Bool)

(declare-fun tp!10888 () Bool)

(declare-fun e!81321 () Bool)

(assert (=> mapNonEmpty!4462 (= mapRes!4462 (and tp!10888 e!81321))))

(declare-fun mapKey!4462 () (_ BitVec 32))

(declare-fun mapRest!4462 () (Array (_ BitVec 32) ValueCell!1071))

(declare-fun mapValue!4462 () ValueCell!1071)

(assert (=> mapNonEmpty!4462 (= mapRest!4452 (store mapRest!4462 mapKey!4462 mapValue!4462))))

(declare-fun b!124417 () Bool)

(assert (=> b!124417 (= e!81321 tp_is_empty!2829)))

(declare-fun condMapEmpty!4462 () Bool)

(declare-fun mapDefault!4462 () ValueCell!1071)

(assert (=> mapNonEmpty!4451 (= condMapEmpty!4462 (= mapRest!4452 ((as const (Array (_ BitVec 32) ValueCell!1071)) mapDefault!4462)))))

(declare-fun e!81320 () Bool)

(assert (=> mapNonEmpty!4451 (= tp!10869 (and e!81320 mapRes!4462))))

(declare-fun b!124418 () Bool)

(assert (=> b!124418 (= e!81320 tp_is_empty!2829)))

(declare-fun mapIsEmpty!4462 () Bool)

(assert (=> mapIsEmpty!4462 mapRes!4462))

(assert (= (and mapNonEmpty!4451 condMapEmpty!4462) mapIsEmpty!4462))

(assert (= (and mapNonEmpty!4451 (not condMapEmpty!4462)) mapNonEmpty!4462))

(assert (= (and mapNonEmpty!4462 ((_ is ValueCellFull!1071) mapValue!4462)) b!124417))

(assert (= (and mapNonEmpty!4451 ((_ is ValueCellFull!1071) mapDefault!4462)) b!124418))

(declare-fun m!144625 () Bool)

(assert (=> mapNonEmpty!4462 m!144625))

(declare-fun b_lambda!5485 () Bool)

(assert (= b_lambda!5483 (or (and b!124133 b_free!2825) (and b!124129 b_free!2827 (= (defaultEntry!2760 newMap!16) (defaultEntry!2760 (v!3098 (underlying!432 thiss!992))))) b_lambda!5485)))

(check-sat (not bm!13246) (not d!37323) (not bm!13249) (not b!124257) (not bm!13195) (not b!124267) (not b!124392) (not bm!13266) (not bm!13247) (not b_next!2825) (not b!124362) (not b!124252) (not bm!13255) (not b!124389) (not b!124253) (not b_next!2827) (not b!124408) (not b!124266) (not b!124245) (not bm!13260) (not d!37329) (not b!124382) (not b!124265) (not bm!13248) (not b!124274) (not b!124374) (not b!124255) b_and!7655 (not bm!13194) (not mapNonEmpty!4461) (not b!124407) (not bm!13265) (not d!37313) (not b_lambda!5485) (not d!37327) (not d!37315) (not b!124398) (not bm!13189) tp_is_empty!2829 (not b_lambda!5481) (not bm!13244) (not b!124246) (not mapNonEmpty!4462) (not b!124240) (not bm!13250) (not bm!13263) (not b!124395) (not bm!13251) (not b!124276) (not bm!13193) b_and!7653 (not b!124400) (not d!37317) (not b!124250))
(check-sat b_and!7653 b_and!7655 (not b_next!2825) (not b_next!2827))

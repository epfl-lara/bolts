; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!46362 () Bool)

(assert start!46362)

(declare-fun b!512272 () Bool)

(declare-fun b_free!13275 () Bool)

(declare-fun b_next!13275 () Bool)

(assert (=> b!512272 (= b_free!13275 (not b_next!13275))))

(declare-fun tp!159228 () Bool)

(declare-fun b_and!50697 () Bool)

(assert (=> b!512272 (= tp!159228 b_and!50697)))

(declare-fun mapIsEmpty!1802 () Bool)

(declare-fun mapRes!1802 () Bool)

(assert (=> mapIsEmpty!1802 mapRes!1802))

(declare-fun b!512273 () Bool)

(declare-fun e!306093 () Bool)

(declare-fun tp_is_empty!2471 () Bool)

(assert (=> b!512273 (= e!306093 (and tp_is_empty!2471 mapRes!1802))))

(declare-fun condMapEmpty!1802 () Bool)

(declare-datatypes ((V!1377 0))(
  ( (V!1378 (val!1684 Int)) )
))
(declare-datatypes ((array!1771 0))(
  ( (array!1772 (arr!818 (Array (_ BitVec 32) (_ BitVec 64))) (size!3752 (_ BitVec 32))) )
))
(declare-datatypes ((array!1773 0))(
  ( (array!1774 (arr!819 (Array (_ BitVec 32) V!1377)) (size!3753 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!934 0))(
  ( (LongMapFixedSize!935 (defaultEntry!815 Int) (mask!1862 (_ BitVec 32)) (extraKeys!713 (_ BitVec 32)) (zeroValue!723 V!1377) (minValue!723 V!1377) (_size!1044 (_ BitVec 32)) (_keys!758 array!1771) (_values!745 array!1773) (_vacant!528 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!1811 0))(
  ( (Cell!1812 (v!15646 LongMapFixedSize!934)) )
))
(declare-datatypes ((MutLongMap!467 0))(
  ( (LongMap!467 (underlying!1114 Cell!1811)) (MutLongMapExt!466 (__x!3294 Int)) )
))
(declare-fun thiss!47442 () MutLongMap!467)

(declare-fun mapDefault!1802 () V!1377)

(assert (=> b!512273 (= condMapEmpty!1802 (= (arr!819 (_values!745 (v!15646 (underlying!1114 thiss!47442)))) ((as const (Array (_ BitVec 32) V!1377)) mapDefault!1802)))))

(declare-fun b!512274 () Bool)

(declare-fun e!306091 () Bool)

(declare-fun e!306087 () Bool)

(assert (=> b!512274 (= e!306091 e!306087)))

(declare-datatypes ((Option!1228 0))(
  ( (None!1227) (Some!1227 (v!15647 V!1377)) )
))
(declare-fun lt!212207 () Option!1228)

(declare-fun key!7052 () (_ BitVec 64))

(declare-datatypes ((tuple2!5536 0))(
  ( (tuple2!5537 (_1!2984 (_ BitVec 64)) (_2!2984 V!1377)) )
))
(declare-datatypes ((List!4652 0))(
  ( (Nil!4642) (Cons!4642 (h!10039 tuple2!5536) (t!73174 List!4652)) )
))
(declare-fun getValueByKey!14 (List!4652 (_ BitVec 64)) Option!1228)

(declare-datatypes ((ListLongMap!51 0))(
  ( (ListLongMap!52 (toList!361 List!4652)) )
))
(declare-fun abstractMap!33 (MutLongMap!467) ListLongMap!51)

(assert (=> b!512274 (= lt!212207 (getValueByKey!14 (toList!361 (abstractMap!33 thiss!47442)) key!7052))))

(declare-fun res!217387 () Bool)

(declare-fun isDefined!1042 (Option!1228) Bool)

(assert (=> b!512274 (= res!217387 (not (isDefined!1042 lt!212207)))))

(assert (=> b!512274 (=> res!217387 e!306087)))

(declare-fun b!512275 () Bool)

(declare-fun e!306088 () Bool)

(declare-fun e!306094 () Bool)

(assert (=> b!512275 (= e!306088 e!306094)))

(declare-fun mapNonEmpty!1802 () Bool)

(declare-fun tp!159229 () Bool)

(assert (=> mapNonEmpty!1802 (= mapRes!1802 (and tp!159229 tp_is_empty!2471))))

(declare-fun mapValue!1802 () V!1377)

(declare-fun mapRest!1802 () (Array (_ BitVec 32) V!1377))

(declare-fun mapKey!1802 () (_ BitVec 32))

(assert (=> mapNonEmpty!1802 (= (arr!819 (_values!745 (v!15646 (underlying!1114 thiss!47442)))) (store mapRest!1802 mapKey!1802 mapValue!1802))))

(declare-fun b!512276 () Bool)

(declare-fun e!306089 () Bool)

(assert (=> b!512276 (= e!306089 e!306091)))

(declare-fun c!99549 () Bool)

(declare-fun contains!1048 (MutLongMap!467 (_ BitVec 64)) Bool)

(assert (=> b!512276 (= c!99549 (contains!1048 thiss!47442 key!7052))))

(declare-fun lt!212206 () V!1377)

(declare-fun choose!3651 (MutLongMap!467 (_ BitVec 64)) V!1377)

(assert (=> b!512276 (= lt!212206 (choose!3651 thiss!47442 key!7052))))

(declare-fun b!512277 () Bool)

(declare-fun res!217385 () Bool)

(assert (=> b!512277 (=> (not res!217385) (not e!306089))))

(declare-fun valid!421 (MutLongMap!467) Bool)

(assert (=> b!512277 (= res!217385 (valid!421 thiss!47442))))

(declare-fun b!512278 () Bool)

(declare-fun dynLambda!2963 (Int (_ BitVec 64)) V!1377)

(declare-fun defaultEntry!816 (MutLongMap!467) Int)

(assert (=> b!512278 (= e!306091 (not (= lt!212206 (dynLambda!2963 (defaultEntry!816 thiss!47442) key!7052))))))

(declare-fun res!217386 () Bool)

(assert (=> start!46362 (=> (not res!217386) (not e!306089))))

(get-info :version)

(assert (=> start!46362 (= res!217386 ((_ is MutLongMapExt!466) thiss!47442))))

(assert (=> start!46362 e!306089))

(declare-fun e!306092 () Bool)

(assert (=> start!46362 e!306092))

(assert (=> start!46362 true))

(declare-fun array_inv!587 (array!1771) Bool)

(declare-fun array_inv!588 (array!1773) Bool)

(assert (=> b!512272 (= e!306094 (and tp!159228 tp_is_empty!2471 (array_inv!587 (_keys!758 (v!15646 (underlying!1114 thiss!47442)))) (array_inv!588 (_values!745 (v!15646 (underlying!1114 thiss!47442)))) e!306093))))

(declare-fun b!512279 () Bool)

(assert (=> b!512279 (= e!306092 e!306088)))

(declare-fun b!512280 () Bool)

(declare-fun get!1765 (Option!1228) V!1377)

(assert (=> b!512280 (= e!306087 (not (= lt!212206 (get!1765 lt!212207))))))

(assert (= (and start!46362 res!217386) b!512277))

(assert (= (and b!512277 res!217385) b!512276))

(assert (= (and b!512276 c!99549) b!512274))

(assert (= (and b!512276 (not c!99549)) b!512278))

(assert (= (and b!512274 (not res!217387)) b!512280))

(assert (= (and b!512273 condMapEmpty!1802) mapIsEmpty!1802))

(assert (= (and b!512273 (not condMapEmpty!1802)) mapNonEmpty!1802))

(assert (= b!512272 b!512273))

(assert (= b!512275 b!512272))

(assert (= b!512279 b!512275))

(assert (= (and start!46362 ((_ is LongMap!467) thiss!47442)) b!512279))

(declare-fun b_lambda!19959 () Bool)

(assert (=> (not b_lambda!19959) (not b!512278)))

(declare-fun t!73173 () Bool)

(declare-fun tb!47119 () Bool)

(assert (=> (and b!512272 (= (defaultEntry!815 (v!15646 (underlying!1114 thiss!47442))) (defaultEntry!816 thiss!47442)) t!73173) tb!47119))

(declare-fun result!52112 () Bool)

(assert (=> tb!47119 (= result!52112 tp_is_empty!2471)))

(assert (=> b!512278 t!73173))

(declare-fun b_and!50699 () Bool)

(assert (= b_and!50697 (and (=> t!73173 result!52112) b_and!50699)))

(declare-fun m!759047 () Bool)

(assert (=> b!512272 m!759047))

(declare-fun m!759049 () Bool)

(assert (=> b!512272 m!759049))

(declare-fun m!759051 () Bool)

(assert (=> b!512278 m!759051))

(declare-fun m!759053 () Bool)

(assert (=> b!512278 m!759053))

(declare-fun m!759055 () Bool)

(assert (=> b!512277 m!759055))

(declare-fun m!759057 () Bool)

(assert (=> b!512276 m!759057))

(declare-fun m!759059 () Bool)

(assert (=> b!512276 m!759059))

(declare-fun m!759061 () Bool)

(assert (=> b!512280 m!759061))

(declare-fun m!759063 () Bool)

(assert (=> mapNonEmpty!1802 m!759063))

(declare-fun m!759065 () Bool)

(assert (=> b!512274 m!759065))

(declare-fun m!759067 () Bool)

(assert (=> b!512274 m!759067))

(declare-fun m!759069 () Bool)

(assert (=> b!512274 m!759069))

(check-sat (not b!512274) tp_is_empty!2471 (not b!512278) (not b_lambda!19959) (not mapNonEmpty!1802) (not b_next!13275) (not b!512272) b_and!50699 (not b!512276) (not b!512277) (not b!512280))
(check-sat b_and!50699 (not b_next!13275))
(get-model)

(declare-fun d!184043 () Bool)

(assert (=> d!184043 (= (get!1765 lt!212207) (v!15647 lt!212207))))

(assert (=> b!512280 d!184043))

(declare-fun d!184045 () Bool)

(assert (=> d!184045 (= (array_inv!587 (_keys!758 (v!15646 (underlying!1114 thiss!47442)))) (bvsge (size!3752 (_keys!758 (v!15646 (underlying!1114 thiss!47442)))) #b00000000000000000000000000000000))))

(assert (=> b!512272 d!184045))

(declare-fun d!184047 () Bool)

(assert (=> d!184047 (= (array_inv!588 (_values!745 (v!15646 (underlying!1114 thiss!47442)))) (bvsge (size!3753 (_values!745 (v!15646 (underlying!1114 thiss!47442)))) #b00000000000000000000000000000000))))

(assert (=> b!512272 d!184047))

(declare-fun b!512292 () Bool)

(declare-fun e!306099 () Option!1228)

(declare-fun e!306100 () Option!1228)

(assert (=> b!512292 (= e!306099 e!306100)))

(declare-fun c!99555 () Bool)

(assert (=> b!512292 (= c!99555 (and ((_ is Cons!4642) (toList!361 (abstractMap!33 thiss!47442))) (not (= (_1!2984 (h!10039 (toList!361 (abstractMap!33 thiss!47442)))) key!7052))))))

(declare-fun b!512294 () Bool)

(assert (=> b!512294 (= e!306100 None!1227)))

(declare-fun b!512291 () Bool)

(assert (=> b!512291 (= e!306099 (Some!1227 (_2!2984 (h!10039 (toList!361 (abstractMap!33 thiss!47442))))))))

(declare-fun b!512293 () Bool)

(assert (=> b!512293 (= e!306100 (getValueByKey!14 (t!73174 (toList!361 (abstractMap!33 thiss!47442))) key!7052))))

(declare-fun d!184049 () Bool)

(declare-fun c!99554 () Bool)

(assert (=> d!184049 (= c!99554 (and ((_ is Cons!4642) (toList!361 (abstractMap!33 thiss!47442))) (= (_1!2984 (h!10039 (toList!361 (abstractMap!33 thiss!47442)))) key!7052)))))

(assert (=> d!184049 (= (getValueByKey!14 (toList!361 (abstractMap!33 thiss!47442)) key!7052) e!306099)))

(assert (= (and d!184049 c!99554) b!512291))

(assert (= (and d!184049 (not c!99554)) b!512292))

(assert (= (and b!512292 c!99555) b!512293))

(assert (= (and b!512292 (not c!99555)) b!512294))

(declare-fun m!759071 () Bool)

(assert (=> b!512293 m!759071))

(assert (=> b!512274 d!184049))

(declare-fun d!184051 () Bool)

(declare-fun c!99558 () Bool)

(assert (=> d!184051 (= c!99558 ((_ is LongMap!467) thiss!47442))))

(declare-fun e!306103 () ListLongMap!51)

(assert (=> d!184051 (= (abstractMap!33 thiss!47442) e!306103)))

(declare-fun b!512299 () Bool)

(declare-fun abstractMap!34 (MutLongMap!467) ListLongMap!51)

(assert (=> b!512299 (= e!306103 (abstractMap!34 thiss!47442))))

(declare-fun b!512300 () Bool)

(declare-fun abstractMap!35 (MutLongMap!467) ListLongMap!51)

(assert (=> b!512300 (= e!306103 (abstractMap!35 thiss!47442))))

(assert (= (and d!184051 c!99558) b!512299))

(assert (= (and d!184051 (not c!99558)) b!512300))

(declare-fun m!759073 () Bool)

(assert (=> b!512299 m!759073))

(declare-fun m!759075 () Bool)

(assert (=> b!512300 m!759075))

(assert (=> b!512274 d!184051))

(declare-fun d!184053 () Bool)

(declare-fun isEmpty!3574 (Option!1228) Bool)

(assert (=> d!184053 (= (isDefined!1042 lt!212207) (not (isEmpty!3574 lt!212207)))))

(declare-fun bs!59346 () Bool)

(assert (= bs!59346 d!184053))

(declare-fun m!759077 () Bool)

(assert (=> bs!59346 m!759077))

(assert (=> b!512274 d!184053))

(declare-fun d!184055 () Bool)

(declare-fun c!99561 () Bool)

(assert (=> d!184055 (= c!99561 ((_ is LongMap!467) thiss!47442))))

(declare-fun e!306106 () Int)

(assert (=> d!184055 (= (defaultEntry!816 thiss!47442) e!306106)))

(declare-fun b!512305 () Bool)

(declare-fun defaultEntry!817 (MutLongMap!467) Int)

(assert (=> b!512305 (= e!306106 (defaultEntry!817 thiss!47442))))

(declare-fun b!512306 () Bool)

(declare-fun defaultEntry!818 (MutLongMap!467) Int)

(assert (=> b!512306 (= e!306106 (defaultEntry!818 thiss!47442))))

(assert (= (and d!184055 c!99561) b!512305))

(assert (= (and d!184055 (not c!99561)) b!512306))

(declare-fun m!759079 () Bool)

(assert (=> b!512305 m!759079))

(declare-fun m!759081 () Bool)

(assert (=> b!512306 m!759081))

(assert (=> b!512278 d!184055))

(declare-fun d!184057 () Bool)

(declare-fun lt!212210 () Bool)

(declare-fun contains!1049 (ListLongMap!51 (_ BitVec 64)) Bool)

(assert (=> d!184057 (= lt!212210 (contains!1049 (abstractMap!33 thiss!47442) key!7052))))

(declare-fun e!306109 () Bool)

(assert (=> d!184057 (= lt!212210 e!306109)))

(declare-fun c!99564 () Bool)

(assert (=> d!184057 (= c!99564 ((_ is LongMap!467) thiss!47442))))

(assert (=> d!184057 (valid!421 thiss!47442)))

(assert (=> d!184057 (= (contains!1048 thiss!47442 key!7052) lt!212210)))

(declare-fun b!512311 () Bool)

(declare-fun contains!1050 (MutLongMap!467 (_ BitVec 64)) Bool)

(assert (=> b!512311 (= e!306109 (contains!1050 thiss!47442 key!7052))))

(declare-fun b!512312 () Bool)

(declare-fun contains!1051 (MutLongMap!467 (_ BitVec 64)) Bool)

(assert (=> b!512312 (= e!306109 (contains!1051 thiss!47442 key!7052))))

(assert (= (and d!184057 c!99564) b!512311))

(assert (= (and d!184057 (not c!99564)) b!512312))

(assert (=> d!184057 m!759065))

(assert (=> d!184057 m!759065))

(declare-fun m!759083 () Bool)

(assert (=> d!184057 m!759083))

(assert (=> d!184057 m!759055))

(declare-fun m!759085 () Bool)

(assert (=> b!512311 m!759085))

(declare-fun m!759087 () Bool)

(assert (=> b!512312 m!759087))

(assert (=> b!512276 d!184057))

(declare-fun d!184059 () Bool)

(declare-fun choose!3652 (MutLongMap!467 (_ BitVec 64)) V!1377)

(assert (=> d!184059 (= (choose!3651 thiss!47442 key!7052) (choose!3652 thiss!47442 key!7052))))

(declare-fun bs!59347 () Bool)

(assert (= bs!59347 d!184059))

(declare-fun m!759089 () Bool)

(assert (=> bs!59347 m!759089))

(assert (=> b!512276 d!184059))

(declare-fun d!184061 () Bool)

(declare-fun c!99567 () Bool)

(assert (=> d!184061 (= c!99567 ((_ is LongMap!467) thiss!47442))))

(declare-fun e!306112 () Bool)

(assert (=> d!184061 (= (valid!421 thiss!47442) e!306112)))

(declare-fun b!512317 () Bool)

(declare-fun valid!422 (MutLongMap!467) Bool)

(assert (=> b!512317 (= e!306112 (valid!422 thiss!47442))))

(declare-fun b!512318 () Bool)

(declare-fun valid!423 (MutLongMap!467) Bool)

(assert (=> b!512318 (= e!306112 (valid!423 thiss!47442))))

(assert (= (and d!184061 c!99567) b!512317))

(assert (= (and d!184061 (not c!99567)) b!512318))

(declare-fun m!759091 () Bool)

(assert (=> b!512317 m!759091))

(declare-fun m!759093 () Bool)

(assert (=> b!512318 m!759093))

(assert (=> b!512277 d!184061))

(declare-fun condMapEmpty!1805 () Bool)

(declare-fun mapDefault!1805 () V!1377)

(assert (=> mapNonEmpty!1802 (= condMapEmpty!1805 (= mapRest!1802 ((as const (Array (_ BitVec 32) V!1377)) mapDefault!1805)))))

(declare-fun mapRes!1805 () Bool)

(assert (=> mapNonEmpty!1802 (= tp!159229 (and tp_is_empty!2471 mapRes!1805))))

(declare-fun mapIsEmpty!1805 () Bool)

(assert (=> mapIsEmpty!1805 mapRes!1805))

(declare-fun mapNonEmpty!1805 () Bool)

(declare-fun tp!159232 () Bool)

(assert (=> mapNonEmpty!1805 (= mapRes!1805 (and tp!159232 tp_is_empty!2471))))

(declare-fun mapValue!1805 () V!1377)

(declare-fun mapKey!1805 () (_ BitVec 32))

(declare-fun mapRest!1805 () (Array (_ BitVec 32) V!1377))

(assert (=> mapNonEmpty!1805 (= mapRest!1802 (store mapRest!1805 mapKey!1805 mapValue!1805))))

(assert (= (and mapNonEmpty!1802 condMapEmpty!1805) mapIsEmpty!1805))

(assert (= (and mapNonEmpty!1802 (not condMapEmpty!1805)) mapNonEmpty!1805))

(declare-fun m!759095 () Bool)

(assert (=> mapNonEmpty!1805 m!759095))

(declare-fun b_lambda!19961 () Bool)

(assert (= b_lambda!19959 (or (and b!512272 b_free!13275 (= (defaultEntry!815 (v!15646 (underlying!1114 thiss!47442))) (defaultEntry!816 thiss!47442))) b_lambda!19961)))

(check-sat (not b_next!13275) (not b!512293) (not b!512305) b_and!50699 (not b!512306) tp_is_empty!2471 (not b!512299) (not b!512312) (not b!512311) (not d!184059) (not b!512300) (not d!184057) (not b_lambda!19961) (not b!512317) (not b!512318) (not d!184053) (not mapNonEmpty!1805))
(check-sat b_and!50699 (not b_next!13275))
(get-model)

(declare-fun d!184063 () Bool)

(declare-fun map!954 (MutLongMap!467) ListLongMap!51)

(assert (=> d!184063 (= (abstractMap!34 thiss!47442) (map!954 thiss!47442))))

(declare-fun bs!59348 () Bool)

(assert (= bs!59348 d!184063))

(declare-fun m!759097 () Bool)

(assert (=> bs!59348 m!759097))

(assert (=> b!512299 d!184063))

(declare-fun d!184065 () Bool)

(declare-fun choose!3653 (MutLongMap!467) Int)

(assert (=> d!184065 (= (defaultEntry!818 thiss!47442) (choose!3653 thiss!47442))))

(declare-fun bs!59349 () Bool)

(assert (= bs!59349 d!184065))

(declare-fun m!759099 () Bool)

(assert (=> bs!59349 m!759099))

(assert (=> b!512306 d!184065))

(declare-fun b!512329 () Bool)

(declare-fun e!306120 () Bool)

(declare-fun e!306119 () Bool)

(assert (=> b!512329 (= e!306120 e!306119)))

(declare-fun c!99570 () Bool)

(assert (=> b!512329 (= c!99570 (contains!1048 thiss!47442 key!7052))))

(declare-fun d!184067 () Bool)

(assert (=> d!184067 e!306120))

(declare-fun res!217395 () Bool)

(assert (=> d!184067 (=> (not res!217395) (not e!306120))))

(assert (=> d!184067 (= res!217395 (valid!421 thiss!47442))))

(assert (=> d!184067 tp_is_empty!2471))

(declare-fun res!217396 () V!1377)

(assert (=> d!184067 (= (choose!3652 thiss!47442 key!7052) res!217396)))

(declare-fun e!306121 () Bool)

(declare-fun b!512332 () Bool)

(assert (=> b!512332 (= e!306121 (= res!217396 (get!1765 (getValueByKey!14 (toList!361 (abstractMap!33 thiss!47442)) key!7052))))))

(declare-fun b!512330 () Bool)

(assert (=> b!512330 (= e!306119 e!306121)))

(declare-fun res!217394 () Bool)

(assert (=> b!512330 (= res!217394 (isDefined!1042 (getValueByKey!14 (toList!361 (abstractMap!33 thiss!47442)) key!7052)))))

(assert (=> b!512330 (=> (not res!217394) (not e!306121))))

(declare-fun b!512331 () Bool)

(assert (=> b!512331 (= e!306119 (= res!217396 (dynLambda!2963 (defaultEntry!816 thiss!47442) key!7052)))))

(assert (= (and d!184067 res!217395) b!512329))

(assert (= (and b!512329 c!99570) b!512330))

(assert (= (and b!512329 (not c!99570)) b!512331))

(assert (= (and b!512330 res!217394) b!512332))

(declare-fun b_lambda!19963 () Bool)

(assert (=> (not b_lambda!19963) (not b!512331)))

(assert (=> b!512331 t!73173))

(declare-fun b_and!50701 () Bool)

(assert (= b_and!50699 (and (=> t!73173 result!52112) b_and!50701)))

(assert (=> b!512329 m!759057))

(assert (=> b!512330 m!759065))

(assert (=> b!512330 m!759067))

(assert (=> b!512330 m!759067))

(declare-fun m!759101 () Bool)

(assert (=> b!512330 m!759101))

(assert (=> b!512332 m!759065))

(assert (=> b!512332 m!759067))

(assert (=> b!512332 m!759067))

(declare-fun m!759103 () Bool)

(assert (=> b!512332 m!759103))

(assert (=> b!512331 m!759051))

(assert (=> b!512331 m!759053))

(assert (=> d!184067 m!759055))

(assert (=> d!184059 d!184067))

(declare-fun b!512334 () Bool)

(declare-fun e!306122 () Option!1228)

(declare-fun e!306123 () Option!1228)

(assert (=> b!512334 (= e!306122 e!306123)))

(declare-fun c!99572 () Bool)

(assert (=> b!512334 (= c!99572 (and ((_ is Cons!4642) (t!73174 (toList!361 (abstractMap!33 thiss!47442)))) (not (= (_1!2984 (h!10039 (t!73174 (toList!361 (abstractMap!33 thiss!47442))))) key!7052))))))

(declare-fun b!512336 () Bool)

(assert (=> b!512336 (= e!306123 None!1227)))

(declare-fun b!512333 () Bool)

(assert (=> b!512333 (= e!306122 (Some!1227 (_2!2984 (h!10039 (t!73174 (toList!361 (abstractMap!33 thiss!47442)))))))))

(declare-fun b!512335 () Bool)

(assert (=> b!512335 (= e!306123 (getValueByKey!14 (t!73174 (t!73174 (toList!361 (abstractMap!33 thiss!47442)))) key!7052))))

(declare-fun d!184069 () Bool)

(declare-fun c!99571 () Bool)

(assert (=> d!184069 (= c!99571 (and ((_ is Cons!4642) (t!73174 (toList!361 (abstractMap!33 thiss!47442)))) (= (_1!2984 (h!10039 (t!73174 (toList!361 (abstractMap!33 thiss!47442))))) key!7052)))))

(assert (=> d!184069 (= (getValueByKey!14 (t!73174 (toList!361 (abstractMap!33 thiss!47442))) key!7052) e!306122)))

(assert (= (and d!184069 c!99571) b!512333))

(assert (= (and d!184069 (not c!99571)) b!512334))

(assert (= (and b!512334 c!99572) b!512335))

(assert (= (and b!512334 (not c!99572)) b!512336))

(declare-fun m!759105 () Bool)

(assert (=> b!512335 m!759105))

(assert (=> b!512293 d!184069))

(declare-fun d!184071 () Bool)

(declare-fun choose!3654 (MutLongMap!467) ListLongMap!51)

(assert (=> d!184071 (= (abstractMap!35 thiss!47442) (choose!3654 thiss!47442))))

(declare-fun bs!59350 () Bool)

(assert (= bs!59350 d!184071))

(declare-fun m!759107 () Bool)

(assert (=> bs!59350 m!759107))

(assert (=> b!512300 d!184071))

(declare-fun d!184073 () Bool)

(declare-fun lt!212213 () Bool)

(assert (=> d!184073 (= lt!212213 (contains!1049 (map!954 thiss!47442) key!7052))))

(declare-fun contains!1052 (LongMapFixedSize!934 (_ BitVec 64)) Bool)

(assert (=> d!184073 (= lt!212213 (contains!1052 (v!15646 (underlying!1114 thiss!47442)) key!7052))))

(assert (=> d!184073 (valid!422 thiss!47442)))

(assert (=> d!184073 (= (contains!1050 thiss!47442 key!7052) lt!212213)))

(declare-fun bs!59351 () Bool)

(assert (= bs!59351 d!184073))

(assert (=> bs!59351 m!759097))

(assert (=> bs!59351 m!759097))

(declare-fun m!759109 () Bool)

(assert (=> bs!59351 m!759109))

(declare-fun m!759111 () Bool)

(assert (=> bs!59351 m!759111))

(assert (=> bs!59351 m!759091))

(assert (=> b!512311 d!184073))

(declare-fun d!184075 () Bool)

(declare-fun valid!424 (LongMapFixedSize!934) Bool)

(assert (=> d!184075 (= (valid!422 thiss!47442) (valid!424 (v!15646 (underlying!1114 thiss!47442))))))

(declare-fun bs!59352 () Bool)

(assert (= bs!59352 d!184075))

(declare-fun m!759113 () Bool)

(assert (=> bs!59352 m!759113))

(assert (=> b!512317 d!184075))

(declare-fun d!184077 () Bool)

(declare-fun lt!212216 () Bool)

(assert (=> d!184077 (= lt!212216 (contains!1049 (abstractMap!33 thiss!47442) key!7052))))

(declare-fun choose!3655 (MutLongMap!467 (_ BitVec 64)) Bool)

(assert (=> d!184077 (= lt!212216 (choose!3655 thiss!47442 key!7052))))

(assert (=> d!184077 (valid!421 thiss!47442)))

(assert (=> d!184077 (= (contains!1051 thiss!47442 key!7052) lt!212216)))

(declare-fun bs!59353 () Bool)

(assert (= bs!59353 d!184077))

(assert (=> bs!59353 m!759065))

(assert (=> bs!59353 m!759065))

(assert (=> bs!59353 m!759083))

(declare-fun m!759115 () Bool)

(assert (=> bs!59353 m!759115))

(assert (=> bs!59353 m!759055))

(assert (=> b!512312 d!184077))

(declare-fun d!184079 () Bool)

(declare-fun choose!3656 (MutLongMap!467) Bool)

(assert (=> d!184079 (= (valid!423 thiss!47442) (choose!3656 thiss!47442))))

(declare-fun bs!59354 () Bool)

(assert (= bs!59354 d!184079))

(declare-fun m!759117 () Bool)

(assert (=> bs!59354 m!759117))

(assert (=> b!512318 d!184079))

(declare-fun d!184081 () Bool)

(declare-fun e!306128 () Bool)

(assert (=> d!184081 e!306128))

(declare-fun res!217399 () Bool)

(assert (=> d!184081 (=> res!217399 e!306128)))

(declare-fun lt!212228 () Bool)

(assert (=> d!184081 (= res!217399 (not lt!212228))))

(declare-fun lt!212226 () Bool)

(assert (=> d!184081 (= lt!212228 lt!212226)))

(declare-datatypes ((Unit!8402 0))(
  ( (Unit!8403) )
))
(declare-fun lt!212225 () Unit!8402)

(declare-fun e!306129 () Unit!8402)

(assert (=> d!184081 (= lt!212225 e!306129)))

(declare-fun c!99575 () Bool)

(assert (=> d!184081 (= c!99575 lt!212226)))

(declare-fun containsKey!11 (List!4652 (_ BitVec 64)) Bool)

(assert (=> d!184081 (= lt!212226 (containsKey!11 (toList!361 (abstractMap!33 thiss!47442)) key!7052))))

(assert (=> d!184081 (= (contains!1049 (abstractMap!33 thiss!47442) key!7052) lt!212228)))

(declare-fun b!512343 () Bool)

(declare-fun lt!212227 () Unit!8402)

(assert (=> b!512343 (= e!306129 lt!212227)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!6 (List!4652 (_ BitVec 64)) Unit!8402)

(assert (=> b!512343 (= lt!212227 (lemmaContainsKeyImpliesGetValueByKeyDefined!6 (toList!361 (abstractMap!33 thiss!47442)) key!7052))))

(assert (=> b!512343 (isDefined!1042 (getValueByKey!14 (toList!361 (abstractMap!33 thiss!47442)) key!7052))))

(declare-fun b!512344 () Bool)

(declare-fun Unit!8404 () Unit!8402)

(assert (=> b!512344 (= e!306129 Unit!8404)))

(declare-fun b!512345 () Bool)

(assert (=> b!512345 (= e!306128 (isDefined!1042 (getValueByKey!14 (toList!361 (abstractMap!33 thiss!47442)) key!7052)))))

(assert (= (and d!184081 c!99575) b!512343))

(assert (= (and d!184081 (not c!99575)) b!512344))

(assert (= (and d!184081 (not res!217399)) b!512345))

(declare-fun m!759119 () Bool)

(assert (=> d!184081 m!759119))

(declare-fun m!759121 () Bool)

(assert (=> b!512343 m!759121))

(assert (=> b!512343 m!759067))

(assert (=> b!512343 m!759067))

(assert (=> b!512343 m!759101))

(assert (=> b!512345 m!759067))

(assert (=> b!512345 m!759067))

(assert (=> b!512345 m!759101))

(assert (=> d!184057 d!184081))

(assert (=> d!184057 d!184051))

(assert (=> d!184057 d!184061))

(declare-fun d!184083 () Bool)

(assert (=> d!184083 (= (defaultEntry!817 thiss!47442) (defaultEntry!815 (v!15646 (underlying!1114 thiss!47442))))))

(assert (=> b!512305 d!184083))

(declare-fun d!184085 () Bool)

(assert (=> d!184085 (= (isEmpty!3574 lt!212207) (not ((_ is Some!1227) lt!212207)))))

(assert (=> d!184053 d!184085))

(declare-fun condMapEmpty!1806 () Bool)

(declare-fun mapDefault!1806 () V!1377)

(assert (=> mapNonEmpty!1805 (= condMapEmpty!1806 (= mapRest!1805 ((as const (Array (_ BitVec 32) V!1377)) mapDefault!1806)))))

(declare-fun mapRes!1806 () Bool)

(assert (=> mapNonEmpty!1805 (= tp!159232 (and tp_is_empty!2471 mapRes!1806))))

(declare-fun mapIsEmpty!1806 () Bool)

(assert (=> mapIsEmpty!1806 mapRes!1806))

(declare-fun mapNonEmpty!1806 () Bool)

(declare-fun tp!159233 () Bool)

(assert (=> mapNonEmpty!1806 (= mapRes!1806 (and tp!159233 tp_is_empty!2471))))

(declare-fun mapKey!1806 () (_ BitVec 32))

(declare-fun mapRest!1806 () (Array (_ BitVec 32) V!1377))

(declare-fun mapValue!1806 () V!1377)

(assert (=> mapNonEmpty!1806 (= mapRest!1805 (store mapRest!1806 mapKey!1806 mapValue!1806))))

(assert (= (and mapNonEmpty!1805 condMapEmpty!1806) mapIsEmpty!1806))

(assert (= (and mapNonEmpty!1805 (not condMapEmpty!1806)) mapNonEmpty!1806))

(declare-fun m!759123 () Bool)

(assert (=> mapNonEmpty!1806 m!759123))

(check-sat (not b_next!13275) (not d!184065) (not d!184063) (not d!184073) (not b_lambda!19963) (not b!512343) (not d!184079) (not b!512332) (not b!512329) (not b_lambda!19961) (not d!184067) (not d!184071) (not d!184081) (not b!512345) tp_is_empty!2471 (not b!512335) (not mapNonEmpty!1806) b_and!50701 (not b!512330) (not d!184077) (not b!512331) (not d!184075))
(check-sat b_and!50701 (not b_next!13275))

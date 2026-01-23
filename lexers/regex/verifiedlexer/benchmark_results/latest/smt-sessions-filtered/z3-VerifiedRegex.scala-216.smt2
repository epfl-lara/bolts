; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!3394 () Bool)

(assert start!3394)

(declare-fun b!48443 () Bool)

(declare-fun b_free!1373 () Bool)

(declare-fun b_next!1373 () Bool)

(assert (=> b!48443 (= b_free!1373 (not b_next!1373))))

(declare-fun tp!32707 () Bool)

(declare-fun b_and!1409 () Bool)

(assert (=> b!48443 (= tp!32707 b_and!1409)))

(declare-fun b!48441 () Bool)

(declare-fun b_free!1375 () Bool)

(declare-fun b_next!1375 () Bool)

(assert (=> b!48441 (= b_free!1375 (not b_next!1375))))

(declare-fun tp!32706 () Bool)

(declare-fun b_and!1411 () Bool)

(assert (=> b!48441 (= tp!32706 b_and!1411)))

(declare-fun res!32138 () Bool)

(declare-fun e!28195 () Bool)

(assert (=> start!3394 (=> (not res!32138) (not e!28195))))

(declare-datatypes ((K!605 0))(
  ( (K!606 (val!284 Int)) )
))
(declare-datatypes ((V!659 0))(
  ( (V!660 (val!285 Int)) )
))
(declare-datatypes ((tuple2!1086 0))(
  ( (tuple2!1087 (_1!750 K!605) (_2!750 V!659)) )
))
(declare-datatypes ((List!841 0))(
  ( (Nil!835) (Cons!835 (h!6231 tuple2!1086) (t!17038 List!841)) )
))
(declare-datatypes ((array!1028 0))(
  ( (array!1029 (arr!484 (Array (_ BitVec 32) (_ BitVec 64))) (size!833 (_ BitVec 32))) )
))
(declare-datatypes ((array!1030 0))(
  ( (array!1031 (arr!485 (Array (_ BitVec 32) List!841)) (size!834 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!598 0))(
  ( (LongMapFixedSize!599 (defaultEntry!638 Int) (mask!1040 (_ BitVec 32)) (extraKeys!545 (_ BitVec 32)) (zeroValue!555 List!841) (minValue!555 List!841) (_size!731 (_ BitVec 32)) (_keys!590 array!1028) (_values!577 array!1030) (_vacant!360 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!1185 0))(
  ( (Cell!1186 (v!12613 LongMapFixedSize!598)) )
))
(declare-datatypes ((MutLongMap!299 0))(
  ( (LongMap!299 (underlying!797 Cell!1185)) (MutLongMapExt!298 (__x!1410 Int)) )
))
(declare-datatypes ((Hashable!295 0))(
  ( (HashableExt!294 (__x!1411 Int)) )
))
(declare-datatypes ((Cell!1187 0))(
  ( (Cell!1188 (v!12614 MutLongMap!299)) )
))
(declare-datatypes ((MutableMap!295 0))(
  ( (MutableMapExt!294 (__x!1412 Int)) (HashMap!295 (underlying!798 Cell!1187) (hashF!2164 Hashable!295) (_size!732 (_ BitVec 32)) (defaultValue!444 Int)) )
))
(declare-fun thiss!47822 () MutableMap!295)

(declare-fun valid!273 (MutableMap!295) Bool)

(assert (=> start!3394 (= res!32138 (valid!273 thiss!47822))))

(assert (=> start!3394 e!28195))

(declare-fun e!28197 () Bool)

(assert (=> start!3394 e!28197))

(declare-fun tp_is_empty!479 () Bool)

(assert (=> start!3394 tp_is_empty!479))

(declare-fun tp_is_empty!481 () Bool)

(assert (=> start!3394 tp_is_empty!481))

(declare-fun mapIsEmpty!1171 () Bool)

(declare-fun mapRes!1171 () Bool)

(assert (=> mapIsEmpty!1171 mapRes!1171))

(declare-fun e!28200 () Bool)

(assert (=> b!48441 (= e!28197 (and e!28200 tp!32706))))

(declare-fun b!48442 () Bool)

(declare-fun res!32137 () Bool)

(assert (=> b!48442 (=> (not res!32137) (not e!28195))))

(get-info :version)

(assert (=> b!48442 (= res!32137 ((_ is MutableMapExt!294) thiss!47822))))

(declare-fun tp!32711 () Bool)

(declare-fun e!28194 () Bool)

(declare-fun tp!32705 () Bool)

(declare-fun e!28196 () Bool)

(declare-fun array_inv!329 (array!1028) Bool)

(declare-fun array_inv!330 (array!1030) Bool)

(assert (=> b!48443 (= e!28194 (and tp!32707 tp!32711 tp!32705 (array_inv!329 (_keys!590 (v!12613 (underlying!797 (v!12614 (underlying!798 thiss!47822)))))) (array_inv!330 (_values!577 (v!12613 (underlying!797 (v!12614 (underlying!798 thiss!47822)))))) e!28196))))

(declare-fun b!48444 () Bool)

(declare-fun key!7227 () K!605)

(declare-fun v!11804 () V!659)

(declare-datatypes ((tuple2!1088 0))(
  ( (tuple2!1089 (_1!751 Bool) (_2!751 MutableMap!295)) )
))
(declare-fun update!33 (MutableMap!295 K!605 V!659) tuple2!1088)

(assert (=> b!48444 (= e!28195 (not ((_ is MutableMapExt!294) (_2!751 (update!33 thiss!47822 key!7227 v!11804)))))))

(declare-fun b!48445 () Bool)

(declare-fun e!28199 () Bool)

(declare-fun lt!6976 () MutLongMap!299)

(assert (=> b!48445 (= e!28200 (and e!28199 ((_ is LongMap!299) lt!6976)))))

(assert (=> b!48445 (= lt!6976 (v!12614 (underlying!798 thiss!47822)))))

(declare-fun mapNonEmpty!1171 () Bool)

(declare-fun tp!32710 () Bool)

(declare-fun tp!32708 () Bool)

(assert (=> mapNonEmpty!1171 (= mapRes!1171 (and tp!32710 tp!32708))))

(declare-fun mapRest!1171 () (Array (_ BitVec 32) List!841))

(declare-fun mapKey!1171 () (_ BitVec 32))

(declare-fun mapValue!1171 () List!841)

(assert (=> mapNonEmpty!1171 (= (arr!485 (_values!577 (v!12613 (underlying!797 (v!12614 (underlying!798 thiss!47822)))))) (store mapRest!1171 mapKey!1171 mapValue!1171))))

(declare-fun b!48446 () Bool)

(declare-fun e!28198 () Bool)

(assert (=> b!48446 (= e!28199 e!28198)))

(declare-fun b!48447 () Bool)

(declare-fun tp!32709 () Bool)

(assert (=> b!48447 (= e!28196 (and tp!32709 mapRes!1171))))

(declare-fun condMapEmpty!1171 () Bool)

(declare-fun mapDefault!1171 () List!841)

(assert (=> b!48447 (= condMapEmpty!1171 (= (arr!485 (_values!577 (v!12613 (underlying!797 (v!12614 (underlying!798 thiss!47822)))))) ((as const (Array (_ BitVec 32) List!841)) mapDefault!1171)))))

(declare-fun b!48448 () Bool)

(assert (=> b!48448 (= e!28198 e!28194)))

(assert (= (and start!3394 res!32138) b!48442))

(assert (= (and b!48442 res!32137) b!48444))

(assert (= (and b!48447 condMapEmpty!1171) mapIsEmpty!1171))

(assert (= (and b!48447 (not condMapEmpty!1171)) mapNonEmpty!1171))

(assert (= b!48443 b!48447))

(assert (= b!48448 b!48443))

(assert (= b!48446 b!48448))

(assert (= (and b!48445 ((_ is LongMap!299) (v!12614 (underlying!798 thiss!47822)))) b!48446))

(assert (= b!48441 b!48445))

(assert (= (and start!3394 ((_ is HashMap!295) thiss!47822)) b!48441))

(declare-fun m!22178 () Bool)

(assert (=> start!3394 m!22178))

(declare-fun m!22180 () Bool)

(assert (=> b!48443 m!22180))

(declare-fun m!22182 () Bool)

(assert (=> b!48443 m!22182))

(declare-fun m!22184 () Bool)

(assert (=> b!48444 m!22184))

(declare-fun m!22186 () Bool)

(assert (=> mapNonEmpty!1171 m!22186))

(check-sat (not b!48444) (not b!48443) (not b_next!1373) tp_is_empty!479 (not mapNonEmpty!1171) tp_is_empty!481 b_and!1411 b_and!1409 (not start!3394) (not b!48447) (not b_next!1375))
(check-sat b_and!1409 b_and!1411 (not b_next!1375) (not b_next!1373))
(get-model)

(declare-fun d!5809 () Bool)

(declare-fun c!16316 () Bool)

(assert (=> d!5809 (= c!16316 ((_ is MutableMapExt!294) thiss!47822))))

(declare-fun e!28204 () Bool)

(assert (=> d!5809 (= (valid!273 thiss!47822) e!28204)))

(declare-fun b!48453 () Bool)

(declare-fun valid!274 (MutableMap!295) Bool)

(assert (=> b!48453 (= e!28204 (valid!274 thiss!47822))))

(declare-fun b!48454 () Bool)

(declare-fun valid!275 (MutableMap!295) Bool)

(assert (=> b!48454 (= e!28204 (valid!275 thiss!47822))))

(assert (= (and d!5809 c!16316) b!48453))

(assert (= (and d!5809 (not c!16316)) b!48454))

(declare-fun m!22188 () Bool)

(assert (=> b!48453 m!22188))

(declare-fun m!22190 () Bool)

(assert (=> b!48454 m!22190))

(assert (=> start!3394 d!5809))

(declare-fun b!48469 () Bool)

(declare-fun e!28216 () Bool)

(declare-fun call!3057 () Bool)

(assert (=> b!48469 (= e!28216 call!3057)))

(declare-fun d!5811 () Bool)

(declare-fun e!28215 () Bool)

(assert (=> d!5811 e!28215))

(declare-fun res!32145 () Bool)

(assert (=> d!5811 (=> (not res!32145) (not e!28215))))

(declare-fun lt!6979 () tuple2!1088)

(assert (=> d!5811 (= res!32145 ((_ is MutableMapExt!294) (_2!751 lt!6979)))))

(declare-fun choose!1157 (MutableMap!295 K!605 V!659) tuple2!1088)

(assert (=> d!5811 (= lt!6979 (choose!1157 thiss!47822 key!7227 v!11804))))

(assert (=> d!5811 (valid!273 thiss!47822)))

(assert (=> d!5811 (= (update!33 thiss!47822 key!7227 v!11804) lt!6979)))

(declare-fun b!48470 () Bool)

(assert (=> b!48470 (= e!28215 e!28216)))

(declare-fun c!16322 () Bool)

(assert (=> b!48470 (= c!16322 (_1!751 lt!6979))))

(declare-fun b!48471 () Bool)

(declare-fun res!32146 () Bool)

(assert (=> b!48471 (=> (not res!32146) (not e!28215))))

(assert (=> b!48471 (= res!32146 (valid!273 (_2!751 lt!6979)))))

(declare-fun bm!3050 () Bool)

(declare-datatypes ((ListMap!69 0))(
  ( (ListMap!70 (toList!189 List!841)) )
))
(declare-fun call!3056 () ListMap!69)

(declare-fun abstractMap!11 (MutableMap!295) ListMap!69)

(assert (=> bm!3050 (= call!3056 (abstractMap!11 (_2!751 lt!6979)))))

(declare-fun bm!3051 () Bool)

(declare-fun e!28214 () ListMap!69)

(declare-fun eq!1 (ListMap!69 ListMap!69) Bool)

(assert (=> bm!3051 (= call!3057 (eq!1 call!3056 e!28214))))

(declare-fun c!16321 () Bool)

(assert (=> bm!3051 (= c!16321 c!16322)))

(declare-fun b!48472 () Bool)

(declare-fun e!28213 () Bool)

(assert (=> b!48472 (= e!28213 call!3057)))

(declare-fun b!48473 () Bool)

(assert (=> b!48473 (= e!28216 e!28213)))

(declare-fun res!32147 () Bool)

(declare-fun contains!36 (ListMap!69 K!605) Bool)

(assert (=> b!48473 (= res!32147 (contains!36 call!3056 key!7227))))

(assert (=> b!48473 (=> (not res!32147) (not e!28213))))

(declare-fun call!3055 () ListMap!69)

(declare-fun b!48474 () Bool)

(declare-fun +!4 (ListMap!69 tuple2!1086) ListMap!69)

(assert (=> b!48474 (= e!28214 (+!4 call!3055 (tuple2!1087 key!7227 v!11804)))))

(declare-fun bm!3052 () Bool)

(assert (=> bm!3052 (= call!3055 (abstractMap!11 thiss!47822))))

(declare-fun b!48475 () Bool)

(assert (=> b!48475 (= e!28214 call!3055)))

(assert (= (and d!5811 res!32145) b!48471))

(assert (= (and b!48471 res!32146) b!48470))

(assert (= (and b!48470 c!16322) b!48473))

(assert (= (and b!48470 (not c!16322)) b!48469))

(assert (= (and b!48473 res!32147) b!48472))

(assert (= (or b!48473 b!48472 b!48469) bm!3050))

(assert (= (or b!48472 b!48469) bm!3052))

(assert (= (or b!48472 b!48469) bm!3051))

(assert (= (and bm!3051 c!16321) b!48474))

(assert (= (and bm!3051 (not c!16321)) b!48475))

(declare-fun m!22192 () Bool)

(assert (=> b!48474 m!22192))

(declare-fun m!22194 () Bool)

(assert (=> bm!3050 m!22194))

(declare-fun m!22196 () Bool)

(assert (=> b!48473 m!22196))

(declare-fun m!22198 () Bool)

(assert (=> d!5811 m!22198))

(assert (=> d!5811 m!22178))

(declare-fun m!22200 () Bool)

(assert (=> bm!3052 m!22200))

(declare-fun m!22202 () Bool)

(assert (=> b!48471 m!22202))

(declare-fun m!22204 () Bool)

(assert (=> bm!3051 m!22204))

(assert (=> b!48444 d!5811))

(declare-fun d!5813 () Bool)

(assert (=> d!5813 (= (array_inv!329 (_keys!590 (v!12613 (underlying!797 (v!12614 (underlying!798 thiss!47822)))))) (bvsge (size!833 (_keys!590 (v!12613 (underlying!797 (v!12614 (underlying!798 thiss!47822)))))) #b00000000000000000000000000000000))))

(assert (=> b!48443 d!5813))

(declare-fun d!5815 () Bool)

(assert (=> d!5815 (= (array_inv!330 (_values!577 (v!12613 (underlying!797 (v!12614 (underlying!798 thiss!47822)))))) (bvsge (size!834 (_values!577 (v!12613 (underlying!797 (v!12614 (underlying!798 thiss!47822)))))) #b00000000000000000000000000000000))))

(assert (=> b!48443 d!5815))

(declare-fun b!48480 () Bool)

(declare-fun tp!32714 () Bool)

(declare-fun e!28219 () Bool)

(assert (=> b!48480 (= e!28219 (and tp_is_empty!479 tp_is_empty!481 tp!32714))))

(assert (=> b!48443 (= tp!32711 e!28219)))

(assert (= (and b!48443 ((_ is Cons!835) (zeroValue!555 (v!12613 (underlying!797 (v!12614 (underlying!798 thiss!47822))))))) b!48480))

(declare-fun tp!32715 () Bool)

(declare-fun e!28220 () Bool)

(declare-fun b!48481 () Bool)

(assert (=> b!48481 (= e!28220 (and tp_is_empty!479 tp_is_empty!481 tp!32715))))

(assert (=> b!48443 (= tp!32705 e!28220)))

(assert (= (and b!48443 ((_ is Cons!835) (minValue!555 (v!12613 (underlying!797 (v!12614 (underlying!798 thiss!47822))))))) b!48481))

(declare-fun e!28221 () Bool)

(declare-fun b!48482 () Bool)

(declare-fun tp!32716 () Bool)

(assert (=> b!48482 (= e!28221 (and tp_is_empty!479 tp_is_empty!481 tp!32716))))

(assert (=> b!48447 (= tp!32709 e!28221)))

(assert (= (and b!48447 ((_ is Cons!835) mapDefault!1171)) b!48482))

(declare-fun condMapEmpty!1174 () Bool)

(declare-fun mapDefault!1174 () List!841)

(assert (=> mapNonEmpty!1171 (= condMapEmpty!1174 (= mapRest!1171 ((as const (Array (_ BitVec 32) List!841)) mapDefault!1174)))))

(declare-fun e!28226 () Bool)

(declare-fun mapRes!1174 () Bool)

(assert (=> mapNonEmpty!1171 (= tp!32710 (and e!28226 mapRes!1174))))

(declare-fun mapIsEmpty!1174 () Bool)

(assert (=> mapIsEmpty!1174 mapRes!1174))

(declare-fun mapNonEmpty!1174 () Bool)

(declare-fun tp!32725 () Bool)

(declare-fun e!28227 () Bool)

(assert (=> mapNonEmpty!1174 (= mapRes!1174 (and tp!32725 e!28227))))

(declare-fun mapKey!1174 () (_ BitVec 32))

(declare-fun mapRest!1174 () (Array (_ BitVec 32) List!841))

(declare-fun mapValue!1174 () List!841)

(assert (=> mapNonEmpty!1174 (= mapRest!1171 (store mapRest!1174 mapKey!1174 mapValue!1174))))

(declare-fun b!48490 () Bool)

(declare-fun tp!32723 () Bool)

(assert (=> b!48490 (= e!28226 (and tp_is_empty!479 tp_is_empty!481 tp!32723))))

(declare-fun b!48489 () Bool)

(declare-fun tp!32724 () Bool)

(assert (=> b!48489 (= e!28227 (and tp_is_empty!479 tp_is_empty!481 tp!32724))))

(assert (= (and mapNonEmpty!1171 condMapEmpty!1174) mapIsEmpty!1174))

(assert (= (and mapNonEmpty!1171 (not condMapEmpty!1174)) mapNonEmpty!1174))

(assert (= (and mapNonEmpty!1174 ((_ is Cons!835) mapValue!1174)) b!48489))

(assert (= (and mapNonEmpty!1171 ((_ is Cons!835) mapDefault!1174)) b!48490))

(declare-fun m!22206 () Bool)

(assert (=> mapNonEmpty!1174 m!22206))

(declare-fun tp!32726 () Bool)

(declare-fun b!48491 () Bool)

(declare-fun e!28228 () Bool)

(assert (=> b!48491 (= e!28228 (and tp_is_empty!479 tp_is_empty!481 tp!32726))))

(assert (=> mapNonEmpty!1171 (= tp!32708 e!28228)))

(assert (= (and mapNonEmpty!1171 ((_ is Cons!835) mapValue!1171)) b!48491))

(check-sat (not bm!3051) (not b!48473) (not d!5811) (not b!48491) (not b!48482) b_and!1411 b_and!1409 (not b!48453) (not bm!3052) (not b_next!1373) (not b!48480) (not b!48471) tp_is_empty!479 tp_is_empty!481 (not b!48489) (not b!48454) (not b!48474) (not b!48490) (not bm!3050) (not b_next!1375) (not mapNonEmpty!1174) (not b!48481))
(check-sat b_and!1409 b_and!1411 (not b_next!1375) (not b_next!1373))

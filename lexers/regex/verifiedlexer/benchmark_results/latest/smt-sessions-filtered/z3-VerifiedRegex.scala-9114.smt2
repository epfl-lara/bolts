; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!487230 () Bool)

(assert start!487230)

(declare-fun b!4764067 () Bool)

(declare-fun b_free!129491 () Bool)

(declare-fun b_next!130281 () Bool)

(assert (=> b!4764067 (= b_free!129491 (not b_next!130281))))

(declare-fun tp!1354520 () Bool)

(declare-fun b_and!341177 () Bool)

(assert (=> b!4764067 (= tp!1354520 b_and!341177)))

(declare-fun b!4764069 () Bool)

(declare-fun b_free!129493 () Bool)

(declare-fun b_next!130283 () Bool)

(assert (=> b!4764069 (= b_free!129493 (not b_next!130283))))

(declare-fun tp!1354519 () Bool)

(declare-fun b_and!341179 () Bool)

(assert (=> b!4764069 (= tp!1354519 b_and!341179)))

(declare-fun mapNonEmpty!21710 () Bool)

(declare-fun mapRes!21710 () Bool)

(declare-fun tp!1354521 () Bool)

(declare-fun tp!1354518 () Bool)

(assert (=> mapNonEmpty!21710 (= mapRes!21710 (and tp!1354521 tp!1354518))))

(declare-datatypes ((K!14859 0))(
  ( (K!14860 (val!20193 Int)) )
))
(declare-datatypes ((V!15105 0))(
  ( (V!15106 (val!20194 Int)) )
))
(declare-datatypes ((tuple2!55394 0))(
  ( (tuple2!55395 (_1!30991 K!14859) (_2!30991 V!15105)) )
))
(declare-datatypes ((List!53541 0))(
  ( (Nil!53417) (Cons!53417 (h!59829 tuple2!55394) (t!360941 List!53541)) )
))
(declare-fun mapRest!21710 () (Array (_ BitVec 32) List!53541))

(declare-fun mapKey!21710 () (_ BitVec 32))

(declare-datatypes ((array!17844 0))(
  ( (array!17845 (arr!7959 (Array (_ BitVec 32) (_ BitVec 64))) (size!36189 (_ BitVec 32))) )
))
(declare-datatypes ((array!17846 0))(
  ( (array!17847 (arr!7960 (Array (_ BitVec 32) List!53541)) (size!36190 (_ BitVec 32))) )
))
(declare-datatypes ((Hashable!6548 0))(
  ( (HashableExt!6547 (__x!32409 Int)) )
))
(declare-datatypes ((LongMapFixedSize!9774 0))(
  ( (LongMapFixedSize!9775 (defaultEntry!5305 Int) (mask!14626 (_ BitVec 32)) (extraKeys!5162 (_ BitVec 32)) (zeroValue!5175 List!53541) (minValue!5175 List!53541) (_size!9799 (_ BitVec 32)) (_keys!5229 array!17844) (_values!5200 array!17846) (_vacant!4952 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!19313 0))(
  ( (Cell!19314 (v!47498 LongMapFixedSize!9774)) )
))
(declare-datatypes ((MutLongMap!4887 0))(
  ( (LongMap!4887 (underlying!9981 Cell!19313)) (MutLongMapExt!4886 (__x!32410 Int)) )
))
(declare-datatypes ((Cell!19315 0))(
  ( (Cell!19316 (v!47499 MutLongMap!4887)) )
))
(declare-datatypes ((MutableMap!4771 0))(
  ( (MutableMapExt!4770 (__x!32411 Int)) (HashMap!4771 (underlying!9982 Cell!19315) (hashF!12373 Hashable!6548) (_size!9800 (_ BitVec 32)) (defaultValue!4942 Int)) )
))
(declare-fun thiss!42052 () MutableMap!4771)

(declare-fun mapValue!21710 () List!53541)

(assert (=> mapNonEmpty!21710 (= (arr!7960 (_values!5200 (v!47498 (underlying!9981 (v!47499 (underlying!9982 thiss!42052)))))) (store mapRest!21710 mapKey!21710 mapValue!21710))))

(declare-fun b!4764061 () Bool)

(declare-fun e!2973279 () Bool)

(declare-fun e!2973272 () Bool)

(declare-fun lt!1927103 () MutLongMap!4887)

(get-info :version)

(assert (=> b!4764061 (= e!2973279 (and e!2973272 ((_ is LongMap!4887) lt!1927103)))))

(assert (=> b!4764061 (= lt!1927103 (v!47499 (underlying!9982 thiss!42052)))))

(declare-fun b!4764062 () Bool)

(declare-fun e!2973276 () Bool)

(declare-fun e!2973277 () Bool)

(assert (=> b!4764062 (= e!2973276 e!2973277)))

(declare-fun res!2020615 () Bool)

(assert (=> b!4764062 (=> (not res!2020615) (not e!2973277))))

(declare-fun lt!1927102 () (_ BitVec 64))

(declare-datatypes ((tuple2!55396 0))(
  ( (tuple2!55397 (_1!30992 (_ BitVec 64)) (_2!30992 List!53541)) )
))
(declare-datatypes ((List!53542 0))(
  ( (Nil!53418) (Cons!53418 (h!59830 tuple2!55396) (t!360942 List!53542)) )
))
(declare-fun contains!16730 (List!53542 tuple2!55396) Bool)

(declare-datatypes ((ListLongMap!4631 0))(
  ( (ListLongMap!4632 (toList!6243 List!53542)) )
))
(declare-fun map!11918 (MutLongMap!4887) ListLongMap!4631)

(declare-fun apply!12571 (MutLongMap!4887 (_ BitVec 64)) List!53541)

(assert (=> b!4764062 (= res!2020615 (not (contains!16730 (toList!6243 (map!11918 (v!47499 (underlying!9982 thiss!42052)))) (tuple2!55397 lt!1927102 (apply!12571 (v!47499 (underlying!9982 thiss!42052)) lt!1927102)))))))

(declare-fun key!1776 () K!14859)

(declare-fun hash!4532 (Hashable!6548 K!14859) (_ BitVec 64))

(assert (=> b!4764062 (= lt!1927102 (hash!4532 (hashF!12373 thiss!42052) key!1776))))

(declare-fun b!4764063 () Bool)

(declare-fun res!2020617 () Bool)

(assert (=> b!4764063 (=> (not res!2020617) (not e!2973276))))

(declare-fun contains!16731 (MutableMap!4771 K!14859) Bool)

(assert (=> b!4764063 (= res!2020617 (contains!16731 thiss!42052 key!1776))))

(declare-fun b!4764064 () Bool)

(declare-fun valid!3884 (MutLongMap!4887) Bool)

(assert (=> b!4764064 (= e!2973277 (not (valid!3884 (v!47499 (underlying!9982 thiss!42052)))))))

(declare-fun res!2020618 () Bool)

(assert (=> start!487230 (=> (not res!2020618) (not e!2973276))))

(assert (=> start!487230 (= res!2020618 ((_ is HashMap!4771) thiss!42052))))

(assert (=> start!487230 e!2973276))

(declare-fun e!2973273 () Bool)

(assert (=> start!487230 e!2973273))

(declare-fun tp_is_empty!32347 () Bool)

(assert (=> start!487230 tp_is_empty!32347))

(declare-fun b!4764065 () Bool)

(declare-fun res!2020616 () Bool)

(assert (=> b!4764065 (=> (not res!2020616) (not e!2973277))))

(assert (=> b!4764065 (= res!2020616 ((_ is LongMap!4887) (v!47499 (underlying!9982 thiss!42052))))))

(declare-fun b!4764066 () Bool)

(declare-fun e!2973278 () Bool)

(declare-fun e!2973274 () Bool)

(assert (=> b!4764066 (= e!2973278 e!2973274)))

(declare-fun tp!1354523 () Bool)

(declare-fun tp!1354522 () Bool)

(declare-fun e!2973275 () Bool)

(declare-fun array_inv!5725 (array!17844) Bool)

(declare-fun array_inv!5726 (array!17846) Bool)

(assert (=> b!4764067 (= e!2973274 (and tp!1354520 tp!1354522 tp!1354523 (array_inv!5725 (_keys!5229 (v!47498 (underlying!9981 (v!47499 (underlying!9982 thiss!42052)))))) (array_inv!5726 (_values!5200 (v!47498 (underlying!9981 (v!47499 (underlying!9982 thiss!42052)))))) e!2973275))))

(declare-fun mapIsEmpty!21710 () Bool)

(assert (=> mapIsEmpty!21710 mapRes!21710))

(declare-fun b!4764068 () Bool)

(assert (=> b!4764068 (= e!2973272 e!2973278)))

(assert (=> b!4764069 (= e!2973273 (and e!2973279 tp!1354519))))

(declare-fun b!4764070 () Bool)

(declare-fun res!2020614 () Bool)

(assert (=> b!4764070 (=> (not res!2020614) (not e!2973276))))

(declare-fun valid!3885 (MutableMap!4771) Bool)

(assert (=> b!4764070 (= res!2020614 (valid!3885 thiss!42052))))

(declare-fun b!4764071 () Bool)

(declare-fun tp!1354524 () Bool)

(assert (=> b!4764071 (= e!2973275 (and tp!1354524 mapRes!21710))))

(declare-fun condMapEmpty!21710 () Bool)

(declare-fun mapDefault!21710 () List!53541)

(assert (=> b!4764071 (= condMapEmpty!21710 (= (arr!7960 (_values!5200 (v!47498 (underlying!9981 (v!47499 (underlying!9982 thiss!42052)))))) ((as const (Array (_ BitVec 32) List!53541)) mapDefault!21710)))))

(assert (= (and start!487230 res!2020618) b!4764070))

(assert (= (and b!4764070 res!2020614) b!4764063))

(assert (= (and b!4764063 res!2020617) b!4764062))

(assert (= (and b!4764062 res!2020615) b!4764065))

(assert (= (and b!4764065 res!2020616) b!4764064))

(assert (= (and b!4764071 condMapEmpty!21710) mapIsEmpty!21710))

(assert (= (and b!4764071 (not condMapEmpty!21710)) mapNonEmpty!21710))

(assert (= b!4764067 b!4764071))

(assert (= b!4764066 b!4764067))

(assert (= b!4764068 b!4764066))

(assert (= (and b!4764061 ((_ is LongMap!4887) (v!47499 (underlying!9982 thiss!42052)))) b!4764068))

(assert (= b!4764069 b!4764061))

(assert (= (and start!487230 ((_ is HashMap!4771) thiss!42052)) b!4764069))

(declare-fun m!5734622 () Bool)

(assert (=> b!4764063 m!5734622))

(declare-fun m!5734624 () Bool)

(assert (=> b!4764062 m!5734624))

(declare-fun m!5734626 () Bool)

(assert (=> b!4764062 m!5734626))

(declare-fun m!5734628 () Bool)

(assert (=> b!4764062 m!5734628))

(declare-fun m!5734630 () Bool)

(assert (=> b!4764062 m!5734630))

(declare-fun m!5734632 () Bool)

(assert (=> b!4764064 m!5734632))

(declare-fun m!5734634 () Bool)

(assert (=> mapNonEmpty!21710 m!5734634))

(declare-fun m!5734636 () Bool)

(assert (=> b!4764067 m!5734636))

(declare-fun m!5734638 () Bool)

(assert (=> b!4764067 m!5734638))

(declare-fun m!5734640 () Bool)

(assert (=> b!4764070 m!5734640))

(check-sat (not b_next!130281) (not mapNonEmpty!21710) b_and!341179 (not b_next!130283) b_and!341177 (not b!4764062) tp_is_empty!32347 (not b!4764071) (not b!4764064) (not b!4764063) (not b!4764067) (not b!4764070))
(check-sat b_and!341179 b_and!341177 (not b_next!130283) (not b_next!130281))
(get-model)

(declare-fun d!1523209 () Bool)

(assert (=> d!1523209 (= (array_inv!5725 (_keys!5229 (v!47498 (underlying!9981 (v!47499 (underlying!9982 thiss!42052)))))) (bvsge (size!36189 (_keys!5229 (v!47498 (underlying!9981 (v!47499 (underlying!9982 thiss!42052)))))) #b00000000000000000000000000000000))))

(assert (=> b!4764067 d!1523209))

(declare-fun d!1523211 () Bool)

(assert (=> d!1523211 (= (array_inv!5726 (_values!5200 (v!47498 (underlying!9981 (v!47499 (underlying!9982 thiss!42052)))))) (bvsge (size!36190 (_values!5200 (v!47498 (underlying!9981 (v!47499 (underlying!9982 thiss!42052)))))) #b00000000000000000000000000000000))))

(assert (=> b!4764067 d!1523211))

(declare-fun d!1523213 () Bool)

(declare-fun res!2020623 () Bool)

(declare-fun e!2973282 () Bool)

(assert (=> d!1523213 (=> (not res!2020623) (not e!2973282))))

(assert (=> d!1523213 (= res!2020623 (valid!3884 (v!47499 (underlying!9982 thiss!42052))))))

(assert (=> d!1523213 (= (valid!3885 thiss!42052) e!2973282)))

(declare-fun b!4764076 () Bool)

(declare-fun res!2020624 () Bool)

(assert (=> b!4764076 (=> (not res!2020624) (not e!2973282))))

(declare-fun lambda!224054 () Int)

(declare-fun forall!11860 (List!53542 Int) Bool)

(assert (=> b!4764076 (= res!2020624 (forall!11860 (toList!6243 (map!11918 (v!47499 (underlying!9982 thiss!42052)))) lambda!224054))))

(declare-fun b!4764077 () Bool)

(declare-fun allKeysSameHashInMap!2008 (ListLongMap!4631 Hashable!6548) Bool)

(assert (=> b!4764077 (= e!2973282 (allKeysSameHashInMap!2008 (map!11918 (v!47499 (underlying!9982 thiss!42052))) (hashF!12373 thiss!42052)))))

(assert (= (and d!1523213 res!2020623) b!4764076))

(assert (= (and b!4764076 res!2020624) b!4764077))

(assert (=> d!1523213 m!5734632))

(assert (=> b!4764076 m!5734624))

(declare-fun m!5734642 () Bool)

(assert (=> b!4764076 m!5734642))

(assert (=> b!4764077 m!5734624))

(assert (=> b!4764077 m!5734624))

(declare-fun m!5734644 () Bool)

(assert (=> b!4764077 m!5734644))

(assert (=> b!4764070 d!1523213))

(declare-fun d!1523215 () Bool)

(declare-fun valid!3886 (LongMapFixedSize!9774) Bool)

(assert (=> d!1523215 (= (valid!3884 (v!47499 (underlying!9982 thiss!42052))) (valid!3886 (v!47498 (underlying!9981 (v!47499 (underlying!9982 thiss!42052))))))))

(declare-fun bs!1148705 () Bool)

(assert (= bs!1148705 d!1523215))

(declare-fun m!5734646 () Bool)

(assert (=> bs!1148705 m!5734646))

(assert (=> b!4764064 d!1523215))

(declare-fun d!1523217 () Bool)

(declare-fun lt!1927106 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!9576 (List!53542) (InoxSet tuple2!55396))

(assert (=> d!1523217 (= lt!1927106 (select (content!9576 (toList!6243 (map!11918 (v!47499 (underlying!9982 thiss!42052))))) (tuple2!55397 lt!1927102 (apply!12571 (v!47499 (underlying!9982 thiss!42052)) lt!1927102))))))

(declare-fun e!2973287 () Bool)

(assert (=> d!1523217 (= lt!1927106 e!2973287)))

(declare-fun res!2020629 () Bool)

(assert (=> d!1523217 (=> (not res!2020629) (not e!2973287))))

(assert (=> d!1523217 (= res!2020629 ((_ is Cons!53418) (toList!6243 (map!11918 (v!47499 (underlying!9982 thiss!42052))))))))

(assert (=> d!1523217 (= (contains!16730 (toList!6243 (map!11918 (v!47499 (underlying!9982 thiss!42052)))) (tuple2!55397 lt!1927102 (apply!12571 (v!47499 (underlying!9982 thiss!42052)) lt!1927102))) lt!1927106)))

(declare-fun b!4764082 () Bool)

(declare-fun e!2973288 () Bool)

(assert (=> b!4764082 (= e!2973287 e!2973288)))

(declare-fun res!2020630 () Bool)

(assert (=> b!4764082 (=> res!2020630 e!2973288)))

(assert (=> b!4764082 (= res!2020630 (= (h!59830 (toList!6243 (map!11918 (v!47499 (underlying!9982 thiss!42052))))) (tuple2!55397 lt!1927102 (apply!12571 (v!47499 (underlying!9982 thiss!42052)) lt!1927102))))))

(declare-fun b!4764083 () Bool)

(assert (=> b!4764083 (= e!2973288 (contains!16730 (t!360942 (toList!6243 (map!11918 (v!47499 (underlying!9982 thiss!42052))))) (tuple2!55397 lt!1927102 (apply!12571 (v!47499 (underlying!9982 thiss!42052)) lt!1927102))))))

(assert (= (and d!1523217 res!2020629) b!4764082))

(assert (= (and b!4764082 (not res!2020630)) b!4764083))

(declare-fun m!5734648 () Bool)

(assert (=> d!1523217 m!5734648))

(declare-fun m!5734650 () Bool)

(assert (=> d!1523217 m!5734650))

(declare-fun m!5734652 () Bool)

(assert (=> b!4764083 m!5734652))

(assert (=> b!4764062 d!1523217))

(declare-fun d!1523219 () Bool)

(declare-fun map!11919 (LongMapFixedSize!9774) ListLongMap!4631)

(assert (=> d!1523219 (= (map!11918 (v!47499 (underlying!9982 thiss!42052))) (map!11919 (v!47498 (underlying!9981 (v!47499 (underlying!9982 thiss!42052))))))))

(declare-fun bs!1148706 () Bool)

(assert (= bs!1148706 d!1523219))

(declare-fun m!5734654 () Bool)

(assert (=> bs!1148706 m!5734654))

(assert (=> b!4764062 d!1523219))

(declare-fun d!1523221 () Bool)

(declare-fun e!2973291 () Bool)

(assert (=> d!1523221 e!2973291))

(declare-fun c!812707 () Bool)

(declare-fun contains!16732 (MutLongMap!4887 (_ BitVec 64)) Bool)

(assert (=> d!1523221 (= c!812707 (contains!16732 (v!47499 (underlying!9982 thiss!42052)) lt!1927102))))

(declare-fun lt!1927109 () List!53541)

(declare-fun apply!12572 (LongMapFixedSize!9774 (_ BitVec 64)) List!53541)

(assert (=> d!1523221 (= lt!1927109 (apply!12572 (v!47498 (underlying!9981 (v!47499 (underlying!9982 thiss!42052)))) lt!1927102))))

(assert (=> d!1523221 (valid!3884 (v!47499 (underlying!9982 thiss!42052)))))

(assert (=> d!1523221 (= (apply!12571 (v!47499 (underlying!9982 thiss!42052)) lt!1927102) lt!1927109)))

(declare-fun b!4764088 () Bool)

(declare-datatypes ((Option!12624 0))(
  ( (None!12623) (Some!12623 (v!47501 List!53541)) )
))
(declare-fun get!17984 (Option!12624) List!53541)

(declare-fun getValueByKey!2150 (List!53542 (_ BitVec 64)) Option!12624)

(assert (=> b!4764088 (= e!2973291 (= lt!1927109 (get!17984 (getValueByKey!2150 (toList!6243 (map!11918 (v!47499 (underlying!9982 thiss!42052)))) lt!1927102))))))

(declare-fun b!4764089 () Bool)

(declare-fun dynLambda!21933 (Int (_ BitVec 64)) List!53541)

(assert (=> b!4764089 (= e!2973291 (= lt!1927109 (dynLambda!21933 (defaultEntry!5305 (v!47498 (underlying!9981 (v!47499 (underlying!9982 thiss!42052))))) lt!1927102)))))

(assert (=> b!4764089 ((_ is LongMap!4887) (v!47499 (underlying!9982 thiss!42052)))))

(assert (= (and d!1523221 c!812707) b!4764088))

(assert (= (and d!1523221 (not c!812707)) b!4764089))

(declare-fun b_lambda!184263 () Bool)

(assert (=> (not b_lambda!184263) (not b!4764089)))

(declare-fun t!360944 () Bool)

(declare-fun tb!257453 () Bool)

(assert (=> (and b!4764067 (= (defaultEntry!5305 (v!47498 (underlying!9981 (v!47499 (underlying!9982 thiss!42052))))) (defaultEntry!5305 (v!47498 (underlying!9981 (v!47499 (underlying!9982 thiss!42052)))))) t!360944) tb!257453))

(assert (=> b!4764089 t!360944))

(declare-fun result!319048 () Bool)

(declare-fun b_and!341181 () Bool)

(assert (= b_and!341177 (and (=> t!360944 result!319048) b_and!341181)))

(declare-fun m!5734656 () Bool)

(assert (=> d!1523221 m!5734656))

(declare-fun m!5734658 () Bool)

(assert (=> d!1523221 m!5734658))

(assert (=> d!1523221 m!5734632))

(assert (=> b!4764088 m!5734624))

(declare-fun m!5734660 () Bool)

(assert (=> b!4764088 m!5734660))

(assert (=> b!4764088 m!5734660))

(declare-fun m!5734662 () Bool)

(assert (=> b!4764088 m!5734662))

(declare-fun m!5734664 () Bool)

(assert (=> b!4764089 m!5734664))

(assert (=> b!4764062 d!1523221))

(declare-fun d!1523223 () Bool)

(declare-fun hash!4533 (Hashable!6548 K!14859) (_ BitVec 64))

(assert (=> d!1523223 (= (hash!4532 (hashF!12373 thiss!42052) key!1776) (hash!4533 (hashF!12373 thiss!42052) key!1776))))

(declare-fun bs!1148707 () Bool)

(assert (= bs!1148707 d!1523223))

(declare-fun m!5734666 () Bool)

(assert (=> bs!1148707 m!5734666))

(assert (=> b!4764062 d!1523223))

(declare-fun bs!1148708 () Bool)

(declare-fun b!4764121 () Bool)

(assert (= bs!1148708 (and b!4764121 b!4764076)))

(declare-fun lambda!224057 () Int)

(assert (=> bs!1148708 (= lambda!224057 lambda!224054)))

(declare-fun bm!334010 () Bool)

(declare-datatypes ((Option!12625 0))(
  ( (None!12624) (Some!12624 (v!47502 tuple2!55394)) )
))
(declare-fun call!334020 () Option!12625)

(declare-fun call!334015 () List!53541)

(declare-fun getPair!627 (List!53541 K!14859) Option!12625)

(assert (=> bm!334010 (= call!334020 (getPair!627 call!334015 key!1776))))

(declare-fun d!1523225 () Bool)

(declare-fun lt!1927163 () Bool)

(declare-datatypes ((ListMap!5749 0))(
  ( (ListMap!5750 (toList!6244 List!53541)) )
))
(declare-fun contains!16733 (ListMap!5749 K!14859) Bool)

(declare-fun map!11920 (MutableMap!4771) ListMap!5749)

(assert (=> d!1523225 (= lt!1927163 (contains!16733 (map!11920 thiss!42052) key!1776))))

(declare-fun e!2973308 () Bool)

(assert (=> d!1523225 (= lt!1927163 e!2973308)))

(declare-fun res!2020639 () Bool)

(assert (=> d!1523225 (=> (not res!2020639) (not e!2973308))))

(declare-fun lt!1927164 () (_ BitVec 64))

(assert (=> d!1523225 (= res!2020639 (contains!16732 (v!47499 (underlying!9982 thiss!42052)) lt!1927164))))

(declare-datatypes ((Unit!138078 0))(
  ( (Unit!138079) )
))
(declare-fun lt!1927160 () Unit!138078)

(declare-fun e!2973307 () Unit!138078)

(assert (=> d!1523225 (= lt!1927160 e!2973307)))

(declare-fun c!812718 () Bool)

(declare-fun extractMap!2127 (List!53542) ListMap!5749)

(assert (=> d!1523225 (= c!812718 (contains!16733 (extractMap!2127 (toList!6243 (map!11918 (v!47499 (underlying!9982 thiss!42052))))) key!1776))))

(declare-fun lt!1927159 () Unit!138078)

(declare-fun e!2973306 () Unit!138078)

(assert (=> d!1523225 (= lt!1927159 e!2973306)))

(declare-fun c!812716 () Bool)

(assert (=> d!1523225 (= c!812716 (contains!16732 (v!47499 (underlying!9982 thiss!42052)) lt!1927164))))

(assert (=> d!1523225 (= lt!1927164 (hash!4532 (hashF!12373 thiss!42052) key!1776))))

(assert (=> d!1523225 (valid!3885 thiss!42052)))

(assert (=> d!1523225 (= (contains!16731 thiss!42052 key!1776) lt!1927163)))

(declare-fun bm!334011 () Bool)

(declare-fun call!334018 () (_ BitVec 64))

(assert (=> bm!334011 (= call!334018 (hash!4532 (hashF!12373 thiss!42052) key!1776))))

(declare-fun call!334016 () ListLongMap!4631)

(declare-fun lt!1927167 () ListLongMap!4631)

(declare-fun bm!334012 () Bool)

(declare-fun call!334017 () Bool)

(declare-fun contains!16734 (ListLongMap!4631 (_ BitVec 64)) Bool)

(assert (=> bm!334012 (= call!334017 (contains!16734 (ite c!812718 lt!1927167 call!334016) call!334018))))

(declare-fun b!4764112 () Bool)

(assert (=> b!4764112 false))

(declare-fun lt!1927153 () Unit!138078)

(declare-fun lt!1927151 () Unit!138078)

(assert (=> b!4764112 (= lt!1927153 lt!1927151)))

(declare-fun lt!1927165 () List!53542)

(declare-fun lt!1927169 () List!53541)

(assert (=> b!4764112 (contains!16730 lt!1927165 (tuple2!55397 lt!1927164 lt!1927169))))

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!910 (List!53542 (_ BitVec 64) List!53541) Unit!138078)

(assert (=> b!4764112 (= lt!1927151 (lemmaGetValueByKeyImpliesContainsTuple!910 lt!1927165 lt!1927164 lt!1927169))))

(assert (=> b!4764112 (= lt!1927169 (apply!12571 (v!47499 (underlying!9982 thiss!42052)) lt!1927164))))

(assert (=> b!4764112 (= lt!1927165 (toList!6243 (map!11918 (v!47499 (underlying!9982 thiss!42052)))))))

(declare-fun lt!1927154 () Unit!138078)

(declare-fun lt!1927161 () Unit!138078)

(assert (=> b!4764112 (= lt!1927154 lt!1927161)))

(declare-fun lt!1927157 () List!53542)

(declare-fun isDefined!9797 (Option!12624) Bool)

(assert (=> b!4764112 (isDefined!9797 (getValueByKey!2150 lt!1927157 lt!1927164))))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!1964 (List!53542 (_ BitVec 64)) Unit!138078)

(assert (=> b!4764112 (= lt!1927161 (lemmaContainsKeyImpliesGetValueByKeyDefined!1964 lt!1927157 lt!1927164))))

(assert (=> b!4764112 (= lt!1927157 (toList!6243 (map!11918 (v!47499 (underlying!9982 thiss!42052)))))))

(declare-fun lt!1927152 () Unit!138078)

(declare-fun lt!1927162 () Unit!138078)

(assert (=> b!4764112 (= lt!1927152 lt!1927162)))

(declare-fun lt!1927156 () List!53542)

(declare-fun containsKey!3648 (List!53542 (_ BitVec 64)) Bool)

(assert (=> b!4764112 (containsKey!3648 lt!1927156 lt!1927164)))

(declare-fun lemmaGetValueByKeyIsDefinedImpliesContainsKey!192 (List!53542 (_ BitVec 64)) Unit!138078)

(assert (=> b!4764112 (= lt!1927162 (lemmaGetValueByKeyIsDefinedImpliesContainsKey!192 lt!1927156 lt!1927164))))

(assert (=> b!4764112 (= lt!1927156 (toList!6243 (map!11918 (v!47499 (underlying!9982 thiss!42052)))))))

(declare-fun e!2973310 () Unit!138078)

(declare-fun Unit!138080 () Unit!138078)

(assert (=> b!4764112 (= e!2973310 Unit!138080)))

(declare-fun b!4764113 () Bool)

(declare-fun lt!1927150 () Unit!138078)

(assert (=> b!4764113 (= e!2973307 lt!1927150)))

(assert (=> b!4764113 (= lt!1927167 call!334016)))

(declare-fun lemmaInGenericMapThenInLongMap!191 (ListLongMap!4631 K!14859 Hashable!6548) Unit!138078)

(assert (=> b!4764113 (= lt!1927150 (lemmaInGenericMapThenInLongMap!191 lt!1927167 key!1776 (hashF!12373 thiss!42052)))))

(declare-fun res!2020637 () Bool)

(assert (=> b!4764113 (= res!2020637 call!334017)))

(declare-fun e!2973311 () Bool)

(assert (=> b!4764113 (=> (not res!2020637) (not e!2973311))))

(assert (=> b!4764113 e!2973311))

(declare-fun b!4764114 () Bool)

(declare-fun e!2973309 () Bool)

(declare-fun call!334019 () Bool)

(assert (=> b!4764114 (= e!2973309 call!334019)))

(declare-fun b!4764115 () Bool)

(assert (=> b!4764115 (= e!2973311 call!334019)))

(declare-fun bm!334013 () Bool)

(declare-fun apply!12573 (ListLongMap!4631 (_ BitVec 64)) List!53541)

(assert (=> bm!334013 (= call!334015 (apply!12573 (ite c!812718 lt!1927167 call!334016) call!334018))))

(declare-fun b!4764116 () Bool)

(declare-fun isDefined!9798 (Option!12625) Bool)

(assert (=> b!4764116 (= e!2973308 (isDefined!9798 (getPair!627 (apply!12571 (v!47499 (underlying!9982 thiss!42052)) lt!1927164) key!1776)))))

(declare-fun b!4764117 () Bool)

(declare-fun Unit!138081 () Unit!138078)

(assert (=> b!4764117 (= e!2973310 Unit!138081)))

(declare-fun b!4764118 () Bool)

(assert (=> b!4764118 false))

(declare-fun lt!1927158 () Unit!138078)

(declare-fun lt!1927168 () Unit!138078)

(assert (=> b!4764118 (= lt!1927158 lt!1927168)))

(declare-fun lt!1927166 () ListLongMap!4631)

(assert (=> b!4764118 (contains!16733 (extractMap!2127 (toList!6243 lt!1927166)) key!1776)))

(declare-fun lemmaInLongMapThenInGenericMap!191 (ListLongMap!4631 K!14859 Hashable!6548) Unit!138078)

(assert (=> b!4764118 (= lt!1927168 (lemmaInLongMapThenInGenericMap!191 lt!1927166 key!1776 (hashF!12373 thiss!42052)))))

(assert (=> b!4764118 (= lt!1927166 call!334016)))

(declare-fun e!2973312 () Unit!138078)

(declare-fun Unit!138082 () Unit!138078)

(assert (=> b!4764118 (= e!2973312 Unit!138082)))

(declare-fun bm!334014 () Bool)

(assert (=> bm!334014 (= call!334019 (isDefined!9798 call!334020))))

(declare-fun b!4764119 () Bool)

(assert (=> b!4764119 (= e!2973307 e!2973312)))

(declare-fun res!2020638 () Bool)

(assert (=> b!4764119 (= res!2020638 call!334017)))

(assert (=> b!4764119 (=> (not res!2020638) (not e!2973309))))

(declare-fun c!812717 () Bool)

(assert (=> b!4764119 (= c!812717 e!2973309)))

(declare-fun b!4764120 () Bool)

(declare-fun Unit!138083 () Unit!138078)

(assert (=> b!4764120 (= e!2973306 Unit!138083)))

(declare-fun bm!334015 () Bool)

(assert (=> bm!334015 (= call!334016 (map!11918 (v!47499 (underlying!9982 thiss!42052))))))

(declare-fun forallContained!3842 (List!53542 Int tuple2!55396) Unit!138078)

(assert (=> b!4764121 (= e!2973306 (forallContained!3842 (toList!6243 (map!11918 (v!47499 (underlying!9982 thiss!42052)))) lambda!224057 (tuple2!55397 lt!1927164 (apply!12571 (v!47499 (underlying!9982 thiss!42052)) lt!1927164))))))

(declare-fun c!812719 () Bool)

(assert (=> b!4764121 (= c!812719 (not (contains!16730 (toList!6243 (map!11918 (v!47499 (underlying!9982 thiss!42052)))) (tuple2!55397 lt!1927164 (apply!12571 (v!47499 (underlying!9982 thiss!42052)) lt!1927164)))))))

(declare-fun lt!1927155 () Unit!138078)

(assert (=> b!4764121 (= lt!1927155 e!2973310)))

(declare-fun b!4764122 () Bool)

(declare-fun Unit!138084 () Unit!138078)

(assert (=> b!4764122 (= e!2973312 Unit!138084)))

(assert (= (and d!1523225 c!812716) b!4764121))

(assert (= (and d!1523225 (not c!812716)) b!4764120))

(assert (= (and b!4764121 c!812719) b!4764112))

(assert (= (and b!4764121 (not c!812719)) b!4764117))

(assert (= (and d!1523225 c!812718) b!4764113))

(assert (= (and d!1523225 (not c!812718)) b!4764119))

(assert (= (and b!4764113 res!2020637) b!4764115))

(assert (= (and b!4764119 res!2020638) b!4764114))

(assert (= (and b!4764119 c!812717) b!4764118))

(assert (= (and b!4764119 (not c!812717)) b!4764122))

(assert (= (or b!4764113 b!4764115 b!4764119 b!4764114) bm!334011))

(assert (= (or b!4764113 b!4764119 b!4764114 b!4764118) bm!334015))

(assert (= (or b!4764113 b!4764119) bm!334012))

(assert (= (or b!4764115 b!4764114) bm!334013))

(assert (= (or b!4764115 b!4764114) bm!334010))

(assert (= (or b!4764115 b!4764114) bm!334014))

(assert (= (and d!1523225 res!2020639) b!4764116))

(declare-fun m!5734668 () Bool)

(assert (=> b!4764116 m!5734668))

(assert (=> b!4764116 m!5734668))

(declare-fun m!5734670 () Bool)

(assert (=> b!4764116 m!5734670))

(assert (=> b!4764116 m!5734670))

(declare-fun m!5734672 () Bool)

(assert (=> b!4764116 m!5734672))

(declare-fun m!5734674 () Bool)

(assert (=> bm!334010 m!5734674))

(declare-fun m!5734676 () Bool)

(assert (=> bm!334012 m!5734676))

(declare-fun m!5734678 () Bool)

(assert (=> b!4764113 m!5734678))

(declare-fun m!5734680 () Bool)

(assert (=> bm!334014 m!5734680))

(declare-fun m!5734682 () Bool)

(assert (=> b!4764112 m!5734682))

(declare-fun m!5734684 () Bool)

(assert (=> b!4764112 m!5734684))

(declare-fun m!5734686 () Bool)

(assert (=> b!4764112 m!5734686))

(declare-fun m!5734688 () Bool)

(assert (=> b!4764112 m!5734688))

(declare-fun m!5734690 () Bool)

(assert (=> b!4764112 m!5734690))

(declare-fun m!5734692 () Bool)

(assert (=> b!4764112 m!5734692))

(assert (=> b!4764112 m!5734668))

(assert (=> b!4764112 m!5734690))

(declare-fun m!5734694 () Bool)

(assert (=> b!4764112 m!5734694))

(assert (=> b!4764112 m!5734624))

(assert (=> bm!334011 m!5734630))

(assert (=> bm!334015 m!5734624))

(declare-fun m!5734696 () Bool)

(assert (=> b!4764118 m!5734696))

(assert (=> b!4764118 m!5734696))

(declare-fun m!5734698 () Bool)

(assert (=> b!4764118 m!5734698))

(declare-fun m!5734700 () Bool)

(assert (=> b!4764118 m!5734700))

(declare-fun m!5734702 () Bool)

(assert (=> d!1523225 m!5734702))

(assert (=> d!1523225 m!5734630))

(assert (=> d!1523225 m!5734702))

(declare-fun m!5734704 () Bool)

(assert (=> d!1523225 m!5734704))

(declare-fun m!5734706 () Bool)

(assert (=> d!1523225 m!5734706))

(declare-fun m!5734708 () Bool)

(assert (=> d!1523225 m!5734708))

(declare-fun m!5734710 () Bool)

(assert (=> d!1523225 m!5734710))

(assert (=> d!1523225 m!5734640))

(assert (=> d!1523225 m!5734708))

(assert (=> d!1523225 m!5734624))

(assert (=> b!4764121 m!5734624))

(assert (=> b!4764121 m!5734668))

(declare-fun m!5734712 () Bool)

(assert (=> b!4764121 m!5734712))

(declare-fun m!5734714 () Bool)

(assert (=> b!4764121 m!5734714))

(declare-fun m!5734716 () Bool)

(assert (=> bm!334013 m!5734716))

(assert (=> b!4764063 d!1523225))

(declare-fun tp!1354527 () Bool)

(declare-fun b!4764127 () Bool)

(declare-fun tp_is_empty!32349 () Bool)

(declare-fun e!2973315 () Bool)

(assert (=> b!4764127 (= e!2973315 (and tp_is_empty!32347 tp_is_empty!32349 tp!1354527))))

(assert (=> b!4764067 (= tp!1354522 e!2973315)))

(assert (= (and b!4764067 ((_ is Cons!53417) (zeroValue!5175 (v!47498 (underlying!9981 (v!47499 (underlying!9982 thiss!42052))))))) b!4764127))

(declare-fun e!2973316 () Bool)

(declare-fun tp!1354528 () Bool)

(declare-fun b!4764128 () Bool)

(assert (=> b!4764128 (= e!2973316 (and tp_is_empty!32347 tp_is_empty!32349 tp!1354528))))

(assert (=> b!4764067 (= tp!1354523 e!2973316)))

(assert (= (and b!4764067 ((_ is Cons!53417) (minValue!5175 (v!47498 (underlying!9981 (v!47499 (underlying!9982 thiss!42052))))))) b!4764128))

(declare-fun b!4764129 () Bool)

(declare-fun e!2973317 () Bool)

(declare-fun tp!1354529 () Bool)

(assert (=> b!4764129 (= e!2973317 (and tp_is_empty!32347 tp_is_empty!32349 tp!1354529))))

(assert (=> b!4764071 (= tp!1354524 e!2973317)))

(assert (= (and b!4764071 ((_ is Cons!53417) mapDefault!21710)) b!4764129))

(declare-fun tp!1354538 () Bool)

(declare-fun e!2973323 () Bool)

(declare-fun b!4764136 () Bool)

(assert (=> b!4764136 (= e!2973323 (and tp_is_empty!32347 tp_is_empty!32349 tp!1354538))))

(declare-fun mapNonEmpty!21713 () Bool)

(declare-fun mapRes!21713 () Bool)

(declare-fun tp!1354536 () Bool)

(assert (=> mapNonEmpty!21713 (= mapRes!21713 (and tp!1354536 e!2973323))))

(declare-fun mapRest!21713 () (Array (_ BitVec 32) List!53541))

(declare-fun mapValue!21713 () List!53541)

(declare-fun mapKey!21713 () (_ BitVec 32))

(assert (=> mapNonEmpty!21713 (= mapRest!21710 (store mapRest!21713 mapKey!21713 mapValue!21713))))

(declare-fun e!2973322 () Bool)

(declare-fun tp!1354537 () Bool)

(declare-fun b!4764137 () Bool)

(assert (=> b!4764137 (= e!2973322 (and tp_is_empty!32347 tp_is_empty!32349 tp!1354537))))

(declare-fun mapIsEmpty!21713 () Bool)

(assert (=> mapIsEmpty!21713 mapRes!21713))

(declare-fun condMapEmpty!21713 () Bool)

(declare-fun mapDefault!21713 () List!53541)

(assert (=> mapNonEmpty!21710 (= condMapEmpty!21713 (= mapRest!21710 ((as const (Array (_ BitVec 32) List!53541)) mapDefault!21713)))))

(assert (=> mapNonEmpty!21710 (= tp!1354521 (and e!2973322 mapRes!21713))))

(assert (= (and mapNonEmpty!21710 condMapEmpty!21713) mapIsEmpty!21713))

(assert (= (and mapNonEmpty!21710 (not condMapEmpty!21713)) mapNonEmpty!21713))

(assert (= (and mapNonEmpty!21713 ((_ is Cons!53417) mapValue!21713)) b!4764136))

(assert (= (and mapNonEmpty!21710 ((_ is Cons!53417) mapDefault!21713)) b!4764137))

(declare-fun m!5734718 () Bool)

(assert (=> mapNonEmpty!21713 m!5734718))

(declare-fun tp!1354539 () Bool)

(declare-fun b!4764138 () Bool)

(declare-fun e!2973324 () Bool)

(assert (=> b!4764138 (= e!2973324 (and tp_is_empty!32347 tp_is_empty!32349 tp!1354539))))

(assert (=> mapNonEmpty!21710 (= tp!1354518 e!2973324)))

(assert (= (and mapNonEmpty!21710 ((_ is Cons!53417) mapValue!21710)) b!4764138))

(declare-fun b_lambda!184265 () Bool)

(assert (= b_lambda!184263 (or (and b!4764067 b_free!129491) b_lambda!184265)))

(check-sat (not b_lambda!184265) (not bm!334015) (not bm!334010) (not b_next!130283) tp_is_empty!32347 (not b!4764088) (not d!1523213) (not d!1523215) (not tb!257453) (not bm!334011) (not b!4764136) (not d!1523221) (not d!1523217) (not b_next!130281) (not bm!334013) (not b!4764137) (not b!4764083) b_and!341179 (not b!4764127) b_and!341181 (not bm!334014) (not bm!334012) (not b!4764118) (not b!4764116) (not b!4764077) (not b!4764113) (not d!1523223) tp_is_empty!32349 (not b!4764129) (not b!4764076) (not d!1523219) (not b!4764121) (not mapNonEmpty!21713) (not b!4764112) (not b!4764138) (not d!1523225) (not b!4764128))
(check-sat b_and!341179 b_and!341181 (not b_next!130283) (not b_next!130281))

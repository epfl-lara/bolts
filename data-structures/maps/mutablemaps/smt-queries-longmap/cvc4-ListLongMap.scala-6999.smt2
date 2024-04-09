; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!88904 () Bool)

(assert start!88904)

(declare-fun b!1019967 () Bool)

(declare-fun e!574111 () Bool)

(declare-fun e!574109 () Bool)

(assert (=> b!1019967 (= e!574111 e!574109)))

(declare-fun res!683765 () Bool)

(assert (=> b!1019967 (=> (not res!683765) (not e!574109))))

(declare-datatypes ((B!1704 0))(
  ( (B!1705 (val!11936 Int)) )
))
(declare-datatypes ((tuple2!15508 0))(
  ( (tuple2!15509 (_1!7764 (_ BitVec 64)) (_2!7764 B!1704)) )
))
(declare-datatypes ((List!21738 0))(
  ( (Nil!21735) (Cons!21734 (h!22932 tuple2!15508) (t!30755 List!21738)) )
))
(declare-fun l!996 () List!21738)

(declare-fun key!261 () (_ BitVec 64))

(assert (=> b!1019967 (= res!683765 (and (or (not (is-Cons!21734 l!996)) (bvsge (_1!7764 (h!22932 l!996)) key!261)) (or (not (is-Cons!21734 l!996)) (not (= (_1!7764 (h!22932 l!996)) key!261)))))))

(declare-fun lt!449755 () List!21738)

(declare-fun value!172 () B!1704)

(declare-fun insertStrictlySorted!367 (List!21738 (_ BitVec 64) B!1704) List!21738)

(assert (=> b!1019967 (= lt!449755 (insertStrictlySorted!367 l!996 key!261 value!172))))

(declare-fun b!1019969 () Bool)

(declare-fun e!574110 () Bool)

(declare-fun tp_is_empty!23771 () Bool)

(declare-fun tp!71198 () Bool)

(assert (=> b!1019969 (= e!574110 (and tp_is_empty!23771 tp!71198))))

(declare-fun b!1019966 () Bool)

(declare-fun res!683764 () Bool)

(assert (=> b!1019966 (=> (not res!683764) (not e!574111))))

(declare-fun containsKey!550 (List!21738 (_ BitVec 64)) Bool)

(assert (=> b!1019966 (= res!683764 (containsKey!550 l!996 key!261))))

(declare-fun b!1019968 () Bool)

(declare-fun length!52 (List!21738) Int)

(assert (=> b!1019968 (= e!574109 (not (= (length!52 lt!449755) (length!52 l!996))))))

(declare-fun res!683766 () Bool)

(assert (=> start!88904 (=> (not res!683766) (not e!574111))))

(declare-fun isStrictlySorted!685 (List!21738) Bool)

(assert (=> start!88904 (= res!683766 (isStrictlySorted!685 l!996))))

(assert (=> start!88904 e!574111))

(assert (=> start!88904 e!574110))

(assert (=> start!88904 true))

(assert (=> start!88904 tp_is_empty!23771))

(assert (= (and start!88904 res!683766) b!1019966))

(assert (= (and b!1019966 res!683764) b!1019967))

(assert (= (and b!1019967 res!683765) b!1019968))

(assert (= (and start!88904 (is-Cons!21734 l!996)) b!1019969))

(declare-fun m!940251 () Bool)

(assert (=> b!1019967 m!940251))

(declare-fun m!940253 () Bool)

(assert (=> b!1019966 m!940253))

(declare-fun m!940255 () Bool)

(assert (=> b!1019968 m!940255))

(declare-fun m!940257 () Bool)

(assert (=> b!1019968 m!940257))

(declare-fun m!940259 () Bool)

(assert (=> start!88904 m!940259))

(push 1)

(assert (not b!1019968))

(assert (not b!1019967))

(assert (not b!1019966))

(assert (not b!1019969))

(assert (not start!88904))

(assert tp_is_empty!23771)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!122247 () Bool)

(declare-fun size!31153 (List!21738) Int)

(assert (=> d!122247 (= (length!52 lt!449755) (size!31153 lt!449755))))

(declare-fun bs!29712 () Bool)

(assert (= bs!29712 d!122247))

(declare-fun m!940262 () Bool)

(assert (=> bs!29712 m!940262))

(assert (=> b!1019968 d!122247))

(declare-fun d!122252 () Bool)

(assert (=> d!122252 (= (length!52 l!996) (size!31153 l!996))))

(declare-fun bs!29714 () Bool)

(assert (= bs!29714 d!122252))

(declare-fun m!940266 () Bool)

(assert (=> bs!29714 m!940266))

(assert (=> b!1019968 d!122252))

(declare-fun d!122256 () Bool)

(declare-fun res!683776 () Bool)

(declare-fun e!574121 () Bool)

(assert (=> d!122256 (=> res!683776 e!574121)))

(assert (=> d!122256 (= res!683776 (or (is-Nil!21735 l!996) (is-Nil!21735 (t!30755 l!996))))))

(assert (=> d!122256 (= (isStrictlySorted!685 l!996) e!574121)))

(declare-fun b!1019979 () Bool)

(declare-fun e!574123 () Bool)

(assert (=> b!1019979 (= e!574121 e!574123)))

(declare-fun res!683778 () Bool)

(assert (=> b!1019979 (=> (not res!683778) (not e!574123))))

(assert (=> b!1019979 (= res!683778 (bvslt (_1!7764 (h!22932 l!996)) (_1!7764 (h!22932 (t!30755 l!996)))))))

(declare-fun b!1019981 () Bool)

(assert (=> b!1019981 (= e!574123 (isStrictlySorted!685 (t!30755 l!996)))))

(assert (= (and d!122256 (not res!683776)) b!1019979))

(assert (= (and b!1019979 res!683778) b!1019981))

(declare-fun m!940271 () Bool)

(assert (=> b!1019981 m!940271))

(assert (=> start!88904 d!122256))

(declare-fun c!103436 () Bool)

(declare-fun c!103435 () Bool)

(declare-fun e!574172 () List!21738)

(declare-fun b!1020068 () Bool)

(assert (=> b!1020068 (= e!574172 (ite c!103436 (t!30755 l!996) (ite c!103435 (Cons!21734 (h!22932 l!996) (t!30755 l!996)) Nil!21735)))))

(declare-fun d!122261 () Bool)

(declare-fun e!574174 () Bool)

(assert (=> d!122261 e!574174))

(declare-fun res!683802 () Bool)

(assert (=> d!122261 (=> (not res!683802) (not e!574174))))

(declare-fun lt!449764 () List!21738)

(assert (=> d!122261 (= res!683802 (isStrictlySorted!685 lt!449764))))

(declare-fun e!574170 () List!21738)

(assert (=> d!122261 (= lt!449764 e!574170)))

(declare-fun c!103437 () Bool)

(assert (=> d!122261 (= c!103437 (and (is-Cons!21734 l!996) (bvslt (_1!7764 (h!22932 l!996)) key!261)))))

(assert (=> d!122261 (isStrictlySorted!685 l!996)))

(assert (=> d!122261 (= (insertStrictlySorted!367 l!996 key!261 value!172) lt!449764)))

(declare-fun bm!43178 () Bool)

(declare-fun call!43182 () List!21738)

(declare-fun call!43181 () List!21738)

(assert (=> bm!43178 (= call!43182 call!43181)))

(declare-fun b!1020069 () Bool)

(assert (=> b!1020069 (= e!574170 call!43181)))

(declare-fun b!1020070 () Bool)

(declare-fun contains!5929 (List!21738 tuple2!15508) Bool)

(assert (=> b!1020070 (= e!574174 (contains!5929 lt!449764 (tuple2!15509 key!261 value!172)))))

(declare-fun b!1020071 () Bool)

(assert (=> b!1020071 (= e!574172 (insertStrictlySorted!367 (t!30755 l!996) key!261 value!172))))

(declare-fun b!1020072 () Bool)

(assert (=> b!1020072 (= c!103435 (and (is-Cons!21734 l!996) (bvsgt (_1!7764 (h!22932 l!996)) key!261)))))

(declare-fun e!574171 () List!21738)

(declare-fun e!574173 () List!21738)

(assert (=> b!1020072 (= e!574171 e!574173)))

(declare-fun b!1020073 () Bool)

(assert (=> b!1020073 (= e!574170 e!574171)))

(assert (=> b!1020073 (= c!103436 (and (is-Cons!21734 l!996) (= (_1!7764 (h!22932 l!996)) key!261)))))

(declare-fun b!1020074 () Bool)

(declare-fun call!43183 () List!21738)

(assert (=> b!1020074 (= e!574173 call!43183)))

(declare-fun b!1020075 () Bool)

(assert (=> b!1020075 (= e!574173 call!43183)))

(declare-fun bm!43179 () Bool)

(declare-fun $colon$colon!600 (List!21738 tuple2!15508) List!21738)

(assert (=> bm!43179 (= call!43181 ($colon$colon!600 e!574172 (ite c!103437 (h!22932 l!996) (tuple2!15509 key!261 value!172))))))

(declare-fun c!103434 () Bool)

(assert (=> bm!43179 (= c!103434 c!103437)))

(declare-fun bm!43180 () Bool)

(assert (=> bm!43180 (= call!43183 call!43182)))

(declare-fun b!1020076 () Bool)

(declare-fun res!683801 () Bool)

(assert (=> b!1020076 (=> (not res!683801) (not e!574174))))

(assert (=> b!1020076 (= res!683801 (containsKey!550 lt!449764 key!261))))

(declare-fun b!1020077 () Bool)

(assert (=> b!1020077 (= e!574171 call!43182)))

(assert (= (and d!122261 c!103437) b!1020069))

(assert (= (and d!122261 (not c!103437)) b!1020073))

(assert (= (and b!1020073 c!103436) b!1020077))

(assert (= (and b!1020073 (not c!103436)) b!1020072))

(assert (= (and b!1020072 c!103435) b!1020074))

(assert (= (and b!1020072 (not c!103435)) b!1020075))

(assert (= (or b!1020074 b!1020075) bm!43180))

(assert (= (or b!1020077 bm!43180) bm!43178))

(assert (= (or b!1020069 bm!43178) bm!43179))

(assert (= (and bm!43179 c!103434) b!1020071))

(assert (= (and bm!43179 (not c!103434)) b!1020068))

(assert (= (and d!122261 res!683802) b!1020076))

(assert (= (and b!1020076 res!683801) b!1020070))

(declare-fun m!940297 () Bool)

(assert (=> b!1020076 m!940297))

(declare-fun m!940299 () Bool)

(assert (=> d!122261 m!940299))

(assert (=> d!122261 m!940259))

(declare-fun m!940303 () Bool)

(assert (=> b!1020070 m!940303))

(declare-fun m!940305 () Bool)

(assert (=> b!1020071 m!940305))

(declare-fun m!940307 () Bool)

(assert (=> bm!43179 m!940307))

(assert (=> b!1019967 d!122261))

(declare-fun d!122273 () Bool)

(declare-fun res!683819 () Bool)

(declare-fun e!574194 () Bool)

(assert (=> d!122273 (=> res!683819 e!574194)))

(assert (=> d!122273 (= res!683819 (and (is-Cons!21734 l!996) (= (_1!7764 (h!22932 l!996)) key!261)))))


; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!88900 () Bool)

(assert start!88900)

(declare-fun b!1019945 () Bool)

(declare-fun e!574093 () Bool)

(declare-fun tp_is_empty!23767 () Bool)

(declare-fun tp!71192 () Bool)

(assert (=> b!1019945 (= e!574093 (and tp_is_empty!23767 tp!71192))))

(declare-fun b!1019942 () Bool)

(declare-fun res!683746 () Bool)

(declare-fun e!574091 () Bool)

(assert (=> b!1019942 (=> (not res!683746) (not e!574091))))

(declare-datatypes ((B!1700 0))(
  ( (B!1701 (val!11934 Int)) )
))
(declare-datatypes ((tuple2!15504 0))(
  ( (tuple2!15505 (_1!7762 (_ BitVec 64)) (_2!7762 B!1700)) )
))
(declare-datatypes ((List!21736 0))(
  ( (Nil!21733) (Cons!21732 (h!22930 tuple2!15504) (t!30753 List!21736)) )
))
(declare-fun l!996 () List!21736)

(declare-fun key!261 () (_ BitVec 64))

(declare-fun containsKey!548 (List!21736 (_ BitVec 64)) Bool)

(assert (=> b!1019942 (= res!683746 (containsKey!548 l!996 key!261))))

(declare-fun b!1019943 () Bool)

(declare-fun e!574092 () Bool)

(assert (=> b!1019943 (= e!574091 e!574092)))

(declare-fun res!683748 () Bool)

(assert (=> b!1019943 (=> (not res!683748) (not e!574092))))

(assert (=> b!1019943 (= res!683748 (and (or (not (is-Cons!21732 l!996)) (bvsge (_1!7762 (h!22930 l!996)) key!261)) (or (not (is-Cons!21732 l!996)) (not (= (_1!7762 (h!22930 l!996)) key!261)))))))

(declare-fun value!172 () B!1700)

(declare-fun lt!449749 () List!21736)

(declare-fun insertStrictlySorted!365 (List!21736 (_ BitVec 64) B!1700) List!21736)

(assert (=> b!1019943 (= lt!449749 (insertStrictlySorted!365 l!996 key!261 value!172))))

(declare-fun b!1019944 () Bool)

(declare-fun length!50 (List!21736) Int)

(assert (=> b!1019944 (= e!574092 (not (= (length!50 lt!449749) (length!50 l!996))))))

(declare-fun res!683747 () Bool)

(assert (=> start!88900 (=> (not res!683747) (not e!574091))))

(declare-fun isStrictlySorted!683 (List!21736) Bool)

(assert (=> start!88900 (= res!683747 (isStrictlySorted!683 l!996))))

(assert (=> start!88900 e!574091))

(assert (=> start!88900 e!574093))

(assert (=> start!88900 true))

(assert (=> start!88900 tp_is_empty!23767))

(assert (= (and start!88900 res!683747) b!1019942))

(assert (= (and b!1019942 res!683746) b!1019943))

(assert (= (and b!1019943 res!683748) b!1019944))

(assert (= (and start!88900 (is-Cons!21732 l!996)) b!1019945))

(declare-fun m!940231 () Bool)

(assert (=> b!1019942 m!940231))

(declare-fun m!940233 () Bool)

(assert (=> b!1019943 m!940233))

(declare-fun m!940235 () Bool)

(assert (=> b!1019944 m!940235))

(declare-fun m!940237 () Bool)

(assert (=> b!1019944 m!940237))

(declare-fun m!940239 () Bool)

(assert (=> start!88900 m!940239))

(push 1)

(assert (not b!1019942))

(assert tp_is_empty!23767)

(assert (not b!1019945))

(assert (not b!1019944))

(assert (not b!1019943))

(assert (not start!88900))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!122249 () Bool)

(declare-fun size!31152 (List!21736) Int)

(assert (=> d!122249 (= (length!50 lt!449749) (size!31152 lt!449749))))

(declare-fun bs!29713 () Bool)

(assert (= bs!29713 d!122249))

(declare-fun m!940263 () Bool)

(assert (=> bs!29713 m!940263))

(assert (=> b!1019944 d!122249))

(declare-fun d!122253 () Bool)

(assert (=> d!122253 (= (length!50 l!996) (size!31152 l!996))))

(declare-fun bs!29715 () Bool)

(assert (= bs!29715 d!122253))

(declare-fun m!940267 () Bool)

(assert (=> bs!29715 m!940267))

(assert (=> b!1019944 d!122253))

(declare-fun d!122257 () Bool)

(declare-fun res!683775 () Bool)

(declare-fun e!574120 () Bool)

(assert (=> d!122257 (=> res!683775 e!574120)))

(assert (=> d!122257 (= res!683775 (or (is-Nil!21733 l!996) (is-Nil!21733 (t!30753 l!996))))))

(assert (=> d!122257 (= (isStrictlySorted!683 l!996) e!574120)))

(declare-fun b!1019978 () Bool)

(declare-fun e!574122 () Bool)

(assert (=> b!1019978 (= e!574120 e!574122)))

(declare-fun res!683777 () Bool)

(assert (=> b!1019978 (=> (not res!683777) (not e!574122))))

(assert (=> b!1019978 (= res!683777 (bvslt (_1!7762 (h!22930 l!996)) (_1!7762 (h!22930 (t!30753 l!996)))))))

(declare-fun b!1019980 () Bool)

(assert (=> b!1019980 (= e!574122 (isStrictlySorted!683 (t!30753 l!996)))))

(assert (= (and d!122257 (not res!683775)) b!1019978))

(assert (= (and b!1019978 res!683777) b!1019980))

(declare-fun m!940269 () Bool)

(assert (=> b!1019980 m!940269))

(assert (=> start!88900 d!122257))

(declare-fun d!122259 () Bool)

(declare-fun e!574169 () Bool)

(assert (=> d!122259 e!574169))

(declare-fun res!683800 () Bool)

(assert (=> d!122259 (=> (not res!683800) (not e!574169))))

(declare-fun lt!449763 () List!21736)

(assert (=> d!122259 (= res!683800 (isStrictlySorted!683 lt!449763))))

(declare-fun e!574166 () List!21736)

(assert (=> d!122259 (= lt!449763 e!574166)))

(declare-fun c!103431 () Bool)

(assert (=> d!122259 (= c!103431 (and (is-Cons!21732 l!996) (bvslt (_1!7762 (h!22930 l!996)) key!261)))))

(assert (=> d!122259 (isStrictlySorted!683 l!996)))

(assert (=> d!122259 (= (insertStrictlySorted!365 l!996 key!261 value!172) lt!449763)))

(declare-fun c!103433 () Bool)

(declare-fun e!574165 () List!21736)

(declare-fun c!103432 () Bool)

(declare-fun b!1020058 () Bool)

(assert (=> b!1020058 (= e!574165 (ite c!103432 (t!30753 l!996) (ite c!103433 (Cons!21732 (h!22930 l!996) (t!30753 l!996)) Nil!21733)))))

(declare-fun b!1020059 () Bool)

(declare-fun e!574168 () List!21736)

(assert (=> b!1020059 (= e!574166 e!574168)))

(assert (=> b!1020059 (= c!103432 (and (is-Cons!21732 l!996) (= (_1!7762 (h!22930 l!996)) key!261)))))

(declare-fun b!1020060 () Bool)

(declare-fun call!43179 () List!21736)

(assert (=> b!1020060 (= e!574168 call!43179)))

(declare-fun b!1020061 () Bool)

(declare-fun contains!5928 (List!21736 tuple2!15504) Bool)

(assert (=> b!1020061 (= e!574169 (contains!5928 lt!449763 (tuple2!15505 key!261 value!172)))))

(declare-fun b!1020062 () Bool)

(declare-fun e!574167 () List!21736)

(declare-fun call!43178 () List!21736)

(assert (=> b!1020062 (= e!574167 call!43178)))

(declare-fun bm!43175 () Bool)

(assert (=> bm!43175 (= call!43178 call!43179)))

(declare-fun b!1020063 () Bool)

(assert (=> b!1020063 (= e!574167 call!43178)))

(declare-fun b!1020064 () Bool)

(declare-fun call!43180 () List!21736)

(assert (=> b!1020064 (= e!574166 call!43180)))

(declare-fun b!1020065 () Bool)

(assert (=> b!1020065 (= c!103433 (and (is-Cons!21732 l!996) (bvsgt (_1!7762 (h!22930 l!996)) key!261)))))

(assert (=> b!1020065 (= e!574168 e!574167)))

(declare-fun b!1020066 () Bool)

(declare-fun res!683799 () Bool)

(assert (=> b!1020066 (=> (not res!683799) (not e!574169))))

(assert (=> b!1020066 (= res!683799 (containsKey!548 lt!449763 key!261))))

(declare-fun b!1020067 () Bool)

(assert (=> b!1020067 (= e!574165 (insertStrictlySorted!365 (t!30753 l!996) key!261 value!172))))

(declare-fun bm!43176 () Bool)

(declare-fun $colon$colon!599 (List!21736 tuple2!15504) List!21736)

(assert (=> bm!43176 (= call!43180 ($colon$colon!599 e!574165 (ite c!103431 (h!22930 l!996) (tuple2!15505 key!261 value!172))))))

(declare-fun c!103430 () Bool)

(assert (=> bm!43176 (= c!103430 c!103431)))

(declare-fun bm!43177 () Bool)

(assert (=> bm!43177 (= call!43179 call!43180)))

(assert (= (and d!122259 c!103431) b!1020064))

(assert (= (and d!122259 (not c!103431)) b!1020059))

(assert (= (and b!1020059 c!103432) b!1020060))

(assert (= (and b!1020059 (not c!103432)) b!1020065))

(assert (= (and b!1020065 c!103433) b!1020063))

(assert (= (and b!1020065 (not c!103433)) b!1020062))

(assert (= (or b!1020063 b!1020062) bm!43175))

(assert (= (or b!1020060 bm!43175) bm!43177))

(assert (= (or b!1020064 bm!43177) bm!43176))

(assert (= (and bm!43176 c!103430) b!1020067))

(assert (= (and bm!43176 (not c!103430)) b!1020058))

(assert (= (and d!122259 res!683800) b!1020066))

(assert (= (and b!1020066 res!683799) b!1020061))

(declare-fun m!940289 () Bool)

(assert (=> b!1020067 m!940289))

(declare-fun m!940291 () Bool)

(assert (=> b!1020066 m!940291))

(declare-fun m!940293 () Bool)

(assert (=> b!1020061 m!940293))

(declare-fun m!940295 () Bool)

(assert (=> d!122259 m!940295))

(assert (=> d!122259 m!940239))

(declare-fun m!940301 () Bool)

(assert (=> bm!43176 m!940301))

(assert (=> b!1019943 d!122259))

(declare-fun d!122271 () Bool)

(declare-fun res!683817 () Bool)

(declare-fun e!574192 () Bool)

(assert (=> d!122271 (=> res!683817 e!574192)))

(assert (=> d!122271 (= res!683817 (and (is-Cons!21732 l!996) (= (_1!7762 (h!22930 l!996)) key!261)))))

(assert (=> d!122271 (= (containsKey!548 l!996 key!261) e!574192)))

(declare-fun b!1020097 () Bool)

(declare-fun e!574193 () Bool)

(assert (=> b!1020097 (= e!574192 e!574193)))

(declare-fun res!683818 () Bool)

(assert (=> b!1020097 (=> (not res!683818) (not e!574193))))

(assert (=> b!1020097 (= res!683818 (and (or (not (is-Cons!21732 l!996)) (bvsle (_1!7762 (h!22930 l!996)) key!261)) (is-Cons!21732 l!996) (bvslt (_1!7762 (h!22930 l!996)) key!261)))))

(declare-fun b!1020098 () Bool)

(assert (=> b!1020098 (= e!574193 (containsKey!548 (t!30753 l!996) key!261))))

(assert (= (and d!122271 (not res!683817)) b!1020097))

(assert (= (and b!1020097 res!683818) b!1020098))

(declare-fun m!940311 () Bool)

(assert (=> b!1020098 m!940311))

(assert (=> b!1019942 d!122271))

(declare-fun b!1020109 () Bool)

(declare-fun e!574200 () Bool)

(declare-fun tp!71206 () Bool)

(assert (=> b!1020109 (= e!574200 (and tp_is_empty!23767 tp!71206))))

(assert (=> b!1019945 (= tp!71192 e!574200)))

(assert (= (and b!1019945 (is-Cons!21732 (t!30753 l!996))) b!1020109))

(push 1)


; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!132772 () Bool)

(assert start!132772)

(declare-fun res!1064214 () Bool)

(declare-fun e!866029 () Bool)

(assert (=> start!132772 (=> (not res!1064214) (not e!866029))))

(declare-datatypes ((B!2282 0))(
  ( (B!2283 (val!19227 Int)) )
))
(declare-datatypes ((tuple2!24970 0))(
  ( (tuple2!24971 (_1!12495 (_ BitVec 64)) (_2!12495 B!2282)) )
))
(declare-datatypes ((List!36407 0))(
  ( (Nil!36404) (Cons!36403 (h!37850 tuple2!24970) (t!51135 List!36407)) )
))
(declare-fun l!1177 () List!36407)

(declare-fun isStrictlySorted!917 (List!36407) Bool)

(assert (=> start!132772 (= res!1064214 (isStrictlySorted!917 l!1177))))

(assert (=> start!132772 e!866029))

(declare-fun e!866031 () Bool)

(assert (=> start!132772 e!866031))

(assert (=> start!132772 true))

(declare-fun tp_is_empty!38293 () Bool)

(assert (=> start!132772 tp_is_empty!38293))

(declare-fun b!1555109 () Bool)

(declare-fun res!1064215 () Bool)

(assert (=> b!1555109 (=> (not res!1064215) (not e!866029))))

(declare-fun newKey!105 () (_ BitVec 64))

(declare-fun otherKey!50 () (_ BitVec 64))

(assert (=> b!1555109 (= res!1064215 (and (not (= newKey!105 otherKey!50)) (is-Cons!36403 l!1177) (not (= (_1!12495 (h!37850 l!1177)) otherKey!50))))))

(declare-fun b!1555110 () Bool)

(declare-fun res!1064217 () Bool)

(assert (=> b!1555110 (=> (not res!1064217) (not e!866029))))

(assert (=> b!1555110 (= res!1064217 (isStrictlySorted!917 (t!51135 l!1177)))))

(declare-fun lt!670180 () List!36407)

(declare-fun b!1555111 () Bool)

(declare-fun e!866030 () Bool)

(declare-datatypes ((Option!846 0))(
  ( (Some!845 (v!22026 B!2282)) (None!844) )
))
(declare-fun getValueByKey!771 (List!36407 (_ BitVec 64)) Option!846)

(assert (=> b!1555111 (= e!866030 (= (getValueByKey!771 lt!670180 otherKey!50) (getValueByKey!771 (t!51135 l!1177) otherKey!50)))))

(declare-fun b!1555112 () Bool)

(declare-fun tp!112273 () Bool)

(assert (=> b!1555112 (= e!866031 (and tp_is_empty!38293 tp!112273))))

(declare-fun b!1555113 () Bool)

(declare-fun e!866028 () Bool)

(declare-fun lt!670181 () List!36407)

(assert (=> b!1555113 (= e!866028 (isStrictlySorted!917 lt!670181))))

(declare-fun b!1555114 () Bool)

(assert (=> b!1555114 (= e!866029 (not e!866028))))

(declare-fun res!1064216 () Bool)

(assert (=> b!1555114 (=> res!1064216 e!866028)))

(declare-fun containsKey!789 (List!36407 (_ BitVec 64)) Bool)

(assert (=> b!1555114 (= res!1064216 (not (= (containsKey!789 lt!670181 otherKey!50) (containsKey!789 l!1177 otherKey!50))))))

(declare-fun newValue!105 () B!2282)

(declare-fun insertStrictlySorted!531 (List!36407 (_ BitVec 64) B!2282) List!36407)

(assert (=> b!1555114 (= lt!670181 (insertStrictlySorted!531 l!1177 newKey!105 newValue!105))))

(assert (=> b!1555114 e!866030))

(declare-fun res!1064213 () Bool)

(assert (=> b!1555114 (=> (not res!1064213) (not e!866030))))

(assert (=> b!1555114 (= res!1064213 (= (containsKey!789 lt!670180 otherKey!50) (containsKey!789 (t!51135 l!1177) otherKey!50)))))

(assert (=> b!1555114 (= lt!670180 (insertStrictlySorted!531 (t!51135 l!1177) newKey!105 newValue!105))))

(declare-datatypes ((Unit!51761 0))(
  ( (Unit!51762) )
))
(declare-fun lt!670179 () Unit!51761)

(declare-fun lemmaInsertStrictlySortedDoesNotModifyOtherKeyValues!28 (List!36407 (_ BitVec 64) B!2282 (_ BitVec 64)) Unit!51761)

(assert (=> b!1555114 (= lt!670179 (lemmaInsertStrictlySortedDoesNotModifyOtherKeyValues!28 (t!51135 l!1177) newKey!105 newValue!105 otherKey!50))))

(assert (= (and start!132772 res!1064214) b!1555109))

(assert (= (and b!1555109 res!1064215) b!1555110))

(assert (= (and b!1555110 res!1064217) b!1555114))

(assert (= (and b!1555114 res!1064213) b!1555111))

(assert (= (and b!1555114 (not res!1064216)) b!1555113))

(assert (= (and start!132772 (is-Cons!36403 l!1177)) b!1555112))

(declare-fun m!1433247 () Bool)

(assert (=> b!1555111 m!1433247))

(declare-fun m!1433249 () Bool)

(assert (=> b!1555111 m!1433249))

(declare-fun m!1433251 () Bool)

(assert (=> b!1555114 m!1433251))

(declare-fun m!1433253 () Bool)

(assert (=> b!1555114 m!1433253))

(declare-fun m!1433255 () Bool)

(assert (=> b!1555114 m!1433255))

(declare-fun m!1433257 () Bool)

(assert (=> b!1555114 m!1433257))

(declare-fun m!1433259 () Bool)

(assert (=> b!1555114 m!1433259))

(declare-fun m!1433261 () Bool)

(assert (=> b!1555114 m!1433261))

(declare-fun m!1433263 () Bool)

(assert (=> b!1555114 m!1433263))

(declare-fun m!1433265 () Bool)

(assert (=> start!132772 m!1433265))

(declare-fun m!1433267 () Bool)

(assert (=> b!1555110 m!1433267))

(declare-fun m!1433269 () Bool)

(assert (=> b!1555113 m!1433269))

(push 1)

(assert (not b!1555112))

(assert (not b!1555110))

(assert (not b!1555114))

(assert (not start!132772))

(assert (not b!1555113))

(assert tp_is_empty!38293)

(assert (not b!1555111))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!1555185 () Bool)

(declare-fun e!866073 () Option!846)

(assert (=> b!1555185 (= e!866073 (getValueByKey!771 (t!51135 lt!670180) otherKey!50))))

(declare-fun b!1555183 () Bool)

(declare-fun e!866072 () Option!846)

(assert (=> b!1555183 (= e!866072 (Some!845 (_2!12495 (h!37850 lt!670180))))))

(declare-fun b!1555186 () Bool)

(assert (=> b!1555186 (= e!866073 None!844)))

(declare-fun b!1555184 () Bool)

(assert (=> b!1555184 (= e!866072 e!866073)))

(declare-fun c!143513 () Bool)

(assert (=> b!1555184 (= c!143513 (and (is-Cons!36403 lt!670180) (not (= (_1!12495 (h!37850 lt!670180)) otherKey!50))))))

(declare-fun d!161835 () Bool)

(declare-fun c!143512 () Bool)

(assert (=> d!161835 (= c!143512 (and (is-Cons!36403 lt!670180) (= (_1!12495 (h!37850 lt!670180)) otherKey!50)))))

(assert (=> d!161835 (= (getValueByKey!771 lt!670180 otherKey!50) e!866072)))

(assert (= (and d!161835 c!143512) b!1555183))

(assert (= (and d!161835 (not c!143512)) b!1555184))

(assert (= (and b!1555184 c!143513) b!1555185))

(assert (= (and b!1555184 (not c!143513)) b!1555186))

(declare-fun m!1433319 () Bool)

(assert (=> b!1555185 m!1433319))

(assert (=> b!1555111 d!161835))

(declare-fun b!1555193 () Bool)

(declare-fun e!866077 () Option!846)

(assert (=> b!1555193 (= e!866077 (getValueByKey!771 (t!51135 (t!51135 l!1177)) otherKey!50))))

(declare-fun b!1555191 () Bool)

(declare-fun e!866076 () Option!846)

(assert (=> b!1555191 (= e!866076 (Some!845 (_2!12495 (h!37850 (t!51135 l!1177)))))))

(declare-fun b!1555194 () Bool)

(assert (=> b!1555194 (= e!866077 None!844)))

(declare-fun b!1555192 () Bool)

(assert (=> b!1555192 (= e!866076 e!866077)))

(declare-fun c!143517 () Bool)

(assert (=> b!1555192 (= c!143517 (and (is-Cons!36403 (t!51135 l!1177)) (not (= (_1!12495 (h!37850 (t!51135 l!1177))) otherKey!50))))))

(declare-fun d!161837 () Bool)

(declare-fun c!143516 () Bool)

(assert (=> d!161837 (= c!143516 (and (is-Cons!36403 (t!51135 l!1177)) (= (_1!12495 (h!37850 (t!51135 l!1177))) otherKey!50)))))

(assert (=> d!161837 (= (getValueByKey!771 (t!51135 l!1177) otherKey!50) e!866076)))

(assert (= (and d!161837 c!143516) b!1555191))

(assert (= (and d!161837 (not c!143516)) b!1555192))

(assert (= (and b!1555192 c!143517) b!1555193))

(assert (= (and b!1555192 (not c!143517)) b!1555194))

(declare-fun m!1433321 () Bool)

(assert (=> b!1555193 m!1433321))

(assert (=> b!1555111 d!161837))

(declare-fun d!161839 () Bool)

(declare-fun res!1064260 () Bool)

(declare-fun e!866088 () Bool)

(assert (=> d!161839 (=> res!1064260 e!866088)))

(assert (=> d!161839 (= res!1064260 (or (is-Nil!36404 (t!51135 l!1177)) (is-Nil!36404 (t!51135 (t!51135 l!1177)))))))

(assert (=> d!161839 (= (isStrictlySorted!917 (t!51135 l!1177)) e!866088)))

(declare-fun b!1555211 () Bool)

(declare-fun e!866089 () Bool)

(assert (=> b!1555211 (= e!866088 e!866089)))

(declare-fun res!1064261 () Bool)

(assert (=> b!1555211 (=> (not res!1064261) (not e!866089))))

(assert (=> b!1555211 (= res!1064261 (bvslt (_1!12495 (h!37850 (t!51135 l!1177))) (_1!12495 (h!37850 (t!51135 (t!51135 l!1177))))))))

(declare-fun b!1555212 () Bool)

(assert (=> b!1555212 (= e!866089 (isStrictlySorted!917 (t!51135 (t!51135 l!1177))))))

(assert (= (and d!161839 (not res!1064260)) b!1555211))

(assert (= (and b!1555211 res!1064261) b!1555212))

(declare-fun m!1433323 () Bool)

(assert (=> b!1555212 m!1433323))

(assert (=> b!1555110 d!161839))

(declare-fun d!161841 () Bool)

(declare-fun e!866156 () Bool)

(assert (=> d!161841 e!866156))

(declare-fun res!1064307 () Bool)

(assert (=> d!161841 (=> (not res!1064307) (not e!866156))))

(declare-fun lt!670216 () List!36407)

(assert (=> d!161841 (= res!1064307 (isStrictlySorted!917 lt!670216))))

(declare-fun e!866154 () List!36407)

(assert (=> d!161841 (= lt!670216 e!866154)))

(declare-fun c!143547 () Bool)

(assert (=> d!161841 (= c!143547 (and (is-Cons!36403 l!1177) (bvslt (_1!12495 (h!37850 l!1177)) newKey!105)))))

(assert (=> d!161841 (isStrictlySorted!917 l!1177)))

(assert (=> d!161841 (= (insertStrictlySorted!531 l!1177 newKey!105 newValue!105) lt!670216)))

(declare-fun b!1555305 () Bool)

(declare-fun call!71520 () List!36407)

(assert (=> b!1555305 (= e!866154 call!71520)))

(declare-fun b!1555306 () Bool)

(declare-fun e!866152 () List!36407)

(declare-fun call!71519 () List!36407)

(assert (=> b!1555306 (= e!866152 call!71519)))

(declare-fun bm!71515 () Bool)

(declare-fun e!866153 () List!36407)

(declare-fun $colon$colon!961 (List!36407 tuple2!24970) List!36407)

(assert (=> bm!71515 (= call!71520 ($colon$colon!961 e!866153 (ite c!143547 (h!37850 l!1177) (tuple2!24971 newKey!105 newValue!105))))))

(declare-fun c!143544 () Bool)

(assert (=> bm!71515 (= c!143544 c!143547)))

(declare-fun b!1555307 () Bool)

(declare-fun res!1064306 () Bool)

(assert (=> b!1555307 (=> (not res!1064306) (not e!866156))))

(assert (=> b!1555307 (= res!1064306 (containsKey!789 lt!670216 newKey!105))))

(declare-fun b!1555308 () Bool)

(declare-fun contains!10182 (List!36407 tuple2!24970) Bool)

(assert (=> b!1555308 (= e!866156 (contains!10182 lt!670216 (tuple2!24971 newKey!105 newValue!105)))))

(declare-fun b!1555309 () Bool)

(declare-fun c!143546 () Bool)

(assert (=> b!1555309 (= c!143546 (and (is-Cons!36403 l!1177) (bvsgt (_1!12495 (h!37850 l!1177)) newKey!105)))))

(declare-fun e!866155 () List!36407)

(assert (=> b!1555309 (= e!866155 e!866152)))

(declare-fun b!1555310 () Bool)

(assert (=> b!1555310 (= e!866154 e!866155)))

(declare-fun c!143545 () Bool)

(assert (=> b!1555310 (= c!143545 (and (is-Cons!36403 l!1177) (= (_1!12495 (h!37850 l!1177)) newKey!105)))))

(declare-fun b!1555311 () Bool)

(assert (=> b!1555311 (= e!866153 (ite c!143545 (t!51135 l!1177) (ite c!143546 (Cons!36403 (h!37850 l!1177) (t!51135 l!1177)) Nil!36404)))))

(declare-fun bm!71516 () Bool)

(declare-fun call!71518 () List!36407)

(assert (=> bm!71516 (= call!71519 call!71518)))

(declare-fun b!1555312 () Bool)

(assert (=> b!1555312 (= e!866153 (insertStrictlySorted!531 (t!51135 l!1177) newKey!105 newValue!105))))

(declare-fun b!1555313 () Bool)

(assert (=> b!1555313 (= e!866152 call!71519)))

(declare-fun b!1555314 () Bool)

(assert (=> b!1555314 (= e!866155 call!71518)))

(declare-fun bm!71517 () Bool)

(assert (=> bm!71517 (= call!71518 call!71520)))

(assert (= (and d!161841 c!143547) b!1555305))

(assert (= (and d!161841 (not c!143547)) b!1555310))

(assert (= (and b!1555310 c!143545) b!1555314))

(assert (= (and b!1555310 (not c!143545)) b!1555309))

(assert (= (and b!1555309 c!143546) b!1555313))

(assert (= (and b!1555309 (not c!143546)) b!1555306))

(assert (= (or b!1555313 b!1555306) bm!71516))

(assert (= (or b!1555314 bm!71516) bm!71517))

(assert (= (or b!1555305 bm!71517) bm!71515))

(assert (= (and bm!71515 c!143544) b!1555312))

(assert (= (and bm!71515 (not c!143544)) b!1555311))

(assert (= (and d!161841 res!1064307) b!1555307))

(assert (= (and b!1555307 res!1064306) b!1555308))

(declare-fun m!1433383 () Bool)

(assert (=> d!161841 m!1433383))

(assert (=> d!161841 m!1433265))

(assert (=> b!1555312 m!1433253))

(declare-fun m!1433385 () Bool)

(assert (=> b!1555308 m!1433385))

(declare-fun m!1433387 () Bool)

(assert (=> bm!71515 m!1433387))

(declare-fun m!1433389 () Bool)

(assert (=> b!1555307 m!1433389))

(assert (=> b!1555114 d!161841))

(declare-fun d!161869 () Bool)

(declare-fun res!1064316 () Bool)

(declare-fun e!866177 () Bool)

(assert (=> d!161869 (=> res!1064316 e!866177)))

(assert (=> d!161869 (= res!1064316 (and (is-Cons!36403 lt!670181) (= (_1!12495 (h!37850 lt!670181)) otherKey!50)))))

(assert (=> d!161869 (= (containsKey!789 lt!670181 otherKey!50) e!866177)))

(declare-fun b!1555347 () Bool)

(declare-fun e!866178 () Bool)

(assert (=> b!1555347 (= e!866177 e!866178)))

(declare-fun res!1064317 () Bool)

(assert (=> b!1555347 (=> (not res!1064317) (not e!866178))))

(assert (=> b!1555347 (= res!1064317 (and (or (not (is-Cons!36403 lt!670181)) (bvsle (_1!12495 (h!37850 lt!670181)) otherKey!50)) (is-Cons!36403 lt!670181) (bvslt (_1!12495 (h!37850 lt!670181)) otherKey!50)))))

(declare-fun b!1555348 () Bool)

(assert (=> b!1555348 (= e!866178 (containsKey!789 (t!51135 lt!670181) otherKey!50))))

(assert (= (and d!161869 (not res!1064316)) b!1555347))

(assert (= (and b!1555347 res!1064317) b!1555348))

(declare-fun m!1433397 () Bool)

(assert (=> b!1555348 m!1433397))

(assert (=> b!1555114 d!161869))

(declare-fun d!161877 () Bool)

(declare-fun res!1064318 () Bool)

(declare-fun e!866179 () Bool)

(assert (=> d!161877 (=> res!1064318 e!866179)))

(assert (=> d!161877 (= res!1064318 (and (is-Cons!36403 l!1177) (= (_1!12495 (h!37850 l!1177)) otherKey!50)))))

(assert (=> d!161877 (= (containsKey!789 l!1177 otherKey!50) e!866179)))

(declare-fun b!1555349 () Bool)

(declare-fun e!866180 () Bool)

(assert (=> b!1555349 (= e!866179 e!866180)))

(declare-fun res!1064319 () Bool)

(assert (=> b!1555349 (=> (not res!1064319) (not e!866180))))

(assert (=> b!1555349 (= res!1064319 (and (or (not (is-Cons!36403 l!1177)) (bvsle (_1!12495 (h!37850 l!1177)) otherKey!50)) (is-Cons!36403 l!1177) (bvslt (_1!12495 (h!37850 l!1177)) otherKey!50)))))

(declare-fun b!1555350 () Bool)

(assert (=> b!1555350 (= e!866180 (containsKey!789 (t!51135 l!1177) otherKey!50))))

(assert (= (and d!161877 (not res!1064318)) b!1555349))

(assert (= (and b!1555349 res!1064319) b!1555350))

(assert (=> b!1555350 m!1433255))

(assert (=> b!1555114 d!161877))

(declare-fun d!161879 () Bool)

(declare-fun e!866187 () Bool)

(assert (=> d!161879 e!866187))

(declare-fun res!1064321 () Bool)

(assert (=> d!161879 (=> (not res!1064321) (not e!866187))))

(declare-fun lt!670217 () List!36407)

(assert (=> d!161879 (= res!1064321 (isStrictlySorted!917 lt!670217))))

(declare-fun e!866185 () List!36407)

(assert (=> d!161879 (= lt!670217 e!866185)))

(declare-fun c!143565 () Bool)

(assert (=> d!161879 (= c!143565 (and (is-Cons!36403 (t!51135 l!1177)) (bvslt (_1!12495 (h!37850 (t!51135 l!1177))) newKey!105)))))

(assert (=> d!161879 (isStrictlySorted!917 (t!51135 l!1177))))

(assert (=> d!161879 (= (insertStrictlySorted!531 (t!51135 l!1177) newKey!105 newValue!105) lt!670217)))

(declare-fun b!1555355 () Bool)

(declare-fun call!71523 () List!36407)

(assert (=> b!1555355 (= e!866185 call!71523)))

(declare-fun b!1555356 () Bool)

(declare-fun e!866183 () List!36407)

(declare-fun call!71522 () List!36407)

(assert (=> b!1555356 (= e!866183 call!71522)))

(declare-fun e!866184 () List!36407)

(declare-fun bm!71518 () Bool)

(assert (=> bm!71518 (= call!71523 ($colon$colon!961 e!866184 (ite c!143565 (h!37850 (t!51135 l!1177)) (tuple2!24971 newKey!105 newValue!105))))))

(declare-fun c!143562 () Bool)

(assert (=> bm!71518 (= c!143562 c!143565)))

(declare-fun b!1555357 () Bool)

(declare-fun res!1064320 () Bool)

(assert (=> b!1555357 (=> (not res!1064320) (not e!866187))))

(assert (=> b!1555357 (= res!1064320 (containsKey!789 lt!670217 newKey!105))))

(declare-fun b!1555358 () Bool)

(assert (=> b!1555358 (= e!866187 (contains!10182 lt!670217 (tuple2!24971 newKey!105 newValue!105)))))

(declare-fun b!1555359 () Bool)

(declare-fun c!143564 () Bool)

(assert (=> b!1555359 (= c!143564 (and (is-Cons!36403 (t!51135 l!1177)) (bvsgt (_1!12495 (h!37850 (t!51135 l!1177))) newKey!105)))))

(declare-fun e!866186 () List!36407)

(assert (=> b!1555359 (= e!866186 e!866183)))

(declare-fun b!1555360 () Bool)

(assert (=> b!1555360 (= e!866185 e!866186)))

(declare-fun c!143563 () Bool)

(assert (=> b!1555360 (= c!143563 (and (is-Cons!36403 (t!51135 l!1177)) (= (_1!12495 (h!37850 (t!51135 l!1177))) newKey!105)))))

(declare-fun b!1555361 () Bool)

(assert (=> b!1555361 (= e!866184 (ite c!143563 (t!51135 (t!51135 l!1177)) (ite c!143564 (Cons!36403 (h!37850 (t!51135 l!1177)) (t!51135 (t!51135 l!1177))) Nil!36404)))))

(declare-fun bm!71519 () Bool)

(declare-fun call!71521 () List!36407)

(assert (=> bm!71519 (= call!71522 call!71521)))

(declare-fun b!1555362 () Bool)

(assert (=> b!1555362 (= e!866184 (insertStrictlySorted!531 (t!51135 (t!51135 l!1177)) newKey!105 newValue!105))))

(declare-fun b!1555363 () Bool)

(assert (=> b!1555363 (= e!866183 call!71522)))

(declare-fun b!1555364 () Bool)

(assert (=> b!1555364 (= e!866186 call!71521)))

(declare-fun bm!71520 () Bool)

(assert (=> bm!71520 (= call!71521 call!71523)))

(assert (= (and d!161879 c!143565) b!1555355))

(assert (= (and d!161879 (not c!143565)) b!1555360))

(assert (= (and b!1555360 c!143563) b!1555364))

(assert (= (and b!1555360 (not c!143563)) b!1555359))

(assert (= (and b!1555359 c!143564) b!1555363))

(assert (= (and b!1555359 (not c!143564)) b!1555356))

(assert (= (or b!1555363 b!1555356) bm!71519))

(assert (= (or b!1555364 bm!71519) bm!71520))

(assert (= (or b!1555355 bm!71520) bm!71518))

(assert (= (and bm!71518 c!143562) b!1555362))

(assert (= (and bm!71518 (not c!143562)) b!1555361))

(assert (= (and d!161879 res!1064321) b!1555357))

(assert (= (and b!1555357 res!1064320) b!1555358))

(declare-fun m!1433403 () Bool)

(assert (=> d!161879 m!1433403))

(assert (=> d!161879 m!1433267))

(declare-fun m!1433405 () Bool)

(assert (=> b!1555362 m!1433405))

(declare-fun m!1433407 () Bool)

(assert (=> b!1555358 m!1433407))

(declare-fun m!1433409 () Bool)

(assert (=> bm!71518 m!1433409))

(declare-fun m!1433411 () Bool)

(assert (=> b!1555357 m!1433411))

(assert (=> b!1555114 d!161879))

(declare-fun d!161885 () Bool)

(declare-fun res!1064326 () Bool)

(declare-fun e!866194 () Bool)

(assert (=> d!161885 (=> res!1064326 e!866194)))

(assert (=> d!161885 (= res!1064326 (and (is-Cons!36403 (t!51135 l!1177)) (= (_1!12495 (h!37850 (t!51135 l!1177))) otherKey!50)))))

(assert (=> d!161885 (= (containsKey!789 (t!51135 l!1177) otherKey!50) e!866194)))

(declare-fun b!1555373 () Bool)

(declare-fun e!866195 () Bool)

(assert (=> b!1555373 (= e!866194 e!866195)))

(declare-fun res!1064327 () Bool)

(assert (=> b!1555373 (=> (not res!1064327) (not e!866195))))

(assert (=> b!1555373 (= res!1064327 (and (or (not (is-Cons!36403 (t!51135 l!1177))) (bvsle (_1!12495 (h!37850 (t!51135 l!1177))) otherKey!50)) (is-Cons!36403 (t!51135 l!1177)) (bvslt (_1!12495 (h!37850 (t!51135 l!1177))) otherKey!50)))))

(declare-fun b!1555374 () Bool)

(assert (=> b!1555374 (= e!866195 (containsKey!789 (t!51135 (t!51135 l!1177)) otherKey!50))))

(assert (= (and d!161885 (not res!1064326)) b!1555373))

(assert (= (and b!1555373 res!1064327) b!1555374))

(declare-fun m!1433413 () Bool)

(assert (=> b!1555374 m!1433413))

(assert (=> b!1555114 d!161885))

(declare-fun d!161887 () Bool)

(declare-fun res!1064328 () Bool)

(declare-fun e!866196 () Bool)

(assert (=> d!161887 (=> res!1064328 e!866196)))

(assert (=> d!161887 (= res!1064328 (and (is-Cons!36403 lt!670180) (= (_1!12495 (h!37850 lt!670180)) otherKey!50)))))

(assert (=> d!161887 (= (containsKey!789 lt!670180 otherKey!50) e!866196)))

(declare-fun b!1555375 () Bool)

(declare-fun e!866197 () Bool)

(assert (=> b!1555375 (= e!866196 e!866197)))

(declare-fun res!1064329 () Bool)

(assert (=> b!1555375 (=> (not res!1064329) (not e!866197))))

(assert (=> b!1555375 (= res!1064329 (and (or (not (is-Cons!36403 lt!670180)) (bvsle (_1!12495 (h!37850 lt!670180)) otherKey!50)) (is-Cons!36403 lt!670180) (bvslt (_1!12495 (h!37850 lt!670180)) otherKey!50)))))

(declare-fun b!1555376 () Bool)

(assert (=> b!1555376 (= e!866197 (containsKey!789 (t!51135 lt!670180) otherKey!50))))

(assert (= (and d!161887 (not res!1064328)) b!1555375))

(assert (= (and b!1555375 res!1064329) b!1555376))

(declare-fun m!1433415 () Bool)

(assert (=> b!1555376 m!1433415))

(assert (=> b!1555114 d!161887))

(declare-fun d!161889 () Bool)

(declare-fun e!866224 () Bool)

(assert (=> d!161889 e!866224))

(declare-fun res!1064350 () Bool)

(assert (=> d!161889 (=> (not res!1064350) (not e!866224))))

(assert (=> d!161889 (= res!1064350 (= (containsKey!789 (insertStrictlySorted!531 (t!51135 l!1177) newKey!105 newValue!105) otherKey!50) (containsKey!789 (t!51135 l!1177) otherKey!50)))))

(declare-fun lt!670220 () Unit!51761)

(declare-fun choose!2066 (List!36407 (_ BitVec 64) B!2282 (_ BitVec 64)) Unit!51761)

(assert (=> d!161889 (= lt!670220 (choose!2066 (t!51135 l!1177) newKey!105 newValue!105 otherKey!50))))

(declare-fun e!866225 () Bool)

(assert (=> d!161889 e!866225))

(declare-fun res!1064351 () Bool)

(assert (=> d!161889 (=> (not res!1064351) (not e!866225))))

(assert (=> d!161889 (= res!1064351 (isStrictlySorted!917 (t!51135 l!1177)))))

(assert (=> d!161889 (= (lemmaInsertStrictlySortedDoesNotModifyOtherKeyValues!28 (t!51135 l!1177) newKey!105 newValue!105 otherKey!50) lt!670220)))

(declare-fun b!1555407 () Bool)

(assert (=> b!1555407 (= e!866225 (not (= newKey!105 otherKey!50)))))

(declare-fun b!1555408 () Bool)

(assert (=> b!1555408 (= e!866224 (= (getValueByKey!771 (insertStrictlySorted!531 (t!51135 l!1177) newKey!105 newValue!105) otherKey!50) (getValueByKey!771 (t!51135 l!1177) otherKey!50)))))

(assert (= (and d!161889 res!1064351) b!1555407))

(assert (= (and d!161889 res!1064350) b!1555408))


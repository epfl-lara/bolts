; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!417882 () Bool)

(assert start!417882)

(declare-fun res!1777294 () Bool)

(declare-fun e!2696931 () Bool)

(assert (=> start!417882 (=> (not res!1777294) (not e!2696931))))

(declare-datatypes ((V!10234 0))(
  ( (V!10235 (val!16261 Int)) )
))
(declare-datatypes ((K!9988 0))(
  ( (K!9989 (val!16262 Int)) )
))
(declare-datatypes ((tuple2!47842 0))(
  ( (tuple2!47843 (_1!27215 K!9988) (_2!27215 V!10234)) )
))
(declare-datatypes ((List!48755 0))(
  ( (Nil!48631) (Cons!48631 (h!54124 tuple2!47842) (t!355671 List!48755)) )
))
(declare-datatypes ((tuple2!47844 0))(
  ( (tuple2!47845 (_1!27216 (_ BitVec 64)) (_2!27216 List!48755)) )
))
(declare-datatypes ((List!48756 0))(
  ( (Nil!48632) (Cons!48632 (h!54125 tuple2!47844) (t!355672 List!48756)) )
))
(declare-datatypes ((ListLongMap!1369 0))(
  ( (ListLongMap!1370 (toList!2719 List!48756)) )
))
(declare-fun lm!1707 () ListLongMap!1369)

(declare-fun lambda!135266 () Int)

(declare-fun forall!8928 (List!48756 Int) Bool)

(assert (=> start!417882 (= res!1777294 (forall!8928 (toList!2719 lm!1707) lambda!135266))))

(assert (=> start!417882 e!2696931))

(declare-fun e!2696932 () Bool)

(assert (=> start!417882 e!2696932))

(assert (=> start!417882 true))

(declare-fun e!2696930 () Bool)

(declare-fun inv!64175 (ListLongMap!1369) Bool)

(assert (=> start!417882 (and (inv!64175 lm!1707) e!2696930)))

(declare-fun tp_is_empty!24709 () Bool)

(assert (=> start!417882 tp_is_empty!24709))

(declare-fun tp_is_empty!24711 () Bool)

(assert (=> start!417882 tp_is_empty!24711))

(declare-fun b!4334123 () Bool)

(declare-fun res!1777296 () Bool)

(declare-fun e!2696935 () Bool)

(assert (=> b!4334123 (=> (not res!1777296) (not e!2696935))))

(declare-fun lt!1547367 () ListLongMap!1369)

(assert (=> b!4334123 (= res!1777296 (forall!8928 (toList!2719 lt!1547367) lambda!135266))))

(declare-fun b!4334124 () Bool)

(declare-fun res!1777290 () Bool)

(declare-fun e!2696934 () Bool)

(assert (=> b!4334124 (=> res!1777290 e!2696934)))

(declare-fun newBucket!200 () List!48755)

(declare-fun noDuplicateKeys!368 (List!48755) Bool)

(assert (=> b!4334124 (= res!1777290 (not (noDuplicateKeys!368 newBucket!200)))))

(declare-fun b!4334125 () Bool)

(declare-fun res!1777292 () Bool)

(assert (=> b!4334125 (=> (not res!1777292) (not e!2696931))))

(declare-datatypes ((Hashable!4760 0))(
  ( (HashableExt!4759 (__x!30463 Int)) )
))
(declare-fun hashF!1247 () Hashable!4760)

(declare-fun allKeysSameHashInMap!472 (ListLongMap!1369 Hashable!4760) Bool)

(assert (=> b!4334125 (= res!1777292 (allKeysSameHashInMap!472 lm!1707 hashF!1247))))

(declare-fun b!4334126 () Bool)

(declare-fun e!2696929 () Bool)

(assert (=> b!4334126 (= e!2696929 (forall!8928 (t!355672 (toList!2719 lm!1707)) lambda!135266))))

(declare-fun e!2696933 () Bool)

(assert (=> b!4334126 e!2696933))

(declare-fun res!1777293 () Bool)

(assert (=> b!4334126 (=> (not res!1777293) (not e!2696933))))

(declare-datatypes ((ListMap!1963 0))(
  ( (ListMap!1964 (toList!2720 List!48755)) )
))
(declare-fun lt!1547361 () ListMap!1963)

(declare-fun lt!1547364 () ListMap!1963)

(declare-fun addToMapMapFromBucket!76 (List!48755 ListMap!1963) ListMap!1963)

(assert (=> b!4334126 (= res!1777293 (= lt!1547364 (addToMapMapFromBucket!76 newBucket!200 lt!1547361)))))

(declare-fun extractMap!427 (List!48756) ListMap!1963)

(assert (=> b!4334126 (= lt!1547364 (extractMap!427 (toList!2719 lt!1547367)))))

(assert (=> b!4334126 (= lt!1547361 (extractMap!427 (t!355672 (toList!2719 lm!1707))))))

(declare-fun b!4334127 () Bool)

(declare-fun tp!1328817 () Bool)

(assert (=> b!4334127 (= e!2696932 (and tp_is_empty!24709 tp_is_empty!24711 tp!1328817))))

(declare-fun b!4334128 () Bool)

(declare-fun res!1777301 () Bool)

(assert (=> b!4334128 (=> (not res!1777301) (not e!2696931))))

(declare-fun hash!377 () (_ BitVec 64))

(declare-fun allKeysSameHash!326 (List!48755 (_ BitVec 64) Hashable!4760) Bool)

(assert (=> b!4334128 (= res!1777301 (allKeysSameHash!326 newBucket!200 hash!377 hashF!1247))))

(declare-fun b!4334129 () Bool)

(assert (=> b!4334129 (= e!2696931 (not e!2696934))))

(declare-fun res!1777295 () Bool)

(assert (=> b!4334129 (=> res!1777295 e!2696934)))

(declare-fun lt!1547360 () List!48755)

(assert (=> b!4334129 (= res!1777295 (not (= newBucket!200 lt!1547360)))))

(declare-fun lt!1547365 () List!48755)

(declare-fun key!3918 () K!9988)

(declare-fun newValue!99 () V!10234)

(declare-fun removePairForKey!338 (List!48755 K!9988) List!48755)

(assert (=> b!4334129 (= lt!1547360 (Cons!48631 (tuple2!47843 key!3918 newValue!99) (removePairForKey!338 lt!1547365 key!3918)))))

(declare-fun lt!1547359 () tuple2!47844)

(declare-datatypes ((Unit!68300 0))(
  ( (Unit!68301) )
))
(declare-fun lt!1547362 () Unit!68300)

(declare-fun forallContained!1578 (List!48756 Int tuple2!47844) Unit!68300)

(assert (=> b!4334129 (= lt!1547362 (forallContained!1578 (toList!2719 lm!1707) lambda!135266 lt!1547359))))

(declare-fun contains!10667 (List!48756 tuple2!47844) Bool)

(assert (=> b!4334129 (contains!10667 (toList!2719 lm!1707) lt!1547359)))

(assert (=> b!4334129 (= lt!1547359 (tuple2!47845 hash!377 lt!1547365))))

(declare-fun lt!1547366 () Unit!68300)

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!215 (List!48756 (_ BitVec 64) List!48755) Unit!68300)

(assert (=> b!4334129 (= lt!1547366 (lemmaGetValueByKeyImpliesContainsTuple!215 (toList!2719 lm!1707) hash!377 lt!1547365))))

(declare-fun apply!11220 (ListLongMap!1369 (_ BitVec 64)) List!48755)

(assert (=> b!4334129 (= lt!1547365 (apply!11220 lm!1707 hash!377))))

(declare-fun b!4334130 () Bool)

(assert (=> b!4334130 (= e!2696933 (= lt!1547364 (addToMapMapFromBucket!76 lt!1547360 lt!1547361)))))

(declare-fun b!4334131 () Bool)

(assert (=> b!4334131 (= e!2696934 e!2696929)))

(declare-fun res!1777297 () Bool)

(assert (=> b!4334131 (=> res!1777297 e!2696929)))

(assert (=> b!4334131 (= res!1777297 (or (not (is-Cons!48632 (toList!2719 lm!1707))) (not (= (_1!27216 (h!54125 (toList!2719 lm!1707))) hash!377))))))

(assert (=> b!4334131 e!2696935))

(declare-fun res!1777291 () Bool)

(assert (=> b!4334131 (=> (not res!1777291) (not e!2696935))))

(assert (=> b!4334131 (= res!1777291 (forall!8928 (toList!2719 lt!1547367) lambda!135266))))

(declare-fun lt!1547368 () tuple2!47844)

(declare-fun +!409 (ListLongMap!1369 tuple2!47844) ListLongMap!1369)

(assert (=> b!4334131 (= lt!1547367 (+!409 lm!1707 lt!1547368))))

(assert (=> b!4334131 (= lt!1547368 (tuple2!47845 hash!377 newBucket!200))))

(declare-fun lt!1547363 () Unit!68300)

(declare-fun addValidProp!22 (ListLongMap!1369 Int (_ BitVec 64) List!48755) Unit!68300)

(assert (=> b!4334131 (= lt!1547363 (addValidProp!22 lm!1707 lambda!135266 hash!377 newBucket!200))))

(assert (=> b!4334131 (forall!8928 (toList!2719 lm!1707) lambda!135266)))

(declare-fun b!4334132 () Bool)

(declare-fun res!1777298 () Bool)

(assert (=> b!4334132 (=> (not res!1777298) (not e!2696931))))

(declare-fun hash!1308 (Hashable!4760 K!9988) (_ BitVec 64))

(assert (=> b!4334132 (= res!1777298 (= (hash!1308 hashF!1247 key!3918) hash!377))))

(declare-fun b!4334133 () Bool)

(declare-fun res!1777299 () Bool)

(assert (=> b!4334133 (=> (not res!1777299) (not e!2696931))))

(declare-fun contains!10668 (ListLongMap!1369 (_ BitVec 64)) Bool)

(assert (=> b!4334133 (= res!1777299 (contains!10668 lm!1707 hash!377))))

(declare-fun b!4334134 () Bool)

(assert (=> b!4334134 (= e!2696935 (or (not (is-Cons!48632 (toList!2719 lm!1707))) (not (= (_1!27216 (h!54125 (toList!2719 lm!1707))) hash!377)) (= lt!1547367 (ListLongMap!1370 (Cons!48632 lt!1547368 (t!355672 (toList!2719 lm!1707)))))))))

(declare-fun b!4334135 () Bool)

(declare-fun tp!1328818 () Bool)

(assert (=> b!4334135 (= e!2696930 tp!1328818)))

(declare-fun b!4334136 () Bool)

(declare-fun res!1777300 () Bool)

(assert (=> b!4334136 (=> (not res!1777300) (not e!2696931))))

(declare-fun contains!10669 (ListMap!1963 K!9988) Bool)

(assert (=> b!4334136 (= res!1777300 (contains!10669 (extractMap!427 (toList!2719 lm!1707)) key!3918))))

(assert (= (and start!417882 res!1777294) b!4334125))

(assert (= (and b!4334125 res!1777292) b!4334132))

(assert (= (and b!4334132 res!1777298) b!4334128))

(assert (= (and b!4334128 res!1777301) b!4334136))

(assert (= (and b!4334136 res!1777300) b!4334133))

(assert (= (and b!4334133 res!1777299) b!4334129))

(assert (= (and b!4334129 (not res!1777295)) b!4334124))

(assert (= (and b!4334124 (not res!1777290)) b!4334131))

(assert (= (and b!4334131 res!1777291) b!4334123))

(assert (= (and b!4334123 res!1777296) b!4334134))

(assert (= (and b!4334131 (not res!1777297)) b!4334126))

(assert (= (and b!4334126 res!1777293) b!4334130))

(assert (= (and start!417882 (is-Cons!48631 newBucket!200)) b!4334127))

(assert (= start!417882 b!4334135))

(declare-fun m!4928515 () Bool)

(assert (=> b!4334126 m!4928515))

(declare-fun m!4928517 () Bool)

(assert (=> b!4334126 m!4928517))

(declare-fun m!4928519 () Bool)

(assert (=> b!4334126 m!4928519))

(declare-fun m!4928521 () Bool)

(assert (=> b!4334126 m!4928521))

(declare-fun m!4928523 () Bool)

(assert (=> b!4334132 m!4928523))

(declare-fun m!4928525 () Bool)

(assert (=> b!4334130 m!4928525))

(declare-fun m!4928527 () Bool)

(assert (=> b!4334128 m!4928527))

(declare-fun m!4928529 () Bool)

(assert (=> b!4334133 m!4928529))

(declare-fun m!4928531 () Bool)

(assert (=> b!4334136 m!4928531))

(assert (=> b!4334136 m!4928531))

(declare-fun m!4928533 () Bool)

(assert (=> b!4334136 m!4928533))

(declare-fun m!4928535 () Bool)

(assert (=> b!4334124 m!4928535))

(declare-fun m!4928537 () Bool)

(assert (=> b!4334131 m!4928537))

(declare-fun m!4928539 () Bool)

(assert (=> b!4334131 m!4928539))

(declare-fun m!4928541 () Bool)

(assert (=> b!4334131 m!4928541))

(declare-fun m!4928543 () Bool)

(assert (=> b!4334131 m!4928543))

(assert (=> start!417882 m!4928543))

(declare-fun m!4928545 () Bool)

(assert (=> start!417882 m!4928545))

(assert (=> b!4334123 m!4928537))

(declare-fun m!4928547 () Bool)

(assert (=> b!4334125 m!4928547))

(declare-fun m!4928549 () Bool)

(assert (=> b!4334129 m!4928549))

(declare-fun m!4928551 () Bool)

(assert (=> b!4334129 m!4928551))

(declare-fun m!4928553 () Bool)

(assert (=> b!4334129 m!4928553))

(declare-fun m!4928555 () Bool)

(assert (=> b!4334129 m!4928555))

(declare-fun m!4928557 () Bool)

(assert (=> b!4334129 m!4928557))

(push 1)

(assert (not b!4334133))

(assert (not b!4334124))

(assert (not b!4334123))

(assert (not b!4334135))

(assert (not start!417882))

(assert tp_is_empty!24709)

(assert tp_is_empty!24711)

(assert (not b!4334126))

(assert (not b!4334125))

(assert (not b!4334136))

(assert (not b!4334127))

(assert (not b!4334130))

(assert (not b!4334132))

(assert (not b!4334129))

(assert (not b!4334128))

(assert (not b!4334131))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1274038 () Bool)

(declare-fun res!1777342 () Bool)

(declare-fun e!2696961 () Bool)

(assert (=> d!1274038 (=> res!1777342 e!2696961)))

(assert (=> d!1274038 (= res!1777342 (is-Nil!48632 (toList!2719 lm!1707)))))

(assert (=> d!1274038 (= (forall!8928 (toList!2719 lm!1707) lambda!135266) e!2696961)))

(declare-fun b!4334183 () Bool)

(declare-fun e!2696962 () Bool)

(assert (=> b!4334183 (= e!2696961 e!2696962)))

(declare-fun res!1777343 () Bool)

(assert (=> b!4334183 (=> (not res!1777343) (not e!2696962))))

(declare-fun dynLambda!20558 (Int tuple2!47844) Bool)

(assert (=> b!4334183 (= res!1777343 (dynLambda!20558 lambda!135266 (h!54125 (toList!2719 lm!1707))))))

(declare-fun b!4334184 () Bool)

(assert (=> b!4334184 (= e!2696962 (forall!8928 (t!355672 (toList!2719 lm!1707)) lambda!135266))))

(assert (= (and d!1274038 (not res!1777342)) b!4334183))

(assert (= (and b!4334183 res!1777343) b!4334184))

(declare-fun b_lambda!128147 () Bool)

(assert (=> (not b_lambda!128147) (not b!4334183)))

(declare-fun m!4928603 () Bool)

(assert (=> b!4334183 m!4928603))

(assert (=> b!4334184 m!4928515))

(assert (=> start!417882 d!1274038))

(declare-fun d!1274040 () Bool)

(declare-fun isStrictlySorted!45 (List!48756) Bool)

(assert (=> d!1274040 (= (inv!64175 lm!1707) (isStrictlySorted!45 (toList!2719 lm!1707)))))

(declare-fun bs!608224 () Bool)

(assert (= bs!608224 d!1274040))

(declare-fun m!4928605 () Bool)

(assert (=> bs!608224 m!4928605))

(assert (=> start!417882 d!1274040))

(declare-fun d!1274042 () Bool)

(assert (=> d!1274042 true))

(assert (=> d!1274042 true))

(declare-fun lambda!135282 () Int)

(declare-fun forall!8930 (List!48755 Int) Bool)

(assert (=> d!1274042 (= (allKeysSameHash!326 newBucket!200 hash!377 hashF!1247) (forall!8930 newBucket!200 lambda!135282))))

(declare-fun bs!608225 () Bool)

(assert (= bs!608225 d!1274042))

(declare-fun m!4928607 () Bool)

(assert (=> bs!608225 m!4928607))

(assert (=> b!4334128 d!1274042))

(declare-fun d!1274044 () Bool)

(declare-datatypes ((Option!10350 0))(
  ( (None!10349) (Some!10349 (v!43071 List!48755)) )
))
(declare-fun get!15776 (Option!10350) List!48755)

(declare-fun getValueByKey!336 (List!48756 (_ BitVec 64)) Option!10350)

(assert (=> d!1274044 (= (apply!11220 lm!1707 hash!377) (get!15776 (getValueByKey!336 (toList!2719 lm!1707) hash!377)))))

(declare-fun bs!608226 () Bool)

(assert (= bs!608226 d!1274044))

(declare-fun m!4928609 () Bool)

(assert (=> bs!608226 m!4928609))

(assert (=> bs!608226 m!4928609))

(declare-fun m!4928611 () Bool)

(assert (=> bs!608226 m!4928611))

(assert (=> b!4334129 d!1274044))

(declare-fun b!4334197 () Bool)

(declare-fun e!2696968 () List!48755)

(assert (=> b!4334197 (= e!2696968 (t!355671 lt!1547365))))

(declare-fun d!1274046 () Bool)

(declare-fun lt!1547401 () List!48755)

(declare-fun containsKey!505 (List!48755 K!9988) Bool)

(assert (=> d!1274046 (not (containsKey!505 lt!1547401 key!3918))))

(assert (=> d!1274046 (= lt!1547401 e!2696968)))

(declare-fun c!737085 () Bool)

(assert (=> d!1274046 (= c!737085 (and (is-Cons!48631 lt!1547365) (= (_1!27215 (h!54124 lt!1547365)) key!3918)))))

(assert (=> d!1274046 (noDuplicateKeys!368 lt!1547365)))

(assert (=> d!1274046 (= (removePairForKey!338 lt!1547365 key!3918) lt!1547401)))

(declare-fun b!4334199 () Bool)

(declare-fun e!2696967 () List!48755)

(assert (=> b!4334199 (= e!2696967 (Cons!48631 (h!54124 lt!1547365) (removePairForKey!338 (t!355671 lt!1547365) key!3918)))))

(declare-fun b!4334200 () Bool)

(assert (=> b!4334200 (= e!2696967 Nil!48631)))

(declare-fun b!4334198 () Bool)

(assert (=> b!4334198 (= e!2696968 e!2696967)))

(declare-fun c!737086 () Bool)

(assert (=> b!4334198 (= c!737086 (is-Cons!48631 lt!1547365))))

(assert (= (and d!1274046 c!737085) b!4334197))

(assert (= (and d!1274046 (not c!737085)) b!4334198))

(assert (= (and b!4334198 c!737086) b!4334199))

(assert (= (and b!4334198 (not c!737086)) b!4334200))

(declare-fun m!4928613 () Bool)

(assert (=> d!1274046 m!4928613))

(declare-fun m!4928615 () Bool)

(assert (=> d!1274046 m!4928615))

(declare-fun m!4928617 () Bool)

(assert (=> b!4334199 m!4928617))

(assert (=> b!4334129 d!1274046))

(declare-fun d!1274050 () Bool)

(declare-fun lt!1547404 () Bool)

(declare-fun content!7595 (List!48756) (Set tuple2!47844))

(assert (=> d!1274050 (= lt!1547404 (set.member lt!1547359 (content!7595 (toList!2719 lm!1707))))))

(declare-fun e!2696979 () Bool)

(assert (=> d!1274050 (= lt!1547404 e!2696979)))

(declare-fun res!1777355 () Bool)

(assert (=> d!1274050 (=> (not res!1777355) (not e!2696979))))

(assert (=> d!1274050 (= res!1777355 (is-Cons!48632 (toList!2719 lm!1707)))))

(assert (=> d!1274050 (= (contains!10667 (toList!2719 lm!1707) lt!1547359) lt!1547404)))

(declare-fun b!4334211 () Bool)

(declare-fun e!2696980 () Bool)

(assert (=> b!4334211 (= e!2696979 e!2696980)))

(declare-fun res!1777354 () Bool)

(assert (=> b!4334211 (=> res!1777354 e!2696980)))

(assert (=> b!4334211 (= res!1777354 (= (h!54125 (toList!2719 lm!1707)) lt!1547359))))

(declare-fun b!4334212 () Bool)

(assert (=> b!4334212 (= e!2696980 (contains!10667 (t!355672 (toList!2719 lm!1707)) lt!1547359))))

(assert (= (and d!1274050 res!1777355) b!4334211))

(assert (= (and b!4334211 (not res!1777354)) b!4334212))

(declare-fun m!4928621 () Bool)

(assert (=> d!1274050 m!4928621))

(declare-fun m!4928625 () Bool)

(assert (=> d!1274050 m!4928625))

(declare-fun m!4928627 () Bool)

(assert (=> b!4334212 m!4928627))

(assert (=> b!4334129 d!1274050))

(declare-fun d!1274056 () Bool)

(assert (=> d!1274056 (dynLambda!20558 lambda!135266 lt!1547359)))

(declare-fun lt!1547407 () Unit!68300)

(declare-fun choose!26511 (List!48756 Int tuple2!47844) Unit!68300)

(assert (=> d!1274056 (= lt!1547407 (choose!26511 (toList!2719 lm!1707) lambda!135266 lt!1547359))))

(declare-fun e!2696983 () Bool)

(assert (=> d!1274056 e!2696983))

(declare-fun res!1777358 () Bool)

(assert (=> d!1274056 (=> (not res!1777358) (not e!2696983))))

(assert (=> d!1274056 (= res!1777358 (forall!8928 (toList!2719 lm!1707) lambda!135266))))

(assert (=> d!1274056 (= (forallContained!1578 (toList!2719 lm!1707) lambda!135266 lt!1547359) lt!1547407)))

(declare-fun b!4334219 () Bool)

(assert (=> b!4334219 (= e!2696983 (contains!10667 (toList!2719 lm!1707) lt!1547359))))

(assert (= (and d!1274056 res!1777358) b!4334219))

(declare-fun b_lambda!128151 () Bool)

(assert (=> (not b_lambda!128151) (not d!1274056)))

(declare-fun m!4928631 () Bool)

(assert (=> d!1274056 m!4928631))

(declare-fun m!4928633 () Bool)

(assert (=> d!1274056 m!4928633))

(assert (=> d!1274056 m!4928543))

(assert (=> b!4334219 m!4928557))

(assert (=> b!4334129 d!1274056))

(declare-fun d!1274060 () Bool)

(assert (=> d!1274060 (contains!10667 (toList!2719 lm!1707) (tuple2!47845 hash!377 lt!1547365))))

(declare-fun lt!1547410 () Unit!68300)

(declare-fun choose!26512 (List!48756 (_ BitVec 64) List!48755) Unit!68300)

(assert (=> d!1274060 (= lt!1547410 (choose!26512 (toList!2719 lm!1707) hash!377 lt!1547365))))

(declare-fun e!2696986 () Bool)

(assert (=> d!1274060 e!2696986))

(declare-fun res!1777361 () Bool)

(assert (=> d!1274060 (=> (not res!1777361) (not e!2696986))))

(assert (=> d!1274060 (= res!1777361 (isStrictlySorted!45 (toList!2719 lm!1707)))))

(assert (=> d!1274060 (= (lemmaGetValueByKeyImpliesContainsTuple!215 (toList!2719 lm!1707) hash!377 lt!1547365) lt!1547410)))

(declare-fun b!4334222 () Bool)

(assert (=> b!4334222 (= e!2696986 (= (getValueByKey!336 (toList!2719 lm!1707) hash!377) (Some!10349 lt!1547365)))))

(assert (= (and d!1274060 res!1777361) b!4334222))

(declare-fun m!4928635 () Bool)

(assert (=> d!1274060 m!4928635))

(declare-fun m!4928637 () Bool)

(assert (=> d!1274060 m!4928637))

(assert (=> d!1274060 m!4928605))

(assert (=> b!4334222 m!4928609))

(assert (=> b!4334129 d!1274060))

(declare-fun bs!608230 () Bool)

(declare-fun b!4334296 () Bool)

(assert (= bs!608230 (and b!4334296 d!1274042)))

(declare-fun lambda!135317 () Int)

(assert (=> bs!608230 (not (= lambda!135317 lambda!135282))))

(assert (=> b!4334296 true))

(declare-fun bs!608231 () Bool)

(declare-fun b!4334294 () Bool)

(assert (= bs!608231 (and b!4334294 d!1274042)))

(declare-fun lambda!135318 () Int)

(assert (=> bs!608231 (not (= lambda!135318 lambda!135282))))

(declare-fun bs!608232 () Bool)

(assert (= bs!608232 (and b!4334294 b!4334296)))

(assert (=> bs!608232 (= lambda!135318 lambda!135317)))

(assert (=> b!4334294 true))

(declare-fun lambda!135319 () Int)

(assert (=> bs!608231 (not (= lambda!135319 lambda!135282))))

(declare-fun lt!1547515 () ListMap!1963)

(assert (=> bs!608232 (= (= lt!1547515 lt!1547361) (= lambda!135319 lambda!135317))))

(assert (=> b!4334294 (= (= lt!1547515 lt!1547361) (= lambda!135319 lambda!135318))))

(assert (=> b!4334294 true))

(declare-fun bs!608233 () Bool)

(declare-fun d!1274062 () Bool)

(assert (= bs!608233 (and d!1274062 d!1274042)))

(declare-fun lambda!135320 () Int)

(assert (=> bs!608233 (not (= lambda!135320 lambda!135282))))

(declare-fun bs!608234 () Bool)

(assert (= bs!608234 (and d!1274062 b!4334296)))

(declare-fun lt!1547514 () ListMap!1963)

(assert (=> bs!608234 (= (= lt!1547514 lt!1547361) (= lambda!135320 lambda!135317))))

(declare-fun bs!608235 () Bool)

(assert (= bs!608235 (and d!1274062 b!4334294)))

(assert (=> bs!608235 (= (= lt!1547514 lt!1547361) (= lambda!135320 lambda!135318))))

(assert (=> bs!608235 (= (= lt!1547514 lt!1547515) (= lambda!135320 lambda!135319))))

(assert (=> d!1274062 true))

(declare-fun b!4334293 () Bool)

(declare-fun e!2697035 () Bool)

(declare-fun invariantList!619 (List!48755) Bool)

(assert (=> b!4334293 (= e!2697035 (invariantList!619 (toList!2720 lt!1547514)))))

(declare-fun e!2697034 () ListMap!1963)

(assert (=> b!4334294 (= e!2697034 lt!1547515)))

(declare-fun lt!1547517 () ListMap!1963)

(declare-fun +!411 (ListMap!1963 tuple2!47842) ListMap!1963)

(assert (=> b!4334294 (= lt!1547517 (+!411 lt!1547361 (h!54124 lt!1547360)))))

(assert (=> b!4334294 (= lt!1547515 (addToMapMapFromBucket!76 (t!355671 lt!1547360) (+!411 lt!1547361 (h!54124 lt!1547360))))))

(declare-fun lt!1547509 () Unit!68300)

(declare-fun call!301182 () Unit!68300)

(assert (=> b!4334294 (= lt!1547509 call!301182)))

(assert (=> b!4334294 (forall!8930 (toList!2720 lt!1547361) lambda!135318)))

(declare-fun lt!1547513 () Unit!68300)

(assert (=> b!4334294 (= lt!1547513 lt!1547509)))

(assert (=> b!4334294 (forall!8930 (toList!2720 lt!1547517) lambda!135319)))

(declare-fun lt!1547507 () Unit!68300)

(declare-fun Unit!68304 () Unit!68300)

(assert (=> b!4334294 (= lt!1547507 Unit!68304)))

(declare-fun call!301181 () Bool)

(assert (=> b!4334294 call!301181))

(declare-fun lt!1547527 () Unit!68300)

(declare-fun Unit!68305 () Unit!68300)

(assert (=> b!4334294 (= lt!1547527 Unit!68305)))

(declare-fun lt!1547510 () Unit!68300)

(declare-fun Unit!68306 () Unit!68300)

(assert (=> b!4334294 (= lt!1547510 Unit!68306)))

(declare-fun lt!1547511 () Unit!68300)

(declare-fun forallContained!1580 (List!48755 Int tuple2!47842) Unit!68300)

(assert (=> b!4334294 (= lt!1547511 (forallContained!1580 (toList!2720 lt!1547517) lambda!135319 (h!54124 lt!1547360)))))

(assert (=> b!4334294 (contains!10669 lt!1547517 (_1!27215 (h!54124 lt!1547360)))))

(declare-fun lt!1547518 () Unit!68300)

(declare-fun Unit!68307 () Unit!68300)

(assert (=> b!4334294 (= lt!1547518 Unit!68307)))

(assert (=> b!4334294 (contains!10669 lt!1547515 (_1!27215 (h!54124 lt!1547360)))))

(declare-fun lt!1547521 () Unit!68300)

(declare-fun Unit!68308 () Unit!68300)

(assert (=> b!4334294 (= lt!1547521 Unit!68308)))

(assert (=> b!4334294 (forall!8930 lt!1547360 lambda!135319)))

(declare-fun lt!1547526 () Unit!68300)

(declare-fun Unit!68310 () Unit!68300)

(assert (=> b!4334294 (= lt!1547526 Unit!68310)))

(assert (=> b!4334294 (forall!8930 (toList!2720 lt!1547517) lambda!135319)))

(declare-fun lt!1547525 () Unit!68300)

(declare-fun Unit!68311 () Unit!68300)

(assert (=> b!4334294 (= lt!1547525 Unit!68311)))

(declare-fun lt!1547516 () Unit!68300)

(declare-fun Unit!68312 () Unit!68300)

(assert (=> b!4334294 (= lt!1547516 Unit!68312)))

(declare-fun lt!1547519 () Unit!68300)

(declare-fun addForallContainsKeyThenBeforeAdding!12 (ListMap!1963 ListMap!1963 K!9988 V!10234) Unit!68300)

(assert (=> b!4334294 (= lt!1547519 (addForallContainsKeyThenBeforeAdding!12 lt!1547361 lt!1547515 (_1!27215 (h!54124 lt!1547360)) (_2!27215 (h!54124 lt!1547360))))))

(assert (=> b!4334294 (forall!8930 (toList!2720 lt!1547361) lambda!135319)))

(declare-fun lt!1547522 () Unit!68300)

(assert (=> b!4334294 (= lt!1547522 lt!1547519)))

(assert (=> b!4334294 (forall!8930 (toList!2720 lt!1547361) lambda!135319)))

(declare-fun lt!1547524 () Unit!68300)

(declare-fun Unit!68313 () Unit!68300)

(assert (=> b!4334294 (= lt!1547524 Unit!68313)))

(declare-fun res!1777397 () Bool)

(declare-fun call!301183 () Bool)

(assert (=> b!4334294 (= res!1777397 call!301183)))

(declare-fun e!2697036 () Bool)

(assert (=> b!4334294 (=> (not res!1777397) (not e!2697036))))

(assert (=> b!4334294 e!2697036))

(declare-fun lt!1547512 () Unit!68300)

(declare-fun Unit!68314 () Unit!68300)

(assert (=> b!4334294 (= lt!1547512 Unit!68314)))

(declare-fun bm!301176 () Bool)

(declare-fun lemmaContainsAllItsOwnKeys!12 (ListMap!1963) Unit!68300)

(assert (=> bm!301176 (= call!301182 (lemmaContainsAllItsOwnKeys!12 lt!1547361))))

(declare-fun bm!301177 () Bool)

(declare-fun c!737104 () Bool)

(assert (=> bm!301177 (= call!301183 (forall!8930 (ite c!737104 (toList!2720 lt!1547361) lt!1547360) (ite c!737104 lambda!135317 lambda!135319)))))

(assert (=> b!4334296 (= e!2697034 lt!1547361)))

(declare-fun lt!1547520 () Unit!68300)

(assert (=> b!4334296 (= lt!1547520 call!301182)))

(assert (=> b!4334296 call!301181))

(declare-fun lt!1547508 () Unit!68300)

(assert (=> b!4334296 (= lt!1547508 lt!1547520)))

(assert (=> b!4334296 call!301183))

(declare-fun lt!1547523 () Unit!68300)

(declare-fun Unit!68315 () Unit!68300)

(assert (=> b!4334296 (= lt!1547523 Unit!68315)))

(declare-fun bm!301178 () Bool)

(assert (=> bm!301178 (= call!301181 (forall!8930 (ite c!737104 (toList!2720 lt!1547361) (t!355671 lt!1547360)) (ite c!737104 lambda!135317 lambda!135319)))))

(declare-fun b!4334297 () Bool)

(declare-fun res!1777398 () Bool)

(assert (=> b!4334297 (=> (not res!1777398) (not e!2697035))))

(assert (=> b!4334297 (= res!1777398 (forall!8930 (toList!2720 lt!1547361) lambda!135320))))

(assert (=> d!1274062 e!2697035))

(declare-fun res!1777399 () Bool)

(assert (=> d!1274062 (=> (not res!1777399) (not e!2697035))))

(assert (=> d!1274062 (= res!1777399 (forall!8930 lt!1547360 lambda!135320))))

(assert (=> d!1274062 (= lt!1547514 e!2697034)))

(assert (=> d!1274062 (= c!737104 (is-Nil!48631 lt!1547360))))

(assert (=> d!1274062 (noDuplicateKeys!368 lt!1547360)))

(assert (=> d!1274062 (= (addToMapMapFromBucket!76 lt!1547360 lt!1547361) lt!1547514)))

(declare-fun b!4334295 () Bool)

(assert (=> b!4334295 (= e!2697036 (forall!8930 (toList!2720 lt!1547361) lambda!135319))))

(assert (= (and d!1274062 c!737104) b!4334296))

(assert (= (and d!1274062 (not c!737104)) b!4334294))

(assert (= (and b!4334294 res!1777397) b!4334295))

(assert (= (or b!4334296 b!4334294) bm!301176))

(assert (= (or b!4334296 b!4334294) bm!301178))

(assert (= (or b!4334296 b!4334294) bm!301177))

(assert (= (and d!1274062 res!1777399) b!4334297))

(assert (= (and b!4334297 res!1777398) b!4334293))

(declare-fun m!4928701 () Bool)

(assert (=> b!4334294 m!4928701))

(declare-fun m!4928703 () Bool)

(assert (=> b!4334294 m!4928703))

(declare-fun m!4928705 () Bool)

(assert (=> b!4334294 m!4928705))

(declare-fun m!4928707 () Bool)

(assert (=> b!4334294 m!4928707))

(assert (=> b!4334294 m!4928705))

(assert (=> b!4334294 m!4928707))

(declare-fun m!4928709 () Bool)

(assert (=> b!4334294 m!4928709))

(declare-fun m!4928711 () Bool)

(assert (=> b!4334294 m!4928711))

(declare-fun m!4928713 () Bool)

(assert (=> b!4334294 m!4928713))

(declare-fun m!4928715 () Bool)

(assert (=> b!4334294 m!4928715))

(declare-fun m!4928717 () Bool)

(assert (=> b!4334294 m!4928717))

(assert (=> b!4334294 m!4928715))

(declare-fun m!4928719 () Bool)

(assert (=> b!4334294 m!4928719))

(declare-fun m!4928721 () Bool)

(assert (=> b!4334297 m!4928721))

(assert (=> b!4334295 m!4928705))

(declare-fun m!4928723 () Bool)

(assert (=> b!4334293 m!4928723))

(declare-fun m!4928725 () Bool)

(assert (=> bm!301178 m!4928725))

(declare-fun m!4928727 () Bool)

(assert (=> bm!301176 m!4928727))

(declare-fun m!4928729 () Bool)

(assert (=> d!1274062 m!4928729))

(declare-fun m!4928731 () Bool)

(assert (=> d!1274062 m!4928731))

(declare-fun m!4928733 () Bool)

(assert (=> bm!301177 m!4928733))

(assert (=> b!4334130 d!1274062))

(declare-fun b!4334318 () Bool)

(declare-datatypes ((List!48759 0))(
  ( (Nil!48635) (Cons!48635 (h!54130 K!9988) (t!355675 List!48759)) )
))
(declare-fun e!2697049 () List!48759)

(declare-fun getKeysList!67 (List!48755) List!48759)

(assert (=> b!4334318 (= e!2697049 (getKeysList!67 (toList!2720 (extractMap!427 (toList!2719 lm!1707)))))))

(declare-fun b!4334319 () Bool)

(declare-fun e!2697053 () Bool)

(declare-fun contains!10673 (List!48759 K!9988) Bool)

(declare-fun keys!16347 (ListMap!1963) List!48759)

(assert (=> b!4334319 (= e!2697053 (contains!10673 (keys!16347 (extractMap!427 (toList!2719 lm!1707))) key!3918))))

(declare-fun b!4334320 () Bool)

(declare-fun e!2697051 () Unit!68300)

(declare-fun lt!1547547 () Unit!68300)

(assert (=> b!4334320 (= e!2697051 lt!1547547)))

(declare-fun lt!1547551 () Unit!68300)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!250 (List!48755 K!9988) Unit!68300)

(assert (=> b!4334320 (= lt!1547551 (lemmaContainsKeyImpliesGetValueByKeyDefined!250 (toList!2720 (extractMap!427 (toList!2719 lm!1707))) key!3918))))

(declare-datatypes ((Option!10352 0))(
  ( (None!10351) (Some!10351 (v!43075 V!10234)) )
))
(declare-fun isDefined!7647 (Option!10352) Bool)

(declare-fun getValueByKey!338 (List!48755 K!9988) Option!10352)

(assert (=> b!4334320 (isDefined!7647 (getValueByKey!338 (toList!2720 (extractMap!427 (toList!2719 lm!1707))) key!3918))))

(declare-fun lt!1547549 () Unit!68300)

(assert (=> b!4334320 (= lt!1547549 lt!1547551)))

(declare-fun lemmaInListThenGetKeysListContains!64 (List!48755 K!9988) Unit!68300)

(assert (=> b!4334320 (= lt!1547547 (lemmaInListThenGetKeysListContains!64 (toList!2720 (extractMap!427 (toList!2719 lm!1707))) key!3918))))

(declare-fun call!301186 () Bool)

(assert (=> b!4334320 call!301186))

(declare-fun b!4334321 () Bool)

(assert (=> b!4334321 false))

(declare-fun lt!1547544 () Unit!68300)

(declare-fun lt!1547550 () Unit!68300)

(assert (=> b!4334321 (= lt!1547544 lt!1547550)))

(declare-fun containsKey!507 (List!48755 K!9988) Bool)

(assert (=> b!4334321 (containsKey!507 (toList!2720 (extractMap!427 (toList!2719 lm!1707))) key!3918)))

(declare-fun lemmaInGetKeysListThenContainsKey!65 (List!48755 K!9988) Unit!68300)

(assert (=> b!4334321 (= lt!1547550 (lemmaInGetKeysListThenContainsKey!65 (toList!2720 (extractMap!427 (toList!2719 lm!1707))) key!3918))))

(declare-fun e!2697050 () Unit!68300)

(declare-fun Unit!68316 () Unit!68300)

(assert (=> b!4334321 (= e!2697050 Unit!68316)))

(declare-fun bm!301181 () Bool)

(assert (=> bm!301181 (= call!301186 (contains!10673 e!2697049 key!3918))))

(declare-fun c!737113 () Bool)

(declare-fun c!737112 () Bool)

(assert (=> bm!301181 (= c!737113 c!737112)))

(declare-fun b!4334322 () Bool)

(declare-fun Unit!68317 () Unit!68300)

(assert (=> b!4334322 (= e!2697050 Unit!68317)))

(declare-fun d!1274078 () Bool)

(declare-fun e!2697054 () Bool)

(assert (=> d!1274078 e!2697054))

(declare-fun res!1777406 () Bool)

(assert (=> d!1274078 (=> res!1777406 e!2697054)))

(declare-fun e!2697052 () Bool)

(assert (=> d!1274078 (= res!1777406 e!2697052)))

(declare-fun res!1777407 () Bool)

(assert (=> d!1274078 (=> (not res!1777407) (not e!2697052))))

(declare-fun lt!1547545 () Bool)

(assert (=> d!1274078 (= res!1777407 (not lt!1547545))))

(declare-fun lt!1547548 () Bool)

(assert (=> d!1274078 (= lt!1547545 lt!1547548)))

(declare-fun lt!1547546 () Unit!68300)

(assert (=> d!1274078 (= lt!1547546 e!2697051)))

(assert (=> d!1274078 (= c!737112 lt!1547548)))

(assert (=> d!1274078 (= lt!1547548 (containsKey!507 (toList!2720 (extractMap!427 (toList!2719 lm!1707))) key!3918))))

(assert (=> d!1274078 (= (contains!10669 (extractMap!427 (toList!2719 lm!1707)) key!3918) lt!1547545)))

(declare-fun b!4334323 () Bool)

(assert (=> b!4334323 (= e!2697052 (not (contains!10673 (keys!16347 (extractMap!427 (toList!2719 lm!1707))) key!3918)))))

(declare-fun b!4334324 () Bool)

(assert (=> b!4334324 (= e!2697054 e!2697053)))

(declare-fun res!1777408 () Bool)

(assert (=> b!4334324 (=> (not res!1777408) (not e!2697053))))

(assert (=> b!4334324 (= res!1777408 (isDefined!7647 (getValueByKey!338 (toList!2720 (extractMap!427 (toList!2719 lm!1707))) key!3918)))))

(declare-fun b!4334325 () Bool)

(assert (=> b!4334325 (= e!2697051 e!2697050)))

(declare-fun c!737111 () Bool)

(assert (=> b!4334325 (= c!737111 call!301186)))

(declare-fun b!4334326 () Bool)

(assert (=> b!4334326 (= e!2697049 (keys!16347 (extractMap!427 (toList!2719 lm!1707))))))

(assert (= (and d!1274078 c!737112) b!4334320))

(assert (= (and d!1274078 (not c!737112)) b!4334325))

(assert (= (and b!4334325 c!737111) b!4334321))

(assert (= (and b!4334325 (not c!737111)) b!4334322))

(assert (= (or b!4334320 b!4334325) bm!301181))

(assert (= (and bm!301181 c!737113) b!4334318))

(assert (= (and bm!301181 (not c!737113)) b!4334326))

(assert (= (and d!1274078 res!1777407) b!4334323))

(assert (= (and d!1274078 (not res!1777406)) b!4334324))

(assert (= (and b!4334324 res!1777408) b!4334319))

(declare-fun m!4928735 () Bool)

(assert (=> b!4334320 m!4928735))

(declare-fun m!4928737 () Bool)

(assert (=> b!4334320 m!4928737))

(assert (=> b!4334320 m!4928737))

(declare-fun m!4928739 () Bool)

(assert (=> b!4334320 m!4928739))

(declare-fun m!4928741 () Bool)

(assert (=> b!4334320 m!4928741))

(assert (=> b!4334324 m!4928737))

(assert (=> b!4334324 m!4928737))

(assert (=> b!4334324 m!4928739))

(assert (=> b!4334323 m!4928531))

(declare-fun m!4928743 () Bool)

(assert (=> b!4334323 m!4928743))

(assert (=> b!4334323 m!4928743))

(declare-fun m!4928745 () Bool)

(assert (=> b!4334323 m!4928745))

(assert (=> b!4334319 m!4928531))

(assert (=> b!4334319 m!4928743))

(assert (=> b!4334319 m!4928743))

(assert (=> b!4334319 m!4928745))

(declare-fun m!4928747 () Bool)

(assert (=> bm!301181 m!4928747))

(declare-fun m!4928749 () Bool)

(assert (=> d!1274078 m!4928749))

(declare-fun m!4928751 () Bool)

(assert (=> b!4334318 m!4928751))

(assert (=> b!4334326 m!4928531))

(assert (=> b!4334326 m!4928743))

(assert (=> b!4334321 m!4928749))

(declare-fun m!4928753 () Bool)

(assert (=> b!4334321 m!4928753))

(assert (=> b!4334136 d!1274078))

(declare-fun bs!608236 () Bool)

(declare-fun d!1274080 () Bool)

(assert (= bs!608236 (and d!1274080 start!417882)))

(declare-fun lambda!135327 () Int)

(assert (=> bs!608236 (= lambda!135327 lambda!135266)))

(declare-fun lt!1547570 () ListMap!1963)

(assert (=> d!1274080 (invariantList!619 (toList!2720 lt!1547570))))

(declare-fun e!2697059 () ListMap!1963)

(assert (=> d!1274080 (= lt!1547570 e!2697059)))

(declare-fun c!737118 () Bool)

(assert (=> d!1274080 (= c!737118 (is-Cons!48632 (toList!2719 lm!1707)))))

(assert (=> d!1274080 (forall!8928 (toList!2719 lm!1707) lambda!135327)))

(assert (=> d!1274080 (= (extractMap!427 (toList!2719 lm!1707)) lt!1547570)))

(declare-fun b!4334335 () Bool)

(assert (=> b!4334335 (= e!2697059 (addToMapMapFromBucket!76 (_2!27216 (h!54125 (toList!2719 lm!1707))) (extractMap!427 (t!355672 (toList!2719 lm!1707)))))))

(declare-fun b!4334336 () Bool)

(assert (=> b!4334336 (= e!2697059 (ListMap!1964 Nil!48631))))

(assert (= (and d!1274080 c!737118) b!4334335))

(assert (= (and d!1274080 (not c!737118)) b!4334336))

(declare-fun m!4928755 () Bool)

(assert (=> d!1274080 m!4928755))

(declare-fun m!4928757 () Bool)

(assert (=> d!1274080 m!4928757))

(assert (=> b!4334335 m!4928521))

(assert (=> b!4334335 m!4928521))

(declare-fun m!4928759 () Bool)

(assert (=> b!4334335 m!4928759))

(assert (=> b!4334136 d!1274080))

(declare-fun bs!608237 () Bool)

(declare-fun d!1274082 () Bool)

(assert (= bs!608237 (and d!1274082 start!417882)))

(declare-fun lambda!135336 () Int)

(assert (=> bs!608237 (not (= lambda!135336 lambda!135266))))

(declare-fun bs!608238 () Bool)

(assert (= bs!608238 (and d!1274082 d!1274080)))

(assert (=> bs!608238 (not (= lambda!135336 lambda!135327))))

(assert (=> d!1274082 true))

(assert (=> d!1274082 (= (allKeysSameHashInMap!472 lm!1707 hashF!1247) (forall!8928 (toList!2719 lm!1707) lambda!135336))))

(declare-fun bs!608239 () Bool)

(assert (= bs!608239 d!1274082))

(declare-fun m!4928761 () Bool)

(assert (=> bs!608239 m!4928761))

(assert (=> b!4334125 d!1274082))

(declare-fun d!1274084 () Bool)

(declare-fun res!1777409 () Bool)

(declare-fun e!2697060 () Bool)

(assert (=> d!1274084 (=> res!1777409 e!2697060)))

(assert (=> d!1274084 (= res!1777409 (is-Nil!48632 (t!355672 (toList!2719 lm!1707))))))

(assert (=> d!1274084 (= (forall!8928 (t!355672 (toList!2719 lm!1707)) lambda!135266) e!2697060)))

(declare-fun b!4334339 () Bool)

(declare-fun e!2697061 () Bool)

(assert (=> b!4334339 (= e!2697060 e!2697061)))

(declare-fun res!1777410 () Bool)

(assert (=> b!4334339 (=> (not res!1777410) (not e!2697061))))

(assert (=> b!4334339 (= res!1777410 (dynLambda!20558 lambda!135266 (h!54125 (t!355672 (toList!2719 lm!1707)))))))

(declare-fun b!4334340 () Bool)

(assert (=> b!4334340 (= e!2697061 (forall!8928 (t!355672 (t!355672 (toList!2719 lm!1707))) lambda!135266))))

(assert (= (and d!1274084 (not res!1777409)) b!4334339))

(assert (= (and b!4334339 res!1777410) b!4334340))

(declare-fun b_lambda!128157 () Bool)

(assert (=> (not b_lambda!128157) (not b!4334339)))

(declare-fun m!4928763 () Bool)

(assert (=> b!4334339 m!4928763))

(declare-fun m!4928765 () Bool)

(assert (=> b!4334340 m!4928765))

(assert (=> b!4334126 d!1274084))

(declare-fun bs!608240 () Bool)

(declare-fun b!4334344 () Bool)

(assert (= bs!608240 (and b!4334344 d!1274062)))

(declare-fun lambda!135341 () Int)

(assert (=> bs!608240 (= (= lt!1547361 lt!1547514) (= lambda!135341 lambda!135320))))

(declare-fun bs!608241 () Bool)

(assert (= bs!608241 (and b!4334344 b!4334294)))

(assert (=> bs!608241 (= (= lt!1547361 lt!1547515) (= lambda!135341 lambda!135319))))

(assert (=> bs!608241 (= lambda!135341 lambda!135318)))

(declare-fun bs!608242 () Bool)

(assert (= bs!608242 (and b!4334344 d!1274042)))

(assert (=> bs!608242 (not (= lambda!135341 lambda!135282))))

(declare-fun bs!608243 () Bool)

(assert (= bs!608243 (and b!4334344 b!4334296)))

(assert (=> bs!608243 (= lambda!135341 lambda!135317)))

(assert (=> b!4334344 true))

(declare-fun bs!608244 () Bool)

(declare-fun b!4334342 () Bool)

(assert (= bs!608244 (and b!4334342 d!1274062)))

(declare-fun lambda!135344 () Int)

(assert (=> bs!608244 (= (= lt!1547361 lt!1547514) (= lambda!135344 lambda!135320))))

(declare-fun bs!608245 () Bool)

(assert (= bs!608245 (and b!4334342 b!4334294)))

(assert (=> bs!608245 (= (= lt!1547361 lt!1547515) (= lambda!135344 lambda!135319))))

(assert (=> bs!608245 (= lambda!135344 lambda!135318)))

(declare-fun bs!608246 () Bool)

(assert (= bs!608246 (and b!4334342 b!4334344)))

(assert (=> bs!608246 (= lambda!135344 lambda!135341)))

(declare-fun bs!608247 () Bool)

(assert (= bs!608247 (and b!4334342 d!1274042)))

(assert (=> bs!608247 (not (= lambda!135344 lambda!135282))))

(declare-fun bs!608248 () Bool)

(assert (= bs!608248 (and b!4334342 b!4334296)))

(assert (=> bs!608248 (= lambda!135344 lambda!135317)))

(assert (=> b!4334342 true))

(declare-fun lambda!135345 () Int)

(declare-fun lt!1547593 () ListMap!1963)

(assert (=> bs!608244 (= (= lt!1547593 lt!1547514) (= lambda!135345 lambda!135320))))

(assert (=> bs!608245 (= (= lt!1547593 lt!1547515) (= lambda!135345 lambda!135319))))

(assert (=> bs!608245 (= (= lt!1547593 lt!1547361) (= lambda!135345 lambda!135318))))

(assert (=> bs!608246 (= (= lt!1547593 lt!1547361) (= lambda!135345 lambda!135341))))

(assert (=> bs!608247 (not (= lambda!135345 lambda!135282))))

(assert (=> b!4334342 (= (= lt!1547593 lt!1547361) (= lambda!135345 lambda!135344))))

(assert (=> bs!608248 (= (= lt!1547593 lt!1547361) (= lambda!135345 lambda!135317))))

(assert (=> b!4334342 true))

(declare-fun bs!608249 () Bool)

(declare-fun d!1274086 () Bool)

(assert (= bs!608249 (and d!1274086 d!1274062)))

(declare-fun lambda!135350 () Int)

(declare-fun lt!1547592 () ListMap!1963)

(assert (=> bs!608249 (= (= lt!1547592 lt!1547514) (= lambda!135350 lambda!135320))))

(declare-fun bs!608250 () Bool)

(assert (= bs!608250 (and d!1274086 b!4334294)))

(assert (=> bs!608250 (= (= lt!1547592 lt!1547361) (= lambda!135350 lambda!135318))))

(declare-fun bs!608251 () Bool)

(assert (= bs!608251 (and d!1274086 b!4334344)))

(assert (=> bs!608251 (= (= lt!1547592 lt!1547361) (= lambda!135350 lambda!135341))))

(declare-fun bs!608252 () Bool)

(assert (= bs!608252 (and d!1274086 d!1274042)))

(assert (=> bs!608252 (not (= lambda!135350 lambda!135282))))

(declare-fun bs!608253 () Bool)

(assert (= bs!608253 (and d!1274086 b!4334342)))

(assert (=> bs!608253 (= (= lt!1547592 lt!1547361) (= lambda!135350 lambda!135344))))

(declare-fun bs!608254 () Bool)

(assert (= bs!608254 (and d!1274086 b!4334296)))

(assert (=> bs!608254 (= (= lt!1547592 lt!1547361) (= lambda!135350 lambda!135317))))

(assert (=> bs!608250 (= (= lt!1547592 lt!1547515) (= lambda!135350 lambda!135319))))

(assert (=> bs!608253 (= (= lt!1547592 lt!1547593) (= lambda!135350 lambda!135345))))

(assert (=> d!1274086 true))

(declare-fun b!4334341 () Bool)

(declare-fun e!2697063 () Bool)

(assert (=> b!4334341 (= e!2697063 (invariantList!619 (toList!2720 lt!1547592)))))

(declare-fun e!2697062 () ListMap!1963)

(assert (=> b!4334342 (= e!2697062 lt!1547593)))

(declare-fun lt!1547595 () ListMap!1963)

(assert (=> b!4334342 (= lt!1547595 (+!411 lt!1547361 (h!54124 newBucket!200)))))

(assert (=> b!4334342 (= lt!1547593 (addToMapMapFromBucket!76 (t!355671 newBucket!200) (+!411 lt!1547361 (h!54124 newBucket!200))))))

(declare-fun lt!1547587 () Unit!68300)

(declare-fun call!301188 () Unit!68300)

(assert (=> b!4334342 (= lt!1547587 call!301188)))

(assert (=> b!4334342 (forall!8930 (toList!2720 lt!1547361) lambda!135344)))

(declare-fun lt!1547591 () Unit!68300)

(assert (=> b!4334342 (= lt!1547591 lt!1547587)))

(assert (=> b!4334342 (forall!8930 (toList!2720 lt!1547595) lambda!135345)))

(declare-fun lt!1547585 () Unit!68300)

(declare-fun Unit!68320 () Unit!68300)

(assert (=> b!4334342 (= lt!1547585 Unit!68320)))

(declare-fun call!301187 () Bool)

(assert (=> b!4334342 call!301187))

(declare-fun lt!1547605 () Unit!68300)

(declare-fun Unit!68321 () Unit!68300)

(assert (=> b!4334342 (= lt!1547605 Unit!68321)))

(declare-fun lt!1547588 () Unit!68300)

(declare-fun Unit!68322 () Unit!68300)

(assert (=> b!4334342 (= lt!1547588 Unit!68322)))

(declare-fun lt!1547589 () Unit!68300)

(assert (=> b!4334342 (= lt!1547589 (forallContained!1580 (toList!2720 lt!1547595) lambda!135345 (h!54124 newBucket!200)))))

(assert (=> b!4334342 (contains!10669 lt!1547595 (_1!27215 (h!54124 newBucket!200)))))

(declare-fun lt!1547596 () Unit!68300)

(declare-fun Unit!68323 () Unit!68300)

(assert (=> b!4334342 (= lt!1547596 Unit!68323)))

(assert (=> b!4334342 (contains!10669 lt!1547593 (_1!27215 (h!54124 newBucket!200)))))

(declare-fun lt!1547599 () Unit!68300)

(declare-fun Unit!68324 () Unit!68300)

(assert (=> b!4334342 (= lt!1547599 Unit!68324)))

(assert (=> b!4334342 (forall!8930 newBucket!200 lambda!135345)))

(declare-fun lt!1547604 () Unit!68300)

(declare-fun Unit!68325 () Unit!68300)

(assert (=> b!4334342 (= lt!1547604 Unit!68325)))

(assert (=> b!4334342 (forall!8930 (toList!2720 lt!1547595) lambda!135345)))

(declare-fun lt!1547603 () Unit!68300)

(declare-fun Unit!68326 () Unit!68300)

(assert (=> b!4334342 (= lt!1547603 Unit!68326)))

(declare-fun lt!1547594 () Unit!68300)

(declare-fun Unit!68327 () Unit!68300)

(assert (=> b!4334342 (= lt!1547594 Unit!68327)))

(declare-fun lt!1547597 () Unit!68300)

(assert (=> b!4334342 (= lt!1547597 (addForallContainsKeyThenBeforeAdding!12 lt!1547361 lt!1547593 (_1!27215 (h!54124 newBucket!200)) (_2!27215 (h!54124 newBucket!200))))))

(assert (=> b!4334342 (forall!8930 (toList!2720 lt!1547361) lambda!135345)))

(declare-fun lt!1547600 () Unit!68300)

(assert (=> b!4334342 (= lt!1547600 lt!1547597)))

(assert (=> b!4334342 (forall!8930 (toList!2720 lt!1547361) lambda!135345)))

(declare-fun lt!1547602 () Unit!68300)

(declare-fun Unit!68328 () Unit!68300)

(assert (=> b!4334342 (= lt!1547602 Unit!68328)))

(declare-fun res!1777411 () Bool)

(declare-fun call!301189 () Bool)

(assert (=> b!4334342 (= res!1777411 call!301189)))

(declare-fun e!2697064 () Bool)

(assert (=> b!4334342 (=> (not res!1777411) (not e!2697064))))

(assert (=> b!4334342 e!2697064))

(declare-fun lt!1547590 () Unit!68300)

(declare-fun Unit!68329 () Unit!68300)

(assert (=> b!4334342 (= lt!1547590 Unit!68329)))

(declare-fun bm!301182 () Bool)

(assert (=> bm!301182 (= call!301188 (lemmaContainsAllItsOwnKeys!12 lt!1547361))))

(declare-fun bm!301183 () Bool)

(declare-fun c!737119 () Bool)

(assert (=> bm!301183 (= call!301189 (forall!8930 (ite c!737119 (toList!2720 lt!1547361) newBucket!200) (ite c!737119 lambda!135341 lambda!135345)))))

(assert (=> b!4334344 (= e!2697062 lt!1547361)))

(declare-fun lt!1547598 () Unit!68300)

(assert (=> b!4334344 (= lt!1547598 call!301188)))

(assert (=> b!4334344 call!301187))

(declare-fun lt!1547586 () Unit!68300)

(assert (=> b!4334344 (= lt!1547586 lt!1547598)))

(assert (=> b!4334344 call!301189))

(declare-fun lt!1547601 () Unit!68300)

(declare-fun Unit!68330 () Unit!68300)

(assert (=> b!4334344 (= lt!1547601 Unit!68330)))

(declare-fun bm!301184 () Bool)

(assert (=> bm!301184 (= call!301187 (forall!8930 (ite c!737119 (toList!2720 lt!1547361) (t!355671 newBucket!200)) (ite c!737119 lambda!135341 lambda!135345)))))

(declare-fun b!4334345 () Bool)

(declare-fun res!1777412 () Bool)

(assert (=> b!4334345 (=> (not res!1777412) (not e!2697063))))

(assert (=> b!4334345 (= res!1777412 (forall!8930 (toList!2720 lt!1547361) lambda!135350))))

(assert (=> d!1274086 e!2697063))

(declare-fun res!1777413 () Bool)

(assert (=> d!1274086 (=> (not res!1777413) (not e!2697063))))

(assert (=> d!1274086 (= res!1777413 (forall!8930 newBucket!200 lambda!135350))))

(assert (=> d!1274086 (= lt!1547592 e!2697062)))

(assert (=> d!1274086 (= c!737119 (is-Nil!48631 newBucket!200))))

(assert (=> d!1274086 (noDuplicateKeys!368 newBucket!200)))

(assert (=> d!1274086 (= (addToMapMapFromBucket!76 newBucket!200 lt!1547361) lt!1547592)))

(declare-fun b!4334343 () Bool)

(assert (=> b!4334343 (= e!2697064 (forall!8930 (toList!2720 lt!1547361) lambda!135345))))

(assert (= (and d!1274086 c!737119) b!4334344))

(assert (= (and d!1274086 (not c!737119)) b!4334342))

(assert (= (and b!4334342 res!1777411) b!4334343))

(assert (= (or b!4334344 b!4334342) bm!301182))

(assert (= (or b!4334344 b!4334342) bm!301184))

(assert (= (or b!4334344 b!4334342) bm!301183))

(assert (= (and d!1274086 res!1777413) b!4334345))

(assert (= (and b!4334345 res!1777412) b!4334341))

(declare-fun m!4928767 () Bool)

(assert (=> b!4334342 m!4928767))

(declare-fun m!4928769 () Bool)

(assert (=> b!4334342 m!4928769))

(declare-fun m!4928771 () Bool)

(assert (=> b!4334342 m!4928771))

(declare-fun m!4928773 () Bool)

(assert (=> b!4334342 m!4928773))

(assert (=> b!4334342 m!4928771))

(assert (=> b!4334342 m!4928773))

(declare-fun m!4928775 () Bool)

(assert (=> b!4334342 m!4928775))

(declare-fun m!4928777 () Bool)

(assert (=> b!4334342 m!4928777))

(declare-fun m!4928779 () Bool)

(assert (=> b!4334342 m!4928779))

(declare-fun m!4928781 () Bool)

(assert (=> b!4334342 m!4928781))

(declare-fun m!4928783 () Bool)

(assert (=> b!4334342 m!4928783))

(assert (=> b!4334342 m!4928781))

(declare-fun m!4928785 () Bool)

(assert (=> b!4334342 m!4928785))

(declare-fun m!4928787 () Bool)

(assert (=> b!4334345 m!4928787))

(assert (=> b!4334343 m!4928771))

(declare-fun m!4928789 () Bool)

(assert (=> b!4334341 m!4928789))

(declare-fun m!4928791 () Bool)

(assert (=> bm!301184 m!4928791))

(assert (=> bm!301182 m!4928727))

(declare-fun m!4928793 () Bool)

(assert (=> d!1274086 m!4928793))

(assert (=> d!1274086 m!4928535))

(declare-fun m!4928795 () Bool)

(assert (=> bm!301183 m!4928795))

(assert (=> b!4334126 d!1274086))

(declare-fun bs!608255 () Bool)

(declare-fun d!1274088 () Bool)

(assert (= bs!608255 (and d!1274088 start!417882)))

(declare-fun lambda!135355 () Int)

(assert (=> bs!608255 (= lambda!135355 lambda!135266)))

(declare-fun bs!608256 () Bool)

(assert (= bs!608256 (and d!1274088 d!1274080)))

(assert (=> bs!608256 (= lambda!135355 lambda!135327)))

(declare-fun bs!608257 () Bool)

(assert (= bs!608257 (and d!1274088 d!1274082)))

(assert (=> bs!608257 (not (= lambda!135355 lambda!135336))))

(declare-fun lt!1547618 () ListMap!1963)

(assert (=> d!1274088 (invariantList!619 (toList!2720 lt!1547618))))

(declare-fun e!2697067 () ListMap!1963)

(assert (=> d!1274088 (= lt!1547618 e!2697067)))

(declare-fun c!737120 () Bool)

(assert (=> d!1274088 (= c!737120 (is-Cons!48632 (toList!2719 lt!1547367)))))

(assert (=> d!1274088 (forall!8928 (toList!2719 lt!1547367) lambda!135355)))

(assert (=> d!1274088 (= (extractMap!427 (toList!2719 lt!1547367)) lt!1547618)))

(declare-fun b!4334348 () Bool)

(assert (=> b!4334348 (= e!2697067 (addToMapMapFromBucket!76 (_2!27216 (h!54125 (toList!2719 lt!1547367))) (extractMap!427 (t!355672 (toList!2719 lt!1547367)))))))

(declare-fun b!4334349 () Bool)

(assert (=> b!4334349 (= e!2697067 (ListMap!1964 Nil!48631))))

(assert (= (and d!1274088 c!737120) b!4334348))

(assert (= (and d!1274088 (not c!737120)) b!4334349))

(declare-fun m!4928797 () Bool)

(assert (=> d!1274088 m!4928797))

(declare-fun m!4928799 () Bool)

(assert (=> d!1274088 m!4928799))

(declare-fun m!4928801 () Bool)

(assert (=> b!4334348 m!4928801))

(assert (=> b!4334348 m!4928801))

(declare-fun m!4928803 () Bool)

(assert (=> b!4334348 m!4928803))

(assert (=> b!4334126 d!1274088))

(declare-fun bs!608258 () Bool)

(declare-fun d!1274090 () Bool)

(assert (= bs!608258 (and d!1274090 start!417882)))

(declare-fun lambda!135358 () Int)

(assert (=> bs!608258 (= lambda!135358 lambda!135266)))

(declare-fun bs!608259 () Bool)

(assert (= bs!608259 (and d!1274090 d!1274080)))

(assert (=> bs!608259 (= lambda!135358 lambda!135327)))

(declare-fun bs!608260 () Bool)

(assert (= bs!608260 (and d!1274090 d!1274082)))

(assert (=> bs!608260 (not (= lambda!135358 lambda!135336))))

(declare-fun bs!608261 () Bool)

(assert (= bs!608261 (and d!1274090 d!1274088)))

(assert (=> bs!608261 (= lambda!135358 lambda!135355)))

(declare-fun lt!1547619 () ListMap!1963)

(assert (=> d!1274090 (invariantList!619 (toList!2720 lt!1547619))))

(declare-fun e!2697070 () ListMap!1963)

(assert (=> d!1274090 (= lt!1547619 e!2697070)))

(declare-fun c!737121 () Bool)

(assert (=> d!1274090 (= c!737121 (is-Cons!48632 (t!355672 (toList!2719 lm!1707))))))

(assert (=> d!1274090 (forall!8928 (t!355672 (toList!2719 lm!1707)) lambda!135358)))

(assert (=> d!1274090 (= (extractMap!427 (t!355672 (toList!2719 lm!1707))) lt!1547619)))

(declare-fun b!4334350 () Bool)

(assert (=> b!4334350 (= e!2697070 (addToMapMapFromBucket!76 (_2!27216 (h!54125 (t!355672 (toList!2719 lm!1707)))) (extractMap!427 (t!355672 (t!355672 (toList!2719 lm!1707))))))))

(declare-fun b!4334351 () Bool)

(assert (=> b!4334351 (= e!2697070 (ListMap!1964 Nil!48631))))

(assert (= (and d!1274090 c!737121) b!4334350))

(assert (= (and d!1274090 (not c!737121)) b!4334351))

(declare-fun m!4928805 () Bool)

(assert (=> d!1274090 m!4928805))

(declare-fun m!4928807 () Bool)

(assert (=> d!1274090 m!4928807))

(declare-fun m!4928809 () Bool)

(assert (=> b!4334350 m!4928809))

(assert (=> b!4334350 m!4928809))

(declare-fun m!4928811 () Bool)

(assert (=> b!4334350 m!4928811))

(assert (=> b!4334126 d!1274090))

(declare-fun d!1274092 () Bool)

(declare-fun e!2697078 () Bool)

(assert (=> d!1274092 e!2697078))

(declare-fun res!1777425 () Bool)

(assert (=> d!1274092 (=> res!1777425 e!2697078)))

(declare-fun lt!1547651 () Bool)

(assert (=> d!1274092 (= res!1777425 (not lt!1547651))))

(declare-fun lt!1547650 () Bool)

(assert (=> d!1274092 (= lt!1547651 lt!1547650)))

(declare-fun lt!1547649 () Unit!68300)

(declare-fun e!2697079 () Unit!68300)

(assert (=> d!1274092 (= lt!1547649 e!2697079)))

(declare-fun c!737125 () Bool)

(assert (=> d!1274092 (= c!737125 lt!1547650)))

(declare-fun containsKey!510 (List!48756 (_ BitVec 64)) Bool)

(assert (=> d!1274092 (= lt!1547650 (containsKey!510 (toList!2719 lm!1707) hash!377))))

(assert (=> d!1274092 (= (contains!10668 lm!1707 hash!377) lt!1547651)))

(declare-fun b!4334367 () Bool)

(declare-fun lt!1547652 () Unit!68300)

(assert (=> b!4334367 (= e!2697079 lt!1547652)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!252 (List!48756 (_ BitVec 64)) Unit!68300)

(assert (=> b!4334367 (= lt!1547652 (lemmaContainsKeyImpliesGetValueByKeyDefined!252 (toList!2719 lm!1707) hash!377))))

(declare-fun isDefined!7649 (Option!10350) Bool)

(assert (=> b!4334367 (isDefined!7649 (getValueByKey!336 (toList!2719 lm!1707) hash!377))))

(declare-fun b!4334368 () Bool)

(declare-fun Unit!68342 () Unit!68300)

(assert (=> b!4334368 (= e!2697079 Unit!68342)))

(declare-fun b!4334369 () Bool)

(assert (=> b!4334369 (= e!2697078 (isDefined!7649 (getValueByKey!336 (toList!2719 lm!1707) hash!377)))))

(assert (= (and d!1274092 c!737125) b!4334367))

(assert (= (and d!1274092 (not c!737125)) b!4334368))

(assert (= (and d!1274092 (not res!1777425)) b!4334369))

(declare-fun m!4928813 () Bool)

(assert (=> d!1274092 m!4928813))

(declare-fun m!4928815 () Bool)

(assert (=> b!4334367 m!4928815))

(assert (=> b!4334367 m!4928609))

(assert (=> b!4334367 m!4928609))

(declare-fun m!4928817 () Bool)

(assert (=> b!4334367 m!4928817))

(assert (=> b!4334369 m!4928609))

(assert (=> b!4334369 m!4928609))

(assert (=> b!4334369 m!4928817))

(assert (=> b!4334133 d!1274092))

(declare-fun d!1274094 () Bool)

(declare-fun res!1777426 () Bool)

(declare-fun e!2697080 () Bool)

(assert (=> d!1274094 (=> res!1777426 e!2697080)))

(assert (=> d!1274094 (= res!1777426 (is-Nil!48632 (toList!2719 lt!1547367)))))

(assert (=> d!1274094 (= (forall!8928 (toList!2719 lt!1547367) lambda!135266) e!2697080)))

(declare-fun b!4334372 () Bool)

(declare-fun e!2697081 () Bool)

(assert (=> b!4334372 (= e!2697080 e!2697081)))

(declare-fun res!1777427 () Bool)

(assert (=> b!4334372 (=> (not res!1777427) (not e!2697081))))

(assert (=> b!4334372 (= res!1777427 (dynLambda!20558 lambda!135266 (h!54125 (toList!2719 lt!1547367))))))

(declare-fun b!4334373 () Bool)

(assert (=> b!4334373 (= e!2697081 (forall!8928 (t!355672 (toList!2719 lt!1547367)) lambda!135266))))

(assert (= (and d!1274094 (not res!1777426)) b!4334372))

(assert (= (and b!4334372 res!1777427) b!4334373))

(declare-fun b_lambda!128159 () Bool)

(assert (=> (not b_lambda!128159) (not b!4334372)))

(declare-fun m!4928819 () Bool)

(assert (=> b!4334372 m!4928819))

(declare-fun m!4928821 () Bool)

(assert (=> b!4334373 m!4928821))

(assert (=> b!4334123 d!1274094))

(declare-fun d!1274096 () Bool)

(declare-fun res!1777432 () Bool)

(declare-fun e!2697086 () Bool)

(assert (=> d!1274096 (=> res!1777432 e!2697086)))

(assert (=> d!1274096 (= res!1777432 (not (is-Cons!48631 newBucket!200)))))

(assert (=> d!1274096 (= (noDuplicateKeys!368 newBucket!200) e!2697086)))

(declare-fun b!4334378 () Bool)

(declare-fun e!2697087 () Bool)

(assert (=> b!4334378 (= e!2697086 e!2697087)))

(declare-fun res!1777433 () Bool)

(assert (=> b!4334378 (=> (not res!1777433) (not e!2697087))))

(assert (=> b!4334378 (= res!1777433 (not (containsKey!505 (t!355671 newBucket!200) (_1!27215 (h!54124 newBucket!200)))))))

(declare-fun b!4334379 () Bool)

(assert (=> b!4334379 (= e!2697087 (noDuplicateKeys!368 (t!355671 newBucket!200)))))

(assert (= (and d!1274096 (not res!1777432)) b!4334378))

(assert (= (and b!4334378 res!1777433) b!4334379))

(declare-fun m!4928823 () Bool)

(assert (=> b!4334378 m!4928823))

(declare-fun m!4928825 () Bool)

(assert (=> b!4334379 m!4928825))

(assert (=> b!4334124 d!1274096))

(assert (=> b!4334131 d!1274094))

(declare-fun d!1274098 () Bool)

(declare-fun e!2697095 () Bool)

(assert (=> d!1274098 e!2697095))

(declare-fun res!1777444 () Bool)

(assert (=> d!1274098 (=> (not res!1777444) (not e!2697095))))

(declare-fun lt!1547682 () ListLongMap!1369)

(assert (=> d!1274098 (= res!1777444 (contains!10668 lt!1547682 (_1!27216 lt!1547368)))))

(declare-fun lt!1547685 () List!48756)

(assert (=> d!1274098 (= lt!1547682 (ListLongMap!1370 lt!1547685))))

(declare-fun lt!1547683 () Unit!68300)

(declare-fun lt!1547684 () Unit!68300)

(assert (=> d!1274098 (= lt!1547683 lt!1547684)))

(assert (=> d!1274098 (= (getValueByKey!336 lt!1547685 (_1!27216 lt!1547368)) (Some!10349 (_2!27216 lt!1547368)))))

(declare-fun lemmaContainsTupThenGetReturnValue!122 (List!48756 (_ BitVec 64) List!48755) Unit!68300)

(assert (=> d!1274098 (= lt!1547684 (lemmaContainsTupThenGetReturnValue!122 lt!1547685 (_1!27216 lt!1547368) (_2!27216 lt!1547368)))))

(declare-fun insertStrictlySorted!77 (List!48756 (_ BitVec 64) List!48755) List!48756)

(assert (=> d!1274098 (= lt!1547685 (insertStrictlySorted!77 (toList!2719 lm!1707) (_1!27216 lt!1547368) (_2!27216 lt!1547368)))))

(assert (=> d!1274098 (= (+!409 lm!1707 lt!1547368) lt!1547682)))

(declare-fun b!4334391 () Bool)

(declare-fun res!1777443 () Bool)

(assert (=> b!4334391 (=> (not res!1777443) (not e!2697095))))

(assert (=> b!4334391 (= res!1777443 (= (getValueByKey!336 (toList!2719 lt!1547682) (_1!27216 lt!1547368)) (Some!10349 (_2!27216 lt!1547368))))))

(declare-fun b!4334392 () Bool)

(assert (=> b!4334392 (= e!2697095 (contains!10667 (toList!2719 lt!1547682) lt!1547368))))

(assert (= (and d!1274098 res!1777444) b!4334391))

(assert (= (and b!4334391 res!1777443) b!4334392))

(declare-fun m!4928865 () Bool)

(assert (=> d!1274098 m!4928865))

(declare-fun m!4928869 () Bool)

(assert (=> d!1274098 m!4928869))

(declare-fun m!4928871 () Bool)

(assert (=> d!1274098 m!4928871))

(declare-fun m!4928877 () Bool)

(assert (=> d!1274098 m!4928877))

(declare-fun m!4928879 () Bool)

(assert (=> b!4334391 m!4928879))

(declare-fun m!4928883 () Bool)

(assert (=> b!4334392 m!4928883))

(assert (=> b!4334131 d!1274098))

(declare-fun d!1274104 () Bool)

(assert (=> d!1274104 (forall!8928 (toList!2719 (+!409 lm!1707 (tuple2!47845 hash!377 newBucket!200))) lambda!135266)))

(declare-fun lt!1547690 () Unit!68300)

(declare-fun choose!26514 (ListLongMap!1369 Int (_ BitVec 64) List!48755) Unit!68300)

(assert (=> d!1274104 (= lt!1547690 (choose!26514 lm!1707 lambda!135266 hash!377 newBucket!200))))

(declare-fun e!2697100 () Bool)

(assert (=> d!1274104 e!2697100))

(declare-fun res!1777447 () Bool)

(assert (=> d!1274104 (=> (not res!1777447) (not e!2697100))))

(assert (=> d!1274104 (= res!1777447 (forall!8928 (toList!2719 lm!1707) lambda!135266))))

(assert (=> d!1274104 (= (addValidProp!22 lm!1707 lambda!135266 hash!377 newBucket!200) lt!1547690)))

(declare-fun b!4334402 () Bool)

(assert (=> b!4334402 (= e!2697100 (dynLambda!20558 lambda!135266 (tuple2!47845 hash!377 newBucket!200)))))

(assert (= (and d!1274104 res!1777447) b!4334402))

(declare-fun b_lambda!128163 () Bool)

(assert (=> (not b_lambda!128163) (not b!4334402)))

(declare-fun m!4928927 () Bool)

(assert (=> d!1274104 m!4928927))

(declare-fun m!4928929 () Bool)

(assert (=> d!1274104 m!4928929))

(declare-fun m!4928931 () Bool)

(assert (=> d!1274104 m!4928931))

(assert (=> d!1274104 m!4928543))

(declare-fun m!4928933 () Bool)

(assert (=> b!4334402 m!4928933))

(assert (=> b!4334131 d!1274104))

(assert (=> b!4334131 d!1274038))

(declare-fun d!1274116 () Bool)

(declare-fun hash!1310 (Hashable!4760 K!9988) (_ BitVec 64))

(assert (=> d!1274116 (= (hash!1308 hashF!1247 key!3918) (hash!1310 hashF!1247 key!3918))))

(declare-fun bs!608294 () Bool)

(assert (= bs!608294 d!1274116))

(declare-fun m!4928935 () Bool)

(assert (=> bs!608294 m!4928935))

(assert (=> b!4334132 d!1274116))

(declare-fun b!4334407 () Bool)

(declare-fun e!2697103 () Bool)

(declare-fun tp!1328829 () Bool)

(declare-fun tp!1328830 () Bool)

(assert (=> b!4334407 (= e!2697103 (and tp!1328829 tp!1328830))))

(assert (=> b!4334135 (= tp!1328818 e!2697103)))

(assert (= (and b!4334135 (is-Cons!48632 (toList!2719 lm!1707))) b!4334407))

(declare-fun tp!1328833 () Bool)

(declare-fun b!4334420 () Bool)

(declare-fun e!2697109 () Bool)

(assert (=> b!4334420 (= e!2697109 (and tp_is_empty!24709 tp_is_empty!24711 tp!1328833))))

(assert (=> b!4334127 (= tp!1328817 e!2697109)))

(assert (= (and b!4334127 (is-Cons!48631 (t!355671 newBucket!200))) b!4334420))

(declare-fun b_lambda!128165 () Bool)

(assert (= b_lambda!128151 (or start!417882 b_lambda!128165)))

(declare-fun bs!608295 () Bool)

(declare-fun d!1274118 () Bool)

(assert (= bs!608295 (and d!1274118 start!417882)))

(assert (=> bs!608295 (= (dynLambda!20558 lambda!135266 lt!1547359) (noDuplicateKeys!368 (_2!27216 lt!1547359)))))

(declare-fun m!4928937 () Bool)

(assert (=> bs!608295 m!4928937))

(assert (=> d!1274056 d!1274118))

(declare-fun b_lambda!128167 () Bool)

(assert (= b_lambda!128163 (or start!417882 b_lambda!128167)))

(declare-fun bs!608296 () Bool)

(declare-fun d!1274120 () Bool)

(assert (= bs!608296 (and d!1274120 start!417882)))

(assert (=> bs!608296 (= (dynLambda!20558 lambda!135266 (tuple2!47845 hash!377 newBucket!200)) (noDuplicateKeys!368 (_2!27216 (tuple2!47845 hash!377 newBucket!200))))))

(declare-fun m!4928939 () Bool)

(assert (=> bs!608296 m!4928939))

(assert (=> b!4334402 d!1274120))

(declare-fun b_lambda!128169 () Bool)

(assert (= b_lambda!128147 (or start!417882 b_lambda!128169)))

(declare-fun bs!608297 () Bool)

(declare-fun d!1274122 () Bool)

(assert (= bs!608297 (and d!1274122 start!417882)))

(assert (=> bs!608297 (= (dynLambda!20558 lambda!135266 (h!54125 (toList!2719 lm!1707))) (noDuplicateKeys!368 (_2!27216 (h!54125 (toList!2719 lm!1707)))))))

(declare-fun m!4928941 () Bool)

(assert (=> bs!608297 m!4928941))

(assert (=> b!4334183 d!1274122))

(declare-fun b_lambda!128171 () Bool)

(assert (= b_lambda!128157 (or start!417882 b_lambda!128171)))

(declare-fun bs!608298 () Bool)

(declare-fun d!1274124 () Bool)

(assert (= bs!608298 (and d!1274124 start!417882)))

(assert (=> bs!608298 (= (dynLambda!20558 lambda!135266 (h!54125 (t!355672 (toList!2719 lm!1707)))) (noDuplicateKeys!368 (_2!27216 (h!54125 (t!355672 (toList!2719 lm!1707))))))))

(declare-fun m!4928943 () Bool)

(assert (=> bs!608298 m!4928943))

(assert (=> b!4334339 d!1274124))

(declare-fun b_lambda!128173 () Bool)

(assert (= b_lambda!128159 (or start!417882 b_lambda!128173)))

(declare-fun bs!608299 () Bool)

(declare-fun d!1274126 () Bool)

(assert (= bs!608299 (and d!1274126 start!417882)))

(assert (=> bs!608299 (= (dynLambda!20558 lambda!135266 (h!54125 (toList!2719 lt!1547367))) (noDuplicateKeys!368 (_2!27216 (h!54125 (toList!2719 lt!1547367)))))))

(declare-fun m!4928945 () Bool)

(assert (=> bs!608299 m!4928945))

(assert (=> b!4334372 d!1274126))

(push 1)

(assert (not d!1274046))

(assert (not b_lambda!128171))

(assert (not b!4334367))

(assert (not d!1274088))

(assert (not b!4334212))

(assert (not b!4334294))

(assert (not b!4334320))

(assert (not d!1274062))

(assert (not d!1274040))

(assert (not d!1274056))

(assert (not b_lambda!128167))

(assert (not b!4334293))

(assert (not b!4334324))

(assert (not b!4334345))

(assert (not b!4334378))

(assert (not d!1274078))

(assert (not b!4334326))

(assert (not d!1274098))

(assert (not d!1274082))

(assert (not bm!301184))

(assert (not b!4334184))

(assert (not bm!301183))

(assert (not d!1274116))

(assert (not b!4334391))

(assert (not bm!301181))

(assert (not d!1274104))

(assert (not bm!301178))

(assert (not b!4334319))

(assert (not b_lambda!128165))

(assert (not d!1274060))

(assert (not b!4334295))

(assert (not b!4334297))

(assert (not b!4334199))

(assert (not b!4334350))

(assert (not d!1274050))

(assert (not bm!301182))

(assert (not b!4334335))

(assert (not b!4334343))

(assert (not d!1274044))

(assert (not b_lambda!128169))

(assert (not b!4334379))

(assert (not bm!301177))

(assert (not bs!608296))

(assert (not d!1274090))

(assert (not d!1274086))

(assert (not b!4334321))

(assert (not bs!608295))

(assert (not b!4334420))

(assert (not bs!608297))

(assert (not b!4334340))

(assert (not d!1274092))

(assert (not b!4334369))

(assert (not b!4334219))

(assert tp_is_empty!24709)

(assert tp_is_empty!24711)

(assert (not b!4334392))

(assert (not b!4334222))

(assert (not bs!608298))

(assert (not b!4334341))

(assert (not d!1274042))

(assert (not d!1274080))

(assert (not bs!608299))

(assert (not b!4334348))

(assert (not b_lambda!128173))

(assert (not b!4334342))

(assert (not b!4334373))

(assert (not b!4334407))

(assert (not b!4334323))

(assert (not b!4334318))

(assert (not bm!301176))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


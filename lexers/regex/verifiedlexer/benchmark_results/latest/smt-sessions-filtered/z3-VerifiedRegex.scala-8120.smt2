; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!418036 () Bool)

(assert start!418036)

(declare-fun b!4334965 () Bool)

(declare-fun e!2697434 () Bool)

(declare-datatypes ((V!10251 0))(
  ( (V!10252 (val!16275 Int)) )
))
(declare-datatypes ((K!10005 0))(
  ( (K!10006 (val!16276 Int)) )
))
(declare-datatypes ((tuple2!47870 0))(
  ( (tuple2!47871 (_1!27229 K!10005) (_2!27229 V!10251)) )
))
(declare-datatypes ((List!48773 0))(
  ( (Nil!48649) (Cons!48649 (h!54146 tuple2!47870) (t!355689 List!48773)) )
))
(declare-datatypes ((tuple2!47872 0))(
  ( (tuple2!47873 (_1!27230 (_ BitVec 64)) (_2!27230 List!48773)) )
))
(declare-datatypes ((List!48774 0))(
  ( (Nil!48650) (Cons!48650 (h!54147 tuple2!47872) (t!355690 List!48774)) )
))
(declare-datatypes ((ListLongMap!1383 0))(
  ( (ListLongMap!1384 (toList!2733 List!48774)) )
))
(declare-fun lm!1707 () ListLongMap!1383)

(declare-fun lambda!135537 () Int)

(declare-fun forall!8939 (List!48774 Int) Bool)

(assert (=> b!4334965 (= e!2697434 (forall!8939 (t!355690 (toList!2733 lm!1707)) lambda!135537))))

(declare-fun e!2697435 () Bool)

(assert (=> b!4334965 e!2697435))

(declare-fun res!1777800 () Bool)

(assert (=> b!4334965 (=> (not res!1777800) (not e!2697435))))

(declare-datatypes ((ListMap!1977 0))(
  ( (ListMap!1978 (toList!2734 List!48773)) )
))
(declare-fun lt!1548246 () ListMap!1977)

(declare-fun lt!1548235 () ListMap!1977)

(assert (=> b!4334965 (= res!1777800 (= lt!1548246 lt!1548235))))

(declare-fun lt!1548241 () List!48773)

(declare-fun lt!1548242 () ListMap!1977)

(declare-fun addToMapMapFromBucket!83 (List!48773 ListMap!1977) ListMap!1977)

(assert (=> b!4334965 (= lt!1548235 (addToMapMapFromBucket!83 lt!1548241 lt!1548242))))

(declare-fun newBucket!200 () List!48773)

(assert (=> b!4334965 (= lt!1548246 (addToMapMapFromBucket!83 newBucket!200 lt!1548242))))

(declare-fun lt!1548243 () ListLongMap!1383)

(declare-fun extractMap!434 (List!48774) ListMap!1977)

(assert (=> b!4334965 (= lt!1548246 (extractMap!434 (toList!2733 lt!1548243)))))

(assert (=> b!4334965 (= lt!1548242 (extractMap!434 (t!355690 (toList!2733 lm!1707))))))

(declare-fun b!4334966 () Bool)

(declare-fun lt!1548237 () List!48773)

(declare-fun lt!1548245 () tuple2!47870)

(declare-fun +!421 (ListMap!1977 tuple2!47870) ListMap!1977)

(assert (=> b!4334966 (= e!2697435 (= lt!1548235 (addToMapMapFromBucket!83 lt!1548237 (+!421 lt!1548242 lt!1548245))))))

(declare-fun b!4334967 () Bool)

(declare-fun res!1777802 () Bool)

(declare-fun e!2697431 () Bool)

(assert (=> b!4334967 (=> (not res!1777802) (not e!2697431))))

(declare-fun key!3918 () K!10005)

(declare-fun contains!10694 (ListMap!1977 K!10005) Bool)

(assert (=> b!4334967 (= res!1777802 (contains!10694 (extractMap!434 (toList!2733 lm!1707)) key!3918))))

(declare-fun b!4334968 () Bool)

(declare-fun e!2697433 () Bool)

(declare-fun tp!1328895 () Bool)

(assert (=> b!4334968 (= e!2697433 tp!1328895)))

(declare-fun e!2697436 () Bool)

(declare-fun hash!377 () (_ BitVec 64))

(declare-fun lt!1548240 () tuple2!47872)

(declare-fun b!4334969 () Bool)

(get-info :version)

(assert (=> b!4334969 (= e!2697436 (or (not ((_ is Cons!48650) (toList!2733 lm!1707))) (not (= (_1!27230 (h!54147 (toList!2733 lm!1707))) hash!377)) (= lt!1548243 (ListLongMap!1384 (Cons!48650 lt!1548240 (t!355690 (toList!2733 lm!1707)))))))))

(declare-fun b!4334970 () Bool)

(declare-fun res!1777809 () Bool)

(assert (=> b!4334970 (=> (not res!1777809) (not e!2697431))))

(declare-datatypes ((Hashable!4767 0))(
  ( (HashableExt!4766 (__x!30470 Int)) )
))
(declare-fun hashF!1247 () Hashable!4767)

(declare-fun allKeysSameHashInMap!479 (ListLongMap!1383 Hashable!4767) Bool)

(assert (=> b!4334970 (= res!1777809 (allKeysSameHashInMap!479 lm!1707 hashF!1247))))

(declare-fun b!4334971 () Bool)

(declare-fun e!2697432 () Bool)

(assert (=> b!4334971 (= e!2697431 (not e!2697432))))

(declare-fun res!1777807 () Bool)

(assert (=> b!4334971 (=> res!1777807 e!2697432)))

(assert (=> b!4334971 (= res!1777807 (not (= newBucket!200 lt!1548241)))))

(assert (=> b!4334971 (= lt!1548241 (Cons!48649 lt!1548245 lt!1548237))))

(declare-fun lt!1548236 () List!48773)

(declare-fun removePairForKey!345 (List!48773 K!10005) List!48773)

(assert (=> b!4334971 (= lt!1548237 (removePairForKey!345 lt!1548236 key!3918))))

(declare-fun newValue!99 () V!10251)

(assert (=> b!4334971 (= lt!1548245 (tuple2!47871 key!3918 newValue!99))))

(declare-datatypes ((Unit!68403 0))(
  ( (Unit!68404) )
))
(declare-fun lt!1548234 () Unit!68403)

(declare-fun lt!1548244 () tuple2!47872)

(declare-fun forallContained!1589 (List!48774 Int tuple2!47872) Unit!68403)

(assert (=> b!4334971 (= lt!1548234 (forallContained!1589 (toList!2733 lm!1707) lambda!135537 lt!1548244))))

(declare-fun contains!10695 (List!48774 tuple2!47872) Bool)

(assert (=> b!4334971 (contains!10695 (toList!2733 lm!1707) lt!1548244)))

(assert (=> b!4334971 (= lt!1548244 (tuple2!47873 hash!377 lt!1548236))))

(declare-fun lt!1548238 () Unit!68403)

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!222 (List!48774 (_ BitVec 64) List!48773) Unit!68403)

(assert (=> b!4334971 (= lt!1548238 (lemmaGetValueByKeyImpliesContainsTuple!222 (toList!2733 lm!1707) hash!377 lt!1548236))))

(declare-fun apply!11227 (ListLongMap!1383 (_ BitVec 64)) List!48773)

(assert (=> b!4334971 (= lt!1548236 (apply!11227 lm!1707 hash!377))))

(declare-fun b!4334972 () Bool)

(assert (=> b!4334972 (= e!2697432 e!2697434)))

(declare-fun res!1777803 () Bool)

(assert (=> b!4334972 (=> res!1777803 e!2697434)))

(assert (=> b!4334972 (= res!1777803 (or (not ((_ is Cons!48650) (toList!2733 lm!1707))) (not (= (_1!27230 (h!54147 (toList!2733 lm!1707))) hash!377))))))

(assert (=> b!4334972 e!2697436))

(declare-fun res!1777808 () Bool)

(assert (=> b!4334972 (=> (not res!1777808) (not e!2697436))))

(assert (=> b!4334972 (= res!1777808 (forall!8939 (toList!2733 lt!1548243) lambda!135537))))

(declare-fun +!422 (ListLongMap!1383 tuple2!47872) ListLongMap!1383)

(assert (=> b!4334972 (= lt!1548243 (+!422 lm!1707 lt!1548240))))

(assert (=> b!4334972 (= lt!1548240 (tuple2!47873 hash!377 newBucket!200))))

(declare-fun lt!1548239 () Unit!68403)

(declare-fun addValidProp!29 (ListLongMap!1383 Int (_ BitVec 64) List!48773) Unit!68403)

(assert (=> b!4334972 (= lt!1548239 (addValidProp!29 lm!1707 lambda!135537 hash!377 newBucket!200))))

(assert (=> b!4334972 (forall!8939 (toList!2733 lm!1707) lambda!135537)))

(declare-fun res!1777805 () Bool)

(assert (=> start!418036 (=> (not res!1777805) (not e!2697431))))

(assert (=> start!418036 (= res!1777805 (forall!8939 (toList!2733 lm!1707) lambda!135537))))

(assert (=> start!418036 e!2697431))

(declare-fun e!2697430 () Bool)

(assert (=> start!418036 e!2697430))

(assert (=> start!418036 true))

(declare-fun inv!64191 (ListLongMap!1383) Bool)

(assert (=> start!418036 (and (inv!64191 lm!1707) e!2697433)))

(declare-fun tp_is_empty!24737 () Bool)

(assert (=> start!418036 tp_is_empty!24737))

(declare-fun tp_is_empty!24739 () Bool)

(assert (=> start!418036 tp_is_empty!24739))

(declare-fun b!4334973 () Bool)

(declare-fun res!1777804 () Bool)

(assert (=> b!4334973 (=> res!1777804 e!2697432)))

(declare-fun noDuplicateKeys!375 (List!48773) Bool)

(assert (=> b!4334973 (= res!1777804 (not (noDuplicateKeys!375 newBucket!200)))))

(declare-fun b!4334974 () Bool)

(declare-fun res!1777798 () Bool)

(assert (=> b!4334974 (=> (not res!1777798) (not e!2697431))))

(declare-fun contains!10696 (ListLongMap!1383 (_ BitVec 64)) Bool)

(assert (=> b!4334974 (= res!1777798 (contains!10696 lm!1707 hash!377))))

(declare-fun b!4334975 () Bool)

(declare-fun res!1777801 () Bool)

(assert (=> b!4334975 (=> (not res!1777801) (not e!2697436))))

(assert (=> b!4334975 (= res!1777801 (forall!8939 (toList!2733 lt!1548243) lambda!135537))))

(declare-fun tp!1328896 () Bool)

(declare-fun b!4334976 () Bool)

(assert (=> b!4334976 (= e!2697430 (and tp_is_empty!24737 tp_is_empty!24739 tp!1328896))))

(declare-fun b!4334977 () Bool)

(declare-fun res!1777799 () Bool)

(assert (=> b!4334977 (=> (not res!1777799) (not e!2697431))))

(declare-fun hash!1318 (Hashable!4767 K!10005) (_ BitVec 64))

(assert (=> b!4334977 (= res!1777799 (= (hash!1318 hashF!1247 key!3918) hash!377))))

(declare-fun b!4334978 () Bool)

(declare-fun res!1777806 () Bool)

(assert (=> b!4334978 (=> (not res!1777806) (not e!2697431))))

(declare-fun allKeysSameHash!333 (List!48773 (_ BitVec 64) Hashable!4767) Bool)

(assert (=> b!4334978 (= res!1777806 (allKeysSameHash!333 newBucket!200 hash!377 hashF!1247))))

(assert (= (and start!418036 res!1777805) b!4334970))

(assert (= (and b!4334970 res!1777809) b!4334977))

(assert (= (and b!4334977 res!1777799) b!4334978))

(assert (= (and b!4334978 res!1777806) b!4334967))

(assert (= (and b!4334967 res!1777802) b!4334974))

(assert (= (and b!4334974 res!1777798) b!4334971))

(assert (= (and b!4334971 (not res!1777807)) b!4334973))

(assert (= (and b!4334973 (not res!1777804)) b!4334972))

(assert (= (and b!4334972 res!1777808) b!4334975))

(assert (= (and b!4334975 res!1777801) b!4334969))

(assert (= (and b!4334972 (not res!1777803)) b!4334965))

(assert (= (and b!4334965 res!1777800) b!4334966))

(assert (= (and start!418036 ((_ is Cons!48649) newBucket!200)) b!4334976))

(assert (= start!418036 b!4334968))

(declare-fun m!4929611 () Bool)

(assert (=> b!4334966 m!4929611))

(assert (=> b!4334966 m!4929611))

(declare-fun m!4929613 () Bool)

(assert (=> b!4334966 m!4929613))

(declare-fun m!4929615 () Bool)

(assert (=> b!4334970 m!4929615))

(declare-fun m!4929617 () Bool)

(assert (=> b!4334965 m!4929617))

(declare-fun m!4929619 () Bool)

(assert (=> b!4334965 m!4929619))

(declare-fun m!4929621 () Bool)

(assert (=> b!4334965 m!4929621))

(declare-fun m!4929623 () Bool)

(assert (=> b!4334965 m!4929623))

(declare-fun m!4929625 () Bool)

(assert (=> b!4334965 m!4929625))

(declare-fun m!4929627 () Bool)

(assert (=> start!418036 m!4929627))

(declare-fun m!4929629 () Bool)

(assert (=> start!418036 m!4929629))

(declare-fun m!4929631 () Bool)

(assert (=> b!4334972 m!4929631))

(declare-fun m!4929633 () Bool)

(assert (=> b!4334972 m!4929633))

(declare-fun m!4929635 () Bool)

(assert (=> b!4334972 m!4929635))

(assert (=> b!4334972 m!4929627))

(declare-fun m!4929637 () Bool)

(assert (=> b!4334971 m!4929637))

(declare-fun m!4929639 () Bool)

(assert (=> b!4334971 m!4929639))

(declare-fun m!4929641 () Bool)

(assert (=> b!4334971 m!4929641))

(declare-fun m!4929643 () Bool)

(assert (=> b!4334971 m!4929643))

(declare-fun m!4929645 () Bool)

(assert (=> b!4334971 m!4929645))

(declare-fun m!4929647 () Bool)

(assert (=> b!4334978 m!4929647))

(declare-fun m!4929649 () Bool)

(assert (=> b!4334974 m!4929649))

(declare-fun m!4929651 () Bool)

(assert (=> b!4334967 m!4929651))

(assert (=> b!4334967 m!4929651))

(declare-fun m!4929653 () Bool)

(assert (=> b!4334967 m!4929653))

(declare-fun m!4929655 () Bool)

(assert (=> b!4334977 m!4929655))

(declare-fun m!4929657 () Bool)

(assert (=> b!4334973 m!4929657))

(assert (=> b!4334975 m!4929631))

(check-sat (not b!4334978) (not b!4334975) tp_is_empty!24737 (not start!418036) (not b!4334968) (not b!4334976) (not b!4334974) (not b!4334967) (not b!4334965) (not b!4334971) (not b!4334972) (not b!4334970) tp_is_empty!24739 (not b!4334966) (not b!4334977) (not b!4334973))
(check-sat)
(get-model)

(declare-fun bs!608392 () Bool)

(declare-fun d!1274261 () Bool)

(assert (= bs!608392 (and d!1274261 start!418036)))

(declare-fun lambda!135540 () Int)

(assert (=> bs!608392 (not (= lambda!135540 lambda!135537))))

(assert (=> d!1274261 true))

(assert (=> d!1274261 (= (allKeysSameHashInMap!479 lm!1707 hashF!1247) (forall!8939 (toList!2733 lm!1707) lambda!135540))))

(declare-fun bs!608393 () Bool)

(assert (= bs!608393 d!1274261))

(declare-fun m!4929667 () Bool)

(assert (=> bs!608393 m!4929667))

(assert (=> b!4334970 d!1274261))

(declare-fun d!1274263 () Bool)

(declare-fun res!1777817 () Bool)

(declare-fun e!2697447 () Bool)

(assert (=> d!1274263 (=> res!1777817 e!2697447)))

(assert (=> d!1274263 (= res!1777817 ((_ is Nil!48650) (toList!2733 lt!1548243)))))

(assert (=> d!1274263 (= (forall!8939 (toList!2733 lt!1548243) lambda!135537) e!2697447)))

(declare-fun b!4334994 () Bool)

(declare-fun e!2697448 () Bool)

(assert (=> b!4334994 (= e!2697447 e!2697448)))

(declare-fun res!1777818 () Bool)

(assert (=> b!4334994 (=> (not res!1777818) (not e!2697448))))

(declare-fun dynLambda!20562 (Int tuple2!47872) Bool)

(assert (=> b!4334994 (= res!1777818 (dynLambda!20562 lambda!135537 (h!54147 (toList!2733 lt!1548243))))))

(declare-fun b!4334995 () Bool)

(assert (=> b!4334995 (= e!2697448 (forall!8939 (t!355690 (toList!2733 lt!1548243)) lambda!135537))))

(assert (= (and d!1274263 (not res!1777817)) b!4334994))

(assert (= (and b!4334994 res!1777818) b!4334995))

(declare-fun b_lambda!128219 () Bool)

(assert (=> (not b_lambda!128219) (not b!4334994)))

(declare-fun m!4929669 () Bool)

(assert (=> b!4334994 m!4929669))

(declare-fun m!4929671 () Bool)

(assert (=> b!4334995 m!4929671))

(assert (=> b!4334972 d!1274263))

(declare-fun d!1274265 () Bool)

(declare-fun e!2697472 () Bool)

(assert (=> d!1274265 e!2697472))

(declare-fun res!1777832 () Bool)

(assert (=> d!1274265 (=> (not res!1777832) (not e!2697472))))

(declare-fun lt!1548294 () ListLongMap!1383)

(assert (=> d!1274265 (= res!1777832 (contains!10696 lt!1548294 (_1!27230 lt!1548240)))))

(declare-fun lt!1548295 () List!48774)

(assert (=> d!1274265 (= lt!1548294 (ListLongMap!1384 lt!1548295))))

(declare-fun lt!1548297 () Unit!68403)

(declare-fun lt!1548296 () Unit!68403)

(assert (=> d!1274265 (= lt!1548297 lt!1548296)))

(declare-datatypes ((Option!10360 0))(
  ( (None!10359) (Some!10359 (v!43091 List!48773)) )
))
(declare-fun getValueByKey!346 (List!48774 (_ BitVec 64)) Option!10360)

(assert (=> d!1274265 (= (getValueByKey!346 lt!1548295 (_1!27230 lt!1548240)) (Some!10359 (_2!27230 lt!1548240)))))

(declare-fun lemmaContainsTupThenGetReturnValue!128 (List!48774 (_ BitVec 64) List!48773) Unit!68403)

(assert (=> d!1274265 (= lt!1548296 (lemmaContainsTupThenGetReturnValue!128 lt!1548295 (_1!27230 lt!1548240) (_2!27230 lt!1548240)))))

(declare-fun insertStrictlySorted!80 (List!48774 (_ BitVec 64) List!48773) List!48774)

(assert (=> d!1274265 (= lt!1548295 (insertStrictlySorted!80 (toList!2733 lm!1707) (_1!27230 lt!1548240) (_2!27230 lt!1548240)))))

(assert (=> d!1274265 (= (+!422 lm!1707 lt!1548240) lt!1548294)))

(declare-fun b!4335033 () Bool)

(declare-fun res!1777833 () Bool)

(assert (=> b!4335033 (=> (not res!1777833) (not e!2697472))))

(assert (=> b!4335033 (= res!1777833 (= (getValueByKey!346 (toList!2733 lt!1548294) (_1!27230 lt!1548240)) (Some!10359 (_2!27230 lt!1548240))))))

(declare-fun b!4335034 () Bool)

(assert (=> b!4335034 (= e!2697472 (contains!10695 (toList!2733 lt!1548294) lt!1548240))))

(assert (= (and d!1274265 res!1777832) b!4335033))

(assert (= (and b!4335033 res!1777833) b!4335034))

(declare-fun m!4929699 () Bool)

(assert (=> d!1274265 m!4929699))

(declare-fun m!4929701 () Bool)

(assert (=> d!1274265 m!4929701))

(declare-fun m!4929703 () Bool)

(assert (=> d!1274265 m!4929703))

(declare-fun m!4929705 () Bool)

(assert (=> d!1274265 m!4929705))

(declare-fun m!4929707 () Bool)

(assert (=> b!4335033 m!4929707))

(declare-fun m!4929709 () Bool)

(assert (=> b!4335034 m!4929709))

(assert (=> b!4334972 d!1274265))

(declare-fun d!1274271 () Bool)

(assert (=> d!1274271 (forall!8939 (toList!2733 (+!422 lm!1707 (tuple2!47873 hash!377 newBucket!200))) lambda!135537)))

(declare-fun lt!1548300 () Unit!68403)

(declare-fun choose!26523 (ListLongMap!1383 Int (_ BitVec 64) List!48773) Unit!68403)

(assert (=> d!1274271 (= lt!1548300 (choose!26523 lm!1707 lambda!135537 hash!377 newBucket!200))))

(declare-fun e!2697475 () Bool)

(assert (=> d!1274271 e!2697475))

(declare-fun res!1777836 () Bool)

(assert (=> d!1274271 (=> (not res!1777836) (not e!2697475))))

(assert (=> d!1274271 (= res!1777836 (forall!8939 (toList!2733 lm!1707) lambda!135537))))

(assert (=> d!1274271 (= (addValidProp!29 lm!1707 lambda!135537 hash!377 newBucket!200) lt!1548300)))

(declare-fun b!4335038 () Bool)

(assert (=> b!4335038 (= e!2697475 (dynLambda!20562 lambda!135537 (tuple2!47873 hash!377 newBucket!200)))))

(assert (= (and d!1274271 res!1777836) b!4335038))

(declare-fun b_lambda!128221 () Bool)

(assert (=> (not b_lambda!128221) (not b!4335038)))

(declare-fun m!4929711 () Bool)

(assert (=> d!1274271 m!4929711))

(declare-fun m!4929713 () Bool)

(assert (=> d!1274271 m!4929713))

(declare-fun m!4929715 () Bool)

(assert (=> d!1274271 m!4929715))

(assert (=> d!1274271 m!4929627))

(declare-fun m!4929717 () Bool)

(assert (=> b!4335038 m!4929717))

(assert (=> b!4334972 d!1274271))

(declare-fun d!1274273 () Bool)

(declare-fun res!1777837 () Bool)

(declare-fun e!2697476 () Bool)

(assert (=> d!1274273 (=> res!1777837 e!2697476)))

(assert (=> d!1274273 (= res!1777837 ((_ is Nil!48650) (toList!2733 lm!1707)))))

(assert (=> d!1274273 (= (forall!8939 (toList!2733 lm!1707) lambda!135537) e!2697476)))

(declare-fun b!4335039 () Bool)

(declare-fun e!2697477 () Bool)

(assert (=> b!4335039 (= e!2697476 e!2697477)))

(declare-fun res!1777838 () Bool)

(assert (=> b!4335039 (=> (not res!1777838) (not e!2697477))))

(assert (=> b!4335039 (= res!1777838 (dynLambda!20562 lambda!135537 (h!54147 (toList!2733 lm!1707))))))

(declare-fun b!4335040 () Bool)

(assert (=> b!4335040 (= e!2697477 (forall!8939 (t!355690 (toList!2733 lm!1707)) lambda!135537))))

(assert (= (and d!1274273 (not res!1777837)) b!4335039))

(assert (= (and b!4335039 res!1777838) b!4335040))

(declare-fun b_lambda!128223 () Bool)

(assert (=> (not b_lambda!128223) (not b!4335039)))

(declare-fun m!4929719 () Bool)

(assert (=> b!4335039 m!4929719))

(assert (=> b!4335040 m!4929621))

(assert (=> b!4334972 d!1274273))

(assert (=> start!418036 d!1274273))

(declare-fun d!1274275 () Bool)

(declare-fun isStrictlySorted!49 (List!48774) Bool)

(assert (=> d!1274275 (= (inv!64191 lm!1707) (isStrictlySorted!49 (toList!2733 lm!1707)))))

(declare-fun bs!608395 () Bool)

(assert (= bs!608395 d!1274275))

(declare-fun m!4929721 () Bool)

(assert (=> bs!608395 m!4929721))

(assert (=> start!418036 d!1274275))

(declare-fun d!1274277 () Bool)

(declare-fun get!15783 (Option!10360) List!48773)

(assert (=> d!1274277 (= (apply!11227 lm!1707 hash!377) (get!15783 (getValueByKey!346 (toList!2733 lm!1707) hash!377)))))

(declare-fun bs!608396 () Bool)

(assert (= bs!608396 d!1274277))

(declare-fun m!4929723 () Bool)

(assert (=> bs!608396 m!4929723))

(assert (=> bs!608396 m!4929723))

(declare-fun m!4929725 () Bool)

(assert (=> bs!608396 m!4929725))

(assert (=> b!4334971 d!1274277))

(declare-fun d!1274279 () Bool)

(assert (=> d!1274279 (dynLambda!20562 lambda!135537 lt!1548244)))

(declare-fun lt!1548303 () Unit!68403)

(declare-fun choose!26524 (List!48774 Int tuple2!47872) Unit!68403)

(assert (=> d!1274279 (= lt!1548303 (choose!26524 (toList!2733 lm!1707) lambda!135537 lt!1548244))))

(declare-fun e!2697480 () Bool)

(assert (=> d!1274279 e!2697480))

(declare-fun res!1777841 () Bool)

(assert (=> d!1274279 (=> (not res!1777841) (not e!2697480))))

(assert (=> d!1274279 (= res!1777841 (forall!8939 (toList!2733 lm!1707) lambda!135537))))

(assert (=> d!1274279 (= (forallContained!1589 (toList!2733 lm!1707) lambda!135537 lt!1548244) lt!1548303)))

(declare-fun b!4335043 () Bool)

(assert (=> b!4335043 (= e!2697480 (contains!10695 (toList!2733 lm!1707) lt!1548244))))

(assert (= (and d!1274279 res!1777841) b!4335043))

(declare-fun b_lambda!128225 () Bool)

(assert (=> (not b_lambda!128225) (not d!1274279)))

(declare-fun m!4929727 () Bool)

(assert (=> d!1274279 m!4929727))

(declare-fun m!4929729 () Bool)

(assert (=> d!1274279 m!4929729))

(assert (=> d!1274279 m!4929627))

(assert (=> b!4335043 m!4929639))

(assert (=> b!4334971 d!1274279))

(declare-fun d!1274281 () Bool)

(declare-fun lt!1548306 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!7599 (List!48774) (InoxSet tuple2!47872))

(assert (=> d!1274281 (= lt!1548306 (select (content!7599 (toList!2733 lm!1707)) lt!1548244))))

(declare-fun e!2697486 () Bool)

(assert (=> d!1274281 (= lt!1548306 e!2697486)))

(declare-fun res!1777847 () Bool)

(assert (=> d!1274281 (=> (not res!1777847) (not e!2697486))))

(assert (=> d!1274281 (= res!1777847 ((_ is Cons!48650) (toList!2733 lm!1707)))))

(assert (=> d!1274281 (= (contains!10695 (toList!2733 lm!1707) lt!1548244) lt!1548306)))

(declare-fun b!4335048 () Bool)

(declare-fun e!2697485 () Bool)

(assert (=> b!4335048 (= e!2697486 e!2697485)))

(declare-fun res!1777846 () Bool)

(assert (=> b!4335048 (=> res!1777846 e!2697485)))

(assert (=> b!4335048 (= res!1777846 (= (h!54147 (toList!2733 lm!1707)) lt!1548244))))

(declare-fun b!4335049 () Bool)

(assert (=> b!4335049 (= e!2697485 (contains!10695 (t!355690 (toList!2733 lm!1707)) lt!1548244))))

(assert (= (and d!1274281 res!1777847) b!4335048))

(assert (= (and b!4335048 (not res!1777846)) b!4335049))

(declare-fun m!4929731 () Bool)

(assert (=> d!1274281 m!4929731))

(declare-fun m!4929733 () Bool)

(assert (=> d!1274281 m!4929733))

(declare-fun m!4929735 () Bool)

(assert (=> b!4335049 m!4929735))

(assert (=> b!4334971 d!1274281))

(declare-fun b!4335059 () Bool)

(declare-fun e!2697492 () List!48773)

(declare-fun e!2697491 () List!48773)

(assert (=> b!4335059 (= e!2697492 e!2697491)))

(declare-fun c!737209 () Bool)

(assert (=> b!4335059 (= c!737209 ((_ is Cons!48649) lt!1548236))))

(declare-fun b!4335058 () Bool)

(assert (=> b!4335058 (= e!2697492 (t!355689 lt!1548236))))

(declare-fun b!4335060 () Bool)

(assert (=> b!4335060 (= e!2697491 (Cons!48649 (h!54146 lt!1548236) (removePairForKey!345 (t!355689 lt!1548236) key!3918)))))

(declare-fun b!4335061 () Bool)

(assert (=> b!4335061 (= e!2697491 Nil!48649)))

(declare-fun d!1274283 () Bool)

(declare-fun lt!1548309 () List!48773)

(declare-fun containsKey!519 (List!48773 K!10005) Bool)

(assert (=> d!1274283 (not (containsKey!519 lt!1548309 key!3918))))

(assert (=> d!1274283 (= lt!1548309 e!2697492)))

(declare-fun c!737208 () Bool)

(assert (=> d!1274283 (= c!737208 (and ((_ is Cons!48649) lt!1548236) (= (_1!27229 (h!54146 lt!1548236)) key!3918)))))

(assert (=> d!1274283 (noDuplicateKeys!375 lt!1548236)))

(assert (=> d!1274283 (= (removePairForKey!345 lt!1548236 key!3918) lt!1548309)))

(assert (= (and d!1274283 c!737208) b!4335058))

(assert (= (and d!1274283 (not c!737208)) b!4335059))

(assert (= (and b!4335059 c!737209) b!4335060))

(assert (= (and b!4335059 (not c!737209)) b!4335061))

(declare-fun m!4929737 () Bool)

(assert (=> b!4335060 m!4929737))

(declare-fun m!4929739 () Bool)

(assert (=> d!1274283 m!4929739))

(declare-fun m!4929741 () Bool)

(assert (=> d!1274283 m!4929741))

(assert (=> b!4334971 d!1274283))

(declare-fun d!1274285 () Bool)

(assert (=> d!1274285 (contains!10695 (toList!2733 lm!1707) (tuple2!47873 hash!377 lt!1548236))))

(declare-fun lt!1548312 () Unit!68403)

(declare-fun choose!26525 (List!48774 (_ BitVec 64) List!48773) Unit!68403)

(assert (=> d!1274285 (= lt!1548312 (choose!26525 (toList!2733 lm!1707) hash!377 lt!1548236))))

(declare-fun e!2697495 () Bool)

(assert (=> d!1274285 e!2697495))

(declare-fun res!1777850 () Bool)

(assert (=> d!1274285 (=> (not res!1777850) (not e!2697495))))

(assert (=> d!1274285 (= res!1777850 (isStrictlySorted!49 (toList!2733 lm!1707)))))

(assert (=> d!1274285 (= (lemmaGetValueByKeyImpliesContainsTuple!222 (toList!2733 lm!1707) hash!377 lt!1548236) lt!1548312)))

(declare-fun b!4335064 () Bool)

(assert (=> b!4335064 (= e!2697495 (= (getValueByKey!346 (toList!2733 lm!1707) hash!377) (Some!10359 lt!1548236)))))

(assert (= (and d!1274285 res!1777850) b!4335064))

(declare-fun m!4929743 () Bool)

(assert (=> d!1274285 m!4929743))

(declare-fun m!4929745 () Bool)

(assert (=> d!1274285 m!4929745))

(assert (=> d!1274285 m!4929721))

(assert (=> b!4335064 m!4929723))

(assert (=> b!4334971 d!1274285))

(declare-fun d!1274287 () Bool)

(declare-fun res!1777855 () Bool)

(declare-fun e!2697500 () Bool)

(assert (=> d!1274287 (=> res!1777855 e!2697500)))

(assert (=> d!1274287 (= res!1777855 (not ((_ is Cons!48649) newBucket!200)))))

(assert (=> d!1274287 (= (noDuplicateKeys!375 newBucket!200) e!2697500)))

(declare-fun b!4335069 () Bool)

(declare-fun e!2697501 () Bool)

(assert (=> b!4335069 (= e!2697500 e!2697501)))

(declare-fun res!1777856 () Bool)

(assert (=> b!4335069 (=> (not res!1777856) (not e!2697501))))

(assert (=> b!4335069 (= res!1777856 (not (containsKey!519 (t!355689 newBucket!200) (_1!27229 (h!54146 newBucket!200)))))))

(declare-fun b!4335070 () Bool)

(assert (=> b!4335070 (= e!2697501 (noDuplicateKeys!375 (t!355689 newBucket!200)))))

(assert (= (and d!1274287 (not res!1777855)) b!4335069))

(assert (= (and b!4335069 res!1777856) b!4335070))

(declare-fun m!4929747 () Bool)

(assert (=> b!4335069 m!4929747))

(declare-fun m!4929749 () Bool)

(assert (=> b!4335070 m!4929749))

(assert (=> b!4334973 d!1274287))

(declare-fun d!1274289 () Bool)

(declare-fun e!2697506 () Bool)

(assert (=> d!1274289 e!2697506))

(declare-fun res!1777859 () Bool)

(assert (=> d!1274289 (=> res!1777859 e!2697506)))

(declare-fun lt!1548321 () Bool)

(assert (=> d!1274289 (= res!1777859 (not lt!1548321))))

(declare-fun lt!1548322 () Bool)

(assert (=> d!1274289 (= lt!1548321 lt!1548322)))

(declare-fun lt!1548324 () Unit!68403)

(declare-fun e!2697507 () Unit!68403)

(assert (=> d!1274289 (= lt!1548324 e!2697507)))

(declare-fun c!737212 () Bool)

(assert (=> d!1274289 (= c!737212 lt!1548322)))

(declare-fun containsKey!520 (List!48774 (_ BitVec 64)) Bool)

(assert (=> d!1274289 (= lt!1548322 (containsKey!520 (toList!2733 lm!1707) hash!377))))

(assert (=> d!1274289 (= (contains!10696 lm!1707 hash!377) lt!1548321)))

(declare-fun b!4335077 () Bool)

(declare-fun lt!1548323 () Unit!68403)

(assert (=> b!4335077 (= e!2697507 lt!1548323)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!259 (List!48774 (_ BitVec 64)) Unit!68403)

(assert (=> b!4335077 (= lt!1548323 (lemmaContainsKeyImpliesGetValueByKeyDefined!259 (toList!2733 lm!1707) hash!377))))

(declare-fun isDefined!7656 (Option!10360) Bool)

(assert (=> b!4335077 (isDefined!7656 (getValueByKey!346 (toList!2733 lm!1707) hash!377))))

(declare-fun b!4335078 () Bool)

(declare-fun Unit!68441 () Unit!68403)

(assert (=> b!4335078 (= e!2697507 Unit!68441)))

(declare-fun b!4335079 () Bool)

(assert (=> b!4335079 (= e!2697506 (isDefined!7656 (getValueByKey!346 (toList!2733 lm!1707) hash!377)))))

(assert (= (and d!1274289 c!737212) b!4335077))

(assert (= (and d!1274289 (not c!737212)) b!4335078))

(assert (= (and d!1274289 (not res!1777859)) b!4335079))

(declare-fun m!4929751 () Bool)

(assert (=> d!1274289 m!4929751))

(declare-fun m!4929753 () Bool)

(assert (=> b!4335077 m!4929753))

(assert (=> b!4335077 m!4929723))

(assert (=> b!4335077 m!4929723))

(declare-fun m!4929755 () Bool)

(assert (=> b!4335077 m!4929755))

(assert (=> b!4335079 m!4929723))

(assert (=> b!4335079 m!4929723))

(assert (=> b!4335079 m!4929755))

(assert (=> b!4334974 d!1274289))

(declare-fun bs!608397 () Bool)

(declare-fun d!1274291 () Bool)

(assert (= bs!608397 (and d!1274291 start!418036)))

(declare-fun lambda!135574 () Int)

(assert (=> bs!608397 (= lambda!135574 lambda!135537)))

(declare-fun bs!608398 () Bool)

(assert (= bs!608398 (and d!1274291 d!1274261)))

(assert (=> bs!608398 (not (= lambda!135574 lambda!135540))))

(declare-fun lt!1548369 () ListMap!1977)

(declare-fun invariantList!624 (List!48773) Bool)

(assert (=> d!1274291 (invariantList!624 (toList!2734 lt!1548369))))

(declare-fun e!2697516 () ListMap!1977)

(assert (=> d!1274291 (= lt!1548369 e!2697516)))

(declare-fun c!737217 () Bool)

(assert (=> d!1274291 (= c!737217 ((_ is Cons!48650) (toList!2733 lt!1548243)))))

(assert (=> d!1274291 (forall!8939 (toList!2733 lt!1548243) lambda!135574)))

(assert (=> d!1274291 (= (extractMap!434 (toList!2733 lt!1548243)) lt!1548369)))

(declare-fun b!4335094 () Bool)

(assert (=> b!4335094 (= e!2697516 (addToMapMapFromBucket!83 (_2!27230 (h!54147 (toList!2733 lt!1548243))) (extractMap!434 (t!355690 (toList!2733 lt!1548243)))))))

(declare-fun b!4335095 () Bool)

(assert (=> b!4335095 (= e!2697516 (ListMap!1978 Nil!48649))))

(assert (= (and d!1274291 c!737217) b!4335094))

(assert (= (and d!1274291 (not c!737217)) b!4335095))

(declare-fun m!4929757 () Bool)

(assert (=> d!1274291 m!4929757))

(declare-fun m!4929759 () Bool)

(assert (=> d!1274291 m!4929759))

(declare-fun m!4929761 () Bool)

(assert (=> b!4335094 m!4929761))

(assert (=> b!4335094 m!4929761))

(declare-fun m!4929763 () Bool)

(assert (=> b!4335094 m!4929763))

(assert (=> b!4334965 d!1274291))

(declare-fun b!4335201 () Bool)

(assert (=> b!4335201 true))

(declare-fun bs!608463 () Bool)

(declare-fun b!4335199 () Bool)

(assert (= bs!608463 (and b!4335199 b!4335201)))

(declare-fun lambda!135624 () Int)

(declare-fun lambda!135623 () Int)

(assert (=> bs!608463 (= lambda!135624 lambda!135623)))

(assert (=> b!4335199 true))

(declare-fun lambda!135625 () Int)

(declare-fun lt!1548520 () ListMap!1977)

(assert (=> bs!608463 (= (= lt!1548520 lt!1548242) (= lambda!135625 lambda!135623))))

(assert (=> b!4335199 (= (= lt!1548520 lt!1548242) (= lambda!135625 lambda!135624))))

(assert (=> b!4335199 true))

(declare-fun bs!608464 () Bool)

(declare-fun d!1274293 () Bool)

(assert (= bs!608464 (and d!1274293 b!4335201)))

(declare-fun lambda!135626 () Int)

(declare-fun lt!1548521 () ListMap!1977)

(assert (=> bs!608464 (= (= lt!1548521 lt!1548242) (= lambda!135626 lambda!135623))))

(declare-fun bs!608465 () Bool)

(assert (= bs!608465 (and d!1274293 b!4335199)))

(assert (=> bs!608465 (= (= lt!1548521 lt!1548242) (= lambda!135626 lambda!135624))))

(assert (=> bs!608465 (= (= lt!1548521 lt!1548520) (= lambda!135626 lambda!135625))))

(assert (=> d!1274293 true))

(declare-fun e!2697583 () ListMap!1977)

(assert (=> b!4335199 (= e!2697583 lt!1548520)))

(declare-fun lt!1548522 () ListMap!1977)

(assert (=> b!4335199 (= lt!1548522 (+!421 lt!1548242 (h!54146 lt!1548241)))))

(assert (=> b!4335199 (= lt!1548520 (addToMapMapFromBucket!83 (t!355689 lt!1548241) (+!421 lt!1548242 (h!54146 lt!1548241))))))

(declare-fun lt!1548517 () Unit!68403)

(declare-fun call!301258 () Unit!68403)

(assert (=> b!4335199 (= lt!1548517 call!301258)))

(declare-fun forall!8941 (List!48773 Int) Bool)

(assert (=> b!4335199 (forall!8941 (toList!2734 lt!1548242) lambda!135624)))

(declare-fun lt!1548523 () Unit!68403)

(assert (=> b!4335199 (= lt!1548523 lt!1548517)))

(declare-fun call!301256 () Bool)

(assert (=> b!4335199 call!301256))

(declare-fun lt!1548531 () Unit!68403)

(declare-fun Unit!68442 () Unit!68403)

(assert (=> b!4335199 (= lt!1548531 Unit!68442)))

(assert (=> b!4335199 (forall!8941 (t!355689 lt!1548241) lambda!135625)))

(declare-fun lt!1548529 () Unit!68403)

(declare-fun Unit!68443 () Unit!68403)

(assert (=> b!4335199 (= lt!1548529 Unit!68443)))

(declare-fun lt!1548534 () Unit!68403)

(declare-fun Unit!68444 () Unit!68403)

(assert (=> b!4335199 (= lt!1548534 Unit!68444)))

(declare-fun lt!1548516 () Unit!68403)

(declare-fun forallContained!1591 (List!48773 Int tuple2!47870) Unit!68403)

(assert (=> b!4335199 (= lt!1548516 (forallContained!1591 (toList!2734 lt!1548522) lambda!135625 (h!54146 lt!1548241)))))

(assert (=> b!4335199 (contains!10694 lt!1548522 (_1!27229 (h!54146 lt!1548241)))))

(declare-fun lt!1548524 () Unit!68403)

(declare-fun Unit!68445 () Unit!68403)

(assert (=> b!4335199 (= lt!1548524 Unit!68445)))

(assert (=> b!4335199 (contains!10694 lt!1548520 (_1!27229 (h!54146 lt!1548241)))))

(declare-fun lt!1548528 () Unit!68403)

(declare-fun Unit!68446 () Unit!68403)

(assert (=> b!4335199 (= lt!1548528 Unit!68446)))

(assert (=> b!4335199 (forall!8941 lt!1548241 lambda!135625)))

(declare-fun lt!1548527 () Unit!68403)

(declare-fun Unit!68447 () Unit!68403)

(assert (=> b!4335199 (= lt!1548527 Unit!68447)))

(assert (=> b!4335199 (forall!8941 (toList!2734 lt!1548522) lambda!135625)))

(declare-fun lt!1548518 () Unit!68403)

(declare-fun Unit!68448 () Unit!68403)

(assert (=> b!4335199 (= lt!1548518 Unit!68448)))

(declare-fun lt!1548533 () Unit!68403)

(declare-fun Unit!68449 () Unit!68403)

(assert (=> b!4335199 (= lt!1548533 Unit!68449)))

(declare-fun lt!1548519 () Unit!68403)

(declare-fun addForallContainsKeyThenBeforeAdding!17 (ListMap!1977 ListMap!1977 K!10005 V!10251) Unit!68403)

(assert (=> b!4335199 (= lt!1548519 (addForallContainsKeyThenBeforeAdding!17 lt!1548242 lt!1548520 (_1!27229 (h!54146 lt!1548241)) (_2!27229 (h!54146 lt!1548241))))))

(assert (=> b!4335199 (forall!8941 (toList!2734 lt!1548242) lambda!135625)))

(declare-fun lt!1548526 () Unit!68403)

(assert (=> b!4335199 (= lt!1548526 lt!1548519)))

(assert (=> b!4335199 (forall!8941 (toList!2734 lt!1548242) lambda!135625)))

(declare-fun lt!1548536 () Unit!68403)

(declare-fun Unit!68450 () Unit!68403)

(assert (=> b!4335199 (= lt!1548536 Unit!68450)))

(declare-fun res!1777926 () Bool)

(assert (=> b!4335199 (= res!1777926 (forall!8941 lt!1548241 lambda!135625))))

(declare-fun e!2697584 () Bool)

(assert (=> b!4335199 (=> (not res!1777926) (not e!2697584))))

(assert (=> b!4335199 e!2697584))

(declare-fun lt!1548525 () Unit!68403)

(declare-fun Unit!68451 () Unit!68403)

(assert (=> b!4335199 (= lt!1548525 Unit!68451)))

(declare-fun b!4335200 () Bool)

(declare-fun e!2697585 () Bool)

(assert (=> b!4335200 (= e!2697585 (invariantList!624 (toList!2734 lt!1548521)))))

(assert (=> b!4335201 (= e!2697583 lt!1548242)))

(declare-fun lt!1548532 () Unit!68403)

(assert (=> b!4335201 (= lt!1548532 call!301258)))

(assert (=> b!4335201 call!301256))

(declare-fun lt!1548530 () Unit!68403)

(assert (=> b!4335201 (= lt!1548530 lt!1548532)))

(declare-fun call!301257 () Bool)

(assert (=> b!4335201 call!301257))

(declare-fun lt!1548535 () Unit!68403)

(declare-fun Unit!68452 () Unit!68403)

(assert (=> b!4335201 (= lt!1548535 Unit!68452)))

(declare-fun b!4335202 () Bool)

(declare-fun res!1777925 () Bool)

(assert (=> b!4335202 (=> (not res!1777925) (not e!2697585))))

(assert (=> b!4335202 (= res!1777925 (forall!8941 (toList!2734 lt!1548242) lambda!135626))))

(declare-fun b!4335203 () Bool)

(assert (=> b!4335203 (= e!2697584 call!301257)))

(assert (=> d!1274293 e!2697585))

(declare-fun res!1777924 () Bool)

(assert (=> d!1274293 (=> (not res!1777924) (not e!2697585))))

(assert (=> d!1274293 (= res!1777924 (forall!8941 lt!1548241 lambda!135626))))

(assert (=> d!1274293 (= lt!1548521 e!2697583)))

(declare-fun c!737231 () Bool)

(assert (=> d!1274293 (= c!737231 ((_ is Nil!48649) lt!1548241))))

(assert (=> d!1274293 (noDuplicateKeys!375 lt!1548241)))

(assert (=> d!1274293 (= (addToMapMapFromBucket!83 lt!1548241 lt!1548242) lt!1548521)))

(declare-fun bm!301251 () Bool)

(declare-fun lemmaContainsAllItsOwnKeys!17 (ListMap!1977) Unit!68403)

(assert (=> bm!301251 (= call!301258 (lemmaContainsAllItsOwnKeys!17 lt!1548242))))

(declare-fun bm!301252 () Bool)

(assert (=> bm!301252 (= call!301256 (forall!8941 (ite c!737231 (toList!2734 lt!1548242) (toList!2734 lt!1548522)) (ite c!737231 lambda!135623 lambda!135625)))))

(declare-fun bm!301253 () Bool)

(assert (=> bm!301253 (= call!301257 (forall!8941 (toList!2734 lt!1548242) (ite c!737231 lambda!135623 lambda!135625)))))

(assert (= (and d!1274293 c!737231) b!4335201))

(assert (= (and d!1274293 (not c!737231)) b!4335199))

(assert (= (and b!4335199 res!1777926) b!4335203))

(assert (= (or b!4335201 b!4335199) bm!301251))

(assert (= (or b!4335201 b!4335199) bm!301252))

(assert (= (or b!4335201 b!4335203) bm!301253))

(assert (= (and d!1274293 res!1777924) b!4335202))

(assert (= (and b!4335202 res!1777925) b!4335200))

(declare-fun m!4929971 () Bool)

(assert (=> b!4335199 m!4929971))

(declare-fun m!4929973 () Bool)

(assert (=> b!4335199 m!4929973))

(declare-fun m!4929975 () Bool)

(assert (=> b!4335199 m!4929975))

(declare-fun m!4929977 () Bool)

(assert (=> b!4335199 m!4929977))

(declare-fun m!4929979 () Bool)

(assert (=> b!4335199 m!4929979))

(declare-fun m!4929981 () Bool)

(assert (=> b!4335199 m!4929981))

(assert (=> b!4335199 m!4929981))

(declare-fun m!4929983 () Bool)

(assert (=> b!4335199 m!4929983))

(declare-fun m!4929985 () Bool)

(assert (=> b!4335199 m!4929985))

(assert (=> b!4335199 m!4929973))

(declare-fun m!4929987 () Bool)

(assert (=> b!4335199 m!4929987))

(declare-fun m!4929989 () Bool)

(assert (=> b!4335199 m!4929989))

(declare-fun m!4929991 () Bool)

(assert (=> b!4335199 m!4929991))

(assert (=> b!4335199 m!4929977))

(declare-fun m!4929993 () Bool)

(assert (=> bm!301253 m!4929993))

(declare-fun m!4929995 () Bool)

(assert (=> b!4335202 m!4929995))

(declare-fun m!4929997 () Bool)

(assert (=> d!1274293 m!4929997))

(declare-fun m!4929999 () Bool)

(assert (=> d!1274293 m!4929999))

(declare-fun m!4930001 () Bool)

(assert (=> b!4335200 m!4930001))

(declare-fun m!4930003 () Bool)

(assert (=> bm!301252 m!4930003))

(declare-fun m!4930005 () Bool)

(assert (=> bm!301251 m!4930005))

(assert (=> b!4334965 d!1274293))

(declare-fun d!1274345 () Bool)

(declare-fun res!1777927 () Bool)

(declare-fun e!2697586 () Bool)

(assert (=> d!1274345 (=> res!1777927 e!2697586)))

(assert (=> d!1274345 (= res!1777927 ((_ is Nil!48650) (t!355690 (toList!2733 lm!1707))))))

(assert (=> d!1274345 (= (forall!8939 (t!355690 (toList!2733 lm!1707)) lambda!135537) e!2697586)))

(declare-fun b!4335206 () Bool)

(declare-fun e!2697587 () Bool)

(assert (=> b!4335206 (= e!2697586 e!2697587)))

(declare-fun res!1777928 () Bool)

(assert (=> b!4335206 (=> (not res!1777928) (not e!2697587))))

(assert (=> b!4335206 (= res!1777928 (dynLambda!20562 lambda!135537 (h!54147 (t!355690 (toList!2733 lm!1707)))))))

(declare-fun b!4335207 () Bool)

(assert (=> b!4335207 (= e!2697587 (forall!8939 (t!355690 (t!355690 (toList!2733 lm!1707))) lambda!135537))))

(assert (= (and d!1274345 (not res!1777927)) b!4335206))

(assert (= (and b!4335206 res!1777928) b!4335207))

(declare-fun b_lambda!128247 () Bool)

(assert (=> (not b_lambda!128247) (not b!4335206)))

(declare-fun m!4930007 () Bool)

(assert (=> b!4335206 m!4930007))

(declare-fun m!4930009 () Bool)

(assert (=> b!4335207 m!4930009))

(assert (=> b!4334965 d!1274345))

(declare-fun bs!608466 () Bool)

(declare-fun d!1274347 () Bool)

(assert (= bs!608466 (and d!1274347 start!418036)))

(declare-fun lambda!135627 () Int)

(assert (=> bs!608466 (= lambda!135627 lambda!135537)))

(declare-fun bs!608467 () Bool)

(assert (= bs!608467 (and d!1274347 d!1274261)))

(assert (=> bs!608467 (not (= lambda!135627 lambda!135540))))

(declare-fun bs!608468 () Bool)

(assert (= bs!608468 (and d!1274347 d!1274291)))

(assert (=> bs!608468 (= lambda!135627 lambda!135574)))

(declare-fun lt!1548537 () ListMap!1977)

(assert (=> d!1274347 (invariantList!624 (toList!2734 lt!1548537))))

(declare-fun e!2697588 () ListMap!1977)

(assert (=> d!1274347 (= lt!1548537 e!2697588)))

(declare-fun c!737232 () Bool)

(assert (=> d!1274347 (= c!737232 ((_ is Cons!48650) (t!355690 (toList!2733 lm!1707))))))

(assert (=> d!1274347 (forall!8939 (t!355690 (toList!2733 lm!1707)) lambda!135627)))

(assert (=> d!1274347 (= (extractMap!434 (t!355690 (toList!2733 lm!1707))) lt!1548537)))

(declare-fun b!4335208 () Bool)

(assert (=> b!4335208 (= e!2697588 (addToMapMapFromBucket!83 (_2!27230 (h!54147 (t!355690 (toList!2733 lm!1707)))) (extractMap!434 (t!355690 (t!355690 (toList!2733 lm!1707))))))))

(declare-fun b!4335209 () Bool)

(assert (=> b!4335209 (= e!2697588 (ListMap!1978 Nil!48649))))

(assert (= (and d!1274347 c!737232) b!4335208))

(assert (= (and d!1274347 (not c!737232)) b!4335209))

(declare-fun m!4930011 () Bool)

(assert (=> d!1274347 m!4930011))

(declare-fun m!4930013 () Bool)

(assert (=> d!1274347 m!4930013))

(declare-fun m!4930015 () Bool)

(assert (=> b!4335208 m!4930015))

(assert (=> b!4335208 m!4930015))

(declare-fun m!4930017 () Bool)

(assert (=> b!4335208 m!4930017))

(assert (=> b!4334965 d!1274347))

(declare-fun bs!608469 () Bool)

(declare-fun b!4335212 () Bool)

(assert (= bs!608469 (and b!4335212 b!4335201)))

(declare-fun lambda!135628 () Int)

(assert (=> bs!608469 (= lambda!135628 lambda!135623)))

(declare-fun bs!608470 () Bool)

(assert (= bs!608470 (and b!4335212 b!4335199)))

(assert (=> bs!608470 (= lambda!135628 lambda!135624)))

(assert (=> bs!608470 (= (= lt!1548242 lt!1548520) (= lambda!135628 lambda!135625))))

(declare-fun bs!608471 () Bool)

(assert (= bs!608471 (and b!4335212 d!1274293)))

(assert (=> bs!608471 (= (= lt!1548242 lt!1548521) (= lambda!135628 lambda!135626))))

(assert (=> b!4335212 true))

(declare-fun bs!608472 () Bool)

(declare-fun b!4335210 () Bool)

(assert (= bs!608472 (and b!4335210 b!4335199)))

(declare-fun lambda!135629 () Int)

(assert (=> bs!608472 (= (= lt!1548242 lt!1548520) (= lambda!135629 lambda!135625))))

(declare-fun bs!608473 () Bool)

(assert (= bs!608473 (and b!4335210 d!1274293)))

(assert (=> bs!608473 (= (= lt!1548242 lt!1548521) (= lambda!135629 lambda!135626))))

(declare-fun bs!608474 () Bool)

(assert (= bs!608474 (and b!4335210 b!4335212)))

(assert (=> bs!608474 (= lambda!135629 lambda!135628)))

(assert (=> bs!608472 (= lambda!135629 lambda!135624)))

(declare-fun bs!608475 () Bool)

(assert (= bs!608475 (and b!4335210 b!4335201)))

(assert (=> bs!608475 (= lambda!135629 lambda!135623)))

(assert (=> b!4335210 true))

(declare-fun lt!1548542 () ListMap!1977)

(declare-fun lambda!135630 () Int)

(assert (=> bs!608472 (= (= lt!1548542 lt!1548520) (= lambda!135630 lambda!135625))))

(assert (=> bs!608473 (= (= lt!1548542 lt!1548521) (= lambda!135630 lambda!135626))))

(assert (=> bs!608474 (= (= lt!1548542 lt!1548242) (= lambda!135630 lambda!135628))))

(assert (=> bs!608472 (= (= lt!1548542 lt!1548242) (= lambda!135630 lambda!135624))))

(assert (=> bs!608475 (= (= lt!1548542 lt!1548242) (= lambda!135630 lambda!135623))))

(assert (=> b!4335210 (= (= lt!1548542 lt!1548242) (= lambda!135630 lambda!135629))))

(assert (=> b!4335210 true))

(declare-fun bs!608476 () Bool)

(declare-fun d!1274349 () Bool)

(assert (= bs!608476 (and d!1274349 b!4335199)))

(declare-fun lt!1548543 () ListMap!1977)

(declare-fun lambda!135631 () Int)

(assert (=> bs!608476 (= (= lt!1548543 lt!1548520) (= lambda!135631 lambda!135625))))

(declare-fun bs!608477 () Bool)

(assert (= bs!608477 (and d!1274349 b!4335210)))

(assert (=> bs!608477 (= (= lt!1548543 lt!1548542) (= lambda!135631 lambda!135630))))

(declare-fun bs!608478 () Bool)

(assert (= bs!608478 (and d!1274349 d!1274293)))

(assert (=> bs!608478 (= (= lt!1548543 lt!1548521) (= lambda!135631 lambda!135626))))

(declare-fun bs!608479 () Bool)

(assert (= bs!608479 (and d!1274349 b!4335212)))

(assert (=> bs!608479 (= (= lt!1548543 lt!1548242) (= lambda!135631 lambda!135628))))

(assert (=> bs!608476 (= (= lt!1548543 lt!1548242) (= lambda!135631 lambda!135624))))

(declare-fun bs!608480 () Bool)

(assert (= bs!608480 (and d!1274349 b!4335201)))

(assert (=> bs!608480 (= (= lt!1548543 lt!1548242) (= lambda!135631 lambda!135623))))

(assert (=> bs!608477 (= (= lt!1548543 lt!1548242) (= lambda!135631 lambda!135629))))

(assert (=> d!1274349 true))

(declare-fun e!2697589 () ListMap!1977)

(assert (=> b!4335210 (= e!2697589 lt!1548542)))

(declare-fun lt!1548544 () ListMap!1977)

(assert (=> b!4335210 (= lt!1548544 (+!421 lt!1548242 (h!54146 newBucket!200)))))

(assert (=> b!4335210 (= lt!1548542 (addToMapMapFromBucket!83 (t!355689 newBucket!200) (+!421 lt!1548242 (h!54146 newBucket!200))))))

(declare-fun lt!1548539 () Unit!68403)

(declare-fun call!301261 () Unit!68403)

(assert (=> b!4335210 (= lt!1548539 call!301261)))

(assert (=> b!4335210 (forall!8941 (toList!2734 lt!1548242) lambda!135629)))

(declare-fun lt!1548545 () Unit!68403)

(assert (=> b!4335210 (= lt!1548545 lt!1548539)))

(declare-fun call!301259 () Bool)

(assert (=> b!4335210 call!301259))

(declare-fun lt!1548553 () Unit!68403)

(declare-fun Unit!68453 () Unit!68403)

(assert (=> b!4335210 (= lt!1548553 Unit!68453)))

(assert (=> b!4335210 (forall!8941 (t!355689 newBucket!200) lambda!135630)))

(declare-fun lt!1548551 () Unit!68403)

(declare-fun Unit!68454 () Unit!68403)

(assert (=> b!4335210 (= lt!1548551 Unit!68454)))

(declare-fun lt!1548556 () Unit!68403)

(declare-fun Unit!68455 () Unit!68403)

(assert (=> b!4335210 (= lt!1548556 Unit!68455)))

(declare-fun lt!1548538 () Unit!68403)

(assert (=> b!4335210 (= lt!1548538 (forallContained!1591 (toList!2734 lt!1548544) lambda!135630 (h!54146 newBucket!200)))))

(assert (=> b!4335210 (contains!10694 lt!1548544 (_1!27229 (h!54146 newBucket!200)))))

(declare-fun lt!1548546 () Unit!68403)

(declare-fun Unit!68456 () Unit!68403)

(assert (=> b!4335210 (= lt!1548546 Unit!68456)))

(assert (=> b!4335210 (contains!10694 lt!1548542 (_1!27229 (h!54146 newBucket!200)))))

(declare-fun lt!1548550 () Unit!68403)

(declare-fun Unit!68457 () Unit!68403)

(assert (=> b!4335210 (= lt!1548550 Unit!68457)))

(assert (=> b!4335210 (forall!8941 newBucket!200 lambda!135630)))

(declare-fun lt!1548549 () Unit!68403)

(declare-fun Unit!68458 () Unit!68403)

(assert (=> b!4335210 (= lt!1548549 Unit!68458)))

(assert (=> b!4335210 (forall!8941 (toList!2734 lt!1548544) lambda!135630)))

(declare-fun lt!1548540 () Unit!68403)

(declare-fun Unit!68459 () Unit!68403)

(assert (=> b!4335210 (= lt!1548540 Unit!68459)))

(declare-fun lt!1548555 () Unit!68403)

(declare-fun Unit!68460 () Unit!68403)

(assert (=> b!4335210 (= lt!1548555 Unit!68460)))

(declare-fun lt!1548541 () Unit!68403)

(assert (=> b!4335210 (= lt!1548541 (addForallContainsKeyThenBeforeAdding!17 lt!1548242 lt!1548542 (_1!27229 (h!54146 newBucket!200)) (_2!27229 (h!54146 newBucket!200))))))

(assert (=> b!4335210 (forall!8941 (toList!2734 lt!1548242) lambda!135630)))

(declare-fun lt!1548548 () Unit!68403)

(assert (=> b!4335210 (= lt!1548548 lt!1548541)))

(assert (=> b!4335210 (forall!8941 (toList!2734 lt!1548242) lambda!135630)))

(declare-fun lt!1548558 () Unit!68403)

(declare-fun Unit!68461 () Unit!68403)

(assert (=> b!4335210 (= lt!1548558 Unit!68461)))

(declare-fun res!1777931 () Bool)

(assert (=> b!4335210 (= res!1777931 (forall!8941 newBucket!200 lambda!135630))))

(declare-fun e!2697590 () Bool)

(assert (=> b!4335210 (=> (not res!1777931) (not e!2697590))))

(assert (=> b!4335210 e!2697590))

(declare-fun lt!1548547 () Unit!68403)

(declare-fun Unit!68462 () Unit!68403)

(assert (=> b!4335210 (= lt!1548547 Unit!68462)))

(declare-fun b!4335211 () Bool)

(declare-fun e!2697591 () Bool)

(assert (=> b!4335211 (= e!2697591 (invariantList!624 (toList!2734 lt!1548543)))))

(assert (=> b!4335212 (= e!2697589 lt!1548242)))

(declare-fun lt!1548554 () Unit!68403)

(assert (=> b!4335212 (= lt!1548554 call!301261)))

(assert (=> b!4335212 call!301259))

(declare-fun lt!1548552 () Unit!68403)

(assert (=> b!4335212 (= lt!1548552 lt!1548554)))

(declare-fun call!301260 () Bool)

(assert (=> b!4335212 call!301260))

(declare-fun lt!1548557 () Unit!68403)

(declare-fun Unit!68463 () Unit!68403)

(assert (=> b!4335212 (= lt!1548557 Unit!68463)))

(declare-fun b!4335213 () Bool)

(declare-fun res!1777930 () Bool)

(assert (=> b!4335213 (=> (not res!1777930) (not e!2697591))))

(assert (=> b!4335213 (= res!1777930 (forall!8941 (toList!2734 lt!1548242) lambda!135631))))

(declare-fun b!4335214 () Bool)

(assert (=> b!4335214 (= e!2697590 call!301260)))

(assert (=> d!1274349 e!2697591))

(declare-fun res!1777929 () Bool)

(assert (=> d!1274349 (=> (not res!1777929) (not e!2697591))))

(assert (=> d!1274349 (= res!1777929 (forall!8941 newBucket!200 lambda!135631))))

(assert (=> d!1274349 (= lt!1548543 e!2697589)))

(declare-fun c!737233 () Bool)

(assert (=> d!1274349 (= c!737233 ((_ is Nil!48649) newBucket!200))))

(assert (=> d!1274349 (noDuplicateKeys!375 newBucket!200)))

(assert (=> d!1274349 (= (addToMapMapFromBucket!83 newBucket!200 lt!1548242) lt!1548543)))

(declare-fun bm!301254 () Bool)

(assert (=> bm!301254 (= call!301261 (lemmaContainsAllItsOwnKeys!17 lt!1548242))))

(declare-fun bm!301255 () Bool)

(assert (=> bm!301255 (= call!301259 (forall!8941 (ite c!737233 (toList!2734 lt!1548242) (toList!2734 lt!1548544)) (ite c!737233 lambda!135628 lambda!135630)))))

(declare-fun bm!301256 () Bool)

(assert (=> bm!301256 (= call!301260 (forall!8941 (toList!2734 lt!1548242) (ite c!737233 lambda!135628 lambda!135630)))))

(assert (= (and d!1274349 c!737233) b!4335212))

(assert (= (and d!1274349 (not c!737233)) b!4335210))

(assert (= (and b!4335210 res!1777931) b!4335214))

(assert (= (or b!4335212 b!4335210) bm!301254))

(assert (= (or b!4335212 b!4335210) bm!301255))

(assert (= (or b!4335212 b!4335214) bm!301256))

(assert (= (and d!1274349 res!1777929) b!4335213))

(assert (= (and b!4335213 res!1777930) b!4335211))

(declare-fun m!4930019 () Bool)

(assert (=> b!4335210 m!4930019))

(declare-fun m!4930021 () Bool)

(assert (=> b!4335210 m!4930021))

(declare-fun m!4930023 () Bool)

(assert (=> b!4335210 m!4930023))

(declare-fun m!4930025 () Bool)

(assert (=> b!4335210 m!4930025))

(declare-fun m!4930027 () Bool)

(assert (=> b!4335210 m!4930027))

(declare-fun m!4930029 () Bool)

(assert (=> b!4335210 m!4930029))

(assert (=> b!4335210 m!4930029))

(declare-fun m!4930031 () Bool)

(assert (=> b!4335210 m!4930031))

(declare-fun m!4930033 () Bool)

(assert (=> b!4335210 m!4930033))

(assert (=> b!4335210 m!4930021))

(declare-fun m!4930035 () Bool)

(assert (=> b!4335210 m!4930035))

(declare-fun m!4930037 () Bool)

(assert (=> b!4335210 m!4930037))

(declare-fun m!4930039 () Bool)

(assert (=> b!4335210 m!4930039))

(assert (=> b!4335210 m!4930025))

(declare-fun m!4930041 () Bool)

(assert (=> bm!301256 m!4930041))

(declare-fun m!4930043 () Bool)

(assert (=> b!4335213 m!4930043))

(declare-fun m!4930045 () Bool)

(assert (=> d!1274349 m!4930045))

(assert (=> d!1274349 m!4929657))

(declare-fun m!4930047 () Bool)

(assert (=> b!4335211 m!4930047))

(declare-fun m!4930049 () Bool)

(assert (=> bm!301255 m!4930049))

(assert (=> bm!301254 m!4930005))

(assert (=> b!4334965 d!1274349))

(assert (=> b!4334975 d!1274263))

(declare-fun d!1274351 () Bool)

(declare-fun hash!1320 (Hashable!4767 K!10005) (_ BitVec 64))

(assert (=> d!1274351 (= (hash!1318 hashF!1247 key!3918) (hash!1320 hashF!1247 key!3918))))

(declare-fun bs!608481 () Bool)

(assert (= bs!608481 d!1274351))

(declare-fun m!4930051 () Bool)

(assert (=> bs!608481 m!4930051))

(assert (=> b!4334977 d!1274351))

(declare-fun bs!608482 () Bool)

(declare-fun b!4335217 () Bool)

(assert (= bs!608482 (and b!4335217 b!4335199)))

(declare-fun lambda!135632 () Int)

(assert (=> bs!608482 (= (= (+!421 lt!1548242 lt!1548245) lt!1548520) (= lambda!135632 lambda!135625))))

(declare-fun bs!608483 () Bool)

(assert (= bs!608483 (and b!4335217 b!4335210)))

(assert (=> bs!608483 (= (= (+!421 lt!1548242 lt!1548245) lt!1548542) (= lambda!135632 lambda!135630))))

(declare-fun bs!608484 () Bool)

(assert (= bs!608484 (and b!4335217 d!1274293)))

(assert (=> bs!608484 (= (= (+!421 lt!1548242 lt!1548245) lt!1548521) (= lambda!135632 lambda!135626))))

(declare-fun bs!608485 () Bool)

(assert (= bs!608485 (and b!4335217 d!1274349)))

(assert (=> bs!608485 (= (= (+!421 lt!1548242 lt!1548245) lt!1548543) (= lambda!135632 lambda!135631))))

(declare-fun bs!608486 () Bool)

(assert (= bs!608486 (and b!4335217 b!4335212)))

(assert (=> bs!608486 (= (= (+!421 lt!1548242 lt!1548245) lt!1548242) (= lambda!135632 lambda!135628))))

(assert (=> bs!608482 (= (= (+!421 lt!1548242 lt!1548245) lt!1548242) (= lambda!135632 lambda!135624))))

(declare-fun bs!608487 () Bool)

(assert (= bs!608487 (and b!4335217 b!4335201)))

(assert (=> bs!608487 (= (= (+!421 lt!1548242 lt!1548245) lt!1548242) (= lambda!135632 lambda!135623))))

(assert (=> bs!608483 (= (= (+!421 lt!1548242 lt!1548245) lt!1548242) (= lambda!135632 lambda!135629))))

(assert (=> b!4335217 true))

(declare-fun bs!608488 () Bool)

(declare-fun b!4335215 () Bool)

(assert (= bs!608488 (and b!4335215 b!4335199)))

(declare-fun lambda!135633 () Int)

(assert (=> bs!608488 (= (= (+!421 lt!1548242 lt!1548245) lt!1548520) (= lambda!135633 lambda!135625))))

(declare-fun bs!608489 () Bool)

(assert (= bs!608489 (and b!4335215 b!4335210)))

(assert (=> bs!608489 (= (= (+!421 lt!1548242 lt!1548245) lt!1548542) (= lambda!135633 lambda!135630))))

(declare-fun bs!608490 () Bool)

(assert (= bs!608490 (and b!4335215 d!1274293)))

(assert (=> bs!608490 (= (= (+!421 lt!1548242 lt!1548245) lt!1548521) (= lambda!135633 lambda!135626))))

(declare-fun bs!608491 () Bool)

(assert (= bs!608491 (and b!4335215 d!1274349)))

(assert (=> bs!608491 (= (= (+!421 lt!1548242 lt!1548245) lt!1548543) (= lambda!135633 lambda!135631))))

(declare-fun bs!608492 () Bool)

(assert (= bs!608492 (and b!4335215 b!4335212)))

(assert (=> bs!608492 (= (= (+!421 lt!1548242 lt!1548245) lt!1548242) (= lambda!135633 lambda!135628))))

(declare-fun bs!608493 () Bool)

(assert (= bs!608493 (and b!4335215 b!4335217)))

(assert (=> bs!608493 (= lambda!135633 lambda!135632)))

(assert (=> bs!608488 (= (= (+!421 lt!1548242 lt!1548245) lt!1548242) (= lambda!135633 lambda!135624))))

(declare-fun bs!608494 () Bool)

(assert (= bs!608494 (and b!4335215 b!4335201)))

(assert (=> bs!608494 (= (= (+!421 lt!1548242 lt!1548245) lt!1548242) (= lambda!135633 lambda!135623))))

(assert (=> bs!608489 (= (= (+!421 lt!1548242 lt!1548245) lt!1548242) (= lambda!135633 lambda!135629))))

(assert (=> b!4335215 true))

(declare-fun lambda!135634 () Int)

(declare-fun lt!1548563 () ListMap!1977)

(assert (=> bs!608488 (= (= lt!1548563 lt!1548520) (= lambda!135634 lambda!135625))))

(assert (=> bs!608489 (= (= lt!1548563 lt!1548542) (= lambda!135634 lambda!135630))))

(assert (=> b!4335215 (= (= lt!1548563 (+!421 lt!1548242 lt!1548245)) (= lambda!135634 lambda!135633))))

(assert (=> bs!608490 (= (= lt!1548563 lt!1548521) (= lambda!135634 lambda!135626))))

(assert (=> bs!608491 (= (= lt!1548563 lt!1548543) (= lambda!135634 lambda!135631))))

(assert (=> bs!608492 (= (= lt!1548563 lt!1548242) (= lambda!135634 lambda!135628))))

(assert (=> bs!608493 (= (= lt!1548563 (+!421 lt!1548242 lt!1548245)) (= lambda!135634 lambda!135632))))

(assert (=> bs!608488 (= (= lt!1548563 lt!1548242) (= lambda!135634 lambda!135624))))

(assert (=> bs!608494 (= (= lt!1548563 lt!1548242) (= lambda!135634 lambda!135623))))

(assert (=> bs!608489 (= (= lt!1548563 lt!1548242) (= lambda!135634 lambda!135629))))

(assert (=> b!4335215 true))

(declare-fun bs!608495 () Bool)

(declare-fun d!1274353 () Bool)

(assert (= bs!608495 (and d!1274353 b!4335199)))

(declare-fun lambda!135635 () Int)

(declare-fun lt!1548564 () ListMap!1977)

(assert (=> bs!608495 (= (= lt!1548564 lt!1548520) (= lambda!135635 lambda!135625))))

(declare-fun bs!608496 () Bool)

(assert (= bs!608496 (and d!1274353 b!4335210)))

(assert (=> bs!608496 (= (= lt!1548564 lt!1548542) (= lambda!135635 lambda!135630))))

(declare-fun bs!608497 () Bool)

(assert (= bs!608497 (and d!1274353 b!4335215)))

(assert (=> bs!608497 (= (= lt!1548564 (+!421 lt!1548242 lt!1548245)) (= lambda!135635 lambda!135633))))

(declare-fun bs!608498 () Bool)

(assert (= bs!608498 (and d!1274353 d!1274293)))

(assert (=> bs!608498 (= (= lt!1548564 lt!1548521) (= lambda!135635 lambda!135626))))

(declare-fun bs!608499 () Bool)

(assert (= bs!608499 (and d!1274353 d!1274349)))

(assert (=> bs!608499 (= (= lt!1548564 lt!1548543) (= lambda!135635 lambda!135631))))

(declare-fun bs!608500 () Bool)

(assert (= bs!608500 (and d!1274353 b!4335212)))

(assert (=> bs!608500 (= (= lt!1548564 lt!1548242) (= lambda!135635 lambda!135628))))

(declare-fun bs!608501 () Bool)

(assert (= bs!608501 (and d!1274353 b!4335217)))

(assert (=> bs!608501 (= (= lt!1548564 (+!421 lt!1548242 lt!1548245)) (= lambda!135635 lambda!135632))))

(assert (=> bs!608497 (= (= lt!1548564 lt!1548563) (= lambda!135635 lambda!135634))))

(assert (=> bs!608495 (= (= lt!1548564 lt!1548242) (= lambda!135635 lambda!135624))))

(declare-fun bs!608502 () Bool)

(assert (= bs!608502 (and d!1274353 b!4335201)))

(assert (=> bs!608502 (= (= lt!1548564 lt!1548242) (= lambda!135635 lambda!135623))))

(assert (=> bs!608496 (= (= lt!1548564 lt!1548242) (= lambda!135635 lambda!135629))))

(assert (=> d!1274353 true))

(declare-fun e!2697592 () ListMap!1977)

(assert (=> b!4335215 (= e!2697592 lt!1548563)))

(declare-fun lt!1548565 () ListMap!1977)

(assert (=> b!4335215 (= lt!1548565 (+!421 (+!421 lt!1548242 lt!1548245) (h!54146 lt!1548237)))))

(assert (=> b!4335215 (= lt!1548563 (addToMapMapFromBucket!83 (t!355689 lt!1548237) (+!421 (+!421 lt!1548242 lt!1548245) (h!54146 lt!1548237))))))

(declare-fun lt!1548560 () Unit!68403)

(declare-fun call!301264 () Unit!68403)

(assert (=> b!4335215 (= lt!1548560 call!301264)))

(assert (=> b!4335215 (forall!8941 (toList!2734 (+!421 lt!1548242 lt!1548245)) lambda!135633)))

(declare-fun lt!1548566 () Unit!68403)

(assert (=> b!4335215 (= lt!1548566 lt!1548560)))

(declare-fun call!301262 () Bool)

(assert (=> b!4335215 call!301262))

(declare-fun lt!1548574 () Unit!68403)

(declare-fun Unit!68464 () Unit!68403)

(assert (=> b!4335215 (= lt!1548574 Unit!68464)))

(assert (=> b!4335215 (forall!8941 (t!355689 lt!1548237) lambda!135634)))

(declare-fun lt!1548572 () Unit!68403)

(declare-fun Unit!68465 () Unit!68403)

(assert (=> b!4335215 (= lt!1548572 Unit!68465)))

(declare-fun lt!1548577 () Unit!68403)

(declare-fun Unit!68466 () Unit!68403)

(assert (=> b!4335215 (= lt!1548577 Unit!68466)))

(declare-fun lt!1548559 () Unit!68403)

(assert (=> b!4335215 (= lt!1548559 (forallContained!1591 (toList!2734 lt!1548565) lambda!135634 (h!54146 lt!1548237)))))

(assert (=> b!4335215 (contains!10694 lt!1548565 (_1!27229 (h!54146 lt!1548237)))))

(declare-fun lt!1548567 () Unit!68403)

(declare-fun Unit!68467 () Unit!68403)

(assert (=> b!4335215 (= lt!1548567 Unit!68467)))

(assert (=> b!4335215 (contains!10694 lt!1548563 (_1!27229 (h!54146 lt!1548237)))))

(declare-fun lt!1548571 () Unit!68403)

(declare-fun Unit!68468 () Unit!68403)

(assert (=> b!4335215 (= lt!1548571 Unit!68468)))

(assert (=> b!4335215 (forall!8941 lt!1548237 lambda!135634)))

(declare-fun lt!1548570 () Unit!68403)

(declare-fun Unit!68469 () Unit!68403)

(assert (=> b!4335215 (= lt!1548570 Unit!68469)))

(assert (=> b!4335215 (forall!8941 (toList!2734 lt!1548565) lambda!135634)))

(declare-fun lt!1548561 () Unit!68403)

(declare-fun Unit!68470 () Unit!68403)

(assert (=> b!4335215 (= lt!1548561 Unit!68470)))

(declare-fun lt!1548576 () Unit!68403)

(declare-fun Unit!68471 () Unit!68403)

(assert (=> b!4335215 (= lt!1548576 Unit!68471)))

(declare-fun lt!1548562 () Unit!68403)

(assert (=> b!4335215 (= lt!1548562 (addForallContainsKeyThenBeforeAdding!17 (+!421 lt!1548242 lt!1548245) lt!1548563 (_1!27229 (h!54146 lt!1548237)) (_2!27229 (h!54146 lt!1548237))))))

(assert (=> b!4335215 (forall!8941 (toList!2734 (+!421 lt!1548242 lt!1548245)) lambda!135634)))

(declare-fun lt!1548569 () Unit!68403)

(assert (=> b!4335215 (= lt!1548569 lt!1548562)))

(assert (=> b!4335215 (forall!8941 (toList!2734 (+!421 lt!1548242 lt!1548245)) lambda!135634)))

(declare-fun lt!1548579 () Unit!68403)

(declare-fun Unit!68472 () Unit!68403)

(assert (=> b!4335215 (= lt!1548579 Unit!68472)))

(declare-fun res!1777934 () Bool)

(assert (=> b!4335215 (= res!1777934 (forall!8941 lt!1548237 lambda!135634))))

(declare-fun e!2697593 () Bool)

(assert (=> b!4335215 (=> (not res!1777934) (not e!2697593))))

(assert (=> b!4335215 e!2697593))

(declare-fun lt!1548568 () Unit!68403)

(declare-fun Unit!68473 () Unit!68403)

(assert (=> b!4335215 (= lt!1548568 Unit!68473)))

(declare-fun b!4335216 () Bool)

(declare-fun e!2697594 () Bool)

(assert (=> b!4335216 (= e!2697594 (invariantList!624 (toList!2734 lt!1548564)))))

(assert (=> b!4335217 (= e!2697592 (+!421 lt!1548242 lt!1548245))))

(declare-fun lt!1548575 () Unit!68403)

(assert (=> b!4335217 (= lt!1548575 call!301264)))

(assert (=> b!4335217 call!301262))

(declare-fun lt!1548573 () Unit!68403)

(assert (=> b!4335217 (= lt!1548573 lt!1548575)))

(declare-fun call!301263 () Bool)

(assert (=> b!4335217 call!301263))

(declare-fun lt!1548578 () Unit!68403)

(declare-fun Unit!68474 () Unit!68403)

(assert (=> b!4335217 (= lt!1548578 Unit!68474)))

(declare-fun b!4335218 () Bool)

(declare-fun res!1777933 () Bool)

(assert (=> b!4335218 (=> (not res!1777933) (not e!2697594))))

(assert (=> b!4335218 (= res!1777933 (forall!8941 (toList!2734 (+!421 lt!1548242 lt!1548245)) lambda!135635))))

(declare-fun b!4335219 () Bool)

(assert (=> b!4335219 (= e!2697593 call!301263)))

(assert (=> d!1274353 e!2697594))

(declare-fun res!1777932 () Bool)

(assert (=> d!1274353 (=> (not res!1777932) (not e!2697594))))

(assert (=> d!1274353 (= res!1777932 (forall!8941 lt!1548237 lambda!135635))))

(assert (=> d!1274353 (= lt!1548564 e!2697592)))

(declare-fun c!737234 () Bool)

(assert (=> d!1274353 (= c!737234 ((_ is Nil!48649) lt!1548237))))

(assert (=> d!1274353 (noDuplicateKeys!375 lt!1548237)))

(assert (=> d!1274353 (= (addToMapMapFromBucket!83 lt!1548237 (+!421 lt!1548242 lt!1548245)) lt!1548564)))

(declare-fun bm!301257 () Bool)

(assert (=> bm!301257 (= call!301264 (lemmaContainsAllItsOwnKeys!17 (+!421 lt!1548242 lt!1548245)))))

(declare-fun bm!301258 () Bool)

(assert (=> bm!301258 (= call!301262 (forall!8941 (ite c!737234 (toList!2734 (+!421 lt!1548242 lt!1548245)) (toList!2734 lt!1548565)) (ite c!737234 lambda!135632 lambda!135634)))))

(declare-fun bm!301259 () Bool)

(assert (=> bm!301259 (= call!301263 (forall!8941 (toList!2734 (+!421 lt!1548242 lt!1548245)) (ite c!737234 lambda!135632 lambda!135634)))))

(assert (= (and d!1274353 c!737234) b!4335217))

(assert (= (and d!1274353 (not c!737234)) b!4335215))

(assert (= (and b!4335215 res!1777934) b!4335219))

(assert (= (or b!4335217 b!4335215) bm!301257))

(assert (= (or b!4335217 b!4335215) bm!301258))

(assert (= (or b!4335217 b!4335219) bm!301259))

(assert (= (and d!1274353 res!1777932) b!4335218))

(assert (= (and b!4335218 res!1777933) b!4335216))

(declare-fun m!4930053 () Bool)

(assert (=> b!4335215 m!4930053))

(declare-fun m!4930055 () Bool)

(assert (=> b!4335215 m!4930055))

(declare-fun m!4930057 () Bool)

(assert (=> b!4335215 m!4930057))

(declare-fun m!4930059 () Bool)

(assert (=> b!4335215 m!4930059))

(declare-fun m!4930061 () Bool)

(assert (=> b!4335215 m!4930061))

(assert (=> b!4335215 m!4929611))

(declare-fun m!4930063 () Bool)

(assert (=> b!4335215 m!4930063))

(assert (=> b!4335215 m!4930063))

(declare-fun m!4930065 () Bool)

(assert (=> b!4335215 m!4930065))

(declare-fun m!4930067 () Bool)

(assert (=> b!4335215 m!4930067))

(assert (=> b!4335215 m!4930055))

(declare-fun m!4930069 () Bool)

(assert (=> b!4335215 m!4930069))

(declare-fun m!4930071 () Bool)

(assert (=> b!4335215 m!4930071))

(assert (=> b!4335215 m!4929611))

(declare-fun m!4930073 () Bool)

(assert (=> b!4335215 m!4930073))

(assert (=> b!4335215 m!4930059))

(declare-fun m!4930075 () Bool)

(assert (=> bm!301259 m!4930075))

(declare-fun m!4930077 () Bool)

(assert (=> b!4335218 m!4930077))

(declare-fun m!4930079 () Bool)

(assert (=> d!1274353 m!4930079))

(declare-fun m!4930081 () Bool)

(assert (=> d!1274353 m!4930081))

(declare-fun m!4930083 () Bool)

(assert (=> b!4335216 m!4930083))

(declare-fun m!4930085 () Bool)

(assert (=> bm!301258 m!4930085))

(assert (=> bm!301257 m!4929611))

(declare-fun m!4930087 () Bool)

(assert (=> bm!301257 m!4930087))

(assert (=> b!4334966 d!1274353))

(declare-fun d!1274355 () Bool)

(declare-fun e!2697597 () Bool)

(assert (=> d!1274355 e!2697597))

(declare-fun res!1777940 () Bool)

(assert (=> d!1274355 (=> (not res!1777940) (not e!2697597))))

(declare-fun lt!1548589 () ListMap!1977)

(assert (=> d!1274355 (= res!1777940 (contains!10694 lt!1548589 (_1!27229 lt!1548245)))))

(declare-fun lt!1548590 () List!48773)

(assert (=> d!1274355 (= lt!1548589 (ListMap!1978 lt!1548590))))

(declare-fun lt!1548588 () Unit!68403)

(declare-fun lt!1548591 () Unit!68403)

(assert (=> d!1274355 (= lt!1548588 lt!1548591)))

(declare-datatypes ((Option!10361 0))(
  ( (None!10360) (Some!10360 (v!43092 V!10251)) )
))
(declare-fun getValueByKey!347 (List!48773 K!10005) Option!10361)

(assert (=> d!1274355 (= (getValueByKey!347 lt!1548590 (_1!27229 lt!1548245)) (Some!10360 (_2!27229 lt!1548245)))))

(declare-fun lemmaContainsTupThenGetReturnValue!130 (List!48773 K!10005 V!10251) Unit!68403)

(assert (=> d!1274355 (= lt!1548591 (lemmaContainsTupThenGetReturnValue!130 lt!1548590 (_1!27229 lt!1548245) (_2!27229 lt!1548245)))))

(declare-fun insertNoDuplicatedKeys!57 (List!48773 K!10005 V!10251) List!48773)

(assert (=> d!1274355 (= lt!1548590 (insertNoDuplicatedKeys!57 (toList!2734 lt!1548242) (_1!27229 lt!1548245) (_2!27229 lt!1548245)))))

(assert (=> d!1274355 (= (+!421 lt!1548242 lt!1548245) lt!1548589)))

(declare-fun b!4335224 () Bool)

(declare-fun res!1777939 () Bool)

(assert (=> b!4335224 (=> (not res!1777939) (not e!2697597))))

(assert (=> b!4335224 (= res!1777939 (= (getValueByKey!347 (toList!2734 lt!1548589) (_1!27229 lt!1548245)) (Some!10360 (_2!27229 lt!1548245))))))

(declare-fun b!4335225 () Bool)

(declare-fun contains!10699 (List!48773 tuple2!47870) Bool)

(assert (=> b!4335225 (= e!2697597 (contains!10699 (toList!2734 lt!1548589) lt!1548245))))

(assert (= (and d!1274355 res!1777940) b!4335224))

(assert (= (and b!4335224 res!1777939) b!4335225))

(declare-fun m!4930089 () Bool)

(assert (=> d!1274355 m!4930089))

(declare-fun m!4930091 () Bool)

(assert (=> d!1274355 m!4930091))

(declare-fun m!4930093 () Bool)

(assert (=> d!1274355 m!4930093))

(declare-fun m!4930095 () Bool)

(assert (=> d!1274355 m!4930095))

(declare-fun m!4930097 () Bool)

(assert (=> b!4335224 m!4930097))

(declare-fun m!4930099 () Bool)

(assert (=> b!4335225 m!4930099))

(assert (=> b!4334966 d!1274355))

(declare-fun bs!608503 () Bool)

(declare-fun d!1274357 () Bool)

(assert (= bs!608503 (and d!1274357 d!1274353)))

(declare-fun lambda!135638 () Int)

(assert (=> bs!608503 (not (= lambda!135638 lambda!135635))))

(declare-fun bs!608504 () Bool)

(assert (= bs!608504 (and d!1274357 b!4335199)))

(assert (=> bs!608504 (not (= lambda!135638 lambda!135625))))

(declare-fun bs!608505 () Bool)

(assert (= bs!608505 (and d!1274357 b!4335210)))

(assert (=> bs!608505 (not (= lambda!135638 lambda!135630))))

(declare-fun bs!608506 () Bool)

(assert (= bs!608506 (and d!1274357 b!4335215)))

(assert (=> bs!608506 (not (= lambda!135638 lambda!135633))))

(declare-fun bs!608507 () Bool)

(assert (= bs!608507 (and d!1274357 d!1274293)))

(assert (=> bs!608507 (not (= lambda!135638 lambda!135626))))

(declare-fun bs!608508 () Bool)

(assert (= bs!608508 (and d!1274357 d!1274349)))

(assert (=> bs!608508 (not (= lambda!135638 lambda!135631))))

(declare-fun bs!608509 () Bool)

(assert (= bs!608509 (and d!1274357 b!4335212)))

(assert (=> bs!608509 (not (= lambda!135638 lambda!135628))))

(declare-fun bs!608510 () Bool)

(assert (= bs!608510 (and d!1274357 b!4335217)))

(assert (=> bs!608510 (not (= lambda!135638 lambda!135632))))

(assert (=> bs!608506 (not (= lambda!135638 lambda!135634))))

(assert (=> bs!608504 (not (= lambda!135638 lambda!135624))))

(declare-fun bs!608511 () Bool)

(assert (= bs!608511 (and d!1274357 b!4335201)))

(assert (=> bs!608511 (not (= lambda!135638 lambda!135623))))

(assert (=> bs!608505 (not (= lambda!135638 lambda!135629))))

(assert (=> d!1274357 true))

(assert (=> d!1274357 true))

(assert (=> d!1274357 (= (allKeysSameHash!333 newBucket!200 hash!377 hashF!1247) (forall!8941 newBucket!200 lambda!135638))))

(declare-fun bs!608512 () Bool)

(assert (= bs!608512 d!1274357))

(declare-fun m!4930101 () Bool)

(assert (=> bs!608512 m!4930101))

(assert (=> b!4334978 d!1274357))

(declare-fun bm!301262 () Bool)

(declare-fun call!301267 () Bool)

(declare-datatypes ((List!48776 0))(
  ( (Nil!48652) (Cons!48652 (h!54151 K!10005) (t!355692 List!48776)) )
))
(declare-fun e!2697610 () List!48776)

(declare-fun contains!10700 (List!48776 K!10005) Bool)

(assert (=> bm!301262 (= call!301267 (contains!10700 e!2697610 key!3918))))

(declare-fun c!737242 () Bool)

(declare-fun c!737243 () Bool)

(assert (=> bm!301262 (= c!737242 c!737243)))

(declare-fun b!4335248 () Bool)

(declare-fun e!2697611 () Unit!68403)

(declare-fun Unit!68475 () Unit!68403)

(assert (=> b!4335248 (= e!2697611 Unit!68475)))

(declare-fun b!4335249 () Bool)

(assert (=> b!4335249 false))

(declare-fun lt!1548615 () Unit!68403)

(declare-fun lt!1548608 () Unit!68403)

(assert (=> b!4335249 (= lt!1548615 lt!1548608)))

(declare-fun containsKey!522 (List!48773 K!10005) Bool)

(assert (=> b!4335249 (containsKey!522 (toList!2734 (extractMap!434 (toList!2733 lm!1707))) key!3918)))

(declare-fun lemmaInGetKeysListThenContainsKey!70 (List!48773 K!10005) Unit!68403)

(assert (=> b!4335249 (= lt!1548608 (lemmaInGetKeysListThenContainsKey!70 (toList!2734 (extractMap!434 (toList!2733 lm!1707))) key!3918))))

(declare-fun Unit!68476 () Unit!68403)

(assert (=> b!4335249 (= e!2697611 Unit!68476)))

(declare-fun b!4335250 () Bool)

(declare-fun keys!16358 (ListMap!1977) List!48776)

(assert (=> b!4335250 (= e!2697610 (keys!16358 (extractMap!434 (toList!2733 lm!1707))))))

(declare-fun b!4335251 () Bool)

(declare-fun e!2697615 () Bool)

(assert (=> b!4335251 (= e!2697615 (not (contains!10700 (keys!16358 (extractMap!434 (toList!2733 lm!1707))) key!3918)))))

(declare-fun d!1274359 () Bool)

(declare-fun e!2697614 () Bool)

(assert (=> d!1274359 e!2697614))

(declare-fun res!1777949 () Bool)

(assert (=> d!1274359 (=> res!1777949 e!2697614)))

(assert (=> d!1274359 (= res!1777949 e!2697615)))

(declare-fun res!1777947 () Bool)

(assert (=> d!1274359 (=> (not res!1777947) (not e!2697615))))

(declare-fun lt!1548611 () Bool)

(assert (=> d!1274359 (= res!1777947 (not lt!1548611))))

(declare-fun lt!1548609 () Bool)

(assert (=> d!1274359 (= lt!1548611 lt!1548609)))

(declare-fun lt!1548613 () Unit!68403)

(declare-fun e!2697613 () Unit!68403)

(assert (=> d!1274359 (= lt!1548613 e!2697613)))

(assert (=> d!1274359 (= c!737243 lt!1548609)))

(assert (=> d!1274359 (= lt!1548609 (containsKey!522 (toList!2734 (extractMap!434 (toList!2733 lm!1707))) key!3918))))

(assert (=> d!1274359 (= (contains!10694 (extractMap!434 (toList!2733 lm!1707)) key!3918) lt!1548611)))

(declare-fun b!4335252 () Bool)

(assert (=> b!4335252 (= e!2697613 e!2697611)))

(declare-fun c!737241 () Bool)

(assert (=> b!4335252 (= c!737241 call!301267)))

(declare-fun b!4335253 () Bool)

(declare-fun e!2697612 () Bool)

(assert (=> b!4335253 (= e!2697614 e!2697612)))

(declare-fun res!1777948 () Bool)

(assert (=> b!4335253 (=> (not res!1777948) (not e!2697612))))

(declare-fun isDefined!7657 (Option!10361) Bool)

(assert (=> b!4335253 (= res!1777948 (isDefined!7657 (getValueByKey!347 (toList!2734 (extractMap!434 (toList!2733 lm!1707))) key!3918)))))

(declare-fun b!4335254 () Bool)

(assert (=> b!4335254 (= e!2697612 (contains!10700 (keys!16358 (extractMap!434 (toList!2733 lm!1707))) key!3918))))

(declare-fun b!4335255 () Bool)

(declare-fun lt!1548612 () Unit!68403)

(assert (=> b!4335255 (= e!2697613 lt!1548612)))

(declare-fun lt!1548610 () Unit!68403)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!260 (List!48773 K!10005) Unit!68403)

(assert (=> b!4335255 (= lt!1548610 (lemmaContainsKeyImpliesGetValueByKeyDefined!260 (toList!2734 (extractMap!434 (toList!2733 lm!1707))) key!3918))))

(assert (=> b!4335255 (isDefined!7657 (getValueByKey!347 (toList!2734 (extractMap!434 (toList!2733 lm!1707))) key!3918))))

(declare-fun lt!1548614 () Unit!68403)

(assert (=> b!4335255 (= lt!1548614 lt!1548610)))

(declare-fun lemmaInListThenGetKeysListContains!69 (List!48773 K!10005) Unit!68403)

(assert (=> b!4335255 (= lt!1548612 (lemmaInListThenGetKeysListContains!69 (toList!2734 (extractMap!434 (toList!2733 lm!1707))) key!3918))))

(assert (=> b!4335255 call!301267))

(declare-fun b!4335256 () Bool)

(declare-fun getKeysList!72 (List!48773) List!48776)

(assert (=> b!4335256 (= e!2697610 (getKeysList!72 (toList!2734 (extractMap!434 (toList!2733 lm!1707)))))))

(assert (= (and d!1274359 c!737243) b!4335255))

(assert (= (and d!1274359 (not c!737243)) b!4335252))

(assert (= (and b!4335252 c!737241) b!4335249))

(assert (= (and b!4335252 (not c!737241)) b!4335248))

(assert (= (or b!4335255 b!4335252) bm!301262))

(assert (= (and bm!301262 c!737242) b!4335256))

(assert (= (and bm!301262 (not c!737242)) b!4335250))

(assert (= (and d!1274359 res!1777947) b!4335251))

(assert (= (and d!1274359 (not res!1777949)) b!4335253))

(assert (= (and b!4335253 res!1777948) b!4335254))

(declare-fun m!4930103 () Bool)

(assert (=> b!4335253 m!4930103))

(assert (=> b!4335253 m!4930103))

(declare-fun m!4930105 () Bool)

(assert (=> b!4335253 m!4930105))

(declare-fun m!4930107 () Bool)

(assert (=> b!4335256 m!4930107))

(declare-fun m!4930109 () Bool)

(assert (=> d!1274359 m!4930109))

(assert (=> b!4335251 m!4929651))

(declare-fun m!4930111 () Bool)

(assert (=> b!4335251 m!4930111))

(assert (=> b!4335251 m!4930111))

(declare-fun m!4930113 () Bool)

(assert (=> b!4335251 m!4930113))

(declare-fun m!4930115 () Bool)

(assert (=> b!4335255 m!4930115))

(assert (=> b!4335255 m!4930103))

(assert (=> b!4335255 m!4930103))

(assert (=> b!4335255 m!4930105))

(declare-fun m!4930117 () Bool)

(assert (=> b!4335255 m!4930117))

(assert (=> b!4335249 m!4930109))

(declare-fun m!4930119 () Bool)

(assert (=> b!4335249 m!4930119))

(declare-fun m!4930121 () Bool)

(assert (=> bm!301262 m!4930121))

(assert (=> b!4335254 m!4929651))

(assert (=> b!4335254 m!4930111))

(assert (=> b!4335254 m!4930111))

(assert (=> b!4335254 m!4930113))

(assert (=> b!4335250 m!4929651))

(assert (=> b!4335250 m!4930111))

(assert (=> b!4334967 d!1274359))

(declare-fun bs!608513 () Bool)

(declare-fun d!1274361 () Bool)

(assert (= bs!608513 (and d!1274361 start!418036)))

(declare-fun lambda!135639 () Int)

(assert (=> bs!608513 (= lambda!135639 lambda!135537)))

(declare-fun bs!608514 () Bool)

(assert (= bs!608514 (and d!1274361 d!1274261)))

(assert (=> bs!608514 (not (= lambda!135639 lambda!135540))))

(declare-fun bs!608515 () Bool)

(assert (= bs!608515 (and d!1274361 d!1274291)))

(assert (=> bs!608515 (= lambda!135639 lambda!135574)))

(declare-fun bs!608516 () Bool)

(assert (= bs!608516 (and d!1274361 d!1274347)))

(assert (=> bs!608516 (= lambda!135639 lambda!135627)))

(declare-fun lt!1548616 () ListMap!1977)

(assert (=> d!1274361 (invariantList!624 (toList!2734 lt!1548616))))

(declare-fun e!2697616 () ListMap!1977)

(assert (=> d!1274361 (= lt!1548616 e!2697616)))

(declare-fun c!737244 () Bool)

(assert (=> d!1274361 (= c!737244 ((_ is Cons!48650) (toList!2733 lm!1707)))))

(assert (=> d!1274361 (forall!8939 (toList!2733 lm!1707) lambda!135639)))

(assert (=> d!1274361 (= (extractMap!434 (toList!2733 lm!1707)) lt!1548616)))

(declare-fun b!4335257 () Bool)

(assert (=> b!4335257 (= e!2697616 (addToMapMapFromBucket!83 (_2!27230 (h!54147 (toList!2733 lm!1707))) (extractMap!434 (t!355690 (toList!2733 lm!1707)))))))

(declare-fun b!4335258 () Bool)

(assert (=> b!4335258 (= e!2697616 (ListMap!1978 Nil!48649))))

(assert (= (and d!1274361 c!737244) b!4335257))

(assert (= (and d!1274361 (not c!737244)) b!4335258))

(declare-fun m!4930123 () Bool)

(assert (=> d!1274361 m!4930123))

(declare-fun m!4930125 () Bool)

(assert (=> d!1274361 m!4930125))

(assert (=> b!4335257 m!4929617))

(assert (=> b!4335257 m!4929617))

(declare-fun m!4930127 () Bool)

(assert (=> b!4335257 m!4930127))

(assert (=> b!4334967 d!1274361))

(declare-fun tp!1328908 () Bool)

(declare-fun b!4335263 () Bool)

(declare-fun e!2697619 () Bool)

(assert (=> b!4335263 (= e!2697619 (and tp_is_empty!24737 tp_is_empty!24739 tp!1328908))))

(assert (=> b!4334976 (= tp!1328896 e!2697619)))

(assert (= (and b!4334976 ((_ is Cons!48649) (t!355689 newBucket!200))) b!4335263))

(declare-fun b!4335268 () Bool)

(declare-fun e!2697622 () Bool)

(declare-fun tp!1328913 () Bool)

(declare-fun tp!1328914 () Bool)

(assert (=> b!4335268 (= e!2697622 (and tp!1328913 tp!1328914))))

(assert (=> b!4334968 (= tp!1328895 e!2697622)))

(assert (= (and b!4334968 ((_ is Cons!48650) (toList!2733 lm!1707))) b!4335268))

(declare-fun b_lambda!128249 () Bool)

(assert (= b_lambda!128221 (or start!418036 b_lambda!128249)))

(declare-fun bs!608517 () Bool)

(declare-fun d!1274363 () Bool)

(assert (= bs!608517 (and d!1274363 start!418036)))

(assert (=> bs!608517 (= (dynLambda!20562 lambda!135537 (tuple2!47873 hash!377 newBucket!200)) (noDuplicateKeys!375 (_2!27230 (tuple2!47873 hash!377 newBucket!200))))))

(declare-fun m!4930129 () Bool)

(assert (=> bs!608517 m!4930129))

(assert (=> b!4335038 d!1274363))

(declare-fun b_lambda!128251 () Bool)

(assert (= b_lambda!128219 (or start!418036 b_lambda!128251)))

(declare-fun bs!608518 () Bool)

(declare-fun d!1274365 () Bool)

(assert (= bs!608518 (and d!1274365 start!418036)))

(assert (=> bs!608518 (= (dynLambda!20562 lambda!135537 (h!54147 (toList!2733 lt!1548243))) (noDuplicateKeys!375 (_2!27230 (h!54147 (toList!2733 lt!1548243)))))))

(declare-fun m!4930131 () Bool)

(assert (=> bs!608518 m!4930131))

(assert (=> b!4334994 d!1274365))

(declare-fun b_lambda!128253 () Bool)

(assert (= b_lambda!128223 (or start!418036 b_lambda!128253)))

(declare-fun bs!608519 () Bool)

(declare-fun d!1274367 () Bool)

(assert (= bs!608519 (and d!1274367 start!418036)))

(assert (=> bs!608519 (= (dynLambda!20562 lambda!135537 (h!54147 (toList!2733 lm!1707))) (noDuplicateKeys!375 (_2!27230 (h!54147 (toList!2733 lm!1707)))))))

(declare-fun m!4930133 () Bool)

(assert (=> bs!608519 m!4930133))

(assert (=> b!4335039 d!1274367))

(declare-fun b_lambda!128255 () Bool)

(assert (= b_lambda!128225 (or start!418036 b_lambda!128255)))

(declare-fun bs!608520 () Bool)

(declare-fun d!1274369 () Bool)

(assert (= bs!608520 (and d!1274369 start!418036)))

(assert (=> bs!608520 (= (dynLambda!20562 lambda!135537 lt!1548244) (noDuplicateKeys!375 (_2!27230 lt!1548244)))))

(declare-fun m!4930135 () Bool)

(assert (=> bs!608520 m!4930135))

(assert (=> d!1274279 d!1274369))

(declare-fun b_lambda!128257 () Bool)

(assert (= b_lambda!128247 (or start!418036 b_lambda!128257)))

(declare-fun bs!608521 () Bool)

(declare-fun d!1274371 () Bool)

(assert (= bs!608521 (and d!1274371 start!418036)))

(assert (=> bs!608521 (= (dynLambda!20562 lambda!135537 (h!54147 (t!355690 (toList!2733 lm!1707)))) (noDuplicateKeys!375 (_2!27230 (h!54147 (t!355690 (toList!2733 lm!1707))))))))

(declare-fun m!4930137 () Bool)

(assert (=> bs!608521 m!4930137))

(assert (=> b!4335206 d!1274371))

(check-sat (not b!4335215) (not d!1274351) (not bm!301262) (not b!4335077) (not b!4335218) (not d!1274281) (not d!1274285) (not d!1274265) (not d!1274279) (not bs!608518) (not b!4335249) (not b_lambda!128255) (not b_lambda!128251) (not d!1274361) (not b!4335224) (not d!1274277) tp_is_empty!24737 (not b!4335060) (not b!4335253) (not b!4335034) (not b_lambda!128253) (not b!4335202) (not d!1274353) (not bm!301252) (not b!4335040) (not b!4334995) (not bs!608519) (not bm!301259) (not b!4335268) (not bm!301254) (not bm!301251) (not b!4335256) (not d!1274275) (not b!4335043) (not b!4335200) (not b!4335064) (not bs!608521) (not d!1274293) (not bs!608520) (not b!4335094) (not d!1274359) (not bm!301253) (not b!4335225) (not b!4335251) (not b!4335211) (not b!4335250) (not bm!301255) (not d!1274291) (not d!1274347) (not b!4335069) (not b!4335049) tp_is_empty!24739 (not d!1274271) (not b!4335216) (not d!1274357) (not b!4335213) (not b!4335199) (not d!1274283) (not b!4335208) (not bm!301257) (not b!4335079) (not b!4335255) (not b!4335210) (not b!4335033) (not d!1274289) (not bm!301258) (not b!4335257) (not bm!301256) (not bs!608517) (not d!1274349) (not d!1274261) (not b!4335263) (not b_lambda!128249) (not b_lambda!128257) (not b!4335254) (not b!4335207) (not b!4335070) (not d!1274355))
(check-sat)

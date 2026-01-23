; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!486020 () Bool)

(assert start!486020)

(declare-fun b!4754793 () Bool)

(declare-fun e!2966187 () Bool)

(declare-fun tp!1350557 () Bool)

(assert (=> b!4754793 (= e!2966187 tp!1350557)))

(declare-fun res!2017025 () Bool)

(declare-fun e!2966188 () Bool)

(assert (=> start!486020 (=> (not res!2017025) (not e!2966188))))

(declare-datatypes ((K!14630 0))(
  ( (K!14631 (val!19975 Int)) )
))
(declare-datatypes ((V!14876 0))(
  ( (V!14877 (val!19976 Int)) )
))
(declare-datatypes ((tuple2!54944 0))(
  ( (tuple2!54945 (_1!30766 K!14630) (_2!30766 V!14876)) )
))
(declare-datatypes ((List!53256 0))(
  ( (Nil!53132) (Cons!53132 (h!59529 tuple2!54944) (t!360600 List!53256)) )
))
(declare-fun l!13029 () List!53256)

(declare-fun key!4572 () K!14630)

(declare-fun containsKey!3598 (List!53256 K!14630) Bool)

(assert (=> start!486020 (= res!2017025 (not (containsKey!3598 l!13029 key!4572)))))

(assert (=> start!486020 e!2966188))

(declare-fun e!2966186 () Bool)

(assert (=> start!486020 e!2966186))

(declare-fun tp_is_empty!32061 () Bool)

(assert (=> start!486020 tp_is_empty!32061))

(declare-fun tp_is_empty!32063 () Bool)

(assert (=> start!486020 tp_is_empty!32063))

(declare-datatypes ((ListMap!5629 0))(
  ( (ListMap!5630 (toList!6160 List!53256)) )
))
(declare-fun lhm!63 () ListMap!5629)

(declare-fun inv!68500 (ListMap!5629) Bool)

(assert (=> start!486020 (and (inv!68500 lhm!63) e!2966187)))

(declare-fun tp!1350556 () Bool)

(declare-fun b!4754794 () Bool)

(assert (=> b!4754794 (= e!2966186 (and tp_is_empty!32061 tp_is_empty!32063 tp!1350556))))

(declare-fun b!4754795 () Bool)

(declare-fun lt!1921400 () tuple2!54944)

(declare-fun lt!1921405 () ListMap!5629)

(declare-fun eq!1257 (ListMap!5629 ListMap!5629) Bool)

(declare-fun +!2426 (ListMap!5629 tuple2!54944) ListMap!5629)

(declare-fun addToMapMapFromBucket!1606 (List!53256 ListMap!5629) ListMap!5629)

(assert (=> b!4754795 (= e!2966188 (not (eq!1257 lt!1921405 (+!2426 (addToMapMapFromBucket!1606 l!13029 lhm!63) lt!1921400))))))

(declare-fun lt!1921403 () ListMap!5629)

(declare-fun lt!1921406 () ListMap!5629)

(assert (=> b!4754795 (eq!1257 lt!1921403 lt!1921406)))

(declare-fun lt!1921399 () ListMap!5629)

(declare-fun lt!1921401 () ListMap!5629)

(declare-datatypes ((Unit!137328 0))(
  ( (Unit!137329) )
))
(declare-fun lt!1921409 () Unit!137328)

(declare-fun lemmaAddToMapFromBucketPreservesEquivalence!126 (ListMap!5629 ListMap!5629 List!53256) Unit!137328)

(assert (=> b!4754795 (= lt!1921409 (lemmaAddToMapFromBucketPreservesEquivalence!126 lt!1921399 lt!1921401 (t!360600 l!13029)))))

(assert (=> b!4754795 (= lt!1921405 lt!1921403)))

(assert (=> b!4754795 (= lt!1921403 (addToMapMapFromBucket!1606 (t!360600 l!13029) lt!1921399))))

(declare-fun lt!1921404 () ListMap!5629)

(assert (=> b!4754795 (= lt!1921405 (addToMapMapFromBucket!1606 l!13029 lt!1921404))))

(declare-fun lt!1921402 () ListMap!5629)

(assert (=> b!4754795 (eq!1257 lt!1921406 (+!2426 (addToMapMapFromBucket!1606 (t!360600 l!13029) lt!1921402) lt!1921400))))

(assert (=> b!4754795 (= lt!1921406 (addToMapMapFromBucket!1606 (t!360600 l!13029) lt!1921401))))

(declare-fun lt!1921407 () Unit!137328)

(declare-fun value!2966 () V!14876)

(declare-fun lemmaAddToMapFromBucketPlusKeyValueIsCommutative!268 (ListMap!5629 K!14630 V!14876 List!53256) Unit!137328)

(assert (=> b!4754795 (= lt!1921407 (lemmaAddToMapFromBucketPlusKeyValueIsCommutative!268 lt!1921402 key!4572 value!2966 (t!360600 l!13029)))))

(assert (=> b!4754795 (eq!1257 lt!1921401 lt!1921399)))

(assert (=> b!4754795 (= lt!1921399 (+!2426 lt!1921404 (h!59529 l!13029)))))

(assert (=> b!4754795 (= lt!1921404 (+!2426 lhm!63 lt!1921400))))

(assert (=> b!4754795 (= lt!1921401 (+!2426 lt!1921402 lt!1921400))))

(assert (=> b!4754795 (= lt!1921400 (tuple2!54945 key!4572 value!2966))))

(declare-fun lt!1921408 () Unit!137328)

(declare-fun addCommutativeForDiffKeys!58 (ListMap!5629 K!14630 V!14876 K!14630 V!14876) Unit!137328)

(assert (=> b!4754795 (= lt!1921408 (addCommutativeForDiffKeys!58 lhm!63 (_1!30766 (h!59529 l!13029)) (_2!30766 (h!59529 l!13029)) key!4572 value!2966))))

(assert (=> b!4754795 (= lt!1921402 (+!2426 lhm!63 (h!59529 l!13029)))))

(declare-fun b!4754796 () Bool)

(declare-fun res!2017027 () Bool)

(assert (=> b!4754796 (=> (not res!2017027) (not e!2966188))))

(get-info :version)

(assert (=> b!4754796 (= res!2017027 ((_ is Cons!53132) l!13029))))

(declare-fun b!4754797 () Bool)

(declare-fun res!2017026 () Bool)

(assert (=> b!4754797 (=> (not res!2017026) (not e!2966188))))

(declare-fun noDuplicateKeys!2192 (List!53256) Bool)

(assert (=> b!4754797 (= res!2017026 (noDuplicateKeys!2192 l!13029))))

(assert (= (and start!486020 res!2017025) b!4754797))

(assert (= (and b!4754797 res!2017026) b!4754796))

(assert (= (and b!4754796 res!2017027) b!4754795))

(assert (= (and start!486020 ((_ is Cons!53132) l!13029)) b!4754794))

(assert (= start!486020 b!4754793))

(declare-fun m!5724001 () Bool)

(assert (=> start!486020 m!5724001))

(declare-fun m!5724003 () Bool)

(assert (=> start!486020 m!5724003))

(declare-fun m!5724005 () Bool)

(assert (=> b!4754795 m!5724005))

(declare-fun m!5724007 () Bool)

(assert (=> b!4754795 m!5724007))

(declare-fun m!5724009 () Bool)

(assert (=> b!4754795 m!5724009))

(declare-fun m!5724011 () Bool)

(assert (=> b!4754795 m!5724011))

(declare-fun m!5724013 () Bool)

(assert (=> b!4754795 m!5724013))

(declare-fun m!5724015 () Bool)

(assert (=> b!4754795 m!5724015))

(declare-fun m!5724017 () Bool)

(assert (=> b!4754795 m!5724017))

(declare-fun m!5724019 () Bool)

(assert (=> b!4754795 m!5724019))

(declare-fun m!5724021 () Bool)

(assert (=> b!4754795 m!5724021))

(declare-fun m!5724023 () Bool)

(assert (=> b!4754795 m!5724023))

(declare-fun m!5724025 () Bool)

(assert (=> b!4754795 m!5724025))

(declare-fun m!5724027 () Bool)

(assert (=> b!4754795 m!5724027))

(declare-fun m!5724029 () Bool)

(assert (=> b!4754795 m!5724029))

(assert (=> b!4754795 m!5724013))

(declare-fun m!5724031 () Bool)

(assert (=> b!4754795 m!5724031))

(assert (=> b!4754795 m!5724019))

(assert (=> b!4754795 m!5724015))

(declare-fun m!5724033 () Bool)

(assert (=> b!4754795 m!5724033))

(declare-fun m!5724035 () Bool)

(assert (=> b!4754795 m!5724035))

(declare-fun m!5724037 () Bool)

(assert (=> b!4754795 m!5724037))

(assert (=> b!4754795 m!5724021))

(declare-fun m!5724039 () Bool)

(assert (=> b!4754795 m!5724039))

(declare-fun m!5724041 () Bool)

(assert (=> b!4754797 m!5724041))

(check-sat tp_is_empty!32061 (not b!4754793) (not start!486020) tp_is_empty!32063 (not b!4754795) (not b!4754797) (not b!4754794))
(check-sat)
(get-model)

(declare-fun d!1520428 () Bool)

(declare-fun res!2017032 () Bool)

(declare-fun e!2966193 () Bool)

(assert (=> d!1520428 (=> res!2017032 e!2966193)))

(assert (=> d!1520428 (= res!2017032 (and ((_ is Cons!53132) l!13029) (= (_1!30766 (h!59529 l!13029)) key!4572)))))

(assert (=> d!1520428 (= (containsKey!3598 l!13029 key!4572) e!2966193)))

(declare-fun b!4754802 () Bool)

(declare-fun e!2966194 () Bool)

(assert (=> b!4754802 (= e!2966193 e!2966194)))

(declare-fun res!2017033 () Bool)

(assert (=> b!4754802 (=> (not res!2017033) (not e!2966194))))

(assert (=> b!4754802 (= res!2017033 ((_ is Cons!53132) l!13029))))

(declare-fun b!4754803 () Bool)

(assert (=> b!4754803 (= e!2966194 (containsKey!3598 (t!360600 l!13029) key!4572))))

(assert (= (and d!1520428 (not res!2017032)) b!4754802))

(assert (= (and b!4754802 res!2017033) b!4754803))

(declare-fun m!5724043 () Bool)

(assert (=> b!4754803 m!5724043))

(assert (=> start!486020 d!1520428))

(declare-fun d!1520430 () Bool)

(declare-fun invariantList!1620 (List!53256) Bool)

(assert (=> d!1520430 (= (inv!68500 lhm!63) (invariantList!1620 (toList!6160 lhm!63)))))

(declare-fun bs!1146356 () Bool)

(assert (= bs!1146356 d!1520430))

(declare-fun m!5724045 () Bool)

(assert (=> bs!1146356 m!5724045))

(assert (=> start!486020 d!1520430))

(declare-fun d!1520432 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!9557 (List!53256) (InoxSet tuple2!54944))

(assert (=> d!1520432 (= (eq!1257 lt!1921403 lt!1921406) (= (content!9557 (toList!6160 lt!1921403)) (content!9557 (toList!6160 lt!1921406))))))

(declare-fun bs!1146357 () Bool)

(assert (= bs!1146357 d!1520432))

(declare-fun m!5724047 () Bool)

(assert (=> bs!1146357 m!5724047))

(declare-fun m!5724049 () Bool)

(assert (=> bs!1146357 m!5724049))

(assert (=> b!4754795 d!1520432))

(declare-fun d!1520434 () Bool)

(declare-fun e!2966197 () Bool)

(assert (=> d!1520434 e!2966197))

(declare-fun res!2017038 () Bool)

(assert (=> d!1520434 (=> (not res!2017038) (not e!2966197))))

(declare-fun lt!1921418 () ListMap!5629)

(declare-fun contains!16564 (ListMap!5629 K!14630) Bool)

(assert (=> d!1520434 (= res!2017038 (contains!16564 lt!1921418 (_1!30766 (h!59529 l!13029))))))

(declare-fun lt!1921421 () List!53256)

(assert (=> d!1520434 (= lt!1921418 (ListMap!5630 lt!1921421))))

(declare-fun lt!1921419 () Unit!137328)

(declare-fun lt!1921420 () Unit!137328)

(assert (=> d!1520434 (= lt!1921419 lt!1921420)))

(declare-datatypes ((Option!12557 0))(
  ( (None!12556) (Some!12556 (v!47257 V!14876)) )
))
(declare-fun getValueByKey!2107 (List!53256 K!14630) Option!12557)

(assert (=> d!1520434 (= (getValueByKey!2107 lt!1921421 (_1!30766 (h!59529 l!13029))) (Some!12556 (_2!30766 (h!59529 l!13029))))))

(declare-fun lemmaContainsTupThenGetReturnValue!1184 (List!53256 K!14630 V!14876) Unit!137328)

(assert (=> d!1520434 (= lt!1921420 (lemmaContainsTupThenGetReturnValue!1184 lt!1921421 (_1!30766 (h!59529 l!13029)) (_2!30766 (h!59529 l!13029))))))

(declare-fun insertNoDuplicatedKeys!692 (List!53256 K!14630 V!14876) List!53256)

(assert (=> d!1520434 (= lt!1921421 (insertNoDuplicatedKeys!692 (toList!6160 lt!1921404) (_1!30766 (h!59529 l!13029)) (_2!30766 (h!59529 l!13029))))))

(assert (=> d!1520434 (= (+!2426 lt!1921404 (h!59529 l!13029)) lt!1921418)))

(declare-fun b!4754808 () Bool)

(declare-fun res!2017039 () Bool)

(assert (=> b!4754808 (=> (not res!2017039) (not e!2966197))))

(assert (=> b!4754808 (= res!2017039 (= (getValueByKey!2107 (toList!6160 lt!1921418) (_1!30766 (h!59529 l!13029))) (Some!12556 (_2!30766 (h!59529 l!13029)))))))

(declare-fun b!4754809 () Bool)

(declare-fun contains!16565 (List!53256 tuple2!54944) Bool)

(assert (=> b!4754809 (= e!2966197 (contains!16565 (toList!6160 lt!1921418) (h!59529 l!13029)))))

(assert (= (and d!1520434 res!2017038) b!4754808))

(assert (= (and b!4754808 res!2017039) b!4754809))

(declare-fun m!5724051 () Bool)

(assert (=> d!1520434 m!5724051))

(declare-fun m!5724053 () Bool)

(assert (=> d!1520434 m!5724053))

(declare-fun m!5724055 () Bool)

(assert (=> d!1520434 m!5724055))

(declare-fun m!5724057 () Bool)

(assert (=> d!1520434 m!5724057))

(declare-fun m!5724059 () Bool)

(assert (=> b!4754808 m!5724059))

(declare-fun m!5724061 () Bool)

(assert (=> b!4754809 m!5724061))

(assert (=> b!4754795 d!1520434))

(declare-fun d!1520436 () Bool)

(assert (=> d!1520436 (eq!1257 (addToMapMapFromBucket!1606 (t!360600 l!13029) (+!2426 lt!1921402 (tuple2!54945 key!4572 value!2966))) (+!2426 (addToMapMapFromBucket!1606 (t!360600 l!13029) lt!1921402) (tuple2!54945 key!4572 value!2966)))))

(declare-fun lt!1921424 () Unit!137328)

(declare-fun choose!33879 (ListMap!5629 K!14630 V!14876 List!53256) Unit!137328)

(assert (=> d!1520436 (= lt!1921424 (choose!33879 lt!1921402 key!4572 value!2966 (t!360600 l!13029)))))

(assert (=> d!1520436 (not (containsKey!3598 (t!360600 l!13029) key!4572))))

(assert (=> d!1520436 (= (lemmaAddToMapFromBucketPlusKeyValueIsCommutative!268 lt!1921402 key!4572 value!2966 (t!360600 l!13029)) lt!1921424)))

(declare-fun bs!1146358 () Bool)

(assert (= bs!1146358 d!1520436))

(declare-fun m!5724063 () Bool)

(assert (=> bs!1146358 m!5724063))

(declare-fun m!5724065 () Bool)

(assert (=> bs!1146358 m!5724065))

(assert (=> bs!1146358 m!5724013))

(assert (=> bs!1146358 m!5724043))

(assert (=> bs!1146358 m!5724013))

(declare-fun m!5724067 () Bool)

(assert (=> bs!1146358 m!5724067))

(declare-fun m!5724069 () Bool)

(assert (=> bs!1146358 m!5724069))

(assert (=> bs!1146358 m!5724065))

(assert (=> bs!1146358 m!5724067))

(declare-fun m!5724071 () Bool)

(assert (=> bs!1146358 m!5724071))

(assert (=> bs!1146358 m!5724063))

(assert (=> b!4754795 d!1520436))

(declare-fun d!1520438 () Bool)

(declare-fun e!2966198 () Bool)

(assert (=> d!1520438 e!2966198))

(declare-fun res!2017040 () Bool)

(assert (=> d!1520438 (=> (not res!2017040) (not e!2966198))))

(declare-fun lt!1921425 () ListMap!5629)

(assert (=> d!1520438 (= res!2017040 (contains!16564 lt!1921425 (_1!30766 lt!1921400)))))

(declare-fun lt!1921428 () List!53256)

(assert (=> d!1520438 (= lt!1921425 (ListMap!5630 lt!1921428))))

(declare-fun lt!1921426 () Unit!137328)

(declare-fun lt!1921427 () Unit!137328)

(assert (=> d!1520438 (= lt!1921426 lt!1921427)))

(assert (=> d!1520438 (= (getValueByKey!2107 lt!1921428 (_1!30766 lt!1921400)) (Some!12556 (_2!30766 lt!1921400)))))

(assert (=> d!1520438 (= lt!1921427 (lemmaContainsTupThenGetReturnValue!1184 lt!1921428 (_1!30766 lt!1921400) (_2!30766 lt!1921400)))))

(assert (=> d!1520438 (= lt!1921428 (insertNoDuplicatedKeys!692 (toList!6160 lhm!63) (_1!30766 lt!1921400) (_2!30766 lt!1921400)))))

(assert (=> d!1520438 (= (+!2426 lhm!63 lt!1921400) lt!1921425)))

(declare-fun b!4754810 () Bool)

(declare-fun res!2017041 () Bool)

(assert (=> b!4754810 (=> (not res!2017041) (not e!2966198))))

(assert (=> b!4754810 (= res!2017041 (= (getValueByKey!2107 (toList!6160 lt!1921425) (_1!30766 lt!1921400)) (Some!12556 (_2!30766 lt!1921400))))))

(declare-fun b!4754811 () Bool)

(assert (=> b!4754811 (= e!2966198 (contains!16565 (toList!6160 lt!1921425) lt!1921400))))

(assert (= (and d!1520438 res!2017040) b!4754810))

(assert (= (and b!4754810 res!2017041) b!4754811))

(declare-fun m!5724073 () Bool)

(assert (=> d!1520438 m!5724073))

(declare-fun m!5724075 () Bool)

(assert (=> d!1520438 m!5724075))

(declare-fun m!5724077 () Bool)

(assert (=> d!1520438 m!5724077))

(declare-fun m!5724079 () Bool)

(assert (=> d!1520438 m!5724079))

(declare-fun m!5724081 () Bool)

(assert (=> b!4754810 m!5724081))

(declare-fun m!5724083 () Bool)

(assert (=> b!4754811 m!5724083))

(assert (=> b!4754795 d!1520438))

(declare-fun d!1520440 () Bool)

(assert (=> d!1520440 (= (eq!1257 lt!1921401 lt!1921399) (= (content!9557 (toList!6160 lt!1921401)) (content!9557 (toList!6160 lt!1921399))))))

(declare-fun bs!1146359 () Bool)

(assert (= bs!1146359 d!1520440))

(declare-fun m!5724085 () Bool)

(assert (=> bs!1146359 m!5724085))

(declare-fun m!5724087 () Bool)

(assert (=> bs!1146359 m!5724087))

(assert (=> b!4754795 d!1520440))

(declare-fun b!4754895 () Bool)

(assert (=> b!4754895 true))

(declare-fun bs!1146473 () Bool)

(declare-fun b!4754897 () Bool)

(assert (= bs!1146473 (and b!4754897 b!4754895)))

(declare-fun lambda!223142 () Int)

(declare-fun lambda!223141 () Int)

(assert (=> bs!1146473 (= lambda!223142 lambda!223141)))

(assert (=> b!4754897 true))

(declare-fun lt!1921668 () ListMap!5629)

(declare-fun lambda!223143 () Int)

(assert (=> bs!1146473 (= (= lt!1921668 lt!1921399) (= lambda!223143 lambda!223141))))

(assert (=> b!4754897 (= (= lt!1921668 lt!1921399) (= lambda!223143 lambda!223142))))

(assert (=> b!4754897 true))

(declare-fun bs!1146474 () Bool)

(declare-fun d!1520442 () Bool)

(assert (= bs!1146474 (and d!1520442 b!4754895)))

(declare-fun lambda!223144 () Int)

(declare-fun lt!1921665 () ListMap!5629)

(assert (=> bs!1146474 (= (= lt!1921665 lt!1921399) (= lambda!223144 lambda!223141))))

(declare-fun bs!1146475 () Bool)

(assert (= bs!1146475 (and d!1520442 b!4754897)))

(assert (=> bs!1146475 (= (= lt!1921665 lt!1921399) (= lambda!223144 lambda!223142))))

(assert (=> bs!1146475 (= (= lt!1921665 lt!1921668) (= lambda!223144 lambda!223143))))

(assert (=> d!1520442 true))

(declare-fun lt!1921667 () ListMap!5629)

(declare-fun bm!333422 () Bool)

(declare-fun call!333427 () Bool)

(declare-fun c!811633 () Bool)

(declare-fun forall!11782 (List!53256 Int) Bool)

(assert (=> bm!333422 (= call!333427 (forall!11782 (ite c!811633 (toList!6160 lt!1921399) (toList!6160 lt!1921667)) (ite c!811633 lambda!223141 lambda!223143)))))

(declare-fun e!2966252 () Bool)

(assert (=> d!1520442 e!2966252))

(declare-fun res!2017098 () Bool)

(assert (=> d!1520442 (=> (not res!2017098) (not e!2966252))))

(assert (=> d!1520442 (= res!2017098 (forall!11782 (t!360600 l!13029) lambda!223144))))

(declare-fun e!2966250 () ListMap!5629)

(assert (=> d!1520442 (= lt!1921665 e!2966250)))

(assert (=> d!1520442 (= c!811633 ((_ is Nil!53132) (t!360600 l!13029)))))

(assert (=> d!1520442 (noDuplicateKeys!2192 (t!360600 l!13029))))

(assert (=> d!1520442 (= (addToMapMapFromBucket!1606 (t!360600 l!13029) lt!1921399) lt!1921665)))

(declare-fun call!333429 () Bool)

(declare-fun bm!333423 () Bool)

(assert (=> bm!333423 (= call!333429 (forall!11782 (toList!6160 lt!1921399) (ite c!811633 lambda!223141 lambda!223142)))))

(declare-fun bm!333424 () Bool)

(declare-fun call!333428 () Unit!137328)

(declare-fun lemmaContainsAllItsOwnKeys!897 (ListMap!5629) Unit!137328)

(assert (=> bm!333424 (= call!333428 (lemmaContainsAllItsOwnKeys!897 lt!1921399))))

(declare-fun b!4754893 () Bool)

(declare-fun e!2966251 () Bool)

(assert (=> b!4754893 (= e!2966251 (forall!11782 (toList!6160 lt!1921399) lambda!223143))))

(declare-fun b!4754894 () Bool)

(declare-fun res!2017099 () Bool)

(assert (=> b!4754894 (=> (not res!2017099) (not e!2966252))))

(assert (=> b!4754894 (= res!2017099 (forall!11782 (toList!6160 lt!1921399) lambda!223144))))

(assert (=> b!4754895 (= e!2966250 lt!1921399)))

(declare-fun lt!1921669 () Unit!137328)

(assert (=> b!4754895 (= lt!1921669 call!333428)))

(assert (=> b!4754895 call!333427))

(declare-fun lt!1921661 () Unit!137328)

(assert (=> b!4754895 (= lt!1921661 lt!1921669)))

(assert (=> b!4754895 call!333429))

(declare-fun lt!1921676 () Unit!137328)

(declare-fun Unit!137362 () Unit!137328)

(assert (=> b!4754895 (= lt!1921676 Unit!137362)))

(declare-fun b!4754896 () Bool)

(assert (=> b!4754896 (= e!2966252 (invariantList!1620 (toList!6160 lt!1921665)))))

(assert (=> b!4754897 (= e!2966250 lt!1921668)))

(assert (=> b!4754897 (= lt!1921667 (+!2426 lt!1921399 (h!59529 (t!360600 l!13029))))))

(assert (=> b!4754897 (= lt!1921668 (addToMapMapFromBucket!1606 (t!360600 (t!360600 l!13029)) (+!2426 lt!1921399 (h!59529 (t!360600 l!13029)))))))

(declare-fun lt!1921663 () Unit!137328)

(assert (=> b!4754897 (= lt!1921663 call!333428)))

(assert (=> b!4754897 call!333429))

(declare-fun lt!1921677 () Unit!137328)

(assert (=> b!4754897 (= lt!1921677 lt!1921663)))

(assert (=> b!4754897 (forall!11782 (toList!6160 lt!1921667) lambda!223143)))

(declare-fun lt!1921659 () Unit!137328)

(declare-fun Unit!137363 () Unit!137328)

(assert (=> b!4754897 (= lt!1921659 Unit!137363)))

(assert (=> b!4754897 (forall!11782 (t!360600 (t!360600 l!13029)) lambda!223143)))

(declare-fun lt!1921672 () Unit!137328)

(declare-fun Unit!137365 () Unit!137328)

(assert (=> b!4754897 (= lt!1921672 Unit!137365)))

(declare-fun lt!1921678 () Unit!137328)

(declare-fun Unit!137366 () Unit!137328)

(assert (=> b!4754897 (= lt!1921678 Unit!137366)))

(declare-fun lt!1921673 () Unit!137328)

(declare-fun forallContained!3808 (List!53256 Int tuple2!54944) Unit!137328)

(assert (=> b!4754897 (= lt!1921673 (forallContained!3808 (toList!6160 lt!1921667) lambda!223143 (h!59529 (t!360600 l!13029))))))

(assert (=> b!4754897 (contains!16564 lt!1921667 (_1!30766 (h!59529 (t!360600 l!13029))))))

(declare-fun lt!1921671 () Unit!137328)

(declare-fun Unit!137367 () Unit!137328)

(assert (=> b!4754897 (= lt!1921671 Unit!137367)))

(assert (=> b!4754897 (contains!16564 lt!1921668 (_1!30766 (h!59529 (t!360600 l!13029))))))

(declare-fun lt!1921664 () Unit!137328)

(declare-fun Unit!137368 () Unit!137328)

(assert (=> b!4754897 (= lt!1921664 Unit!137368)))

(assert (=> b!4754897 (forall!11782 (t!360600 l!13029) lambda!223143)))

(declare-fun lt!1921666 () Unit!137328)

(declare-fun Unit!137369 () Unit!137328)

(assert (=> b!4754897 (= lt!1921666 Unit!137369)))

(assert (=> b!4754897 call!333427))

(declare-fun lt!1921662 () Unit!137328)

(declare-fun Unit!137370 () Unit!137328)

(assert (=> b!4754897 (= lt!1921662 Unit!137370)))

(declare-fun lt!1921674 () Unit!137328)

(declare-fun Unit!137371 () Unit!137328)

(assert (=> b!4754897 (= lt!1921674 Unit!137371)))

(declare-fun lt!1921675 () Unit!137328)

(declare-fun addForallContainsKeyThenBeforeAdding!896 (ListMap!5629 ListMap!5629 K!14630 V!14876) Unit!137328)

(assert (=> b!4754897 (= lt!1921675 (addForallContainsKeyThenBeforeAdding!896 lt!1921399 lt!1921668 (_1!30766 (h!59529 (t!360600 l!13029))) (_2!30766 (h!59529 (t!360600 l!13029)))))))

(assert (=> b!4754897 (forall!11782 (toList!6160 lt!1921399) lambda!223143)))

(declare-fun lt!1921670 () Unit!137328)

(assert (=> b!4754897 (= lt!1921670 lt!1921675)))

(assert (=> b!4754897 (forall!11782 (toList!6160 lt!1921399) lambda!223143)))

(declare-fun lt!1921660 () Unit!137328)

(declare-fun Unit!137372 () Unit!137328)

(assert (=> b!4754897 (= lt!1921660 Unit!137372)))

(declare-fun res!2017097 () Bool)

(assert (=> b!4754897 (= res!2017097 (forall!11782 (t!360600 l!13029) lambda!223143))))

(assert (=> b!4754897 (=> (not res!2017097) (not e!2966251))))

(assert (=> b!4754897 e!2966251))

(declare-fun lt!1921679 () Unit!137328)

(declare-fun Unit!137373 () Unit!137328)

(assert (=> b!4754897 (= lt!1921679 Unit!137373)))

(assert (= (and d!1520442 c!811633) b!4754895))

(assert (= (and d!1520442 (not c!811633)) b!4754897))

(assert (= (and b!4754897 res!2017097) b!4754893))

(assert (= (or b!4754895 b!4754897) bm!333423))

(assert (= (or b!4754895 b!4754897) bm!333422))

(assert (= (or b!4754895 b!4754897) bm!333424))

(assert (= (and d!1520442 res!2017098) b!4754894))

(assert (= (and b!4754894 res!2017099) b!4754896))

(declare-fun m!5724355 () Bool)

(assert (=> bm!333424 m!5724355))

(declare-fun m!5724357 () Bool)

(assert (=> bm!333423 m!5724357))

(declare-fun m!5724359 () Bool)

(assert (=> b!4754894 m!5724359))

(declare-fun m!5724361 () Bool)

(assert (=> bm!333422 m!5724361))

(declare-fun m!5724363 () Bool)

(assert (=> b!4754896 m!5724363))

(declare-fun m!5724365 () Bool)

(assert (=> d!1520442 m!5724365))

(declare-fun m!5724367 () Bool)

(assert (=> d!1520442 m!5724367))

(declare-fun m!5724369 () Bool)

(assert (=> b!4754897 m!5724369))

(declare-fun m!5724371 () Bool)

(assert (=> b!4754897 m!5724371))

(declare-fun m!5724373 () Bool)

(assert (=> b!4754897 m!5724373))

(assert (=> b!4754897 m!5724371))

(declare-fun m!5724375 () Bool)

(assert (=> b!4754897 m!5724375))

(declare-fun m!5724377 () Bool)

(assert (=> b!4754897 m!5724377))

(declare-fun m!5724379 () Bool)

(assert (=> b!4754897 m!5724379))

(assert (=> b!4754897 m!5724375))

(declare-fun m!5724381 () Bool)

(assert (=> b!4754897 m!5724381))

(assert (=> b!4754897 m!5724377))

(declare-fun m!5724383 () Bool)

(assert (=> b!4754897 m!5724383))

(declare-fun m!5724385 () Bool)

(assert (=> b!4754897 m!5724385))

(declare-fun m!5724387 () Bool)

(assert (=> b!4754897 m!5724387))

(assert (=> b!4754893 m!5724377))

(assert (=> b!4754795 d!1520442))

(declare-fun bs!1146476 () Bool)

(declare-fun b!4754902 () Bool)

(assert (= bs!1146476 (and b!4754902 b!4754895)))

(declare-fun lambda!223145 () Int)

(assert (=> bs!1146476 (= (= lhm!63 lt!1921399) (= lambda!223145 lambda!223141))))

(declare-fun bs!1146477 () Bool)

(assert (= bs!1146477 (and b!4754902 b!4754897)))

(assert (=> bs!1146477 (= (= lhm!63 lt!1921399) (= lambda!223145 lambda!223142))))

(assert (=> bs!1146477 (= (= lhm!63 lt!1921668) (= lambda!223145 lambda!223143))))

(declare-fun bs!1146478 () Bool)

(assert (= bs!1146478 (and b!4754902 d!1520442)))

(assert (=> bs!1146478 (= (= lhm!63 lt!1921665) (= lambda!223145 lambda!223144))))

(assert (=> b!4754902 true))

(declare-fun bs!1146479 () Bool)

(declare-fun b!4754904 () Bool)

(assert (= bs!1146479 (and b!4754904 d!1520442)))

(declare-fun lambda!223146 () Int)

(assert (=> bs!1146479 (= (= lhm!63 lt!1921665) (= lambda!223146 lambda!223144))))

(declare-fun bs!1146480 () Bool)

(assert (= bs!1146480 (and b!4754904 b!4754897)))

(assert (=> bs!1146480 (= (= lhm!63 lt!1921668) (= lambda!223146 lambda!223143))))

(declare-fun bs!1146481 () Bool)

(assert (= bs!1146481 (and b!4754904 b!4754895)))

(assert (=> bs!1146481 (= (= lhm!63 lt!1921399) (= lambda!223146 lambda!223141))))

(declare-fun bs!1146482 () Bool)

(assert (= bs!1146482 (and b!4754904 b!4754902)))

(assert (=> bs!1146482 (= lambda!223146 lambda!223145)))

(assert (=> bs!1146480 (= (= lhm!63 lt!1921399) (= lambda!223146 lambda!223142))))

(assert (=> b!4754904 true))

(declare-fun lt!1921689 () ListMap!5629)

(declare-fun lambda!223147 () Int)

(assert (=> bs!1146479 (= (= lt!1921689 lt!1921665) (= lambda!223147 lambda!223144))))

(assert (=> bs!1146480 (= (= lt!1921689 lt!1921668) (= lambda!223147 lambda!223143))))

(assert (=> bs!1146481 (= (= lt!1921689 lt!1921399) (= lambda!223147 lambda!223141))))

(assert (=> bs!1146482 (= (= lt!1921689 lhm!63) (= lambda!223147 lambda!223145))))

(assert (=> bs!1146480 (= (= lt!1921689 lt!1921399) (= lambda!223147 lambda!223142))))

(assert (=> b!4754904 (= (= lt!1921689 lhm!63) (= lambda!223147 lambda!223146))))

(assert (=> b!4754904 true))

(declare-fun bs!1146483 () Bool)

(declare-fun d!1520484 () Bool)

(assert (= bs!1146483 (and d!1520484 b!4754904)))

(declare-fun lambda!223148 () Int)

(declare-fun lt!1921686 () ListMap!5629)

(assert (=> bs!1146483 (= (= lt!1921686 lt!1921689) (= lambda!223148 lambda!223147))))

(declare-fun bs!1146484 () Bool)

(assert (= bs!1146484 (and d!1520484 d!1520442)))

(assert (=> bs!1146484 (= (= lt!1921686 lt!1921665) (= lambda!223148 lambda!223144))))

(declare-fun bs!1146485 () Bool)

(assert (= bs!1146485 (and d!1520484 b!4754897)))

(assert (=> bs!1146485 (= (= lt!1921686 lt!1921668) (= lambda!223148 lambda!223143))))

(declare-fun bs!1146486 () Bool)

(assert (= bs!1146486 (and d!1520484 b!4754895)))

(assert (=> bs!1146486 (= (= lt!1921686 lt!1921399) (= lambda!223148 lambda!223141))))

(declare-fun bs!1146487 () Bool)

(assert (= bs!1146487 (and d!1520484 b!4754902)))

(assert (=> bs!1146487 (= (= lt!1921686 lhm!63) (= lambda!223148 lambda!223145))))

(assert (=> bs!1146485 (= (= lt!1921686 lt!1921399) (= lambda!223148 lambda!223142))))

(assert (=> bs!1146483 (= (= lt!1921686 lhm!63) (= lambda!223148 lambda!223146))))

(assert (=> d!1520484 true))

(declare-fun call!333430 () Bool)

(declare-fun c!811634 () Bool)

(declare-fun lt!1921688 () ListMap!5629)

(declare-fun bm!333425 () Bool)

(assert (=> bm!333425 (= call!333430 (forall!11782 (ite c!811634 (toList!6160 lhm!63) (toList!6160 lt!1921688)) (ite c!811634 lambda!223145 lambda!223147)))))

(declare-fun e!2966255 () Bool)

(assert (=> d!1520484 e!2966255))

(declare-fun res!2017101 () Bool)

(assert (=> d!1520484 (=> (not res!2017101) (not e!2966255))))

(assert (=> d!1520484 (= res!2017101 (forall!11782 l!13029 lambda!223148))))

(declare-fun e!2966253 () ListMap!5629)

(assert (=> d!1520484 (= lt!1921686 e!2966253)))

(assert (=> d!1520484 (= c!811634 ((_ is Nil!53132) l!13029))))

(assert (=> d!1520484 (noDuplicateKeys!2192 l!13029)))

(assert (=> d!1520484 (= (addToMapMapFromBucket!1606 l!13029 lhm!63) lt!1921686)))

(declare-fun call!333432 () Bool)

(declare-fun bm!333426 () Bool)

(assert (=> bm!333426 (= call!333432 (forall!11782 (toList!6160 lhm!63) (ite c!811634 lambda!223145 lambda!223146)))))

(declare-fun bm!333427 () Bool)

(declare-fun call!333431 () Unit!137328)

(assert (=> bm!333427 (= call!333431 (lemmaContainsAllItsOwnKeys!897 lhm!63))))

(declare-fun b!4754900 () Bool)

(declare-fun e!2966254 () Bool)

(assert (=> b!4754900 (= e!2966254 (forall!11782 (toList!6160 lhm!63) lambda!223147))))

(declare-fun b!4754901 () Bool)

(declare-fun res!2017102 () Bool)

(assert (=> b!4754901 (=> (not res!2017102) (not e!2966255))))

(assert (=> b!4754901 (= res!2017102 (forall!11782 (toList!6160 lhm!63) lambda!223148))))

(assert (=> b!4754902 (= e!2966253 lhm!63)))

(declare-fun lt!1921690 () Unit!137328)

(assert (=> b!4754902 (= lt!1921690 call!333431)))

(assert (=> b!4754902 call!333430))

(declare-fun lt!1921682 () Unit!137328)

(assert (=> b!4754902 (= lt!1921682 lt!1921690)))

(assert (=> b!4754902 call!333432))

(declare-fun lt!1921697 () Unit!137328)

(declare-fun Unit!137374 () Unit!137328)

(assert (=> b!4754902 (= lt!1921697 Unit!137374)))

(declare-fun b!4754903 () Bool)

(assert (=> b!4754903 (= e!2966255 (invariantList!1620 (toList!6160 lt!1921686)))))

(assert (=> b!4754904 (= e!2966253 lt!1921689)))

(assert (=> b!4754904 (= lt!1921688 (+!2426 lhm!63 (h!59529 l!13029)))))

(assert (=> b!4754904 (= lt!1921689 (addToMapMapFromBucket!1606 (t!360600 l!13029) (+!2426 lhm!63 (h!59529 l!13029))))))

(declare-fun lt!1921684 () Unit!137328)

(assert (=> b!4754904 (= lt!1921684 call!333431)))

(assert (=> b!4754904 call!333432))

(declare-fun lt!1921698 () Unit!137328)

(assert (=> b!4754904 (= lt!1921698 lt!1921684)))

(assert (=> b!4754904 (forall!11782 (toList!6160 lt!1921688) lambda!223147)))

(declare-fun lt!1921680 () Unit!137328)

(declare-fun Unit!137375 () Unit!137328)

(assert (=> b!4754904 (= lt!1921680 Unit!137375)))

(assert (=> b!4754904 (forall!11782 (t!360600 l!13029) lambda!223147)))

(declare-fun lt!1921693 () Unit!137328)

(declare-fun Unit!137376 () Unit!137328)

(assert (=> b!4754904 (= lt!1921693 Unit!137376)))

(declare-fun lt!1921699 () Unit!137328)

(declare-fun Unit!137377 () Unit!137328)

(assert (=> b!4754904 (= lt!1921699 Unit!137377)))

(declare-fun lt!1921694 () Unit!137328)

(assert (=> b!4754904 (= lt!1921694 (forallContained!3808 (toList!6160 lt!1921688) lambda!223147 (h!59529 l!13029)))))

(assert (=> b!4754904 (contains!16564 lt!1921688 (_1!30766 (h!59529 l!13029)))))

(declare-fun lt!1921692 () Unit!137328)

(declare-fun Unit!137378 () Unit!137328)

(assert (=> b!4754904 (= lt!1921692 Unit!137378)))

(assert (=> b!4754904 (contains!16564 lt!1921689 (_1!30766 (h!59529 l!13029)))))

(declare-fun lt!1921685 () Unit!137328)

(declare-fun Unit!137379 () Unit!137328)

(assert (=> b!4754904 (= lt!1921685 Unit!137379)))

(assert (=> b!4754904 (forall!11782 l!13029 lambda!223147)))

(declare-fun lt!1921687 () Unit!137328)

(declare-fun Unit!137380 () Unit!137328)

(assert (=> b!4754904 (= lt!1921687 Unit!137380)))

(assert (=> b!4754904 call!333430))

(declare-fun lt!1921683 () Unit!137328)

(declare-fun Unit!137381 () Unit!137328)

(assert (=> b!4754904 (= lt!1921683 Unit!137381)))

(declare-fun lt!1921695 () Unit!137328)

(declare-fun Unit!137382 () Unit!137328)

(assert (=> b!4754904 (= lt!1921695 Unit!137382)))

(declare-fun lt!1921696 () Unit!137328)

(assert (=> b!4754904 (= lt!1921696 (addForallContainsKeyThenBeforeAdding!896 lhm!63 lt!1921689 (_1!30766 (h!59529 l!13029)) (_2!30766 (h!59529 l!13029))))))

(assert (=> b!4754904 (forall!11782 (toList!6160 lhm!63) lambda!223147)))

(declare-fun lt!1921691 () Unit!137328)

(assert (=> b!4754904 (= lt!1921691 lt!1921696)))

(assert (=> b!4754904 (forall!11782 (toList!6160 lhm!63) lambda!223147)))

(declare-fun lt!1921681 () Unit!137328)

(declare-fun Unit!137383 () Unit!137328)

(assert (=> b!4754904 (= lt!1921681 Unit!137383)))

(declare-fun res!2017100 () Bool)

(assert (=> b!4754904 (= res!2017100 (forall!11782 l!13029 lambda!223147))))

(assert (=> b!4754904 (=> (not res!2017100) (not e!2966254))))

(assert (=> b!4754904 e!2966254))

(declare-fun lt!1921700 () Unit!137328)

(declare-fun Unit!137384 () Unit!137328)

(assert (=> b!4754904 (= lt!1921700 Unit!137384)))

(assert (= (and d!1520484 c!811634) b!4754902))

(assert (= (and d!1520484 (not c!811634)) b!4754904))

(assert (= (and b!4754904 res!2017100) b!4754900))

(assert (= (or b!4754902 b!4754904) bm!333426))

(assert (= (or b!4754902 b!4754904) bm!333425))

(assert (= (or b!4754902 b!4754904) bm!333427))

(assert (= (and d!1520484 res!2017101) b!4754901))

(assert (= (and b!4754901 res!2017102) b!4754903))

(declare-fun m!5724389 () Bool)

(assert (=> bm!333427 m!5724389))

(declare-fun m!5724391 () Bool)

(assert (=> bm!333426 m!5724391))

(declare-fun m!5724393 () Bool)

(assert (=> b!4754901 m!5724393))

(declare-fun m!5724395 () Bool)

(assert (=> bm!333425 m!5724395))

(declare-fun m!5724397 () Bool)

(assert (=> b!4754903 m!5724397))

(declare-fun m!5724399 () Bool)

(assert (=> d!1520484 m!5724399))

(assert (=> d!1520484 m!5724041))

(declare-fun m!5724401 () Bool)

(assert (=> b!4754904 m!5724401))

(declare-fun m!5724403 () Bool)

(assert (=> b!4754904 m!5724403))

(declare-fun m!5724405 () Bool)

(assert (=> b!4754904 m!5724405))

(assert (=> b!4754904 m!5724403))

(assert (=> b!4754904 m!5724009))

(declare-fun m!5724407 () Bool)

(assert (=> b!4754904 m!5724407))

(declare-fun m!5724409 () Bool)

(assert (=> b!4754904 m!5724409))

(assert (=> b!4754904 m!5724009))

(declare-fun m!5724411 () Bool)

(assert (=> b!4754904 m!5724411))

(assert (=> b!4754904 m!5724407))

(declare-fun m!5724413 () Bool)

(assert (=> b!4754904 m!5724413))

(declare-fun m!5724415 () Bool)

(assert (=> b!4754904 m!5724415))

(declare-fun m!5724417 () Bool)

(assert (=> b!4754904 m!5724417))

(assert (=> b!4754900 m!5724407))

(assert (=> b!4754795 d!1520484))

(declare-fun d!1520486 () Bool)

(declare-fun e!2966256 () Bool)

(assert (=> d!1520486 e!2966256))

(declare-fun res!2017103 () Bool)

(assert (=> d!1520486 (=> (not res!2017103) (not e!2966256))))

(declare-fun lt!1921701 () ListMap!5629)

(assert (=> d!1520486 (= res!2017103 (contains!16564 lt!1921701 (_1!30766 lt!1921400)))))

(declare-fun lt!1921704 () List!53256)

(assert (=> d!1520486 (= lt!1921701 (ListMap!5630 lt!1921704))))

(declare-fun lt!1921702 () Unit!137328)

(declare-fun lt!1921703 () Unit!137328)

(assert (=> d!1520486 (= lt!1921702 lt!1921703)))

(assert (=> d!1520486 (= (getValueByKey!2107 lt!1921704 (_1!30766 lt!1921400)) (Some!12556 (_2!30766 lt!1921400)))))

(assert (=> d!1520486 (= lt!1921703 (lemmaContainsTupThenGetReturnValue!1184 lt!1921704 (_1!30766 lt!1921400) (_2!30766 lt!1921400)))))

(assert (=> d!1520486 (= lt!1921704 (insertNoDuplicatedKeys!692 (toList!6160 lt!1921402) (_1!30766 lt!1921400) (_2!30766 lt!1921400)))))

(assert (=> d!1520486 (= (+!2426 lt!1921402 lt!1921400) lt!1921701)))

(declare-fun b!4754905 () Bool)

(declare-fun res!2017104 () Bool)

(assert (=> b!4754905 (=> (not res!2017104) (not e!2966256))))

(assert (=> b!4754905 (= res!2017104 (= (getValueByKey!2107 (toList!6160 lt!1921701) (_1!30766 lt!1921400)) (Some!12556 (_2!30766 lt!1921400))))))

(declare-fun b!4754906 () Bool)

(assert (=> b!4754906 (= e!2966256 (contains!16565 (toList!6160 lt!1921701) lt!1921400))))

(assert (= (and d!1520486 res!2017103) b!4754905))

(assert (= (and b!4754905 res!2017104) b!4754906))

(declare-fun m!5724419 () Bool)

(assert (=> d!1520486 m!5724419))

(declare-fun m!5724421 () Bool)

(assert (=> d!1520486 m!5724421))

(declare-fun m!5724423 () Bool)

(assert (=> d!1520486 m!5724423))

(declare-fun m!5724425 () Bool)

(assert (=> d!1520486 m!5724425))

(declare-fun m!5724427 () Bool)

(assert (=> b!4754905 m!5724427))

(declare-fun m!5724429 () Bool)

(assert (=> b!4754906 m!5724429))

(assert (=> b!4754795 d!1520486))

(declare-fun bs!1146488 () Bool)

(declare-fun b!4754909 () Bool)

(assert (= bs!1146488 (and b!4754909 b!4754904)))

(declare-fun lambda!223149 () Int)

(assert (=> bs!1146488 (= (= lt!1921402 lt!1921689) (= lambda!223149 lambda!223147))))

(declare-fun bs!1146489 () Bool)

(assert (= bs!1146489 (and b!4754909 d!1520442)))

(assert (=> bs!1146489 (= (= lt!1921402 lt!1921665) (= lambda!223149 lambda!223144))))

(declare-fun bs!1146490 () Bool)

(assert (= bs!1146490 (and b!4754909 d!1520484)))

(assert (=> bs!1146490 (= (= lt!1921402 lt!1921686) (= lambda!223149 lambda!223148))))

(declare-fun bs!1146491 () Bool)

(assert (= bs!1146491 (and b!4754909 b!4754897)))

(assert (=> bs!1146491 (= (= lt!1921402 lt!1921668) (= lambda!223149 lambda!223143))))

(declare-fun bs!1146492 () Bool)

(assert (= bs!1146492 (and b!4754909 b!4754895)))

(assert (=> bs!1146492 (= (= lt!1921402 lt!1921399) (= lambda!223149 lambda!223141))))

(declare-fun bs!1146493 () Bool)

(assert (= bs!1146493 (and b!4754909 b!4754902)))

(assert (=> bs!1146493 (= (= lt!1921402 lhm!63) (= lambda!223149 lambda!223145))))

(assert (=> bs!1146491 (= (= lt!1921402 lt!1921399) (= lambda!223149 lambda!223142))))

(assert (=> bs!1146488 (= (= lt!1921402 lhm!63) (= lambda!223149 lambda!223146))))

(assert (=> b!4754909 true))

(declare-fun bs!1146494 () Bool)

(declare-fun b!4754911 () Bool)

(assert (= bs!1146494 (and b!4754911 b!4754904)))

(declare-fun lambda!223150 () Int)

(assert (=> bs!1146494 (= (= lt!1921402 lt!1921689) (= lambda!223150 lambda!223147))))

(declare-fun bs!1146495 () Bool)

(assert (= bs!1146495 (and b!4754911 d!1520442)))

(assert (=> bs!1146495 (= (= lt!1921402 lt!1921665) (= lambda!223150 lambda!223144))))

(declare-fun bs!1146496 () Bool)

(assert (= bs!1146496 (and b!4754911 b!4754909)))

(assert (=> bs!1146496 (= lambda!223150 lambda!223149)))

(declare-fun bs!1146497 () Bool)

(assert (= bs!1146497 (and b!4754911 d!1520484)))

(assert (=> bs!1146497 (= (= lt!1921402 lt!1921686) (= lambda!223150 lambda!223148))))

(declare-fun bs!1146498 () Bool)

(assert (= bs!1146498 (and b!4754911 b!4754897)))

(assert (=> bs!1146498 (= (= lt!1921402 lt!1921668) (= lambda!223150 lambda!223143))))

(declare-fun bs!1146499 () Bool)

(assert (= bs!1146499 (and b!4754911 b!4754895)))

(assert (=> bs!1146499 (= (= lt!1921402 lt!1921399) (= lambda!223150 lambda!223141))))

(declare-fun bs!1146500 () Bool)

(assert (= bs!1146500 (and b!4754911 b!4754902)))

(assert (=> bs!1146500 (= (= lt!1921402 lhm!63) (= lambda!223150 lambda!223145))))

(assert (=> bs!1146498 (= (= lt!1921402 lt!1921399) (= lambda!223150 lambda!223142))))

(assert (=> bs!1146494 (= (= lt!1921402 lhm!63) (= lambda!223150 lambda!223146))))

(assert (=> b!4754911 true))

(declare-fun lt!1921714 () ListMap!5629)

(declare-fun lambda!223151 () Int)

(assert (=> bs!1146494 (= (= lt!1921714 lt!1921689) (= lambda!223151 lambda!223147))))

(assert (=> bs!1146496 (= (= lt!1921714 lt!1921402) (= lambda!223151 lambda!223149))))

(assert (=> bs!1146497 (= (= lt!1921714 lt!1921686) (= lambda!223151 lambda!223148))))

(assert (=> bs!1146498 (= (= lt!1921714 lt!1921668) (= lambda!223151 lambda!223143))))

(assert (=> bs!1146499 (= (= lt!1921714 lt!1921399) (= lambda!223151 lambda!223141))))

(assert (=> bs!1146500 (= (= lt!1921714 lhm!63) (= lambda!223151 lambda!223145))))

(assert (=> bs!1146498 (= (= lt!1921714 lt!1921399) (= lambda!223151 lambda!223142))))

(assert (=> bs!1146494 (= (= lt!1921714 lhm!63) (= lambda!223151 lambda!223146))))

(assert (=> bs!1146495 (= (= lt!1921714 lt!1921665) (= lambda!223151 lambda!223144))))

(assert (=> b!4754911 (= (= lt!1921714 lt!1921402) (= lambda!223151 lambda!223150))))

(assert (=> b!4754911 true))

(declare-fun bs!1146501 () Bool)

(declare-fun d!1520488 () Bool)

(assert (= bs!1146501 (and d!1520488 b!4754909)))

(declare-fun lambda!223152 () Int)

(declare-fun lt!1921711 () ListMap!5629)

(assert (=> bs!1146501 (= (= lt!1921711 lt!1921402) (= lambda!223152 lambda!223149))))

(declare-fun bs!1146502 () Bool)

(assert (= bs!1146502 (and d!1520488 d!1520484)))

(assert (=> bs!1146502 (= (= lt!1921711 lt!1921686) (= lambda!223152 lambda!223148))))

(declare-fun bs!1146503 () Bool)

(assert (= bs!1146503 (and d!1520488 b!4754897)))

(assert (=> bs!1146503 (= (= lt!1921711 lt!1921668) (= lambda!223152 lambda!223143))))

(declare-fun bs!1146504 () Bool)

(assert (= bs!1146504 (and d!1520488 b!4754895)))

(assert (=> bs!1146504 (= (= lt!1921711 lt!1921399) (= lambda!223152 lambda!223141))))

(declare-fun bs!1146505 () Bool)

(assert (= bs!1146505 (and d!1520488 b!4754902)))

(assert (=> bs!1146505 (= (= lt!1921711 lhm!63) (= lambda!223152 lambda!223145))))

(assert (=> bs!1146503 (= (= lt!1921711 lt!1921399) (= lambda!223152 lambda!223142))))

(declare-fun bs!1146506 () Bool)

(assert (= bs!1146506 (and d!1520488 b!4754904)))

(assert (=> bs!1146506 (= (= lt!1921711 lhm!63) (= lambda!223152 lambda!223146))))

(assert (=> bs!1146506 (= (= lt!1921711 lt!1921689) (= lambda!223152 lambda!223147))))

(declare-fun bs!1146507 () Bool)

(assert (= bs!1146507 (and d!1520488 b!4754911)))

(assert (=> bs!1146507 (= (= lt!1921711 lt!1921714) (= lambda!223152 lambda!223151))))

(declare-fun bs!1146508 () Bool)

(assert (= bs!1146508 (and d!1520488 d!1520442)))

(assert (=> bs!1146508 (= (= lt!1921711 lt!1921665) (= lambda!223152 lambda!223144))))

(assert (=> bs!1146507 (= (= lt!1921711 lt!1921402) (= lambda!223152 lambda!223150))))

(assert (=> d!1520488 true))

(declare-fun bm!333428 () Bool)

(declare-fun c!811635 () Bool)

(declare-fun lt!1921713 () ListMap!5629)

(declare-fun call!333433 () Bool)

(assert (=> bm!333428 (= call!333433 (forall!11782 (ite c!811635 (toList!6160 lt!1921402) (toList!6160 lt!1921713)) (ite c!811635 lambda!223149 lambda!223151)))))

(declare-fun e!2966259 () Bool)

(assert (=> d!1520488 e!2966259))

(declare-fun res!2017106 () Bool)

(assert (=> d!1520488 (=> (not res!2017106) (not e!2966259))))

(assert (=> d!1520488 (= res!2017106 (forall!11782 (t!360600 l!13029) lambda!223152))))

(declare-fun e!2966257 () ListMap!5629)

(assert (=> d!1520488 (= lt!1921711 e!2966257)))

(assert (=> d!1520488 (= c!811635 ((_ is Nil!53132) (t!360600 l!13029)))))

(assert (=> d!1520488 (noDuplicateKeys!2192 (t!360600 l!13029))))

(assert (=> d!1520488 (= (addToMapMapFromBucket!1606 (t!360600 l!13029) lt!1921402) lt!1921711)))

(declare-fun call!333435 () Bool)

(declare-fun bm!333429 () Bool)

(assert (=> bm!333429 (= call!333435 (forall!11782 (toList!6160 lt!1921402) (ite c!811635 lambda!223149 lambda!223150)))))

(declare-fun bm!333430 () Bool)

(declare-fun call!333434 () Unit!137328)

(assert (=> bm!333430 (= call!333434 (lemmaContainsAllItsOwnKeys!897 lt!1921402))))

(declare-fun b!4754907 () Bool)

(declare-fun e!2966258 () Bool)

(assert (=> b!4754907 (= e!2966258 (forall!11782 (toList!6160 lt!1921402) lambda!223151))))

(declare-fun b!4754908 () Bool)

(declare-fun res!2017107 () Bool)

(assert (=> b!4754908 (=> (not res!2017107) (not e!2966259))))

(assert (=> b!4754908 (= res!2017107 (forall!11782 (toList!6160 lt!1921402) lambda!223152))))

(assert (=> b!4754909 (= e!2966257 lt!1921402)))

(declare-fun lt!1921715 () Unit!137328)

(assert (=> b!4754909 (= lt!1921715 call!333434)))

(assert (=> b!4754909 call!333433))

(declare-fun lt!1921707 () Unit!137328)

(assert (=> b!4754909 (= lt!1921707 lt!1921715)))

(assert (=> b!4754909 call!333435))

(declare-fun lt!1921722 () Unit!137328)

(declare-fun Unit!137396 () Unit!137328)

(assert (=> b!4754909 (= lt!1921722 Unit!137396)))

(declare-fun b!4754910 () Bool)

(assert (=> b!4754910 (= e!2966259 (invariantList!1620 (toList!6160 lt!1921711)))))

(assert (=> b!4754911 (= e!2966257 lt!1921714)))

(assert (=> b!4754911 (= lt!1921713 (+!2426 lt!1921402 (h!59529 (t!360600 l!13029))))))

(assert (=> b!4754911 (= lt!1921714 (addToMapMapFromBucket!1606 (t!360600 (t!360600 l!13029)) (+!2426 lt!1921402 (h!59529 (t!360600 l!13029)))))))

(declare-fun lt!1921709 () Unit!137328)

(assert (=> b!4754911 (= lt!1921709 call!333434)))

(assert (=> b!4754911 call!333435))

(declare-fun lt!1921723 () Unit!137328)

(assert (=> b!4754911 (= lt!1921723 lt!1921709)))

(assert (=> b!4754911 (forall!11782 (toList!6160 lt!1921713) lambda!223151)))

(declare-fun lt!1921705 () Unit!137328)

(declare-fun Unit!137397 () Unit!137328)

(assert (=> b!4754911 (= lt!1921705 Unit!137397)))

(assert (=> b!4754911 (forall!11782 (t!360600 (t!360600 l!13029)) lambda!223151)))

(declare-fun lt!1921718 () Unit!137328)

(declare-fun Unit!137398 () Unit!137328)

(assert (=> b!4754911 (= lt!1921718 Unit!137398)))

(declare-fun lt!1921724 () Unit!137328)

(declare-fun Unit!137399 () Unit!137328)

(assert (=> b!4754911 (= lt!1921724 Unit!137399)))

(declare-fun lt!1921719 () Unit!137328)

(assert (=> b!4754911 (= lt!1921719 (forallContained!3808 (toList!6160 lt!1921713) lambda!223151 (h!59529 (t!360600 l!13029))))))

(assert (=> b!4754911 (contains!16564 lt!1921713 (_1!30766 (h!59529 (t!360600 l!13029))))))

(declare-fun lt!1921717 () Unit!137328)

(declare-fun Unit!137400 () Unit!137328)

(assert (=> b!4754911 (= lt!1921717 Unit!137400)))

(assert (=> b!4754911 (contains!16564 lt!1921714 (_1!30766 (h!59529 (t!360600 l!13029))))))

(declare-fun lt!1921710 () Unit!137328)

(declare-fun Unit!137401 () Unit!137328)

(assert (=> b!4754911 (= lt!1921710 Unit!137401)))

(assert (=> b!4754911 (forall!11782 (t!360600 l!13029) lambda!223151)))

(declare-fun lt!1921712 () Unit!137328)

(declare-fun Unit!137402 () Unit!137328)

(assert (=> b!4754911 (= lt!1921712 Unit!137402)))

(assert (=> b!4754911 call!333433))

(declare-fun lt!1921708 () Unit!137328)

(declare-fun Unit!137403 () Unit!137328)

(assert (=> b!4754911 (= lt!1921708 Unit!137403)))

(declare-fun lt!1921720 () Unit!137328)

(declare-fun Unit!137404 () Unit!137328)

(assert (=> b!4754911 (= lt!1921720 Unit!137404)))

(declare-fun lt!1921721 () Unit!137328)

(assert (=> b!4754911 (= lt!1921721 (addForallContainsKeyThenBeforeAdding!896 lt!1921402 lt!1921714 (_1!30766 (h!59529 (t!360600 l!13029))) (_2!30766 (h!59529 (t!360600 l!13029)))))))

(assert (=> b!4754911 (forall!11782 (toList!6160 lt!1921402) lambda!223151)))

(declare-fun lt!1921716 () Unit!137328)

(assert (=> b!4754911 (= lt!1921716 lt!1921721)))

(assert (=> b!4754911 (forall!11782 (toList!6160 lt!1921402) lambda!223151)))

(declare-fun lt!1921706 () Unit!137328)

(declare-fun Unit!137405 () Unit!137328)

(assert (=> b!4754911 (= lt!1921706 Unit!137405)))

(declare-fun res!2017105 () Bool)

(assert (=> b!4754911 (= res!2017105 (forall!11782 (t!360600 l!13029) lambda!223151))))

(assert (=> b!4754911 (=> (not res!2017105) (not e!2966258))))

(assert (=> b!4754911 e!2966258))

(declare-fun lt!1921725 () Unit!137328)

(declare-fun Unit!137406 () Unit!137328)

(assert (=> b!4754911 (= lt!1921725 Unit!137406)))

(assert (= (and d!1520488 c!811635) b!4754909))

(assert (= (and d!1520488 (not c!811635)) b!4754911))

(assert (= (and b!4754911 res!2017105) b!4754907))

(assert (= (or b!4754909 b!4754911) bm!333429))

(assert (= (or b!4754909 b!4754911) bm!333428))

(assert (= (or b!4754909 b!4754911) bm!333430))

(assert (= (and d!1520488 res!2017106) b!4754908))

(assert (= (and b!4754908 res!2017107) b!4754910))

(declare-fun m!5724431 () Bool)

(assert (=> bm!333430 m!5724431))

(declare-fun m!5724433 () Bool)

(assert (=> bm!333429 m!5724433))

(declare-fun m!5724435 () Bool)

(assert (=> b!4754908 m!5724435))

(declare-fun m!5724437 () Bool)

(assert (=> bm!333428 m!5724437))

(declare-fun m!5724439 () Bool)

(assert (=> b!4754910 m!5724439))

(declare-fun m!5724441 () Bool)

(assert (=> d!1520488 m!5724441))

(assert (=> d!1520488 m!5724367))

(declare-fun m!5724443 () Bool)

(assert (=> b!4754911 m!5724443))

(declare-fun m!5724445 () Bool)

(assert (=> b!4754911 m!5724445))

(declare-fun m!5724447 () Bool)

(assert (=> b!4754911 m!5724447))

(assert (=> b!4754911 m!5724445))

(declare-fun m!5724449 () Bool)

(assert (=> b!4754911 m!5724449))

(declare-fun m!5724451 () Bool)

(assert (=> b!4754911 m!5724451))

(declare-fun m!5724453 () Bool)

(assert (=> b!4754911 m!5724453))

(assert (=> b!4754911 m!5724449))

(declare-fun m!5724455 () Bool)

(assert (=> b!4754911 m!5724455))

(assert (=> b!4754911 m!5724451))

(declare-fun m!5724457 () Bool)

(assert (=> b!4754911 m!5724457))

(declare-fun m!5724459 () Bool)

(assert (=> b!4754911 m!5724459))

(declare-fun m!5724461 () Bool)

(assert (=> b!4754911 m!5724461))

(assert (=> b!4754907 m!5724451))

(assert (=> b!4754795 d!1520488))

(declare-fun bs!1146509 () Bool)

(declare-fun b!4754914 () Bool)

(assert (= bs!1146509 (and b!4754914 d!1520488)))

(declare-fun lambda!223153 () Int)

(assert (=> bs!1146509 (= (= lt!1921404 lt!1921711) (= lambda!223153 lambda!223152))))

(declare-fun bs!1146510 () Bool)

(assert (= bs!1146510 (and b!4754914 b!4754909)))

(assert (=> bs!1146510 (= (= lt!1921404 lt!1921402) (= lambda!223153 lambda!223149))))

(declare-fun bs!1146511 () Bool)

(assert (= bs!1146511 (and b!4754914 d!1520484)))

(assert (=> bs!1146511 (= (= lt!1921404 lt!1921686) (= lambda!223153 lambda!223148))))

(declare-fun bs!1146512 () Bool)

(assert (= bs!1146512 (and b!4754914 b!4754897)))

(assert (=> bs!1146512 (= (= lt!1921404 lt!1921668) (= lambda!223153 lambda!223143))))

(declare-fun bs!1146513 () Bool)

(assert (= bs!1146513 (and b!4754914 b!4754895)))

(assert (=> bs!1146513 (= (= lt!1921404 lt!1921399) (= lambda!223153 lambda!223141))))

(declare-fun bs!1146514 () Bool)

(assert (= bs!1146514 (and b!4754914 b!4754902)))

(assert (=> bs!1146514 (= (= lt!1921404 lhm!63) (= lambda!223153 lambda!223145))))

(assert (=> bs!1146512 (= (= lt!1921404 lt!1921399) (= lambda!223153 lambda!223142))))

(declare-fun bs!1146515 () Bool)

(assert (= bs!1146515 (and b!4754914 b!4754904)))

(assert (=> bs!1146515 (= (= lt!1921404 lhm!63) (= lambda!223153 lambda!223146))))

(assert (=> bs!1146515 (= (= lt!1921404 lt!1921689) (= lambda!223153 lambda!223147))))

(declare-fun bs!1146516 () Bool)

(assert (= bs!1146516 (and b!4754914 b!4754911)))

(assert (=> bs!1146516 (= (= lt!1921404 lt!1921714) (= lambda!223153 lambda!223151))))

(declare-fun bs!1146517 () Bool)

(assert (= bs!1146517 (and b!4754914 d!1520442)))

(assert (=> bs!1146517 (= (= lt!1921404 lt!1921665) (= lambda!223153 lambda!223144))))

(assert (=> bs!1146516 (= (= lt!1921404 lt!1921402) (= lambda!223153 lambda!223150))))

(assert (=> b!4754914 true))

(declare-fun bs!1146518 () Bool)

(declare-fun b!4754916 () Bool)

(assert (= bs!1146518 (and b!4754916 b!4754914)))

(declare-fun lambda!223154 () Int)

(assert (=> bs!1146518 (= lambda!223154 lambda!223153)))

(declare-fun bs!1146519 () Bool)

(assert (= bs!1146519 (and b!4754916 d!1520488)))

(assert (=> bs!1146519 (= (= lt!1921404 lt!1921711) (= lambda!223154 lambda!223152))))

(declare-fun bs!1146520 () Bool)

(assert (= bs!1146520 (and b!4754916 b!4754909)))

(assert (=> bs!1146520 (= (= lt!1921404 lt!1921402) (= lambda!223154 lambda!223149))))

(declare-fun bs!1146521 () Bool)

(assert (= bs!1146521 (and b!4754916 d!1520484)))

(assert (=> bs!1146521 (= (= lt!1921404 lt!1921686) (= lambda!223154 lambda!223148))))

(declare-fun bs!1146522 () Bool)

(assert (= bs!1146522 (and b!4754916 b!4754897)))

(assert (=> bs!1146522 (= (= lt!1921404 lt!1921668) (= lambda!223154 lambda!223143))))

(declare-fun bs!1146523 () Bool)

(assert (= bs!1146523 (and b!4754916 b!4754895)))

(assert (=> bs!1146523 (= (= lt!1921404 lt!1921399) (= lambda!223154 lambda!223141))))

(declare-fun bs!1146524 () Bool)

(assert (= bs!1146524 (and b!4754916 b!4754902)))

(assert (=> bs!1146524 (= (= lt!1921404 lhm!63) (= lambda!223154 lambda!223145))))

(assert (=> bs!1146522 (= (= lt!1921404 lt!1921399) (= lambda!223154 lambda!223142))))

(declare-fun bs!1146525 () Bool)

(assert (= bs!1146525 (and b!4754916 b!4754904)))

(assert (=> bs!1146525 (= (= lt!1921404 lhm!63) (= lambda!223154 lambda!223146))))

(assert (=> bs!1146525 (= (= lt!1921404 lt!1921689) (= lambda!223154 lambda!223147))))

(declare-fun bs!1146526 () Bool)

(assert (= bs!1146526 (and b!4754916 b!4754911)))

(assert (=> bs!1146526 (= (= lt!1921404 lt!1921714) (= lambda!223154 lambda!223151))))

(declare-fun bs!1146527 () Bool)

(assert (= bs!1146527 (and b!4754916 d!1520442)))

(assert (=> bs!1146527 (= (= lt!1921404 lt!1921665) (= lambda!223154 lambda!223144))))

(assert (=> bs!1146526 (= (= lt!1921404 lt!1921402) (= lambda!223154 lambda!223150))))

(assert (=> b!4754916 true))

(declare-fun lambda!223155 () Int)

(declare-fun lt!1921735 () ListMap!5629)

(assert (=> bs!1146518 (= (= lt!1921735 lt!1921404) (= lambda!223155 lambda!223153))))

(assert (=> bs!1146519 (= (= lt!1921735 lt!1921711) (= lambda!223155 lambda!223152))))

(assert (=> bs!1146520 (= (= lt!1921735 lt!1921402) (= lambda!223155 lambda!223149))))

(assert (=> bs!1146521 (= (= lt!1921735 lt!1921686) (= lambda!223155 lambda!223148))))

(assert (=> bs!1146522 (= (= lt!1921735 lt!1921668) (= lambda!223155 lambda!223143))))

(assert (=> bs!1146523 (= (= lt!1921735 lt!1921399) (= lambda!223155 lambda!223141))))

(assert (=> b!4754916 (= (= lt!1921735 lt!1921404) (= lambda!223155 lambda!223154))))

(assert (=> bs!1146524 (= (= lt!1921735 lhm!63) (= lambda!223155 lambda!223145))))

(assert (=> bs!1146522 (= (= lt!1921735 lt!1921399) (= lambda!223155 lambda!223142))))

(assert (=> bs!1146525 (= (= lt!1921735 lhm!63) (= lambda!223155 lambda!223146))))

(assert (=> bs!1146525 (= (= lt!1921735 lt!1921689) (= lambda!223155 lambda!223147))))

(assert (=> bs!1146526 (= (= lt!1921735 lt!1921714) (= lambda!223155 lambda!223151))))

(assert (=> bs!1146527 (= (= lt!1921735 lt!1921665) (= lambda!223155 lambda!223144))))

(assert (=> bs!1146526 (= (= lt!1921735 lt!1921402) (= lambda!223155 lambda!223150))))

(assert (=> b!4754916 true))

(declare-fun bs!1146528 () Bool)

(declare-fun d!1520490 () Bool)

(assert (= bs!1146528 (and d!1520490 b!4754914)))

(declare-fun lt!1921732 () ListMap!5629)

(declare-fun lambda!223156 () Int)

(assert (=> bs!1146528 (= (= lt!1921732 lt!1921404) (= lambda!223156 lambda!223153))))

(declare-fun bs!1146529 () Bool)

(assert (= bs!1146529 (and d!1520490 d!1520488)))

(assert (=> bs!1146529 (= (= lt!1921732 lt!1921711) (= lambda!223156 lambda!223152))))

(declare-fun bs!1146530 () Bool)

(assert (= bs!1146530 (and d!1520490 b!4754909)))

(assert (=> bs!1146530 (= (= lt!1921732 lt!1921402) (= lambda!223156 lambda!223149))))

(declare-fun bs!1146531 () Bool)

(assert (= bs!1146531 (and d!1520490 d!1520484)))

(assert (=> bs!1146531 (= (= lt!1921732 lt!1921686) (= lambda!223156 lambda!223148))))

(declare-fun bs!1146532 () Bool)

(assert (= bs!1146532 (and d!1520490 b!4754897)))

(assert (=> bs!1146532 (= (= lt!1921732 lt!1921668) (= lambda!223156 lambda!223143))))

(declare-fun bs!1146533 () Bool)

(assert (= bs!1146533 (and d!1520490 b!4754895)))

(assert (=> bs!1146533 (= (= lt!1921732 lt!1921399) (= lambda!223156 lambda!223141))))

(declare-fun bs!1146534 () Bool)

(assert (= bs!1146534 (and d!1520490 b!4754916)))

(assert (=> bs!1146534 (= (= lt!1921732 lt!1921404) (= lambda!223156 lambda!223154))))

(assert (=> bs!1146534 (= (= lt!1921732 lt!1921735) (= lambda!223156 lambda!223155))))

(declare-fun bs!1146535 () Bool)

(assert (= bs!1146535 (and d!1520490 b!4754902)))

(assert (=> bs!1146535 (= (= lt!1921732 lhm!63) (= lambda!223156 lambda!223145))))

(assert (=> bs!1146532 (= (= lt!1921732 lt!1921399) (= lambda!223156 lambda!223142))))

(declare-fun bs!1146536 () Bool)

(assert (= bs!1146536 (and d!1520490 b!4754904)))

(assert (=> bs!1146536 (= (= lt!1921732 lhm!63) (= lambda!223156 lambda!223146))))

(assert (=> bs!1146536 (= (= lt!1921732 lt!1921689) (= lambda!223156 lambda!223147))))

(declare-fun bs!1146537 () Bool)

(assert (= bs!1146537 (and d!1520490 b!4754911)))

(assert (=> bs!1146537 (= (= lt!1921732 lt!1921714) (= lambda!223156 lambda!223151))))

(declare-fun bs!1146538 () Bool)

(assert (= bs!1146538 (and d!1520490 d!1520442)))

(assert (=> bs!1146538 (= (= lt!1921732 lt!1921665) (= lambda!223156 lambda!223144))))

(assert (=> bs!1146537 (= (= lt!1921732 lt!1921402) (= lambda!223156 lambda!223150))))

(assert (=> d!1520490 true))

(declare-fun bm!333431 () Bool)

(declare-fun c!811636 () Bool)

(declare-fun lt!1921734 () ListMap!5629)

(declare-fun call!333436 () Bool)

(assert (=> bm!333431 (= call!333436 (forall!11782 (ite c!811636 (toList!6160 lt!1921404) (toList!6160 lt!1921734)) (ite c!811636 lambda!223153 lambda!223155)))))

(declare-fun e!2966262 () Bool)

(assert (=> d!1520490 e!2966262))

(declare-fun res!2017109 () Bool)

(assert (=> d!1520490 (=> (not res!2017109) (not e!2966262))))

(assert (=> d!1520490 (= res!2017109 (forall!11782 l!13029 lambda!223156))))

(declare-fun e!2966260 () ListMap!5629)

(assert (=> d!1520490 (= lt!1921732 e!2966260)))

(assert (=> d!1520490 (= c!811636 ((_ is Nil!53132) l!13029))))

(assert (=> d!1520490 (noDuplicateKeys!2192 l!13029)))

(assert (=> d!1520490 (= (addToMapMapFromBucket!1606 l!13029 lt!1921404) lt!1921732)))

(declare-fun call!333438 () Bool)

(declare-fun bm!333432 () Bool)

(assert (=> bm!333432 (= call!333438 (forall!11782 (toList!6160 lt!1921404) (ite c!811636 lambda!223153 lambda!223154)))))

(declare-fun bm!333433 () Bool)

(declare-fun call!333437 () Unit!137328)

(assert (=> bm!333433 (= call!333437 (lemmaContainsAllItsOwnKeys!897 lt!1921404))))

(declare-fun b!4754912 () Bool)

(declare-fun e!2966261 () Bool)

(assert (=> b!4754912 (= e!2966261 (forall!11782 (toList!6160 lt!1921404) lambda!223155))))

(declare-fun b!4754913 () Bool)

(declare-fun res!2017110 () Bool)

(assert (=> b!4754913 (=> (not res!2017110) (not e!2966262))))

(assert (=> b!4754913 (= res!2017110 (forall!11782 (toList!6160 lt!1921404) lambda!223156))))

(assert (=> b!4754914 (= e!2966260 lt!1921404)))

(declare-fun lt!1921736 () Unit!137328)

(assert (=> b!4754914 (= lt!1921736 call!333437)))

(assert (=> b!4754914 call!333436))

(declare-fun lt!1921728 () Unit!137328)

(assert (=> b!4754914 (= lt!1921728 lt!1921736)))

(assert (=> b!4754914 call!333438))

(declare-fun lt!1921743 () Unit!137328)

(declare-fun Unit!137418 () Unit!137328)

(assert (=> b!4754914 (= lt!1921743 Unit!137418)))

(declare-fun b!4754915 () Bool)

(assert (=> b!4754915 (= e!2966262 (invariantList!1620 (toList!6160 lt!1921732)))))

(assert (=> b!4754916 (= e!2966260 lt!1921735)))

(assert (=> b!4754916 (= lt!1921734 (+!2426 lt!1921404 (h!59529 l!13029)))))

(assert (=> b!4754916 (= lt!1921735 (addToMapMapFromBucket!1606 (t!360600 l!13029) (+!2426 lt!1921404 (h!59529 l!13029))))))

(declare-fun lt!1921730 () Unit!137328)

(assert (=> b!4754916 (= lt!1921730 call!333437)))

(assert (=> b!4754916 call!333438))

(declare-fun lt!1921744 () Unit!137328)

(assert (=> b!4754916 (= lt!1921744 lt!1921730)))

(assert (=> b!4754916 (forall!11782 (toList!6160 lt!1921734) lambda!223155)))

(declare-fun lt!1921726 () Unit!137328)

(declare-fun Unit!137419 () Unit!137328)

(assert (=> b!4754916 (= lt!1921726 Unit!137419)))

(assert (=> b!4754916 (forall!11782 (t!360600 l!13029) lambda!223155)))

(declare-fun lt!1921739 () Unit!137328)

(declare-fun Unit!137420 () Unit!137328)

(assert (=> b!4754916 (= lt!1921739 Unit!137420)))

(declare-fun lt!1921745 () Unit!137328)

(declare-fun Unit!137421 () Unit!137328)

(assert (=> b!4754916 (= lt!1921745 Unit!137421)))

(declare-fun lt!1921740 () Unit!137328)

(assert (=> b!4754916 (= lt!1921740 (forallContained!3808 (toList!6160 lt!1921734) lambda!223155 (h!59529 l!13029)))))

(assert (=> b!4754916 (contains!16564 lt!1921734 (_1!30766 (h!59529 l!13029)))))

(declare-fun lt!1921738 () Unit!137328)

(declare-fun Unit!137422 () Unit!137328)

(assert (=> b!4754916 (= lt!1921738 Unit!137422)))

(assert (=> b!4754916 (contains!16564 lt!1921735 (_1!30766 (h!59529 l!13029)))))

(declare-fun lt!1921731 () Unit!137328)

(declare-fun Unit!137423 () Unit!137328)

(assert (=> b!4754916 (= lt!1921731 Unit!137423)))

(assert (=> b!4754916 (forall!11782 l!13029 lambda!223155)))

(declare-fun lt!1921733 () Unit!137328)

(declare-fun Unit!137424 () Unit!137328)

(assert (=> b!4754916 (= lt!1921733 Unit!137424)))

(assert (=> b!4754916 call!333436))

(declare-fun lt!1921729 () Unit!137328)

(declare-fun Unit!137425 () Unit!137328)

(assert (=> b!4754916 (= lt!1921729 Unit!137425)))

(declare-fun lt!1921741 () Unit!137328)

(declare-fun Unit!137426 () Unit!137328)

(assert (=> b!4754916 (= lt!1921741 Unit!137426)))

(declare-fun lt!1921742 () Unit!137328)

(assert (=> b!4754916 (= lt!1921742 (addForallContainsKeyThenBeforeAdding!896 lt!1921404 lt!1921735 (_1!30766 (h!59529 l!13029)) (_2!30766 (h!59529 l!13029))))))

(assert (=> b!4754916 (forall!11782 (toList!6160 lt!1921404) lambda!223155)))

(declare-fun lt!1921737 () Unit!137328)

(assert (=> b!4754916 (= lt!1921737 lt!1921742)))

(assert (=> b!4754916 (forall!11782 (toList!6160 lt!1921404) lambda!223155)))

(declare-fun lt!1921727 () Unit!137328)

(declare-fun Unit!137427 () Unit!137328)

(assert (=> b!4754916 (= lt!1921727 Unit!137427)))

(declare-fun res!2017108 () Bool)

(assert (=> b!4754916 (= res!2017108 (forall!11782 l!13029 lambda!223155))))

(assert (=> b!4754916 (=> (not res!2017108) (not e!2966261))))

(assert (=> b!4754916 e!2966261))

(declare-fun lt!1921746 () Unit!137328)

(declare-fun Unit!137428 () Unit!137328)

(assert (=> b!4754916 (= lt!1921746 Unit!137428)))

(assert (= (and d!1520490 c!811636) b!4754914))

(assert (= (and d!1520490 (not c!811636)) b!4754916))

(assert (= (and b!4754916 res!2017108) b!4754912))

(assert (= (or b!4754914 b!4754916) bm!333432))

(assert (= (or b!4754914 b!4754916) bm!333431))

(assert (= (or b!4754914 b!4754916) bm!333433))

(assert (= (and d!1520490 res!2017109) b!4754913))

(assert (= (and b!4754913 res!2017110) b!4754915))

(declare-fun m!5724463 () Bool)

(assert (=> bm!333433 m!5724463))

(declare-fun m!5724465 () Bool)

(assert (=> bm!333432 m!5724465))

(declare-fun m!5724467 () Bool)

(assert (=> b!4754913 m!5724467))

(declare-fun m!5724469 () Bool)

(assert (=> bm!333431 m!5724469))

(declare-fun m!5724471 () Bool)

(assert (=> b!4754915 m!5724471))

(declare-fun m!5724473 () Bool)

(assert (=> d!1520490 m!5724473))

(assert (=> d!1520490 m!5724041))

(declare-fun m!5724475 () Bool)

(assert (=> b!4754916 m!5724475))

(declare-fun m!5724477 () Bool)

(assert (=> b!4754916 m!5724477))

(declare-fun m!5724479 () Bool)

(assert (=> b!4754916 m!5724479))

(assert (=> b!4754916 m!5724477))

(assert (=> b!4754916 m!5724023))

(declare-fun m!5724481 () Bool)

(assert (=> b!4754916 m!5724481))

(declare-fun m!5724483 () Bool)

(assert (=> b!4754916 m!5724483))

(assert (=> b!4754916 m!5724023))

(declare-fun m!5724485 () Bool)

(assert (=> b!4754916 m!5724485))

(assert (=> b!4754916 m!5724481))

(declare-fun m!5724487 () Bool)

(assert (=> b!4754916 m!5724487))

(declare-fun m!5724489 () Bool)

(assert (=> b!4754916 m!5724489))

(declare-fun m!5724491 () Bool)

(assert (=> b!4754916 m!5724491))

(assert (=> b!4754912 m!5724481))

(assert (=> b!4754795 d!1520490))

(declare-fun d!1520492 () Bool)

(declare-fun e!2966263 () Bool)

(assert (=> d!1520492 e!2966263))

(declare-fun res!2017111 () Bool)

(assert (=> d!1520492 (=> (not res!2017111) (not e!2966263))))

(declare-fun lt!1921747 () ListMap!5629)

(assert (=> d!1520492 (= res!2017111 (contains!16564 lt!1921747 (_1!30766 lt!1921400)))))

(declare-fun lt!1921750 () List!53256)

(assert (=> d!1520492 (= lt!1921747 (ListMap!5630 lt!1921750))))

(declare-fun lt!1921748 () Unit!137328)

(declare-fun lt!1921749 () Unit!137328)

(assert (=> d!1520492 (= lt!1921748 lt!1921749)))

(assert (=> d!1520492 (= (getValueByKey!2107 lt!1921750 (_1!30766 lt!1921400)) (Some!12556 (_2!30766 lt!1921400)))))

(assert (=> d!1520492 (= lt!1921749 (lemmaContainsTupThenGetReturnValue!1184 lt!1921750 (_1!30766 lt!1921400) (_2!30766 lt!1921400)))))

(assert (=> d!1520492 (= lt!1921750 (insertNoDuplicatedKeys!692 (toList!6160 (addToMapMapFromBucket!1606 l!13029 lhm!63)) (_1!30766 lt!1921400) (_2!30766 lt!1921400)))))

(assert (=> d!1520492 (= (+!2426 (addToMapMapFromBucket!1606 l!13029 lhm!63) lt!1921400) lt!1921747)))

(declare-fun b!4754917 () Bool)

(declare-fun res!2017112 () Bool)

(assert (=> b!4754917 (=> (not res!2017112) (not e!2966263))))

(assert (=> b!4754917 (= res!2017112 (= (getValueByKey!2107 (toList!6160 lt!1921747) (_1!30766 lt!1921400)) (Some!12556 (_2!30766 lt!1921400))))))

(declare-fun b!4754918 () Bool)

(assert (=> b!4754918 (= e!2966263 (contains!16565 (toList!6160 lt!1921747) lt!1921400))))

(assert (= (and d!1520492 res!2017111) b!4754917))

(assert (= (and b!4754917 res!2017112) b!4754918))

(declare-fun m!5724493 () Bool)

(assert (=> d!1520492 m!5724493))

(declare-fun m!5724495 () Bool)

(assert (=> d!1520492 m!5724495))

(declare-fun m!5724497 () Bool)

(assert (=> d!1520492 m!5724497))

(declare-fun m!5724499 () Bool)

(assert (=> d!1520492 m!5724499))

(declare-fun m!5724501 () Bool)

(assert (=> b!4754917 m!5724501))

(declare-fun m!5724503 () Bool)

(assert (=> b!4754918 m!5724503))

(assert (=> b!4754795 d!1520492))

(declare-fun d!1520494 () Bool)

(assert (=> d!1520494 (eq!1257 (addToMapMapFromBucket!1606 (t!360600 l!13029) lt!1921399) (addToMapMapFromBucket!1606 (t!360600 l!13029) lt!1921401))))

(declare-fun lt!1921753 () Unit!137328)

(declare-fun choose!33882 (ListMap!5629 ListMap!5629 List!53256) Unit!137328)

(assert (=> d!1520494 (= lt!1921753 (choose!33882 lt!1921399 lt!1921401 (t!360600 l!13029)))))

(assert (=> d!1520494 (noDuplicateKeys!2192 (t!360600 l!13029))))

(assert (=> d!1520494 (= (lemmaAddToMapFromBucketPreservesEquivalence!126 lt!1921399 lt!1921401 (t!360600 l!13029)) lt!1921753)))

(declare-fun bs!1146539 () Bool)

(assert (= bs!1146539 d!1520494))

(declare-fun m!5724505 () Bool)

(assert (=> bs!1146539 m!5724505))

(assert (=> bs!1146539 m!5724031))

(assert (=> bs!1146539 m!5724037))

(declare-fun m!5724507 () Bool)

(assert (=> bs!1146539 m!5724507))

(assert (=> bs!1146539 m!5724031))

(assert (=> bs!1146539 m!5724037))

(assert (=> bs!1146539 m!5724367))

(assert (=> b!4754795 d!1520494))

(declare-fun bs!1146540 () Bool)

(declare-fun b!4754921 () Bool)

(assert (= bs!1146540 (and b!4754921 b!4754914)))

(declare-fun lambda!223157 () Int)

(assert (=> bs!1146540 (= (= lt!1921401 lt!1921404) (= lambda!223157 lambda!223153))))

(declare-fun bs!1146541 () Bool)

(assert (= bs!1146541 (and b!4754921 d!1520488)))

(assert (=> bs!1146541 (= (= lt!1921401 lt!1921711) (= lambda!223157 lambda!223152))))

(declare-fun bs!1146542 () Bool)

(assert (= bs!1146542 (and b!4754921 b!4754909)))

(assert (=> bs!1146542 (= (= lt!1921401 lt!1921402) (= lambda!223157 lambda!223149))))

(declare-fun bs!1146543 () Bool)

(assert (= bs!1146543 (and b!4754921 d!1520484)))

(assert (=> bs!1146543 (= (= lt!1921401 lt!1921686) (= lambda!223157 lambda!223148))))

(declare-fun bs!1146544 () Bool)

(assert (= bs!1146544 (and b!4754921 b!4754897)))

(assert (=> bs!1146544 (= (= lt!1921401 lt!1921668) (= lambda!223157 lambda!223143))))

(declare-fun bs!1146545 () Bool)

(assert (= bs!1146545 (and b!4754921 b!4754916)))

(assert (=> bs!1146545 (= (= lt!1921401 lt!1921404) (= lambda!223157 lambda!223154))))

(assert (=> bs!1146545 (= (= lt!1921401 lt!1921735) (= lambda!223157 lambda!223155))))

(declare-fun bs!1146546 () Bool)

(assert (= bs!1146546 (and b!4754921 b!4754902)))

(assert (=> bs!1146546 (= (= lt!1921401 lhm!63) (= lambda!223157 lambda!223145))))

(assert (=> bs!1146544 (= (= lt!1921401 lt!1921399) (= lambda!223157 lambda!223142))))

(declare-fun bs!1146547 () Bool)

(assert (= bs!1146547 (and b!4754921 b!4754904)))

(assert (=> bs!1146547 (= (= lt!1921401 lhm!63) (= lambda!223157 lambda!223146))))

(assert (=> bs!1146547 (= (= lt!1921401 lt!1921689) (= lambda!223157 lambda!223147))))

(declare-fun bs!1146548 () Bool)

(assert (= bs!1146548 (and b!4754921 b!4754911)))

(assert (=> bs!1146548 (= (= lt!1921401 lt!1921714) (= lambda!223157 lambda!223151))))

(declare-fun bs!1146549 () Bool)

(assert (= bs!1146549 (and b!4754921 d!1520442)))

(assert (=> bs!1146549 (= (= lt!1921401 lt!1921665) (= lambda!223157 lambda!223144))))

(assert (=> bs!1146548 (= (= lt!1921401 lt!1921402) (= lambda!223157 lambda!223150))))

(declare-fun bs!1146550 () Bool)

(assert (= bs!1146550 (and b!4754921 d!1520490)))

(assert (=> bs!1146550 (= (= lt!1921401 lt!1921732) (= lambda!223157 lambda!223156))))

(declare-fun bs!1146551 () Bool)

(assert (= bs!1146551 (and b!4754921 b!4754895)))

(assert (=> bs!1146551 (= (= lt!1921401 lt!1921399) (= lambda!223157 lambda!223141))))

(assert (=> b!4754921 true))

(declare-fun bs!1146552 () Bool)

(declare-fun b!4754923 () Bool)

(assert (= bs!1146552 (and b!4754923 b!4754914)))

(declare-fun lambda!223158 () Int)

(assert (=> bs!1146552 (= (= lt!1921401 lt!1921404) (= lambda!223158 lambda!223153))))

(declare-fun bs!1146553 () Bool)

(assert (= bs!1146553 (and b!4754923 d!1520488)))

(assert (=> bs!1146553 (= (= lt!1921401 lt!1921711) (= lambda!223158 lambda!223152))))

(declare-fun bs!1146554 () Bool)

(assert (= bs!1146554 (and b!4754923 b!4754909)))

(assert (=> bs!1146554 (= (= lt!1921401 lt!1921402) (= lambda!223158 lambda!223149))))

(declare-fun bs!1146555 () Bool)

(assert (= bs!1146555 (and b!4754923 d!1520484)))

(assert (=> bs!1146555 (= (= lt!1921401 lt!1921686) (= lambda!223158 lambda!223148))))

(declare-fun bs!1146556 () Bool)

(assert (= bs!1146556 (and b!4754923 b!4754897)))

(assert (=> bs!1146556 (= (= lt!1921401 lt!1921668) (= lambda!223158 lambda!223143))))

(declare-fun bs!1146557 () Bool)

(assert (= bs!1146557 (and b!4754923 b!4754916)))

(assert (=> bs!1146557 (= (= lt!1921401 lt!1921735) (= lambda!223158 lambda!223155))))

(declare-fun bs!1146558 () Bool)

(assert (= bs!1146558 (and b!4754923 b!4754902)))

(assert (=> bs!1146558 (= (= lt!1921401 lhm!63) (= lambda!223158 lambda!223145))))

(assert (=> bs!1146556 (= (= lt!1921401 lt!1921399) (= lambda!223158 lambda!223142))))

(declare-fun bs!1146559 () Bool)

(assert (= bs!1146559 (and b!4754923 b!4754904)))

(assert (=> bs!1146559 (= (= lt!1921401 lhm!63) (= lambda!223158 lambda!223146))))

(assert (=> bs!1146559 (= (= lt!1921401 lt!1921689) (= lambda!223158 lambda!223147))))

(declare-fun bs!1146560 () Bool)

(assert (= bs!1146560 (and b!4754923 b!4754911)))

(assert (=> bs!1146560 (= (= lt!1921401 lt!1921714) (= lambda!223158 lambda!223151))))

(declare-fun bs!1146561 () Bool)

(assert (= bs!1146561 (and b!4754923 d!1520442)))

(assert (=> bs!1146561 (= (= lt!1921401 lt!1921665) (= lambda!223158 lambda!223144))))

(assert (=> bs!1146560 (= (= lt!1921401 lt!1921402) (= lambda!223158 lambda!223150))))

(declare-fun bs!1146562 () Bool)

(assert (= bs!1146562 (and b!4754923 d!1520490)))

(assert (=> bs!1146562 (= (= lt!1921401 lt!1921732) (= lambda!223158 lambda!223156))))

(declare-fun bs!1146563 () Bool)

(assert (= bs!1146563 (and b!4754923 b!4754895)))

(assert (=> bs!1146563 (= (= lt!1921401 lt!1921399) (= lambda!223158 lambda!223141))))

(assert (=> bs!1146557 (= (= lt!1921401 lt!1921404) (= lambda!223158 lambda!223154))))

(declare-fun bs!1146564 () Bool)

(assert (= bs!1146564 (and b!4754923 b!4754921)))

(assert (=> bs!1146564 (= lambda!223158 lambda!223157)))

(assert (=> b!4754923 true))

(declare-fun lt!1921763 () ListMap!5629)

(declare-fun lambda!223159 () Int)

(assert (=> bs!1146552 (= (= lt!1921763 lt!1921404) (= lambda!223159 lambda!223153))))

(assert (=> bs!1146553 (= (= lt!1921763 lt!1921711) (= lambda!223159 lambda!223152))))

(assert (=> bs!1146554 (= (= lt!1921763 lt!1921402) (= lambda!223159 lambda!223149))))

(assert (=> bs!1146555 (= (= lt!1921763 lt!1921686) (= lambda!223159 lambda!223148))))

(assert (=> bs!1146556 (= (= lt!1921763 lt!1921668) (= lambda!223159 lambda!223143))))

(assert (=> b!4754923 (= (= lt!1921763 lt!1921401) (= lambda!223159 lambda!223158))))

(assert (=> bs!1146557 (= (= lt!1921763 lt!1921735) (= lambda!223159 lambda!223155))))

(assert (=> bs!1146558 (= (= lt!1921763 lhm!63) (= lambda!223159 lambda!223145))))

(assert (=> bs!1146556 (= (= lt!1921763 lt!1921399) (= lambda!223159 lambda!223142))))

(assert (=> bs!1146559 (= (= lt!1921763 lhm!63) (= lambda!223159 lambda!223146))))

(assert (=> bs!1146559 (= (= lt!1921763 lt!1921689) (= lambda!223159 lambda!223147))))

(assert (=> bs!1146560 (= (= lt!1921763 lt!1921714) (= lambda!223159 lambda!223151))))

(assert (=> bs!1146561 (= (= lt!1921763 lt!1921665) (= lambda!223159 lambda!223144))))

(assert (=> bs!1146560 (= (= lt!1921763 lt!1921402) (= lambda!223159 lambda!223150))))

(assert (=> bs!1146562 (= (= lt!1921763 lt!1921732) (= lambda!223159 lambda!223156))))

(assert (=> bs!1146563 (= (= lt!1921763 lt!1921399) (= lambda!223159 lambda!223141))))

(assert (=> bs!1146557 (= (= lt!1921763 lt!1921404) (= lambda!223159 lambda!223154))))

(assert (=> bs!1146564 (= (= lt!1921763 lt!1921401) (= lambda!223159 lambda!223157))))

(assert (=> b!4754923 true))

(declare-fun bs!1146565 () Bool)

(declare-fun d!1520496 () Bool)

(assert (= bs!1146565 (and d!1520496 b!4754914)))

(declare-fun lt!1921760 () ListMap!5629)

(declare-fun lambda!223160 () Int)

(assert (=> bs!1146565 (= (= lt!1921760 lt!1921404) (= lambda!223160 lambda!223153))))

(declare-fun bs!1146566 () Bool)

(assert (= bs!1146566 (and d!1520496 b!4754923)))

(assert (=> bs!1146566 (= (= lt!1921760 lt!1921763) (= lambda!223160 lambda!223159))))

(declare-fun bs!1146567 () Bool)

(assert (= bs!1146567 (and d!1520496 d!1520488)))

(assert (=> bs!1146567 (= (= lt!1921760 lt!1921711) (= lambda!223160 lambda!223152))))

(declare-fun bs!1146568 () Bool)

(assert (= bs!1146568 (and d!1520496 b!4754909)))

(assert (=> bs!1146568 (= (= lt!1921760 lt!1921402) (= lambda!223160 lambda!223149))))

(declare-fun bs!1146569 () Bool)

(assert (= bs!1146569 (and d!1520496 d!1520484)))

(assert (=> bs!1146569 (= (= lt!1921760 lt!1921686) (= lambda!223160 lambda!223148))))

(declare-fun bs!1146570 () Bool)

(assert (= bs!1146570 (and d!1520496 b!4754897)))

(assert (=> bs!1146570 (= (= lt!1921760 lt!1921668) (= lambda!223160 lambda!223143))))

(assert (=> bs!1146566 (= (= lt!1921760 lt!1921401) (= lambda!223160 lambda!223158))))

(declare-fun bs!1146571 () Bool)

(assert (= bs!1146571 (and d!1520496 b!4754916)))

(assert (=> bs!1146571 (= (= lt!1921760 lt!1921735) (= lambda!223160 lambda!223155))))

(declare-fun bs!1146572 () Bool)

(assert (= bs!1146572 (and d!1520496 b!4754902)))

(assert (=> bs!1146572 (= (= lt!1921760 lhm!63) (= lambda!223160 lambda!223145))))

(assert (=> bs!1146570 (= (= lt!1921760 lt!1921399) (= lambda!223160 lambda!223142))))

(declare-fun bs!1146573 () Bool)

(assert (= bs!1146573 (and d!1520496 b!4754904)))

(assert (=> bs!1146573 (= (= lt!1921760 lhm!63) (= lambda!223160 lambda!223146))))

(assert (=> bs!1146573 (= (= lt!1921760 lt!1921689) (= lambda!223160 lambda!223147))))

(declare-fun bs!1146574 () Bool)

(assert (= bs!1146574 (and d!1520496 b!4754911)))

(assert (=> bs!1146574 (= (= lt!1921760 lt!1921714) (= lambda!223160 lambda!223151))))

(declare-fun bs!1146575 () Bool)

(assert (= bs!1146575 (and d!1520496 d!1520442)))

(assert (=> bs!1146575 (= (= lt!1921760 lt!1921665) (= lambda!223160 lambda!223144))))

(assert (=> bs!1146574 (= (= lt!1921760 lt!1921402) (= lambda!223160 lambda!223150))))

(declare-fun bs!1146576 () Bool)

(assert (= bs!1146576 (and d!1520496 d!1520490)))

(assert (=> bs!1146576 (= (= lt!1921760 lt!1921732) (= lambda!223160 lambda!223156))))

(declare-fun bs!1146577 () Bool)

(assert (= bs!1146577 (and d!1520496 b!4754895)))

(assert (=> bs!1146577 (= (= lt!1921760 lt!1921399) (= lambda!223160 lambda!223141))))

(assert (=> bs!1146571 (= (= lt!1921760 lt!1921404) (= lambda!223160 lambda!223154))))

(declare-fun bs!1146578 () Bool)

(assert (= bs!1146578 (and d!1520496 b!4754921)))

(assert (=> bs!1146578 (= (= lt!1921760 lt!1921401) (= lambda!223160 lambda!223157))))

(assert (=> d!1520496 true))

(declare-fun lt!1921762 () ListMap!5629)

(declare-fun call!333439 () Bool)

(declare-fun bm!333434 () Bool)

(declare-fun c!811637 () Bool)

(assert (=> bm!333434 (= call!333439 (forall!11782 (ite c!811637 (toList!6160 lt!1921401) (toList!6160 lt!1921762)) (ite c!811637 lambda!223157 lambda!223159)))))

(declare-fun e!2966266 () Bool)

(assert (=> d!1520496 e!2966266))

(declare-fun res!2017114 () Bool)

(assert (=> d!1520496 (=> (not res!2017114) (not e!2966266))))

(assert (=> d!1520496 (= res!2017114 (forall!11782 (t!360600 l!13029) lambda!223160))))

(declare-fun e!2966264 () ListMap!5629)

(assert (=> d!1520496 (= lt!1921760 e!2966264)))

(assert (=> d!1520496 (= c!811637 ((_ is Nil!53132) (t!360600 l!13029)))))

(assert (=> d!1520496 (noDuplicateKeys!2192 (t!360600 l!13029))))

(assert (=> d!1520496 (= (addToMapMapFromBucket!1606 (t!360600 l!13029) lt!1921401) lt!1921760)))

(declare-fun bm!333435 () Bool)

(declare-fun call!333441 () Bool)

(assert (=> bm!333435 (= call!333441 (forall!11782 (toList!6160 lt!1921401) (ite c!811637 lambda!223157 lambda!223158)))))

(declare-fun bm!333436 () Bool)

(declare-fun call!333440 () Unit!137328)

(assert (=> bm!333436 (= call!333440 (lemmaContainsAllItsOwnKeys!897 lt!1921401))))

(declare-fun b!4754919 () Bool)

(declare-fun e!2966265 () Bool)

(assert (=> b!4754919 (= e!2966265 (forall!11782 (toList!6160 lt!1921401) lambda!223159))))

(declare-fun b!4754920 () Bool)

(declare-fun res!2017115 () Bool)

(assert (=> b!4754920 (=> (not res!2017115) (not e!2966266))))

(assert (=> b!4754920 (= res!2017115 (forall!11782 (toList!6160 lt!1921401) lambda!223160))))

(assert (=> b!4754921 (= e!2966264 lt!1921401)))

(declare-fun lt!1921764 () Unit!137328)

(assert (=> b!4754921 (= lt!1921764 call!333440)))

(assert (=> b!4754921 call!333439))

(declare-fun lt!1921756 () Unit!137328)

(assert (=> b!4754921 (= lt!1921756 lt!1921764)))

(assert (=> b!4754921 call!333441))

(declare-fun lt!1921771 () Unit!137328)

(declare-fun Unit!137429 () Unit!137328)

(assert (=> b!4754921 (= lt!1921771 Unit!137429)))

(declare-fun b!4754922 () Bool)

(assert (=> b!4754922 (= e!2966266 (invariantList!1620 (toList!6160 lt!1921760)))))

(assert (=> b!4754923 (= e!2966264 lt!1921763)))

(assert (=> b!4754923 (= lt!1921762 (+!2426 lt!1921401 (h!59529 (t!360600 l!13029))))))

(assert (=> b!4754923 (= lt!1921763 (addToMapMapFromBucket!1606 (t!360600 (t!360600 l!13029)) (+!2426 lt!1921401 (h!59529 (t!360600 l!13029)))))))

(declare-fun lt!1921758 () Unit!137328)

(assert (=> b!4754923 (= lt!1921758 call!333440)))

(assert (=> b!4754923 call!333441))

(declare-fun lt!1921772 () Unit!137328)

(assert (=> b!4754923 (= lt!1921772 lt!1921758)))

(assert (=> b!4754923 (forall!11782 (toList!6160 lt!1921762) lambda!223159)))

(declare-fun lt!1921754 () Unit!137328)

(declare-fun Unit!137430 () Unit!137328)

(assert (=> b!4754923 (= lt!1921754 Unit!137430)))

(assert (=> b!4754923 (forall!11782 (t!360600 (t!360600 l!13029)) lambda!223159)))

(declare-fun lt!1921767 () Unit!137328)

(declare-fun Unit!137431 () Unit!137328)

(assert (=> b!4754923 (= lt!1921767 Unit!137431)))

(declare-fun lt!1921773 () Unit!137328)

(declare-fun Unit!137432 () Unit!137328)

(assert (=> b!4754923 (= lt!1921773 Unit!137432)))

(declare-fun lt!1921768 () Unit!137328)

(assert (=> b!4754923 (= lt!1921768 (forallContained!3808 (toList!6160 lt!1921762) lambda!223159 (h!59529 (t!360600 l!13029))))))

(assert (=> b!4754923 (contains!16564 lt!1921762 (_1!30766 (h!59529 (t!360600 l!13029))))))

(declare-fun lt!1921766 () Unit!137328)

(declare-fun Unit!137433 () Unit!137328)

(assert (=> b!4754923 (= lt!1921766 Unit!137433)))

(assert (=> b!4754923 (contains!16564 lt!1921763 (_1!30766 (h!59529 (t!360600 l!13029))))))

(declare-fun lt!1921759 () Unit!137328)

(declare-fun Unit!137434 () Unit!137328)

(assert (=> b!4754923 (= lt!1921759 Unit!137434)))

(assert (=> b!4754923 (forall!11782 (t!360600 l!13029) lambda!223159)))

(declare-fun lt!1921761 () Unit!137328)

(declare-fun Unit!137435 () Unit!137328)

(assert (=> b!4754923 (= lt!1921761 Unit!137435)))

(assert (=> b!4754923 call!333439))

(declare-fun lt!1921757 () Unit!137328)

(declare-fun Unit!137436 () Unit!137328)

(assert (=> b!4754923 (= lt!1921757 Unit!137436)))

(declare-fun lt!1921769 () Unit!137328)

(declare-fun Unit!137437 () Unit!137328)

(assert (=> b!4754923 (= lt!1921769 Unit!137437)))

(declare-fun lt!1921770 () Unit!137328)

(assert (=> b!4754923 (= lt!1921770 (addForallContainsKeyThenBeforeAdding!896 lt!1921401 lt!1921763 (_1!30766 (h!59529 (t!360600 l!13029))) (_2!30766 (h!59529 (t!360600 l!13029)))))))

(assert (=> b!4754923 (forall!11782 (toList!6160 lt!1921401) lambda!223159)))

(declare-fun lt!1921765 () Unit!137328)

(assert (=> b!4754923 (= lt!1921765 lt!1921770)))

(assert (=> b!4754923 (forall!11782 (toList!6160 lt!1921401) lambda!223159)))

(declare-fun lt!1921755 () Unit!137328)

(declare-fun Unit!137438 () Unit!137328)

(assert (=> b!4754923 (= lt!1921755 Unit!137438)))

(declare-fun res!2017113 () Bool)

(assert (=> b!4754923 (= res!2017113 (forall!11782 (t!360600 l!13029) lambda!223159))))

(assert (=> b!4754923 (=> (not res!2017113) (not e!2966265))))

(assert (=> b!4754923 e!2966265))

(declare-fun lt!1921774 () Unit!137328)

(declare-fun Unit!137439 () Unit!137328)

(assert (=> b!4754923 (= lt!1921774 Unit!137439)))

(assert (= (and d!1520496 c!811637) b!4754921))

(assert (= (and d!1520496 (not c!811637)) b!4754923))

(assert (= (and b!4754923 res!2017113) b!4754919))

(assert (= (or b!4754921 b!4754923) bm!333435))

(assert (= (or b!4754921 b!4754923) bm!333434))

(assert (= (or b!4754921 b!4754923) bm!333436))

(assert (= (and d!1520496 res!2017114) b!4754920))

(assert (= (and b!4754920 res!2017115) b!4754922))

(declare-fun m!5724509 () Bool)

(assert (=> bm!333436 m!5724509))

(declare-fun m!5724511 () Bool)

(assert (=> bm!333435 m!5724511))

(declare-fun m!5724513 () Bool)

(assert (=> b!4754920 m!5724513))

(declare-fun m!5724515 () Bool)

(assert (=> bm!333434 m!5724515))

(declare-fun m!5724517 () Bool)

(assert (=> b!4754922 m!5724517))

(declare-fun m!5724519 () Bool)

(assert (=> d!1520496 m!5724519))

(assert (=> d!1520496 m!5724367))

(declare-fun m!5724521 () Bool)

(assert (=> b!4754923 m!5724521))

(declare-fun m!5724523 () Bool)

(assert (=> b!4754923 m!5724523))

(declare-fun m!5724525 () Bool)

(assert (=> b!4754923 m!5724525))

(assert (=> b!4754923 m!5724523))

(declare-fun m!5724527 () Bool)

(assert (=> b!4754923 m!5724527))

(declare-fun m!5724529 () Bool)

(assert (=> b!4754923 m!5724529))

(declare-fun m!5724531 () Bool)

(assert (=> b!4754923 m!5724531))

(assert (=> b!4754923 m!5724527))

(declare-fun m!5724533 () Bool)

(assert (=> b!4754923 m!5724533))

(assert (=> b!4754923 m!5724529))

(declare-fun m!5724535 () Bool)

(assert (=> b!4754923 m!5724535))

(declare-fun m!5724537 () Bool)

(assert (=> b!4754923 m!5724537))

(declare-fun m!5724539 () Bool)

(assert (=> b!4754923 m!5724539))

(assert (=> b!4754919 m!5724529))

(assert (=> b!4754795 d!1520496))

(declare-fun d!1520498 () Bool)

(declare-fun e!2966267 () Bool)

(assert (=> d!1520498 e!2966267))

(declare-fun res!2017116 () Bool)

(assert (=> d!1520498 (=> (not res!2017116) (not e!2966267))))

(declare-fun lt!1921775 () ListMap!5629)

(assert (=> d!1520498 (= res!2017116 (contains!16564 lt!1921775 (_1!30766 lt!1921400)))))

(declare-fun lt!1921778 () List!53256)

(assert (=> d!1520498 (= lt!1921775 (ListMap!5630 lt!1921778))))

(declare-fun lt!1921776 () Unit!137328)

(declare-fun lt!1921777 () Unit!137328)

(assert (=> d!1520498 (= lt!1921776 lt!1921777)))

(assert (=> d!1520498 (= (getValueByKey!2107 lt!1921778 (_1!30766 lt!1921400)) (Some!12556 (_2!30766 lt!1921400)))))

(assert (=> d!1520498 (= lt!1921777 (lemmaContainsTupThenGetReturnValue!1184 lt!1921778 (_1!30766 lt!1921400) (_2!30766 lt!1921400)))))

(assert (=> d!1520498 (= lt!1921778 (insertNoDuplicatedKeys!692 (toList!6160 (addToMapMapFromBucket!1606 (t!360600 l!13029) lt!1921402)) (_1!30766 lt!1921400) (_2!30766 lt!1921400)))))

(assert (=> d!1520498 (= (+!2426 (addToMapMapFromBucket!1606 (t!360600 l!13029) lt!1921402) lt!1921400) lt!1921775)))

(declare-fun b!4754924 () Bool)

(declare-fun res!2017117 () Bool)

(assert (=> b!4754924 (=> (not res!2017117) (not e!2966267))))

(assert (=> b!4754924 (= res!2017117 (= (getValueByKey!2107 (toList!6160 lt!1921775) (_1!30766 lt!1921400)) (Some!12556 (_2!30766 lt!1921400))))))

(declare-fun b!4754925 () Bool)

(assert (=> b!4754925 (= e!2966267 (contains!16565 (toList!6160 lt!1921775) lt!1921400))))

(assert (= (and d!1520498 res!2017116) b!4754924))

(assert (= (and b!4754924 res!2017117) b!4754925))

(declare-fun m!5724541 () Bool)

(assert (=> d!1520498 m!5724541))

(declare-fun m!5724543 () Bool)

(assert (=> d!1520498 m!5724543))

(declare-fun m!5724545 () Bool)

(assert (=> d!1520498 m!5724545))

(declare-fun m!5724547 () Bool)

(assert (=> d!1520498 m!5724547))

(declare-fun m!5724549 () Bool)

(assert (=> b!4754924 m!5724549))

(declare-fun m!5724551 () Bool)

(assert (=> b!4754925 m!5724551))

(assert (=> b!4754795 d!1520498))

(declare-fun d!1520500 () Bool)

(declare-fun e!2966268 () Bool)

(assert (=> d!1520500 e!2966268))

(declare-fun res!2017118 () Bool)

(assert (=> d!1520500 (=> (not res!2017118) (not e!2966268))))

(declare-fun lt!1921779 () ListMap!5629)

(assert (=> d!1520500 (= res!2017118 (contains!16564 lt!1921779 (_1!30766 (h!59529 l!13029))))))

(declare-fun lt!1921782 () List!53256)

(assert (=> d!1520500 (= lt!1921779 (ListMap!5630 lt!1921782))))

(declare-fun lt!1921780 () Unit!137328)

(declare-fun lt!1921781 () Unit!137328)

(assert (=> d!1520500 (= lt!1921780 lt!1921781)))

(assert (=> d!1520500 (= (getValueByKey!2107 lt!1921782 (_1!30766 (h!59529 l!13029))) (Some!12556 (_2!30766 (h!59529 l!13029))))))

(assert (=> d!1520500 (= lt!1921781 (lemmaContainsTupThenGetReturnValue!1184 lt!1921782 (_1!30766 (h!59529 l!13029)) (_2!30766 (h!59529 l!13029))))))

(assert (=> d!1520500 (= lt!1921782 (insertNoDuplicatedKeys!692 (toList!6160 lhm!63) (_1!30766 (h!59529 l!13029)) (_2!30766 (h!59529 l!13029))))))

(assert (=> d!1520500 (= (+!2426 lhm!63 (h!59529 l!13029)) lt!1921779)))

(declare-fun b!4754926 () Bool)

(declare-fun res!2017119 () Bool)

(assert (=> b!4754926 (=> (not res!2017119) (not e!2966268))))

(assert (=> b!4754926 (= res!2017119 (= (getValueByKey!2107 (toList!6160 lt!1921779) (_1!30766 (h!59529 l!13029))) (Some!12556 (_2!30766 (h!59529 l!13029)))))))

(declare-fun b!4754927 () Bool)

(assert (=> b!4754927 (= e!2966268 (contains!16565 (toList!6160 lt!1921779) (h!59529 l!13029)))))

(assert (= (and d!1520500 res!2017118) b!4754926))

(assert (= (and b!4754926 res!2017119) b!4754927))

(declare-fun m!5724553 () Bool)

(assert (=> d!1520500 m!5724553))

(declare-fun m!5724555 () Bool)

(assert (=> d!1520500 m!5724555))

(declare-fun m!5724557 () Bool)

(assert (=> d!1520500 m!5724557))

(declare-fun m!5724559 () Bool)

(assert (=> d!1520500 m!5724559))

(declare-fun m!5724561 () Bool)

(assert (=> b!4754926 m!5724561))

(declare-fun m!5724563 () Bool)

(assert (=> b!4754927 m!5724563))

(assert (=> b!4754795 d!1520500))

(declare-fun d!1520502 () Bool)

(assert (=> d!1520502 (eq!1257 (+!2426 (+!2426 lhm!63 (tuple2!54945 (_1!30766 (h!59529 l!13029)) (_2!30766 (h!59529 l!13029)))) (tuple2!54945 key!4572 value!2966)) (+!2426 (+!2426 lhm!63 (tuple2!54945 key!4572 value!2966)) (tuple2!54945 (_1!30766 (h!59529 l!13029)) (_2!30766 (h!59529 l!13029)))))))

(declare-fun lt!1921785 () Unit!137328)

(declare-fun choose!33884 (ListMap!5629 K!14630 V!14876 K!14630 V!14876) Unit!137328)

(assert (=> d!1520502 (= lt!1921785 (choose!33884 lhm!63 (_1!30766 (h!59529 l!13029)) (_2!30766 (h!59529 l!13029)) key!4572 value!2966))))

(assert (=> d!1520502 (not (= (_1!30766 (h!59529 l!13029)) key!4572))))

(assert (=> d!1520502 (= (addCommutativeForDiffKeys!58 lhm!63 (_1!30766 (h!59529 l!13029)) (_2!30766 (h!59529 l!13029)) key!4572 value!2966) lt!1921785)))

(declare-fun bs!1146579 () Bool)

(assert (= bs!1146579 d!1520502))

(declare-fun m!5724565 () Bool)

(assert (=> bs!1146579 m!5724565))

(declare-fun m!5724567 () Bool)

(assert (=> bs!1146579 m!5724567))

(declare-fun m!5724569 () Bool)

(assert (=> bs!1146579 m!5724569))

(declare-fun m!5724571 () Bool)

(assert (=> bs!1146579 m!5724571))

(assert (=> bs!1146579 m!5724567))

(declare-fun m!5724573 () Bool)

(assert (=> bs!1146579 m!5724573))

(assert (=> bs!1146579 m!5724571))

(assert (=> bs!1146579 m!5724573))

(declare-fun m!5724575 () Bool)

(assert (=> bs!1146579 m!5724575))

(assert (=> bs!1146579 m!5724569))

(assert (=> b!4754795 d!1520502))

(declare-fun d!1520504 () Bool)

(assert (=> d!1520504 (= (eq!1257 lt!1921405 (+!2426 (addToMapMapFromBucket!1606 l!13029 lhm!63) lt!1921400)) (= (content!9557 (toList!6160 lt!1921405)) (content!9557 (toList!6160 (+!2426 (addToMapMapFromBucket!1606 l!13029 lhm!63) lt!1921400)))))))

(declare-fun bs!1146580 () Bool)

(assert (= bs!1146580 d!1520504))

(declare-fun m!5724577 () Bool)

(assert (=> bs!1146580 m!5724577))

(declare-fun m!5724579 () Bool)

(assert (=> bs!1146580 m!5724579))

(assert (=> b!4754795 d!1520504))

(declare-fun d!1520506 () Bool)

(assert (=> d!1520506 (= (eq!1257 lt!1921406 (+!2426 (addToMapMapFromBucket!1606 (t!360600 l!13029) lt!1921402) lt!1921400)) (= (content!9557 (toList!6160 lt!1921406)) (content!9557 (toList!6160 (+!2426 (addToMapMapFromBucket!1606 (t!360600 l!13029) lt!1921402) lt!1921400)))))))

(declare-fun bs!1146581 () Bool)

(assert (= bs!1146581 d!1520506))

(assert (=> bs!1146581 m!5724049))

(declare-fun m!5724581 () Bool)

(assert (=> bs!1146581 m!5724581))

(assert (=> b!4754795 d!1520506))

(declare-fun d!1520508 () Bool)

(declare-fun res!2017124 () Bool)

(declare-fun e!2966273 () Bool)

(assert (=> d!1520508 (=> res!2017124 e!2966273)))

(assert (=> d!1520508 (= res!2017124 (not ((_ is Cons!53132) l!13029)))))

(assert (=> d!1520508 (= (noDuplicateKeys!2192 l!13029) e!2966273)))

(declare-fun b!4754932 () Bool)

(declare-fun e!2966274 () Bool)

(assert (=> b!4754932 (= e!2966273 e!2966274)))

(declare-fun res!2017125 () Bool)

(assert (=> b!4754932 (=> (not res!2017125) (not e!2966274))))

(assert (=> b!4754932 (= res!2017125 (not (containsKey!3598 (t!360600 l!13029) (_1!30766 (h!59529 l!13029)))))))

(declare-fun b!4754933 () Bool)

(assert (=> b!4754933 (= e!2966274 (noDuplicateKeys!2192 (t!360600 l!13029)))))

(assert (= (and d!1520508 (not res!2017124)) b!4754932))

(assert (= (and b!4754932 res!2017125) b!4754933))

(declare-fun m!5724583 () Bool)

(assert (=> b!4754932 m!5724583))

(assert (=> b!4754933 m!5724367))

(assert (=> b!4754797 d!1520508))

(declare-fun e!2966277 () Bool)

(declare-fun b!4754938 () Bool)

(declare-fun tp!1350564 () Bool)

(assert (=> b!4754938 (= e!2966277 (and tp_is_empty!32061 tp_is_empty!32063 tp!1350564))))

(assert (=> b!4754794 (= tp!1350556 e!2966277)))

(assert (= (and b!4754794 ((_ is Cons!53132) (t!360600 l!13029))) b!4754938))

(declare-fun tp!1350565 () Bool)

(declare-fun e!2966278 () Bool)

(declare-fun b!4754939 () Bool)

(assert (=> b!4754939 (= e!2966278 (and tp_is_empty!32061 tp_is_empty!32063 tp!1350565))))

(assert (=> b!4754793 (= tp!1350557 e!2966278)))

(assert (= (and b!4754793 ((_ is Cons!53132) (toList!6160 lhm!63))) b!4754939))

(check-sat (not b!4754811) (not b!4754894) (not b!4754916) (not d!1520440) (not b!4754932) (not b!4754918) (not b!4754912) (not d!1520486) (not b!4754803) tp_is_empty!32061 (not b!4754933) (not d!1520438) (not b!4754925) (not d!1520442) (not b!4754927) (not d!1520504) (not bm!333434) (not d!1520492) (not b!4754910) (not b!4754810) (not b!4754919) (not b!4754908) (not bm!333432) (not b!4754897) (not b!4754939) (not b!4754896) (not b!4754911) (not b!4754903) (not b!4754924) (not bm!333436) (not b!4754808) (not b!4754809) (not d!1520488) (not bm!333424) (not bm!333431) (not b!4754905) (not bm!333425) (not d!1520484) (not b!4754893) (not b!4754904) (not bm!333430) (not bm!333427) (not bm!333423) (not d!1520502) (not b!4754920) (not bm!333428) (not bm!333429) (not b!4754901) (not b!4754900) (not d!1520432) (not d!1520430) (not d!1520498) (not bm!333426) (not d!1520490) (not bm!333433) (not b!4754915) (not b!4754906) tp_is_empty!32063 (not b!4754907) (not b!4754938) (not d!1520500) (not b!4754922) (not b!4754923) (not b!4754917) (not d!1520436) (not b!4754926) (not bm!333422) (not d!1520496) (not b!4754913) (not d!1520434) (not d!1520506) (not d!1520494) (not bm!333435))
(check-sat)

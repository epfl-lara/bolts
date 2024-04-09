; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!87842 () Bool)

(assert start!87842)

(declare-fun b!1014927 () Bool)

(assert (=> b!1014927 true))

(assert (=> b!1014927 true))

(declare-fun b!1014923 () Bool)

(declare-datatypes ((Unit!33168 0))(
  ( (Unit!33169) )
))
(declare-fun e!570986 () Unit!33168)

(declare-fun Unit!33170 () Unit!33168)

(assert (=> b!1014923 (= e!570986 Unit!33170)))

(declare-fun b!1014924 () Bool)

(declare-fun e!570985 () Bool)

(declare-datatypes ((B!1452 0))(
  ( (B!1453 (val!11810 Int)) )
))
(declare-datatypes ((tuple2!15256 0))(
  ( (tuple2!15257 (_1!7638 (_ BitVec 64)) (_2!7638 B!1452)) )
))
(declare-datatypes ((List!21566 0))(
  ( (Nil!21563) (Cons!21562 (h!22760 tuple2!15256) (t!30575 List!21566)) )
))
(declare-fun l!412 () List!21566)

(declare-fun ListPrimitiveSize!120 (List!21566) Int)

(assert (=> b!1014924 (= e!570985 (>= (ListPrimitiveSize!120 (t!30575 l!412)) (ListPrimitiveSize!120 l!412)))))

(declare-fun lt!448855 () Unit!33168)

(assert (=> b!1014924 (= lt!448855 e!570986)))

(declare-fun c!102750 () Bool)

(declare-datatypes ((List!21567 0))(
  ( (Nil!21564) (Cons!21563 (h!22761 (_ BitVec 64)) (t!30576 List!21567)) )
))
(declare-fun lt!448857 () List!21567)

(declare-fun isEmpty!851 (List!21567) Bool)

(assert (=> b!1014924 (= c!102750 (not (isEmpty!851 lt!448857)))))

(declare-fun value!115 () B!1452)

(declare-fun getKeysOf!57 (List!21566 B!1452) List!21567)

(assert (=> b!1014924 (= lt!448857 (getKeysOf!57 (t!30575 l!412) value!115))))

(declare-fun b!1014925 () Bool)

(declare-fun res!681007 () Bool)

(assert (=> b!1014925 (=> (not res!681007) (not e!570985))))

(assert (=> b!1014925 (= res!681007 (and (not (= (_2!7638 (h!22760 l!412)) value!115)) (is-Cons!21562 l!412)))))

(declare-fun b!1014926 () Bool)

(declare-fun e!570984 () Bool)

(declare-fun tp_is_empty!23519 () Bool)

(declare-fun tp!70581 () Bool)

(assert (=> b!1014926 (= e!570984 (and tp_is_empty!23519 tp!70581))))

(declare-fun lt!448856 () Unit!33168)

(assert (=> b!1014927 (= e!570986 lt!448856)))

(declare-fun lemmaForallGetValueByKeySameWithASmallerHead!47 (List!21566 List!21567 B!1452 tuple2!15256) Unit!33168)

(assert (=> b!1014927 (= lt!448856 (lemmaForallGetValueByKeySameWithASmallerHead!47 (t!30575 l!412) lt!448857 value!115 (h!22760 l!412)))))

(declare-fun lambda!782 () Int)

(declare-fun forall!252 (List!21567 Int) Bool)

(assert (=> b!1014927 (forall!252 lt!448857 lambda!782)))

(declare-fun res!681006 () Bool)

(assert (=> start!87842 (=> (not res!681006) (not e!570985))))

(declare-fun isStrictlySorted!580 (List!21566) Bool)

(assert (=> start!87842 (= res!681006 (isStrictlySorted!580 l!412))))

(assert (=> start!87842 e!570985))

(assert (=> start!87842 e!570984))

(assert (=> start!87842 tp_is_empty!23519))

(assert (= (and start!87842 res!681006) b!1014925))

(assert (= (and b!1014925 res!681007) b!1014924))

(assert (= (and b!1014924 c!102750) b!1014927))

(assert (= (and b!1014924 (not c!102750)) b!1014923))

(assert (= (and start!87842 (is-Cons!21562 l!412)) b!1014926))

(declare-fun m!937387 () Bool)

(assert (=> b!1014924 m!937387))

(declare-fun m!937389 () Bool)

(assert (=> b!1014924 m!937389))

(declare-fun m!937391 () Bool)

(assert (=> b!1014924 m!937391))

(declare-fun m!937393 () Bool)

(assert (=> b!1014924 m!937393))

(declare-fun m!937395 () Bool)

(assert (=> b!1014927 m!937395))

(declare-fun m!937397 () Bool)

(assert (=> b!1014927 m!937397))

(declare-fun m!937399 () Bool)

(assert (=> start!87842 m!937399))

(push 1)

(assert tp_is_empty!23519)

(assert (not b!1014927))

(assert (not b!1014926))

(assert (not start!87842))

(assert (not b!1014924))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!120835 () Bool)

(declare-fun lt!448866 () Int)

(assert (=> d!120835 (>= lt!448866 0)))

(declare-fun e!570995 () Int)

(assert (=> d!120835 (= lt!448866 e!570995)))

(declare-fun c!102759 () Bool)

(assert (=> d!120835 (= c!102759 (is-Nil!21563 (t!30575 l!412)))))

(assert (=> d!120835 (= (ListPrimitiveSize!120 (t!30575 l!412)) lt!448866)))

(declare-fun b!1014948 () Bool)

(assert (=> b!1014948 (= e!570995 0)))

(declare-fun b!1014949 () Bool)

(assert (=> b!1014949 (= e!570995 (+ 1 (ListPrimitiveSize!120 (t!30575 (t!30575 l!412)))))))

(assert (= (and d!120835 c!102759) b!1014948))

(assert (= (and d!120835 (not c!102759)) b!1014949))

(declare-fun m!937403 () Bool)

(assert (=> b!1014949 m!937403))

(assert (=> b!1014924 d!120835))

(declare-fun d!120845 () Bool)

(declare-fun lt!448868 () Int)

(assert (=> d!120845 (>= lt!448868 0)))

(declare-fun e!570997 () Int)

(assert (=> d!120845 (= lt!448868 e!570997)))

(declare-fun c!102761 () Bool)

(assert (=> d!120845 (= c!102761 (is-Nil!21563 l!412))))

(assert (=> d!120845 (= (ListPrimitiveSize!120 l!412) lt!448868)))

(declare-fun b!1014952 () Bool)

(assert (=> b!1014952 (= e!570997 0)))

(declare-fun b!1014953 () Bool)

(assert (=> b!1014953 (= e!570997 (+ 1 (ListPrimitiveSize!120 (t!30575 l!412))))))

(assert (= (and d!120845 c!102761) b!1014952))

(assert (= (and d!120845 (not c!102761)) b!1014953))

(assert (=> b!1014953 m!937387))

(assert (=> b!1014924 d!120845))

(declare-fun d!120849 () Bool)

(assert (=> d!120849 (= (isEmpty!851 lt!448857) (is-Nil!21564 lt!448857))))

(assert (=> b!1014924 d!120849))

(declare-fun bs!29310 () Bool)

(declare-fun b!1015015 () Bool)

(assert (= bs!29310 (and b!1015015 b!1014927)))

(declare-fun lt!448962 () tuple2!15256)

(declare-fun lambda!802 () Int)

(declare-fun lt!448959 () List!21566)

(assert (=> bs!29310 (= (= (Cons!21562 lt!448962 lt!448959) l!412) (= lambda!802 lambda!782))))

(assert (=> b!1015015 true))

(assert (=> b!1015015 true))

(assert (=> b!1015015 true))

(declare-fun bs!29314 () Bool)

(declare-fun b!1015013 () Bool)

(assert (= bs!29314 (and b!1015013 b!1014927)))

(declare-fun lambda!805 () Int)

(declare-fun lt!448964 () List!21566)

(declare-fun lt!448954 () tuple2!15256)

(assert (=> bs!29314 (= (= (Cons!21562 lt!448954 lt!448964) l!412) (= lambda!805 lambda!782))))

(declare-fun bs!29316 () Bool)

(assert (= bs!29316 (and b!1015013 b!1015015)))

(assert (=> bs!29316 (= (= (Cons!21562 lt!448954 lt!448964) (Cons!21562 lt!448962 lt!448959)) (= lambda!805 lambda!802))))

(assert (=> b!1015013 true))

(assert (=> b!1015013 true))

(assert (=> b!1015013 true))

(declare-fun bs!29320 () Bool)

(declare-fun d!120853 () Bool)

(assert (= bs!29320 (and d!120853 b!1014927)))

(declare-fun lambda!808 () Int)

(assert (=> bs!29320 (= (= (t!30575 l!412) l!412) (= lambda!808 lambda!782))))

(declare-fun bs!29323 () Bool)

(assert (= bs!29323 (and d!120853 b!1015015)))

(assert (=> bs!29323 (= (= (t!30575 l!412) (Cons!21562 lt!448962 lt!448959)) (= lambda!808 lambda!802))))

(declare-fun bs!29325 () Bool)

(assert (= bs!29325 (and d!120853 b!1015013)))

(assert (=> bs!29325 (= (= (t!30575 l!412) (Cons!21562 lt!448954 lt!448964)) (= lambda!808 lambda!805))))

(assert (=> d!120853 true))

(assert (=> d!120853 true))

(declare-fun lt!448963 () List!21567)

(declare-fun bm!42915 () Bool)

(declare-fun c!102792 () Bool)

(declare-fun lt!448956 () List!21567)

(declare-fun call!42919 () Unit!33168)

(assert (=> bm!42915 (= call!42919 (lemmaForallGetValueByKeySameWithASmallerHead!47 (ite c!102792 lt!448959 lt!448964) (ite c!102792 lt!448956 lt!448963) value!115 (ite c!102792 lt!448962 lt!448954)))))

(declare-fun b!1015012 () Bool)

(declare-fun e!571029 () Unit!33168)

(declare-fun Unit!33173 () Unit!33168)

(assert (=> b!1015012 (= e!571029 Unit!33173)))

(declare-fun e!571028 () Unit!33168)

(declare-fun lt!448961 () Unit!33168)

(assert (=> b!1015013 (= e!571028 lt!448961)))

(assert (=> b!1015013 (= lt!448964 (t!30575 (t!30575 l!412)))))

(declare-fun call!42920 () List!21567)

(assert (=> b!1015013 (= lt!448963 call!42920)))

(assert (=> b!1015013 (= lt!448954 (h!22760 (t!30575 l!412)))))

(assert (=> b!1015013 (= lt!448961 call!42919)))

(declare-fun call!42921 () Bool)

(assert (=> b!1015013 call!42921))

(declare-fun lt!448955 () List!21567)

(assert (=> d!120853 (forall!252 lt!448955 lambda!808)))

(declare-fun e!571030 () List!21567)

(assert (=> d!120853 (= lt!448955 e!571030)))

(assert (=> d!120853 (= c!102792 (and (is-Cons!21562 (t!30575 l!412)) (= (_2!7638 (h!22760 (t!30575 l!412))) value!115)))))

(assert (=> d!120853 (isStrictlySorted!580 (t!30575 l!412))))

(assert (=> d!120853 (= (getKeysOf!57 (t!30575 l!412) value!115) lt!448955)))

(declare-fun bm!42916 () Bool)

(assert (=> bm!42916 (= call!42920 (getKeysOf!57 (t!30575 (t!30575 l!412)) value!115))))

(declare-fun b!1015014 () Bool)

(declare-fun Unit!33175 () Unit!33168)

(assert (=> b!1015014 (= e!571028 Unit!33175)))

(assert (=> b!1015015 call!42921))

(declare-fun lt!448965 () Unit!33168)

(assert (=> b!1015015 (= lt!448965 call!42919)))

(assert (=> b!1015015 (= lt!448962 (h!22760 (t!30575 l!412)))))

(assert (=> b!1015015 (= lt!448956 call!42920)))

(assert (=> b!1015015 (= lt!448959 (t!30575 (t!30575 l!412)))))

(assert (=> b!1015015 (= e!571029 lt!448965)))

(declare-fun b!1015016 () Bool)

(assert (=> b!1015016 (= e!571030 (Cons!21563 (_1!7638 (h!22760 (t!30575 l!412))) call!42920))))

(declare-fun c!102793 () Bool)

(declare-fun call!42918 () Bool)

(assert (=> b!1015016 (= c!102793 (not call!42918))))

(declare-fun lt!448958 () Unit!33168)

(assert (=> b!1015016 (= lt!448958 e!571029)))

(declare-fun bm!42917 () Bool)

(assert (=> bm!42917 (= call!42918 (isEmpty!851 call!42920))))

(declare-fun b!1015017 () Bool)

(declare-fun e!571027 () List!21567)

(assert (=> b!1015017 (= e!571027 Nil!21564)))

(declare-fun b!1015018 () Bool)

(assert (=> b!1015018 (= e!571030 e!571027)))

(declare-fun c!102794 () Bool)

(assert (=> b!1015018 (= c!102794 (and (is-Cons!21562 (t!30575 l!412)) (not (= (_2!7638 (h!22760 (t!30575 l!412))) value!115))))))

(declare-fun b!1015019 () Bool)

(declare-fun lt!448960 () Unit!33168)

(assert (=> b!1015019 (= lt!448960 e!571028)))

(declare-fun c!102791 () Bool)

(assert (=> b!1015019 (= c!102791 (not call!42918))))

(declare-fun lt!448957 () List!21567)

(assert (=> b!1015019 (= lt!448957 call!42920)))

(assert (=> b!1015019 (= e!571027 call!42920)))

(declare-fun bm!42918 () Bool)

(assert (=> bm!42918 (= call!42921 (forall!252 (ite c!102792 lt!448956 lt!448963) (ite c!102792 lambda!802 lambda!805)))))

(assert (= (and d!120853 c!102792) b!1015016))

(assert (= (and d!120853 (not c!102792)) b!1015018))

(assert (= (and b!1015016 c!102793) b!1015015))

(assert (= (and b!1015016 (not c!102793)) b!1015012))

(assert (= (and b!1015018 c!102794) b!1015019))

(assert (= (and b!1015018 (not c!102794)) b!1015017))

(assert (= (and b!1015019 c!102791) b!1015013))

(assert (= (and b!1015019 (not c!102791)) b!1015014))

(assert (= (or b!1015015 b!1015013) bm!42915))

(assert (= (or b!1015015 b!1015013) bm!42918))

(assert (= (or b!1015016 b!1015015 b!1015013 b!1015019) bm!42916))

(assert (= (or b!1015016 b!1015019) bm!42917))

(declare-fun m!937419 () Bool)

(assert (=> bm!42916 m!937419))

(declare-fun m!937421 () Bool)

(assert (=> bm!42915 m!937421))

(declare-fun m!937425 () Bool)

(assert (=> bm!42918 m!937425))

(declare-fun m!937429 () Bool)

(assert (=> bm!42917 m!937429))

(declare-fun m!937433 () Bool)

(assert (=> d!120853 m!937433))

(declare-fun m!937435 () Bool)

(assert (=> d!120853 m!937435))

(assert (=> b!1014924 d!120853))

(declare-fun d!120859 () Bool)

(declare-fun res!681012 () Bool)

(declare-fun e!571039 () Bool)

(assert (=> d!120859 (=> res!681012 e!571039)))

(assert (=> d!120859 (= res!681012 (or (is-Nil!21563 l!412) (is-Nil!21563 (t!30575 l!412))))))

(assert (=> d!120859 (= (isStrictlySorted!580 l!412) e!571039)))

(declare-fun b!1015038 () Bool)

(declare-fun e!571040 () Bool)

(assert (=> b!1015038 (= e!571039 e!571040)))

(declare-fun res!681013 () Bool)

(assert (=> b!1015038 (=> (not res!681013) (not e!571040))))

(assert (=> b!1015038 (= res!681013 (bvslt (_1!7638 (h!22760 l!412)) (_1!7638 (h!22760 (t!30575 l!412)))))))

(declare-fun b!1015039 () Bool)

(assert (=> b!1015039 (= e!571040 (isStrictlySorted!580 (t!30575 l!412)))))

(assert (= (and d!120859 (not res!681012)) b!1015038))

(assert (= (and b!1015038 res!681013) b!1015039))

(assert (=> b!1015039 m!937435))

(assert (=> start!87842 d!120859))

(declare-fun bs!29345 () Bool)

(declare-fun b!1015065 () Bool)

(assert (= bs!29345 (and b!1015065 b!1014927)))

(declare-fun lambda!826 () Int)

(assert (=> bs!29345 (= (= (t!30575 l!412) l!412) (= lambda!826 lambda!782))))

(declare-fun bs!29346 () Bool)

(assert (= bs!29346 (and b!1015065 b!1015015)))

(assert (=> bs!29346 (= (= (t!30575 l!412) (Cons!21562 lt!448962 lt!448959)) (= lambda!826 lambda!802))))

(declare-fun bs!29347 () Bool)

(assert (= bs!29347 (and b!1015065 b!1015013)))

(assert (=> bs!29347 (= (= (t!30575 l!412) (Cons!21562 lt!448954 lt!448964)) (= lambda!826 lambda!805))))

(declare-fun bs!29348 () Bool)

(assert (= bs!29348 (and b!1015065 d!120853)))

(assert (=> bs!29348 (= lambda!826 lambda!808)))

(assert (=> b!1015065 true))

(assert (=> b!1015065 true))

(declare-fun bs!29349 () Bool)

(declare-fun d!120863 () Bool)

(assert (= bs!29349 (and d!120863 d!120853)))

(declare-fun lambda!827 () Int)

(assert (=> bs!29349 (= (= (Cons!21562 (h!22760 l!412) (t!30575 l!412)) (t!30575 l!412)) (= lambda!827 lambda!808))))

(declare-fun bs!29350 () Bool)

(assert (= bs!29350 (and d!120863 b!1014927)))

(assert (=> bs!29350 (= (= (Cons!21562 (h!22760 l!412) (t!30575 l!412)) l!412) (= lambda!827 lambda!782))))

(declare-fun bs!29351 () Bool)

(assert (= bs!29351 (and d!120863 b!1015065)))

(assert (=> bs!29351 (= (= (Cons!21562 (h!22760 l!412) (t!30575 l!412)) (t!30575 l!412)) (= lambda!827 lambda!826))))

(declare-fun bs!29352 () Bool)

(assert (= bs!29352 (and d!120863 b!1015015)))

(assert (=> bs!29352 (= (= (Cons!21562 (h!22760 l!412) (t!30575 l!412)) (Cons!21562 lt!448962 lt!448959)) (= lambda!827 lambda!802))))

(declare-fun bs!29353 () Bool)

(assert (= bs!29353 (and d!120863 b!1015013)))

(assert (=> bs!29353 (= (= (Cons!21562 (h!22760 l!412) (t!30575 l!412)) (Cons!21562 lt!448954 lt!448964)) (= lambda!827 lambda!805))))

(assert (=> d!120863 true))

(assert (=> d!120863 true))

(assert (=> d!120863 true))

(assert (=> d!120863 (forall!252 lt!448857 lambda!827)))

(declare-fun lt!448986 () Unit!33168)

(declare-fun choose!1644 (List!21566 List!21567 B!1452 tuple2!15256) Unit!33168)

(assert (=> d!120863 (= lt!448986 (choose!1644 (t!30575 l!412) lt!448857 value!115 (h!22760 l!412)))))

(declare-fun e!571049 () Bool)

(assert (=> d!120863 e!571049))

(declare-fun res!681038 () Bool)

(assert (=> d!120863 (=> (not res!681038) (not e!571049))))

(assert (=> d!120863 (= res!681038 (isStrictlySorted!580 (t!30575 l!412)))))

(assert (=> d!120863 (= (lemmaForallGetValueByKeySameWithASmallerHead!47 (t!30575 l!412) lt!448857 value!115 (h!22760 l!412)) lt!448986)))

(declare-fun b!1015064 () Bool)

(declare-fun res!681039 () Bool)

(assert (=> b!1015064 (=> (not res!681039) (not e!571049))))

(declare-fun isEmpty!854 (List!21566) Bool)

(assert (=> b!1015064 (= res!681039 (not (isEmpty!854 (t!30575 l!412))))))

(declare-fun res!681040 () Bool)

(assert (=> b!1015065 (=> (not res!681040) (not e!571049))))

(assert (=> b!1015065 (= res!681040 (forall!252 lt!448857 lambda!826))))

(declare-fun b!1015066 () Bool)

(declare-fun head!944 (List!21566) tuple2!15256)

(assert (=> b!1015066 (= e!571049 (bvslt (_1!7638 (h!22760 l!412)) (_1!7638 (head!944 (t!30575 l!412)))))))

(assert (= (and d!120863 res!681038) b!1015064))

(assert (= (and b!1015064 res!681039) b!1015065))

(assert (= (and b!1015065 res!681040) b!1015066))

(declare-fun m!937471 () Bool)

(assert (=> d!120863 m!937471))

(declare-fun m!937473 () Bool)

(assert (=> d!120863 m!937473))

(assert (=> d!120863 m!937435))

(declare-fun m!937475 () Bool)

(assert (=> b!1015064 m!937475))

(declare-fun m!937477 () Bool)

(assert (=> b!1015065 m!937477))

(declare-fun m!937479 () Bool)

(assert (=> b!1015066 m!937479))

(assert (=> b!1014927 d!120863))

(declare-fun d!120873 () Bool)

(declare-fun res!681069 () Bool)

(declare-fun e!571084 () Bool)

(assert (=> d!120873 (=> res!681069 e!571084)))

(assert (=> d!120873 (= res!681069 (is-Nil!21564 lt!448857))))

(assert (=> d!120873 (= (forall!252 lt!448857 lambda!782) e!571084)))

(declare-fun b!1015105 () Bool)

(declare-fun e!571085 () Bool)

(assert (=> b!1015105 (= e!571084 e!571085)))

(declare-fun res!681070 () Bool)

(assert (=> b!1015105 (=> (not res!681070) (not e!571085))))

(declare-fun dynLambda!1899 (Int (_ BitVec 64)) Bool)

(assert (=> b!1015105 (= res!681070 (dynLambda!1899 lambda!782 (h!22761 lt!448857)))))

(declare-fun b!1015106 () Bool)

(assert (=> b!1015106 (= e!571085 (forall!252 (t!30576 lt!448857) lambda!782))))

(assert (= (and d!120873 (not res!681069)) b!1015105))

(assert (= (and b!1015105 res!681070) b!1015106))

(declare-fun b_lambda!15417 () Bool)

(assert (=> (not b_lambda!15417) (not b!1015105)))

(declare-fun m!937485 () Bool)

(assert (=> b!1015105 m!937485))

(declare-fun m!937487 () Bool)

(assert (=> b!1015106 m!937487))

(assert (=> b!1014927 d!120873))


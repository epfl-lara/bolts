; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!1940 () Bool)

(assert start!1940)

(declare-fun b!13099 () Bool)

(assert (=> b!13099 true))

(declare-fun b!13095 () Bool)

(declare-fun res!10373 () Bool)

(declare-fun e!7847 () Bool)

(assert (=> b!13095 (=> (not res!10373) (not e!7847))))

(declare-datatypes ((B!474 0))(
  ( (B!475 (val!335 Int)) )
))
(declare-datatypes ((tuple2!452 0))(
  ( (tuple2!453 (_1!226 (_ BitVec 64)) (_2!226 B!474)) )
))
(declare-datatypes ((List!385 0))(
  ( (Nil!382) (Cons!381 (h!947 tuple2!452) (t!2778 List!385)) )
))
(declare-fun l!522 () List!385)

(declare-fun value!159 () B!474)

(assert (=> b!13095 (= res!10373 (and (is-Cons!381 l!522) (= (_2!226 (h!947 l!522)) value!159)))))

(declare-fun b!13096 () Bool)

(declare-fun res!10372 () Bool)

(declare-fun e!7848 () Bool)

(assert (=> b!13096 (=> (not res!10372) (not e!7848))))

(declare-fun lt!3489 () List!385)

(declare-fun isEmpty!77 (List!385) Bool)

(assert (=> b!13096 (= res!10372 (not (isEmpty!77 lt!3489)))))

(declare-fun b!13097 () Bool)

(declare-fun res!10375 () Bool)

(assert (=> b!13097 (=> (not res!10375) (not e!7848))))

(assert (=> b!13097 (= res!10375 (not (isEmpty!77 l!522)))))

(declare-fun b!13098 () Bool)

(declare-fun e!7849 () Bool)

(declare-fun tp_is_empty!653 () Bool)

(declare-fun tp!2147 () Bool)

(assert (=> b!13098 (= e!7849 (and tp_is_empty!653 tp!2147))))

(declare-fun res!10370 () Bool)

(assert (=> b!13099 (=> (not res!10370) (not e!7848))))

(declare-fun lambda!50 () Int)

(declare-fun forall!70 (List!385 Int) Bool)

(assert (=> b!13099 (= res!10370 (forall!70 lt!3489 lambda!50))))

(declare-fun b!13100 () Bool)

(assert (=> b!13100 (= e!7848 (= lt!3489 Nil!382))))

(declare-fun res!10374 () Bool)

(assert (=> start!1940 (=> (not res!10374) (not e!7847))))

(declare-fun isStrictlySorted!76 (List!385) Bool)

(assert (=> start!1940 (= res!10374 (isStrictlySorted!76 l!522))))

(assert (=> start!1940 e!7847))

(assert (=> start!1940 e!7849))

(assert (=> start!1940 tp_is_empty!653))

(declare-fun b!13101 () Bool)

(assert (=> b!13101 (= e!7847 e!7848)))

(declare-fun res!10371 () Bool)

(assert (=> b!13101 (=> (not res!10371) (not e!7848))))

(assert (=> b!13101 (= res!10371 (isStrictlySorted!76 lt!3489))))

(declare-fun $colon$colon!11 (List!385 tuple2!452) List!385)

(declare-fun filterByValue!3 (List!385 B!474) List!385)

(assert (=> b!13101 (= lt!3489 ($colon$colon!11 (filterByValue!3 (t!2778 l!522) value!159) (h!947 l!522)))))

(assert (= (and start!1940 res!10374) b!13095))

(assert (= (and b!13095 res!10373) b!13101))

(assert (= (and b!13101 res!10371) b!13099))

(assert (= (and b!13099 res!10370) b!13097))

(assert (= (and b!13097 res!10375) b!13096))

(assert (= (and b!13096 res!10372) b!13100))

(assert (= (and start!1940 (is-Cons!381 l!522)) b!13098))

(declare-fun m!8945 () Bool)

(assert (=> b!13097 m!8945))

(declare-fun m!8947 () Bool)

(assert (=> b!13101 m!8947))

(declare-fun m!8949 () Bool)

(assert (=> b!13101 m!8949))

(assert (=> b!13101 m!8949))

(declare-fun m!8951 () Bool)

(assert (=> b!13101 m!8951))

(declare-fun m!8953 () Bool)

(assert (=> start!1940 m!8953))

(declare-fun m!8955 () Bool)

(assert (=> b!13099 m!8955))

(declare-fun m!8957 () Bool)

(assert (=> b!13096 m!8957))

(push 1)

(assert (not b!13098))

(assert (not b!13097))

(assert (not b!13099))

(assert (not start!1940))

(assert tp_is_empty!653)

(assert (not b!13101))

(assert (not b!13096))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1947 () Bool)

(assert (=> d!1947 (= (isEmpty!77 l!522) (is-Nil!382 l!522))))

(assert (=> b!13097 d!1947))

(declare-fun d!1953 () Bool)

(declare-fun res!10408 () Bool)

(declare-fun e!7882 () Bool)

(assert (=> d!1953 (=> res!10408 e!7882)))

(assert (=> d!1953 (= res!10408 (is-Nil!382 lt!3489))))

(assert (=> d!1953 (= (forall!70 lt!3489 lambda!50) e!7882)))

(declare-fun b!13136 () Bool)

(declare-fun e!7883 () Bool)

(assert (=> b!13136 (= e!7882 e!7883)))

(declare-fun res!10409 () Bool)

(assert (=> b!13136 (=> (not res!10409) (not e!7883))))

(declare-fun dynLambda!84 (Int tuple2!452) Bool)

(assert (=> b!13136 (= res!10409 (dynLambda!84 lambda!50 (h!947 lt!3489)))))

(declare-fun b!13137 () Bool)

(assert (=> b!13137 (= e!7883 (forall!70 (t!2778 lt!3489) lambda!50))))

(assert (= (and d!1953 (not res!10408)) b!13136))

(assert (= (and b!13136 res!10409) b!13137))

(declare-fun b_lambda!867 () Bool)

(assert (=> (not b_lambda!867) (not b!13136)))

(declare-fun m!8975 () Bool)

(assert (=> b!13136 m!8975))

(declare-fun m!8977 () Bool)

(assert (=> b!13137 m!8977))

(assert (=> b!13099 d!1953))

(declare-fun d!1971 () Bool)

(declare-fun res!10414 () Bool)

(declare-fun e!7888 () Bool)

(assert (=> d!1971 (=> res!10414 e!7888)))

(assert (=> d!1971 (= res!10414 (or (is-Nil!382 l!522) (is-Nil!382 (t!2778 l!522))))))

(assert (=> d!1971 (= (isStrictlySorted!76 l!522) e!7888)))

(declare-fun b!13142 () Bool)

(declare-fun e!7889 () Bool)

(assert (=> b!13142 (= e!7888 e!7889)))

(declare-fun res!10415 () Bool)

(assert (=> b!13142 (=> (not res!10415) (not e!7889))))

(assert (=> b!13142 (= res!10415 (bvslt (_1!226 (h!947 l!522)) (_1!226 (h!947 (t!2778 l!522)))))))

(declare-fun b!13143 () Bool)

(assert (=> b!13143 (= e!7889 (isStrictlySorted!76 (t!2778 l!522)))))

(assert (= (and d!1971 (not res!10414)) b!13142))

(assert (= (and b!13142 res!10415) b!13143))

(declare-fun m!8979 () Bool)

(assert (=> b!13143 m!8979))

(assert (=> start!1940 d!1971))

(declare-fun d!1973 () Bool)

(assert (=> d!1973 (= (isEmpty!77 lt!3489) (is-Nil!382 lt!3489))))

(assert (=> b!13096 d!1973))

(declare-fun d!1975 () Bool)

(declare-fun res!10416 () Bool)

(declare-fun e!7890 () Bool)

(assert (=> d!1975 (=> res!10416 e!7890)))

(assert (=> d!1975 (= res!10416 (or (is-Nil!382 lt!3489) (is-Nil!382 (t!2778 lt!3489))))))

(assert (=> d!1975 (= (isStrictlySorted!76 lt!3489) e!7890)))

(declare-fun b!13144 () Bool)

(declare-fun e!7891 () Bool)

(assert (=> b!13144 (= e!7890 e!7891)))

(declare-fun res!10417 () Bool)

(assert (=> b!13144 (=> (not res!10417) (not e!7891))))

(assert (=> b!13144 (= res!10417 (bvslt (_1!226 (h!947 lt!3489)) (_1!226 (h!947 (t!2778 lt!3489)))))))

(declare-fun b!13145 () Bool)

(assert (=> b!13145 (= e!7891 (isStrictlySorted!76 (t!2778 lt!3489)))))

(assert (= (and d!1975 (not res!10416)) b!13144))

(assert (= (and b!13144 res!10417) b!13145))

(declare-fun m!8981 () Bool)

(assert (=> b!13145 m!8981))

(assert (=> b!13101 d!1975))

(declare-fun d!1977 () Bool)

(assert (=> d!1977 (= ($colon$colon!11 (filterByValue!3 (t!2778 l!522) value!159) (h!947 l!522)) (Cons!381 (h!947 l!522) (filterByValue!3 (t!2778 l!522) value!159)))))

(assert (=> b!13101 d!1977))

(declare-fun bs!513 () Bool)

(declare-fun b!13236 () Bool)

(assert (= bs!513 (and b!13236 b!13099)))

(declare-fun lambda!59 () Int)

(assert (=> bs!513 (= lambda!59 lambda!50)))

(assert (=> b!13236 true))

(declare-fun b!13228 () Bool)

(declare-fun e!7942 () List!385)

(declare-fun call!365 () List!385)

(assert (=> b!13228 (= e!7942 ($colon$colon!11 call!365 (h!947 (t!2778 l!522))))))

(declare-fun b!13229 () Bool)

(declare-fun e!7939 () Bool)

(declare-fun e!7940 () Bool)

(assert (=> b!13229 (= e!7939 e!7940)))

(declare-fun res!10442 () Bool)

(declare-fun call!364 () Bool)

(assert (=> b!13229 (= res!10442 call!364)))

(assert (=> b!13229 (=> res!10442 e!7940)))

(declare-fun b!13230 () Bool)

(declare-fun e!7938 () List!385)

(assert (=> b!13230 (= e!7938 Nil!382)))

(declare-fun d!1979 () Bool)

(declare-fun e!7941 () Bool)

(assert (=> d!1979 e!7941))

(declare-fun res!10444 () Bool)

(assert (=> d!1979 (=> (not res!10444) (not e!7941))))

(declare-fun lt!3498 () List!385)

(assert (=> d!1979 (= res!10444 (isStrictlySorted!76 lt!3498))))

(assert (=> d!1979 (= lt!3498 e!7942)))

(declare-fun c!1240 () Bool)

(assert (=> d!1979 (= c!1240 (and (is-Cons!381 (t!2778 l!522)) (= (_2!226 (h!947 (t!2778 l!522))) value!159)))))

(assert (=> d!1979 (isStrictlySorted!76 (t!2778 l!522))))

(assert (=> d!1979 (= (filterByValue!3 (t!2778 l!522) value!159) lt!3498)))

(declare-fun b!13231 () Bool)

(assert (=> b!13231 (= e!7938 call!365)))

(declare-fun b!13232 () Bool)

(declare-fun head!784 (List!385) tuple2!452)

(assert (=> b!13232 (= e!7940 (bvsge (_1!226 (head!784 lt!3498)) (_1!226 (head!784 (t!2778 l!522)))))))

(declare-fun b!13233 () Bool)

(assert (=> b!13233 (= e!7942 e!7938)))

(declare-fun c!1241 () Bool)

(assert (=> b!13233 (= c!1241 (and (is-Cons!381 (t!2778 l!522)) (not (= (_2!226 (h!947 (t!2778 l!522))) value!159))))))

(declare-fun b!13234 () Bool)

(assert (=> b!13234 (= e!7939 call!364)))

(declare-fun bm!361 () Bool)

(assert (=> bm!361 (= call!365 (filterByValue!3 (t!2778 (t!2778 l!522)) value!159))))

(declare-fun bm!362 () Bool)

(assert (=> bm!362 (= call!364 (isEmpty!77 lt!3498))))

(declare-fun b!13235 () Bool)

(assert (=> b!13235 (= e!7941 e!7939)))

(declare-fun c!1239 () Bool)

(assert (=> b!13235 (= c!1239 (isEmpty!77 (t!2778 l!522)))))

(declare-fun res!10443 () Bool)

(assert (=> b!13236 (=> (not res!10443) (not e!7941))))

(assert (=> b!13236 (= res!10443 (forall!70 lt!3498 lambda!59))))

(assert (= (and d!1979 c!1240) b!13228))

(assert (= (and d!1979 (not c!1240)) b!13233))

(assert (= (and b!13233 c!1241) b!13231))

(assert (= (and b!13233 (not c!1241)) b!13230))

(assert (= (or b!13228 b!13231) bm!361))

(assert (= (and d!1979 res!10444) b!13236))

(assert (= (and b!13236 res!10443) b!13235))

(assert (= (and b!13235 c!1239) b!13234))

(assert (= (and b!13235 (not c!1239)) b!13229))

(assert (= (and b!13229 (not res!10442)) b!13232))

(assert (= (or b!13234 b!13229) bm!362))

(declare-fun m!9015 () Bool)

(assert (=> b!13232 m!9015))

(declare-fun m!9017 () Bool)

(assert (=> b!13232 m!9017))

(declare-fun m!9019 () Bool)

(assert (=> b!13228 m!9019))

(declare-fun m!9021 () Bool)

(assert (=> d!1979 m!9021))

(assert (=> d!1979 m!8979))

(declare-fun m!9023 () Bool)

(assert (=> bm!362 m!9023))

(declare-fun m!9025 () Bool)

(assert (=> bm!361 m!9025))

(declare-fun m!9027 () Bool)

(assert (=> b!13236 m!9027))

(declare-fun m!9029 () Bool)

(assert (=> b!13235 m!9029))

(assert (=> b!13101 d!1979))

(declare-fun b!13241 () Bool)

(declare-fun e!7945 () Bool)

(declare-fun tp!2156 () Bool)

(assert (=> b!13241 (= e!7945 (and tp_is_empty!653 tp!2156))))

(assert (=> b!13098 (= tp!2147 e!7945)))

(assert (= (and b!13098 (is-Cons!381 (t!2778 l!522))) b!13241))

(declare-fun b_lambda!873 () Bool)

(assert (= b_lambda!867 (or b!13099 b_lambda!873)))

(declare-fun bs!514 () Bool)

(declare-fun d!1989 () Bool)

(assert (= bs!514 (and d!1989 b!13099)))

(assert (=> bs!514 (= (dynLambda!84 lambda!50 (h!947 lt!3489)) (= (_2!226 (h!947 lt!3489)) value!159))))

(assert (=> b!13136 d!1989))

(push 1)


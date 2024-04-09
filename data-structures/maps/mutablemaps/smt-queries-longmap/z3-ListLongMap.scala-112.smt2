; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!1938 () Bool)

(assert start!1938)

(declare-fun b!13077 () Bool)

(assert (=> b!13077 true))

(declare-fun b!13072 () Bool)

(declare-fun e!7839 () Bool)

(declare-fun e!7838 () Bool)

(assert (=> b!13072 (= e!7839 e!7838)))

(declare-fun res!10354 () Bool)

(assert (=> b!13072 (=> (not res!10354) (not e!7838))))

(declare-datatypes ((B!472 0))(
  ( (B!473 (val!334 Int)) )
))
(declare-datatypes ((tuple2!450 0))(
  ( (tuple2!451 (_1!225 (_ BitVec 64)) (_2!225 B!472)) )
))
(declare-datatypes ((List!384 0))(
  ( (Nil!381) (Cons!380 (h!946 tuple2!450) (t!2777 List!384)) )
))
(declare-fun lt!3486 () List!384)

(declare-fun isStrictlySorted!75 (List!384) Bool)

(assert (=> b!13072 (= res!10354 (isStrictlySorted!75 lt!3486))))

(declare-fun l!522 () List!384)

(declare-fun value!159 () B!472)

(declare-fun $colon$colon!10 (List!384 tuple2!450) List!384)

(declare-fun filterByValue!2 (List!384 B!472) List!384)

(assert (=> b!13072 (= lt!3486 ($colon$colon!10 (filterByValue!2 (t!2777 l!522) value!159) (h!946 l!522)))))

(declare-fun b!13073 () Bool)

(declare-fun e!7840 () Bool)

(declare-fun tp_is_empty!651 () Bool)

(declare-fun tp!2144 () Bool)

(assert (=> b!13073 (= e!7840 (and tp_is_empty!651 tp!2144))))

(declare-fun b!13074 () Bool)

(declare-fun res!10357 () Bool)

(assert (=> b!13074 (=> (not res!10357) (not e!7838))))

(declare-fun isEmpty!76 (List!384) Bool)

(assert (=> b!13074 (= res!10357 (not (isEmpty!76 lt!3486)))))

(declare-fun b!13075 () Bool)

(declare-fun res!10355 () Bool)

(assert (=> b!13075 (=> (not res!10355) (not e!7838))))

(assert (=> b!13075 (= res!10355 (not (isEmpty!76 l!522)))))

(declare-fun b!13076 () Bool)

(declare-fun res!10356 () Bool)

(assert (=> b!13076 (=> (not res!10356) (not e!7839))))

(get-info :version)

(assert (=> b!13076 (= res!10356 (and ((_ is Cons!380) l!522) (= (_2!225 (h!946 l!522)) value!159)))))

(declare-fun res!10352 () Bool)

(assert (=> b!13077 (=> (not res!10352) (not e!7838))))

(declare-fun lambda!47 () Int)

(declare-fun forall!69 (List!384 Int) Bool)

(assert (=> b!13077 (= res!10352 (forall!69 lt!3486 lambda!47))))

(declare-fun b!13078 () Bool)

(assert (=> b!13078 (= e!7838 (= lt!3486 Nil!381))))

(declare-fun res!10353 () Bool)

(assert (=> start!1938 (=> (not res!10353) (not e!7839))))

(assert (=> start!1938 (= res!10353 (isStrictlySorted!75 l!522))))

(assert (=> start!1938 e!7839))

(assert (=> start!1938 e!7840))

(assert (=> start!1938 tp_is_empty!651))

(assert (= (and start!1938 res!10353) b!13076))

(assert (= (and b!13076 res!10356) b!13072))

(assert (= (and b!13072 res!10354) b!13077))

(assert (= (and b!13077 res!10352) b!13075))

(assert (= (and b!13075 res!10355) b!13074))

(assert (= (and b!13074 res!10357) b!13078))

(assert (= (and start!1938 ((_ is Cons!380) l!522)) b!13073))

(declare-fun m!8931 () Bool)

(assert (=> start!1938 m!8931))

(declare-fun m!8933 () Bool)

(assert (=> b!13074 m!8933))

(declare-fun m!8935 () Bool)

(assert (=> b!13072 m!8935))

(declare-fun m!8937 () Bool)

(assert (=> b!13072 m!8937))

(assert (=> b!13072 m!8937))

(declare-fun m!8939 () Bool)

(assert (=> b!13072 m!8939))

(declare-fun m!8941 () Bool)

(assert (=> b!13075 m!8941))

(declare-fun m!8943 () Bool)

(assert (=> b!13077 m!8943))

(check-sat (not b!13074) (not b!13072) (not start!1938) (not b!13075) tp_is_empty!651 (not b!13073) (not b!13077))
(check-sat)
(get-model)

(declare-fun d!1945 () Bool)

(declare-fun res!10384 () Bool)

(declare-fun e!7858 () Bool)

(assert (=> d!1945 (=> res!10384 e!7858)))

(assert (=> d!1945 (= res!10384 ((_ is Nil!381) lt!3486))))

(assert (=> d!1945 (= (forall!69 lt!3486 lambda!47) e!7858)))

(declare-fun b!13113 () Bool)

(declare-fun e!7860 () Bool)

(assert (=> b!13113 (= e!7858 e!7860)))

(declare-fun res!10386 () Bool)

(assert (=> b!13113 (=> (not res!10386) (not e!7860))))

(declare-fun dynLambda!83 (Int tuple2!450) Bool)

(assert (=> b!13113 (= res!10386 (dynLambda!83 lambda!47 (h!946 lt!3486)))))

(declare-fun b!13115 () Bool)

(assert (=> b!13115 (= e!7860 (forall!69 (t!2777 lt!3486) lambda!47))))

(assert (= (and d!1945 (not res!10384)) b!13113))

(assert (= (and b!13113 res!10386) b!13115))

(declare-fun b_lambda!865 () Bool)

(assert (=> (not b_lambda!865) (not b!13113)))

(declare-fun m!8961 () Bool)

(assert (=> b!13113 m!8961))

(declare-fun m!8965 () Bool)

(assert (=> b!13115 m!8965))

(assert (=> b!13077 d!1945))

(declare-fun d!1950 () Bool)

(declare-fun res!10400 () Bool)

(declare-fun e!7874 () Bool)

(assert (=> d!1950 (=> res!10400 e!7874)))

(assert (=> d!1950 (= res!10400 (or ((_ is Nil!381) l!522) ((_ is Nil!381) (t!2777 l!522))))))

(assert (=> d!1950 (= (isStrictlySorted!75 l!522) e!7874)))

(declare-fun b!13128 () Bool)

(declare-fun e!7875 () Bool)

(assert (=> b!13128 (= e!7874 e!7875)))

(declare-fun res!10401 () Bool)

(assert (=> b!13128 (=> (not res!10401) (not e!7875))))

(assert (=> b!13128 (= res!10401 (bvslt (_1!225 (h!946 l!522)) (_1!225 (h!946 (t!2777 l!522)))))))

(declare-fun b!13129 () Bool)

(assert (=> b!13129 (= e!7875 (isStrictlySorted!75 (t!2777 l!522)))))

(assert (= (and d!1950 (not res!10400)) b!13128))

(assert (= (and b!13128 res!10401) b!13129))

(declare-fun m!8967 () Bool)

(assert (=> b!13129 m!8967))

(assert (=> start!1938 d!1950))

(declare-fun d!1957 () Bool)

(declare-fun res!10402 () Bool)

(declare-fun e!7876 () Bool)

(assert (=> d!1957 (=> res!10402 e!7876)))

(assert (=> d!1957 (= res!10402 (or ((_ is Nil!381) lt!3486) ((_ is Nil!381) (t!2777 lt!3486))))))

(assert (=> d!1957 (= (isStrictlySorted!75 lt!3486) e!7876)))

(declare-fun b!13130 () Bool)

(declare-fun e!7877 () Bool)

(assert (=> b!13130 (= e!7876 e!7877)))

(declare-fun res!10403 () Bool)

(assert (=> b!13130 (=> (not res!10403) (not e!7877))))

(assert (=> b!13130 (= res!10403 (bvslt (_1!225 (h!946 lt!3486)) (_1!225 (h!946 (t!2777 lt!3486)))))))

(declare-fun b!13131 () Bool)

(assert (=> b!13131 (= e!7877 (isStrictlySorted!75 (t!2777 lt!3486)))))

(assert (= (and d!1957 (not res!10402)) b!13130))

(assert (= (and b!13130 res!10403) b!13131))

(declare-fun m!8969 () Bool)

(assert (=> b!13131 m!8969))

(assert (=> b!13072 d!1957))

(declare-fun d!1959 () Bool)

(assert (=> d!1959 (= ($colon$colon!10 (filterByValue!2 (t!2777 l!522) value!159) (h!946 l!522)) (Cons!380 (h!946 l!522) (filterByValue!2 (t!2777 l!522) value!159)))))

(assert (=> b!13072 d!1959))

(declare-fun bs!509 () Bool)

(declare-fun b!13206 () Bool)

(assert (= bs!509 (and b!13206 b!13077)))

(declare-fun lambda!55 () Int)

(assert (=> bs!509 (= lambda!55 lambda!47)))

(assert (=> b!13206 true))

(declare-fun b!13199 () Bool)

(declare-fun e!7925 () Bool)

(declare-fun e!7922 () Bool)

(assert (=> b!13199 (= e!7925 e!7922)))

(declare-fun res!10435 () Bool)

(declare-fun call!359 () Bool)

(assert (=> b!13199 (= res!10435 call!359)))

(assert (=> b!13199 (=> res!10435 e!7922)))

(declare-fun b!13200 () Bool)

(declare-fun e!7923 () List!384)

(declare-fun call!358 () List!384)

(assert (=> b!13200 (= e!7923 ($colon$colon!10 call!358 (h!946 (t!2777 l!522))))))

(declare-fun b!13201 () Bool)

(declare-fun lt!3497 () List!384)

(declare-fun head!782 (List!384) tuple2!450)

(assert (=> b!13201 (= e!7922 (bvsge (_1!225 (head!782 lt!3497)) (_1!225 (head!782 (t!2777 l!522)))))))

(declare-fun bm!355 () Bool)

(assert (=> bm!355 (= call!358 (filterByValue!2 (t!2777 (t!2777 l!522)) value!159))))

(declare-fun bm!356 () Bool)

(assert (=> bm!356 (= call!359 (isEmpty!76 lt!3497))))

(declare-fun b!13202 () Bool)

(declare-fun e!7924 () Bool)

(assert (=> b!13202 (= e!7924 e!7925)))

(declare-fun c!1234 () Bool)

(assert (=> b!13202 (= c!1234 (isEmpty!76 (t!2777 l!522)))))

(declare-fun b!13203 () Bool)

(assert (=> b!13203 (= e!7925 call!359)))

(declare-fun b!13204 () Bool)

(declare-fun e!7921 () List!384)

(assert (=> b!13204 (= e!7921 Nil!381)))

(declare-fun b!13205 () Bool)

(assert (=> b!13205 (= e!7921 call!358)))

(declare-fun res!10433 () Bool)

(assert (=> b!13206 (=> (not res!10433) (not e!7924))))

(assert (=> b!13206 (= res!10433 (forall!69 lt!3497 lambda!55))))

(declare-fun b!13207 () Bool)

(assert (=> b!13207 (= e!7923 e!7921)))

(declare-fun c!1236 () Bool)

(assert (=> b!13207 (= c!1236 (and ((_ is Cons!380) (t!2777 l!522)) (not (= (_2!225 (h!946 (t!2777 l!522))) value!159))))))

(declare-fun d!1965 () Bool)

(assert (=> d!1965 e!7924))

(declare-fun res!10434 () Bool)

(assert (=> d!1965 (=> (not res!10434) (not e!7924))))

(assert (=> d!1965 (= res!10434 (isStrictlySorted!75 lt!3497))))

(assert (=> d!1965 (= lt!3497 e!7923)))

(declare-fun c!1235 () Bool)

(assert (=> d!1965 (= c!1235 (and ((_ is Cons!380) (t!2777 l!522)) (= (_2!225 (h!946 (t!2777 l!522))) value!159)))))

(assert (=> d!1965 (isStrictlySorted!75 (t!2777 l!522))))

(assert (=> d!1965 (= (filterByValue!2 (t!2777 l!522) value!159) lt!3497)))

(assert (= (and d!1965 c!1235) b!13200))

(assert (= (and d!1965 (not c!1235)) b!13207))

(assert (= (and b!13207 c!1236) b!13205))

(assert (= (and b!13207 (not c!1236)) b!13204))

(assert (= (or b!13200 b!13205) bm!355))

(assert (= (and d!1965 res!10434) b!13206))

(assert (= (and b!13206 res!10433) b!13202))

(assert (= (and b!13202 c!1234) b!13203))

(assert (= (and b!13202 (not c!1234)) b!13199))

(assert (= (and b!13199 (not res!10435)) b!13201))

(assert (= (or b!13203 b!13199) bm!356))

(declare-fun m!8983 () Bool)

(assert (=> b!13206 m!8983))

(declare-fun m!8985 () Bool)

(assert (=> b!13201 m!8985))

(declare-fun m!8987 () Bool)

(assert (=> b!13201 m!8987))

(declare-fun m!8989 () Bool)

(assert (=> bm!356 m!8989))

(declare-fun m!8993 () Bool)

(assert (=> d!1965 m!8993))

(assert (=> d!1965 m!8967))

(declare-fun m!8997 () Bool)

(assert (=> bm!355 m!8997))

(declare-fun m!9001 () Bool)

(assert (=> b!13202 m!9001))

(declare-fun m!9005 () Bool)

(assert (=> b!13200 m!9005))

(assert (=> b!13072 d!1965))

(declare-fun d!1981 () Bool)

(assert (=> d!1981 (= (isEmpty!76 lt!3486) ((_ is Nil!381) lt!3486))))

(assert (=> b!13074 d!1981))

(declare-fun d!1983 () Bool)

(assert (=> d!1983 (= (isEmpty!76 l!522) ((_ is Nil!381) l!522))))

(assert (=> b!13075 d!1983))

(declare-fun b!13227 () Bool)

(declare-fun e!7937 () Bool)

(declare-fun tp!2153 () Bool)

(assert (=> b!13227 (= e!7937 (and tp_is_empty!651 tp!2153))))

(assert (=> b!13073 (= tp!2144 e!7937)))

(assert (= (and b!13073 ((_ is Cons!380) (t!2777 l!522))) b!13227))

(declare-fun b_lambda!871 () Bool)

(assert (= b_lambda!865 (or b!13077 b_lambda!871)))

(declare-fun bs!512 () Bool)

(declare-fun d!1987 () Bool)

(assert (= bs!512 (and d!1987 b!13077)))

(assert (=> bs!512 (= (dynLambda!83 lambda!47 (h!946 lt!3486)) (= (_2!225 (h!946 lt!3486)) value!159))))

(assert (=> b!13113 d!1987))

(check-sat (not d!1965) (not b!13201) tp_is_empty!651 (not b!13131) (not b!13227) (not b_lambda!871) (not bm!356) (not b!13202) (not b!13200) (not b!13115) (not b!13206) (not bm!355) (not b!13129))
(check-sat)

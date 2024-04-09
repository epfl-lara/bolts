; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!1936 () Bool)

(assert start!1936)

(declare-fun b!13050 () Bool)

(assert (=> b!13050 true))

(declare-fun b!13049 () Bool)

(declare-fun res!10335 () Bool)

(declare-fun e!7831 () Bool)

(assert (=> b!13049 (=> (not res!10335) (not e!7831))))

(declare-datatypes ((B!470 0))(
  ( (B!471 (val!333 Int)) )
))
(declare-datatypes ((tuple2!448 0))(
  ( (tuple2!449 (_1!224 (_ BitVec 64)) (_2!224 B!470)) )
))
(declare-datatypes ((List!383 0))(
  ( (Nil!380) (Cons!379 (h!945 tuple2!448) (t!2776 List!383)) )
))
(declare-fun lt!3483 () List!383)

(declare-fun isEmpty!75 (List!383) Bool)

(assert (=> b!13049 (= res!10335 (not (isEmpty!75 lt!3483)))))

(declare-fun res!10334 () Bool)

(assert (=> b!13050 (=> (not res!10334) (not e!7831))))

(declare-fun lambda!44 () Int)

(declare-fun forall!68 (List!383 Int) Bool)

(assert (=> b!13050 (= res!10334 (forall!68 lt!3483 lambda!44))))

(declare-fun b!13051 () Bool)

(declare-fun res!10338 () Bool)

(assert (=> b!13051 (=> (not res!10338) (not e!7831))))

(declare-fun l!522 () List!383)

(assert (=> b!13051 (= res!10338 (not (isEmpty!75 l!522)))))

(declare-fun b!13052 () Bool)

(declare-fun e!7829 () Bool)

(declare-fun tp_is_empty!649 () Bool)

(declare-fun tp!2141 () Bool)

(assert (=> b!13052 (= e!7829 (and tp_is_empty!649 tp!2141))))

(declare-fun b!13053 () Bool)

(assert (=> b!13053 (= e!7831 (= lt!3483 Nil!380))))

(declare-fun b!13054 () Bool)

(declare-fun res!10339 () Bool)

(declare-fun e!7830 () Bool)

(assert (=> b!13054 (=> (not res!10339) (not e!7830))))

(declare-fun value!159 () B!470)

(assert (=> b!13054 (= res!10339 (and (is-Cons!379 l!522) (= (_2!224 (h!945 l!522)) value!159)))))

(declare-fun res!10337 () Bool)

(assert (=> start!1936 (=> (not res!10337) (not e!7830))))

(declare-fun isStrictlySorted!74 (List!383) Bool)

(assert (=> start!1936 (= res!10337 (isStrictlySorted!74 l!522))))

(assert (=> start!1936 e!7830))

(assert (=> start!1936 e!7829))

(assert (=> start!1936 tp_is_empty!649))

(declare-fun b!13055 () Bool)

(assert (=> b!13055 (= e!7830 e!7831)))

(declare-fun res!10336 () Bool)

(assert (=> b!13055 (=> (not res!10336) (not e!7831))))

(assert (=> b!13055 (= res!10336 (isStrictlySorted!74 lt!3483))))

(declare-fun $colon$colon!9 (List!383 tuple2!448) List!383)

(declare-fun filterByValue!1 (List!383 B!470) List!383)

(assert (=> b!13055 (= lt!3483 ($colon$colon!9 (filterByValue!1 (t!2776 l!522) value!159) (h!945 l!522)))))

(assert (= (and start!1936 res!10337) b!13054))

(assert (= (and b!13054 res!10339) b!13055))

(assert (= (and b!13055 res!10336) b!13050))

(assert (= (and b!13050 res!10334) b!13051))

(assert (= (and b!13051 res!10338) b!13049))

(assert (= (and b!13049 res!10335) b!13053))

(assert (= (and start!1936 (is-Cons!379 l!522)) b!13052))

(declare-fun m!8917 () Bool)

(assert (=> b!13051 m!8917))

(declare-fun m!8919 () Bool)

(assert (=> b!13049 m!8919))

(declare-fun m!8921 () Bool)

(assert (=> b!13055 m!8921))

(declare-fun m!8923 () Bool)

(assert (=> b!13055 m!8923))

(assert (=> b!13055 m!8923))

(declare-fun m!8925 () Bool)

(assert (=> b!13055 m!8925))

(declare-fun m!8927 () Bool)

(assert (=> b!13050 m!8927))

(declare-fun m!8929 () Bool)

(assert (=> start!1936 m!8929))

(push 1)

(assert (not b!13051))

(assert tp_is_empty!649)

(assert (not start!1936))

(assert (not b!13055))

(assert (not b!13049))

(assert (not b!13052))

(assert (not b!13050))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1943 () Bool)

(declare-fun res!10385 () Bool)

(declare-fun e!7859 () Bool)

(assert (=> d!1943 (=> res!10385 e!7859)))

(assert (=> d!1943 (= res!10385 (is-Nil!380 lt!3483))))

(assert (=> d!1943 (= (forall!68 lt!3483 lambda!44) e!7859)))

(declare-fun b!13112 () Bool)

(declare-fun e!7861 () Bool)

(assert (=> b!13112 (= e!7859 e!7861)))

(declare-fun res!10387 () Bool)

(assert (=> b!13112 (=> (not res!10387) (not e!7861))))

(declare-fun dynLambda!82 (Int tuple2!448) Bool)

(assert (=> b!13112 (= res!10387 (dynLambda!82 lambda!44 (h!945 lt!3483)))))

(declare-fun b!13114 () Bool)

(assert (=> b!13114 (= e!7861 (forall!68 (t!2776 lt!3483) lambda!44))))

(assert (= (and d!1943 (not res!10385)) b!13112))

(assert (= (and b!13112 res!10387) b!13114))

(declare-fun b_lambda!864 () Bool)

(assert (=> (not b_lambda!864) (not b!13112)))

(declare-fun m!8960 () Bool)

(assert (=> b!13112 m!8960))

(declare-fun m!8964 () Bool)

(assert (=> b!13114 m!8964))

(assert (=> b!13050 d!1943))

(declare-fun d!1951 () Bool)

(assert (=> d!1951 (= (isEmpty!75 l!522) (is-Nil!380 l!522))))

(assert (=> b!13051 d!1951))

(declare-fun d!1955 () Bool)

(declare-fun res!10404 () Bool)

(declare-fun e!7878 () Bool)

(assert (=> d!1955 (=> res!10404 e!7878)))

(assert (=> d!1955 (= res!10404 (or (is-Nil!380 l!522) (is-Nil!380 (t!2776 l!522))))))

(assert (=> d!1955 (= (isStrictlySorted!74 l!522) e!7878)))

(declare-fun b!13132 () Bool)

(declare-fun e!7879 () Bool)

(assert (=> b!13132 (= e!7878 e!7879)))

(declare-fun res!10405 () Bool)

(assert (=> b!13132 (=> (not res!10405) (not e!7879))))

(assert (=> b!13132 (= res!10405 (bvslt (_1!224 (h!945 l!522)) (_1!224 (h!945 (t!2776 l!522)))))))

(declare-fun b!13133 () Bool)

(assert (=> b!13133 (= e!7879 (isStrictlySorted!74 (t!2776 l!522)))))

(assert (= (and d!1955 (not res!10404)) b!13132))

(assert (= (and b!13132 res!10405) b!13133))

(declare-fun m!8971 () Bool)

(assert (=> b!13133 m!8971))

(assert (=> start!1936 d!1955))

(declare-fun d!1961 () Bool)

(assert (=> d!1961 (= (isEmpty!75 lt!3483) (is-Nil!380 lt!3483))))

(assert (=> b!13049 d!1961))

(declare-fun d!1963 () Bool)

(declare-fun res!10406 () Bool)

(declare-fun e!7880 () Bool)

(assert (=> d!1963 (=> res!10406 e!7880)))

(assert (=> d!1963 (= res!10406 (or (is-Nil!380 lt!3483) (is-Nil!380 (t!2776 lt!3483))))))

(assert (=> d!1963 (= (isStrictlySorted!74 lt!3483) e!7880)))

(declare-fun b!13134 () Bool)

(declare-fun e!7881 () Bool)

(assert (=> b!13134 (= e!7880 e!7881)))

(declare-fun res!10407 () Bool)

(assert (=> b!13134 (=> (not res!10407) (not e!7881))))

(assert (=> b!13134 (= res!10407 (bvslt (_1!224 (h!945 lt!3483)) (_1!224 (h!945 (t!2776 lt!3483)))))))

(declare-fun b!13135 () Bool)

(assert (=> b!13135 (= e!7881 (isStrictlySorted!74 (t!2776 lt!3483)))))

(assert (= (and d!1963 (not res!10406)) b!13134))

(assert (= (and b!13134 res!10407) b!13135))

(declare-fun m!8973 () Bool)

(assert (=> b!13135 m!8973))

(assert (=> b!13055 d!1963))

(declare-fun d!1967 () Bool)

(assert (=> d!1967 (= ($colon$colon!9 (filterByValue!1 (t!2776 l!522) value!159) (h!945 l!522)) (Cons!379 (h!945 l!522) (filterByValue!1 (t!2776 l!522) value!159)))))

(assert (=> b!13055 d!1967))

(declare-fun bs!510 () Bool)

(declare-fun b!13197 () Bool)

(assert (= bs!510 (and b!13197 b!13050)))

(declare-fun lambda!56 () Int)

(assert (=> bs!510 (= lambda!56 lambda!44)))

(assert (=> b!13197 true))

(declare-fun b!13190 () Bool)

(declare-fun e!7917 () Bool)

(declare-fun call!356 () Bool)

(assert (=> b!13190 (= e!7917 call!356)))

(declare-fun b!13191 () Bool)

(declare-fun e!7916 () List!383)

(declare-fun e!7918 () List!383)

(assert (=> b!13191 (= e!7916 e!7918)))

(declare-fun c!1233 () Bool)

(assert (=> b!13191 (= c!1233 (and (is-Cons!379 (t!2776 l!522)) (not (= (_2!224 (h!945 (t!2776 l!522))) value!159))))))

(declare-fun b!13192 () Bool)

(declare-fun e!7919 () Bool)

(declare-fun lt!3496 () List!383)

(declare-fun head!783 (List!383) tuple2!448)

(assert (=> b!13192 (= e!7919 (bvsge (_1!224 (head!783 lt!3496)) (_1!224 (head!783 (t!2776 l!522)))))))

(declare-fun b!13193 () Bool)

(assert (=> b!13193 (= e!7918 Nil!380)))

(declare-fun bm!353 () Bool)

(declare-fun call!357 () List!383)

(assert (=> bm!353 (= call!357 (filterByValue!1 (t!2776 (t!2776 l!522)) value!159))))

(declare-fun b!13194 () Bool)

(assert (=> b!13194 (= e!7916 ($colon$colon!9 call!357 (h!945 (t!2776 l!522))))))

(declare-fun b!13195 () Bool)

(assert (=> b!13195 (= e!7918 call!357)))

(declare-fun b!13196 () Bool)

(assert (=> b!13196 (= e!7917 e!7919)))

(declare-fun res!10430 () Bool)

(assert (=> b!13196 (= res!10430 call!356)))

(assert (=> b!13196 (=> res!10430 e!7919)))

(declare-fun res!10432 () Bool)

(declare-fun e!7920 () Bool)

(assert (=> b!13197 (=> (not res!10432) (not e!7920))))

(assert (=> b!13197 (= res!10432 (forall!68 lt!3496 lambda!56))))

(declare-fun bm!354 () Bool)

(assert (=> bm!354 (= call!356 (isEmpty!75 lt!3496))))

(declare-fun d!1969 () Bool)

(assert (=> d!1969 e!7920))

(declare-fun res!10431 () Bool)

(assert (=> d!1969 (=> (not res!10431) (not e!7920))))

(assert (=> d!1969 (= res!10431 (isStrictlySorted!74 lt!3496))))

(assert (=> d!1969 (= lt!3496 e!7916)))

(declare-fun c!1231 () Bool)

(assert (=> d!1969 (= c!1231 (and (is-Cons!379 (t!2776 l!522)) (= (_2!224 (h!945 (t!2776 l!522))) value!159)))))

(assert (=> d!1969 (isStrictlySorted!74 (t!2776 l!522))))

(assert (=> d!1969 (= (filterByValue!1 (t!2776 l!522) value!159) lt!3496)))

(declare-fun b!13198 () Bool)

(assert (=> b!13198 (= e!7920 e!7917)))

(declare-fun c!1232 () Bool)

(assert (=> b!13198 (= c!1232 (isEmpty!75 (t!2776 l!522)))))

(assert (= (and d!1969 c!1231) b!13194))

(assert (= (and d!1969 (not c!1231)) b!13191))

(assert (= (and b!13191 c!1233) b!13195))

(assert (= (and b!13191 (not c!1233)) b!13193))

(assert (= (or b!13194 b!13195) bm!353))

(assert (= (and d!1969 res!10431) b!13197))

(assert (= (and b!13197 res!10432) b!13198))

(assert (= (and b!13198 c!1232) b!13190))

(assert (= (and b!13198 (not c!1232)) b!13196))

(assert (= (and b!13196 (not res!10430)) b!13192))

(assert (= (or b!13190 b!13196) bm!354))

(declare-fun m!8991 () Bool)

(assert (=> bm!354 m!8991))

(declare-fun m!8995 () Bool)

(assert (=> bm!353 m!8995))

(declare-fun m!8999 () Bool)

(assert (=> d!1969 m!8999))

(assert (=> d!1969 m!8971))

(declare-fun m!9003 () Bool)

(assert (=> b!13197 m!9003))

(declare-fun m!9007 () Bool)

(assert (=> b!13192 m!9007))

(declare-fun m!9009 () Bool)

(assert (=> b!13192 m!9009))

(declare-fun m!9011 () Bool)

(assert (=> b!13194 m!9011))

(declare-fun m!9013 () Bool)

(assert (=> b!13198 m!9013))

(assert (=> b!13055 d!1969))

(declare-fun b!13222 () Bool)

(declare-fun e!7934 () Bool)

(declare-fun tp!2150 () Bool)

(assert (=> b!13222 (= e!7934 (and tp_is_empty!649 tp!2150))))

(assert (=> b!13052 (= tp!2141 e!7934)))

(assert (= (and b!13052 (is-Cons!379 (t!2776 l!522))) b!13222))

(declare-fun b_lambda!869 () Bool)

(assert (= b_lambda!864 (or b!13050 b_lambda!869)))

(declare-fun bs!511 () Bool)

(declare-fun d!1985 () Bool)

(assert (= bs!511 (and d!1985 b!13050)))

(assert (=> bs!511 (= (dynLambda!82 lambda!44 (h!945 lt!3483)) (= (_2!224 (h!945 lt!3483)) value!159))))

(assert (=> b!13112 d!1985))

(push 1)


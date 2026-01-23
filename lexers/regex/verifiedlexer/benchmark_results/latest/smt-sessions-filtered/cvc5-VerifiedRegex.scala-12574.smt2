; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!697318 () Bool)

(assert start!697318)

(declare-fun b!7153932 () Bool)

(declare-fun e!4297801 () Bool)

(declare-datatypes ((C!36786 0))(
  ( (C!36787 (val!28341 Int)) )
))
(declare-datatypes ((Regex!18256 0))(
  ( (ElementMatch!18256 (c!1333347 C!36786)) (Concat!27101 (regOne!37024 Regex!18256) (regTwo!37024 Regex!18256)) (EmptyExpr!18256) (Star!18256 (reg!18585 Regex!18256)) (EmptyLang!18256) (Union!18256 (regOne!37025 Regex!18256) (regTwo!37025 Regex!18256)) )
))
(declare-datatypes ((List!69560 0))(
  ( (Nil!69436) (Cons!69436 (h!75884 Regex!18256) (t!383577 List!69560)) )
))
(declare-fun l!9132 () List!69560)

(declare-fun isEmpty!40124 (List!69560) Bool)

(assert (=> b!7153932 (= e!4297801 (not (isEmpty!40124 (t!383577 l!9132))))))

(declare-fun res!2917318 () Bool)

(declare-fun e!4297804 () Bool)

(assert (=> start!697318 (=> (not res!2917318) (not e!4297804))))

(declare-fun lambda!436233 () Int)

(declare-fun forall!17096 (List!69560 Int) Bool)

(assert (=> start!697318 (= res!2917318 (forall!17096 l!9132 lambda!436233))))

(assert (=> start!697318 e!4297804))

(declare-fun e!4297803 () Bool)

(assert (=> start!697318 e!4297803))

(declare-fun e!4297802 () Bool)

(assert (=> start!697318 e!4297802))

(declare-fun b!7153933 () Bool)

(declare-fun res!2917322 () Bool)

(assert (=> b!7153933 (=> (not res!2917322) (not e!4297804))))

(declare-fun r!13749 () Regex!18256)

(declare-fun generalisedUnion!2719 (List!69560) Regex!18256)

(assert (=> b!7153933 (= res!2917322 (= r!13749 (generalisedUnion!2719 l!9132)))))

(declare-fun b!7153934 () Bool)

(declare-fun res!2917320 () Bool)

(assert (=> b!7153934 (=> (not res!2917320) (not e!4297804))))

(assert (=> b!7153934 (= res!2917320 (forall!17096 (t!383577 l!9132) lambda!436233))))

(declare-fun b!7153935 () Bool)

(declare-fun tp_is_empty!46145 () Bool)

(assert (=> b!7153935 (= e!4297802 tp_is_empty!46145)))

(declare-fun b!7153936 () Bool)

(declare-fun tp!1977438 () Bool)

(assert (=> b!7153936 (= e!4297802 tp!1977438)))

(declare-fun b!7153937 () Bool)

(declare-fun res!2917323 () Bool)

(assert (=> b!7153937 (=> (not res!2917323) (not e!4297804))))

(assert (=> b!7153937 (= res!2917323 (and (is-Cons!69436 l!9132) (is-Union!18256 r!13749)))))

(declare-fun b!7153938 () Bool)

(declare-fun res!2917319 () Bool)

(assert (=> b!7153938 (=> (not res!2917319) (not e!4297804))))

(assert (=> b!7153938 (= res!2917319 e!4297801)))

(declare-fun res!2917321 () Bool)

(assert (=> b!7153938 (=> res!2917321 e!4297801)))

(assert (=> b!7153938 (= res!2917321 (not (is-Cons!69436 l!9132)))))

(declare-fun b!7153939 () Bool)

(declare-fun tp!1977440 () Bool)

(declare-fun tp!1977444 () Bool)

(assert (=> b!7153939 (= e!4297803 (and tp!1977440 tp!1977444))))

(declare-fun b!7153940 () Bool)

(assert (=> b!7153940 (= e!4297804 (not (= (regTwo!37025 r!13749) (generalisedUnion!2719 (t!383577 l!9132)))))))

(declare-fun b!7153941 () Bool)

(declare-fun tp!1977441 () Bool)

(declare-fun tp!1977443 () Bool)

(assert (=> b!7153941 (= e!4297802 (and tp!1977441 tp!1977443))))

(declare-fun b!7153942 () Bool)

(declare-fun tp!1977439 () Bool)

(declare-fun tp!1977442 () Bool)

(assert (=> b!7153942 (= e!4297802 (and tp!1977439 tp!1977442))))

(assert (= (and start!697318 res!2917318) b!7153933))

(assert (= (and b!7153933 res!2917322) b!7153938))

(assert (= (and b!7153938 (not res!2917321)) b!7153932))

(assert (= (and b!7153938 res!2917319) b!7153937))

(assert (= (and b!7153937 res!2917323) b!7153934))

(assert (= (and b!7153934 res!2917320) b!7153940))

(assert (= (and start!697318 (is-Cons!69436 l!9132)) b!7153939))

(assert (= (and start!697318 (is-ElementMatch!18256 r!13749)) b!7153935))

(assert (= (and start!697318 (is-Concat!27101 r!13749)) b!7153942))

(assert (= (and start!697318 (is-Star!18256 r!13749)) b!7153936))

(assert (= (and start!697318 (is-Union!18256 r!13749)) b!7153941))

(declare-fun m!7861920 () Bool)

(assert (=> b!7153933 m!7861920))

(declare-fun m!7861922 () Bool)

(assert (=> b!7153932 m!7861922))

(declare-fun m!7861924 () Bool)

(assert (=> b!7153940 m!7861924))

(declare-fun m!7861926 () Bool)

(assert (=> start!697318 m!7861926))

(declare-fun m!7861928 () Bool)

(assert (=> b!7153934 m!7861928))

(push 1)

(assert (not b!7153934))

(assert (not b!7153940))

(assert (not start!697318))

(assert (not b!7153942))

(assert (not b!7153932))

(assert tp_is_empty!46145)

(assert (not b!7153939))

(assert (not b!7153941))

(assert (not b!7153936))

(assert (not b!7153933))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2229249 () Bool)

(declare-fun res!2917346 () Bool)

(declare-fun e!4297821 () Bool)

(assert (=> d!2229249 (=> res!2917346 e!4297821)))

(assert (=> d!2229249 (= res!2917346 (is-Nil!69436 l!9132))))

(assert (=> d!2229249 (= (forall!17096 l!9132 lambda!436233) e!4297821)))

(declare-fun b!7153980 () Bool)

(declare-fun e!4297822 () Bool)

(assert (=> b!7153980 (= e!4297821 e!4297822)))

(declare-fun res!2917347 () Bool)

(assert (=> b!7153980 (=> (not res!2917347) (not e!4297822))))

(declare-fun dynLambda!28292 (Int Regex!18256) Bool)

(assert (=> b!7153980 (= res!2917347 (dynLambda!28292 lambda!436233 (h!75884 l!9132)))))

(declare-fun b!7153981 () Bool)

(assert (=> b!7153981 (= e!4297822 (forall!17096 (t!383577 l!9132) lambda!436233))))

(assert (= (and d!2229249 (not res!2917346)) b!7153980))

(assert (= (and b!7153980 res!2917347) b!7153981))

(declare-fun b_lambda!273183 () Bool)

(assert (=> (not b_lambda!273183) (not b!7153980)))

(declare-fun m!7861940 () Bool)

(assert (=> b!7153980 m!7861940))

(assert (=> b!7153981 m!7861928))

(assert (=> start!697318 d!2229249))

(declare-fun bs!1889662 () Bool)

(declare-fun d!2229251 () Bool)

(assert (= bs!1889662 (and d!2229251 start!697318)))

(declare-fun lambda!436241 () Int)

(assert (=> bs!1889662 (= lambda!436241 lambda!436233)))

(declare-fun b!7154002 () Bool)

(declare-fun e!4297840 () Bool)

(assert (=> b!7154002 (= e!4297840 (isEmpty!40124 (t!383577 (t!383577 l!9132))))))

(declare-fun b!7154003 () Bool)

(declare-fun e!4297837 () Bool)

(declare-fun e!4297838 () Bool)

(assert (=> b!7154003 (= e!4297837 e!4297838)))

(declare-fun c!1333358 () Bool)

(assert (=> b!7154003 (= c!1333358 (isEmpty!40124 (t!383577 l!9132)))))

(declare-fun b!7154004 () Bool)

(declare-fun lt!2569127 () Regex!18256)

(declare-fun isEmptyLang!2120 (Regex!18256) Bool)

(assert (=> b!7154004 (= e!4297838 (isEmptyLang!2120 lt!2569127))))

(assert (=> d!2229251 e!4297837))

(declare-fun res!2917353 () Bool)

(assert (=> d!2229251 (=> (not res!2917353) (not e!4297837))))

(declare-fun validRegex!9404 (Regex!18256) Bool)

(assert (=> d!2229251 (= res!2917353 (validRegex!9404 lt!2569127))))

(declare-fun e!4297835 () Regex!18256)

(assert (=> d!2229251 (= lt!2569127 e!4297835)))

(declare-fun c!1333357 () Bool)

(assert (=> d!2229251 (= c!1333357 e!4297840)))

(declare-fun res!2917352 () Bool)

(assert (=> d!2229251 (=> (not res!2917352) (not e!4297840))))

(assert (=> d!2229251 (= res!2917352 (is-Cons!69436 (t!383577 l!9132)))))

(assert (=> d!2229251 (forall!17096 (t!383577 l!9132) lambda!436241)))

(assert (=> d!2229251 (= (generalisedUnion!2719 (t!383577 l!9132)) lt!2569127)))

(declare-fun b!7154005 () Bool)

(assert (=> b!7154005 (= e!4297835 (h!75884 (t!383577 l!9132)))))

(declare-fun b!7154006 () Bool)

(declare-fun e!4297836 () Bool)

(declare-fun head!14556 (List!69560) Regex!18256)

(assert (=> b!7154006 (= e!4297836 (= lt!2569127 (head!14556 (t!383577 l!9132))))))

(declare-fun b!7154007 () Bool)

(declare-fun e!4297839 () Regex!18256)

(assert (=> b!7154007 (= e!4297839 (Union!18256 (h!75884 (t!383577 l!9132)) (generalisedUnion!2719 (t!383577 (t!383577 l!9132)))))))

(declare-fun b!7154008 () Bool)

(assert (=> b!7154008 (= e!4297838 e!4297836)))

(declare-fun c!1333359 () Bool)

(declare-fun tail!14025 (List!69560) List!69560)

(assert (=> b!7154008 (= c!1333359 (isEmpty!40124 (tail!14025 (t!383577 l!9132))))))

(declare-fun b!7154009 () Bool)

(declare-fun isUnion!1548 (Regex!18256) Bool)

(assert (=> b!7154009 (= e!4297836 (isUnion!1548 lt!2569127))))

(declare-fun b!7154010 () Bool)

(assert (=> b!7154010 (= e!4297839 EmptyLang!18256)))

(declare-fun b!7154011 () Bool)

(assert (=> b!7154011 (= e!4297835 e!4297839)))

(declare-fun c!1333360 () Bool)

(assert (=> b!7154011 (= c!1333360 (is-Cons!69436 (t!383577 l!9132)))))

(assert (= (and d!2229251 res!2917352) b!7154002))

(assert (= (and d!2229251 c!1333357) b!7154005))

(assert (= (and d!2229251 (not c!1333357)) b!7154011))

(assert (= (and b!7154011 c!1333360) b!7154007))

(assert (= (and b!7154011 (not c!1333360)) b!7154010))

(assert (= (and d!2229251 res!2917353) b!7154003))

(assert (= (and b!7154003 c!1333358) b!7154004))

(assert (= (and b!7154003 (not c!1333358)) b!7154008))

(assert (= (and b!7154008 c!1333359) b!7154006))

(assert (= (and b!7154008 (not c!1333359)) b!7154009))

(assert (=> b!7154003 m!7861922))

(declare-fun m!7861942 () Bool)

(assert (=> b!7154002 m!7861942))

(declare-fun m!7861944 () Bool)

(assert (=> b!7154007 m!7861944))

(declare-fun m!7861946 () Bool)

(assert (=> b!7154006 m!7861946))

(declare-fun m!7861948 () Bool)

(assert (=> b!7154004 m!7861948))

(declare-fun m!7861950 () Bool)

(assert (=> b!7154009 m!7861950))

(declare-fun m!7861952 () Bool)

(assert (=> b!7154008 m!7861952))

(assert (=> b!7154008 m!7861952))

(declare-fun m!7861954 () Bool)

(assert (=> b!7154008 m!7861954))

(declare-fun m!7861956 () Bool)

(assert (=> d!2229251 m!7861956))

(declare-fun m!7861958 () Bool)

(assert (=> d!2229251 m!7861958))

(assert (=> b!7153940 d!2229251))

(declare-fun d!2229255 () Bool)

(declare-fun res!2917354 () Bool)

(declare-fun e!4297841 () Bool)

(assert (=> d!2229255 (=> res!2917354 e!4297841)))

(assert (=> d!2229255 (= res!2917354 (is-Nil!69436 (t!383577 l!9132)))))

(assert (=> d!2229255 (= (forall!17096 (t!383577 l!9132) lambda!436233) e!4297841)))

(declare-fun b!7154012 () Bool)

(declare-fun e!4297842 () Bool)

(assert (=> b!7154012 (= e!4297841 e!4297842)))

(declare-fun res!2917355 () Bool)

(assert (=> b!7154012 (=> (not res!2917355) (not e!4297842))))

(assert (=> b!7154012 (= res!2917355 (dynLambda!28292 lambda!436233 (h!75884 (t!383577 l!9132))))))

(declare-fun b!7154013 () Bool)

(assert (=> b!7154013 (= e!4297842 (forall!17096 (t!383577 (t!383577 l!9132)) lambda!436233))))

(assert (= (and d!2229255 (not res!2917354)) b!7154012))

(assert (= (and b!7154012 res!2917355) b!7154013))

(declare-fun b_lambda!273185 () Bool)

(assert (=> (not b_lambda!273185) (not b!7154012)))

(declare-fun m!7861960 () Bool)

(assert (=> b!7154012 m!7861960))

(declare-fun m!7861962 () Bool)

(assert (=> b!7154013 m!7861962))

(assert (=> b!7153934 d!2229255))

(declare-fun bs!1889663 () Bool)

(declare-fun d!2229257 () Bool)

(assert (= bs!1889663 (and d!2229257 start!697318)))

(declare-fun lambda!436242 () Int)

(assert (=> bs!1889663 (= lambda!436242 lambda!436233)))

(declare-fun bs!1889664 () Bool)

(assert (= bs!1889664 (and d!2229257 d!2229251)))

(assert (=> bs!1889664 (= lambda!436242 lambda!436241)))

(declare-fun b!7154014 () Bool)

(declare-fun e!4297848 () Bool)

(assert (=> b!7154014 (= e!4297848 (isEmpty!40124 (t!383577 l!9132)))))

(declare-fun b!7154015 () Bool)

(declare-fun e!4297845 () Bool)

(declare-fun e!4297846 () Bool)

(assert (=> b!7154015 (= e!4297845 e!4297846)))

(declare-fun c!1333362 () Bool)

(assert (=> b!7154015 (= c!1333362 (isEmpty!40124 l!9132))))

(declare-fun b!7154016 () Bool)

(declare-fun lt!2569128 () Regex!18256)

(assert (=> b!7154016 (= e!4297846 (isEmptyLang!2120 lt!2569128))))

(assert (=> d!2229257 e!4297845))

(declare-fun res!2917357 () Bool)

(assert (=> d!2229257 (=> (not res!2917357) (not e!4297845))))

(assert (=> d!2229257 (= res!2917357 (validRegex!9404 lt!2569128))))

(declare-fun e!4297843 () Regex!18256)

(assert (=> d!2229257 (= lt!2569128 e!4297843)))

(declare-fun c!1333361 () Bool)

(assert (=> d!2229257 (= c!1333361 e!4297848)))

(declare-fun res!2917356 () Bool)

(assert (=> d!2229257 (=> (not res!2917356) (not e!4297848))))

(assert (=> d!2229257 (= res!2917356 (is-Cons!69436 l!9132))))

(assert (=> d!2229257 (forall!17096 l!9132 lambda!436242)))

(assert (=> d!2229257 (= (generalisedUnion!2719 l!9132) lt!2569128)))

(declare-fun b!7154017 () Bool)

(assert (=> b!7154017 (= e!4297843 (h!75884 l!9132))))

(declare-fun b!7154018 () Bool)

(declare-fun e!4297844 () Bool)

(assert (=> b!7154018 (= e!4297844 (= lt!2569128 (head!14556 l!9132)))))

(declare-fun b!7154019 () Bool)

(declare-fun e!4297847 () Regex!18256)

(assert (=> b!7154019 (= e!4297847 (Union!18256 (h!75884 l!9132) (generalisedUnion!2719 (t!383577 l!9132))))))

(declare-fun b!7154020 () Bool)

(assert (=> b!7154020 (= e!4297846 e!4297844)))

(declare-fun c!1333363 () Bool)

(assert (=> b!7154020 (= c!1333363 (isEmpty!40124 (tail!14025 l!9132)))))

(declare-fun b!7154021 () Bool)

(assert (=> b!7154021 (= e!4297844 (isUnion!1548 lt!2569128))))

(declare-fun b!7154022 () Bool)

(assert (=> b!7154022 (= e!4297847 EmptyLang!18256)))

(declare-fun b!7154023 () Bool)

(assert (=> b!7154023 (= e!4297843 e!4297847)))

(declare-fun c!1333364 () Bool)

(assert (=> b!7154023 (= c!1333364 (is-Cons!69436 l!9132))))

(assert (= (and d!2229257 res!2917356) b!7154014))

(assert (= (and d!2229257 c!1333361) b!7154017))

(assert (= (and d!2229257 (not c!1333361)) b!7154023))

(assert (= (and b!7154023 c!1333364) b!7154019))

(assert (= (and b!7154023 (not c!1333364)) b!7154022))

(assert (= (and d!2229257 res!2917357) b!7154015))

(assert (= (and b!7154015 c!1333362) b!7154016))

(assert (= (and b!7154015 (not c!1333362)) b!7154020))

(assert (= (and b!7154020 c!1333363) b!7154018))

(assert (= (and b!7154020 (not c!1333363)) b!7154021))

(declare-fun m!7861964 () Bool)

(assert (=> b!7154015 m!7861964))

(assert (=> b!7154014 m!7861922))

(assert (=> b!7154019 m!7861924))

(declare-fun m!7861966 () Bool)

(assert (=> b!7154018 m!7861966))

(declare-fun m!7861968 () Bool)

(assert (=> b!7154016 m!7861968))

(declare-fun m!7861970 () Bool)

(assert (=> b!7154021 m!7861970))

(declare-fun m!7861972 () Bool)

(assert (=> b!7154020 m!7861972))

(assert (=> b!7154020 m!7861972))

(declare-fun m!7861974 () Bool)

(assert (=> b!7154020 m!7861974))

(declare-fun m!7861976 () Bool)

(assert (=> d!2229257 m!7861976))

(declare-fun m!7861978 () Bool)

(assert (=> d!2229257 m!7861978))

(assert (=> b!7153933 d!2229257))

(declare-fun d!2229259 () Bool)

(assert (=> d!2229259 (= (isEmpty!40124 (t!383577 l!9132)) (is-Nil!69436 (t!383577 l!9132)))))

(assert (=> b!7153932 d!2229259))

(declare-fun b!7154035 () Bool)

(declare-fun e!4297851 () Bool)

(declare-fun tp!1977476 () Bool)

(declare-fun tp!1977479 () Bool)

(assert (=> b!7154035 (= e!4297851 (and tp!1977476 tp!1977479))))

(declare-fun b!7154034 () Bool)

(assert (=> b!7154034 (= e!4297851 tp_is_empty!46145)))

(declare-fun b!7154037 () Bool)

(declare-fun tp!1977478 () Bool)

(declare-fun tp!1977480 () Bool)

(assert (=> b!7154037 (= e!4297851 (and tp!1977478 tp!1977480))))

(assert (=> b!7153939 (= tp!1977440 e!4297851)))

(declare-fun b!7154036 () Bool)

(declare-fun tp!1977477 () Bool)

(assert (=> b!7154036 (= e!4297851 tp!1977477)))

(assert (= (and b!7153939 (is-ElementMatch!18256 (h!75884 l!9132))) b!7154034))

(assert (= (and b!7153939 (is-Concat!27101 (h!75884 l!9132))) b!7154035))

(assert (= (and b!7153939 (is-Star!18256 (h!75884 l!9132))) b!7154036))

(assert (= (and b!7153939 (is-Union!18256 (h!75884 l!9132))) b!7154037))

(declare-fun b!7154042 () Bool)

(declare-fun e!4297854 () Bool)

(declare-fun tp!1977485 () Bool)

(declare-fun tp!1977486 () Bool)

(assert (=> b!7154042 (= e!4297854 (and tp!1977485 tp!1977486))))

(assert (=> b!7153939 (= tp!1977444 e!4297854)))

(assert (= (and b!7153939 (is-Cons!69436 (t!383577 l!9132))) b!7154042))

(declare-fun b!7154044 () Bool)

(declare-fun e!4297855 () Bool)

(declare-fun tp!1977487 () Bool)

(declare-fun tp!1977490 () Bool)

(assert (=> b!7154044 (= e!4297855 (and tp!1977487 tp!1977490))))

(declare-fun b!7154043 () Bool)

(assert (=> b!7154043 (= e!4297855 tp_is_empty!46145)))

(declare-fun b!7154046 () Bool)

(declare-fun tp!1977489 () Bool)

(declare-fun tp!1977491 () Bool)

(assert (=> b!7154046 (= e!4297855 (and tp!1977489 tp!1977491))))

(assert (=> b!7153942 (= tp!1977439 e!4297855)))

(declare-fun b!7154045 () Bool)

(declare-fun tp!1977488 () Bool)

(assert (=> b!7154045 (= e!4297855 tp!1977488)))

(assert (= (and b!7153942 (is-ElementMatch!18256 (regOne!37024 r!13749))) b!7154043))

(assert (= (and b!7153942 (is-Concat!27101 (regOne!37024 r!13749))) b!7154044))

(assert (= (and b!7153942 (is-Star!18256 (regOne!37024 r!13749))) b!7154045))

(assert (= (and b!7153942 (is-Union!18256 (regOne!37024 r!13749))) b!7154046))

(declare-fun b!7154048 () Bool)

(declare-fun e!4297856 () Bool)

(declare-fun tp!1977492 () Bool)

(declare-fun tp!1977495 () Bool)

(assert (=> b!7154048 (= e!4297856 (and tp!1977492 tp!1977495))))

(declare-fun b!7154047 () Bool)

(assert (=> b!7154047 (= e!4297856 tp_is_empty!46145)))

(declare-fun b!7154050 () Bool)

(declare-fun tp!1977494 () Bool)

(declare-fun tp!1977496 () Bool)

(assert (=> b!7154050 (= e!4297856 (and tp!1977494 tp!1977496))))

(assert (=> b!7153942 (= tp!1977442 e!4297856)))

(declare-fun b!7154049 () Bool)

(declare-fun tp!1977493 () Bool)

(assert (=> b!7154049 (= e!4297856 tp!1977493)))

(assert (= (and b!7153942 (is-ElementMatch!18256 (regTwo!37024 r!13749))) b!7154047))

(assert (= (and b!7153942 (is-Concat!27101 (regTwo!37024 r!13749))) b!7154048))

(assert (= (and b!7153942 (is-Star!18256 (regTwo!37024 r!13749))) b!7154049))

(assert (= (and b!7153942 (is-Union!18256 (regTwo!37024 r!13749))) b!7154050))

(declare-fun b!7154052 () Bool)

(declare-fun e!4297857 () Bool)

(declare-fun tp!1977497 () Bool)

(declare-fun tp!1977500 () Bool)

(assert (=> b!7154052 (= e!4297857 (and tp!1977497 tp!1977500))))

(declare-fun b!7154051 () Bool)

(assert (=> b!7154051 (= e!4297857 tp_is_empty!46145)))

(declare-fun b!7154054 () Bool)

(declare-fun tp!1977499 () Bool)

(declare-fun tp!1977501 () Bool)

(assert (=> b!7154054 (= e!4297857 (and tp!1977499 tp!1977501))))

(assert (=> b!7153941 (= tp!1977441 e!4297857)))

(declare-fun b!7154053 () Bool)

(declare-fun tp!1977498 () Bool)

(assert (=> b!7154053 (= e!4297857 tp!1977498)))

(assert (= (and b!7153941 (is-ElementMatch!18256 (regOne!37025 r!13749))) b!7154051))

(assert (= (and b!7153941 (is-Concat!27101 (regOne!37025 r!13749))) b!7154052))

(assert (= (and b!7153941 (is-Star!18256 (regOne!37025 r!13749))) b!7154053))

(assert (= (and b!7153941 (is-Union!18256 (regOne!37025 r!13749))) b!7154054))

(declare-fun b!7154056 () Bool)

(declare-fun e!4297858 () Bool)

(declare-fun tp!1977502 () Bool)

(declare-fun tp!1977505 () Bool)

(assert (=> b!7154056 (= e!4297858 (and tp!1977502 tp!1977505))))

(declare-fun b!7154055 () Bool)

(assert (=> b!7154055 (= e!4297858 tp_is_empty!46145)))

(declare-fun b!7154058 () Bool)

(declare-fun tp!1977504 () Bool)

(declare-fun tp!1977506 () Bool)

(assert (=> b!7154058 (= e!4297858 (and tp!1977504 tp!1977506))))

(assert (=> b!7153941 (= tp!1977443 e!4297858)))

(declare-fun b!7154057 () Bool)

(declare-fun tp!1977503 () Bool)

(assert (=> b!7154057 (= e!4297858 tp!1977503)))

(assert (= (and b!7153941 (is-ElementMatch!18256 (regTwo!37025 r!13749))) b!7154055))

(assert (= (and b!7153941 (is-Concat!27101 (regTwo!37025 r!13749))) b!7154056))

(assert (= (and b!7153941 (is-Star!18256 (regTwo!37025 r!13749))) b!7154057))

(assert (= (and b!7153941 (is-Union!18256 (regTwo!37025 r!13749))) b!7154058))

(declare-fun b!7154060 () Bool)

(declare-fun e!4297859 () Bool)

(declare-fun tp!1977507 () Bool)

(declare-fun tp!1977510 () Bool)

(assert (=> b!7154060 (= e!4297859 (and tp!1977507 tp!1977510))))

(declare-fun b!7154059 () Bool)

(assert (=> b!7154059 (= e!4297859 tp_is_empty!46145)))

(declare-fun b!7154062 () Bool)

(declare-fun tp!1977509 () Bool)

(declare-fun tp!1977511 () Bool)

(assert (=> b!7154062 (= e!4297859 (and tp!1977509 tp!1977511))))

(assert (=> b!7153936 (= tp!1977438 e!4297859)))

(declare-fun b!7154061 () Bool)

(declare-fun tp!1977508 () Bool)

(assert (=> b!7154061 (= e!4297859 tp!1977508)))

(assert (= (and b!7153936 (is-ElementMatch!18256 (reg!18585 r!13749))) b!7154059))

(assert (= (and b!7153936 (is-Concat!27101 (reg!18585 r!13749))) b!7154060))

(assert (= (and b!7153936 (is-Star!18256 (reg!18585 r!13749))) b!7154061))

(assert (= (and b!7153936 (is-Union!18256 (reg!18585 r!13749))) b!7154062))

(declare-fun b_lambda!273187 () Bool)

(assert (= b_lambda!273185 (or start!697318 b_lambda!273187)))

(declare-fun bs!1889665 () Bool)

(declare-fun d!2229261 () Bool)

(assert (= bs!1889665 (and d!2229261 start!697318)))

(assert (=> bs!1889665 (= (dynLambda!28292 lambda!436233 (h!75884 (t!383577 l!9132))) (validRegex!9404 (h!75884 (t!383577 l!9132))))))

(declare-fun m!7861980 () Bool)

(assert (=> bs!1889665 m!7861980))

(assert (=> b!7154012 d!2229261))

(declare-fun b_lambda!273189 () Bool)

(assert (= b_lambda!273183 (or start!697318 b_lambda!273189)))

(declare-fun bs!1889666 () Bool)

(declare-fun d!2229263 () Bool)

(assert (= bs!1889666 (and d!2229263 start!697318)))

(assert (=> bs!1889666 (= (dynLambda!28292 lambda!436233 (h!75884 l!9132)) (validRegex!9404 (h!75884 l!9132)))))

(declare-fun m!7861982 () Bool)

(assert (=> bs!1889666 m!7861982))

(assert (=> b!7153980 d!2229263))

(push 1)

(assert (not b!7154062))

(assert (not b!7154035))

(assert (not b!7154006))

(assert (not d!2229257))

(assert (not b!7154015))

(assert (not b!7154008))

(assert (not b!7154019))

(assert (not b!7154044))

(assert (not b!7154060))

(assert (not b!7154037))

(assert (not b!7154036))

(assert (not b!7154002))

(assert (not b!7154004))

(assert (not b!7154053))

(assert (not b!7154056))

(assert (not b!7154042))

(assert (not bs!1889665))

(assert (not d!2229251))

(assert (not b!7154018))

(assert (not b!7154058))

(assert (not bs!1889666))

(assert (not b!7154054))

(assert (not b!7154021))

(assert (not b!7154046))

(assert (not b!7154052))

(assert (not b!7154048))

(assert (not b!7154013))

(assert (not b_lambda!273189))

(assert (not b_lambda!273187))

(assert (not b!7154014))

(assert (not b!7154020))

(assert (not b!7153981))

(assert (not b!7154049))

(assert (not b!7154057))

(assert (not b!7154003))

(assert (not b!7154050))

(assert (not b!7154045))

(assert (not b!7154009))

(assert (not b!7154016))

(assert (not b!7154061))

(assert (not b!7154007))

(assert tp_is_empty!46145)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!731800 () Bool)

(assert start!731800)

(declare-fun b!7578876 () Bool)

(declare-fun e!4511142 () Bool)

(declare-datatypes ((C!40476 0))(
  ( (C!40477 (val!30678 Int)) )
))
(declare-datatypes ((Regex!20075 0))(
  ( (ElementMatch!20075 (c!1397962 C!40476)) (Concat!28920 (regOne!40662 Regex!20075) (regTwo!40662 Regex!20075)) (EmptyExpr!20075) (Star!20075 (reg!20404 Regex!20075)) (EmptyLang!20075) (Union!20075 (regOne!40663 Regex!20075) (regTwo!40663 Regex!20075)) )
))
(declare-fun r!22341 () Regex!20075)

(declare-fun lt!2652493 () Bool)

(get-info :version)

(assert (=> b!7578876 (= e!4511142 (not (or ((_ is EmptyLang!20075) r!22341) ((_ is EmptyExpr!20075) r!22341) (not ((_ is ElementMatch!20075) r!22341)) (not lt!2652493))))))

(declare-datatypes ((List!72958 0))(
  ( (Nil!72834) (Cons!72834 (h!79282 C!40476) (t!387693 List!72958)) )
))
(declare-fun s!13436 () List!72958)

(declare-fun matchRSpec!4388 (Regex!20075 List!72958) Bool)

(assert (=> b!7578876 (= lt!2652493 (matchRSpec!4388 r!22341 s!13436))))

(declare-fun matchR!9667 (Regex!20075 List!72958) Bool)

(assert (=> b!7578876 (= lt!2652493 (matchR!9667 r!22341 s!13436))))

(declare-datatypes ((Unit!167106 0))(
  ( (Unit!167107) )
))
(declare-fun lt!2652494 () Unit!167106)

(declare-fun mainMatchTheorem!4382 (Regex!20075 List!72958) Unit!167106)

(assert (=> b!7578876 (= lt!2652494 (mainMatchTheorem!4382 r!22341 s!13436))))

(declare-fun b!7578877 () Bool)

(declare-fun res!3036337 () Bool)

(assert (=> b!7578877 (=> (not res!3036337) (not e!4511142))))

(declare-fun isEmpty!41503 (List!72958) Bool)

(assert (=> b!7578877 (= res!3036337 (not (isEmpty!41503 s!13436)))))

(declare-fun res!3036336 () Bool)

(assert (=> start!731800 (=> (not res!3036336) (not e!4511142))))

(declare-fun validRegex!10503 (Regex!20075) Bool)

(assert (=> start!731800 (= res!3036336 (validRegex!10503 r!22341))))

(assert (=> start!731800 e!4511142))

(declare-fun e!4511141 () Bool)

(assert (=> start!731800 e!4511141))

(declare-fun e!4511143 () Bool)

(assert (=> start!731800 e!4511143))

(declare-fun b!7578878 () Bool)

(declare-fun tp_is_empty!50505 () Bool)

(declare-fun tp!2208452 () Bool)

(assert (=> b!7578878 (= e!4511143 (and tp_is_empty!50505 tp!2208452))))

(declare-fun b!7578879 () Bool)

(assert (=> b!7578879 (= e!4511141 tp_is_empty!50505)))

(declare-fun b!7578880 () Bool)

(declare-fun tp!2208450 () Bool)

(declare-fun tp!2208451 () Bool)

(assert (=> b!7578880 (= e!4511141 (and tp!2208450 tp!2208451))))

(declare-fun b!7578881 () Bool)

(declare-fun tp!2208448 () Bool)

(declare-fun tp!2208449 () Bool)

(assert (=> b!7578881 (= e!4511141 (and tp!2208448 tp!2208449))))

(declare-fun b!7578882 () Bool)

(declare-fun res!3036338 () Bool)

(assert (=> b!7578882 (=> (not res!3036338) (not e!4511142))))

(declare-fun lostCause!1851 (Regex!20075) Bool)

(assert (=> b!7578882 (= res!3036338 (lostCause!1851 r!22341))))

(declare-fun b!7578883 () Bool)

(declare-fun tp!2208453 () Bool)

(assert (=> b!7578883 (= e!4511141 tp!2208453)))

(assert (= (and start!731800 res!3036336) b!7578882))

(assert (= (and b!7578882 res!3036338) b!7578877))

(assert (= (and b!7578877 res!3036337) b!7578876))

(assert (= (and start!731800 ((_ is ElementMatch!20075) r!22341)) b!7578879))

(assert (= (and start!731800 ((_ is Concat!28920) r!22341)) b!7578881))

(assert (= (and start!731800 ((_ is Star!20075) r!22341)) b!7578883))

(assert (= (and start!731800 ((_ is Union!20075) r!22341)) b!7578880))

(assert (= (and start!731800 ((_ is Cons!72834) s!13436)) b!7578878))

(declare-fun m!8135206 () Bool)

(assert (=> b!7578876 m!8135206))

(declare-fun m!8135208 () Bool)

(assert (=> b!7578876 m!8135208))

(declare-fun m!8135210 () Bool)

(assert (=> b!7578876 m!8135210))

(declare-fun m!8135212 () Bool)

(assert (=> b!7578877 m!8135212))

(declare-fun m!8135214 () Bool)

(assert (=> start!731800 m!8135214))

(declare-fun m!8135216 () Bool)

(assert (=> b!7578882 m!8135216))

(check-sat (not b!7578877) (not b!7578878) (not b!7578880) (not b!7578883) (not start!731800) (not b!7578881) (not b!7578882) tp_is_empty!50505 (not b!7578876))
(check-sat)
(get-model)

(declare-fun b!7578929 () Bool)

(declare-fun e!4511183 () Bool)

(declare-fun call!694762 () Bool)

(assert (=> b!7578929 (= e!4511183 call!694762)))

(declare-fun b!7578930 () Bool)

(declare-fun e!4511184 () Bool)

(declare-fun call!694763 () Bool)

(assert (=> b!7578930 (= e!4511184 call!694763)))

(declare-fun bm!694757 () Bool)

(assert (=> bm!694757 (= call!694763 call!694762)))

(declare-fun b!7578931 () Bool)

(declare-fun e!4511180 () Bool)

(declare-fun call!694764 () Bool)

(assert (=> b!7578931 (= e!4511180 call!694764)))

(declare-fun b!7578932 () Bool)

(declare-fun res!3036368 () Bool)

(assert (=> b!7578932 (=> (not res!3036368) (not e!4511184))))

(assert (=> b!7578932 (= res!3036368 call!694764)))

(declare-fun e!4511185 () Bool)

(assert (=> b!7578932 (= e!4511185 e!4511184)))

(declare-fun d!2318207 () Bool)

(declare-fun res!3036365 () Bool)

(declare-fun e!4511182 () Bool)

(assert (=> d!2318207 (=> res!3036365 e!4511182)))

(assert (=> d!2318207 (= res!3036365 ((_ is ElementMatch!20075) r!22341))))

(assert (=> d!2318207 (= (validRegex!10503 r!22341) e!4511182)))

(declare-fun b!7578933 () Bool)

(declare-fun e!4511181 () Bool)

(assert (=> b!7578933 (= e!4511181 e!4511180)))

(declare-fun res!3036366 () Bool)

(assert (=> b!7578933 (=> (not res!3036366) (not e!4511180))))

(assert (=> b!7578933 (= res!3036366 call!694763)))

(declare-fun c!1397974 () Bool)

(declare-fun c!1397973 () Bool)

(declare-fun bm!694758 () Bool)

(assert (=> bm!694758 (= call!694762 (validRegex!10503 (ite c!1397974 (reg!20404 r!22341) (ite c!1397973 (regTwo!40663 r!22341) (regOne!40662 r!22341)))))))

(declare-fun b!7578934 () Bool)

(declare-fun res!3036367 () Bool)

(assert (=> b!7578934 (=> res!3036367 e!4511181)))

(assert (=> b!7578934 (= res!3036367 (not ((_ is Concat!28920) r!22341)))))

(assert (=> b!7578934 (= e!4511185 e!4511181)))

(declare-fun b!7578935 () Bool)

(declare-fun e!4511179 () Bool)

(assert (=> b!7578935 (= e!4511179 e!4511183)))

(declare-fun res!3036364 () Bool)

(declare-fun nullable!8768 (Regex!20075) Bool)

(assert (=> b!7578935 (= res!3036364 (not (nullable!8768 (reg!20404 r!22341))))))

(assert (=> b!7578935 (=> (not res!3036364) (not e!4511183))))

(declare-fun b!7578936 () Bool)

(assert (=> b!7578936 (= e!4511182 e!4511179)))

(assert (=> b!7578936 (= c!1397974 ((_ is Star!20075) r!22341))))

(declare-fun b!7578937 () Bool)

(assert (=> b!7578937 (= e!4511179 e!4511185)))

(assert (=> b!7578937 (= c!1397973 ((_ is Union!20075) r!22341))))

(declare-fun bm!694759 () Bool)

(assert (=> bm!694759 (= call!694764 (validRegex!10503 (ite c!1397973 (regOne!40663 r!22341) (regTwo!40662 r!22341))))))

(assert (= (and d!2318207 (not res!3036365)) b!7578936))

(assert (= (and b!7578936 c!1397974) b!7578935))

(assert (= (and b!7578936 (not c!1397974)) b!7578937))

(assert (= (and b!7578935 res!3036364) b!7578929))

(assert (= (and b!7578937 c!1397973) b!7578932))

(assert (= (and b!7578937 (not c!1397973)) b!7578934))

(assert (= (and b!7578932 res!3036368) b!7578930))

(assert (= (and b!7578934 (not res!3036367)) b!7578933))

(assert (= (and b!7578933 res!3036366) b!7578931))

(assert (= (or b!7578930 b!7578933) bm!694757))

(assert (= (or b!7578932 b!7578931) bm!694759))

(assert (= (or b!7578929 bm!694757) bm!694758))

(declare-fun m!8135224 () Bool)

(assert (=> bm!694758 m!8135224))

(declare-fun m!8135226 () Bool)

(assert (=> b!7578935 m!8135226))

(declare-fun m!8135228 () Bool)

(assert (=> bm!694759 m!8135228))

(assert (=> start!731800 d!2318207))

(declare-fun d!2318213 () Bool)

(declare-fun lostCauseFct!504 (Regex!20075) Bool)

(assert (=> d!2318213 (= (lostCause!1851 r!22341) (lostCauseFct!504 r!22341))))

(declare-fun bs!1940946 () Bool)

(assert (= bs!1940946 d!2318213))

(declare-fun m!8135232 () Bool)

(assert (=> bs!1940946 m!8135232))

(assert (=> b!7578882 d!2318213))

(declare-fun d!2318217 () Bool)

(assert (=> d!2318217 (= (isEmpty!41503 s!13436) ((_ is Nil!72834) s!13436))))

(assert (=> b!7578877 d!2318217))

(declare-fun b!7579100 () Bool)

(assert (=> b!7579100 true))

(assert (=> b!7579100 true))

(declare-fun bs!1940949 () Bool)

(declare-fun b!7579103 () Bool)

(assert (= bs!1940949 (and b!7579103 b!7579100)))

(declare-fun lambda!466901 () Int)

(declare-fun lambda!466900 () Int)

(assert (=> bs!1940949 (not (= lambda!466901 lambda!466900))))

(assert (=> b!7579103 true))

(assert (=> b!7579103 true))

(declare-fun b!7579094 () Bool)

(declare-fun e!4511264 () Bool)

(declare-fun e!4511262 () Bool)

(assert (=> b!7579094 (= e!4511264 e!4511262)))

(declare-fun res!3036429 () Bool)

(assert (=> b!7579094 (= res!3036429 (not ((_ is EmptyLang!20075) r!22341)))))

(assert (=> b!7579094 (=> (not res!3036429) (not e!4511262))))

(declare-fun b!7579095 () Bool)

(declare-fun c!1398005 () Bool)

(assert (=> b!7579095 (= c!1398005 ((_ is Union!20075) r!22341))))

(declare-fun e!4511265 () Bool)

(declare-fun e!4511260 () Bool)

(assert (=> b!7579095 (= e!4511265 e!4511260)))

(declare-fun c!1398006 () Bool)

(declare-fun bm!694773 () Bool)

(declare-fun call!694778 () Bool)

(declare-fun Exists!4310 (Int) Bool)

(assert (=> bm!694773 (= call!694778 (Exists!4310 (ite c!1398006 lambda!466900 lambda!466901)))))

(declare-fun d!2318219 () Bool)

(declare-fun c!1398004 () Bool)

(assert (=> d!2318219 (= c!1398004 ((_ is EmptyExpr!20075) r!22341))))

(assert (=> d!2318219 (= (matchRSpec!4388 r!22341 s!13436) e!4511264)))

(declare-fun b!7579096 () Bool)

(declare-fun e!4511261 () Bool)

(assert (=> b!7579096 (= e!4511260 e!4511261)))

(declare-fun res!3036428 () Bool)

(assert (=> b!7579096 (= res!3036428 (matchRSpec!4388 (regOne!40663 r!22341) s!13436))))

(assert (=> b!7579096 (=> res!3036428 e!4511261)))

(declare-fun bm!694774 () Bool)

(declare-fun call!694779 () Bool)

(assert (=> bm!694774 (= call!694779 (isEmpty!41503 s!13436))))

(declare-fun b!7579097 () Bool)

(declare-fun e!4511263 () Bool)

(assert (=> b!7579097 (= e!4511260 e!4511263)))

(assert (=> b!7579097 (= c!1398006 ((_ is Star!20075) r!22341))))

(declare-fun b!7579098 () Bool)

(assert (=> b!7579098 (= e!4511265 (= s!13436 (Cons!72834 (c!1397962 r!22341) Nil!72834)))))

(declare-fun b!7579099 () Bool)

(declare-fun res!3036430 () Bool)

(declare-fun e!4511266 () Bool)

(assert (=> b!7579099 (=> res!3036430 e!4511266)))

(assert (=> b!7579099 (= res!3036430 call!694779)))

(assert (=> b!7579099 (= e!4511263 e!4511266)))

(assert (=> b!7579100 (= e!4511266 call!694778)))

(declare-fun b!7579101 () Bool)

(assert (=> b!7579101 (= e!4511264 call!694779)))

(declare-fun b!7579102 () Bool)

(assert (=> b!7579102 (= e!4511261 (matchRSpec!4388 (regTwo!40663 r!22341) s!13436))))

(assert (=> b!7579103 (= e!4511263 call!694778)))

(declare-fun b!7579104 () Bool)

(declare-fun c!1398007 () Bool)

(assert (=> b!7579104 (= c!1398007 ((_ is ElementMatch!20075) r!22341))))

(assert (=> b!7579104 (= e!4511262 e!4511265)))

(assert (= (and d!2318219 c!1398004) b!7579101))

(assert (= (and d!2318219 (not c!1398004)) b!7579094))

(assert (= (and b!7579094 res!3036429) b!7579104))

(assert (= (and b!7579104 c!1398007) b!7579098))

(assert (= (and b!7579104 (not c!1398007)) b!7579095))

(assert (= (and b!7579095 c!1398005) b!7579096))

(assert (= (and b!7579095 (not c!1398005)) b!7579097))

(assert (= (and b!7579096 (not res!3036428)) b!7579102))

(assert (= (and b!7579097 c!1398006) b!7579099))

(assert (= (and b!7579097 (not c!1398006)) b!7579103))

(assert (= (and b!7579099 (not res!3036430)) b!7579100))

(assert (= (or b!7579100 b!7579103) bm!694773))

(assert (= (or b!7579101 b!7579099) bm!694774))

(declare-fun m!8135254 () Bool)

(assert (=> bm!694773 m!8135254))

(declare-fun m!8135256 () Bool)

(assert (=> b!7579096 m!8135256))

(assert (=> bm!694774 m!8135212))

(declare-fun m!8135258 () Bool)

(assert (=> b!7579102 m!8135258))

(assert (=> b!7578876 d!2318219))

(declare-fun bm!694777 () Bool)

(declare-fun call!694782 () Bool)

(assert (=> bm!694777 (= call!694782 (isEmpty!41503 s!13436))))

(declare-fun b!7579137 () Bool)

(declare-fun res!3036447 () Bool)

(declare-fun e!4511285 () Bool)

(assert (=> b!7579137 (=> res!3036447 e!4511285)))

(assert (=> b!7579137 (= res!3036447 (not ((_ is ElementMatch!20075) r!22341)))))

(declare-fun e!4511281 () Bool)

(assert (=> b!7579137 (= e!4511281 e!4511285)))

(declare-fun b!7579138 () Bool)

(declare-fun lt!2652503 () Bool)

(assert (=> b!7579138 (= e!4511281 (not lt!2652503))))

(declare-fun b!7579139 () Bool)

(declare-fun e!4511282 () Bool)

(declare-fun head!15595 (List!72958) C!40476)

(assert (=> b!7579139 (= e!4511282 (= (head!15595 s!13436) (c!1397962 r!22341)))))

(declare-fun b!7579140 () Bool)

(declare-fun e!4511284 () Bool)

(declare-fun derivativeStep!5795 (Regex!20075 C!40476) Regex!20075)

(declare-fun tail!15135 (List!72958) List!72958)

(assert (=> b!7579140 (= e!4511284 (matchR!9667 (derivativeStep!5795 r!22341 (head!15595 s!13436)) (tail!15135 s!13436)))))

(declare-fun b!7579141 () Bool)

(declare-fun res!3036451 () Bool)

(assert (=> b!7579141 (=> res!3036451 e!4511285)))

(assert (=> b!7579141 (= res!3036451 e!4511282)))

(declare-fun res!3036449 () Bool)

(assert (=> b!7579141 (=> (not res!3036449) (not e!4511282))))

(assert (=> b!7579141 (= res!3036449 lt!2652503)))

(declare-fun b!7579142 () Bool)

(declare-fun res!3036452 () Bool)

(assert (=> b!7579142 (=> (not res!3036452) (not e!4511282))))

(assert (=> b!7579142 (= res!3036452 (not call!694782))))

(declare-fun b!7579143 () Bool)

(assert (=> b!7579143 (= e!4511284 (nullable!8768 r!22341))))

(declare-fun b!7579144 () Bool)

(declare-fun e!4511286 () Bool)

(assert (=> b!7579144 (= e!4511285 e!4511286)))

(declare-fun res!3036448 () Bool)

(assert (=> b!7579144 (=> (not res!3036448) (not e!4511286))))

(assert (=> b!7579144 (= res!3036448 (not lt!2652503))))

(declare-fun b!7579145 () Bool)

(declare-fun e!4511283 () Bool)

(assert (=> b!7579145 (= e!4511283 (not (= (head!15595 s!13436) (c!1397962 r!22341))))))

(declare-fun b!7579146 () Bool)

(declare-fun e!4511287 () Bool)

(assert (=> b!7579146 (= e!4511287 (= lt!2652503 call!694782))))

(declare-fun b!7579147 () Bool)

(assert (=> b!7579147 (= e!4511287 e!4511281)))

(declare-fun c!1398014 () Bool)

(assert (=> b!7579147 (= c!1398014 ((_ is EmptyLang!20075) r!22341))))

(declare-fun b!7579148 () Bool)

(declare-fun res!3036453 () Bool)

(assert (=> b!7579148 (=> (not res!3036453) (not e!4511282))))

(assert (=> b!7579148 (= res!3036453 (isEmpty!41503 (tail!15135 s!13436)))))

(declare-fun d!2318225 () Bool)

(assert (=> d!2318225 e!4511287))

(declare-fun c!1398016 () Bool)

(assert (=> d!2318225 (= c!1398016 ((_ is EmptyExpr!20075) r!22341))))

(assert (=> d!2318225 (= lt!2652503 e!4511284)))

(declare-fun c!1398015 () Bool)

(assert (=> d!2318225 (= c!1398015 (isEmpty!41503 s!13436))))

(assert (=> d!2318225 (validRegex!10503 r!22341)))

(assert (=> d!2318225 (= (matchR!9667 r!22341 s!13436) lt!2652503)))

(declare-fun b!7579149 () Bool)

(assert (=> b!7579149 (= e!4511286 e!4511283)))

(declare-fun res!3036450 () Bool)

(assert (=> b!7579149 (=> res!3036450 e!4511283)))

(assert (=> b!7579149 (= res!3036450 call!694782)))

(declare-fun b!7579150 () Bool)

(declare-fun res!3036454 () Bool)

(assert (=> b!7579150 (=> res!3036454 e!4511283)))

(assert (=> b!7579150 (= res!3036454 (not (isEmpty!41503 (tail!15135 s!13436))))))

(assert (= (and d!2318225 c!1398015) b!7579143))

(assert (= (and d!2318225 (not c!1398015)) b!7579140))

(assert (= (and d!2318225 c!1398016) b!7579146))

(assert (= (and d!2318225 (not c!1398016)) b!7579147))

(assert (= (and b!7579147 c!1398014) b!7579138))

(assert (= (and b!7579147 (not c!1398014)) b!7579137))

(assert (= (and b!7579137 (not res!3036447)) b!7579141))

(assert (= (and b!7579141 res!3036449) b!7579142))

(assert (= (and b!7579142 res!3036452) b!7579148))

(assert (= (and b!7579148 res!3036453) b!7579139))

(assert (= (and b!7579141 (not res!3036451)) b!7579144))

(assert (= (and b!7579144 res!3036448) b!7579149))

(assert (= (and b!7579149 (not res!3036450)) b!7579150))

(assert (= (and b!7579150 (not res!3036454)) b!7579145))

(assert (= (or b!7579146 b!7579142 b!7579149) bm!694777))

(declare-fun m!8135260 () Bool)

(assert (=> b!7579148 m!8135260))

(assert (=> b!7579148 m!8135260))

(declare-fun m!8135262 () Bool)

(assert (=> b!7579148 m!8135262))

(assert (=> bm!694777 m!8135212))

(declare-fun m!8135264 () Bool)

(assert (=> b!7579139 m!8135264))

(assert (=> b!7579145 m!8135264))

(assert (=> d!2318225 m!8135212))

(assert (=> d!2318225 m!8135214))

(assert (=> b!7579140 m!8135264))

(assert (=> b!7579140 m!8135264))

(declare-fun m!8135266 () Bool)

(assert (=> b!7579140 m!8135266))

(assert (=> b!7579140 m!8135260))

(assert (=> b!7579140 m!8135266))

(assert (=> b!7579140 m!8135260))

(declare-fun m!8135268 () Bool)

(assert (=> b!7579140 m!8135268))

(declare-fun m!8135270 () Bool)

(assert (=> b!7579143 m!8135270))

(assert (=> b!7579150 m!8135260))

(assert (=> b!7579150 m!8135260))

(assert (=> b!7579150 m!8135262))

(assert (=> b!7578876 d!2318225))

(declare-fun d!2318227 () Bool)

(assert (=> d!2318227 (= (matchR!9667 r!22341 s!13436) (matchRSpec!4388 r!22341 s!13436))))

(declare-fun lt!2652506 () Unit!167106)

(declare-fun choose!58602 (Regex!20075 List!72958) Unit!167106)

(assert (=> d!2318227 (= lt!2652506 (choose!58602 r!22341 s!13436))))

(assert (=> d!2318227 (validRegex!10503 r!22341)))

(assert (=> d!2318227 (= (mainMatchTheorem!4382 r!22341 s!13436) lt!2652506)))

(declare-fun bs!1940950 () Bool)

(assert (= bs!1940950 d!2318227))

(assert (=> bs!1940950 m!8135208))

(assert (=> bs!1940950 m!8135206))

(declare-fun m!8135272 () Bool)

(assert (=> bs!1940950 m!8135272))

(assert (=> bs!1940950 m!8135214))

(assert (=> b!7578876 d!2318227))

(declare-fun b!7579162 () Bool)

(declare-fun e!4511290 () Bool)

(declare-fun tp!2208502 () Bool)

(declare-fun tp!2208504 () Bool)

(assert (=> b!7579162 (= e!4511290 (and tp!2208502 tp!2208504))))

(assert (=> b!7578880 (= tp!2208450 e!4511290)))

(declare-fun b!7579161 () Bool)

(assert (=> b!7579161 (= e!4511290 tp_is_empty!50505)))

(declare-fun b!7579163 () Bool)

(declare-fun tp!2208503 () Bool)

(assert (=> b!7579163 (= e!4511290 tp!2208503)))

(declare-fun b!7579164 () Bool)

(declare-fun tp!2208506 () Bool)

(declare-fun tp!2208505 () Bool)

(assert (=> b!7579164 (= e!4511290 (and tp!2208506 tp!2208505))))

(assert (= (and b!7578880 ((_ is ElementMatch!20075) (regOne!40663 r!22341))) b!7579161))

(assert (= (and b!7578880 ((_ is Concat!28920) (regOne!40663 r!22341))) b!7579162))

(assert (= (and b!7578880 ((_ is Star!20075) (regOne!40663 r!22341))) b!7579163))

(assert (= (and b!7578880 ((_ is Union!20075) (regOne!40663 r!22341))) b!7579164))

(declare-fun b!7579166 () Bool)

(declare-fun e!4511291 () Bool)

(declare-fun tp!2208507 () Bool)

(declare-fun tp!2208509 () Bool)

(assert (=> b!7579166 (= e!4511291 (and tp!2208507 tp!2208509))))

(assert (=> b!7578880 (= tp!2208451 e!4511291)))

(declare-fun b!7579165 () Bool)

(assert (=> b!7579165 (= e!4511291 tp_is_empty!50505)))

(declare-fun b!7579167 () Bool)

(declare-fun tp!2208508 () Bool)

(assert (=> b!7579167 (= e!4511291 tp!2208508)))

(declare-fun b!7579168 () Bool)

(declare-fun tp!2208511 () Bool)

(declare-fun tp!2208510 () Bool)

(assert (=> b!7579168 (= e!4511291 (and tp!2208511 tp!2208510))))

(assert (= (and b!7578880 ((_ is ElementMatch!20075) (regTwo!40663 r!22341))) b!7579165))

(assert (= (and b!7578880 ((_ is Concat!28920) (regTwo!40663 r!22341))) b!7579166))

(assert (= (and b!7578880 ((_ is Star!20075) (regTwo!40663 r!22341))) b!7579167))

(assert (= (and b!7578880 ((_ is Union!20075) (regTwo!40663 r!22341))) b!7579168))

(declare-fun b!7579173 () Bool)

(declare-fun e!4511294 () Bool)

(declare-fun tp!2208514 () Bool)

(assert (=> b!7579173 (= e!4511294 (and tp_is_empty!50505 tp!2208514))))

(assert (=> b!7578878 (= tp!2208452 e!4511294)))

(assert (= (and b!7578878 ((_ is Cons!72834) (t!387693 s!13436))) b!7579173))

(declare-fun b!7579175 () Bool)

(declare-fun e!4511295 () Bool)

(declare-fun tp!2208515 () Bool)

(declare-fun tp!2208517 () Bool)

(assert (=> b!7579175 (= e!4511295 (and tp!2208515 tp!2208517))))

(assert (=> b!7578883 (= tp!2208453 e!4511295)))

(declare-fun b!7579174 () Bool)

(assert (=> b!7579174 (= e!4511295 tp_is_empty!50505)))

(declare-fun b!7579176 () Bool)

(declare-fun tp!2208516 () Bool)

(assert (=> b!7579176 (= e!4511295 tp!2208516)))

(declare-fun b!7579177 () Bool)

(declare-fun tp!2208519 () Bool)

(declare-fun tp!2208518 () Bool)

(assert (=> b!7579177 (= e!4511295 (and tp!2208519 tp!2208518))))

(assert (= (and b!7578883 ((_ is ElementMatch!20075) (reg!20404 r!22341))) b!7579174))

(assert (= (and b!7578883 ((_ is Concat!28920) (reg!20404 r!22341))) b!7579175))

(assert (= (and b!7578883 ((_ is Star!20075) (reg!20404 r!22341))) b!7579176))

(assert (= (and b!7578883 ((_ is Union!20075) (reg!20404 r!22341))) b!7579177))

(declare-fun b!7579179 () Bool)

(declare-fun e!4511296 () Bool)

(declare-fun tp!2208520 () Bool)

(declare-fun tp!2208522 () Bool)

(assert (=> b!7579179 (= e!4511296 (and tp!2208520 tp!2208522))))

(assert (=> b!7578881 (= tp!2208448 e!4511296)))

(declare-fun b!7579178 () Bool)

(assert (=> b!7579178 (= e!4511296 tp_is_empty!50505)))

(declare-fun b!7579180 () Bool)

(declare-fun tp!2208521 () Bool)

(assert (=> b!7579180 (= e!4511296 tp!2208521)))

(declare-fun b!7579181 () Bool)

(declare-fun tp!2208524 () Bool)

(declare-fun tp!2208523 () Bool)

(assert (=> b!7579181 (= e!4511296 (and tp!2208524 tp!2208523))))

(assert (= (and b!7578881 ((_ is ElementMatch!20075) (regOne!40662 r!22341))) b!7579178))

(assert (= (and b!7578881 ((_ is Concat!28920) (regOne!40662 r!22341))) b!7579179))

(assert (= (and b!7578881 ((_ is Star!20075) (regOne!40662 r!22341))) b!7579180))

(assert (= (and b!7578881 ((_ is Union!20075) (regOne!40662 r!22341))) b!7579181))

(declare-fun b!7579183 () Bool)

(declare-fun e!4511297 () Bool)

(declare-fun tp!2208525 () Bool)

(declare-fun tp!2208527 () Bool)

(assert (=> b!7579183 (= e!4511297 (and tp!2208525 tp!2208527))))

(assert (=> b!7578881 (= tp!2208449 e!4511297)))

(declare-fun b!7579182 () Bool)

(assert (=> b!7579182 (= e!4511297 tp_is_empty!50505)))

(declare-fun b!7579184 () Bool)

(declare-fun tp!2208526 () Bool)

(assert (=> b!7579184 (= e!4511297 tp!2208526)))

(declare-fun b!7579185 () Bool)

(declare-fun tp!2208529 () Bool)

(declare-fun tp!2208528 () Bool)

(assert (=> b!7579185 (= e!4511297 (and tp!2208529 tp!2208528))))

(assert (= (and b!7578881 ((_ is ElementMatch!20075) (regTwo!40662 r!22341))) b!7579182))

(assert (= (and b!7578881 ((_ is Concat!28920) (regTwo!40662 r!22341))) b!7579183))

(assert (= (and b!7578881 ((_ is Star!20075) (regTwo!40662 r!22341))) b!7579184))

(assert (= (and b!7578881 ((_ is Union!20075) (regTwo!40662 r!22341))) b!7579185))

(check-sat (not b!7579140) (not b!7579096) (not b!7579175) (not b!7579145) (not b!7579177) (not b!7579148) (not b!7579173) (not b!7579143) (not b!7579164) (not b!7579166) (not b!7579168) (not d!2318225) (not b!7579162) (not b!7579139) (not b!7579184) (not b!7579102) (not b!7579150) (not b!7579185) (not bm!694774) (not bm!694777) (not d!2318213) (not b!7579167) (not b!7578935) (not b!7579181) (not bm!694773) (not b!7579183) (not d!2318227) (not b!7579176) (not b!7579180) (not bm!694759) (not b!7579179) (not bm!694758) tp_is_empty!50505 (not b!7579163))
(check-sat)
(get-model)

(declare-fun d!2318239 () Bool)

(assert (=> d!2318239 (= (isEmpty!41503 (tail!15135 s!13436)) ((_ is Nil!72834) (tail!15135 s!13436)))))

(assert (=> b!7579148 d!2318239))

(declare-fun d!2318241 () Bool)

(assert (=> d!2318241 (= (tail!15135 s!13436) (t!387693 s!13436))))

(assert (=> b!7579148 d!2318241))

(declare-fun bs!1940965 () Bool)

(declare-fun b!7579223 () Bool)

(assert (= bs!1940965 (and b!7579223 b!7579100)))

(declare-fun lambda!466906 () Int)

(assert (=> bs!1940965 (= (and (= (reg!20404 (regTwo!40663 r!22341)) (reg!20404 r!22341)) (= (regTwo!40663 r!22341) r!22341)) (= lambda!466906 lambda!466900))))

(declare-fun bs!1940966 () Bool)

(assert (= bs!1940966 (and b!7579223 b!7579103)))

(assert (=> bs!1940966 (not (= lambda!466906 lambda!466901))))

(assert (=> b!7579223 true))

(assert (=> b!7579223 true))

(declare-fun bs!1940967 () Bool)

(declare-fun b!7579226 () Bool)

(assert (= bs!1940967 (and b!7579226 b!7579100)))

(declare-fun lambda!466907 () Int)

(assert (=> bs!1940967 (not (= lambda!466907 lambda!466900))))

(declare-fun bs!1940968 () Bool)

(assert (= bs!1940968 (and b!7579226 b!7579103)))

(assert (=> bs!1940968 (= (and (= (regOne!40662 (regTwo!40663 r!22341)) (regOne!40662 r!22341)) (= (regTwo!40662 (regTwo!40663 r!22341)) (regTwo!40662 r!22341))) (= lambda!466907 lambda!466901))))

(declare-fun bs!1940969 () Bool)

(assert (= bs!1940969 (and b!7579226 b!7579223)))

(assert (=> bs!1940969 (not (= lambda!466907 lambda!466906))))

(assert (=> b!7579226 true))

(assert (=> b!7579226 true))

(declare-fun b!7579217 () Bool)

(declare-fun e!4511323 () Bool)

(declare-fun e!4511321 () Bool)

(assert (=> b!7579217 (= e!4511323 e!4511321)))

(declare-fun res!3036467 () Bool)

(assert (=> b!7579217 (= res!3036467 (not ((_ is EmptyLang!20075) (regTwo!40663 r!22341))))))

(assert (=> b!7579217 (=> (not res!3036467) (not e!4511321))))

(declare-fun b!7579218 () Bool)

(declare-fun c!1398028 () Bool)

(assert (=> b!7579218 (= c!1398028 ((_ is Union!20075) (regTwo!40663 r!22341)))))

(declare-fun e!4511324 () Bool)

(declare-fun e!4511319 () Bool)

(assert (=> b!7579218 (= e!4511324 e!4511319)))

(declare-fun call!694790 () Bool)

(declare-fun bm!694785 () Bool)

(declare-fun c!1398029 () Bool)

(assert (=> bm!694785 (= call!694790 (Exists!4310 (ite c!1398029 lambda!466906 lambda!466907)))))

(declare-fun d!2318245 () Bool)

(declare-fun c!1398027 () Bool)

(assert (=> d!2318245 (= c!1398027 ((_ is EmptyExpr!20075) (regTwo!40663 r!22341)))))

(assert (=> d!2318245 (= (matchRSpec!4388 (regTwo!40663 r!22341) s!13436) e!4511323)))

(declare-fun b!7579219 () Bool)

(declare-fun e!4511320 () Bool)

(assert (=> b!7579219 (= e!4511319 e!4511320)))

(declare-fun res!3036466 () Bool)

(assert (=> b!7579219 (= res!3036466 (matchRSpec!4388 (regOne!40663 (regTwo!40663 r!22341)) s!13436))))

(assert (=> b!7579219 (=> res!3036466 e!4511320)))

(declare-fun bm!694786 () Bool)

(declare-fun call!694791 () Bool)

(assert (=> bm!694786 (= call!694791 (isEmpty!41503 s!13436))))

(declare-fun b!7579220 () Bool)

(declare-fun e!4511322 () Bool)

(assert (=> b!7579220 (= e!4511319 e!4511322)))

(assert (=> b!7579220 (= c!1398029 ((_ is Star!20075) (regTwo!40663 r!22341)))))

(declare-fun b!7579221 () Bool)

(assert (=> b!7579221 (= e!4511324 (= s!13436 (Cons!72834 (c!1397962 (regTwo!40663 r!22341)) Nil!72834)))))

(declare-fun b!7579222 () Bool)

(declare-fun res!3036468 () Bool)

(declare-fun e!4511325 () Bool)

(assert (=> b!7579222 (=> res!3036468 e!4511325)))

(assert (=> b!7579222 (= res!3036468 call!694791)))

(assert (=> b!7579222 (= e!4511322 e!4511325)))

(assert (=> b!7579223 (= e!4511325 call!694790)))

(declare-fun b!7579224 () Bool)

(assert (=> b!7579224 (= e!4511323 call!694791)))

(declare-fun b!7579225 () Bool)

(assert (=> b!7579225 (= e!4511320 (matchRSpec!4388 (regTwo!40663 (regTwo!40663 r!22341)) s!13436))))

(assert (=> b!7579226 (= e!4511322 call!694790)))

(declare-fun b!7579227 () Bool)

(declare-fun c!1398030 () Bool)

(assert (=> b!7579227 (= c!1398030 ((_ is ElementMatch!20075) (regTwo!40663 r!22341)))))

(assert (=> b!7579227 (= e!4511321 e!4511324)))

(assert (= (and d!2318245 c!1398027) b!7579224))

(assert (= (and d!2318245 (not c!1398027)) b!7579217))

(assert (= (and b!7579217 res!3036467) b!7579227))

(assert (= (and b!7579227 c!1398030) b!7579221))

(assert (= (and b!7579227 (not c!1398030)) b!7579218))

(assert (= (and b!7579218 c!1398028) b!7579219))

(assert (= (and b!7579218 (not c!1398028)) b!7579220))

(assert (= (and b!7579219 (not res!3036466)) b!7579225))

(assert (= (and b!7579220 c!1398029) b!7579222))

(assert (= (and b!7579220 (not c!1398029)) b!7579226))

(assert (= (and b!7579222 (not res!3036468)) b!7579223))

(assert (= (or b!7579223 b!7579226) bm!694785))

(assert (= (or b!7579224 b!7579222) bm!694786))

(declare-fun m!8135292 () Bool)

(assert (=> bm!694785 m!8135292))

(declare-fun m!8135294 () Bool)

(assert (=> b!7579219 m!8135294))

(assert (=> bm!694786 m!8135212))

(declare-fun m!8135296 () Bool)

(assert (=> b!7579225 m!8135296))

(assert (=> b!7579102 d!2318245))

(declare-fun d!2318247 () Bool)

(assert (=> d!2318247 (= (head!15595 s!13436) (h!79282 s!13436))))

(assert (=> b!7579145 d!2318247))

(assert (=> d!2318225 d!2318217))

(assert (=> d!2318225 d!2318207))

(assert (=> bm!694777 d!2318217))

(declare-fun b!7579249 () Bool)

(declare-fun e!4511348 () Bool)

(declare-fun call!694798 () Bool)

(assert (=> b!7579249 (= e!4511348 call!694798)))

(declare-fun b!7579250 () Bool)

(declare-fun e!4511349 () Bool)

(declare-fun call!694799 () Bool)

(assert (=> b!7579250 (= e!4511349 call!694799)))

(declare-fun bm!694793 () Bool)

(assert (=> bm!694793 (= call!694799 call!694798)))

(declare-fun b!7579251 () Bool)

(declare-fun e!4511345 () Bool)

(declare-fun call!694800 () Bool)

(assert (=> b!7579251 (= e!4511345 call!694800)))

(declare-fun b!7579252 () Bool)

(declare-fun res!3036488 () Bool)

(assert (=> b!7579252 (=> (not res!3036488) (not e!4511349))))

(assert (=> b!7579252 (= res!3036488 call!694800)))

(declare-fun e!4511350 () Bool)

(assert (=> b!7579252 (= e!4511350 e!4511349)))

(declare-fun d!2318249 () Bool)

(declare-fun res!3036485 () Bool)

(declare-fun e!4511347 () Bool)

(assert (=> d!2318249 (=> res!3036485 e!4511347)))

(assert (=> d!2318249 (= res!3036485 ((_ is ElementMatch!20075) (ite c!1397973 (regOne!40663 r!22341) (regTwo!40662 r!22341))))))

(assert (=> d!2318249 (= (validRegex!10503 (ite c!1397973 (regOne!40663 r!22341) (regTwo!40662 r!22341))) e!4511347)))

(declare-fun b!7579253 () Bool)

(declare-fun e!4511346 () Bool)

(assert (=> b!7579253 (= e!4511346 e!4511345)))

(declare-fun res!3036486 () Bool)

(assert (=> b!7579253 (=> (not res!3036486) (not e!4511345))))

(assert (=> b!7579253 (= res!3036486 call!694799)))

(declare-fun c!1398035 () Bool)

(declare-fun c!1398034 () Bool)

(declare-fun bm!694794 () Bool)

(assert (=> bm!694794 (= call!694798 (validRegex!10503 (ite c!1398035 (reg!20404 (ite c!1397973 (regOne!40663 r!22341) (regTwo!40662 r!22341))) (ite c!1398034 (regTwo!40663 (ite c!1397973 (regOne!40663 r!22341) (regTwo!40662 r!22341))) (regOne!40662 (ite c!1397973 (regOne!40663 r!22341) (regTwo!40662 r!22341)))))))))

(declare-fun b!7579254 () Bool)

(declare-fun res!3036487 () Bool)

(assert (=> b!7579254 (=> res!3036487 e!4511346)))

(assert (=> b!7579254 (= res!3036487 (not ((_ is Concat!28920) (ite c!1397973 (regOne!40663 r!22341) (regTwo!40662 r!22341)))))))

(assert (=> b!7579254 (= e!4511350 e!4511346)))

(declare-fun b!7579255 () Bool)

(declare-fun e!4511344 () Bool)

(assert (=> b!7579255 (= e!4511344 e!4511348)))

(declare-fun res!3036484 () Bool)

(assert (=> b!7579255 (= res!3036484 (not (nullable!8768 (reg!20404 (ite c!1397973 (regOne!40663 r!22341) (regTwo!40662 r!22341))))))))

(assert (=> b!7579255 (=> (not res!3036484) (not e!4511348))))

(declare-fun b!7579256 () Bool)

(assert (=> b!7579256 (= e!4511347 e!4511344)))

(assert (=> b!7579256 (= c!1398035 ((_ is Star!20075) (ite c!1397973 (regOne!40663 r!22341) (regTwo!40662 r!22341))))))

(declare-fun b!7579257 () Bool)

(assert (=> b!7579257 (= e!4511344 e!4511350)))

(assert (=> b!7579257 (= c!1398034 ((_ is Union!20075) (ite c!1397973 (regOne!40663 r!22341) (regTwo!40662 r!22341))))))

(declare-fun bm!694795 () Bool)

(assert (=> bm!694795 (= call!694800 (validRegex!10503 (ite c!1398034 (regOne!40663 (ite c!1397973 (regOne!40663 r!22341) (regTwo!40662 r!22341))) (regTwo!40662 (ite c!1397973 (regOne!40663 r!22341) (regTwo!40662 r!22341))))))))

(assert (= (and d!2318249 (not res!3036485)) b!7579256))

(assert (= (and b!7579256 c!1398035) b!7579255))

(assert (= (and b!7579256 (not c!1398035)) b!7579257))

(assert (= (and b!7579255 res!3036484) b!7579249))

(assert (= (and b!7579257 c!1398034) b!7579252))

(assert (= (and b!7579257 (not c!1398034)) b!7579254))

(assert (= (and b!7579252 res!3036488) b!7579250))

(assert (= (and b!7579254 (not res!3036487)) b!7579253))

(assert (= (and b!7579253 res!3036486) b!7579251))

(assert (= (or b!7579250 b!7579253) bm!694793))

(assert (= (or b!7579252 b!7579251) bm!694795))

(assert (= (or b!7579249 bm!694793) bm!694794))

(declare-fun m!8135306 () Bool)

(assert (=> bm!694794 m!8135306))

(declare-fun m!8135308 () Bool)

(assert (=> b!7579255 m!8135308))

(declare-fun m!8135310 () Bool)

(assert (=> bm!694795 m!8135310))

(assert (=> bm!694759 d!2318249))

(assert (=> d!2318227 d!2318225))

(assert (=> d!2318227 d!2318219))

(declare-fun d!2318253 () Bool)

(assert (=> d!2318253 (= (matchR!9667 r!22341 s!13436) (matchRSpec!4388 r!22341 s!13436))))

(assert (=> d!2318253 true))

(declare-fun _$88!5789 () Unit!167106)

(assert (=> d!2318253 (= (choose!58602 r!22341 s!13436) _$88!5789)))

(declare-fun bs!1940970 () Bool)

(assert (= bs!1940970 d!2318253))

(assert (=> bs!1940970 m!8135208))

(assert (=> bs!1940970 m!8135206))

(assert (=> d!2318227 d!2318253))

(assert (=> d!2318227 d!2318207))

(assert (=> bm!694774 d!2318217))

(declare-fun d!2318257 () Bool)

(declare-fun nullableFct!3491 (Regex!20075) Bool)

(assert (=> d!2318257 (= (nullable!8768 (reg!20404 r!22341)) (nullableFct!3491 (reg!20404 r!22341)))))

(declare-fun bs!1940971 () Bool)

(assert (= bs!1940971 d!2318257))

(declare-fun m!8135326 () Bool)

(assert (=> bs!1940971 m!8135326))

(assert (=> b!7578935 d!2318257))

(declare-fun b!7579306 () Bool)

(declare-fun e!4511382 () Bool)

(declare-fun e!4511385 () Bool)

(assert (=> b!7579306 (= e!4511382 e!4511385)))

(declare-fun res!3036510 () Bool)

(assert (=> b!7579306 (=> res!3036510 e!4511385)))

(assert (=> b!7579306 (= res!3036510 ((_ is EmptyLang!20075) r!22341))))

(declare-fun b!7579307 () Bool)

(declare-fun e!4511380 () Bool)

(declare-fun e!4511383 () Bool)

(assert (=> b!7579307 (= e!4511380 e!4511383)))

(declare-fun res!3036508 () Bool)

(declare-fun call!694814 () Bool)

(assert (=> b!7579307 (= res!3036508 call!694814)))

(assert (=> b!7579307 (=> res!3036508 e!4511383)))

(declare-fun bm!694809 () Bool)

(declare-fun c!1398051 () Bool)

(assert (=> bm!694809 (= call!694814 (lostCause!1851 (ite c!1398051 (regOne!40663 r!22341) (regOne!40662 r!22341))))))

(declare-fun b!7579308 () Bool)

(declare-fun e!4511381 () Bool)

(assert (=> b!7579308 (= e!4511385 e!4511381)))

(declare-fun res!3036511 () Bool)

(assert (=> b!7579308 (=> (not res!3036511) (not e!4511381))))

(assert (=> b!7579308 (= res!3036511 (and (not ((_ is ElementMatch!20075) r!22341)) (not ((_ is Star!20075) r!22341))))))

(declare-fun b!7579309 () Bool)

(assert (=> b!7579309 (= e!4511381 e!4511380)))

(assert (=> b!7579309 (= c!1398051 ((_ is Union!20075) r!22341))))

(declare-fun d!2318259 () Bool)

(declare-fun lt!2652515 () Bool)

(declare-datatypes ((Option!17295 0))(
  ( (None!17294) (Some!17294 (v!54429 List!72958)) )
))
(declare-fun isEmpty!41504 (Option!17295) Bool)

(declare-fun getLanguageWitness!1114 (Regex!20075) Option!17295)

(assert (=> d!2318259 (= lt!2652515 (isEmpty!41504 (getLanguageWitness!1114 r!22341)))))

(assert (=> d!2318259 (= lt!2652515 e!4511382)))

(declare-fun res!3036507 () Bool)

(assert (=> d!2318259 (=> (not res!3036507) (not e!4511382))))

(assert (=> d!2318259 (= res!3036507 (not ((_ is EmptyExpr!20075) r!22341)))))

(assert (=> d!2318259 (= (lostCauseFct!504 r!22341) lt!2652515)))

(declare-fun b!7579310 () Bool)

(declare-fun call!694815 () Bool)

(assert (=> b!7579310 (= e!4511383 call!694815)))

(declare-fun bm!694810 () Bool)

(assert (=> bm!694810 (= call!694815 (lostCause!1851 (ite c!1398051 (regTwo!40663 r!22341) (regTwo!40662 r!22341))))))

(declare-fun b!7579311 () Bool)

(declare-fun e!4511384 () Bool)

(assert (=> b!7579311 (= e!4511380 e!4511384)))

(declare-fun res!3036509 () Bool)

(assert (=> b!7579311 (= res!3036509 call!694814)))

(assert (=> b!7579311 (=> (not res!3036509) (not e!4511384))))

(declare-fun b!7579312 () Bool)

(assert (=> b!7579312 (= e!4511384 call!694815)))

(assert (= (and d!2318259 res!3036507) b!7579306))

(assert (= (and b!7579306 (not res!3036510)) b!7579308))

(assert (= (and b!7579308 res!3036511) b!7579309))

(assert (= (and b!7579309 c!1398051) b!7579311))

(assert (= (and b!7579309 (not c!1398051)) b!7579307))

(assert (= (and b!7579311 res!3036509) b!7579312))

(assert (= (and b!7579307 (not res!3036508)) b!7579310))

(assert (= (or b!7579312 b!7579310) bm!694810))

(assert (= (or b!7579311 b!7579307) bm!694809))

(declare-fun m!8135328 () Bool)

(assert (=> bm!694809 m!8135328))

(declare-fun m!8135330 () Bool)

(assert (=> d!2318259 m!8135330))

(assert (=> d!2318259 m!8135330))

(declare-fun m!8135332 () Bool)

(assert (=> d!2318259 m!8135332))

(declare-fun m!8135334 () Bool)

(assert (=> bm!694810 m!8135334))

(assert (=> d!2318213 d!2318259))

(declare-fun d!2318261 () Bool)

(assert (=> d!2318261 (= (nullable!8768 r!22341) (nullableFct!3491 r!22341))))

(declare-fun bs!1940972 () Bool)

(assert (= bs!1940972 d!2318261))

(declare-fun m!8135336 () Bool)

(assert (=> bs!1940972 m!8135336))

(assert (=> b!7579143 d!2318261))

(declare-fun bm!694811 () Bool)

(declare-fun call!694816 () Bool)

(assert (=> bm!694811 (= call!694816 (isEmpty!41503 (tail!15135 s!13436)))))

(declare-fun b!7579313 () Bool)

(declare-fun res!3036512 () Bool)

(declare-fun e!4511390 () Bool)

(assert (=> b!7579313 (=> res!3036512 e!4511390)))

(assert (=> b!7579313 (= res!3036512 (not ((_ is ElementMatch!20075) (derivativeStep!5795 r!22341 (head!15595 s!13436)))))))

(declare-fun e!4511386 () Bool)

(assert (=> b!7579313 (= e!4511386 e!4511390)))

(declare-fun b!7579314 () Bool)

(declare-fun lt!2652516 () Bool)

(assert (=> b!7579314 (= e!4511386 (not lt!2652516))))

(declare-fun b!7579315 () Bool)

(declare-fun e!4511387 () Bool)

(assert (=> b!7579315 (= e!4511387 (= (head!15595 (tail!15135 s!13436)) (c!1397962 (derivativeStep!5795 r!22341 (head!15595 s!13436)))))))

(declare-fun b!7579316 () Bool)

(declare-fun e!4511389 () Bool)

(assert (=> b!7579316 (= e!4511389 (matchR!9667 (derivativeStep!5795 (derivativeStep!5795 r!22341 (head!15595 s!13436)) (head!15595 (tail!15135 s!13436))) (tail!15135 (tail!15135 s!13436))))))

(declare-fun b!7579317 () Bool)

(declare-fun res!3036516 () Bool)

(assert (=> b!7579317 (=> res!3036516 e!4511390)))

(assert (=> b!7579317 (= res!3036516 e!4511387)))

(declare-fun res!3036514 () Bool)

(assert (=> b!7579317 (=> (not res!3036514) (not e!4511387))))

(assert (=> b!7579317 (= res!3036514 lt!2652516)))

(declare-fun b!7579318 () Bool)

(declare-fun res!3036517 () Bool)

(assert (=> b!7579318 (=> (not res!3036517) (not e!4511387))))

(assert (=> b!7579318 (= res!3036517 (not call!694816))))

(declare-fun b!7579319 () Bool)

(assert (=> b!7579319 (= e!4511389 (nullable!8768 (derivativeStep!5795 r!22341 (head!15595 s!13436))))))

(declare-fun b!7579320 () Bool)

(declare-fun e!4511391 () Bool)

(assert (=> b!7579320 (= e!4511390 e!4511391)))

(declare-fun res!3036513 () Bool)

(assert (=> b!7579320 (=> (not res!3036513) (not e!4511391))))

(assert (=> b!7579320 (= res!3036513 (not lt!2652516))))

(declare-fun b!7579321 () Bool)

(declare-fun e!4511388 () Bool)

(assert (=> b!7579321 (= e!4511388 (not (= (head!15595 (tail!15135 s!13436)) (c!1397962 (derivativeStep!5795 r!22341 (head!15595 s!13436))))))))

(declare-fun b!7579322 () Bool)

(declare-fun e!4511392 () Bool)

(assert (=> b!7579322 (= e!4511392 (= lt!2652516 call!694816))))

(declare-fun b!7579323 () Bool)

(assert (=> b!7579323 (= e!4511392 e!4511386)))

(declare-fun c!1398052 () Bool)

(assert (=> b!7579323 (= c!1398052 ((_ is EmptyLang!20075) (derivativeStep!5795 r!22341 (head!15595 s!13436))))))

(declare-fun b!7579324 () Bool)

(declare-fun res!3036518 () Bool)

(assert (=> b!7579324 (=> (not res!3036518) (not e!4511387))))

(assert (=> b!7579324 (= res!3036518 (isEmpty!41503 (tail!15135 (tail!15135 s!13436))))))

(declare-fun d!2318263 () Bool)

(assert (=> d!2318263 e!4511392))

(declare-fun c!1398054 () Bool)

(assert (=> d!2318263 (= c!1398054 ((_ is EmptyExpr!20075) (derivativeStep!5795 r!22341 (head!15595 s!13436))))))

(assert (=> d!2318263 (= lt!2652516 e!4511389)))

(declare-fun c!1398053 () Bool)

(assert (=> d!2318263 (= c!1398053 (isEmpty!41503 (tail!15135 s!13436)))))

(assert (=> d!2318263 (validRegex!10503 (derivativeStep!5795 r!22341 (head!15595 s!13436)))))

(assert (=> d!2318263 (= (matchR!9667 (derivativeStep!5795 r!22341 (head!15595 s!13436)) (tail!15135 s!13436)) lt!2652516)))

(declare-fun b!7579325 () Bool)

(assert (=> b!7579325 (= e!4511391 e!4511388)))

(declare-fun res!3036515 () Bool)

(assert (=> b!7579325 (=> res!3036515 e!4511388)))

(assert (=> b!7579325 (= res!3036515 call!694816)))

(declare-fun b!7579326 () Bool)

(declare-fun res!3036519 () Bool)

(assert (=> b!7579326 (=> res!3036519 e!4511388)))

(assert (=> b!7579326 (= res!3036519 (not (isEmpty!41503 (tail!15135 (tail!15135 s!13436)))))))

(assert (= (and d!2318263 c!1398053) b!7579319))

(assert (= (and d!2318263 (not c!1398053)) b!7579316))

(assert (= (and d!2318263 c!1398054) b!7579322))

(assert (= (and d!2318263 (not c!1398054)) b!7579323))

(assert (= (and b!7579323 c!1398052) b!7579314))

(assert (= (and b!7579323 (not c!1398052)) b!7579313))

(assert (= (and b!7579313 (not res!3036512)) b!7579317))

(assert (= (and b!7579317 res!3036514) b!7579318))

(assert (= (and b!7579318 res!3036517) b!7579324))

(assert (= (and b!7579324 res!3036518) b!7579315))

(assert (= (and b!7579317 (not res!3036516)) b!7579320))

(assert (= (and b!7579320 res!3036513) b!7579325))

(assert (= (and b!7579325 (not res!3036515)) b!7579326))

(assert (= (and b!7579326 (not res!3036519)) b!7579321))

(assert (= (or b!7579322 b!7579318 b!7579325) bm!694811))

(assert (=> b!7579324 m!8135260))

(declare-fun m!8135338 () Bool)

(assert (=> b!7579324 m!8135338))

(assert (=> b!7579324 m!8135338))

(declare-fun m!8135340 () Bool)

(assert (=> b!7579324 m!8135340))

(assert (=> bm!694811 m!8135260))

(assert (=> bm!694811 m!8135262))

(assert (=> b!7579315 m!8135260))

(declare-fun m!8135342 () Bool)

(assert (=> b!7579315 m!8135342))

(assert (=> b!7579321 m!8135260))

(assert (=> b!7579321 m!8135342))

(assert (=> d!2318263 m!8135260))

(assert (=> d!2318263 m!8135262))

(assert (=> d!2318263 m!8135266))

(declare-fun m!8135344 () Bool)

(assert (=> d!2318263 m!8135344))

(assert (=> b!7579316 m!8135260))

(assert (=> b!7579316 m!8135342))

(assert (=> b!7579316 m!8135266))

(assert (=> b!7579316 m!8135342))

(declare-fun m!8135346 () Bool)

(assert (=> b!7579316 m!8135346))

(assert (=> b!7579316 m!8135260))

(assert (=> b!7579316 m!8135338))

(assert (=> b!7579316 m!8135346))

(assert (=> b!7579316 m!8135338))

(declare-fun m!8135348 () Bool)

(assert (=> b!7579316 m!8135348))

(assert (=> b!7579319 m!8135266))

(declare-fun m!8135350 () Bool)

(assert (=> b!7579319 m!8135350))

(assert (=> b!7579326 m!8135260))

(assert (=> b!7579326 m!8135338))

(assert (=> b!7579326 m!8135338))

(assert (=> b!7579326 m!8135340))

(assert (=> b!7579140 d!2318263))

(declare-fun b!7579455 () Bool)

(declare-fun e!4511440 () Regex!20075)

(declare-fun e!4511442 () Regex!20075)

(assert (=> b!7579455 (= e!4511440 e!4511442)))

(declare-fun c!1398074 () Bool)

(assert (=> b!7579455 (= c!1398074 ((_ is ElementMatch!20075) r!22341))))

(declare-fun c!1398073 () Bool)

(declare-fun c!1398076 () Bool)

(declare-fun bm!694827 () Bool)

(declare-fun c!1398072 () Bool)

(declare-fun call!694834 () Regex!20075)

(assert (=> bm!694827 (= call!694834 (derivativeStep!5795 (ite c!1398072 (regTwo!40663 r!22341) (ite c!1398076 (reg!20404 r!22341) (ite c!1398073 (regTwo!40662 r!22341) (regOne!40662 r!22341)))) (head!15595 s!13436)))))

(declare-fun bm!694828 () Bool)

(declare-fun call!694833 () Regex!20075)

(assert (=> bm!694828 (= call!694833 call!694834)))

(declare-fun bm!694829 () Bool)

(declare-fun call!694835 () Regex!20075)

(assert (=> bm!694829 (= call!694835 (derivativeStep!5795 (ite c!1398072 (regOne!40663 r!22341) (regOne!40662 r!22341)) (head!15595 s!13436)))))

(declare-fun b!7579457 () Bool)

(assert (=> b!7579457 (= e!4511442 (ite (= (head!15595 s!13436) (c!1397962 r!22341)) EmptyExpr!20075 EmptyLang!20075))))

(declare-fun b!7579458 () Bool)

(declare-fun e!4511439 () Regex!20075)

(assert (=> b!7579458 (= e!4511439 (Concat!28920 call!694833 r!22341))))

(declare-fun b!7579459 () Bool)

(declare-fun e!4511438 () Regex!20075)

(declare-fun call!694832 () Regex!20075)

(assert (=> b!7579459 (= e!4511438 (Union!20075 (Concat!28920 call!694835 (regTwo!40662 r!22341)) call!694832))))

(declare-fun b!7579460 () Bool)

(assert (=> b!7579460 (= e!4511440 EmptyLang!20075)))

(declare-fun bm!694830 () Bool)

(assert (=> bm!694830 (= call!694832 call!694833)))

(declare-fun b!7579461 () Bool)

(declare-fun e!4511441 () Regex!20075)

(assert (=> b!7579461 (= e!4511441 (Union!20075 call!694835 call!694834))))

(declare-fun b!7579462 () Bool)

(assert (=> b!7579462 (= c!1398073 (nullable!8768 (regOne!40662 r!22341)))))

(assert (=> b!7579462 (= e!4511439 e!4511438)))

(declare-fun d!2318265 () Bool)

(declare-fun lt!2652520 () Regex!20075)

(assert (=> d!2318265 (validRegex!10503 lt!2652520)))

(assert (=> d!2318265 (= lt!2652520 e!4511440)))

(declare-fun c!1398075 () Bool)

(assert (=> d!2318265 (= c!1398075 (or ((_ is EmptyExpr!20075) r!22341) ((_ is EmptyLang!20075) r!22341)))))

(assert (=> d!2318265 (validRegex!10503 r!22341)))

(assert (=> d!2318265 (= (derivativeStep!5795 r!22341 (head!15595 s!13436)) lt!2652520)))

(declare-fun b!7579456 () Bool)

(assert (=> b!7579456 (= e!4511441 e!4511439)))

(assert (=> b!7579456 (= c!1398076 ((_ is Star!20075) r!22341))))

(declare-fun b!7579463 () Bool)

(assert (=> b!7579463 (= e!4511438 (Union!20075 (Concat!28920 call!694832 (regTwo!40662 r!22341)) EmptyLang!20075))))

(declare-fun b!7579464 () Bool)

(assert (=> b!7579464 (= c!1398072 ((_ is Union!20075) r!22341))))

(assert (=> b!7579464 (= e!4511442 e!4511441)))

(assert (= (and d!2318265 c!1398075) b!7579460))

(assert (= (and d!2318265 (not c!1398075)) b!7579455))

(assert (= (and b!7579455 c!1398074) b!7579457))

(assert (= (and b!7579455 (not c!1398074)) b!7579464))

(assert (= (and b!7579464 c!1398072) b!7579461))

(assert (= (and b!7579464 (not c!1398072)) b!7579456))

(assert (= (and b!7579456 c!1398076) b!7579458))

(assert (= (and b!7579456 (not c!1398076)) b!7579462))

(assert (= (and b!7579462 c!1398073) b!7579459))

(assert (= (and b!7579462 (not c!1398073)) b!7579463))

(assert (= (or b!7579459 b!7579463) bm!694830))

(assert (= (or b!7579458 bm!694830) bm!694828))

(assert (= (or b!7579461 bm!694828) bm!694827))

(assert (= (or b!7579461 b!7579459) bm!694829))

(assert (=> bm!694827 m!8135264))

(declare-fun m!8135372 () Bool)

(assert (=> bm!694827 m!8135372))

(assert (=> bm!694829 m!8135264))

(declare-fun m!8135374 () Bool)

(assert (=> bm!694829 m!8135374))

(declare-fun m!8135376 () Bool)

(assert (=> b!7579462 m!8135376))

(declare-fun m!8135378 () Bool)

(assert (=> d!2318265 m!8135378))

(assert (=> d!2318265 m!8135214))

(assert (=> b!7579140 d!2318265))

(assert (=> b!7579140 d!2318247))

(assert (=> b!7579140 d!2318241))

(declare-fun d!2318279 () Bool)

(declare-fun choose!58603 (Int) Bool)

(assert (=> d!2318279 (= (Exists!4310 (ite c!1398006 lambda!466900 lambda!466901)) (choose!58603 (ite c!1398006 lambda!466900 lambda!466901)))))

(declare-fun bs!1940977 () Bool)

(assert (= bs!1940977 d!2318279))

(declare-fun m!8135380 () Bool)

(assert (=> bs!1940977 m!8135380))

(assert (=> bm!694773 d!2318279))

(assert (=> b!7579150 d!2318239))

(assert (=> b!7579150 d!2318241))

(assert (=> b!7579139 d!2318247))

(declare-fun b!7579477 () Bool)

(declare-fun e!4511450 () Bool)

(declare-fun call!694836 () Bool)

(assert (=> b!7579477 (= e!4511450 call!694836)))

(declare-fun b!7579478 () Bool)

(declare-fun e!4511451 () Bool)

(declare-fun call!694837 () Bool)

(assert (=> b!7579478 (= e!4511451 call!694837)))

(declare-fun bm!694831 () Bool)

(assert (=> bm!694831 (= call!694837 call!694836)))

(declare-fun b!7579479 () Bool)

(declare-fun e!4511447 () Bool)

(declare-fun call!694838 () Bool)

(assert (=> b!7579479 (= e!4511447 call!694838)))

(declare-fun b!7579480 () Bool)

(declare-fun res!3036529 () Bool)

(assert (=> b!7579480 (=> (not res!3036529) (not e!4511451))))

(assert (=> b!7579480 (= res!3036529 call!694838)))

(declare-fun e!4511452 () Bool)

(assert (=> b!7579480 (= e!4511452 e!4511451)))

(declare-fun d!2318281 () Bool)

(declare-fun res!3036526 () Bool)

(declare-fun e!4511449 () Bool)

(assert (=> d!2318281 (=> res!3036526 e!4511449)))

(assert (=> d!2318281 (= res!3036526 ((_ is ElementMatch!20075) (ite c!1397974 (reg!20404 r!22341) (ite c!1397973 (regTwo!40663 r!22341) (regOne!40662 r!22341)))))))

(assert (=> d!2318281 (= (validRegex!10503 (ite c!1397974 (reg!20404 r!22341) (ite c!1397973 (regTwo!40663 r!22341) (regOne!40662 r!22341)))) e!4511449)))

(declare-fun b!7579481 () Bool)

(declare-fun e!4511448 () Bool)

(assert (=> b!7579481 (= e!4511448 e!4511447)))

(declare-fun res!3036527 () Bool)

(assert (=> b!7579481 (=> (not res!3036527) (not e!4511447))))

(assert (=> b!7579481 (= res!3036527 call!694837)))

(declare-fun bm!694832 () Bool)

(declare-fun c!1398078 () Bool)

(declare-fun c!1398077 () Bool)

(assert (=> bm!694832 (= call!694836 (validRegex!10503 (ite c!1398078 (reg!20404 (ite c!1397974 (reg!20404 r!22341) (ite c!1397973 (regTwo!40663 r!22341) (regOne!40662 r!22341)))) (ite c!1398077 (regTwo!40663 (ite c!1397974 (reg!20404 r!22341) (ite c!1397973 (regTwo!40663 r!22341) (regOne!40662 r!22341)))) (regOne!40662 (ite c!1397974 (reg!20404 r!22341) (ite c!1397973 (regTwo!40663 r!22341) (regOne!40662 r!22341))))))))))

(declare-fun b!7579482 () Bool)

(declare-fun res!3036528 () Bool)

(assert (=> b!7579482 (=> res!3036528 e!4511448)))

(assert (=> b!7579482 (= res!3036528 (not ((_ is Concat!28920) (ite c!1397974 (reg!20404 r!22341) (ite c!1397973 (regTwo!40663 r!22341) (regOne!40662 r!22341))))))))

(assert (=> b!7579482 (= e!4511452 e!4511448)))

(declare-fun b!7579483 () Bool)

(declare-fun e!4511446 () Bool)

(assert (=> b!7579483 (= e!4511446 e!4511450)))

(declare-fun res!3036525 () Bool)

(assert (=> b!7579483 (= res!3036525 (not (nullable!8768 (reg!20404 (ite c!1397974 (reg!20404 r!22341) (ite c!1397973 (regTwo!40663 r!22341) (regOne!40662 r!22341)))))))))

(assert (=> b!7579483 (=> (not res!3036525) (not e!4511450))))

(declare-fun b!7579484 () Bool)

(assert (=> b!7579484 (= e!4511449 e!4511446)))

(assert (=> b!7579484 (= c!1398078 ((_ is Star!20075) (ite c!1397974 (reg!20404 r!22341) (ite c!1397973 (regTwo!40663 r!22341) (regOne!40662 r!22341)))))))

(declare-fun b!7579485 () Bool)

(assert (=> b!7579485 (= e!4511446 e!4511452)))

(assert (=> b!7579485 (= c!1398077 ((_ is Union!20075) (ite c!1397974 (reg!20404 r!22341) (ite c!1397973 (regTwo!40663 r!22341) (regOne!40662 r!22341)))))))

(declare-fun bm!694833 () Bool)

(assert (=> bm!694833 (= call!694838 (validRegex!10503 (ite c!1398077 (regOne!40663 (ite c!1397974 (reg!20404 r!22341) (ite c!1397973 (regTwo!40663 r!22341) (regOne!40662 r!22341)))) (regTwo!40662 (ite c!1397974 (reg!20404 r!22341) (ite c!1397973 (regTwo!40663 r!22341) (regOne!40662 r!22341)))))))))

(assert (= (and d!2318281 (not res!3036526)) b!7579484))

(assert (= (and b!7579484 c!1398078) b!7579483))

(assert (= (and b!7579484 (not c!1398078)) b!7579485))

(assert (= (and b!7579483 res!3036525) b!7579477))

(assert (= (and b!7579485 c!1398077) b!7579480))

(assert (= (and b!7579485 (not c!1398077)) b!7579482))

(assert (= (and b!7579480 res!3036529) b!7579478))

(assert (= (and b!7579482 (not res!3036528)) b!7579481))

(assert (= (and b!7579481 res!3036527) b!7579479))

(assert (= (or b!7579478 b!7579481) bm!694831))

(assert (= (or b!7579480 b!7579479) bm!694833))

(assert (= (or b!7579477 bm!694831) bm!694832))

(declare-fun m!8135382 () Bool)

(assert (=> bm!694832 m!8135382))

(declare-fun m!8135384 () Bool)

(assert (=> b!7579483 m!8135384))

(declare-fun m!8135386 () Bool)

(assert (=> bm!694833 m!8135386))

(assert (=> bm!694758 d!2318281))

(declare-fun bs!1940978 () Bool)

(declare-fun b!7579492 () Bool)

(assert (= bs!1940978 (and b!7579492 b!7579100)))

(declare-fun lambda!466908 () Int)

(assert (=> bs!1940978 (= (and (= (reg!20404 (regOne!40663 r!22341)) (reg!20404 r!22341)) (= (regOne!40663 r!22341) r!22341)) (= lambda!466908 lambda!466900))))

(declare-fun bs!1940979 () Bool)

(assert (= bs!1940979 (and b!7579492 b!7579103)))

(assert (=> bs!1940979 (not (= lambda!466908 lambda!466901))))

(declare-fun bs!1940980 () Bool)

(assert (= bs!1940980 (and b!7579492 b!7579223)))

(assert (=> bs!1940980 (= (and (= (reg!20404 (regOne!40663 r!22341)) (reg!20404 (regTwo!40663 r!22341))) (= (regOne!40663 r!22341) (regTwo!40663 r!22341))) (= lambda!466908 lambda!466906))))

(declare-fun bs!1940981 () Bool)

(assert (= bs!1940981 (and b!7579492 b!7579226)))

(assert (=> bs!1940981 (not (= lambda!466908 lambda!466907))))

(assert (=> b!7579492 true))

(assert (=> b!7579492 true))

(declare-fun bs!1940982 () Bool)

(declare-fun b!7579495 () Bool)

(assert (= bs!1940982 (and b!7579495 b!7579103)))

(declare-fun lambda!466909 () Int)

(assert (=> bs!1940982 (= (and (= (regOne!40662 (regOne!40663 r!22341)) (regOne!40662 r!22341)) (= (regTwo!40662 (regOne!40663 r!22341)) (regTwo!40662 r!22341))) (= lambda!466909 lambda!466901))))

(declare-fun bs!1940983 () Bool)

(assert (= bs!1940983 (and b!7579495 b!7579226)))

(assert (=> bs!1940983 (= (and (= (regOne!40662 (regOne!40663 r!22341)) (regOne!40662 (regTwo!40663 r!22341))) (= (regTwo!40662 (regOne!40663 r!22341)) (regTwo!40662 (regTwo!40663 r!22341)))) (= lambda!466909 lambda!466907))))

(declare-fun bs!1940984 () Bool)

(assert (= bs!1940984 (and b!7579495 b!7579492)))

(assert (=> bs!1940984 (not (= lambda!466909 lambda!466908))))

(declare-fun bs!1940985 () Bool)

(assert (= bs!1940985 (and b!7579495 b!7579223)))

(assert (=> bs!1940985 (not (= lambda!466909 lambda!466906))))

(declare-fun bs!1940986 () Bool)

(assert (= bs!1940986 (and b!7579495 b!7579100)))

(assert (=> bs!1940986 (not (= lambda!466909 lambda!466900))))

(assert (=> b!7579495 true))

(assert (=> b!7579495 true))

(declare-fun b!7579486 () Bool)

(declare-fun e!4511457 () Bool)

(declare-fun e!4511455 () Bool)

(assert (=> b!7579486 (= e!4511457 e!4511455)))

(declare-fun res!3036531 () Bool)

(assert (=> b!7579486 (= res!3036531 (not ((_ is EmptyLang!20075) (regOne!40663 r!22341))))))

(assert (=> b!7579486 (=> (not res!3036531) (not e!4511455))))

(declare-fun b!7579487 () Bool)

(declare-fun c!1398080 () Bool)

(assert (=> b!7579487 (= c!1398080 ((_ is Union!20075) (regOne!40663 r!22341)))))

(declare-fun e!4511458 () Bool)

(declare-fun e!4511453 () Bool)

(assert (=> b!7579487 (= e!4511458 e!4511453)))

(declare-fun c!1398081 () Bool)

(declare-fun call!694839 () Bool)

(declare-fun bm!694834 () Bool)

(assert (=> bm!694834 (= call!694839 (Exists!4310 (ite c!1398081 lambda!466908 lambda!466909)))))

(declare-fun d!2318283 () Bool)

(declare-fun c!1398079 () Bool)

(assert (=> d!2318283 (= c!1398079 ((_ is EmptyExpr!20075) (regOne!40663 r!22341)))))

(assert (=> d!2318283 (= (matchRSpec!4388 (regOne!40663 r!22341) s!13436) e!4511457)))

(declare-fun b!7579488 () Bool)

(declare-fun e!4511454 () Bool)

(assert (=> b!7579488 (= e!4511453 e!4511454)))

(declare-fun res!3036530 () Bool)

(assert (=> b!7579488 (= res!3036530 (matchRSpec!4388 (regOne!40663 (regOne!40663 r!22341)) s!13436))))

(assert (=> b!7579488 (=> res!3036530 e!4511454)))

(declare-fun bm!694835 () Bool)

(declare-fun call!694840 () Bool)

(assert (=> bm!694835 (= call!694840 (isEmpty!41503 s!13436))))

(declare-fun b!7579489 () Bool)

(declare-fun e!4511456 () Bool)

(assert (=> b!7579489 (= e!4511453 e!4511456)))

(assert (=> b!7579489 (= c!1398081 ((_ is Star!20075) (regOne!40663 r!22341)))))

(declare-fun b!7579490 () Bool)

(assert (=> b!7579490 (= e!4511458 (= s!13436 (Cons!72834 (c!1397962 (regOne!40663 r!22341)) Nil!72834)))))

(declare-fun b!7579491 () Bool)

(declare-fun res!3036532 () Bool)

(declare-fun e!4511459 () Bool)

(assert (=> b!7579491 (=> res!3036532 e!4511459)))

(assert (=> b!7579491 (= res!3036532 call!694840)))

(assert (=> b!7579491 (= e!4511456 e!4511459)))

(assert (=> b!7579492 (= e!4511459 call!694839)))

(declare-fun b!7579493 () Bool)

(assert (=> b!7579493 (= e!4511457 call!694840)))

(declare-fun b!7579494 () Bool)

(assert (=> b!7579494 (= e!4511454 (matchRSpec!4388 (regTwo!40663 (regOne!40663 r!22341)) s!13436))))

(assert (=> b!7579495 (= e!4511456 call!694839)))

(declare-fun b!7579496 () Bool)

(declare-fun c!1398082 () Bool)

(assert (=> b!7579496 (= c!1398082 ((_ is ElementMatch!20075) (regOne!40663 r!22341)))))

(assert (=> b!7579496 (= e!4511455 e!4511458)))

(assert (= (and d!2318283 c!1398079) b!7579493))

(assert (= (and d!2318283 (not c!1398079)) b!7579486))

(assert (= (and b!7579486 res!3036531) b!7579496))

(assert (= (and b!7579496 c!1398082) b!7579490))

(assert (= (and b!7579496 (not c!1398082)) b!7579487))

(assert (= (and b!7579487 c!1398080) b!7579488))

(assert (= (and b!7579487 (not c!1398080)) b!7579489))

(assert (= (and b!7579488 (not res!3036530)) b!7579494))

(assert (= (and b!7579489 c!1398081) b!7579491))

(assert (= (and b!7579489 (not c!1398081)) b!7579495))

(assert (= (and b!7579491 (not res!3036532)) b!7579492))

(assert (= (or b!7579492 b!7579495) bm!694834))

(assert (= (or b!7579493 b!7579491) bm!694835))

(declare-fun m!8135388 () Bool)

(assert (=> bm!694834 m!8135388))

(declare-fun m!8135390 () Bool)

(assert (=> b!7579488 m!8135390))

(assert (=> bm!694835 m!8135212))

(declare-fun m!8135392 () Bool)

(assert (=> b!7579494 m!8135392))

(assert (=> b!7579096 d!2318283))

(declare-fun b!7579498 () Bool)

(declare-fun e!4511460 () Bool)

(declare-fun tp!2208656 () Bool)

(declare-fun tp!2208658 () Bool)

(assert (=> b!7579498 (= e!4511460 (and tp!2208656 tp!2208658))))

(assert (=> b!7579175 (= tp!2208515 e!4511460)))

(declare-fun b!7579497 () Bool)

(assert (=> b!7579497 (= e!4511460 tp_is_empty!50505)))

(declare-fun b!7579499 () Bool)

(declare-fun tp!2208657 () Bool)

(assert (=> b!7579499 (= e!4511460 tp!2208657)))

(declare-fun b!7579500 () Bool)

(declare-fun tp!2208660 () Bool)

(declare-fun tp!2208659 () Bool)

(assert (=> b!7579500 (= e!4511460 (and tp!2208660 tp!2208659))))

(assert (= (and b!7579175 ((_ is ElementMatch!20075) (regOne!40662 (reg!20404 r!22341)))) b!7579497))

(assert (= (and b!7579175 ((_ is Concat!28920) (regOne!40662 (reg!20404 r!22341)))) b!7579498))

(assert (= (and b!7579175 ((_ is Star!20075) (regOne!40662 (reg!20404 r!22341)))) b!7579499))

(assert (= (and b!7579175 ((_ is Union!20075) (regOne!40662 (reg!20404 r!22341)))) b!7579500))

(declare-fun b!7579502 () Bool)

(declare-fun e!4511461 () Bool)

(declare-fun tp!2208661 () Bool)

(declare-fun tp!2208663 () Bool)

(assert (=> b!7579502 (= e!4511461 (and tp!2208661 tp!2208663))))

(assert (=> b!7579175 (= tp!2208517 e!4511461)))

(declare-fun b!7579501 () Bool)

(assert (=> b!7579501 (= e!4511461 tp_is_empty!50505)))

(declare-fun b!7579503 () Bool)

(declare-fun tp!2208662 () Bool)

(assert (=> b!7579503 (= e!4511461 tp!2208662)))

(declare-fun b!7579504 () Bool)

(declare-fun tp!2208665 () Bool)

(declare-fun tp!2208664 () Bool)

(assert (=> b!7579504 (= e!4511461 (and tp!2208665 tp!2208664))))

(assert (= (and b!7579175 ((_ is ElementMatch!20075) (regTwo!40662 (reg!20404 r!22341)))) b!7579501))

(assert (= (and b!7579175 ((_ is Concat!28920) (regTwo!40662 (reg!20404 r!22341)))) b!7579502))

(assert (= (and b!7579175 ((_ is Star!20075) (regTwo!40662 (reg!20404 r!22341)))) b!7579503))

(assert (= (and b!7579175 ((_ is Union!20075) (regTwo!40662 (reg!20404 r!22341)))) b!7579504))

(declare-fun b!7579506 () Bool)

(declare-fun e!4511462 () Bool)

(declare-fun tp!2208666 () Bool)

(declare-fun tp!2208668 () Bool)

(assert (=> b!7579506 (= e!4511462 (and tp!2208666 tp!2208668))))

(assert (=> b!7579184 (= tp!2208526 e!4511462)))

(declare-fun b!7579505 () Bool)

(assert (=> b!7579505 (= e!4511462 tp_is_empty!50505)))

(declare-fun b!7579507 () Bool)

(declare-fun tp!2208667 () Bool)

(assert (=> b!7579507 (= e!4511462 tp!2208667)))

(declare-fun b!7579508 () Bool)

(declare-fun tp!2208670 () Bool)

(declare-fun tp!2208669 () Bool)

(assert (=> b!7579508 (= e!4511462 (and tp!2208670 tp!2208669))))

(assert (= (and b!7579184 ((_ is ElementMatch!20075) (reg!20404 (regTwo!40662 r!22341)))) b!7579505))

(assert (= (and b!7579184 ((_ is Concat!28920) (reg!20404 (regTwo!40662 r!22341)))) b!7579506))

(assert (= (and b!7579184 ((_ is Star!20075) (reg!20404 (regTwo!40662 r!22341)))) b!7579507))

(assert (= (and b!7579184 ((_ is Union!20075) (reg!20404 (regTwo!40662 r!22341)))) b!7579508))

(declare-fun b!7579510 () Bool)

(declare-fun e!4511463 () Bool)

(declare-fun tp!2208671 () Bool)

(declare-fun tp!2208673 () Bool)

(assert (=> b!7579510 (= e!4511463 (and tp!2208671 tp!2208673))))

(assert (=> b!7579179 (= tp!2208520 e!4511463)))

(declare-fun b!7579509 () Bool)

(assert (=> b!7579509 (= e!4511463 tp_is_empty!50505)))

(declare-fun b!7579511 () Bool)

(declare-fun tp!2208672 () Bool)

(assert (=> b!7579511 (= e!4511463 tp!2208672)))

(declare-fun b!7579512 () Bool)

(declare-fun tp!2208675 () Bool)

(declare-fun tp!2208674 () Bool)

(assert (=> b!7579512 (= e!4511463 (and tp!2208675 tp!2208674))))

(assert (= (and b!7579179 ((_ is ElementMatch!20075) (regOne!40662 (regOne!40662 r!22341)))) b!7579509))

(assert (= (and b!7579179 ((_ is Concat!28920) (regOne!40662 (regOne!40662 r!22341)))) b!7579510))

(assert (= (and b!7579179 ((_ is Star!20075) (regOne!40662 (regOne!40662 r!22341)))) b!7579511))

(assert (= (and b!7579179 ((_ is Union!20075) (regOne!40662 (regOne!40662 r!22341)))) b!7579512))

(declare-fun b!7579514 () Bool)

(declare-fun e!4511464 () Bool)

(declare-fun tp!2208676 () Bool)

(declare-fun tp!2208678 () Bool)

(assert (=> b!7579514 (= e!4511464 (and tp!2208676 tp!2208678))))

(assert (=> b!7579179 (= tp!2208522 e!4511464)))

(declare-fun b!7579513 () Bool)

(assert (=> b!7579513 (= e!4511464 tp_is_empty!50505)))

(declare-fun b!7579515 () Bool)

(declare-fun tp!2208677 () Bool)

(assert (=> b!7579515 (= e!4511464 tp!2208677)))

(declare-fun b!7579516 () Bool)

(declare-fun tp!2208680 () Bool)

(declare-fun tp!2208679 () Bool)

(assert (=> b!7579516 (= e!4511464 (and tp!2208680 tp!2208679))))

(assert (= (and b!7579179 ((_ is ElementMatch!20075) (regTwo!40662 (regOne!40662 r!22341)))) b!7579513))

(assert (= (and b!7579179 ((_ is Concat!28920) (regTwo!40662 (regOne!40662 r!22341)))) b!7579514))

(assert (= (and b!7579179 ((_ is Star!20075) (regTwo!40662 (regOne!40662 r!22341)))) b!7579515))

(assert (= (and b!7579179 ((_ is Union!20075) (regTwo!40662 (regOne!40662 r!22341)))) b!7579516))

(declare-fun b!7579518 () Bool)

(declare-fun e!4511465 () Bool)

(declare-fun tp!2208681 () Bool)

(declare-fun tp!2208683 () Bool)

(assert (=> b!7579518 (= e!4511465 (and tp!2208681 tp!2208683))))

(assert (=> b!7579164 (= tp!2208506 e!4511465)))

(declare-fun b!7579517 () Bool)

(assert (=> b!7579517 (= e!4511465 tp_is_empty!50505)))

(declare-fun b!7579519 () Bool)

(declare-fun tp!2208682 () Bool)

(assert (=> b!7579519 (= e!4511465 tp!2208682)))

(declare-fun b!7579520 () Bool)

(declare-fun tp!2208685 () Bool)

(declare-fun tp!2208684 () Bool)

(assert (=> b!7579520 (= e!4511465 (and tp!2208685 tp!2208684))))

(assert (= (and b!7579164 ((_ is ElementMatch!20075) (regOne!40663 (regOne!40663 r!22341)))) b!7579517))

(assert (= (and b!7579164 ((_ is Concat!28920) (regOne!40663 (regOne!40663 r!22341)))) b!7579518))

(assert (= (and b!7579164 ((_ is Star!20075) (regOne!40663 (regOne!40663 r!22341)))) b!7579519))

(assert (= (and b!7579164 ((_ is Union!20075) (regOne!40663 (regOne!40663 r!22341)))) b!7579520))

(declare-fun b!7579522 () Bool)

(declare-fun e!4511466 () Bool)

(declare-fun tp!2208686 () Bool)

(declare-fun tp!2208688 () Bool)

(assert (=> b!7579522 (= e!4511466 (and tp!2208686 tp!2208688))))

(assert (=> b!7579164 (= tp!2208505 e!4511466)))

(declare-fun b!7579521 () Bool)

(assert (=> b!7579521 (= e!4511466 tp_is_empty!50505)))

(declare-fun b!7579523 () Bool)

(declare-fun tp!2208687 () Bool)

(assert (=> b!7579523 (= e!4511466 tp!2208687)))

(declare-fun b!7579524 () Bool)

(declare-fun tp!2208690 () Bool)

(declare-fun tp!2208689 () Bool)

(assert (=> b!7579524 (= e!4511466 (and tp!2208690 tp!2208689))))

(assert (= (and b!7579164 ((_ is ElementMatch!20075) (regTwo!40663 (regOne!40663 r!22341)))) b!7579521))

(assert (= (and b!7579164 ((_ is Concat!28920) (regTwo!40663 (regOne!40663 r!22341)))) b!7579522))

(assert (= (and b!7579164 ((_ is Star!20075) (regTwo!40663 (regOne!40663 r!22341)))) b!7579523))

(assert (= (and b!7579164 ((_ is Union!20075) (regTwo!40663 (regOne!40663 r!22341)))) b!7579524))

(declare-fun b!7579526 () Bool)

(declare-fun e!4511467 () Bool)

(declare-fun tp!2208691 () Bool)

(declare-fun tp!2208693 () Bool)

(assert (=> b!7579526 (= e!4511467 (and tp!2208691 tp!2208693))))

(assert (=> b!7579181 (= tp!2208524 e!4511467)))

(declare-fun b!7579525 () Bool)

(assert (=> b!7579525 (= e!4511467 tp_is_empty!50505)))

(declare-fun b!7579527 () Bool)

(declare-fun tp!2208692 () Bool)

(assert (=> b!7579527 (= e!4511467 tp!2208692)))

(declare-fun b!7579528 () Bool)

(declare-fun tp!2208695 () Bool)

(declare-fun tp!2208694 () Bool)

(assert (=> b!7579528 (= e!4511467 (and tp!2208695 tp!2208694))))

(assert (= (and b!7579181 ((_ is ElementMatch!20075) (regOne!40663 (regOne!40662 r!22341)))) b!7579525))

(assert (= (and b!7579181 ((_ is Concat!28920) (regOne!40663 (regOne!40662 r!22341)))) b!7579526))

(assert (= (and b!7579181 ((_ is Star!20075) (regOne!40663 (regOne!40662 r!22341)))) b!7579527))

(assert (= (and b!7579181 ((_ is Union!20075) (regOne!40663 (regOne!40662 r!22341)))) b!7579528))

(declare-fun b!7579530 () Bool)

(declare-fun e!4511468 () Bool)

(declare-fun tp!2208696 () Bool)

(declare-fun tp!2208698 () Bool)

(assert (=> b!7579530 (= e!4511468 (and tp!2208696 tp!2208698))))

(assert (=> b!7579181 (= tp!2208523 e!4511468)))

(declare-fun b!7579529 () Bool)

(assert (=> b!7579529 (= e!4511468 tp_is_empty!50505)))

(declare-fun b!7579531 () Bool)

(declare-fun tp!2208697 () Bool)

(assert (=> b!7579531 (= e!4511468 tp!2208697)))

(declare-fun b!7579532 () Bool)

(declare-fun tp!2208700 () Bool)

(declare-fun tp!2208699 () Bool)

(assert (=> b!7579532 (= e!4511468 (and tp!2208700 tp!2208699))))

(assert (= (and b!7579181 ((_ is ElementMatch!20075) (regTwo!40663 (regOne!40662 r!22341)))) b!7579529))

(assert (= (and b!7579181 ((_ is Concat!28920) (regTwo!40663 (regOne!40662 r!22341)))) b!7579530))

(assert (= (and b!7579181 ((_ is Star!20075) (regTwo!40663 (regOne!40662 r!22341)))) b!7579531))

(assert (= (and b!7579181 ((_ is Union!20075) (regTwo!40663 (regOne!40662 r!22341)))) b!7579532))

(declare-fun b!7579534 () Bool)

(declare-fun e!4511469 () Bool)

(declare-fun tp!2208701 () Bool)

(declare-fun tp!2208703 () Bool)

(assert (=> b!7579534 (= e!4511469 (and tp!2208701 tp!2208703))))

(assert (=> b!7579176 (= tp!2208516 e!4511469)))

(declare-fun b!7579533 () Bool)

(assert (=> b!7579533 (= e!4511469 tp_is_empty!50505)))

(declare-fun b!7579535 () Bool)

(declare-fun tp!2208702 () Bool)

(assert (=> b!7579535 (= e!4511469 tp!2208702)))

(declare-fun b!7579536 () Bool)

(declare-fun tp!2208705 () Bool)

(declare-fun tp!2208704 () Bool)

(assert (=> b!7579536 (= e!4511469 (and tp!2208705 tp!2208704))))

(assert (= (and b!7579176 ((_ is ElementMatch!20075) (reg!20404 (reg!20404 r!22341)))) b!7579533))

(assert (= (and b!7579176 ((_ is Concat!28920) (reg!20404 (reg!20404 r!22341)))) b!7579534))

(assert (= (and b!7579176 ((_ is Star!20075) (reg!20404 (reg!20404 r!22341)))) b!7579535))

(assert (= (and b!7579176 ((_ is Union!20075) (reg!20404 (reg!20404 r!22341)))) b!7579536))

(declare-fun b!7579538 () Bool)

(declare-fun e!4511470 () Bool)

(declare-fun tp!2208706 () Bool)

(declare-fun tp!2208708 () Bool)

(assert (=> b!7579538 (= e!4511470 (and tp!2208706 tp!2208708))))

(assert (=> b!7579185 (= tp!2208529 e!4511470)))

(declare-fun b!7579537 () Bool)

(assert (=> b!7579537 (= e!4511470 tp_is_empty!50505)))

(declare-fun b!7579539 () Bool)

(declare-fun tp!2208707 () Bool)

(assert (=> b!7579539 (= e!4511470 tp!2208707)))

(declare-fun b!7579540 () Bool)

(declare-fun tp!2208710 () Bool)

(declare-fun tp!2208709 () Bool)

(assert (=> b!7579540 (= e!4511470 (and tp!2208710 tp!2208709))))

(assert (= (and b!7579185 ((_ is ElementMatch!20075) (regOne!40663 (regTwo!40662 r!22341)))) b!7579537))

(assert (= (and b!7579185 ((_ is Concat!28920) (regOne!40663 (regTwo!40662 r!22341)))) b!7579538))

(assert (= (and b!7579185 ((_ is Star!20075) (regOne!40663 (regTwo!40662 r!22341)))) b!7579539))

(assert (= (and b!7579185 ((_ is Union!20075) (regOne!40663 (regTwo!40662 r!22341)))) b!7579540))

(declare-fun b!7579542 () Bool)

(declare-fun e!4511471 () Bool)

(declare-fun tp!2208711 () Bool)

(declare-fun tp!2208713 () Bool)

(assert (=> b!7579542 (= e!4511471 (and tp!2208711 tp!2208713))))

(assert (=> b!7579185 (= tp!2208528 e!4511471)))

(declare-fun b!7579541 () Bool)

(assert (=> b!7579541 (= e!4511471 tp_is_empty!50505)))

(declare-fun b!7579543 () Bool)

(declare-fun tp!2208712 () Bool)

(assert (=> b!7579543 (= e!4511471 tp!2208712)))

(declare-fun b!7579544 () Bool)

(declare-fun tp!2208715 () Bool)

(declare-fun tp!2208714 () Bool)

(assert (=> b!7579544 (= e!4511471 (and tp!2208715 tp!2208714))))

(assert (= (and b!7579185 ((_ is ElementMatch!20075) (regTwo!40663 (regTwo!40662 r!22341)))) b!7579541))

(assert (= (and b!7579185 ((_ is Concat!28920) (regTwo!40663 (regTwo!40662 r!22341)))) b!7579542))

(assert (= (and b!7579185 ((_ is Star!20075) (regTwo!40663 (regTwo!40662 r!22341)))) b!7579543))

(assert (= (and b!7579185 ((_ is Union!20075) (regTwo!40663 (regTwo!40662 r!22341)))) b!7579544))

(declare-fun b!7579546 () Bool)

(declare-fun e!4511472 () Bool)

(declare-fun tp!2208716 () Bool)

(declare-fun tp!2208718 () Bool)

(assert (=> b!7579546 (= e!4511472 (and tp!2208716 tp!2208718))))

(assert (=> b!7579180 (= tp!2208521 e!4511472)))

(declare-fun b!7579545 () Bool)

(assert (=> b!7579545 (= e!4511472 tp_is_empty!50505)))

(declare-fun b!7579547 () Bool)

(declare-fun tp!2208717 () Bool)

(assert (=> b!7579547 (= e!4511472 tp!2208717)))

(declare-fun b!7579548 () Bool)

(declare-fun tp!2208720 () Bool)

(declare-fun tp!2208719 () Bool)

(assert (=> b!7579548 (= e!4511472 (and tp!2208720 tp!2208719))))

(assert (= (and b!7579180 ((_ is ElementMatch!20075) (reg!20404 (regOne!40662 r!22341)))) b!7579545))

(assert (= (and b!7579180 ((_ is Concat!28920) (reg!20404 (regOne!40662 r!22341)))) b!7579546))

(assert (= (and b!7579180 ((_ is Star!20075) (reg!20404 (regOne!40662 r!22341)))) b!7579547))

(assert (= (and b!7579180 ((_ is Union!20075) (reg!20404 (regOne!40662 r!22341)))) b!7579548))

(declare-fun b!7579550 () Bool)

(declare-fun e!4511473 () Bool)

(declare-fun tp!2208721 () Bool)

(declare-fun tp!2208723 () Bool)

(assert (=> b!7579550 (= e!4511473 (and tp!2208721 tp!2208723))))

(assert (=> b!7579167 (= tp!2208508 e!4511473)))

(declare-fun b!7579549 () Bool)

(assert (=> b!7579549 (= e!4511473 tp_is_empty!50505)))

(declare-fun b!7579551 () Bool)

(declare-fun tp!2208722 () Bool)

(assert (=> b!7579551 (= e!4511473 tp!2208722)))

(declare-fun b!7579552 () Bool)

(declare-fun tp!2208725 () Bool)

(declare-fun tp!2208724 () Bool)

(assert (=> b!7579552 (= e!4511473 (and tp!2208725 tp!2208724))))

(assert (= (and b!7579167 ((_ is ElementMatch!20075) (reg!20404 (regTwo!40663 r!22341)))) b!7579549))

(assert (= (and b!7579167 ((_ is Concat!28920) (reg!20404 (regTwo!40663 r!22341)))) b!7579550))

(assert (= (and b!7579167 ((_ is Star!20075) (reg!20404 (regTwo!40663 r!22341)))) b!7579551))

(assert (= (and b!7579167 ((_ is Union!20075) (reg!20404 (regTwo!40663 r!22341)))) b!7579552))

(declare-fun b!7579554 () Bool)

(declare-fun e!4511474 () Bool)

(declare-fun tp!2208726 () Bool)

(declare-fun tp!2208728 () Bool)

(assert (=> b!7579554 (= e!4511474 (and tp!2208726 tp!2208728))))

(assert (=> b!7579162 (= tp!2208502 e!4511474)))

(declare-fun b!7579553 () Bool)

(assert (=> b!7579553 (= e!4511474 tp_is_empty!50505)))

(declare-fun b!7579555 () Bool)

(declare-fun tp!2208727 () Bool)

(assert (=> b!7579555 (= e!4511474 tp!2208727)))

(declare-fun b!7579556 () Bool)

(declare-fun tp!2208730 () Bool)

(declare-fun tp!2208729 () Bool)

(assert (=> b!7579556 (= e!4511474 (and tp!2208730 tp!2208729))))

(assert (= (and b!7579162 ((_ is ElementMatch!20075) (regOne!40662 (regOne!40663 r!22341)))) b!7579553))

(assert (= (and b!7579162 ((_ is Concat!28920) (regOne!40662 (regOne!40663 r!22341)))) b!7579554))

(assert (= (and b!7579162 ((_ is Star!20075) (regOne!40662 (regOne!40663 r!22341)))) b!7579555))

(assert (= (and b!7579162 ((_ is Union!20075) (regOne!40662 (regOne!40663 r!22341)))) b!7579556))

(declare-fun b!7579558 () Bool)

(declare-fun e!4511475 () Bool)

(declare-fun tp!2208731 () Bool)

(declare-fun tp!2208733 () Bool)

(assert (=> b!7579558 (= e!4511475 (and tp!2208731 tp!2208733))))

(assert (=> b!7579162 (= tp!2208504 e!4511475)))

(declare-fun b!7579557 () Bool)

(assert (=> b!7579557 (= e!4511475 tp_is_empty!50505)))

(declare-fun b!7579559 () Bool)

(declare-fun tp!2208732 () Bool)

(assert (=> b!7579559 (= e!4511475 tp!2208732)))

(declare-fun b!7579560 () Bool)

(declare-fun tp!2208735 () Bool)

(declare-fun tp!2208734 () Bool)

(assert (=> b!7579560 (= e!4511475 (and tp!2208735 tp!2208734))))

(assert (= (and b!7579162 ((_ is ElementMatch!20075) (regTwo!40662 (regOne!40663 r!22341)))) b!7579557))

(assert (= (and b!7579162 ((_ is Concat!28920) (regTwo!40662 (regOne!40663 r!22341)))) b!7579558))

(assert (= (and b!7579162 ((_ is Star!20075) (regTwo!40662 (regOne!40663 r!22341)))) b!7579559))

(assert (= (and b!7579162 ((_ is Union!20075) (regTwo!40662 (regOne!40663 r!22341)))) b!7579560))

(declare-fun b!7579562 () Bool)

(declare-fun e!4511476 () Bool)

(declare-fun tp!2208736 () Bool)

(declare-fun tp!2208738 () Bool)

(assert (=> b!7579562 (= e!4511476 (and tp!2208736 tp!2208738))))

(assert (=> b!7579166 (= tp!2208507 e!4511476)))

(declare-fun b!7579561 () Bool)

(assert (=> b!7579561 (= e!4511476 tp_is_empty!50505)))

(declare-fun b!7579563 () Bool)

(declare-fun tp!2208737 () Bool)

(assert (=> b!7579563 (= e!4511476 tp!2208737)))

(declare-fun b!7579564 () Bool)

(declare-fun tp!2208740 () Bool)

(declare-fun tp!2208739 () Bool)

(assert (=> b!7579564 (= e!4511476 (and tp!2208740 tp!2208739))))

(assert (= (and b!7579166 ((_ is ElementMatch!20075) (regOne!40662 (regTwo!40663 r!22341)))) b!7579561))

(assert (= (and b!7579166 ((_ is Concat!28920) (regOne!40662 (regTwo!40663 r!22341)))) b!7579562))

(assert (= (and b!7579166 ((_ is Star!20075) (regOne!40662 (regTwo!40663 r!22341)))) b!7579563))

(assert (= (and b!7579166 ((_ is Union!20075) (regOne!40662 (regTwo!40663 r!22341)))) b!7579564))

(declare-fun b!7579566 () Bool)

(declare-fun e!4511477 () Bool)

(declare-fun tp!2208741 () Bool)

(declare-fun tp!2208743 () Bool)

(assert (=> b!7579566 (= e!4511477 (and tp!2208741 tp!2208743))))

(assert (=> b!7579166 (= tp!2208509 e!4511477)))

(declare-fun b!7579565 () Bool)

(assert (=> b!7579565 (= e!4511477 tp_is_empty!50505)))

(declare-fun b!7579567 () Bool)

(declare-fun tp!2208742 () Bool)

(assert (=> b!7579567 (= e!4511477 tp!2208742)))

(declare-fun b!7579568 () Bool)

(declare-fun tp!2208745 () Bool)

(declare-fun tp!2208744 () Bool)

(assert (=> b!7579568 (= e!4511477 (and tp!2208745 tp!2208744))))

(assert (= (and b!7579166 ((_ is ElementMatch!20075) (regTwo!40662 (regTwo!40663 r!22341)))) b!7579565))

(assert (= (and b!7579166 ((_ is Concat!28920) (regTwo!40662 (regTwo!40663 r!22341)))) b!7579566))

(assert (= (and b!7579166 ((_ is Star!20075) (regTwo!40662 (regTwo!40663 r!22341)))) b!7579567))

(assert (= (and b!7579166 ((_ is Union!20075) (regTwo!40662 (regTwo!40663 r!22341)))) b!7579568))

(declare-fun b!7579570 () Bool)

(declare-fun e!4511478 () Bool)

(declare-fun tp!2208746 () Bool)

(declare-fun tp!2208748 () Bool)

(assert (=> b!7579570 (= e!4511478 (and tp!2208746 tp!2208748))))

(assert (=> b!7579183 (= tp!2208525 e!4511478)))

(declare-fun b!7579569 () Bool)

(assert (=> b!7579569 (= e!4511478 tp_is_empty!50505)))

(declare-fun b!7579571 () Bool)

(declare-fun tp!2208747 () Bool)

(assert (=> b!7579571 (= e!4511478 tp!2208747)))

(declare-fun b!7579572 () Bool)

(declare-fun tp!2208750 () Bool)

(declare-fun tp!2208749 () Bool)

(assert (=> b!7579572 (= e!4511478 (and tp!2208750 tp!2208749))))

(assert (= (and b!7579183 ((_ is ElementMatch!20075) (regOne!40662 (regTwo!40662 r!22341)))) b!7579569))

(assert (= (and b!7579183 ((_ is Concat!28920) (regOne!40662 (regTwo!40662 r!22341)))) b!7579570))

(assert (= (and b!7579183 ((_ is Star!20075) (regOne!40662 (regTwo!40662 r!22341)))) b!7579571))

(assert (= (and b!7579183 ((_ is Union!20075) (regOne!40662 (regTwo!40662 r!22341)))) b!7579572))

(declare-fun b!7579574 () Bool)

(declare-fun e!4511479 () Bool)

(declare-fun tp!2208751 () Bool)

(declare-fun tp!2208753 () Bool)

(assert (=> b!7579574 (= e!4511479 (and tp!2208751 tp!2208753))))

(assert (=> b!7579183 (= tp!2208527 e!4511479)))

(declare-fun b!7579573 () Bool)

(assert (=> b!7579573 (= e!4511479 tp_is_empty!50505)))

(declare-fun b!7579575 () Bool)

(declare-fun tp!2208752 () Bool)

(assert (=> b!7579575 (= e!4511479 tp!2208752)))

(declare-fun b!7579576 () Bool)

(declare-fun tp!2208755 () Bool)

(declare-fun tp!2208754 () Bool)

(assert (=> b!7579576 (= e!4511479 (and tp!2208755 tp!2208754))))

(assert (= (and b!7579183 ((_ is ElementMatch!20075) (regTwo!40662 (regTwo!40662 r!22341)))) b!7579573))

(assert (= (and b!7579183 ((_ is Concat!28920) (regTwo!40662 (regTwo!40662 r!22341)))) b!7579574))

(assert (= (and b!7579183 ((_ is Star!20075) (regTwo!40662 (regTwo!40662 r!22341)))) b!7579575))

(assert (= (and b!7579183 ((_ is Union!20075) (regTwo!40662 (regTwo!40662 r!22341)))) b!7579576))

(declare-fun b!7579578 () Bool)

(declare-fun e!4511480 () Bool)

(declare-fun tp!2208756 () Bool)

(declare-fun tp!2208758 () Bool)

(assert (=> b!7579578 (= e!4511480 (and tp!2208756 tp!2208758))))

(assert (=> b!7579168 (= tp!2208511 e!4511480)))

(declare-fun b!7579577 () Bool)

(assert (=> b!7579577 (= e!4511480 tp_is_empty!50505)))

(declare-fun b!7579579 () Bool)

(declare-fun tp!2208757 () Bool)

(assert (=> b!7579579 (= e!4511480 tp!2208757)))

(declare-fun b!7579580 () Bool)

(declare-fun tp!2208760 () Bool)

(declare-fun tp!2208759 () Bool)

(assert (=> b!7579580 (= e!4511480 (and tp!2208760 tp!2208759))))

(assert (= (and b!7579168 ((_ is ElementMatch!20075) (regOne!40663 (regTwo!40663 r!22341)))) b!7579577))

(assert (= (and b!7579168 ((_ is Concat!28920) (regOne!40663 (regTwo!40663 r!22341)))) b!7579578))

(assert (= (and b!7579168 ((_ is Star!20075) (regOne!40663 (regTwo!40663 r!22341)))) b!7579579))

(assert (= (and b!7579168 ((_ is Union!20075) (regOne!40663 (regTwo!40663 r!22341)))) b!7579580))

(declare-fun b!7579582 () Bool)

(declare-fun e!4511481 () Bool)

(declare-fun tp!2208761 () Bool)

(declare-fun tp!2208763 () Bool)

(assert (=> b!7579582 (= e!4511481 (and tp!2208761 tp!2208763))))

(assert (=> b!7579168 (= tp!2208510 e!4511481)))

(declare-fun b!7579581 () Bool)

(assert (=> b!7579581 (= e!4511481 tp_is_empty!50505)))

(declare-fun b!7579583 () Bool)

(declare-fun tp!2208762 () Bool)

(assert (=> b!7579583 (= e!4511481 tp!2208762)))

(declare-fun b!7579584 () Bool)

(declare-fun tp!2208765 () Bool)

(declare-fun tp!2208764 () Bool)

(assert (=> b!7579584 (= e!4511481 (and tp!2208765 tp!2208764))))

(assert (= (and b!7579168 ((_ is ElementMatch!20075) (regTwo!40663 (regTwo!40663 r!22341)))) b!7579581))

(assert (= (and b!7579168 ((_ is Concat!28920) (regTwo!40663 (regTwo!40663 r!22341)))) b!7579582))

(assert (= (and b!7579168 ((_ is Star!20075) (regTwo!40663 (regTwo!40663 r!22341)))) b!7579583))

(assert (= (and b!7579168 ((_ is Union!20075) (regTwo!40663 (regTwo!40663 r!22341)))) b!7579584))

(declare-fun b!7579586 () Bool)

(declare-fun e!4511482 () Bool)

(declare-fun tp!2208766 () Bool)

(declare-fun tp!2208768 () Bool)

(assert (=> b!7579586 (= e!4511482 (and tp!2208766 tp!2208768))))

(assert (=> b!7579163 (= tp!2208503 e!4511482)))

(declare-fun b!7579585 () Bool)

(assert (=> b!7579585 (= e!4511482 tp_is_empty!50505)))

(declare-fun b!7579587 () Bool)

(declare-fun tp!2208767 () Bool)

(assert (=> b!7579587 (= e!4511482 tp!2208767)))

(declare-fun b!7579588 () Bool)

(declare-fun tp!2208770 () Bool)

(declare-fun tp!2208769 () Bool)

(assert (=> b!7579588 (= e!4511482 (and tp!2208770 tp!2208769))))

(assert (= (and b!7579163 ((_ is ElementMatch!20075) (reg!20404 (regOne!40663 r!22341)))) b!7579585))

(assert (= (and b!7579163 ((_ is Concat!28920) (reg!20404 (regOne!40663 r!22341)))) b!7579586))

(assert (= (and b!7579163 ((_ is Star!20075) (reg!20404 (regOne!40663 r!22341)))) b!7579587))

(assert (= (and b!7579163 ((_ is Union!20075) (reg!20404 (regOne!40663 r!22341)))) b!7579588))

(declare-fun b!7579589 () Bool)

(declare-fun e!4511483 () Bool)

(declare-fun tp!2208771 () Bool)

(assert (=> b!7579589 (= e!4511483 (and tp_is_empty!50505 tp!2208771))))

(assert (=> b!7579173 (= tp!2208514 e!4511483)))

(assert (= (and b!7579173 ((_ is Cons!72834) (t!387693 (t!387693 s!13436)))) b!7579589))

(declare-fun b!7579591 () Bool)

(declare-fun e!4511484 () Bool)

(declare-fun tp!2208772 () Bool)

(declare-fun tp!2208774 () Bool)

(assert (=> b!7579591 (= e!4511484 (and tp!2208772 tp!2208774))))

(assert (=> b!7579177 (= tp!2208519 e!4511484)))

(declare-fun b!7579590 () Bool)

(assert (=> b!7579590 (= e!4511484 tp_is_empty!50505)))

(declare-fun b!7579592 () Bool)

(declare-fun tp!2208773 () Bool)

(assert (=> b!7579592 (= e!4511484 tp!2208773)))

(declare-fun b!7579593 () Bool)

(declare-fun tp!2208776 () Bool)

(declare-fun tp!2208775 () Bool)

(assert (=> b!7579593 (= e!4511484 (and tp!2208776 tp!2208775))))

(assert (= (and b!7579177 ((_ is ElementMatch!20075) (regOne!40663 (reg!20404 r!22341)))) b!7579590))

(assert (= (and b!7579177 ((_ is Concat!28920) (regOne!40663 (reg!20404 r!22341)))) b!7579591))

(assert (= (and b!7579177 ((_ is Star!20075) (regOne!40663 (reg!20404 r!22341)))) b!7579592))

(assert (= (and b!7579177 ((_ is Union!20075) (regOne!40663 (reg!20404 r!22341)))) b!7579593))

(declare-fun b!7579595 () Bool)

(declare-fun e!4511485 () Bool)

(declare-fun tp!2208777 () Bool)

(declare-fun tp!2208779 () Bool)

(assert (=> b!7579595 (= e!4511485 (and tp!2208777 tp!2208779))))

(assert (=> b!7579177 (= tp!2208518 e!4511485)))

(declare-fun b!7579594 () Bool)

(assert (=> b!7579594 (= e!4511485 tp_is_empty!50505)))

(declare-fun b!7579596 () Bool)

(declare-fun tp!2208778 () Bool)

(assert (=> b!7579596 (= e!4511485 tp!2208778)))

(declare-fun b!7579597 () Bool)

(declare-fun tp!2208781 () Bool)

(declare-fun tp!2208780 () Bool)

(assert (=> b!7579597 (= e!4511485 (and tp!2208781 tp!2208780))))

(assert (= (and b!7579177 ((_ is ElementMatch!20075) (regTwo!40663 (reg!20404 r!22341)))) b!7579594))

(assert (= (and b!7579177 ((_ is Concat!28920) (regTwo!40663 (reg!20404 r!22341)))) b!7579595))

(assert (= (and b!7579177 ((_ is Star!20075) (regTwo!40663 (reg!20404 r!22341)))) b!7579596))

(assert (= (and b!7579177 ((_ is Union!20075) (regTwo!40663 (reg!20404 r!22341)))) b!7579597))

(check-sat (not b!7579572) (not b!7579514) (not b!7579563) (not b!7579551) (not bm!694829) (not b!7579574) (not b!7579498) (not bm!694811) (not b!7579544) (not b!7579507) (not b!7579316) (not b!7579523) (not b!7579579) (not b!7579522) (not bm!694834) (not b!7579526) (not b!7579554) (not bm!694794) (not d!2318259) (not b!7579512) (not d!2318261) (not b!7579547) (not b!7579520) (not b!7579321) (not b!7579548) (not b!7579580) (not b!7579536) (not b!7579531) (not b!7579528) (not b!7579518) (not bm!694833) (not b!7579587) (not b!7579593) (not b!7579550) (not b!7579566) (not b!7579559) (not d!2318279) (not bm!694810) (not b!7579539) (not b!7579575) (not b!7579596) (not d!2318263) (not b!7579586) (not b!7579502) (not b!7579326) (not b!7579499) (not d!2318265) (not b!7579578) (not b!7579592) (not b!7579597) (not b!7579504) (not b!7579319) (not b!7579225) (not b!7579558) (not b!7579219) (not b!7579540) (not b!7579510) (not b!7579494) (not b!7579315) (not bm!694795) (not b!7579552) (not b!7579582) (not b!7579488) (not b!7579538) (not b!7579556) (not b!7579483) (not b!7579564) (not b!7579532) (not b!7579571) (not b!7579515) (not b!7579568) (not b!7579527) (not bm!694786) (not bm!694827) (not b!7579584) (not b!7579519) (not b!7579524) (not b!7579570) (not b!7579583) (not d!2318257) (not b!7579567) (not bm!694809) (not b!7579560) (not b!7579542) (not b!7579516) (not b!7579588) (not b!7579589) (not b!7579530) (not bm!694835) (not b!7579500) (not bm!694785) (not b!7579508) (not b!7579576) (not b!7579555) (not b!7579324) (not b!7579255) (not b!7579595) (not b!7579511) (not b!7579534) (not bm!694832) (not b!7579535) (not b!7579562) tp_is_empty!50505 (not b!7579546) (not b!7579462) (not d!2318253) (not b!7579591) (not b!7579506) (not b!7579503) (not b!7579543))
(check-sat)

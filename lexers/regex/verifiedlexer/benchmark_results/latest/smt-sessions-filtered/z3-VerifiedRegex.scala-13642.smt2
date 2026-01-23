; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!731884 () Bool)

(assert start!731884)

(declare-fun b!7580022 () Bool)

(declare-fun res!3036710 () Bool)

(declare-fun e!4511699 () Bool)

(assert (=> b!7580022 (=> res!3036710 e!4511699)))

(declare-datatypes ((C!40484 0))(
  ( (C!40485 (val!30682 Int)) )
))
(declare-datatypes ((Regex!20079 0))(
  ( (ElementMatch!20079 (c!1398144 C!40484)) (Concat!28924 (regOne!40670 Regex!20079) (regTwo!40670 Regex!20079)) (EmptyExpr!20079) (Star!20079 (reg!20408 Regex!20079)) (EmptyLang!20079) (Union!20079 (regOne!40671 Regex!20079) (regTwo!40671 Regex!20079)) )
))
(declare-fun r!22341 () Regex!20079)

(declare-fun validRegex!10507 (Regex!20079) Bool)

(assert (=> b!7580022 (= res!3036710 (not (validRegex!10507 (regOne!40671 r!22341))))))

(declare-fun res!3036711 () Bool)

(declare-fun e!4511698 () Bool)

(assert (=> start!731884 (=> (not res!3036711) (not e!4511698))))

(assert (=> start!731884 (= res!3036711 (validRegex!10507 r!22341))))

(assert (=> start!731884 e!4511698))

(declare-fun e!4511701 () Bool)

(assert (=> start!731884 e!4511701))

(declare-fun e!4511700 () Bool)

(assert (=> start!731884 e!4511700))

(declare-fun b!7580023 () Bool)

(declare-fun tp_is_empty!50513 () Bool)

(assert (=> b!7580023 (= e!4511701 tp_is_empty!50513)))

(declare-fun b!7580024 () Bool)

(declare-fun res!3036712 () Bool)

(assert (=> b!7580024 (=> (not res!3036712) (not e!4511698))))

(declare-fun lostCause!1855 (Regex!20079) Bool)

(assert (=> b!7580024 (= res!3036712 (lostCause!1855 r!22341))))

(declare-fun b!7580025 () Bool)

(assert (=> b!7580025 (= e!4511698 (not e!4511699))))

(declare-fun res!3036708 () Bool)

(assert (=> b!7580025 (=> res!3036708 e!4511699)))

(get-info :version)

(assert (=> b!7580025 (= res!3036708 (or ((_ is EmptyLang!20079) r!22341) ((_ is EmptyExpr!20079) r!22341) ((_ is ElementMatch!20079) r!22341) (not ((_ is Union!20079) r!22341))))))

(declare-datatypes ((List!72962 0))(
  ( (Nil!72838) (Cons!72838 (h!79286 C!40484) (t!387697 List!72962)) )
))
(declare-fun s!13436 () List!72962)

(declare-fun matchR!9671 (Regex!20079 List!72962) Bool)

(declare-fun matchRSpec!4392 (Regex!20079 List!72962) Bool)

(assert (=> b!7580025 (= (matchR!9671 r!22341 s!13436) (matchRSpec!4392 r!22341 s!13436))))

(declare-datatypes ((Unit!167114 0))(
  ( (Unit!167115) )
))
(declare-fun lt!2652544 () Unit!167114)

(declare-fun mainMatchTheorem!4386 (Regex!20079 List!72962) Unit!167114)

(assert (=> b!7580025 (= lt!2652544 (mainMatchTheorem!4386 r!22341 s!13436))))

(declare-fun b!7580026 () Bool)

(declare-fun tp!2208925 () Bool)

(declare-fun tp!2208926 () Bool)

(assert (=> b!7580026 (= e!4511701 (and tp!2208925 tp!2208926))))

(declare-fun b!7580027 () Bool)

(assert (=> b!7580027 (= e!4511699 (lostCause!1855 (regOne!40671 r!22341)))))

(declare-fun b!7580028 () Bool)

(declare-fun tp!2208924 () Bool)

(assert (=> b!7580028 (= e!4511700 (and tp_is_empty!50513 tp!2208924))))

(declare-fun b!7580029 () Bool)

(declare-fun tp!2208927 () Bool)

(declare-fun tp!2208928 () Bool)

(assert (=> b!7580029 (= e!4511701 (and tp!2208927 tp!2208928))))

(declare-fun b!7580030 () Bool)

(declare-fun tp!2208929 () Bool)

(assert (=> b!7580030 (= e!4511701 tp!2208929)))

(declare-fun b!7580031 () Bool)

(declare-fun res!3036709 () Bool)

(assert (=> b!7580031 (=> (not res!3036709) (not e!4511698))))

(declare-fun isEmpty!41509 (List!72962) Bool)

(assert (=> b!7580031 (= res!3036709 (not (isEmpty!41509 s!13436)))))

(assert (= (and start!731884 res!3036711) b!7580024))

(assert (= (and b!7580024 res!3036712) b!7580031))

(assert (= (and b!7580031 res!3036709) b!7580025))

(assert (= (and b!7580025 (not res!3036708)) b!7580022))

(assert (= (and b!7580022 (not res!3036710)) b!7580027))

(assert (= (and start!731884 ((_ is ElementMatch!20079) r!22341)) b!7580023))

(assert (= (and start!731884 ((_ is Concat!28924) r!22341)) b!7580026))

(assert (= (and start!731884 ((_ is Star!20079) r!22341)) b!7580030))

(assert (= (and start!731884 ((_ is Union!20079) r!22341)) b!7580029))

(assert (= (and start!731884 ((_ is Cons!72838) s!13436)) b!7580028))

(declare-fun m!8135506 () Bool)

(assert (=> start!731884 m!8135506))

(declare-fun m!8135508 () Bool)

(assert (=> b!7580031 m!8135508))

(declare-fun m!8135510 () Bool)

(assert (=> b!7580022 m!8135510))

(declare-fun m!8135512 () Bool)

(assert (=> b!7580027 m!8135512))

(declare-fun m!8135514 () Bool)

(assert (=> b!7580025 m!8135514))

(declare-fun m!8135516 () Bool)

(assert (=> b!7580025 m!8135516))

(declare-fun m!8135518 () Bool)

(assert (=> b!7580025 m!8135518))

(declare-fun m!8135520 () Bool)

(assert (=> b!7580024 m!8135520))

(check-sat (not b!7580031) (not b!7580024) (not b!7580027) tp_is_empty!50513 (not b!7580026) (not b!7580030) (not b!7580022) (not start!731884) (not b!7580028) (not b!7580029) (not b!7580025))
(check-sat)
(get-model)

(declare-fun d!2318315 () Bool)

(declare-fun lostCauseFct!508 (Regex!20079) Bool)

(assert (=> d!2318315 (= (lostCause!1855 r!22341) (lostCauseFct!508 r!22341))))

(declare-fun bs!1940997 () Bool)

(assert (= bs!1940997 d!2318315))

(declare-fun m!8135522 () Bool)

(assert (=> bs!1940997 m!8135522))

(assert (=> b!7580024 d!2318315))

(declare-fun b!7580088 () Bool)

(declare-fun e!4511730 () Bool)

(declare-fun nullable!8772 (Regex!20079) Bool)

(assert (=> b!7580088 (= e!4511730 (nullable!8772 r!22341))))

(declare-fun b!7580089 () Bool)

(declare-fun res!3036752 () Bool)

(declare-fun e!4511733 () Bool)

(assert (=> b!7580089 (=> (not res!3036752) (not e!4511733))))

(declare-fun call!694887 () Bool)

(assert (=> b!7580089 (= res!3036752 (not call!694887))))

(declare-fun bm!694882 () Bool)

(assert (=> bm!694882 (= call!694887 (isEmpty!41509 s!13436))))

(declare-fun b!7580090 () Bool)

(declare-fun res!3036749 () Bool)

(assert (=> b!7580090 (=> (not res!3036749) (not e!4511733))))

(declare-fun tail!15139 (List!72962) List!72962)

(assert (=> b!7580090 (= res!3036749 (isEmpty!41509 (tail!15139 s!13436)))))

(declare-fun b!7580091 () Bool)

(declare-fun e!4511732 () Bool)

(declare-fun e!4511736 () Bool)

(assert (=> b!7580091 (= e!4511732 e!4511736)))

(declare-fun res!3036747 () Bool)

(assert (=> b!7580091 (=> (not res!3036747) (not e!4511736))))

(declare-fun lt!2652549 () Bool)

(assert (=> b!7580091 (= res!3036747 (not lt!2652549))))

(declare-fun b!7580092 () Bool)

(declare-fun e!4511735 () Bool)

(assert (=> b!7580092 (= e!4511735 (= lt!2652549 call!694887))))

(declare-fun b!7580093 () Bool)

(declare-fun res!3036751 () Bool)

(assert (=> b!7580093 (=> res!3036751 e!4511732)))

(assert (=> b!7580093 (= res!3036751 (not ((_ is ElementMatch!20079) r!22341)))))

(declare-fun e!4511734 () Bool)

(assert (=> b!7580093 (= e!4511734 e!4511732)))

(declare-fun b!7580094 () Bool)

(declare-fun derivativeStep!5799 (Regex!20079 C!40484) Regex!20079)

(declare-fun head!15599 (List!72962) C!40484)

(assert (=> b!7580094 (= e!4511730 (matchR!9671 (derivativeStep!5799 r!22341 (head!15599 s!13436)) (tail!15139 s!13436)))))

(declare-fun b!7580095 () Bool)

(assert (=> b!7580095 (= e!4511735 e!4511734)))

(declare-fun c!1398158 () Bool)

(assert (=> b!7580095 (= c!1398158 ((_ is EmptyLang!20079) r!22341))))

(declare-fun b!7580097 () Bool)

(declare-fun e!4511731 () Bool)

(assert (=> b!7580097 (= e!4511731 (not (= (head!15599 s!13436) (c!1398144 r!22341))))))

(declare-fun b!7580098 () Bool)

(assert (=> b!7580098 (= e!4511736 e!4511731)))

(declare-fun res!3036750 () Bool)

(assert (=> b!7580098 (=> res!3036750 e!4511731)))

(assert (=> b!7580098 (= res!3036750 call!694887)))

(declare-fun b!7580099 () Bool)

(assert (=> b!7580099 (= e!4511733 (= (head!15599 s!13436) (c!1398144 r!22341)))))

(declare-fun b!7580100 () Bool)

(declare-fun res!3036746 () Bool)

(assert (=> b!7580100 (=> res!3036746 e!4511731)))

(assert (=> b!7580100 (= res!3036746 (not (isEmpty!41509 (tail!15139 s!13436))))))

(declare-fun b!7580101 () Bool)

(assert (=> b!7580101 (= e!4511734 (not lt!2652549))))

(declare-fun b!7580096 () Bool)

(declare-fun res!3036745 () Bool)

(assert (=> b!7580096 (=> res!3036745 e!4511732)))

(assert (=> b!7580096 (= res!3036745 e!4511733)))

(declare-fun res!3036748 () Bool)

(assert (=> b!7580096 (=> (not res!3036748) (not e!4511733))))

(assert (=> b!7580096 (= res!3036748 lt!2652549)))

(declare-fun d!2318319 () Bool)

(assert (=> d!2318319 e!4511735))

(declare-fun c!1398159 () Bool)

(assert (=> d!2318319 (= c!1398159 ((_ is EmptyExpr!20079) r!22341))))

(assert (=> d!2318319 (= lt!2652549 e!4511730)))

(declare-fun c!1398157 () Bool)

(assert (=> d!2318319 (= c!1398157 (isEmpty!41509 s!13436))))

(assert (=> d!2318319 (validRegex!10507 r!22341)))

(assert (=> d!2318319 (= (matchR!9671 r!22341 s!13436) lt!2652549)))

(assert (= (and d!2318319 c!1398157) b!7580088))

(assert (= (and d!2318319 (not c!1398157)) b!7580094))

(assert (= (and d!2318319 c!1398159) b!7580092))

(assert (= (and d!2318319 (not c!1398159)) b!7580095))

(assert (= (and b!7580095 c!1398158) b!7580101))

(assert (= (and b!7580095 (not c!1398158)) b!7580093))

(assert (= (and b!7580093 (not res!3036751)) b!7580096))

(assert (= (and b!7580096 res!3036748) b!7580089))

(assert (= (and b!7580089 res!3036752) b!7580090))

(assert (= (and b!7580090 res!3036749) b!7580099))

(assert (= (and b!7580096 (not res!3036745)) b!7580091))

(assert (= (and b!7580091 res!3036747) b!7580098))

(assert (= (and b!7580098 (not res!3036750)) b!7580100))

(assert (= (and b!7580100 (not res!3036746)) b!7580097))

(assert (= (or b!7580092 b!7580089 b!7580098) bm!694882))

(declare-fun m!8135526 () Bool)

(assert (=> b!7580090 m!8135526))

(assert (=> b!7580090 m!8135526))

(declare-fun m!8135528 () Bool)

(assert (=> b!7580090 m!8135528))

(assert (=> bm!694882 m!8135508))

(declare-fun m!8135530 () Bool)

(assert (=> b!7580094 m!8135530))

(assert (=> b!7580094 m!8135530))

(declare-fun m!8135534 () Bool)

(assert (=> b!7580094 m!8135534))

(assert (=> b!7580094 m!8135526))

(assert (=> b!7580094 m!8135534))

(assert (=> b!7580094 m!8135526))

(declare-fun m!8135540 () Bool)

(assert (=> b!7580094 m!8135540))

(assert (=> b!7580097 m!8135530))

(declare-fun m!8135544 () Bool)

(assert (=> b!7580088 m!8135544))

(assert (=> b!7580100 m!8135526))

(assert (=> b!7580100 m!8135526))

(assert (=> b!7580100 m!8135528))

(assert (=> b!7580099 m!8135530))

(assert (=> d!2318319 m!8135508))

(assert (=> d!2318319 m!8135506))

(assert (=> b!7580025 d!2318319))

(declare-fun b!7580274 () Bool)

(assert (=> b!7580274 true))

(assert (=> b!7580274 true))

(declare-fun bs!1941002 () Bool)

(declare-fun b!7580269 () Bool)

(assert (= bs!1941002 (and b!7580269 b!7580274)))

(declare-fun lambda!466933 () Int)

(declare-fun lambda!466932 () Int)

(assert (=> bs!1941002 (not (= lambda!466933 lambda!466932))))

(assert (=> b!7580269 true))

(assert (=> b!7580269 true))

(declare-fun b!7580266 () Bool)

(declare-fun c!1398191 () Bool)

(assert (=> b!7580266 (= c!1398191 ((_ is Union!20079) r!22341))))

(declare-fun e!4511826 () Bool)

(declare-fun e!4511830 () Bool)

(assert (=> b!7580266 (= e!4511826 e!4511830)))

(declare-fun b!7580267 () Bool)

(assert (=> b!7580267 (= e!4511826 (= s!13436 (Cons!72838 (c!1398144 r!22341) Nil!72838)))))

(declare-fun b!7580268 () Bool)

(declare-fun res!3036816 () Bool)

(declare-fun e!4511827 () Bool)

(assert (=> b!7580268 (=> res!3036816 e!4511827)))

(declare-fun call!694911 () Bool)

(assert (=> b!7580268 (= res!3036816 call!694911)))

(declare-fun e!4511825 () Bool)

(assert (=> b!7580268 (= e!4511825 e!4511827)))

(declare-fun b!7580270 () Bool)

(declare-fun c!1398192 () Bool)

(assert (=> b!7580270 (= c!1398192 ((_ is ElementMatch!20079) r!22341))))

(declare-fun e!4511829 () Bool)

(assert (=> b!7580270 (= e!4511829 e!4511826)))

(declare-fun bm!694906 () Bool)

(declare-fun call!694912 () Bool)

(declare-fun c!1398194 () Bool)

(declare-fun Exists!4313 (Int) Bool)

(assert (=> bm!694906 (= call!694912 (Exists!4313 (ite c!1398194 lambda!466932 lambda!466933)))))

(declare-fun b!7580271 () Bool)

(declare-fun e!4511828 () Bool)

(assert (=> b!7580271 (= e!4511830 e!4511828)))

(declare-fun res!3036818 () Bool)

(assert (=> b!7580271 (= res!3036818 (matchRSpec!4392 (regOne!40671 r!22341) s!13436))))

(assert (=> b!7580271 (=> res!3036818 e!4511828)))

(declare-fun b!7580272 () Bool)

(declare-fun e!4511831 () Bool)

(assert (=> b!7580272 (= e!4511831 call!694911)))

(declare-fun b!7580273 () Bool)

(assert (=> b!7580273 (= e!4511830 e!4511825)))

(assert (=> b!7580273 (= c!1398194 ((_ is Star!20079) r!22341))))

(declare-fun bm!694907 () Bool)

(assert (=> bm!694907 (= call!694911 (isEmpty!41509 s!13436))))

(assert (=> b!7580274 (= e!4511827 call!694912)))

(declare-fun d!2318323 () Bool)

(declare-fun c!1398193 () Bool)

(assert (=> d!2318323 (= c!1398193 ((_ is EmptyExpr!20079) r!22341))))

(assert (=> d!2318323 (= (matchRSpec!4392 r!22341 s!13436) e!4511831)))

(assert (=> b!7580269 (= e!4511825 call!694912)))

(declare-fun b!7580275 () Bool)

(assert (=> b!7580275 (= e!4511831 e!4511829)))

(declare-fun res!3036817 () Bool)

(assert (=> b!7580275 (= res!3036817 (not ((_ is EmptyLang!20079) r!22341)))))

(assert (=> b!7580275 (=> (not res!3036817) (not e!4511829))))

(declare-fun b!7580276 () Bool)

(assert (=> b!7580276 (= e!4511828 (matchRSpec!4392 (regTwo!40671 r!22341) s!13436))))

(assert (= (and d!2318323 c!1398193) b!7580272))

(assert (= (and d!2318323 (not c!1398193)) b!7580275))

(assert (= (and b!7580275 res!3036817) b!7580270))

(assert (= (and b!7580270 c!1398192) b!7580267))

(assert (= (and b!7580270 (not c!1398192)) b!7580266))

(assert (= (and b!7580266 c!1398191) b!7580271))

(assert (= (and b!7580266 (not c!1398191)) b!7580273))

(assert (= (and b!7580271 (not res!3036818)) b!7580276))

(assert (= (and b!7580273 c!1398194) b!7580268))

(assert (= (and b!7580273 (not c!1398194)) b!7580269))

(assert (= (and b!7580268 (not res!3036816)) b!7580274))

(assert (= (or b!7580274 b!7580269) bm!694906))

(assert (= (or b!7580272 b!7580268) bm!694907))

(declare-fun m!8135572 () Bool)

(assert (=> bm!694906 m!8135572))

(declare-fun m!8135574 () Bool)

(assert (=> b!7580271 m!8135574))

(assert (=> bm!694907 m!8135508))

(declare-fun m!8135576 () Bool)

(assert (=> b!7580276 m!8135576))

(assert (=> b!7580025 d!2318323))

(declare-fun d!2318337 () Bool)

(assert (=> d!2318337 (= (matchR!9671 r!22341 s!13436) (matchRSpec!4392 r!22341 s!13436))))

(declare-fun lt!2652556 () Unit!167114)

(declare-fun choose!58607 (Regex!20079 List!72962) Unit!167114)

(assert (=> d!2318337 (= lt!2652556 (choose!58607 r!22341 s!13436))))

(assert (=> d!2318337 (validRegex!10507 r!22341)))

(assert (=> d!2318337 (= (mainMatchTheorem!4386 r!22341 s!13436) lt!2652556)))

(declare-fun bs!1941003 () Bool)

(assert (= bs!1941003 d!2318337))

(assert (=> bs!1941003 m!8135514))

(assert (=> bs!1941003 m!8135516))

(declare-fun m!8135578 () Bool)

(assert (=> bs!1941003 m!8135578))

(assert (=> bs!1941003 m!8135506))

(assert (=> b!7580025 d!2318337))

(declare-fun d!2318339 () Bool)

(assert (=> d!2318339 (= (isEmpty!41509 s!13436) ((_ is Nil!72838) s!13436))))

(assert (=> b!7580031 d!2318339))

(declare-fun b!7580299 () Bool)

(declare-fun e!4511851 () Bool)

(declare-fun e!4511848 () Bool)

(assert (=> b!7580299 (= e!4511851 e!4511848)))

(declare-fun res!3036833 () Bool)

(assert (=> b!7580299 (= res!3036833 (not (nullable!8772 (reg!20408 r!22341))))))

(assert (=> b!7580299 (=> (not res!3036833) (not e!4511848))))

(declare-fun b!7580300 () Bool)

(declare-fun call!694921 () Bool)

(assert (=> b!7580300 (= e!4511848 call!694921)))

(declare-fun c!1398199 () Bool)

(declare-fun bm!694914 () Bool)

(declare-fun c!1398200 () Bool)

(assert (=> bm!694914 (= call!694921 (validRegex!10507 (ite c!1398199 (reg!20408 r!22341) (ite c!1398200 (regOne!40671 r!22341) (regTwo!40670 r!22341)))))))

(declare-fun d!2318341 () Bool)

(declare-fun res!3036829 () Bool)

(declare-fun e!4511847 () Bool)

(assert (=> d!2318341 (=> res!3036829 e!4511847)))

(assert (=> d!2318341 (= res!3036829 ((_ is ElementMatch!20079) r!22341))))

(assert (=> d!2318341 (= (validRegex!10507 r!22341) e!4511847)))

(declare-fun b!7580301 () Bool)

(declare-fun res!3036830 () Bool)

(declare-fun e!4511852 () Bool)

(assert (=> b!7580301 (=> res!3036830 e!4511852)))

(assert (=> b!7580301 (= res!3036830 (not ((_ is Concat!28924) r!22341)))))

(declare-fun e!4511850 () Bool)

(assert (=> b!7580301 (= e!4511850 e!4511852)))

(declare-fun b!7580302 () Bool)

(declare-fun e!4511846 () Bool)

(declare-fun call!694919 () Bool)

(assert (=> b!7580302 (= e!4511846 call!694919)))

(declare-fun b!7580303 () Bool)

(assert (=> b!7580303 (= e!4511847 e!4511851)))

(assert (=> b!7580303 (= c!1398199 ((_ is Star!20079) r!22341))))

(declare-fun bm!694915 () Bool)

(assert (=> bm!694915 (= call!694919 call!694921)))

(declare-fun b!7580304 () Bool)

(assert (=> b!7580304 (= e!4511851 e!4511850)))

(assert (=> b!7580304 (= c!1398200 ((_ is Union!20079) r!22341))))

(declare-fun bm!694916 () Bool)

(declare-fun call!694920 () Bool)

(assert (=> bm!694916 (= call!694920 (validRegex!10507 (ite c!1398200 (regTwo!40671 r!22341) (regOne!40670 r!22341))))))

(declare-fun b!7580305 () Bool)

(declare-fun res!3036831 () Bool)

(declare-fun e!4511849 () Bool)

(assert (=> b!7580305 (=> (not res!3036831) (not e!4511849))))

(assert (=> b!7580305 (= res!3036831 call!694919)))

(assert (=> b!7580305 (= e!4511850 e!4511849)))

(declare-fun b!7580306 () Bool)

(assert (=> b!7580306 (= e!4511852 e!4511846)))

(declare-fun res!3036832 () Bool)

(assert (=> b!7580306 (=> (not res!3036832) (not e!4511846))))

(assert (=> b!7580306 (= res!3036832 call!694920)))

(declare-fun b!7580307 () Bool)

(assert (=> b!7580307 (= e!4511849 call!694920)))

(assert (= (and d!2318341 (not res!3036829)) b!7580303))

(assert (= (and b!7580303 c!1398199) b!7580299))

(assert (= (and b!7580303 (not c!1398199)) b!7580304))

(assert (= (and b!7580299 res!3036833) b!7580300))

(assert (= (and b!7580304 c!1398200) b!7580305))

(assert (= (and b!7580304 (not c!1398200)) b!7580301))

(assert (= (and b!7580305 res!3036831) b!7580307))

(assert (= (and b!7580301 (not res!3036830)) b!7580306))

(assert (= (and b!7580306 res!3036832) b!7580302))

(assert (= (or b!7580307 b!7580306) bm!694916))

(assert (= (or b!7580305 b!7580302) bm!694915))

(assert (= (or b!7580300 bm!694915) bm!694914))

(declare-fun m!8135580 () Bool)

(assert (=> b!7580299 m!8135580))

(declare-fun m!8135582 () Bool)

(assert (=> bm!694914 m!8135582))

(declare-fun m!8135584 () Bool)

(assert (=> bm!694916 m!8135584))

(assert (=> start!731884 d!2318341))

(declare-fun d!2318343 () Bool)

(assert (=> d!2318343 (= (lostCause!1855 (regOne!40671 r!22341)) (lostCauseFct!508 (regOne!40671 r!22341)))))

(declare-fun bs!1941004 () Bool)

(assert (= bs!1941004 d!2318343))

(declare-fun m!8135586 () Bool)

(assert (=> bs!1941004 m!8135586))

(assert (=> b!7580027 d!2318343))

(declare-fun b!7580308 () Bool)

(declare-fun e!4511858 () Bool)

(declare-fun e!4511855 () Bool)

(assert (=> b!7580308 (= e!4511858 e!4511855)))

(declare-fun res!3036838 () Bool)

(assert (=> b!7580308 (= res!3036838 (not (nullable!8772 (reg!20408 (regOne!40671 r!22341)))))))

(assert (=> b!7580308 (=> (not res!3036838) (not e!4511855))))

(declare-fun b!7580309 () Bool)

(declare-fun call!694924 () Bool)

(assert (=> b!7580309 (= e!4511855 call!694924)))

(declare-fun c!1398201 () Bool)

(declare-fun bm!694917 () Bool)

(declare-fun c!1398202 () Bool)

(assert (=> bm!694917 (= call!694924 (validRegex!10507 (ite c!1398201 (reg!20408 (regOne!40671 r!22341)) (ite c!1398202 (regOne!40671 (regOne!40671 r!22341)) (regTwo!40670 (regOne!40671 r!22341))))))))

(declare-fun d!2318345 () Bool)

(declare-fun res!3036834 () Bool)

(declare-fun e!4511854 () Bool)

(assert (=> d!2318345 (=> res!3036834 e!4511854)))

(assert (=> d!2318345 (= res!3036834 ((_ is ElementMatch!20079) (regOne!40671 r!22341)))))

(assert (=> d!2318345 (= (validRegex!10507 (regOne!40671 r!22341)) e!4511854)))

(declare-fun b!7580310 () Bool)

(declare-fun res!3036835 () Bool)

(declare-fun e!4511859 () Bool)

(assert (=> b!7580310 (=> res!3036835 e!4511859)))

(assert (=> b!7580310 (= res!3036835 (not ((_ is Concat!28924) (regOne!40671 r!22341))))))

(declare-fun e!4511857 () Bool)

(assert (=> b!7580310 (= e!4511857 e!4511859)))

(declare-fun b!7580311 () Bool)

(declare-fun e!4511853 () Bool)

(declare-fun call!694922 () Bool)

(assert (=> b!7580311 (= e!4511853 call!694922)))

(declare-fun b!7580312 () Bool)

(assert (=> b!7580312 (= e!4511854 e!4511858)))

(assert (=> b!7580312 (= c!1398201 ((_ is Star!20079) (regOne!40671 r!22341)))))

(declare-fun bm!694918 () Bool)

(assert (=> bm!694918 (= call!694922 call!694924)))

(declare-fun b!7580313 () Bool)

(assert (=> b!7580313 (= e!4511858 e!4511857)))

(assert (=> b!7580313 (= c!1398202 ((_ is Union!20079) (regOne!40671 r!22341)))))

(declare-fun bm!694919 () Bool)

(declare-fun call!694923 () Bool)

(assert (=> bm!694919 (= call!694923 (validRegex!10507 (ite c!1398202 (regTwo!40671 (regOne!40671 r!22341)) (regOne!40670 (regOne!40671 r!22341)))))))

(declare-fun b!7580314 () Bool)

(declare-fun res!3036836 () Bool)

(declare-fun e!4511856 () Bool)

(assert (=> b!7580314 (=> (not res!3036836) (not e!4511856))))

(assert (=> b!7580314 (= res!3036836 call!694922)))

(assert (=> b!7580314 (= e!4511857 e!4511856)))

(declare-fun b!7580315 () Bool)

(assert (=> b!7580315 (= e!4511859 e!4511853)))

(declare-fun res!3036837 () Bool)

(assert (=> b!7580315 (=> (not res!3036837) (not e!4511853))))

(assert (=> b!7580315 (= res!3036837 call!694923)))

(declare-fun b!7580316 () Bool)

(assert (=> b!7580316 (= e!4511856 call!694923)))

(assert (= (and d!2318345 (not res!3036834)) b!7580312))

(assert (= (and b!7580312 c!1398201) b!7580308))

(assert (= (and b!7580312 (not c!1398201)) b!7580313))

(assert (= (and b!7580308 res!3036838) b!7580309))

(assert (= (and b!7580313 c!1398202) b!7580314))

(assert (= (and b!7580313 (not c!1398202)) b!7580310))

(assert (= (and b!7580314 res!3036836) b!7580316))

(assert (= (and b!7580310 (not res!3036835)) b!7580315))

(assert (= (and b!7580315 res!3036837) b!7580311))

(assert (= (or b!7580316 b!7580315) bm!694919))

(assert (= (or b!7580314 b!7580311) bm!694918))

(assert (= (or b!7580309 bm!694918) bm!694917))

(declare-fun m!8135588 () Bool)

(assert (=> b!7580308 m!8135588))

(declare-fun m!8135590 () Bool)

(assert (=> bm!694917 m!8135590))

(declare-fun m!8135592 () Bool)

(assert (=> bm!694919 m!8135592))

(assert (=> b!7580022 d!2318345))

(declare-fun b!7580329 () Bool)

(declare-fun e!4511862 () Bool)

(declare-fun tp!2208978 () Bool)

(assert (=> b!7580329 (= e!4511862 tp!2208978)))

(declare-fun b!7580328 () Bool)

(declare-fun tp!2208982 () Bool)

(declare-fun tp!2208979 () Bool)

(assert (=> b!7580328 (= e!4511862 (and tp!2208982 tp!2208979))))

(assert (=> b!7580029 (= tp!2208927 e!4511862)))

(declare-fun b!7580330 () Bool)

(declare-fun tp!2208980 () Bool)

(declare-fun tp!2208981 () Bool)

(assert (=> b!7580330 (= e!4511862 (and tp!2208980 tp!2208981))))

(declare-fun b!7580327 () Bool)

(assert (=> b!7580327 (= e!4511862 tp_is_empty!50513)))

(assert (= (and b!7580029 ((_ is ElementMatch!20079) (regOne!40671 r!22341))) b!7580327))

(assert (= (and b!7580029 ((_ is Concat!28924) (regOne!40671 r!22341))) b!7580328))

(assert (= (and b!7580029 ((_ is Star!20079) (regOne!40671 r!22341))) b!7580329))

(assert (= (and b!7580029 ((_ is Union!20079) (regOne!40671 r!22341))) b!7580330))

(declare-fun b!7580333 () Bool)

(declare-fun e!4511863 () Bool)

(declare-fun tp!2208983 () Bool)

(assert (=> b!7580333 (= e!4511863 tp!2208983)))

(declare-fun b!7580332 () Bool)

(declare-fun tp!2208987 () Bool)

(declare-fun tp!2208984 () Bool)

(assert (=> b!7580332 (= e!4511863 (and tp!2208987 tp!2208984))))

(assert (=> b!7580029 (= tp!2208928 e!4511863)))

(declare-fun b!7580334 () Bool)

(declare-fun tp!2208985 () Bool)

(declare-fun tp!2208986 () Bool)

(assert (=> b!7580334 (= e!4511863 (and tp!2208985 tp!2208986))))

(declare-fun b!7580331 () Bool)

(assert (=> b!7580331 (= e!4511863 tp_is_empty!50513)))

(assert (= (and b!7580029 ((_ is ElementMatch!20079) (regTwo!40671 r!22341))) b!7580331))

(assert (= (and b!7580029 ((_ is Concat!28924) (regTwo!40671 r!22341))) b!7580332))

(assert (= (and b!7580029 ((_ is Star!20079) (regTwo!40671 r!22341))) b!7580333))

(assert (= (and b!7580029 ((_ is Union!20079) (regTwo!40671 r!22341))) b!7580334))

(declare-fun b!7580337 () Bool)

(declare-fun e!4511864 () Bool)

(declare-fun tp!2208988 () Bool)

(assert (=> b!7580337 (= e!4511864 tp!2208988)))

(declare-fun b!7580336 () Bool)

(declare-fun tp!2208992 () Bool)

(declare-fun tp!2208989 () Bool)

(assert (=> b!7580336 (= e!4511864 (and tp!2208992 tp!2208989))))

(assert (=> b!7580030 (= tp!2208929 e!4511864)))

(declare-fun b!7580338 () Bool)

(declare-fun tp!2208990 () Bool)

(declare-fun tp!2208991 () Bool)

(assert (=> b!7580338 (= e!4511864 (and tp!2208990 tp!2208991))))

(declare-fun b!7580335 () Bool)

(assert (=> b!7580335 (= e!4511864 tp_is_empty!50513)))

(assert (= (and b!7580030 ((_ is ElementMatch!20079) (reg!20408 r!22341))) b!7580335))

(assert (= (and b!7580030 ((_ is Concat!28924) (reg!20408 r!22341))) b!7580336))

(assert (= (and b!7580030 ((_ is Star!20079) (reg!20408 r!22341))) b!7580337))

(assert (= (and b!7580030 ((_ is Union!20079) (reg!20408 r!22341))) b!7580338))

(declare-fun b!7580341 () Bool)

(declare-fun e!4511865 () Bool)

(declare-fun tp!2208993 () Bool)

(assert (=> b!7580341 (= e!4511865 tp!2208993)))

(declare-fun b!7580340 () Bool)

(declare-fun tp!2208997 () Bool)

(declare-fun tp!2208994 () Bool)

(assert (=> b!7580340 (= e!4511865 (and tp!2208997 tp!2208994))))

(assert (=> b!7580026 (= tp!2208925 e!4511865)))

(declare-fun b!7580342 () Bool)

(declare-fun tp!2208995 () Bool)

(declare-fun tp!2208996 () Bool)

(assert (=> b!7580342 (= e!4511865 (and tp!2208995 tp!2208996))))

(declare-fun b!7580339 () Bool)

(assert (=> b!7580339 (= e!4511865 tp_is_empty!50513)))

(assert (= (and b!7580026 ((_ is ElementMatch!20079) (regOne!40670 r!22341))) b!7580339))

(assert (= (and b!7580026 ((_ is Concat!28924) (regOne!40670 r!22341))) b!7580340))

(assert (= (and b!7580026 ((_ is Star!20079) (regOne!40670 r!22341))) b!7580341))

(assert (= (and b!7580026 ((_ is Union!20079) (regOne!40670 r!22341))) b!7580342))

(declare-fun b!7580345 () Bool)

(declare-fun e!4511866 () Bool)

(declare-fun tp!2208998 () Bool)

(assert (=> b!7580345 (= e!4511866 tp!2208998)))

(declare-fun b!7580344 () Bool)

(declare-fun tp!2209002 () Bool)

(declare-fun tp!2208999 () Bool)

(assert (=> b!7580344 (= e!4511866 (and tp!2209002 tp!2208999))))

(assert (=> b!7580026 (= tp!2208926 e!4511866)))

(declare-fun b!7580346 () Bool)

(declare-fun tp!2209000 () Bool)

(declare-fun tp!2209001 () Bool)

(assert (=> b!7580346 (= e!4511866 (and tp!2209000 tp!2209001))))

(declare-fun b!7580343 () Bool)

(assert (=> b!7580343 (= e!4511866 tp_is_empty!50513)))

(assert (= (and b!7580026 ((_ is ElementMatch!20079) (regTwo!40670 r!22341))) b!7580343))

(assert (= (and b!7580026 ((_ is Concat!28924) (regTwo!40670 r!22341))) b!7580344))

(assert (= (and b!7580026 ((_ is Star!20079) (regTwo!40670 r!22341))) b!7580345))

(assert (= (and b!7580026 ((_ is Union!20079) (regTwo!40670 r!22341))) b!7580346))

(declare-fun b!7580351 () Bool)

(declare-fun e!4511869 () Bool)

(declare-fun tp!2209005 () Bool)

(assert (=> b!7580351 (= e!4511869 (and tp_is_empty!50513 tp!2209005))))

(assert (=> b!7580028 (= tp!2208924 e!4511869)))

(assert (= (and b!7580028 ((_ is Cons!72838) (t!387697 s!13436))) b!7580351))

(check-sat (not b!7580099) (not b!7580351) tp_is_empty!50513 (not bm!694917) (not b!7580333) (not b!7580088) (not b!7580097) (not b!7580341) (not b!7580330) (not b!7580276) (not b!7580340) (not b!7580299) (not bm!694914) (not b!7580308) (not b!7580336) (not b!7580100) (not b!7580345) (not b!7580094) (not b!7580342) (not bm!694916) (not b!7580271) (not b!7580344) (not d!2318343) (not d!2318337) (not bm!694919) (not d!2318315) (not bm!694907) (not b!7580332) (not b!7580346) (not b!7580329) (not b!7580328) (not b!7580338) (not bm!694906) (not d!2318319) (not bm!694882) (not b!7580090) (not b!7580334) (not b!7580337))
(check-sat)
(get-model)

(declare-fun b!7580468 () Bool)

(declare-fun e!4511949 () Bool)

(declare-fun call!694959 () Bool)

(assert (=> b!7580468 (= e!4511949 call!694959)))

(declare-fun bm!694953 () Bool)

(declare-fun call!694958 () Bool)

(declare-fun c!1398239 () Bool)

(assert (=> bm!694953 (= call!694958 (lostCause!1855 (ite c!1398239 (regOne!40671 r!22341) (regOne!40670 r!22341))))))

(declare-fun b!7580469 () Bool)

(declare-fun e!4511951 () Bool)

(declare-fun e!4511946 () Bool)

(assert (=> b!7580469 (= e!4511951 e!4511946)))

(declare-fun res!3036884 () Bool)

(assert (=> b!7580469 (=> (not res!3036884) (not e!4511946))))

(assert (=> b!7580469 (= res!3036884 (and (not ((_ is ElementMatch!20079) r!22341)) (not ((_ is Star!20079) r!22341))))))

(declare-fun d!2318367 () Bool)

(declare-fun lt!2652563 () Bool)

(declare-datatypes ((Option!17297 0))(
  ( (None!17296) (Some!17296 (v!54431 List!72962)) )
))
(declare-fun isEmpty!41510 (Option!17297) Bool)

(declare-fun getLanguageWitness!1116 (Regex!20079) Option!17297)

(assert (=> d!2318367 (= lt!2652563 (isEmpty!41510 (getLanguageWitness!1116 r!22341)))))

(declare-fun e!4511948 () Bool)

(assert (=> d!2318367 (= lt!2652563 e!4511948)))

(declare-fun res!3036883 () Bool)

(assert (=> d!2318367 (=> (not res!3036883) (not e!4511948))))

(assert (=> d!2318367 (= res!3036883 (not ((_ is EmptyExpr!20079) r!22341)))))

(assert (=> d!2318367 (= (lostCauseFct!508 r!22341) lt!2652563)))

(declare-fun b!7580470 () Bool)

(declare-fun e!4511950 () Bool)

(assert (=> b!7580470 (= e!4511950 call!694959)))

(declare-fun b!7580471 () Bool)

(declare-fun e!4511947 () Bool)

(assert (=> b!7580471 (= e!4511947 e!4511950)))

(declare-fun res!3036886 () Bool)

(assert (=> b!7580471 (= res!3036886 call!694958)))

(assert (=> b!7580471 (=> (not res!3036886) (not e!4511950))))

(declare-fun b!7580472 () Bool)

(assert (=> b!7580472 (= e!4511948 e!4511951)))

(declare-fun res!3036885 () Bool)

(assert (=> b!7580472 (=> res!3036885 e!4511951)))

(assert (=> b!7580472 (= res!3036885 ((_ is EmptyLang!20079) r!22341))))

(declare-fun b!7580473 () Bool)

(assert (=> b!7580473 (= e!4511946 e!4511947)))

(assert (=> b!7580473 (= c!1398239 ((_ is Union!20079) r!22341))))

(declare-fun bm!694954 () Bool)

(assert (=> bm!694954 (= call!694959 (lostCause!1855 (ite c!1398239 (regTwo!40671 r!22341) (regTwo!40670 r!22341))))))

(declare-fun b!7580474 () Bool)

(assert (=> b!7580474 (= e!4511947 e!4511949)))

(declare-fun res!3036887 () Bool)

(assert (=> b!7580474 (= res!3036887 call!694958)))

(assert (=> b!7580474 (=> res!3036887 e!4511949)))

(assert (= (and d!2318367 res!3036883) b!7580472))

(assert (= (and b!7580472 (not res!3036885)) b!7580469))

(assert (= (and b!7580469 res!3036884) b!7580473))

(assert (= (and b!7580473 c!1398239) b!7580471))

(assert (= (and b!7580473 (not c!1398239)) b!7580474))

(assert (= (and b!7580471 res!3036886) b!7580470))

(assert (= (and b!7580474 (not res!3036887)) b!7580468))

(assert (= (or b!7580470 b!7580468) bm!694954))

(assert (= (or b!7580471 b!7580474) bm!694953))

(declare-fun m!8135656 () Bool)

(assert (=> bm!694953 m!8135656))

(declare-fun m!8135658 () Bool)

(assert (=> d!2318367 m!8135658))

(assert (=> d!2318367 m!8135658))

(declare-fun m!8135660 () Bool)

(assert (=> d!2318367 m!8135660))

(declare-fun m!8135662 () Bool)

(assert (=> bm!694954 m!8135662))

(assert (=> d!2318315 d!2318367))

(assert (=> bm!694907 d!2318339))

(declare-fun b!7580489 () Bool)

(declare-fun e!4511969 () Bool)

(declare-fun e!4511966 () Bool)

(assert (=> b!7580489 (= e!4511969 e!4511966)))

(declare-fun res!3036902 () Bool)

(assert (=> b!7580489 (= res!3036902 (not (nullable!8772 (reg!20408 (ite c!1398199 (reg!20408 r!22341) (ite c!1398200 (regOne!40671 r!22341) (regTwo!40670 r!22341)))))))))

(assert (=> b!7580489 (=> (not res!3036902) (not e!4511966))))

(declare-fun b!7580490 () Bool)

(declare-fun call!694962 () Bool)

(assert (=> b!7580490 (= e!4511966 call!694962)))

(declare-fun bm!694955 () Bool)

(declare-fun c!1398243 () Bool)

(declare-fun c!1398242 () Bool)

(assert (=> bm!694955 (= call!694962 (validRegex!10507 (ite c!1398242 (reg!20408 (ite c!1398199 (reg!20408 r!22341) (ite c!1398200 (regOne!40671 r!22341) (regTwo!40670 r!22341)))) (ite c!1398243 (regOne!40671 (ite c!1398199 (reg!20408 r!22341) (ite c!1398200 (regOne!40671 r!22341) (regTwo!40670 r!22341)))) (regTwo!40670 (ite c!1398199 (reg!20408 r!22341) (ite c!1398200 (regOne!40671 r!22341) (regTwo!40670 r!22341))))))))))

(declare-fun d!2318379 () Bool)

(declare-fun res!3036898 () Bool)

(declare-fun e!4511965 () Bool)

(assert (=> d!2318379 (=> res!3036898 e!4511965)))

(assert (=> d!2318379 (= res!3036898 ((_ is ElementMatch!20079) (ite c!1398199 (reg!20408 r!22341) (ite c!1398200 (regOne!40671 r!22341) (regTwo!40670 r!22341)))))))

(assert (=> d!2318379 (= (validRegex!10507 (ite c!1398199 (reg!20408 r!22341) (ite c!1398200 (regOne!40671 r!22341) (regTwo!40670 r!22341)))) e!4511965)))

(declare-fun b!7580491 () Bool)

(declare-fun res!3036899 () Bool)

(declare-fun e!4511970 () Bool)

(assert (=> b!7580491 (=> res!3036899 e!4511970)))

(assert (=> b!7580491 (= res!3036899 (not ((_ is Concat!28924) (ite c!1398199 (reg!20408 r!22341) (ite c!1398200 (regOne!40671 r!22341) (regTwo!40670 r!22341))))))))

(declare-fun e!4511968 () Bool)

(assert (=> b!7580491 (= e!4511968 e!4511970)))

(declare-fun b!7580492 () Bool)

(declare-fun e!4511964 () Bool)

(declare-fun call!694960 () Bool)

(assert (=> b!7580492 (= e!4511964 call!694960)))

(declare-fun b!7580493 () Bool)

(assert (=> b!7580493 (= e!4511965 e!4511969)))

(assert (=> b!7580493 (= c!1398242 ((_ is Star!20079) (ite c!1398199 (reg!20408 r!22341) (ite c!1398200 (regOne!40671 r!22341) (regTwo!40670 r!22341)))))))

(declare-fun bm!694956 () Bool)

(assert (=> bm!694956 (= call!694960 call!694962)))

(declare-fun b!7580494 () Bool)

(assert (=> b!7580494 (= e!4511969 e!4511968)))

(assert (=> b!7580494 (= c!1398243 ((_ is Union!20079) (ite c!1398199 (reg!20408 r!22341) (ite c!1398200 (regOne!40671 r!22341) (regTwo!40670 r!22341)))))))

(declare-fun call!694961 () Bool)

(declare-fun bm!694957 () Bool)

(assert (=> bm!694957 (= call!694961 (validRegex!10507 (ite c!1398243 (regTwo!40671 (ite c!1398199 (reg!20408 r!22341) (ite c!1398200 (regOne!40671 r!22341) (regTwo!40670 r!22341)))) (regOne!40670 (ite c!1398199 (reg!20408 r!22341) (ite c!1398200 (regOne!40671 r!22341) (regTwo!40670 r!22341)))))))))

(declare-fun b!7580495 () Bool)

(declare-fun res!3036900 () Bool)

(declare-fun e!4511967 () Bool)

(assert (=> b!7580495 (=> (not res!3036900) (not e!4511967))))

(assert (=> b!7580495 (= res!3036900 call!694960)))

(assert (=> b!7580495 (= e!4511968 e!4511967)))

(declare-fun b!7580496 () Bool)

(assert (=> b!7580496 (= e!4511970 e!4511964)))

(declare-fun res!3036901 () Bool)

(assert (=> b!7580496 (=> (not res!3036901) (not e!4511964))))

(assert (=> b!7580496 (= res!3036901 call!694961)))

(declare-fun b!7580497 () Bool)

(assert (=> b!7580497 (= e!4511967 call!694961)))

(assert (= (and d!2318379 (not res!3036898)) b!7580493))

(assert (= (and b!7580493 c!1398242) b!7580489))

(assert (= (and b!7580493 (not c!1398242)) b!7580494))

(assert (= (and b!7580489 res!3036902) b!7580490))

(assert (= (and b!7580494 c!1398243) b!7580495))

(assert (= (and b!7580494 (not c!1398243)) b!7580491))

(assert (= (and b!7580495 res!3036900) b!7580497))

(assert (= (and b!7580491 (not res!3036899)) b!7580496))

(assert (= (and b!7580496 res!3036901) b!7580492))

(assert (= (or b!7580497 b!7580496) bm!694957))

(assert (= (or b!7580495 b!7580492) bm!694956))

(assert (= (or b!7580490 bm!694956) bm!694955))

(declare-fun m!8135664 () Bool)

(assert (=> b!7580489 m!8135664))

(declare-fun m!8135666 () Bool)

(assert (=> bm!694955 m!8135666))

(declare-fun m!8135668 () Bool)

(assert (=> bm!694957 m!8135668))

(assert (=> bm!694914 d!2318379))

(declare-fun d!2318381 () Bool)

(assert (=> d!2318381 (= (head!15599 s!13436) (h!79286 s!13436))))

(assert (=> b!7580099 d!2318381))

(assert (=> bm!694882 d!2318339))

(declare-fun d!2318383 () Bool)

(assert (=> d!2318383 (= (isEmpty!41509 (tail!15139 s!13436)) ((_ is Nil!72838) (tail!15139 s!13436)))))

(assert (=> b!7580100 d!2318383))

(declare-fun d!2318385 () Bool)

(assert (=> d!2318385 (= (tail!15139 s!13436) (t!387697 s!13436))))

(assert (=> b!7580100 d!2318385))

(declare-fun bs!1941022 () Bool)

(declare-fun b!7580506 () Bool)

(assert (= bs!1941022 (and b!7580506 b!7580274)))

(declare-fun lambda!466938 () Int)

(assert (=> bs!1941022 (= (and (= (reg!20408 (regTwo!40671 r!22341)) (reg!20408 r!22341)) (= (regTwo!40671 r!22341) r!22341)) (= lambda!466938 lambda!466932))))

(declare-fun bs!1941023 () Bool)

(assert (= bs!1941023 (and b!7580506 b!7580269)))

(assert (=> bs!1941023 (not (= lambda!466938 lambda!466933))))

(assert (=> b!7580506 true))

(assert (=> b!7580506 true))

(declare-fun bs!1941024 () Bool)

(declare-fun b!7580501 () Bool)

(assert (= bs!1941024 (and b!7580501 b!7580274)))

(declare-fun lambda!466939 () Int)

(assert (=> bs!1941024 (not (= lambda!466939 lambda!466932))))

(declare-fun bs!1941025 () Bool)

(assert (= bs!1941025 (and b!7580501 b!7580269)))

(assert (=> bs!1941025 (= (and (= (regOne!40670 (regTwo!40671 r!22341)) (regOne!40670 r!22341)) (= (regTwo!40670 (regTwo!40671 r!22341)) (regTwo!40670 r!22341))) (= lambda!466939 lambda!466933))))

(declare-fun bs!1941027 () Bool)

(assert (= bs!1941027 (and b!7580501 b!7580506)))

(assert (=> bs!1941027 (not (= lambda!466939 lambda!466938))))

(assert (=> b!7580501 true))

(assert (=> b!7580501 true))

(declare-fun b!7580498 () Bool)

(declare-fun c!1398244 () Bool)

(assert (=> b!7580498 (= c!1398244 ((_ is Union!20079) (regTwo!40671 r!22341)))))

(declare-fun e!4511972 () Bool)

(declare-fun e!4511976 () Bool)

(assert (=> b!7580498 (= e!4511972 e!4511976)))

(declare-fun b!7580499 () Bool)

(assert (=> b!7580499 (= e!4511972 (= s!13436 (Cons!72838 (c!1398144 (regTwo!40671 r!22341)) Nil!72838)))))

(declare-fun b!7580500 () Bool)

(declare-fun res!3036903 () Bool)

(declare-fun e!4511973 () Bool)

(assert (=> b!7580500 (=> res!3036903 e!4511973)))

(declare-fun call!694967 () Bool)

(assert (=> b!7580500 (= res!3036903 call!694967)))

(declare-fun e!4511971 () Bool)

(assert (=> b!7580500 (= e!4511971 e!4511973)))

(declare-fun b!7580502 () Bool)

(declare-fun c!1398245 () Bool)

(assert (=> b!7580502 (= c!1398245 ((_ is ElementMatch!20079) (regTwo!40671 r!22341)))))

(declare-fun e!4511975 () Bool)

(assert (=> b!7580502 (= e!4511975 e!4511972)))

(declare-fun call!694968 () Bool)

(declare-fun c!1398247 () Bool)

(declare-fun bm!694962 () Bool)

(assert (=> bm!694962 (= call!694968 (Exists!4313 (ite c!1398247 lambda!466938 lambda!466939)))))

(declare-fun b!7580503 () Bool)

(declare-fun e!4511974 () Bool)

(assert (=> b!7580503 (= e!4511976 e!4511974)))

(declare-fun res!3036905 () Bool)

(assert (=> b!7580503 (= res!3036905 (matchRSpec!4392 (regOne!40671 (regTwo!40671 r!22341)) s!13436))))

(assert (=> b!7580503 (=> res!3036905 e!4511974)))

(declare-fun b!7580504 () Bool)

(declare-fun e!4511977 () Bool)

(assert (=> b!7580504 (= e!4511977 call!694967)))

(declare-fun b!7580505 () Bool)

(assert (=> b!7580505 (= e!4511976 e!4511971)))

(assert (=> b!7580505 (= c!1398247 ((_ is Star!20079) (regTwo!40671 r!22341)))))

(declare-fun bm!694963 () Bool)

(assert (=> bm!694963 (= call!694967 (isEmpty!41509 s!13436))))

(assert (=> b!7580506 (= e!4511973 call!694968)))

(declare-fun d!2318387 () Bool)

(declare-fun c!1398246 () Bool)

(assert (=> d!2318387 (= c!1398246 ((_ is EmptyExpr!20079) (regTwo!40671 r!22341)))))

(assert (=> d!2318387 (= (matchRSpec!4392 (regTwo!40671 r!22341) s!13436) e!4511977)))

(assert (=> b!7580501 (= e!4511971 call!694968)))

(declare-fun b!7580507 () Bool)

(assert (=> b!7580507 (= e!4511977 e!4511975)))

(declare-fun res!3036904 () Bool)

(assert (=> b!7580507 (= res!3036904 (not ((_ is EmptyLang!20079) (regTwo!40671 r!22341))))))

(assert (=> b!7580507 (=> (not res!3036904) (not e!4511975))))

(declare-fun b!7580508 () Bool)

(assert (=> b!7580508 (= e!4511974 (matchRSpec!4392 (regTwo!40671 (regTwo!40671 r!22341)) s!13436))))

(assert (= (and d!2318387 c!1398246) b!7580504))

(assert (= (and d!2318387 (not c!1398246)) b!7580507))

(assert (= (and b!7580507 res!3036904) b!7580502))

(assert (= (and b!7580502 c!1398245) b!7580499))

(assert (= (and b!7580502 (not c!1398245)) b!7580498))

(assert (= (and b!7580498 c!1398244) b!7580503))

(assert (= (and b!7580498 (not c!1398244)) b!7580505))

(assert (= (and b!7580503 (not res!3036905)) b!7580508))

(assert (= (and b!7580505 c!1398247) b!7580500))

(assert (= (and b!7580505 (not c!1398247)) b!7580501))

(assert (= (and b!7580500 (not res!3036903)) b!7580506))

(assert (= (or b!7580506 b!7580501) bm!694962))

(assert (= (or b!7580504 b!7580500) bm!694963))

(declare-fun m!8135690 () Bool)

(assert (=> bm!694962 m!8135690))

(declare-fun m!8135692 () Bool)

(assert (=> b!7580503 m!8135692))

(assert (=> bm!694963 m!8135508))

(declare-fun m!8135694 () Bool)

(assert (=> b!7580508 m!8135694))

(assert (=> b!7580276 d!2318387))

(assert (=> b!7580090 d!2318383))

(assert (=> b!7580090 d!2318385))

(declare-fun d!2318395 () Bool)

(declare-fun choose!58608 (Int) Bool)

(assert (=> d!2318395 (= (Exists!4313 (ite c!1398194 lambda!466932 lambda!466933)) (choose!58608 (ite c!1398194 lambda!466932 lambda!466933)))))

(declare-fun bs!1941029 () Bool)

(assert (= bs!1941029 d!2318395))

(declare-fun m!8135696 () Bool)

(assert (=> bs!1941029 m!8135696))

(assert (=> bm!694906 d!2318395))

(assert (=> b!7580097 d!2318381))

(declare-fun b!7580552 () Bool)

(declare-fun e!4512001 () Bool)

(declare-fun call!694974 () Bool)

(assert (=> b!7580552 (= e!4512001 call!694974)))

(declare-fun bm!694968 () Bool)

(declare-fun call!694973 () Bool)

(declare-fun c!1398250 () Bool)

(assert (=> bm!694968 (= call!694973 (lostCause!1855 (ite c!1398250 (regOne!40671 (regOne!40671 r!22341)) (regOne!40670 (regOne!40671 r!22341)))))))

(declare-fun b!7580553 () Bool)

(declare-fun e!4512003 () Bool)

(declare-fun e!4511997 () Bool)

(assert (=> b!7580553 (= e!4512003 e!4511997)))

(declare-fun res!3036917 () Bool)

(assert (=> b!7580553 (=> (not res!3036917) (not e!4511997))))

(assert (=> b!7580553 (= res!3036917 (and (not ((_ is ElementMatch!20079) (regOne!40671 r!22341))) (not ((_ is Star!20079) (regOne!40671 r!22341)))))))

(declare-fun d!2318397 () Bool)

(declare-fun lt!2652568 () Bool)

(assert (=> d!2318397 (= lt!2652568 (isEmpty!41510 (getLanguageWitness!1116 (regOne!40671 r!22341))))))

(declare-fun e!4512000 () Bool)

(assert (=> d!2318397 (= lt!2652568 e!4512000)))

(declare-fun res!3036916 () Bool)

(assert (=> d!2318397 (=> (not res!3036916) (not e!4512000))))

(assert (=> d!2318397 (= res!3036916 (not ((_ is EmptyExpr!20079) (regOne!40671 r!22341))))))

(assert (=> d!2318397 (= (lostCauseFct!508 (regOne!40671 r!22341)) lt!2652568)))

(declare-fun b!7580554 () Bool)

(declare-fun e!4512002 () Bool)

(assert (=> b!7580554 (= e!4512002 call!694974)))

(declare-fun b!7580555 () Bool)

(declare-fun e!4511999 () Bool)

(assert (=> b!7580555 (= e!4511999 e!4512002)))

(declare-fun res!3036919 () Bool)

(assert (=> b!7580555 (= res!3036919 call!694973)))

(assert (=> b!7580555 (=> (not res!3036919) (not e!4512002))))

(declare-fun b!7580556 () Bool)

(assert (=> b!7580556 (= e!4512000 e!4512003)))

(declare-fun res!3036918 () Bool)

(assert (=> b!7580556 (=> res!3036918 e!4512003)))

(assert (=> b!7580556 (= res!3036918 ((_ is EmptyLang!20079) (regOne!40671 r!22341)))))

(declare-fun b!7580557 () Bool)

(assert (=> b!7580557 (= e!4511997 e!4511999)))

(assert (=> b!7580557 (= c!1398250 ((_ is Union!20079) (regOne!40671 r!22341)))))

(declare-fun bm!694969 () Bool)

(assert (=> bm!694969 (= call!694974 (lostCause!1855 (ite c!1398250 (regTwo!40671 (regOne!40671 r!22341)) (regTwo!40670 (regOne!40671 r!22341)))))))

(declare-fun b!7580558 () Bool)

(assert (=> b!7580558 (= e!4511999 e!4512001)))

(declare-fun res!3036920 () Bool)

(assert (=> b!7580558 (= res!3036920 call!694973)))

(assert (=> b!7580558 (=> res!3036920 e!4512001)))

(assert (= (and d!2318397 res!3036916) b!7580556))

(assert (= (and b!7580556 (not res!3036918)) b!7580553))

(assert (= (and b!7580553 res!3036917) b!7580557))

(assert (= (and b!7580557 c!1398250) b!7580555))

(assert (= (and b!7580557 (not c!1398250)) b!7580558))

(assert (= (and b!7580555 res!3036919) b!7580554))

(assert (= (and b!7580558 (not res!3036920)) b!7580552))

(assert (= (or b!7580554 b!7580552) bm!694969))

(assert (= (or b!7580555 b!7580558) bm!694968))

(declare-fun m!8135698 () Bool)

(assert (=> bm!694968 m!8135698))

(declare-fun m!8135700 () Bool)

(assert (=> d!2318397 m!8135700))

(assert (=> d!2318397 m!8135700))

(declare-fun m!8135702 () Bool)

(assert (=> d!2318397 m!8135702))

(declare-fun m!8135704 () Bool)

(assert (=> bm!694969 m!8135704))

(assert (=> d!2318343 d!2318397))

(declare-fun b!7580575 () Bool)

(declare-fun e!4512013 () Bool)

(declare-fun e!4512010 () Bool)

(assert (=> b!7580575 (= e!4512013 e!4512010)))

(declare-fun res!3036925 () Bool)

(assert (=> b!7580575 (= res!3036925 (not (nullable!8772 (reg!20408 (ite c!1398200 (regTwo!40671 r!22341) (regOne!40670 r!22341))))))))

(assert (=> b!7580575 (=> (not res!3036925) (not e!4512010))))

(declare-fun b!7580576 () Bool)

(declare-fun call!694977 () Bool)

(assert (=> b!7580576 (= e!4512010 call!694977)))

(declare-fun bm!694970 () Bool)

(declare-fun c!1398251 () Bool)

(declare-fun c!1398252 () Bool)

(assert (=> bm!694970 (= call!694977 (validRegex!10507 (ite c!1398251 (reg!20408 (ite c!1398200 (regTwo!40671 r!22341) (regOne!40670 r!22341))) (ite c!1398252 (regOne!40671 (ite c!1398200 (regTwo!40671 r!22341) (regOne!40670 r!22341))) (regTwo!40670 (ite c!1398200 (regTwo!40671 r!22341) (regOne!40670 r!22341)))))))))

(declare-fun d!2318399 () Bool)

(declare-fun res!3036921 () Bool)

(declare-fun e!4512009 () Bool)

(assert (=> d!2318399 (=> res!3036921 e!4512009)))

(assert (=> d!2318399 (= res!3036921 ((_ is ElementMatch!20079) (ite c!1398200 (regTwo!40671 r!22341) (regOne!40670 r!22341))))))

(assert (=> d!2318399 (= (validRegex!10507 (ite c!1398200 (regTwo!40671 r!22341) (regOne!40670 r!22341))) e!4512009)))

(declare-fun b!7580577 () Bool)

(declare-fun res!3036922 () Bool)

(declare-fun e!4512014 () Bool)

(assert (=> b!7580577 (=> res!3036922 e!4512014)))

(assert (=> b!7580577 (= res!3036922 (not ((_ is Concat!28924) (ite c!1398200 (regTwo!40671 r!22341) (regOne!40670 r!22341)))))))

(declare-fun e!4512012 () Bool)

(assert (=> b!7580577 (= e!4512012 e!4512014)))

(declare-fun b!7580578 () Bool)

(declare-fun e!4512008 () Bool)

(declare-fun call!694975 () Bool)

(assert (=> b!7580578 (= e!4512008 call!694975)))

(declare-fun b!7580579 () Bool)

(assert (=> b!7580579 (= e!4512009 e!4512013)))

(assert (=> b!7580579 (= c!1398251 ((_ is Star!20079) (ite c!1398200 (regTwo!40671 r!22341) (regOne!40670 r!22341))))))

(declare-fun bm!694971 () Bool)

(assert (=> bm!694971 (= call!694975 call!694977)))

(declare-fun b!7580580 () Bool)

(assert (=> b!7580580 (= e!4512013 e!4512012)))

(assert (=> b!7580580 (= c!1398252 ((_ is Union!20079) (ite c!1398200 (regTwo!40671 r!22341) (regOne!40670 r!22341))))))

(declare-fun bm!694972 () Bool)

(declare-fun call!694976 () Bool)

(assert (=> bm!694972 (= call!694976 (validRegex!10507 (ite c!1398252 (regTwo!40671 (ite c!1398200 (regTwo!40671 r!22341) (regOne!40670 r!22341))) (regOne!40670 (ite c!1398200 (regTwo!40671 r!22341) (regOne!40670 r!22341))))))))

(declare-fun b!7580581 () Bool)

(declare-fun res!3036923 () Bool)

(declare-fun e!4512011 () Bool)

(assert (=> b!7580581 (=> (not res!3036923) (not e!4512011))))

(assert (=> b!7580581 (= res!3036923 call!694975)))

(assert (=> b!7580581 (= e!4512012 e!4512011)))

(declare-fun b!7580582 () Bool)

(assert (=> b!7580582 (= e!4512014 e!4512008)))

(declare-fun res!3036924 () Bool)

(assert (=> b!7580582 (=> (not res!3036924) (not e!4512008))))

(assert (=> b!7580582 (= res!3036924 call!694976)))

(declare-fun b!7580583 () Bool)

(assert (=> b!7580583 (= e!4512011 call!694976)))

(assert (= (and d!2318399 (not res!3036921)) b!7580579))

(assert (= (and b!7580579 c!1398251) b!7580575))

(assert (= (and b!7580579 (not c!1398251)) b!7580580))

(assert (= (and b!7580575 res!3036925) b!7580576))

(assert (= (and b!7580580 c!1398252) b!7580581))

(assert (= (and b!7580580 (not c!1398252)) b!7580577))

(assert (= (and b!7580581 res!3036923) b!7580583))

(assert (= (and b!7580577 (not res!3036922)) b!7580582))

(assert (= (and b!7580582 res!3036924) b!7580578))

(assert (= (or b!7580583 b!7580582) bm!694972))

(assert (= (or b!7580581 b!7580578) bm!694971))

(assert (= (or b!7580576 bm!694971) bm!694970))

(declare-fun m!8135706 () Bool)

(assert (=> b!7580575 m!8135706))

(declare-fun m!8135708 () Bool)

(assert (=> bm!694970 m!8135708))

(declare-fun m!8135710 () Bool)

(assert (=> bm!694972 m!8135710))

(assert (=> bm!694916 d!2318399))

(declare-fun d!2318401 () Bool)

(declare-fun nullableFct!3494 (Regex!20079) Bool)

(assert (=> d!2318401 (= (nullable!8772 r!22341) (nullableFct!3494 r!22341))))

(declare-fun bs!1941030 () Bool)

(assert (= bs!1941030 d!2318401))

(declare-fun m!8135712 () Bool)

(assert (=> bs!1941030 m!8135712))

(assert (=> b!7580088 d!2318401))

(declare-fun b!7580616 () Bool)

(declare-fun e!4512028 () Bool)

(declare-fun e!4512025 () Bool)

(assert (=> b!7580616 (= e!4512028 e!4512025)))

(declare-fun res!3036930 () Bool)

(assert (=> b!7580616 (= res!3036930 (not (nullable!8772 (reg!20408 (ite c!1398202 (regTwo!40671 (regOne!40671 r!22341)) (regOne!40670 (regOne!40671 r!22341)))))))))

(assert (=> b!7580616 (=> (not res!3036930) (not e!4512025))))

(declare-fun b!7580617 () Bool)

(declare-fun call!694980 () Bool)

(assert (=> b!7580617 (= e!4512025 call!694980)))

(declare-fun c!1398253 () Bool)

(declare-fun bm!694973 () Bool)

(declare-fun c!1398254 () Bool)

(assert (=> bm!694973 (= call!694980 (validRegex!10507 (ite c!1398253 (reg!20408 (ite c!1398202 (regTwo!40671 (regOne!40671 r!22341)) (regOne!40670 (regOne!40671 r!22341)))) (ite c!1398254 (regOne!40671 (ite c!1398202 (regTwo!40671 (regOne!40671 r!22341)) (regOne!40670 (regOne!40671 r!22341)))) (regTwo!40670 (ite c!1398202 (regTwo!40671 (regOne!40671 r!22341)) (regOne!40670 (regOne!40671 r!22341))))))))))

(declare-fun d!2318403 () Bool)

(declare-fun res!3036926 () Bool)

(declare-fun e!4512024 () Bool)

(assert (=> d!2318403 (=> res!3036926 e!4512024)))

(assert (=> d!2318403 (= res!3036926 ((_ is ElementMatch!20079) (ite c!1398202 (regTwo!40671 (regOne!40671 r!22341)) (regOne!40670 (regOne!40671 r!22341)))))))

(assert (=> d!2318403 (= (validRegex!10507 (ite c!1398202 (regTwo!40671 (regOne!40671 r!22341)) (regOne!40670 (regOne!40671 r!22341)))) e!4512024)))

(declare-fun b!7580618 () Bool)

(declare-fun res!3036927 () Bool)

(declare-fun e!4512029 () Bool)

(assert (=> b!7580618 (=> res!3036927 e!4512029)))

(assert (=> b!7580618 (= res!3036927 (not ((_ is Concat!28924) (ite c!1398202 (regTwo!40671 (regOne!40671 r!22341)) (regOne!40670 (regOne!40671 r!22341))))))))

(declare-fun e!4512027 () Bool)

(assert (=> b!7580618 (= e!4512027 e!4512029)))

(declare-fun b!7580619 () Bool)

(declare-fun e!4512022 () Bool)

(declare-fun call!694978 () Bool)

(assert (=> b!7580619 (= e!4512022 call!694978)))

(declare-fun b!7580620 () Bool)

(assert (=> b!7580620 (= e!4512024 e!4512028)))

(assert (=> b!7580620 (= c!1398253 ((_ is Star!20079) (ite c!1398202 (regTwo!40671 (regOne!40671 r!22341)) (regOne!40670 (regOne!40671 r!22341)))))))

(declare-fun bm!694974 () Bool)

(assert (=> bm!694974 (= call!694978 call!694980)))

(declare-fun b!7580621 () Bool)

(assert (=> b!7580621 (= e!4512028 e!4512027)))

(assert (=> b!7580621 (= c!1398254 ((_ is Union!20079) (ite c!1398202 (regTwo!40671 (regOne!40671 r!22341)) (regOne!40670 (regOne!40671 r!22341)))))))

(declare-fun call!694979 () Bool)

(declare-fun bm!694975 () Bool)

(assert (=> bm!694975 (= call!694979 (validRegex!10507 (ite c!1398254 (regTwo!40671 (ite c!1398202 (regTwo!40671 (regOne!40671 r!22341)) (regOne!40670 (regOne!40671 r!22341)))) (regOne!40670 (ite c!1398202 (regTwo!40671 (regOne!40671 r!22341)) (regOne!40670 (regOne!40671 r!22341)))))))))

(declare-fun b!7580622 () Bool)

(declare-fun res!3036928 () Bool)

(declare-fun e!4512026 () Bool)

(assert (=> b!7580622 (=> (not res!3036928) (not e!4512026))))

(assert (=> b!7580622 (= res!3036928 call!694978)))

(assert (=> b!7580622 (= e!4512027 e!4512026)))

(declare-fun b!7580623 () Bool)

(assert (=> b!7580623 (= e!4512029 e!4512022)))

(declare-fun res!3036929 () Bool)

(assert (=> b!7580623 (=> (not res!3036929) (not e!4512022))))

(assert (=> b!7580623 (= res!3036929 call!694979)))

(declare-fun b!7580624 () Bool)

(assert (=> b!7580624 (= e!4512026 call!694979)))

(assert (= (and d!2318403 (not res!3036926)) b!7580620))

(assert (= (and b!7580620 c!1398253) b!7580616))

(assert (= (and b!7580620 (not c!1398253)) b!7580621))

(assert (= (and b!7580616 res!3036930) b!7580617))

(assert (= (and b!7580621 c!1398254) b!7580622))

(assert (= (and b!7580621 (not c!1398254)) b!7580618))

(assert (= (and b!7580622 res!3036928) b!7580624))

(assert (= (and b!7580618 (not res!3036927)) b!7580623))

(assert (= (and b!7580623 res!3036929) b!7580619))

(assert (= (or b!7580624 b!7580623) bm!694975))

(assert (= (or b!7580622 b!7580619) bm!694974))

(assert (= (or b!7580617 bm!694974) bm!694973))

(declare-fun m!8135714 () Bool)

(assert (=> b!7580616 m!8135714))

(declare-fun m!8135716 () Bool)

(assert (=> bm!694973 m!8135716))

(declare-fun m!8135718 () Bool)

(assert (=> bm!694975 m!8135718))

(assert (=> bm!694919 d!2318403))

(declare-fun b!7580641 () Bool)

(declare-fun e!4512039 () Bool)

(declare-fun e!4512036 () Bool)

(assert (=> b!7580641 (= e!4512039 e!4512036)))

(declare-fun res!3036935 () Bool)

(assert (=> b!7580641 (= res!3036935 (not (nullable!8772 (reg!20408 (ite c!1398201 (reg!20408 (regOne!40671 r!22341)) (ite c!1398202 (regOne!40671 (regOne!40671 r!22341)) (regTwo!40670 (regOne!40671 r!22341))))))))))

(assert (=> b!7580641 (=> (not res!3036935) (not e!4512036))))

(declare-fun b!7580642 () Bool)

(declare-fun call!694983 () Bool)

(assert (=> b!7580642 (= e!4512036 call!694983)))

(declare-fun bm!694976 () Bool)

(declare-fun c!1398255 () Bool)

(declare-fun c!1398256 () Bool)

(assert (=> bm!694976 (= call!694983 (validRegex!10507 (ite c!1398255 (reg!20408 (ite c!1398201 (reg!20408 (regOne!40671 r!22341)) (ite c!1398202 (regOne!40671 (regOne!40671 r!22341)) (regTwo!40670 (regOne!40671 r!22341))))) (ite c!1398256 (regOne!40671 (ite c!1398201 (reg!20408 (regOne!40671 r!22341)) (ite c!1398202 (regOne!40671 (regOne!40671 r!22341)) (regTwo!40670 (regOne!40671 r!22341))))) (regTwo!40670 (ite c!1398201 (reg!20408 (regOne!40671 r!22341)) (ite c!1398202 (regOne!40671 (regOne!40671 r!22341)) (regTwo!40670 (regOne!40671 r!22341)))))))))))

(declare-fun d!2318405 () Bool)

(declare-fun res!3036931 () Bool)

(declare-fun e!4512035 () Bool)

(assert (=> d!2318405 (=> res!3036931 e!4512035)))

(assert (=> d!2318405 (= res!3036931 ((_ is ElementMatch!20079) (ite c!1398201 (reg!20408 (regOne!40671 r!22341)) (ite c!1398202 (regOne!40671 (regOne!40671 r!22341)) (regTwo!40670 (regOne!40671 r!22341))))))))

(assert (=> d!2318405 (= (validRegex!10507 (ite c!1398201 (reg!20408 (regOne!40671 r!22341)) (ite c!1398202 (regOne!40671 (regOne!40671 r!22341)) (regTwo!40670 (regOne!40671 r!22341))))) e!4512035)))

(declare-fun b!7580643 () Bool)

(declare-fun res!3036932 () Bool)

(declare-fun e!4512040 () Bool)

(assert (=> b!7580643 (=> res!3036932 e!4512040)))

(assert (=> b!7580643 (= res!3036932 (not ((_ is Concat!28924) (ite c!1398201 (reg!20408 (regOne!40671 r!22341)) (ite c!1398202 (regOne!40671 (regOne!40671 r!22341)) (regTwo!40670 (regOne!40671 r!22341)))))))))

(declare-fun e!4512038 () Bool)

(assert (=> b!7580643 (= e!4512038 e!4512040)))

(declare-fun b!7580644 () Bool)

(declare-fun e!4512034 () Bool)

(declare-fun call!694981 () Bool)

(assert (=> b!7580644 (= e!4512034 call!694981)))

(declare-fun b!7580645 () Bool)

(assert (=> b!7580645 (= e!4512035 e!4512039)))

(assert (=> b!7580645 (= c!1398255 ((_ is Star!20079) (ite c!1398201 (reg!20408 (regOne!40671 r!22341)) (ite c!1398202 (regOne!40671 (regOne!40671 r!22341)) (regTwo!40670 (regOne!40671 r!22341))))))))

(declare-fun bm!694977 () Bool)

(assert (=> bm!694977 (= call!694981 call!694983)))

(declare-fun b!7580646 () Bool)

(assert (=> b!7580646 (= e!4512039 e!4512038)))

(assert (=> b!7580646 (= c!1398256 ((_ is Union!20079) (ite c!1398201 (reg!20408 (regOne!40671 r!22341)) (ite c!1398202 (regOne!40671 (regOne!40671 r!22341)) (regTwo!40670 (regOne!40671 r!22341))))))))

(declare-fun bm!694978 () Bool)

(declare-fun call!694982 () Bool)

(assert (=> bm!694978 (= call!694982 (validRegex!10507 (ite c!1398256 (regTwo!40671 (ite c!1398201 (reg!20408 (regOne!40671 r!22341)) (ite c!1398202 (regOne!40671 (regOne!40671 r!22341)) (regTwo!40670 (regOne!40671 r!22341))))) (regOne!40670 (ite c!1398201 (reg!20408 (regOne!40671 r!22341)) (ite c!1398202 (regOne!40671 (regOne!40671 r!22341)) (regTwo!40670 (regOne!40671 r!22341))))))))))

(declare-fun b!7580647 () Bool)

(declare-fun res!3036933 () Bool)

(declare-fun e!4512037 () Bool)

(assert (=> b!7580647 (=> (not res!3036933) (not e!4512037))))

(assert (=> b!7580647 (= res!3036933 call!694981)))

(assert (=> b!7580647 (= e!4512038 e!4512037)))

(declare-fun b!7580648 () Bool)

(assert (=> b!7580648 (= e!4512040 e!4512034)))

(declare-fun res!3036934 () Bool)

(assert (=> b!7580648 (=> (not res!3036934) (not e!4512034))))

(assert (=> b!7580648 (= res!3036934 call!694982)))

(declare-fun b!7580649 () Bool)

(assert (=> b!7580649 (= e!4512037 call!694982)))

(assert (= (and d!2318405 (not res!3036931)) b!7580645))

(assert (= (and b!7580645 c!1398255) b!7580641))

(assert (= (and b!7580645 (not c!1398255)) b!7580646))

(assert (= (and b!7580641 res!3036935) b!7580642))

(assert (= (and b!7580646 c!1398256) b!7580647))

(assert (= (and b!7580646 (not c!1398256)) b!7580643))

(assert (= (and b!7580647 res!3036933) b!7580649))

(assert (= (and b!7580643 (not res!3036932)) b!7580648))

(assert (= (and b!7580648 res!3036934) b!7580644))

(assert (= (or b!7580649 b!7580648) bm!694978))

(assert (= (or b!7580647 b!7580644) bm!694977))

(assert (= (or b!7580642 bm!694977) bm!694976))

(declare-fun m!8135720 () Bool)

(assert (=> b!7580641 m!8135720))

(declare-fun m!8135722 () Bool)

(assert (=> bm!694976 m!8135722))

(declare-fun m!8135724 () Bool)

(assert (=> bm!694978 m!8135724))

(assert (=> bm!694917 d!2318405))

(declare-fun b!7580658 () Bool)

(declare-fun e!4512043 () Bool)

(assert (=> b!7580658 (= e!4512043 (nullable!8772 (derivativeStep!5799 r!22341 (head!15599 s!13436))))))

(declare-fun b!7580659 () Bool)

(declare-fun res!3036943 () Bool)

(declare-fun e!4512046 () Bool)

(assert (=> b!7580659 (=> (not res!3036943) (not e!4512046))))

(declare-fun call!694984 () Bool)

(assert (=> b!7580659 (= res!3036943 (not call!694984))))

(declare-fun bm!694979 () Bool)

(assert (=> bm!694979 (= call!694984 (isEmpty!41509 (tail!15139 s!13436)))))

(declare-fun b!7580660 () Bool)

(declare-fun res!3036940 () Bool)

(assert (=> b!7580660 (=> (not res!3036940) (not e!4512046))))

(assert (=> b!7580660 (= res!3036940 (isEmpty!41509 (tail!15139 (tail!15139 s!13436))))))

(declare-fun b!7580661 () Bool)

(declare-fun e!4512045 () Bool)

(declare-fun e!4512049 () Bool)

(assert (=> b!7580661 (= e!4512045 e!4512049)))

(declare-fun res!3036938 () Bool)

(assert (=> b!7580661 (=> (not res!3036938) (not e!4512049))))

(declare-fun lt!2652569 () Bool)

(assert (=> b!7580661 (= res!3036938 (not lt!2652569))))

(declare-fun b!7580662 () Bool)

(declare-fun e!4512048 () Bool)

(assert (=> b!7580662 (= e!4512048 (= lt!2652569 call!694984))))

(declare-fun b!7580663 () Bool)

(declare-fun res!3036942 () Bool)

(assert (=> b!7580663 (=> res!3036942 e!4512045)))

(assert (=> b!7580663 (= res!3036942 (not ((_ is ElementMatch!20079) (derivativeStep!5799 r!22341 (head!15599 s!13436)))))))

(declare-fun e!4512047 () Bool)

(assert (=> b!7580663 (= e!4512047 e!4512045)))

(declare-fun b!7580664 () Bool)

(assert (=> b!7580664 (= e!4512043 (matchR!9671 (derivativeStep!5799 (derivativeStep!5799 r!22341 (head!15599 s!13436)) (head!15599 (tail!15139 s!13436))) (tail!15139 (tail!15139 s!13436))))))

(declare-fun b!7580665 () Bool)

(assert (=> b!7580665 (= e!4512048 e!4512047)))

(declare-fun c!1398258 () Bool)

(assert (=> b!7580665 (= c!1398258 ((_ is EmptyLang!20079) (derivativeStep!5799 r!22341 (head!15599 s!13436))))))

(declare-fun b!7580667 () Bool)

(declare-fun e!4512044 () Bool)

(assert (=> b!7580667 (= e!4512044 (not (= (head!15599 (tail!15139 s!13436)) (c!1398144 (derivativeStep!5799 r!22341 (head!15599 s!13436))))))))

(declare-fun b!7580668 () Bool)

(assert (=> b!7580668 (= e!4512049 e!4512044)))

(declare-fun res!3036941 () Bool)

(assert (=> b!7580668 (=> res!3036941 e!4512044)))

(assert (=> b!7580668 (= res!3036941 call!694984)))

(declare-fun b!7580669 () Bool)

(assert (=> b!7580669 (= e!4512046 (= (head!15599 (tail!15139 s!13436)) (c!1398144 (derivativeStep!5799 r!22341 (head!15599 s!13436)))))))

(declare-fun b!7580670 () Bool)

(declare-fun res!3036937 () Bool)

(assert (=> b!7580670 (=> res!3036937 e!4512044)))

(assert (=> b!7580670 (= res!3036937 (not (isEmpty!41509 (tail!15139 (tail!15139 s!13436)))))))

(declare-fun b!7580671 () Bool)

(assert (=> b!7580671 (= e!4512047 (not lt!2652569))))

(declare-fun b!7580666 () Bool)

(declare-fun res!3036936 () Bool)

(assert (=> b!7580666 (=> res!3036936 e!4512045)))

(assert (=> b!7580666 (= res!3036936 e!4512046)))

(declare-fun res!3036939 () Bool)

(assert (=> b!7580666 (=> (not res!3036939) (not e!4512046))))

(assert (=> b!7580666 (= res!3036939 lt!2652569)))

(declare-fun d!2318407 () Bool)

(assert (=> d!2318407 e!4512048))

(declare-fun c!1398259 () Bool)

(assert (=> d!2318407 (= c!1398259 ((_ is EmptyExpr!20079) (derivativeStep!5799 r!22341 (head!15599 s!13436))))))

(assert (=> d!2318407 (= lt!2652569 e!4512043)))

(declare-fun c!1398257 () Bool)

(assert (=> d!2318407 (= c!1398257 (isEmpty!41509 (tail!15139 s!13436)))))

(assert (=> d!2318407 (validRegex!10507 (derivativeStep!5799 r!22341 (head!15599 s!13436)))))

(assert (=> d!2318407 (= (matchR!9671 (derivativeStep!5799 r!22341 (head!15599 s!13436)) (tail!15139 s!13436)) lt!2652569)))

(assert (= (and d!2318407 c!1398257) b!7580658))

(assert (= (and d!2318407 (not c!1398257)) b!7580664))

(assert (= (and d!2318407 c!1398259) b!7580662))

(assert (= (and d!2318407 (not c!1398259)) b!7580665))

(assert (= (and b!7580665 c!1398258) b!7580671))

(assert (= (and b!7580665 (not c!1398258)) b!7580663))

(assert (= (and b!7580663 (not res!3036942)) b!7580666))

(assert (= (and b!7580666 res!3036939) b!7580659))

(assert (= (and b!7580659 res!3036943) b!7580660))

(assert (= (and b!7580660 res!3036940) b!7580669))

(assert (= (and b!7580666 (not res!3036936)) b!7580661))

(assert (= (and b!7580661 res!3036938) b!7580668))

(assert (= (and b!7580668 (not res!3036941)) b!7580670))

(assert (= (and b!7580670 (not res!3036937)) b!7580667))

(assert (= (or b!7580662 b!7580659 b!7580668) bm!694979))

(assert (=> b!7580660 m!8135526))

(declare-fun m!8135726 () Bool)

(assert (=> b!7580660 m!8135726))

(assert (=> b!7580660 m!8135726))

(declare-fun m!8135728 () Bool)

(assert (=> b!7580660 m!8135728))

(assert (=> bm!694979 m!8135526))

(assert (=> bm!694979 m!8135528))

(assert (=> b!7580664 m!8135526))

(declare-fun m!8135730 () Bool)

(assert (=> b!7580664 m!8135730))

(assert (=> b!7580664 m!8135534))

(assert (=> b!7580664 m!8135730))

(declare-fun m!8135732 () Bool)

(assert (=> b!7580664 m!8135732))

(assert (=> b!7580664 m!8135526))

(assert (=> b!7580664 m!8135726))

(assert (=> b!7580664 m!8135732))

(assert (=> b!7580664 m!8135726))

(declare-fun m!8135734 () Bool)

(assert (=> b!7580664 m!8135734))

(assert (=> b!7580667 m!8135526))

(assert (=> b!7580667 m!8135730))

(assert (=> b!7580658 m!8135534))

(declare-fun m!8135736 () Bool)

(assert (=> b!7580658 m!8135736))

(assert (=> b!7580670 m!8135526))

(assert (=> b!7580670 m!8135726))

(assert (=> b!7580670 m!8135726))

(assert (=> b!7580670 m!8135728))

(assert (=> b!7580669 m!8135526))

(assert (=> b!7580669 m!8135730))

(assert (=> d!2318407 m!8135526))

(assert (=> d!2318407 m!8135528))

(assert (=> d!2318407 m!8135534))

(declare-fun m!8135738 () Bool)

(assert (=> d!2318407 m!8135738))

(assert (=> b!7580094 d!2318407))

(declare-fun b!7580692 () Bool)

(declare-fun e!4512060 () Regex!20079)

(assert (=> b!7580692 (= e!4512060 (ite (= (head!15599 s!13436) (c!1398144 r!22341)) EmptyExpr!20079 EmptyLang!20079))))

(declare-fun d!2318409 () Bool)

(declare-fun lt!2652572 () Regex!20079)

(assert (=> d!2318409 (validRegex!10507 lt!2652572)))

(declare-fun e!4512062 () Regex!20079)

(assert (=> d!2318409 (= lt!2652572 e!4512062)))

(declare-fun c!1398274 () Bool)

(assert (=> d!2318409 (= c!1398274 (or ((_ is EmptyExpr!20079) r!22341) ((_ is EmptyLang!20079) r!22341)))))

(assert (=> d!2318409 (validRegex!10507 r!22341)))

(assert (=> d!2318409 (= (derivativeStep!5799 r!22341 (head!15599 s!13436)) lt!2652572)))

(declare-fun b!7580693 () Bool)

(declare-fun e!4512064 () Regex!20079)

(declare-fun e!4512061 () Regex!20079)

(assert (=> b!7580693 (= e!4512064 e!4512061)))

(declare-fun c!1398272 () Bool)

(assert (=> b!7580693 (= c!1398272 ((_ is Star!20079) r!22341))))

(declare-fun call!694995 () Regex!20079)

(declare-fun e!4512063 () Regex!20079)

(declare-fun b!7580694 () Bool)

(declare-fun call!694996 () Regex!20079)

(assert (=> b!7580694 (= e!4512063 (Union!20079 (Concat!28924 call!694996 (regTwo!40670 r!22341)) call!694995))))

(declare-fun b!7580695 () Bool)

(declare-fun call!694994 () Regex!20079)

(assert (=> b!7580695 (= e!4512061 (Concat!28924 call!694994 r!22341))))

(declare-fun bm!694988 () Bool)

(declare-fun call!694993 () Regex!20079)

(assert (=> bm!694988 (= call!694994 call!694993)))

(declare-fun bm!694989 () Bool)

(assert (=> bm!694989 (= call!694995 call!694994)))

(declare-fun c!1398270 () Bool)

(declare-fun bm!694990 () Bool)

(declare-fun c!1398273 () Bool)

(assert (=> bm!694990 (= call!694993 (derivativeStep!5799 (ite c!1398270 (regTwo!40671 r!22341) (ite c!1398272 (reg!20408 r!22341) (ite c!1398273 (regTwo!40670 r!22341) (regOne!40670 r!22341)))) (head!15599 s!13436)))))

(declare-fun b!7580696 () Bool)

(assert (=> b!7580696 (= e!4512062 e!4512060)))

(declare-fun c!1398271 () Bool)

(assert (=> b!7580696 (= c!1398271 ((_ is ElementMatch!20079) r!22341))))

(declare-fun b!7580697 () Bool)

(assert (=> b!7580697 (= c!1398273 (nullable!8772 (regOne!40670 r!22341)))))

(assert (=> b!7580697 (= e!4512061 e!4512063)))

(declare-fun b!7580698 () Bool)

(assert (=> b!7580698 (= c!1398270 ((_ is Union!20079) r!22341))))

(assert (=> b!7580698 (= e!4512060 e!4512064)))

(declare-fun b!7580699 () Bool)

(assert (=> b!7580699 (= e!4512063 (Union!20079 (Concat!28924 call!694995 (regTwo!40670 r!22341)) EmptyLang!20079))))

(declare-fun b!7580700 () Bool)

(assert (=> b!7580700 (= e!4512064 (Union!20079 call!694996 call!694993))))

(declare-fun b!7580701 () Bool)

(assert (=> b!7580701 (= e!4512062 EmptyLang!20079)))

(declare-fun bm!694991 () Bool)

(assert (=> bm!694991 (= call!694996 (derivativeStep!5799 (ite c!1398270 (regOne!40671 r!22341) (regOne!40670 r!22341)) (head!15599 s!13436)))))

(assert (= (and d!2318409 c!1398274) b!7580701))

(assert (= (and d!2318409 (not c!1398274)) b!7580696))

(assert (= (and b!7580696 c!1398271) b!7580692))

(assert (= (and b!7580696 (not c!1398271)) b!7580698))

(assert (= (and b!7580698 c!1398270) b!7580700))

(assert (= (and b!7580698 (not c!1398270)) b!7580693))

(assert (= (and b!7580693 c!1398272) b!7580695))

(assert (= (and b!7580693 (not c!1398272)) b!7580697))

(assert (= (and b!7580697 c!1398273) b!7580694))

(assert (= (and b!7580697 (not c!1398273)) b!7580699))

(assert (= (or b!7580694 b!7580699) bm!694989))

(assert (= (or b!7580695 bm!694989) bm!694988))

(assert (= (or b!7580700 bm!694988) bm!694990))

(assert (= (or b!7580700 b!7580694) bm!694991))

(declare-fun m!8135740 () Bool)

(assert (=> d!2318409 m!8135740))

(assert (=> d!2318409 m!8135506))

(assert (=> bm!694990 m!8135530))

(declare-fun m!8135742 () Bool)

(assert (=> bm!694990 m!8135742))

(declare-fun m!8135744 () Bool)

(assert (=> b!7580697 m!8135744))

(assert (=> bm!694991 m!8135530))

(declare-fun m!8135746 () Bool)

(assert (=> bm!694991 m!8135746))

(assert (=> b!7580094 d!2318409))

(assert (=> b!7580094 d!2318381))

(assert (=> b!7580094 d!2318385))

(assert (=> d!2318319 d!2318339))

(assert (=> d!2318319 d!2318341))

(assert (=> d!2318337 d!2318319))

(assert (=> d!2318337 d!2318323))

(declare-fun d!2318411 () Bool)

(assert (=> d!2318411 (= (matchR!9671 r!22341 s!13436) (matchRSpec!4392 r!22341 s!13436))))

(assert (=> d!2318411 true))

(declare-fun _$88!5798 () Unit!167114)

(assert (=> d!2318411 (= (choose!58607 r!22341 s!13436) _$88!5798)))

(declare-fun bs!1941031 () Bool)

(assert (= bs!1941031 d!2318411))

(assert (=> bs!1941031 m!8135514))

(assert (=> bs!1941031 m!8135516))

(assert (=> d!2318337 d!2318411))

(assert (=> d!2318337 d!2318341))

(declare-fun d!2318413 () Bool)

(assert (=> d!2318413 (= (nullable!8772 (reg!20408 r!22341)) (nullableFct!3494 (reg!20408 r!22341)))))

(declare-fun bs!1941032 () Bool)

(assert (= bs!1941032 d!2318413))

(declare-fun m!8135748 () Bool)

(assert (=> bs!1941032 m!8135748))

(assert (=> b!7580299 d!2318413))

(declare-fun d!2318415 () Bool)

(assert (=> d!2318415 (= (nullable!8772 (reg!20408 (regOne!40671 r!22341))) (nullableFct!3494 (reg!20408 (regOne!40671 r!22341))))))

(declare-fun bs!1941033 () Bool)

(assert (= bs!1941033 d!2318415))

(declare-fun m!8135750 () Bool)

(assert (=> bs!1941033 m!8135750))

(assert (=> b!7580308 d!2318415))

(declare-fun bs!1941034 () Bool)

(declare-fun b!7580710 () Bool)

(assert (= bs!1941034 (and b!7580710 b!7580274)))

(declare-fun lambda!466940 () Int)

(assert (=> bs!1941034 (= (and (= (reg!20408 (regOne!40671 r!22341)) (reg!20408 r!22341)) (= (regOne!40671 r!22341) r!22341)) (= lambda!466940 lambda!466932))))

(declare-fun bs!1941035 () Bool)

(assert (= bs!1941035 (and b!7580710 b!7580269)))

(assert (=> bs!1941035 (not (= lambda!466940 lambda!466933))))

(declare-fun bs!1941036 () Bool)

(assert (= bs!1941036 (and b!7580710 b!7580506)))

(assert (=> bs!1941036 (= (and (= (reg!20408 (regOne!40671 r!22341)) (reg!20408 (regTwo!40671 r!22341))) (= (regOne!40671 r!22341) (regTwo!40671 r!22341))) (= lambda!466940 lambda!466938))))

(declare-fun bs!1941037 () Bool)

(assert (= bs!1941037 (and b!7580710 b!7580501)))

(assert (=> bs!1941037 (not (= lambda!466940 lambda!466939))))

(assert (=> b!7580710 true))

(assert (=> b!7580710 true))

(declare-fun bs!1941038 () Bool)

(declare-fun b!7580705 () Bool)

(assert (= bs!1941038 (and b!7580705 b!7580710)))

(declare-fun lambda!466941 () Int)

(assert (=> bs!1941038 (not (= lambda!466941 lambda!466940))))

(declare-fun bs!1941039 () Bool)

(assert (= bs!1941039 (and b!7580705 b!7580269)))

(assert (=> bs!1941039 (= (and (= (regOne!40670 (regOne!40671 r!22341)) (regOne!40670 r!22341)) (= (regTwo!40670 (regOne!40671 r!22341)) (regTwo!40670 r!22341))) (= lambda!466941 lambda!466933))))

(declare-fun bs!1941040 () Bool)

(assert (= bs!1941040 (and b!7580705 b!7580501)))

(assert (=> bs!1941040 (= (and (= (regOne!40670 (regOne!40671 r!22341)) (regOne!40670 (regTwo!40671 r!22341))) (= (regTwo!40670 (regOne!40671 r!22341)) (regTwo!40670 (regTwo!40671 r!22341)))) (= lambda!466941 lambda!466939))))

(declare-fun bs!1941041 () Bool)

(assert (= bs!1941041 (and b!7580705 b!7580274)))

(assert (=> bs!1941041 (not (= lambda!466941 lambda!466932))))

(declare-fun bs!1941042 () Bool)

(assert (= bs!1941042 (and b!7580705 b!7580506)))

(assert (=> bs!1941042 (not (= lambda!466941 lambda!466938))))

(assert (=> b!7580705 true))

(assert (=> b!7580705 true))

(declare-fun b!7580702 () Bool)

(declare-fun c!1398275 () Bool)

(assert (=> b!7580702 (= c!1398275 ((_ is Union!20079) (regOne!40671 r!22341)))))

(declare-fun e!4512066 () Bool)

(declare-fun e!4512070 () Bool)

(assert (=> b!7580702 (= e!4512066 e!4512070)))

(declare-fun b!7580703 () Bool)

(assert (=> b!7580703 (= e!4512066 (= s!13436 (Cons!72838 (c!1398144 (regOne!40671 r!22341)) Nil!72838)))))

(declare-fun b!7580704 () Bool)

(declare-fun res!3036944 () Bool)

(declare-fun e!4512067 () Bool)

(assert (=> b!7580704 (=> res!3036944 e!4512067)))

(declare-fun call!694997 () Bool)

(assert (=> b!7580704 (= res!3036944 call!694997)))

(declare-fun e!4512065 () Bool)

(assert (=> b!7580704 (= e!4512065 e!4512067)))

(declare-fun b!7580706 () Bool)

(declare-fun c!1398276 () Bool)

(assert (=> b!7580706 (= c!1398276 ((_ is ElementMatch!20079) (regOne!40671 r!22341)))))

(declare-fun e!4512069 () Bool)

(assert (=> b!7580706 (= e!4512069 e!4512066)))

(declare-fun bm!694992 () Bool)

(declare-fun call!694998 () Bool)

(declare-fun c!1398278 () Bool)

(assert (=> bm!694992 (= call!694998 (Exists!4313 (ite c!1398278 lambda!466940 lambda!466941)))))

(declare-fun b!7580707 () Bool)

(declare-fun e!4512068 () Bool)

(assert (=> b!7580707 (= e!4512070 e!4512068)))

(declare-fun res!3036946 () Bool)

(assert (=> b!7580707 (= res!3036946 (matchRSpec!4392 (regOne!40671 (regOne!40671 r!22341)) s!13436))))

(assert (=> b!7580707 (=> res!3036946 e!4512068)))

(declare-fun b!7580708 () Bool)

(declare-fun e!4512071 () Bool)

(assert (=> b!7580708 (= e!4512071 call!694997)))

(declare-fun b!7580709 () Bool)

(assert (=> b!7580709 (= e!4512070 e!4512065)))

(assert (=> b!7580709 (= c!1398278 ((_ is Star!20079) (regOne!40671 r!22341)))))

(declare-fun bm!694993 () Bool)

(assert (=> bm!694993 (= call!694997 (isEmpty!41509 s!13436))))

(assert (=> b!7580710 (= e!4512067 call!694998)))

(declare-fun d!2318417 () Bool)

(declare-fun c!1398277 () Bool)

(assert (=> d!2318417 (= c!1398277 ((_ is EmptyExpr!20079) (regOne!40671 r!22341)))))

(assert (=> d!2318417 (= (matchRSpec!4392 (regOne!40671 r!22341) s!13436) e!4512071)))

(assert (=> b!7580705 (= e!4512065 call!694998)))

(declare-fun b!7580711 () Bool)

(assert (=> b!7580711 (= e!4512071 e!4512069)))

(declare-fun res!3036945 () Bool)

(assert (=> b!7580711 (= res!3036945 (not ((_ is EmptyLang!20079) (regOne!40671 r!22341))))))

(assert (=> b!7580711 (=> (not res!3036945) (not e!4512069))))

(declare-fun b!7580712 () Bool)

(assert (=> b!7580712 (= e!4512068 (matchRSpec!4392 (regTwo!40671 (regOne!40671 r!22341)) s!13436))))

(assert (= (and d!2318417 c!1398277) b!7580708))

(assert (= (and d!2318417 (not c!1398277)) b!7580711))

(assert (= (and b!7580711 res!3036945) b!7580706))

(assert (= (and b!7580706 c!1398276) b!7580703))

(assert (= (and b!7580706 (not c!1398276)) b!7580702))

(assert (= (and b!7580702 c!1398275) b!7580707))

(assert (= (and b!7580702 (not c!1398275)) b!7580709))

(assert (= (and b!7580707 (not res!3036946)) b!7580712))

(assert (= (and b!7580709 c!1398278) b!7580704))

(assert (= (and b!7580709 (not c!1398278)) b!7580705))

(assert (= (and b!7580704 (not res!3036944)) b!7580710))

(assert (= (or b!7580710 b!7580705) bm!694992))

(assert (= (or b!7580708 b!7580704) bm!694993))

(declare-fun m!8135752 () Bool)

(assert (=> bm!694992 m!8135752))

(declare-fun m!8135754 () Bool)

(assert (=> b!7580707 m!8135754))

(assert (=> bm!694993 m!8135508))

(declare-fun m!8135756 () Bool)

(assert (=> b!7580712 m!8135756))

(assert (=> b!7580271 d!2318417))

(declare-fun b!7580715 () Bool)

(declare-fun e!4512072 () Bool)

(declare-fun tp!2209132 () Bool)

(assert (=> b!7580715 (= e!4512072 tp!2209132)))

(declare-fun b!7580714 () Bool)

(declare-fun tp!2209136 () Bool)

(declare-fun tp!2209133 () Bool)

(assert (=> b!7580714 (= e!4512072 (and tp!2209136 tp!2209133))))

(assert (=> b!7580341 (= tp!2208993 e!4512072)))

(declare-fun b!7580716 () Bool)

(declare-fun tp!2209134 () Bool)

(declare-fun tp!2209135 () Bool)

(assert (=> b!7580716 (= e!4512072 (and tp!2209134 tp!2209135))))

(declare-fun b!7580713 () Bool)

(assert (=> b!7580713 (= e!4512072 tp_is_empty!50513)))

(assert (= (and b!7580341 ((_ is ElementMatch!20079) (reg!20408 (regOne!40670 r!22341)))) b!7580713))

(assert (= (and b!7580341 ((_ is Concat!28924) (reg!20408 (regOne!40670 r!22341)))) b!7580714))

(assert (= (and b!7580341 ((_ is Star!20079) (reg!20408 (regOne!40670 r!22341)))) b!7580715))

(assert (= (and b!7580341 ((_ is Union!20079) (reg!20408 (regOne!40670 r!22341)))) b!7580716))

(declare-fun b!7580719 () Bool)

(declare-fun e!4512073 () Bool)

(declare-fun tp!2209137 () Bool)

(assert (=> b!7580719 (= e!4512073 tp!2209137)))

(declare-fun b!7580718 () Bool)

(declare-fun tp!2209141 () Bool)

(declare-fun tp!2209138 () Bool)

(assert (=> b!7580718 (= e!4512073 (and tp!2209141 tp!2209138))))

(assert (=> b!7580336 (= tp!2208992 e!4512073)))

(declare-fun b!7580720 () Bool)

(declare-fun tp!2209139 () Bool)

(declare-fun tp!2209140 () Bool)

(assert (=> b!7580720 (= e!4512073 (and tp!2209139 tp!2209140))))

(declare-fun b!7580717 () Bool)

(assert (=> b!7580717 (= e!4512073 tp_is_empty!50513)))

(assert (= (and b!7580336 ((_ is ElementMatch!20079) (regOne!40670 (reg!20408 r!22341)))) b!7580717))

(assert (= (and b!7580336 ((_ is Concat!28924) (regOne!40670 (reg!20408 r!22341)))) b!7580718))

(assert (= (and b!7580336 ((_ is Star!20079) (regOne!40670 (reg!20408 r!22341)))) b!7580719))

(assert (= (and b!7580336 ((_ is Union!20079) (regOne!40670 (reg!20408 r!22341)))) b!7580720))

(declare-fun b!7580723 () Bool)

(declare-fun e!4512074 () Bool)

(declare-fun tp!2209142 () Bool)

(assert (=> b!7580723 (= e!4512074 tp!2209142)))

(declare-fun b!7580722 () Bool)

(declare-fun tp!2209146 () Bool)

(declare-fun tp!2209143 () Bool)

(assert (=> b!7580722 (= e!4512074 (and tp!2209146 tp!2209143))))

(assert (=> b!7580336 (= tp!2208989 e!4512074)))

(declare-fun b!7580724 () Bool)

(declare-fun tp!2209144 () Bool)

(declare-fun tp!2209145 () Bool)

(assert (=> b!7580724 (= e!4512074 (and tp!2209144 tp!2209145))))

(declare-fun b!7580721 () Bool)

(assert (=> b!7580721 (= e!4512074 tp_is_empty!50513)))

(assert (= (and b!7580336 ((_ is ElementMatch!20079) (regTwo!40670 (reg!20408 r!22341)))) b!7580721))

(assert (= (and b!7580336 ((_ is Concat!28924) (regTwo!40670 (reg!20408 r!22341)))) b!7580722))

(assert (= (and b!7580336 ((_ is Star!20079) (regTwo!40670 (reg!20408 r!22341)))) b!7580723))

(assert (= (and b!7580336 ((_ is Union!20079) (regTwo!40670 (reg!20408 r!22341)))) b!7580724))

(declare-fun b!7580727 () Bool)

(declare-fun e!4512075 () Bool)

(declare-fun tp!2209147 () Bool)

(assert (=> b!7580727 (= e!4512075 tp!2209147)))

(declare-fun b!7580726 () Bool)

(declare-fun tp!2209151 () Bool)

(declare-fun tp!2209148 () Bool)

(assert (=> b!7580726 (= e!4512075 (and tp!2209151 tp!2209148))))

(assert (=> b!7580345 (= tp!2208998 e!4512075)))

(declare-fun b!7580728 () Bool)

(declare-fun tp!2209149 () Bool)

(declare-fun tp!2209150 () Bool)

(assert (=> b!7580728 (= e!4512075 (and tp!2209149 tp!2209150))))

(declare-fun b!7580725 () Bool)

(assert (=> b!7580725 (= e!4512075 tp_is_empty!50513)))

(assert (= (and b!7580345 ((_ is ElementMatch!20079) (reg!20408 (regTwo!40670 r!22341)))) b!7580725))

(assert (= (and b!7580345 ((_ is Concat!28924) (reg!20408 (regTwo!40670 r!22341)))) b!7580726))

(assert (= (and b!7580345 ((_ is Star!20079) (reg!20408 (regTwo!40670 r!22341)))) b!7580727))

(assert (= (and b!7580345 ((_ is Union!20079) (reg!20408 (regTwo!40670 r!22341)))) b!7580728))

(declare-fun b!7580731 () Bool)

(declare-fun e!4512076 () Bool)

(declare-fun tp!2209152 () Bool)

(assert (=> b!7580731 (= e!4512076 tp!2209152)))

(declare-fun b!7580730 () Bool)

(declare-fun tp!2209156 () Bool)

(declare-fun tp!2209153 () Bool)

(assert (=> b!7580730 (= e!4512076 (and tp!2209156 tp!2209153))))

(assert (=> b!7580340 (= tp!2208997 e!4512076)))

(declare-fun b!7580732 () Bool)

(declare-fun tp!2209154 () Bool)

(declare-fun tp!2209155 () Bool)

(assert (=> b!7580732 (= e!4512076 (and tp!2209154 tp!2209155))))

(declare-fun b!7580729 () Bool)

(assert (=> b!7580729 (= e!4512076 tp_is_empty!50513)))

(assert (= (and b!7580340 ((_ is ElementMatch!20079) (regOne!40670 (regOne!40670 r!22341)))) b!7580729))

(assert (= (and b!7580340 ((_ is Concat!28924) (regOne!40670 (regOne!40670 r!22341)))) b!7580730))

(assert (= (and b!7580340 ((_ is Star!20079) (regOne!40670 (regOne!40670 r!22341)))) b!7580731))

(assert (= (and b!7580340 ((_ is Union!20079) (regOne!40670 (regOne!40670 r!22341)))) b!7580732))

(declare-fun b!7580735 () Bool)

(declare-fun e!4512077 () Bool)

(declare-fun tp!2209157 () Bool)

(assert (=> b!7580735 (= e!4512077 tp!2209157)))

(declare-fun b!7580734 () Bool)

(declare-fun tp!2209161 () Bool)

(declare-fun tp!2209158 () Bool)

(assert (=> b!7580734 (= e!4512077 (and tp!2209161 tp!2209158))))

(assert (=> b!7580340 (= tp!2208994 e!4512077)))

(declare-fun b!7580736 () Bool)

(declare-fun tp!2209159 () Bool)

(declare-fun tp!2209160 () Bool)

(assert (=> b!7580736 (= e!4512077 (and tp!2209159 tp!2209160))))

(declare-fun b!7580733 () Bool)

(assert (=> b!7580733 (= e!4512077 tp_is_empty!50513)))

(assert (= (and b!7580340 ((_ is ElementMatch!20079) (regTwo!40670 (regOne!40670 r!22341)))) b!7580733))

(assert (= (and b!7580340 ((_ is Concat!28924) (regTwo!40670 (regOne!40670 r!22341)))) b!7580734))

(assert (= (and b!7580340 ((_ is Star!20079) (regTwo!40670 (regOne!40670 r!22341)))) b!7580735))

(assert (= (and b!7580340 ((_ is Union!20079) (regTwo!40670 (regOne!40670 r!22341)))) b!7580736))

(declare-fun b!7580739 () Bool)

(declare-fun e!4512078 () Bool)

(declare-fun tp!2209162 () Bool)

(assert (=> b!7580739 (= e!4512078 tp!2209162)))

(declare-fun b!7580738 () Bool)

(declare-fun tp!2209166 () Bool)

(declare-fun tp!2209163 () Bool)

(assert (=> b!7580738 (= e!4512078 (and tp!2209166 tp!2209163))))

(assert (=> b!7580344 (= tp!2209002 e!4512078)))

(declare-fun b!7580740 () Bool)

(declare-fun tp!2209164 () Bool)

(declare-fun tp!2209165 () Bool)

(assert (=> b!7580740 (= e!4512078 (and tp!2209164 tp!2209165))))

(declare-fun b!7580737 () Bool)

(assert (=> b!7580737 (= e!4512078 tp_is_empty!50513)))

(assert (= (and b!7580344 ((_ is ElementMatch!20079) (regOne!40670 (regTwo!40670 r!22341)))) b!7580737))

(assert (= (and b!7580344 ((_ is Concat!28924) (regOne!40670 (regTwo!40670 r!22341)))) b!7580738))

(assert (= (and b!7580344 ((_ is Star!20079) (regOne!40670 (regTwo!40670 r!22341)))) b!7580739))

(assert (= (and b!7580344 ((_ is Union!20079) (regOne!40670 (regTwo!40670 r!22341)))) b!7580740))

(declare-fun b!7580743 () Bool)

(declare-fun e!4512079 () Bool)

(declare-fun tp!2209167 () Bool)

(assert (=> b!7580743 (= e!4512079 tp!2209167)))

(declare-fun b!7580742 () Bool)

(declare-fun tp!2209171 () Bool)

(declare-fun tp!2209168 () Bool)

(assert (=> b!7580742 (= e!4512079 (and tp!2209171 tp!2209168))))

(assert (=> b!7580344 (= tp!2208999 e!4512079)))

(declare-fun b!7580744 () Bool)

(declare-fun tp!2209169 () Bool)

(declare-fun tp!2209170 () Bool)

(assert (=> b!7580744 (= e!4512079 (and tp!2209169 tp!2209170))))

(declare-fun b!7580741 () Bool)

(assert (=> b!7580741 (= e!4512079 tp_is_empty!50513)))

(assert (= (and b!7580344 ((_ is ElementMatch!20079) (regTwo!40670 (regTwo!40670 r!22341)))) b!7580741))

(assert (= (and b!7580344 ((_ is Concat!28924) (regTwo!40670 (regTwo!40670 r!22341)))) b!7580742))

(assert (= (and b!7580344 ((_ is Star!20079) (regTwo!40670 (regTwo!40670 r!22341)))) b!7580743))

(assert (= (and b!7580344 ((_ is Union!20079) (regTwo!40670 (regTwo!40670 r!22341)))) b!7580744))

(declare-fun b!7580747 () Bool)

(declare-fun e!4512080 () Bool)

(declare-fun tp!2209172 () Bool)

(assert (=> b!7580747 (= e!4512080 tp!2209172)))

(declare-fun b!7580746 () Bool)

(declare-fun tp!2209176 () Bool)

(declare-fun tp!2209173 () Bool)

(assert (=> b!7580746 (= e!4512080 (and tp!2209176 tp!2209173))))

(assert (=> b!7580334 (= tp!2208985 e!4512080)))

(declare-fun b!7580748 () Bool)

(declare-fun tp!2209174 () Bool)

(declare-fun tp!2209175 () Bool)

(assert (=> b!7580748 (= e!4512080 (and tp!2209174 tp!2209175))))

(declare-fun b!7580745 () Bool)

(assert (=> b!7580745 (= e!4512080 tp_is_empty!50513)))

(assert (= (and b!7580334 ((_ is ElementMatch!20079) (regOne!40671 (regTwo!40671 r!22341)))) b!7580745))

(assert (= (and b!7580334 ((_ is Concat!28924) (regOne!40671 (regTwo!40671 r!22341)))) b!7580746))

(assert (= (and b!7580334 ((_ is Star!20079) (regOne!40671 (regTwo!40671 r!22341)))) b!7580747))

(assert (= (and b!7580334 ((_ is Union!20079) (regOne!40671 (regTwo!40671 r!22341)))) b!7580748))

(declare-fun b!7580751 () Bool)

(declare-fun e!4512081 () Bool)

(declare-fun tp!2209177 () Bool)

(assert (=> b!7580751 (= e!4512081 tp!2209177)))

(declare-fun b!7580750 () Bool)

(declare-fun tp!2209181 () Bool)

(declare-fun tp!2209178 () Bool)

(assert (=> b!7580750 (= e!4512081 (and tp!2209181 tp!2209178))))

(assert (=> b!7580334 (= tp!2208986 e!4512081)))

(declare-fun b!7580752 () Bool)

(declare-fun tp!2209179 () Bool)

(declare-fun tp!2209180 () Bool)

(assert (=> b!7580752 (= e!4512081 (and tp!2209179 tp!2209180))))

(declare-fun b!7580749 () Bool)

(assert (=> b!7580749 (= e!4512081 tp_is_empty!50513)))

(assert (= (and b!7580334 ((_ is ElementMatch!20079) (regTwo!40671 (regTwo!40671 r!22341)))) b!7580749))

(assert (= (and b!7580334 ((_ is Concat!28924) (regTwo!40671 (regTwo!40671 r!22341)))) b!7580750))

(assert (= (and b!7580334 ((_ is Star!20079) (regTwo!40671 (regTwo!40671 r!22341)))) b!7580751))

(assert (= (and b!7580334 ((_ is Union!20079) (regTwo!40671 (regTwo!40671 r!22341)))) b!7580752))

(declare-fun b!7580755 () Bool)

(declare-fun e!4512082 () Bool)

(declare-fun tp!2209182 () Bool)

(assert (=> b!7580755 (= e!4512082 tp!2209182)))

(declare-fun b!7580754 () Bool)

(declare-fun tp!2209186 () Bool)

(declare-fun tp!2209183 () Bool)

(assert (=> b!7580754 (= e!4512082 (and tp!2209186 tp!2209183))))

(assert (=> b!7580329 (= tp!2208978 e!4512082)))

(declare-fun b!7580756 () Bool)

(declare-fun tp!2209184 () Bool)

(declare-fun tp!2209185 () Bool)

(assert (=> b!7580756 (= e!4512082 (and tp!2209184 tp!2209185))))

(declare-fun b!7580753 () Bool)

(assert (=> b!7580753 (= e!4512082 tp_is_empty!50513)))

(assert (= (and b!7580329 ((_ is ElementMatch!20079) (reg!20408 (regOne!40671 r!22341)))) b!7580753))

(assert (= (and b!7580329 ((_ is Concat!28924) (reg!20408 (regOne!40671 r!22341)))) b!7580754))

(assert (= (and b!7580329 ((_ is Star!20079) (reg!20408 (regOne!40671 r!22341)))) b!7580755))

(assert (= (and b!7580329 ((_ is Union!20079) (reg!20408 (regOne!40671 r!22341)))) b!7580756))

(declare-fun b!7580759 () Bool)

(declare-fun e!4512083 () Bool)

(declare-fun tp!2209187 () Bool)

(assert (=> b!7580759 (= e!4512083 tp!2209187)))

(declare-fun b!7580758 () Bool)

(declare-fun tp!2209191 () Bool)

(declare-fun tp!2209188 () Bool)

(assert (=> b!7580758 (= e!4512083 (and tp!2209191 tp!2209188))))

(assert (=> b!7580338 (= tp!2208990 e!4512083)))

(declare-fun b!7580760 () Bool)

(declare-fun tp!2209189 () Bool)

(declare-fun tp!2209190 () Bool)

(assert (=> b!7580760 (= e!4512083 (and tp!2209189 tp!2209190))))

(declare-fun b!7580757 () Bool)

(assert (=> b!7580757 (= e!4512083 tp_is_empty!50513)))

(assert (= (and b!7580338 ((_ is ElementMatch!20079) (regOne!40671 (reg!20408 r!22341)))) b!7580757))

(assert (= (and b!7580338 ((_ is Concat!28924) (regOne!40671 (reg!20408 r!22341)))) b!7580758))

(assert (= (and b!7580338 ((_ is Star!20079) (regOne!40671 (reg!20408 r!22341)))) b!7580759))

(assert (= (and b!7580338 ((_ is Union!20079) (regOne!40671 (reg!20408 r!22341)))) b!7580760))

(declare-fun b!7580763 () Bool)

(declare-fun e!4512084 () Bool)

(declare-fun tp!2209192 () Bool)

(assert (=> b!7580763 (= e!4512084 tp!2209192)))

(declare-fun b!7580762 () Bool)

(declare-fun tp!2209196 () Bool)

(declare-fun tp!2209193 () Bool)

(assert (=> b!7580762 (= e!4512084 (and tp!2209196 tp!2209193))))

(assert (=> b!7580338 (= tp!2208991 e!4512084)))

(declare-fun b!7580764 () Bool)

(declare-fun tp!2209194 () Bool)

(declare-fun tp!2209195 () Bool)

(assert (=> b!7580764 (= e!4512084 (and tp!2209194 tp!2209195))))

(declare-fun b!7580761 () Bool)

(assert (=> b!7580761 (= e!4512084 tp_is_empty!50513)))

(assert (= (and b!7580338 ((_ is ElementMatch!20079) (regTwo!40671 (reg!20408 r!22341)))) b!7580761))

(assert (= (and b!7580338 ((_ is Concat!28924) (regTwo!40671 (reg!20408 r!22341)))) b!7580762))

(assert (= (and b!7580338 ((_ is Star!20079) (regTwo!40671 (reg!20408 r!22341)))) b!7580763))

(assert (= (and b!7580338 ((_ is Union!20079) (regTwo!40671 (reg!20408 r!22341)))) b!7580764))

(declare-fun b!7580767 () Bool)

(declare-fun e!4512085 () Bool)

(declare-fun tp!2209197 () Bool)

(assert (=> b!7580767 (= e!4512085 tp!2209197)))

(declare-fun b!7580766 () Bool)

(declare-fun tp!2209201 () Bool)

(declare-fun tp!2209198 () Bool)

(assert (=> b!7580766 (= e!4512085 (and tp!2209201 tp!2209198))))

(assert (=> b!7580333 (= tp!2208983 e!4512085)))

(declare-fun b!7580768 () Bool)

(declare-fun tp!2209199 () Bool)

(declare-fun tp!2209200 () Bool)

(assert (=> b!7580768 (= e!4512085 (and tp!2209199 tp!2209200))))

(declare-fun b!7580765 () Bool)

(assert (=> b!7580765 (= e!4512085 tp_is_empty!50513)))

(assert (= (and b!7580333 ((_ is ElementMatch!20079) (reg!20408 (regTwo!40671 r!22341)))) b!7580765))

(assert (= (and b!7580333 ((_ is Concat!28924) (reg!20408 (regTwo!40671 r!22341)))) b!7580766))

(assert (= (and b!7580333 ((_ is Star!20079) (reg!20408 (regTwo!40671 r!22341)))) b!7580767))

(assert (= (and b!7580333 ((_ is Union!20079) (reg!20408 (regTwo!40671 r!22341)))) b!7580768))

(declare-fun b!7580771 () Bool)

(declare-fun e!4512086 () Bool)

(declare-fun tp!2209202 () Bool)

(assert (=> b!7580771 (= e!4512086 tp!2209202)))

(declare-fun b!7580770 () Bool)

(declare-fun tp!2209206 () Bool)

(declare-fun tp!2209203 () Bool)

(assert (=> b!7580770 (= e!4512086 (and tp!2209206 tp!2209203))))

(assert (=> b!7580328 (= tp!2208982 e!4512086)))

(declare-fun b!7580772 () Bool)

(declare-fun tp!2209204 () Bool)

(declare-fun tp!2209205 () Bool)

(assert (=> b!7580772 (= e!4512086 (and tp!2209204 tp!2209205))))

(declare-fun b!7580769 () Bool)

(assert (=> b!7580769 (= e!4512086 tp_is_empty!50513)))

(assert (= (and b!7580328 ((_ is ElementMatch!20079) (regOne!40670 (regOne!40671 r!22341)))) b!7580769))

(assert (= (and b!7580328 ((_ is Concat!28924) (regOne!40670 (regOne!40671 r!22341)))) b!7580770))

(assert (= (and b!7580328 ((_ is Star!20079) (regOne!40670 (regOne!40671 r!22341)))) b!7580771))

(assert (= (and b!7580328 ((_ is Union!20079) (regOne!40670 (regOne!40671 r!22341)))) b!7580772))

(declare-fun b!7580775 () Bool)

(declare-fun e!4512087 () Bool)

(declare-fun tp!2209207 () Bool)

(assert (=> b!7580775 (= e!4512087 tp!2209207)))

(declare-fun b!7580774 () Bool)

(declare-fun tp!2209211 () Bool)

(declare-fun tp!2209208 () Bool)

(assert (=> b!7580774 (= e!4512087 (and tp!2209211 tp!2209208))))

(assert (=> b!7580328 (= tp!2208979 e!4512087)))

(declare-fun b!7580776 () Bool)

(declare-fun tp!2209209 () Bool)

(declare-fun tp!2209210 () Bool)

(assert (=> b!7580776 (= e!4512087 (and tp!2209209 tp!2209210))))

(declare-fun b!7580773 () Bool)

(assert (=> b!7580773 (= e!4512087 tp_is_empty!50513)))

(assert (= (and b!7580328 ((_ is ElementMatch!20079) (regTwo!40670 (regOne!40671 r!22341)))) b!7580773))

(assert (= (and b!7580328 ((_ is Concat!28924) (regTwo!40670 (regOne!40671 r!22341)))) b!7580774))

(assert (= (and b!7580328 ((_ is Star!20079) (regTwo!40670 (regOne!40671 r!22341)))) b!7580775))

(assert (= (and b!7580328 ((_ is Union!20079) (regTwo!40670 (regOne!40671 r!22341)))) b!7580776))

(declare-fun b!7580779 () Bool)

(declare-fun e!4512088 () Bool)

(declare-fun tp!2209212 () Bool)

(assert (=> b!7580779 (= e!4512088 tp!2209212)))

(declare-fun b!7580778 () Bool)

(declare-fun tp!2209216 () Bool)

(declare-fun tp!2209213 () Bool)

(assert (=> b!7580778 (= e!4512088 (and tp!2209216 tp!2209213))))

(assert (=> b!7580342 (= tp!2208995 e!4512088)))

(declare-fun b!7580780 () Bool)

(declare-fun tp!2209214 () Bool)

(declare-fun tp!2209215 () Bool)

(assert (=> b!7580780 (= e!4512088 (and tp!2209214 tp!2209215))))

(declare-fun b!7580777 () Bool)

(assert (=> b!7580777 (= e!4512088 tp_is_empty!50513)))

(assert (= (and b!7580342 ((_ is ElementMatch!20079) (regOne!40671 (regOne!40670 r!22341)))) b!7580777))

(assert (= (and b!7580342 ((_ is Concat!28924) (regOne!40671 (regOne!40670 r!22341)))) b!7580778))

(assert (= (and b!7580342 ((_ is Star!20079) (regOne!40671 (regOne!40670 r!22341)))) b!7580779))

(assert (= (and b!7580342 ((_ is Union!20079) (regOne!40671 (regOne!40670 r!22341)))) b!7580780))

(declare-fun b!7580783 () Bool)

(declare-fun e!4512089 () Bool)

(declare-fun tp!2209217 () Bool)

(assert (=> b!7580783 (= e!4512089 tp!2209217)))

(declare-fun b!7580782 () Bool)

(declare-fun tp!2209221 () Bool)

(declare-fun tp!2209218 () Bool)

(assert (=> b!7580782 (= e!4512089 (and tp!2209221 tp!2209218))))

(assert (=> b!7580342 (= tp!2208996 e!4512089)))

(declare-fun b!7580784 () Bool)

(declare-fun tp!2209219 () Bool)

(declare-fun tp!2209220 () Bool)

(assert (=> b!7580784 (= e!4512089 (and tp!2209219 tp!2209220))))

(declare-fun b!7580781 () Bool)

(assert (=> b!7580781 (= e!4512089 tp_is_empty!50513)))

(assert (= (and b!7580342 ((_ is ElementMatch!20079) (regTwo!40671 (regOne!40670 r!22341)))) b!7580781))

(assert (= (and b!7580342 ((_ is Concat!28924) (regTwo!40671 (regOne!40670 r!22341)))) b!7580782))

(assert (= (and b!7580342 ((_ is Star!20079) (regTwo!40671 (regOne!40670 r!22341)))) b!7580783))

(assert (= (and b!7580342 ((_ is Union!20079) (regTwo!40671 (regOne!40670 r!22341)))) b!7580784))

(declare-fun b!7580787 () Bool)

(declare-fun e!4512090 () Bool)

(declare-fun tp!2209222 () Bool)

(assert (=> b!7580787 (= e!4512090 tp!2209222)))

(declare-fun b!7580786 () Bool)

(declare-fun tp!2209226 () Bool)

(declare-fun tp!2209223 () Bool)

(assert (=> b!7580786 (= e!4512090 (and tp!2209226 tp!2209223))))

(assert (=> b!7580337 (= tp!2208988 e!4512090)))

(declare-fun b!7580788 () Bool)

(declare-fun tp!2209224 () Bool)

(declare-fun tp!2209225 () Bool)

(assert (=> b!7580788 (= e!4512090 (and tp!2209224 tp!2209225))))

(declare-fun b!7580785 () Bool)

(assert (=> b!7580785 (= e!4512090 tp_is_empty!50513)))

(assert (= (and b!7580337 ((_ is ElementMatch!20079) (reg!20408 (reg!20408 r!22341)))) b!7580785))

(assert (= (and b!7580337 ((_ is Concat!28924) (reg!20408 (reg!20408 r!22341)))) b!7580786))

(assert (= (and b!7580337 ((_ is Star!20079) (reg!20408 (reg!20408 r!22341)))) b!7580787))

(assert (= (and b!7580337 ((_ is Union!20079) (reg!20408 (reg!20408 r!22341)))) b!7580788))

(declare-fun b!7580791 () Bool)

(declare-fun e!4512091 () Bool)

(declare-fun tp!2209227 () Bool)

(assert (=> b!7580791 (= e!4512091 tp!2209227)))

(declare-fun b!7580790 () Bool)

(declare-fun tp!2209231 () Bool)

(declare-fun tp!2209228 () Bool)

(assert (=> b!7580790 (= e!4512091 (and tp!2209231 tp!2209228))))

(assert (=> b!7580332 (= tp!2208987 e!4512091)))

(declare-fun b!7580792 () Bool)

(declare-fun tp!2209229 () Bool)

(declare-fun tp!2209230 () Bool)

(assert (=> b!7580792 (= e!4512091 (and tp!2209229 tp!2209230))))

(declare-fun b!7580789 () Bool)

(assert (=> b!7580789 (= e!4512091 tp_is_empty!50513)))

(assert (= (and b!7580332 ((_ is ElementMatch!20079) (regOne!40670 (regTwo!40671 r!22341)))) b!7580789))

(assert (= (and b!7580332 ((_ is Concat!28924) (regOne!40670 (regTwo!40671 r!22341)))) b!7580790))

(assert (= (and b!7580332 ((_ is Star!20079) (regOne!40670 (regTwo!40671 r!22341)))) b!7580791))

(assert (= (and b!7580332 ((_ is Union!20079) (regOne!40670 (regTwo!40671 r!22341)))) b!7580792))

(declare-fun b!7580795 () Bool)

(declare-fun e!4512092 () Bool)

(declare-fun tp!2209232 () Bool)

(assert (=> b!7580795 (= e!4512092 tp!2209232)))

(declare-fun b!7580794 () Bool)

(declare-fun tp!2209236 () Bool)

(declare-fun tp!2209233 () Bool)

(assert (=> b!7580794 (= e!4512092 (and tp!2209236 tp!2209233))))

(assert (=> b!7580332 (= tp!2208984 e!4512092)))

(declare-fun b!7580796 () Bool)

(declare-fun tp!2209234 () Bool)

(declare-fun tp!2209235 () Bool)

(assert (=> b!7580796 (= e!4512092 (and tp!2209234 tp!2209235))))

(declare-fun b!7580793 () Bool)

(assert (=> b!7580793 (= e!4512092 tp_is_empty!50513)))

(assert (= (and b!7580332 ((_ is ElementMatch!20079) (regTwo!40670 (regTwo!40671 r!22341)))) b!7580793))

(assert (= (and b!7580332 ((_ is Concat!28924) (regTwo!40670 (regTwo!40671 r!22341)))) b!7580794))

(assert (= (and b!7580332 ((_ is Star!20079) (regTwo!40670 (regTwo!40671 r!22341)))) b!7580795))

(assert (= (and b!7580332 ((_ is Union!20079) (regTwo!40670 (regTwo!40671 r!22341)))) b!7580796))

(declare-fun b!7580799 () Bool)

(declare-fun e!4512093 () Bool)

(declare-fun tp!2209237 () Bool)

(assert (=> b!7580799 (= e!4512093 tp!2209237)))

(declare-fun b!7580798 () Bool)

(declare-fun tp!2209241 () Bool)

(declare-fun tp!2209238 () Bool)

(assert (=> b!7580798 (= e!4512093 (and tp!2209241 tp!2209238))))

(assert (=> b!7580346 (= tp!2209000 e!4512093)))

(declare-fun b!7580800 () Bool)

(declare-fun tp!2209239 () Bool)

(declare-fun tp!2209240 () Bool)

(assert (=> b!7580800 (= e!4512093 (and tp!2209239 tp!2209240))))

(declare-fun b!7580797 () Bool)

(assert (=> b!7580797 (= e!4512093 tp_is_empty!50513)))

(assert (= (and b!7580346 ((_ is ElementMatch!20079) (regOne!40671 (regTwo!40670 r!22341)))) b!7580797))

(assert (= (and b!7580346 ((_ is Concat!28924) (regOne!40671 (regTwo!40670 r!22341)))) b!7580798))

(assert (= (and b!7580346 ((_ is Star!20079) (regOne!40671 (regTwo!40670 r!22341)))) b!7580799))

(assert (= (and b!7580346 ((_ is Union!20079) (regOne!40671 (regTwo!40670 r!22341)))) b!7580800))

(declare-fun b!7580803 () Bool)

(declare-fun e!4512094 () Bool)

(declare-fun tp!2209242 () Bool)

(assert (=> b!7580803 (= e!4512094 tp!2209242)))

(declare-fun b!7580802 () Bool)

(declare-fun tp!2209246 () Bool)

(declare-fun tp!2209243 () Bool)

(assert (=> b!7580802 (= e!4512094 (and tp!2209246 tp!2209243))))

(assert (=> b!7580346 (= tp!2209001 e!4512094)))

(declare-fun b!7580804 () Bool)

(declare-fun tp!2209244 () Bool)

(declare-fun tp!2209245 () Bool)

(assert (=> b!7580804 (= e!4512094 (and tp!2209244 tp!2209245))))

(declare-fun b!7580801 () Bool)

(assert (=> b!7580801 (= e!4512094 tp_is_empty!50513)))

(assert (= (and b!7580346 ((_ is ElementMatch!20079) (regTwo!40671 (regTwo!40670 r!22341)))) b!7580801))

(assert (= (and b!7580346 ((_ is Concat!28924) (regTwo!40671 (regTwo!40670 r!22341)))) b!7580802))

(assert (= (and b!7580346 ((_ is Star!20079) (regTwo!40671 (regTwo!40670 r!22341)))) b!7580803))

(assert (= (and b!7580346 ((_ is Union!20079) (regTwo!40671 (regTwo!40670 r!22341)))) b!7580804))

(declare-fun b!7580805 () Bool)

(declare-fun e!4512095 () Bool)

(declare-fun tp!2209247 () Bool)

(assert (=> b!7580805 (= e!4512095 (and tp_is_empty!50513 tp!2209247))))

(assert (=> b!7580351 (= tp!2209005 e!4512095)))

(assert (= (and b!7580351 ((_ is Cons!72838) (t!387697 (t!387697 s!13436)))) b!7580805))

(declare-fun b!7580808 () Bool)

(declare-fun e!4512096 () Bool)

(declare-fun tp!2209248 () Bool)

(assert (=> b!7580808 (= e!4512096 tp!2209248)))

(declare-fun b!7580807 () Bool)

(declare-fun tp!2209252 () Bool)

(declare-fun tp!2209249 () Bool)

(assert (=> b!7580807 (= e!4512096 (and tp!2209252 tp!2209249))))

(assert (=> b!7580330 (= tp!2208980 e!4512096)))

(declare-fun b!7580809 () Bool)

(declare-fun tp!2209250 () Bool)

(declare-fun tp!2209251 () Bool)

(assert (=> b!7580809 (= e!4512096 (and tp!2209250 tp!2209251))))

(declare-fun b!7580806 () Bool)

(assert (=> b!7580806 (= e!4512096 tp_is_empty!50513)))

(assert (= (and b!7580330 ((_ is ElementMatch!20079) (regOne!40671 (regOne!40671 r!22341)))) b!7580806))

(assert (= (and b!7580330 ((_ is Concat!28924) (regOne!40671 (regOne!40671 r!22341)))) b!7580807))

(assert (= (and b!7580330 ((_ is Star!20079) (regOne!40671 (regOne!40671 r!22341)))) b!7580808))

(assert (= (and b!7580330 ((_ is Union!20079) (regOne!40671 (regOne!40671 r!22341)))) b!7580809))

(declare-fun b!7580812 () Bool)

(declare-fun e!4512097 () Bool)

(declare-fun tp!2209253 () Bool)

(assert (=> b!7580812 (= e!4512097 tp!2209253)))

(declare-fun b!7580811 () Bool)

(declare-fun tp!2209257 () Bool)

(declare-fun tp!2209254 () Bool)

(assert (=> b!7580811 (= e!4512097 (and tp!2209257 tp!2209254))))

(assert (=> b!7580330 (= tp!2208981 e!4512097)))

(declare-fun b!7580813 () Bool)

(declare-fun tp!2209255 () Bool)

(declare-fun tp!2209256 () Bool)

(assert (=> b!7580813 (= e!4512097 (and tp!2209255 tp!2209256))))

(declare-fun b!7580810 () Bool)

(assert (=> b!7580810 (= e!4512097 tp_is_empty!50513)))

(assert (= (and b!7580330 ((_ is ElementMatch!20079) (regTwo!40671 (regOne!40671 r!22341)))) b!7580810))

(assert (= (and b!7580330 ((_ is Concat!28924) (regTwo!40671 (regOne!40671 r!22341)))) b!7580811))

(assert (= (and b!7580330 ((_ is Star!20079) (regTwo!40671 (regOne!40671 r!22341)))) b!7580812))

(assert (= (and b!7580330 ((_ is Union!20079) (regTwo!40671 (regOne!40671 r!22341)))) b!7580813))

(check-sat (not b!7580715) (not b!7580726) (not b!7580798) (not b!7580807) (not b!7580809) (not bm!694953) (not b!7580774) (not b!7580795) (not b!7580759) (not b!7580758) (not b!7580740) (not b!7580796) (not b!7580799) (not b!7580782) (not b!7580723) (not b!7580775) (not b!7580776) (not b!7580746) (not b!7580772) (not d!2318411) (not b!7580714) (not d!2318401) (not d!2318367) (not b!7580804) (not bm!694992) (not b!7580641) (not bm!694975) (not b!7580712) (not b!7580764) (not b!7580762) (not b!7580780) (not d!2318407) (not b!7580744) (not b!7580754) (not b!7580664) (not b!7580751) (not b!7580735) (not b!7580720) (not bm!694970) (not b!7580784) (not bm!694979) tp_is_empty!50513 (not bm!694991) (not b!7580719) (not b!7580489) (not bm!694976) (not d!2318409) (not b!7580731) (not b!7580791) (not d!2318415) (not b!7580736) (not b!7580786) (not b!7580752) (not b!7580503) (not bm!694973) (not b!7580770) (not b!7580748) (not b!7580783) (not b!7580727) (not b!7580670) (not b!7580724) (not b!7580575) (not b!7580768) (not b!7580742) (not b!7580766) (not b!7580732) (not d!2318413) (not b!7580718) (not b!7580767) (not bm!694993) (not b!7580667) (not bm!694957) (not b!7580743) (not b!7580508) (not bm!694963) (not b!7580813) (not b!7580755) (not b!7580734) (not b!7580794) (not bm!694990) (not b!7580738) (not b!7580779) (not b!7580800) (not b!7580669) (not b!7580760) (not b!7580788) (not b!7580792) (not b!7580802) (not d!2318395) (not bm!694962) (not bm!694955) (not b!7580730) (not bm!694969) (not b!7580778) (not b!7580747) (not bm!694968) (not b!7580812) (not b!7580716) (not b!7580790) (not b!7580811) (not b!7580739) (not b!7580808) (not d!2318397) (not b!7580763) (not b!7580616) (not bm!694978) (not b!7580658) (not bm!694954) (not b!7580728) (not b!7580722) (not b!7580660) (not b!7580805) (not bm!694972) (not b!7580803) (not b!7580697) (not b!7580750) (not b!7580771) (not b!7580707) (not b!7580756) (not b!7580787))
(check-sat)

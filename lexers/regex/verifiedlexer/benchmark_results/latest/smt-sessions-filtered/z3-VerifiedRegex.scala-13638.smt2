; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!731744 () Bool)

(assert start!731744)

(declare-fun b!7578176 () Bool)

(declare-fun e!4510797 () Bool)

(declare-fun tp_is_empty!50497 () Bool)

(declare-fun tp!2208227 () Bool)

(assert (=> b!7578176 (= e!4510797 (and tp_is_empty!50497 tp!2208227))))

(declare-fun b!7578177 () Bool)

(declare-fun e!4510799 () Bool)

(declare-datatypes ((C!40468 0))(
  ( (C!40469 (val!30674 Int)) )
))
(declare-datatypes ((Regex!20071 0))(
  ( (ElementMatch!20071 (c!1397850 C!40468)) (Concat!28916 (regOne!40654 Regex!20071) (regTwo!40654 Regex!20071)) (EmptyExpr!20071) (Star!20071 (reg!20400 Regex!20071)) (EmptyLang!20071) (Union!20071 (regOne!40655 Regex!20071) (regTwo!40655 Regex!20071)) )
))
(declare-fun r!22341 () Regex!20071)

(declare-fun lt!2652445 () Bool)

(get-info :version)

(assert (=> b!7578177 (= e!4510799 (not (or (not ((_ is EmptyLang!20071) r!22341)) (not lt!2652445))))))

(declare-datatypes ((List!72954 0))(
  ( (Nil!72830) (Cons!72830 (h!79278 C!40468) (t!387689 List!72954)) )
))
(declare-fun s!13436 () List!72954)

(declare-fun matchRSpec!4384 (Regex!20071 List!72954) Bool)

(assert (=> b!7578177 (= lt!2652445 (matchRSpec!4384 r!22341 s!13436))))

(declare-fun matchR!9663 (Regex!20071 List!72954) Bool)

(assert (=> b!7578177 (= lt!2652445 (matchR!9663 r!22341 s!13436))))

(declare-datatypes ((Unit!167098 0))(
  ( (Unit!167099) )
))
(declare-fun lt!2652446 () Unit!167098)

(declare-fun mainMatchTheorem!4378 (Regex!20071 List!72954) Unit!167098)

(assert (=> b!7578177 (= lt!2652446 (mainMatchTheorem!4378 r!22341 s!13436))))

(declare-fun b!7578178 () Bool)

(declare-fun res!3036068 () Bool)

(assert (=> b!7578178 (=> (not res!3036068) (not e!4510799))))

(declare-fun lostCause!1847 (Regex!20071) Bool)

(assert (=> b!7578178 (= res!3036068 (lostCause!1847 r!22341))))

(declare-fun b!7578179 () Bool)

(declare-fun e!4510798 () Bool)

(assert (=> b!7578179 (= e!4510798 tp_is_empty!50497)))

(declare-fun b!7578180 () Bool)

(declare-fun res!3036070 () Bool)

(assert (=> b!7578180 (=> (not res!3036070) (not e!4510799))))

(declare-fun isEmpty!41499 (List!72954) Bool)

(assert (=> b!7578180 (= res!3036070 (not (isEmpty!41499 s!13436)))))

(declare-fun b!7578181 () Bool)

(declare-fun tp!2208226 () Bool)

(declare-fun tp!2208229 () Bool)

(assert (=> b!7578181 (= e!4510798 (and tp!2208226 tp!2208229))))

(declare-fun res!3036069 () Bool)

(assert (=> start!731744 (=> (not res!3036069) (not e!4510799))))

(declare-fun validRegex!10499 (Regex!20071) Bool)

(assert (=> start!731744 (= res!3036069 (validRegex!10499 r!22341))))

(assert (=> start!731744 e!4510799))

(assert (=> start!731744 e!4510798))

(assert (=> start!731744 e!4510797))

(declare-fun b!7578182 () Bool)

(declare-fun tp!2208228 () Bool)

(declare-fun tp!2208225 () Bool)

(assert (=> b!7578182 (= e!4510798 (and tp!2208228 tp!2208225))))

(declare-fun b!7578183 () Bool)

(declare-fun tp!2208224 () Bool)

(assert (=> b!7578183 (= e!4510798 tp!2208224)))

(assert (= (and start!731744 res!3036069) b!7578178))

(assert (= (and b!7578178 res!3036068) b!7578180))

(assert (= (and b!7578180 res!3036070) b!7578177))

(assert (= (and start!731744 ((_ is ElementMatch!20071) r!22341)) b!7578179))

(assert (= (and start!731744 ((_ is Concat!28916) r!22341)) b!7578182))

(assert (= (and start!731744 ((_ is Star!20071) r!22341)) b!7578183))

(assert (= (and start!731744 ((_ is Union!20071) r!22341)) b!7578181))

(assert (= (and start!731744 ((_ is Cons!72830) s!13436)) b!7578176))

(declare-fun m!8135046 () Bool)

(assert (=> b!7578177 m!8135046))

(declare-fun m!8135048 () Bool)

(assert (=> b!7578177 m!8135048))

(declare-fun m!8135050 () Bool)

(assert (=> b!7578177 m!8135050))

(declare-fun m!8135052 () Bool)

(assert (=> b!7578178 m!8135052))

(declare-fun m!8135054 () Bool)

(assert (=> b!7578180 m!8135054))

(declare-fun m!8135056 () Bool)

(assert (=> start!731744 m!8135056))

(check-sat (not b!7578182) (not b!7578176) (not b!7578180) (not b!7578183) tp_is_empty!50497 (not b!7578178) (not b!7578177) (not b!7578181) (not start!731744))
(check-sat)
(get-model)

(declare-fun d!2318155 () Bool)

(assert (=> d!2318155 (= (isEmpty!41499 s!13436) ((_ is Nil!72830) s!13436))))

(assert (=> b!7578180 d!2318155))

(declare-fun b!7578220 () Bool)

(declare-fun e!4510829 () Bool)

(declare-fun e!4510830 () Bool)

(assert (=> b!7578220 (= e!4510829 e!4510830)))

(declare-fun res!3036093 () Bool)

(declare-fun nullable!8764 (Regex!20071) Bool)

(assert (=> b!7578220 (= res!3036093 (not (nullable!8764 (reg!20400 r!22341))))))

(assert (=> b!7578220 (=> (not res!3036093) (not e!4510830))))

(declare-fun b!7578221 () Bool)

(declare-fun call!694689 () Bool)

(assert (=> b!7578221 (= e!4510830 call!694689)))

(declare-fun b!7578222 () Bool)

(declare-fun e!4510831 () Bool)

(assert (=> b!7578222 (= e!4510829 e!4510831)))

(declare-fun c!1397860 () Bool)

(assert (=> b!7578222 (= c!1397860 ((_ is Union!20071) r!22341))))

(declare-fun b!7578223 () Bool)

(declare-fun e!4510833 () Bool)

(assert (=> b!7578223 (= e!4510833 e!4510829)))

(declare-fun c!1397859 () Bool)

(assert (=> b!7578223 (= c!1397859 ((_ is Star!20071) r!22341))))

(declare-fun bm!694682 () Bool)

(declare-fun call!694687 () Bool)

(assert (=> bm!694682 (= call!694687 (validRegex!10499 (ite c!1397860 (regOne!40655 r!22341) (regTwo!40654 r!22341))))))

(declare-fun b!7578224 () Bool)

(declare-fun res!3036095 () Bool)

(declare-fun e!4510832 () Bool)

(assert (=> b!7578224 (=> res!3036095 e!4510832)))

(assert (=> b!7578224 (= res!3036095 (not ((_ is Concat!28916) r!22341)))))

(assert (=> b!7578224 (= e!4510831 e!4510832)))

(declare-fun bm!694683 () Bool)

(assert (=> bm!694683 (= call!694689 (validRegex!10499 (ite c!1397859 (reg!20400 r!22341) (ite c!1397860 (regTwo!40655 r!22341) (regOne!40654 r!22341)))))))

(declare-fun bm!694684 () Bool)

(declare-fun call!694688 () Bool)

(assert (=> bm!694684 (= call!694688 call!694689)))

(declare-fun b!7578226 () Bool)

(declare-fun e!4510828 () Bool)

(assert (=> b!7578226 (= e!4510832 e!4510828)))

(declare-fun res!3036092 () Bool)

(assert (=> b!7578226 (=> (not res!3036092) (not e!4510828))))

(assert (=> b!7578226 (= res!3036092 call!694688)))

(declare-fun b!7578227 () Bool)

(assert (=> b!7578227 (= e!4510828 call!694687)))

(declare-fun b!7578228 () Bool)

(declare-fun e!4510834 () Bool)

(assert (=> b!7578228 (= e!4510834 call!694688)))

(declare-fun b!7578225 () Bool)

(declare-fun res!3036094 () Bool)

(assert (=> b!7578225 (=> (not res!3036094) (not e!4510834))))

(assert (=> b!7578225 (= res!3036094 call!694687)))

(assert (=> b!7578225 (= e!4510831 e!4510834)))

(declare-fun d!2318157 () Bool)

(declare-fun res!3036091 () Bool)

(assert (=> d!2318157 (=> res!3036091 e!4510833)))

(assert (=> d!2318157 (= res!3036091 ((_ is ElementMatch!20071) r!22341))))

(assert (=> d!2318157 (= (validRegex!10499 r!22341) e!4510833)))

(assert (= (and d!2318157 (not res!3036091)) b!7578223))

(assert (= (and b!7578223 c!1397859) b!7578220))

(assert (= (and b!7578223 (not c!1397859)) b!7578222))

(assert (= (and b!7578220 res!3036093) b!7578221))

(assert (= (and b!7578222 c!1397860) b!7578225))

(assert (= (and b!7578222 (not c!1397860)) b!7578224))

(assert (= (and b!7578225 res!3036094) b!7578228))

(assert (= (and b!7578224 (not res!3036095)) b!7578226))

(assert (= (and b!7578226 res!3036092) b!7578227))

(assert (= (or b!7578228 b!7578226) bm!694684))

(assert (= (or b!7578225 b!7578227) bm!694682))

(assert (= (or b!7578221 bm!694684) bm!694683))

(declare-fun m!8135058 () Bool)

(assert (=> b!7578220 m!8135058))

(declare-fun m!8135060 () Bool)

(assert (=> bm!694682 m!8135060))

(declare-fun m!8135062 () Bool)

(assert (=> bm!694683 m!8135062))

(assert (=> start!731744 d!2318157))

(declare-fun d!2318161 () Bool)

(declare-fun lostCauseFct!500 (Regex!20071) Bool)

(assert (=> d!2318161 (= (lostCause!1847 r!22341) (lostCauseFct!500 r!22341))))

(declare-fun bs!1940929 () Bool)

(assert (= bs!1940929 d!2318161))

(declare-fun m!8135070 () Bool)

(assert (=> bs!1940929 m!8135070))

(assert (=> b!7578178 d!2318161))

(declare-fun b!7578400 () Bool)

(assert (=> b!7578400 true))

(assert (=> b!7578400 true))

(declare-fun bs!1940933 () Bool)

(declare-fun b!7578402 () Bool)

(assert (= bs!1940933 (and b!7578402 b!7578400)))

(declare-fun lambda!466877 () Int)

(declare-fun lambda!466876 () Int)

(assert (=> bs!1940933 (not (= lambda!466877 lambda!466876))))

(assert (=> b!7578402 true))

(assert (=> b!7578402 true))

(declare-fun bm!694701 () Bool)

(declare-fun call!694706 () Bool)

(assert (=> bm!694701 (= call!694706 (isEmpty!41499 s!13436))))

(declare-fun b!7578394 () Bool)

(declare-fun res!3036161 () Bool)

(declare-fun e!4510920 () Bool)

(assert (=> b!7578394 (=> res!3036161 e!4510920)))

(assert (=> b!7578394 (= res!3036161 call!694706)))

(declare-fun e!4510916 () Bool)

(assert (=> b!7578394 (= e!4510916 e!4510920)))

(declare-fun b!7578395 () Bool)

(declare-fun e!4510919 () Bool)

(assert (=> b!7578395 (= e!4510919 (= s!13436 (Cons!72830 (c!1397850 r!22341) Nil!72830)))))

(declare-fun b!7578396 () Bool)

(declare-fun e!4510917 () Bool)

(declare-fun e!4510918 () Bool)

(assert (=> b!7578396 (= e!4510917 e!4510918)))

(declare-fun res!3036160 () Bool)

(assert (=> b!7578396 (= res!3036160 (not ((_ is EmptyLang!20071) r!22341)))))

(assert (=> b!7578396 (=> (not res!3036160) (not e!4510918))))

(declare-fun b!7578397 () Bool)

(declare-fun e!4510921 () Bool)

(assert (=> b!7578397 (= e!4510921 e!4510916)))

(declare-fun c!1397893 () Bool)

(assert (=> b!7578397 (= c!1397893 ((_ is Star!20071) r!22341))))

(declare-fun b!7578398 () Bool)

(declare-fun c!1397892 () Bool)

(assert (=> b!7578398 (= c!1397892 ((_ is Union!20071) r!22341))))

(assert (=> b!7578398 (= e!4510919 e!4510921)))

(declare-fun b!7578399 () Bool)

(assert (=> b!7578399 (= e!4510917 call!694706)))

(declare-fun d!2318165 () Bool)

(declare-fun c!1397895 () Bool)

(assert (=> d!2318165 (= c!1397895 ((_ is EmptyExpr!20071) r!22341))))

(assert (=> d!2318165 (= (matchRSpec!4384 r!22341 s!13436) e!4510917)))

(declare-fun call!694707 () Bool)

(assert (=> b!7578400 (= e!4510920 call!694707)))

(declare-fun bm!694702 () Bool)

(declare-fun Exists!4306 (Int) Bool)

(assert (=> bm!694702 (= call!694707 (Exists!4306 (ite c!1397893 lambda!466876 lambda!466877)))))

(declare-fun b!7578401 () Bool)

(declare-fun e!4510922 () Bool)

(assert (=> b!7578401 (= e!4510921 e!4510922)))

(declare-fun res!3036162 () Bool)

(assert (=> b!7578401 (= res!3036162 (matchRSpec!4384 (regOne!40655 r!22341) s!13436))))

(assert (=> b!7578401 (=> res!3036162 e!4510922)))

(assert (=> b!7578402 (= e!4510916 call!694707)))

(declare-fun b!7578403 () Bool)

(declare-fun c!1397894 () Bool)

(assert (=> b!7578403 (= c!1397894 ((_ is ElementMatch!20071) r!22341))))

(assert (=> b!7578403 (= e!4510918 e!4510919)))

(declare-fun b!7578404 () Bool)

(assert (=> b!7578404 (= e!4510922 (matchRSpec!4384 (regTwo!40655 r!22341) s!13436))))

(assert (= (and d!2318165 c!1397895) b!7578399))

(assert (= (and d!2318165 (not c!1397895)) b!7578396))

(assert (= (and b!7578396 res!3036160) b!7578403))

(assert (= (and b!7578403 c!1397894) b!7578395))

(assert (= (and b!7578403 (not c!1397894)) b!7578398))

(assert (= (and b!7578398 c!1397892) b!7578401))

(assert (= (and b!7578398 (not c!1397892)) b!7578397))

(assert (= (and b!7578401 (not res!3036162)) b!7578404))

(assert (= (and b!7578397 c!1397893) b!7578394))

(assert (= (and b!7578397 (not c!1397893)) b!7578402))

(assert (= (and b!7578394 (not res!3036161)) b!7578400))

(assert (= (or b!7578400 b!7578402) bm!694702))

(assert (= (or b!7578399 b!7578394) bm!694701))

(assert (=> bm!694701 m!8135054))

(declare-fun m!8135094 () Bool)

(assert (=> bm!694702 m!8135094))

(declare-fun m!8135096 () Bool)

(assert (=> b!7578401 m!8135096))

(declare-fun m!8135098 () Bool)

(assert (=> b!7578404 m!8135098))

(assert (=> b!7578177 d!2318165))

(declare-fun b!7578437 () Bool)

(declare-fun res!3036181 () Bool)

(declare-fun e!4510938 () Bool)

(assert (=> b!7578437 (=> res!3036181 e!4510938)))

(declare-fun tail!15131 (List!72954) List!72954)

(assert (=> b!7578437 (= res!3036181 (not (isEmpty!41499 (tail!15131 s!13436))))))

(declare-fun b!7578439 () Bool)

(declare-fun e!4510941 () Bool)

(declare-fun e!4510937 () Bool)

(assert (=> b!7578439 (= e!4510941 e!4510937)))

(declare-fun c!1397903 () Bool)

(assert (=> b!7578439 (= c!1397903 ((_ is EmptyLang!20071) r!22341))))

(declare-fun bm!694705 () Bool)

(declare-fun call!694710 () Bool)

(assert (=> bm!694705 (= call!694710 (isEmpty!41499 s!13436))))

(declare-fun b!7578440 () Bool)

(declare-fun e!4510942 () Bool)

(declare-fun derivativeStep!5791 (Regex!20071 C!40468) Regex!20071)

(declare-fun head!15591 (List!72954) C!40468)

(assert (=> b!7578440 (= e!4510942 (matchR!9663 (derivativeStep!5791 r!22341 (head!15591 s!13436)) (tail!15131 s!13436)))))

(declare-fun b!7578441 () Bool)

(declare-fun res!3036182 () Bool)

(declare-fun e!4510943 () Bool)

(assert (=> b!7578441 (=> res!3036182 e!4510943)))

(declare-fun e!4510939 () Bool)

(assert (=> b!7578441 (= res!3036182 e!4510939)))

(declare-fun res!3036180 () Bool)

(assert (=> b!7578441 (=> (not res!3036180) (not e!4510939))))

(declare-fun lt!2652455 () Bool)

(assert (=> b!7578441 (= res!3036180 lt!2652455)))

(declare-fun b!7578442 () Bool)

(declare-fun e!4510940 () Bool)

(assert (=> b!7578442 (= e!4510943 e!4510940)))

(declare-fun res!3036185 () Bool)

(assert (=> b!7578442 (=> (not res!3036185) (not e!4510940))))

(assert (=> b!7578442 (= res!3036185 (not lt!2652455))))

(declare-fun b!7578443 () Bool)

(assert (=> b!7578443 (= e!4510942 (nullable!8764 r!22341))))

(declare-fun b!7578444 () Bool)

(assert (=> b!7578444 (= e!4510938 (not (= (head!15591 s!13436) (c!1397850 r!22341))))))

(declare-fun b!7578445 () Bool)

(assert (=> b!7578445 (= e!4510940 e!4510938)))

(declare-fun res!3036179 () Bool)

(assert (=> b!7578445 (=> res!3036179 e!4510938)))

(assert (=> b!7578445 (= res!3036179 call!694710)))

(declare-fun b!7578446 () Bool)

(assert (=> b!7578446 (= e!4510941 (= lt!2652455 call!694710))))

(declare-fun b!7578438 () Bool)

(assert (=> b!7578438 (= e!4510937 (not lt!2652455))))

(declare-fun d!2318175 () Bool)

(assert (=> d!2318175 e!4510941))

(declare-fun c!1397902 () Bool)

(assert (=> d!2318175 (= c!1397902 ((_ is EmptyExpr!20071) r!22341))))

(assert (=> d!2318175 (= lt!2652455 e!4510942)))

(declare-fun c!1397904 () Bool)

(assert (=> d!2318175 (= c!1397904 (isEmpty!41499 s!13436))))

(assert (=> d!2318175 (validRegex!10499 r!22341)))

(assert (=> d!2318175 (= (matchR!9663 r!22341 s!13436) lt!2652455)))

(declare-fun b!7578447 () Bool)

(declare-fun res!3036183 () Bool)

(assert (=> b!7578447 (=> res!3036183 e!4510943)))

(assert (=> b!7578447 (= res!3036183 (not ((_ is ElementMatch!20071) r!22341)))))

(assert (=> b!7578447 (= e!4510937 e!4510943)))

(declare-fun b!7578448 () Bool)

(assert (=> b!7578448 (= e!4510939 (= (head!15591 s!13436) (c!1397850 r!22341)))))

(declare-fun b!7578449 () Bool)

(declare-fun res!3036186 () Bool)

(assert (=> b!7578449 (=> (not res!3036186) (not e!4510939))))

(assert (=> b!7578449 (= res!3036186 (not call!694710))))

(declare-fun b!7578450 () Bool)

(declare-fun res!3036184 () Bool)

(assert (=> b!7578450 (=> (not res!3036184) (not e!4510939))))

(assert (=> b!7578450 (= res!3036184 (isEmpty!41499 (tail!15131 s!13436)))))

(assert (= (and d!2318175 c!1397904) b!7578443))

(assert (= (and d!2318175 (not c!1397904)) b!7578440))

(assert (= (and d!2318175 c!1397902) b!7578446))

(assert (= (and d!2318175 (not c!1397902)) b!7578439))

(assert (= (and b!7578439 c!1397903) b!7578438))

(assert (= (and b!7578439 (not c!1397903)) b!7578447))

(assert (= (and b!7578447 (not res!3036183)) b!7578441))

(assert (= (and b!7578441 res!3036180) b!7578449))

(assert (= (and b!7578449 res!3036186) b!7578450))

(assert (= (and b!7578450 res!3036184) b!7578448))

(assert (= (and b!7578441 (not res!3036182)) b!7578442))

(assert (= (and b!7578442 res!3036185) b!7578445))

(assert (= (and b!7578445 (not res!3036179)) b!7578437))

(assert (= (and b!7578437 (not res!3036181)) b!7578444))

(assert (= (or b!7578446 b!7578445 b!7578449) bm!694705))

(assert (=> d!2318175 m!8135054))

(assert (=> d!2318175 m!8135056))

(declare-fun m!8135100 () Bool)

(assert (=> b!7578443 m!8135100))

(declare-fun m!8135102 () Bool)

(assert (=> b!7578440 m!8135102))

(assert (=> b!7578440 m!8135102))

(declare-fun m!8135104 () Bool)

(assert (=> b!7578440 m!8135104))

(declare-fun m!8135106 () Bool)

(assert (=> b!7578440 m!8135106))

(assert (=> b!7578440 m!8135104))

(assert (=> b!7578440 m!8135106))

(declare-fun m!8135108 () Bool)

(assert (=> b!7578440 m!8135108))

(assert (=> b!7578448 m!8135102))

(assert (=> b!7578444 m!8135102))

(assert (=> b!7578437 m!8135106))

(assert (=> b!7578437 m!8135106))

(declare-fun m!8135110 () Bool)

(assert (=> b!7578437 m!8135110))

(assert (=> bm!694705 m!8135054))

(assert (=> b!7578450 m!8135106))

(assert (=> b!7578450 m!8135106))

(assert (=> b!7578450 m!8135110))

(assert (=> b!7578177 d!2318175))

(declare-fun d!2318177 () Bool)

(assert (=> d!2318177 (= (matchR!9663 r!22341 s!13436) (matchRSpec!4384 r!22341 s!13436))))

(declare-fun lt!2652458 () Unit!167098)

(declare-fun choose!58598 (Regex!20071 List!72954) Unit!167098)

(assert (=> d!2318177 (= lt!2652458 (choose!58598 r!22341 s!13436))))

(assert (=> d!2318177 (validRegex!10499 r!22341)))

(assert (=> d!2318177 (= (mainMatchTheorem!4378 r!22341 s!13436) lt!2652458)))

(declare-fun bs!1940934 () Bool)

(assert (= bs!1940934 d!2318177))

(assert (=> bs!1940934 m!8135048))

(assert (=> bs!1940934 m!8135046))

(declare-fun m!8135112 () Bool)

(assert (=> bs!1940934 m!8135112))

(assert (=> bs!1940934 m!8135056))

(assert (=> b!7578177 d!2318177))

(declare-fun b!7578461 () Bool)

(declare-fun e!4510946 () Bool)

(assert (=> b!7578461 (= e!4510946 tp_is_empty!50497)))

(declare-fun b!7578462 () Bool)

(declare-fun tp!2208278 () Bool)

(declare-fun tp!2208280 () Bool)

(assert (=> b!7578462 (= e!4510946 (and tp!2208278 tp!2208280))))

(assert (=> b!7578183 (= tp!2208224 e!4510946)))

(declare-fun b!7578464 () Bool)

(declare-fun tp!2208281 () Bool)

(declare-fun tp!2208282 () Bool)

(assert (=> b!7578464 (= e!4510946 (and tp!2208281 tp!2208282))))

(declare-fun b!7578463 () Bool)

(declare-fun tp!2208279 () Bool)

(assert (=> b!7578463 (= e!4510946 tp!2208279)))

(assert (= (and b!7578183 ((_ is ElementMatch!20071) (reg!20400 r!22341))) b!7578461))

(assert (= (and b!7578183 ((_ is Concat!28916) (reg!20400 r!22341))) b!7578462))

(assert (= (and b!7578183 ((_ is Star!20071) (reg!20400 r!22341))) b!7578463))

(assert (= (and b!7578183 ((_ is Union!20071) (reg!20400 r!22341))) b!7578464))

(declare-fun b!7578465 () Bool)

(declare-fun e!4510947 () Bool)

(assert (=> b!7578465 (= e!4510947 tp_is_empty!50497)))

(declare-fun b!7578466 () Bool)

(declare-fun tp!2208283 () Bool)

(declare-fun tp!2208285 () Bool)

(assert (=> b!7578466 (= e!4510947 (and tp!2208283 tp!2208285))))

(assert (=> b!7578182 (= tp!2208228 e!4510947)))

(declare-fun b!7578468 () Bool)

(declare-fun tp!2208286 () Bool)

(declare-fun tp!2208287 () Bool)

(assert (=> b!7578468 (= e!4510947 (and tp!2208286 tp!2208287))))

(declare-fun b!7578467 () Bool)

(declare-fun tp!2208284 () Bool)

(assert (=> b!7578467 (= e!4510947 tp!2208284)))

(assert (= (and b!7578182 ((_ is ElementMatch!20071) (regOne!40654 r!22341))) b!7578465))

(assert (= (and b!7578182 ((_ is Concat!28916) (regOne!40654 r!22341))) b!7578466))

(assert (= (and b!7578182 ((_ is Star!20071) (regOne!40654 r!22341))) b!7578467))

(assert (= (and b!7578182 ((_ is Union!20071) (regOne!40654 r!22341))) b!7578468))

(declare-fun b!7578469 () Bool)

(declare-fun e!4510948 () Bool)

(assert (=> b!7578469 (= e!4510948 tp_is_empty!50497)))

(declare-fun b!7578470 () Bool)

(declare-fun tp!2208288 () Bool)

(declare-fun tp!2208290 () Bool)

(assert (=> b!7578470 (= e!4510948 (and tp!2208288 tp!2208290))))

(assert (=> b!7578182 (= tp!2208225 e!4510948)))

(declare-fun b!7578472 () Bool)

(declare-fun tp!2208291 () Bool)

(declare-fun tp!2208292 () Bool)

(assert (=> b!7578472 (= e!4510948 (and tp!2208291 tp!2208292))))

(declare-fun b!7578471 () Bool)

(declare-fun tp!2208289 () Bool)

(assert (=> b!7578471 (= e!4510948 tp!2208289)))

(assert (= (and b!7578182 ((_ is ElementMatch!20071) (regTwo!40654 r!22341))) b!7578469))

(assert (= (and b!7578182 ((_ is Concat!28916) (regTwo!40654 r!22341))) b!7578470))

(assert (= (and b!7578182 ((_ is Star!20071) (regTwo!40654 r!22341))) b!7578471))

(assert (= (and b!7578182 ((_ is Union!20071) (regTwo!40654 r!22341))) b!7578472))

(declare-fun b!7578477 () Bool)

(declare-fun e!4510951 () Bool)

(declare-fun tp!2208295 () Bool)

(assert (=> b!7578477 (= e!4510951 (and tp_is_empty!50497 tp!2208295))))

(assert (=> b!7578176 (= tp!2208227 e!4510951)))

(assert (= (and b!7578176 ((_ is Cons!72830) (t!387689 s!13436))) b!7578477))

(declare-fun b!7578478 () Bool)

(declare-fun e!4510952 () Bool)

(assert (=> b!7578478 (= e!4510952 tp_is_empty!50497)))

(declare-fun b!7578479 () Bool)

(declare-fun tp!2208296 () Bool)

(declare-fun tp!2208298 () Bool)

(assert (=> b!7578479 (= e!4510952 (and tp!2208296 tp!2208298))))

(assert (=> b!7578181 (= tp!2208226 e!4510952)))

(declare-fun b!7578481 () Bool)

(declare-fun tp!2208299 () Bool)

(declare-fun tp!2208300 () Bool)

(assert (=> b!7578481 (= e!4510952 (and tp!2208299 tp!2208300))))

(declare-fun b!7578480 () Bool)

(declare-fun tp!2208297 () Bool)

(assert (=> b!7578480 (= e!4510952 tp!2208297)))

(assert (= (and b!7578181 ((_ is ElementMatch!20071) (regOne!40655 r!22341))) b!7578478))

(assert (= (and b!7578181 ((_ is Concat!28916) (regOne!40655 r!22341))) b!7578479))

(assert (= (and b!7578181 ((_ is Star!20071) (regOne!40655 r!22341))) b!7578480))

(assert (= (and b!7578181 ((_ is Union!20071) (regOne!40655 r!22341))) b!7578481))

(declare-fun b!7578482 () Bool)

(declare-fun e!4510953 () Bool)

(assert (=> b!7578482 (= e!4510953 tp_is_empty!50497)))

(declare-fun b!7578483 () Bool)

(declare-fun tp!2208301 () Bool)

(declare-fun tp!2208303 () Bool)

(assert (=> b!7578483 (= e!4510953 (and tp!2208301 tp!2208303))))

(assert (=> b!7578181 (= tp!2208229 e!4510953)))

(declare-fun b!7578485 () Bool)

(declare-fun tp!2208304 () Bool)

(declare-fun tp!2208305 () Bool)

(assert (=> b!7578485 (= e!4510953 (and tp!2208304 tp!2208305))))

(declare-fun b!7578484 () Bool)

(declare-fun tp!2208302 () Bool)

(assert (=> b!7578484 (= e!4510953 tp!2208302)))

(assert (= (and b!7578181 ((_ is ElementMatch!20071) (regTwo!40655 r!22341))) b!7578482))

(assert (= (and b!7578181 ((_ is Concat!28916) (regTwo!40655 r!22341))) b!7578483))

(assert (= (and b!7578181 ((_ is Star!20071) (regTwo!40655 r!22341))) b!7578484))

(assert (= (and b!7578181 ((_ is Union!20071) (regTwo!40655 r!22341))) b!7578485))

(check-sat (not b!7578477) (not b!7578467) (not d!2318175) (not b!7578483) (not b!7578463) (not b!7578448) (not b!7578481) (not b!7578444) (not b!7578472) (not b!7578462) (not b!7578471) (not b!7578220) (not b!7578440) (not b!7578443) (not b!7578480) tp_is_empty!50497 (not b!7578437) (not b!7578401) (not bm!694682) (not bm!694683) (not b!7578450) (not b!7578404) (not b!7578468) (not b!7578484) (not b!7578479) (not bm!694705) (not b!7578464) (not d!2318177) (not bm!694702) (not bm!694701) (not b!7578470) (not b!7578485) (not d!2318161) (not b!7578466))
(check-sat)

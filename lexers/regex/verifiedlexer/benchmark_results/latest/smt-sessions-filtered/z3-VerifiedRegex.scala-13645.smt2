; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!732008 () Bool)

(assert start!732008)

(declare-fun b!7581800 () Bool)

(declare-fun e!4512608 () Bool)

(declare-fun e!4512611 () Bool)

(assert (=> b!7581800 (= e!4512608 e!4512611)))

(declare-fun res!3037326 () Bool)

(assert (=> b!7581800 (=> res!3037326 e!4512611)))

(declare-datatypes ((C!40496 0))(
  ( (C!40497 (val!30688 Int)) )
))
(declare-datatypes ((Regex!20085 0))(
  ( (ElementMatch!20085 (c!1398468 C!40496)) (Concat!28930 (regOne!40682 Regex!20085) (regTwo!40682 Regex!20085)) (EmptyExpr!20085) (Star!20085 (reg!20414 Regex!20085)) (EmptyLang!20085) (Union!20085 (regOne!40683 Regex!20085) (regTwo!40683 Regex!20085)) )
))
(declare-fun r!22341 () Regex!20085)

(declare-fun validRegex!10513 (Regex!20085) Bool)

(assert (=> b!7581800 (= res!3037326 (not (validRegex!10513 (regTwo!40683 r!22341))))))

(declare-datatypes ((List!72968 0))(
  ( (Nil!72844) (Cons!72844 (h!79292 C!40496) (t!387703 List!72968)) )
))
(declare-fun s!13436 () List!72968)

(declare-fun matchR!9677 (Regex!20085 List!72968) Bool)

(assert (=> b!7581800 (not (matchR!9677 (regOne!40683 r!22341) s!13436))))

(declare-datatypes ((Unit!167126 0))(
  ( (Unit!167127) )
))
(declare-fun lt!2652660 () Unit!167126)

(declare-fun lemmaLostCauseCannotMatch!83 (Regex!20085 List!72968) Unit!167126)

(assert (=> b!7581800 (= lt!2652660 (lemmaLostCauseCannotMatch!83 (regOne!40683 r!22341) s!13436))))

(declare-fun b!7581801 () Bool)

(declare-fun e!4512609 () Bool)

(declare-fun tp_is_empty!50525 () Bool)

(assert (=> b!7581801 (= e!4512609 tp_is_empty!50525)))

(declare-fun b!7581802 () Bool)

(declare-fun res!3037324 () Bool)

(declare-fun e!4512607 () Bool)

(assert (=> b!7581802 (=> (not res!3037324) (not e!4512607))))

(declare-fun isEmpty!41517 (List!72968) Bool)

(assert (=> b!7581802 (= res!3037324 (not (isEmpty!41517 s!13436)))))

(declare-fun b!7581803 () Bool)

(declare-fun tp!2209514 () Bool)

(assert (=> b!7581803 (= e!4512609 tp!2209514)))

(declare-fun b!7581804 () Bool)

(declare-fun e!4512610 () Bool)

(declare-fun tp!2209512 () Bool)

(assert (=> b!7581804 (= e!4512610 (and tp_is_empty!50525 tp!2209512))))

(declare-fun res!3037328 () Bool)

(assert (=> start!732008 (=> (not res!3037328) (not e!4512607))))

(assert (=> start!732008 (= res!3037328 (validRegex!10513 r!22341))))

(assert (=> start!732008 e!4512607))

(assert (=> start!732008 e!4512609))

(assert (=> start!732008 e!4512610))

(declare-fun b!7581805 () Bool)

(declare-fun lostCause!1861 (Regex!20085) Bool)

(assert (=> b!7581805 (= e!4512611 (lostCause!1861 (regTwo!40683 r!22341)))))

(declare-fun b!7581806 () Bool)

(declare-fun tp!2209516 () Bool)

(declare-fun tp!2209517 () Bool)

(assert (=> b!7581806 (= e!4512609 (and tp!2209516 tp!2209517))))

(declare-fun b!7581807 () Bool)

(assert (=> b!7581807 (= e!4512607 (not e!4512608))))

(declare-fun res!3037325 () Bool)

(assert (=> b!7581807 (=> res!3037325 e!4512608)))

(get-info :version)

(assert (=> b!7581807 (= res!3037325 (or ((_ is EmptyLang!20085) r!22341) ((_ is EmptyExpr!20085) r!22341) ((_ is ElementMatch!20085) r!22341) (not ((_ is Union!20085) r!22341))))))

(declare-fun matchRSpec!4398 (Regex!20085 List!72968) Bool)

(assert (=> b!7581807 (= (matchR!9677 r!22341 s!13436) (matchRSpec!4398 r!22341 s!13436))))

(declare-fun lt!2652659 () Unit!167126)

(declare-fun mainMatchTheorem!4392 (Regex!20085 List!72968) Unit!167126)

(assert (=> b!7581807 (= lt!2652659 (mainMatchTheorem!4392 r!22341 s!13436))))

(declare-fun b!7581808 () Bool)

(declare-fun res!3037327 () Bool)

(assert (=> b!7581808 (=> (not res!3037327) (not e!4512607))))

(assert (=> b!7581808 (= res!3037327 (lostCause!1861 r!22341))))

(declare-fun b!7581809 () Bool)

(declare-fun tp!2209513 () Bool)

(declare-fun tp!2209515 () Bool)

(assert (=> b!7581809 (= e!4512609 (and tp!2209513 tp!2209515))))

(assert (= (and start!732008 res!3037328) b!7581808))

(assert (= (and b!7581808 res!3037327) b!7581802))

(assert (= (and b!7581802 res!3037324) b!7581807))

(assert (= (and b!7581807 (not res!3037325)) b!7581800))

(assert (= (and b!7581800 (not res!3037326)) b!7581805))

(assert (= (and start!732008 ((_ is ElementMatch!20085) r!22341)) b!7581801))

(assert (= (and start!732008 ((_ is Concat!28930) r!22341)) b!7581806))

(assert (= (and start!732008 ((_ is Star!20085) r!22341)) b!7581803))

(assert (= (and start!732008 ((_ is Union!20085) r!22341)) b!7581809))

(assert (= (and start!732008 ((_ is Cons!72844) s!13436)) b!7581804))

(declare-fun m!8136062 () Bool)

(assert (=> b!7581807 m!8136062))

(declare-fun m!8136064 () Bool)

(assert (=> b!7581807 m!8136064))

(declare-fun m!8136066 () Bool)

(assert (=> b!7581807 m!8136066))

(declare-fun m!8136068 () Bool)

(assert (=> b!7581800 m!8136068))

(declare-fun m!8136070 () Bool)

(assert (=> b!7581800 m!8136070))

(declare-fun m!8136072 () Bool)

(assert (=> b!7581800 m!8136072))

(declare-fun m!8136074 () Bool)

(assert (=> b!7581805 m!8136074))

(declare-fun m!8136076 () Bool)

(assert (=> b!7581802 m!8136076))

(declare-fun m!8136078 () Bool)

(assert (=> start!732008 m!8136078))

(declare-fun m!8136080 () Bool)

(assert (=> b!7581808 m!8136080))

(check-sat (not b!7581808) (not b!7581800) (not b!7581802) (not b!7581806) (not b!7581807) (not b!7581804) (not b!7581809) (not b!7581805) (not b!7581803) (not start!732008) tp_is_empty!50525)
(check-sat)
(get-model)

(declare-fun b!7581828 () Bool)

(declare-fun e!4512632 () Bool)

(declare-fun call!695147 () Bool)

(assert (=> b!7581828 (= e!4512632 call!695147)))

(declare-fun b!7581829 () Bool)

(declare-fun e!4512626 () Bool)

(declare-fun e!4512627 () Bool)

(assert (=> b!7581829 (= e!4512626 e!4512627)))

(declare-fun c!1398473 () Bool)

(assert (=> b!7581829 (= c!1398473 ((_ is Union!20085) r!22341))))

(declare-fun b!7581830 () Bool)

(declare-fun e!4512628 () Bool)

(assert (=> b!7581830 (= e!4512626 e!4512628)))

(declare-fun res!3037341 () Bool)

(declare-fun nullable!8777 (Regex!20085) Bool)

(assert (=> b!7581830 (= res!3037341 (not (nullable!8777 (reg!20414 r!22341))))))

(assert (=> b!7581830 (=> (not res!3037341) (not e!4512628))))

(declare-fun bm!695142 () Bool)

(declare-fun call!695148 () Bool)

(assert (=> bm!695142 (= call!695147 call!695148)))

(declare-fun d!2318502 () Bool)

(declare-fun res!3037339 () Bool)

(declare-fun e!4512631 () Bool)

(assert (=> d!2318502 (=> res!3037339 e!4512631)))

(assert (=> d!2318502 (= res!3037339 ((_ is ElementMatch!20085) r!22341))))

(assert (=> d!2318502 (= (validRegex!10513 r!22341) e!4512631)))

(declare-fun bm!695143 () Bool)

(declare-fun call!695149 () Bool)

(assert (=> bm!695143 (= call!695149 (validRegex!10513 (ite c!1398473 (regTwo!40683 r!22341) (regOne!40682 r!22341))))))

(declare-fun b!7581831 () Bool)

(declare-fun e!4512629 () Bool)

(assert (=> b!7581831 (= e!4512629 e!4512632)))

(declare-fun res!3037342 () Bool)

(assert (=> b!7581831 (=> (not res!3037342) (not e!4512632))))

(assert (=> b!7581831 (= res!3037342 call!695149)))

(declare-fun b!7581832 () Bool)

(declare-fun res!3037343 () Bool)

(declare-fun e!4512630 () Bool)

(assert (=> b!7581832 (=> (not res!3037343) (not e!4512630))))

(assert (=> b!7581832 (= res!3037343 call!695147)))

(assert (=> b!7581832 (= e!4512627 e!4512630)))

(declare-fun b!7581833 () Bool)

(assert (=> b!7581833 (= e!4512628 call!695148)))

(declare-fun b!7581834 () Bool)

(assert (=> b!7581834 (= e!4512631 e!4512626)))

(declare-fun c!1398474 () Bool)

(assert (=> b!7581834 (= c!1398474 ((_ is Star!20085) r!22341))))

(declare-fun b!7581835 () Bool)

(declare-fun res!3037340 () Bool)

(assert (=> b!7581835 (=> res!3037340 e!4512629)))

(assert (=> b!7581835 (= res!3037340 (not ((_ is Concat!28930) r!22341)))))

(assert (=> b!7581835 (= e!4512627 e!4512629)))

(declare-fun bm!695144 () Bool)

(assert (=> bm!695144 (= call!695148 (validRegex!10513 (ite c!1398474 (reg!20414 r!22341) (ite c!1398473 (regOne!40683 r!22341) (regTwo!40682 r!22341)))))))

(declare-fun b!7581836 () Bool)

(assert (=> b!7581836 (= e!4512630 call!695149)))

(assert (= (and d!2318502 (not res!3037339)) b!7581834))

(assert (= (and b!7581834 c!1398474) b!7581830))

(assert (= (and b!7581834 (not c!1398474)) b!7581829))

(assert (= (and b!7581830 res!3037341) b!7581833))

(assert (= (and b!7581829 c!1398473) b!7581832))

(assert (= (and b!7581829 (not c!1398473)) b!7581835))

(assert (= (and b!7581832 res!3037343) b!7581836))

(assert (= (and b!7581835 (not res!3037340)) b!7581831))

(assert (= (and b!7581831 res!3037342) b!7581828))

(assert (= (or b!7581836 b!7581831) bm!695143))

(assert (= (or b!7581832 b!7581828) bm!695142))

(assert (= (or b!7581833 bm!695142) bm!695144))

(declare-fun m!8136082 () Bool)

(assert (=> b!7581830 m!8136082))

(declare-fun m!8136084 () Bool)

(assert (=> bm!695143 m!8136084))

(declare-fun m!8136086 () Bool)

(assert (=> bm!695144 m!8136086))

(assert (=> start!732008 d!2318502))

(declare-fun d!2318506 () Bool)

(declare-fun lostCauseFct!513 (Regex!20085) Bool)

(assert (=> d!2318506 (= (lostCause!1861 (regTwo!40683 r!22341)) (lostCauseFct!513 (regTwo!40683 r!22341)))))

(declare-fun bs!1941065 () Bool)

(assert (= bs!1941065 d!2318506))

(declare-fun m!8136088 () Bool)

(assert (=> bs!1941065 m!8136088))

(assert (=> b!7581805 d!2318506))

(declare-fun b!7581855 () Bool)

(declare-fun e!4512653 () Bool)

(declare-fun call!695152 () Bool)

(assert (=> b!7581855 (= e!4512653 call!695152)))

(declare-fun b!7581856 () Bool)

(declare-fun e!4512647 () Bool)

(declare-fun e!4512648 () Bool)

(assert (=> b!7581856 (= e!4512647 e!4512648)))

(declare-fun c!1398479 () Bool)

(assert (=> b!7581856 (= c!1398479 ((_ is Union!20085) (regTwo!40683 r!22341)))))

(declare-fun b!7581857 () Bool)

(declare-fun e!4512649 () Bool)

(assert (=> b!7581857 (= e!4512647 e!4512649)))

(declare-fun res!3037356 () Bool)

(assert (=> b!7581857 (= res!3037356 (not (nullable!8777 (reg!20414 (regTwo!40683 r!22341)))))))

(assert (=> b!7581857 (=> (not res!3037356) (not e!4512649))))

(declare-fun bm!695147 () Bool)

(declare-fun call!695153 () Bool)

(assert (=> bm!695147 (= call!695152 call!695153)))

(declare-fun d!2318508 () Bool)

(declare-fun res!3037354 () Bool)

(declare-fun e!4512652 () Bool)

(assert (=> d!2318508 (=> res!3037354 e!4512652)))

(assert (=> d!2318508 (= res!3037354 ((_ is ElementMatch!20085) (regTwo!40683 r!22341)))))

(assert (=> d!2318508 (= (validRegex!10513 (regTwo!40683 r!22341)) e!4512652)))

(declare-fun bm!695148 () Bool)

(declare-fun call!695154 () Bool)

(assert (=> bm!695148 (= call!695154 (validRegex!10513 (ite c!1398479 (regTwo!40683 (regTwo!40683 r!22341)) (regOne!40682 (regTwo!40683 r!22341)))))))

(declare-fun b!7581858 () Bool)

(declare-fun e!4512650 () Bool)

(assert (=> b!7581858 (= e!4512650 e!4512653)))

(declare-fun res!3037357 () Bool)

(assert (=> b!7581858 (=> (not res!3037357) (not e!4512653))))

(assert (=> b!7581858 (= res!3037357 call!695154)))

(declare-fun b!7581859 () Bool)

(declare-fun res!3037358 () Bool)

(declare-fun e!4512651 () Bool)

(assert (=> b!7581859 (=> (not res!3037358) (not e!4512651))))

(assert (=> b!7581859 (= res!3037358 call!695152)))

(assert (=> b!7581859 (= e!4512648 e!4512651)))

(declare-fun b!7581860 () Bool)

(assert (=> b!7581860 (= e!4512649 call!695153)))

(declare-fun b!7581861 () Bool)

(assert (=> b!7581861 (= e!4512652 e!4512647)))

(declare-fun c!1398480 () Bool)

(assert (=> b!7581861 (= c!1398480 ((_ is Star!20085) (regTwo!40683 r!22341)))))

(declare-fun b!7581862 () Bool)

(declare-fun res!3037355 () Bool)

(assert (=> b!7581862 (=> res!3037355 e!4512650)))

(assert (=> b!7581862 (= res!3037355 (not ((_ is Concat!28930) (regTwo!40683 r!22341))))))

(assert (=> b!7581862 (= e!4512648 e!4512650)))

(declare-fun bm!695149 () Bool)

(assert (=> bm!695149 (= call!695153 (validRegex!10513 (ite c!1398480 (reg!20414 (regTwo!40683 r!22341)) (ite c!1398479 (regOne!40683 (regTwo!40683 r!22341)) (regTwo!40682 (regTwo!40683 r!22341))))))))

(declare-fun b!7581863 () Bool)

(assert (=> b!7581863 (= e!4512651 call!695154)))

(assert (= (and d!2318508 (not res!3037354)) b!7581861))

(assert (= (and b!7581861 c!1398480) b!7581857))

(assert (= (and b!7581861 (not c!1398480)) b!7581856))

(assert (= (and b!7581857 res!3037356) b!7581860))

(assert (= (and b!7581856 c!1398479) b!7581859))

(assert (= (and b!7581856 (not c!1398479)) b!7581862))

(assert (= (and b!7581859 res!3037358) b!7581863))

(assert (= (and b!7581862 (not res!3037355)) b!7581858))

(assert (= (and b!7581858 res!3037357) b!7581855))

(assert (= (or b!7581863 b!7581858) bm!695148))

(assert (= (or b!7581859 b!7581855) bm!695147))

(assert (= (or b!7581860 bm!695147) bm!695149))

(declare-fun m!8136090 () Bool)

(assert (=> b!7581857 m!8136090))

(declare-fun m!8136092 () Bool)

(assert (=> bm!695148 m!8136092))

(declare-fun m!8136094 () Bool)

(assert (=> bm!695149 m!8136094))

(assert (=> b!7581800 d!2318508))

(declare-fun b!7581901 () Bool)

(declare-fun res!3037382 () Bool)

(declare-fun e!4512680 () Bool)

(assert (=> b!7581901 (=> res!3037382 e!4512680)))

(declare-fun tail!15144 (List!72968) List!72968)

(assert (=> b!7581901 (= res!3037382 (not (isEmpty!41517 (tail!15144 s!13436))))))

(declare-fun b!7581902 () Bool)

(declare-fun res!3037387 () Bool)

(declare-fun e!4512675 () Bool)

(assert (=> b!7581902 (=> res!3037387 e!4512675)))

(declare-fun e!4512679 () Bool)

(assert (=> b!7581902 (= res!3037387 e!4512679)))

(declare-fun res!3037381 () Bool)

(assert (=> b!7581902 (=> (not res!3037381) (not e!4512679))))

(declare-fun lt!2652663 () Bool)

(assert (=> b!7581902 (= res!3037381 lt!2652663)))

(declare-fun b!7581904 () Bool)

(declare-fun e!4512677 () Bool)

(declare-fun derivativeStep!5804 (Regex!20085 C!40496) Regex!20085)

(declare-fun head!15604 (List!72968) C!40496)

(assert (=> b!7581904 (= e!4512677 (matchR!9677 (derivativeStep!5804 (regOne!40683 r!22341) (head!15604 s!13436)) (tail!15144 s!13436)))))

(declare-fun b!7581905 () Bool)

(declare-fun e!4512681 () Bool)

(assert (=> b!7581905 (= e!4512681 (not lt!2652663))))

(declare-fun b!7581906 () Bool)

(declare-fun e!4512676 () Bool)

(assert (=> b!7581906 (= e!4512675 e!4512676)))

(declare-fun res!3037384 () Bool)

(assert (=> b!7581906 (=> (not res!3037384) (not e!4512676))))

(assert (=> b!7581906 (= res!3037384 (not lt!2652663))))

(declare-fun b!7581907 () Bool)

(assert (=> b!7581907 (= e!4512676 e!4512680)))

(declare-fun res!3037385 () Bool)

(assert (=> b!7581907 (=> res!3037385 e!4512680)))

(declare-fun call!695164 () Bool)

(assert (=> b!7581907 (= res!3037385 call!695164)))

(declare-fun b!7581908 () Bool)

(declare-fun e!4512678 () Bool)

(assert (=> b!7581908 (= e!4512678 (= lt!2652663 call!695164))))

(declare-fun bm!695159 () Bool)

(assert (=> bm!695159 (= call!695164 (isEmpty!41517 s!13436))))

(declare-fun b!7581903 () Bool)

(declare-fun res!3037383 () Bool)

(assert (=> b!7581903 (=> (not res!3037383) (not e!4512679))))

(assert (=> b!7581903 (= res!3037383 (isEmpty!41517 (tail!15144 s!13436)))))

(declare-fun d!2318510 () Bool)

(assert (=> d!2318510 e!4512678))

(declare-fun c!1398490 () Bool)

(assert (=> d!2318510 (= c!1398490 ((_ is EmptyExpr!20085) (regOne!40683 r!22341)))))

(assert (=> d!2318510 (= lt!2652663 e!4512677)))

(declare-fun c!1398489 () Bool)

(assert (=> d!2318510 (= c!1398489 (isEmpty!41517 s!13436))))

(assert (=> d!2318510 (validRegex!10513 (regOne!40683 r!22341))))

(assert (=> d!2318510 (= (matchR!9677 (regOne!40683 r!22341) s!13436) lt!2652663)))

(declare-fun b!7581909 () Bool)

(assert (=> b!7581909 (= e!4512677 (nullable!8777 (regOne!40683 r!22341)))))

(declare-fun b!7581910 () Bool)

(declare-fun res!3037380 () Bool)

(assert (=> b!7581910 (=> res!3037380 e!4512675)))

(assert (=> b!7581910 (= res!3037380 (not ((_ is ElementMatch!20085) (regOne!40683 r!22341))))))

(assert (=> b!7581910 (= e!4512681 e!4512675)))

(declare-fun b!7581911 () Bool)

(assert (=> b!7581911 (= e!4512678 e!4512681)))

(declare-fun c!1398491 () Bool)

(assert (=> b!7581911 (= c!1398491 ((_ is EmptyLang!20085) (regOne!40683 r!22341)))))

(declare-fun b!7581912 () Bool)

(declare-fun res!3037386 () Bool)

(assert (=> b!7581912 (=> (not res!3037386) (not e!4512679))))

(assert (=> b!7581912 (= res!3037386 (not call!695164))))

(declare-fun b!7581913 () Bool)

(assert (=> b!7581913 (= e!4512679 (= (head!15604 s!13436) (c!1398468 (regOne!40683 r!22341))))))

(declare-fun b!7581914 () Bool)

(assert (=> b!7581914 (= e!4512680 (not (= (head!15604 s!13436) (c!1398468 (regOne!40683 r!22341)))))))

(assert (= (and d!2318510 c!1398489) b!7581909))

(assert (= (and d!2318510 (not c!1398489)) b!7581904))

(assert (= (and d!2318510 c!1398490) b!7581908))

(assert (= (and d!2318510 (not c!1398490)) b!7581911))

(assert (= (and b!7581911 c!1398491) b!7581905))

(assert (= (and b!7581911 (not c!1398491)) b!7581910))

(assert (= (and b!7581910 (not res!3037380)) b!7581902))

(assert (= (and b!7581902 res!3037381) b!7581912))

(assert (= (and b!7581912 res!3037386) b!7581903))

(assert (= (and b!7581903 res!3037383) b!7581913))

(assert (= (and b!7581902 (not res!3037387)) b!7581906))

(assert (= (and b!7581906 res!3037384) b!7581907))

(assert (= (and b!7581907 (not res!3037385)) b!7581901))

(assert (= (and b!7581901 (not res!3037382)) b!7581914))

(assert (= (or b!7581908 b!7581907 b!7581912) bm!695159))

(declare-fun m!8136106 () Bool)

(assert (=> b!7581914 m!8136106))

(declare-fun m!8136108 () Bool)

(assert (=> b!7581901 m!8136108))

(assert (=> b!7581901 m!8136108))

(declare-fun m!8136110 () Bool)

(assert (=> b!7581901 m!8136110))

(assert (=> b!7581913 m!8136106))

(assert (=> bm!695159 m!8136076))

(assert (=> d!2318510 m!8136076))

(declare-fun m!8136112 () Bool)

(assert (=> d!2318510 m!8136112))

(assert (=> b!7581903 m!8136108))

(assert (=> b!7581903 m!8136108))

(assert (=> b!7581903 m!8136110))

(declare-fun m!8136114 () Bool)

(assert (=> b!7581909 m!8136114))

(assert (=> b!7581904 m!8136106))

(assert (=> b!7581904 m!8136106))

(declare-fun m!8136116 () Bool)

(assert (=> b!7581904 m!8136116))

(assert (=> b!7581904 m!8136108))

(assert (=> b!7581904 m!8136116))

(assert (=> b!7581904 m!8136108))

(declare-fun m!8136118 () Bool)

(assert (=> b!7581904 m!8136118))

(assert (=> b!7581800 d!2318510))

(declare-fun d!2318520 () Bool)

(assert (=> d!2318520 (not (matchR!9677 (regOne!40683 r!22341) s!13436))))

(declare-fun lt!2652666 () Unit!167126)

(declare-fun choose!58615 (Regex!20085 List!72968) Unit!167126)

(assert (=> d!2318520 (= lt!2652666 (choose!58615 (regOne!40683 r!22341) s!13436))))

(assert (=> d!2318520 (validRegex!10513 (regOne!40683 r!22341))))

(assert (=> d!2318520 (= (lemmaLostCauseCannotMatch!83 (regOne!40683 r!22341) s!13436) lt!2652666)))

(declare-fun bs!1941068 () Bool)

(assert (= bs!1941068 d!2318520))

(assert (=> bs!1941068 m!8136070))

(declare-fun m!8136120 () Bool)

(assert (=> bs!1941068 m!8136120))

(assert (=> bs!1941068 m!8136112))

(assert (=> b!7581800 d!2318520))

(declare-fun d!2318522 () Bool)

(assert (=> d!2318522 (= (lostCause!1861 r!22341) (lostCauseFct!513 r!22341))))

(declare-fun bs!1941069 () Bool)

(assert (= bs!1941069 d!2318522))

(declare-fun m!8136122 () Bool)

(assert (=> bs!1941069 m!8136122))

(assert (=> b!7581808 d!2318522))

(declare-fun b!7581915 () Bool)

(declare-fun res!3037390 () Bool)

(declare-fun e!4512687 () Bool)

(assert (=> b!7581915 (=> res!3037390 e!4512687)))

(assert (=> b!7581915 (= res!3037390 (not (isEmpty!41517 (tail!15144 s!13436))))))

(declare-fun b!7581916 () Bool)

(declare-fun res!3037395 () Bool)

(declare-fun e!4512682 () Bool)

(assert (=> b!7581916 (=> res!3037395 e!4512682)))

(declare-fun e!4512686 () Bool)

(assert (=> b!7581916 (= res!3037395 e!4512686)))

(declare-fun res!3037389 () Bool)

(assert (=> b!7581916 (=> (not res!3037389) (not e!4512686))))

(declare-fun lt!2652667 () Bool)

(assert (=> b!7581916 (= res!3037389 lt!2652667)))

(declare-fun b!7581918 () Bool)

(declare-fun e!4512684 () Bool)

(assert (=> b!7581918 (= e!4512684 (matchR!9677 (derivativeStep!5804 r!22341 (head!15604 s!13436)) (tail!15144 s!13436)))))

(declare-fun b!7581919 () Bool)

(declare-fun e!4512688 () Bool)

(assert (=> b!7581919 (= e!4512688 (not lt!2652667))))

(declare-fun b!7581920 () Bool)

(declare-fun e!4512683 () Bool)

(assert (=> b!7581920 (= e!4512682 e!4512683)))

(declare-fun res!3037392 () Bool)

(assert (=> b!7581920 (=> (not res!3037392) (not e!4512683))))

(assert (=> b!7581920 (= res!3037392 (not lt!2652667))))

(declare-fun b!7581921 () Bool)

(assert (=> b!7581921 (= e!4512683 e!4512687)))

(declare-fun res!3037393 () Bool)

(assert (=> b!7581921 (=> res!3037393 e!4512687)))

(declare-fun call!695165 () Bool)

(assert (=> b!7581921 (= res!3037393 call!695165)))

(declare-fun b!7581922 () Bool)

(declare-fun e!4512685 () Bool)

(assert (=> b!7581922 (= e!4512685 (= lt!2652667 call!695165))))

(declare-fun bm!695160 () Bool)

(assert (=> bm!695160 (= call!695165 (isEmpty!41517 s!13436))))

(declare-fun b!7581917 () Bool)

(declare-fun res!3037391 () Bool)

(assert (=> b!7581917 (=> (not res!3037391) (not e!4512686))))

(assert (=> b!7581917 (= res!3037391 (isEmpty!41517 (tail!15144 s!13436)))))

(declare-fun d!2318524 () Bool)

(assert (=> d!2318524 e!4512685))

(declare-fun c!1398493 () Bool)

(assert (=> d!2318524 (= c!1398493 ((_ is EmptyExpr!20085) r!22341))))

(assert (=> d!2318524 (= lt!2652667 e!4512684)))

(declare-fun c!1398492 () Bool)

(assert (=> d!2318524 (= c!1398492 (isEmpty!41517 s!13436))))

(assert (=> d!2318524 (validRegex!10513 r!22341)))

(assert (=> d!2318524 (= (matchR!9677 r!22341 s!13436) lt!2652667)))

(declare-fun b!7581923 () Bool)

(assert (=> b!7581923 (= e!4512684 (nullable!8777 r!22341))))

(declare-fun b!7581924 () Bool)

(declare-fun res!3037388 () Bool)

(assert (=> b!7581924 (=> res!3037388 e!4512682)))

(assert (=> b!7581924 (= res!3037388 (not ((_ is ElementMatch!20085) r!22341)))))

(assert (=> b!7581924 (= e!4512688 e!4512682)))

(declare-fun b!7581925 () Bool)

(assert (=> b!7581925 (= e!4512685 e!4512688)))

(declare-fun c!1398494 () Bool)

(assert (=> b!7581925 (= c!1398494 ((_ is EmptyLang!20085) r!22341))))

(declare-fun b!7581926 () Bool)

(declare-fun res!3037394 () Bool)

(assert (=> b!7581926 (=> (not res!3037394) (not e!4512686))))

(assert (=> b!7581926 (= res!3037394 (not call!695165))))

(declare-fun b!7581927 () Bool)

(assert (=> b!7581927 (= e!4512686 (= (head!15604 s!13436) (c!1398468 r!22341)))))

(declare-fun b!7581928 () Bool)

(assert (=> b!7581928 (= e!4512687 (not (= (head!15604 s!13436) (c!1398468 r!22341))))))

(assert (= (and d!2318524 c!1398492) b!7581923))

(assert (= (and d!2318524 (not c!1398492)) b!7581918))

(assert (= (and d!2318524 c!1398493) b!7581922))

(assert (= (and d!2318524 (not c!1398493)) b!7581925))

(assert (= (and b!7581925 c!1398494) b!7581919))

(assert (= (and b!7581925 (not c!1398494)) b!7581924))

(assert (= (and b!7581924 (not res!3037388)) b!7581916))

(assert (= (and b!7581916 res!3037389) b!7581926))

(assert (= (and b!7581926 res!3037394) b!7581917))

(assert (= (and b!7581917 res!3037391) b!7581927))

(assert (= (and b!7581916 (not res!3037395)) b!7581920))

(assert (= (and b!7581920 res!3037392) b!7581921))

(assert (= (and b!7581921 (not res!3037393)) b!7581915))

(assert (= (and b!7581915 (not res!3037390)) b!7581928))

(assert (= (or b!7581922 b!7581921 b!7581926) bm!695160))

(assert (=> b!7581928 m!8136106))

(assert (=> b!7581915 m!8136108))

(assert (=> b!7581915 m!8136108))

(assert (=> b!7581915 m!8136110))

(assert (=> b!7581927 m!8136106))

(assert (=> bm!695160 m!8136076))

(assert (=> d!2318524 m!8136076))

(assert (=> d!2318524 m!8136078))

(assert (=> b!7581917 m!8136108))

(assert (=> b!7581917 m!8136108))

(assert (=> b!7581917 m!8136110))

(declare-fun m!8136124 () Bool)

(assert (=> b!7581923 m!8136124))

(assert (=> b!7581918 m!8136106))

(assert (=> b!7581918 m!8136106))

(declare-fun m!8136126 () Bool)

(assert (=> b!7581918 m!8136126))

(assert (=> b!7581918 m!8136108))

(assert (=> b!7581918 m!8136126))

(assert (=> b!7581918 m!8136108))

(declare-fun m!8136128 () Bool)

(assert (=> b!7581918 m!8136128))

(assert (=> b!7581807 d!2318524))

(declare-fun b!7582033 () Bool)

(assert (=> b!7582033 true))

(assert (=> b!7582033 true))

(declare-fun bs!1941070 () Bool)

(declare-fun b!7582025 () Bool)

(assert (= bs!1941070 (and b!7582025 b!7582033)))

(declare-fun lambda!466971 () Int)

(declare-fun lambda!466970 () Int)

(assert (=> bs!1941070 (not (= lambda!466971 lambda!466970))))

(assert (=> b!7582025 true))

(assert (=> b!7582025 true))

(declare-fun e!4512745 () Bool)

(declare-fun call!695174 () Bool)

(assert (=> b!7582025 (= e!4512745 call!695174)))

(declare-fun b!7582026 () Bool)

(declare-fun c!1398521 () Bool)

(assert (=> b!7582026 (= c!1398521 ((_ is ElementMatch!20085) r!22341))))

(declare-fun e!4512748 () Bool)

(declare-fun e!4512743 () Bool)

(assert (=> b!7582026 (= e!4512748 e!4512743)))

(declare-fun bm!695168 () Bool)

(declare-fun call!695173 () Bool)

(assert (=> bm!695168 (= call!695173 (isEmpty!41517 s!13436))))

(declare-fun b!7582028 () Bool)

(assert (=> b!7582028 (= e!4512743 (= s!13436 (Cons!72844 (c!1398468 r!22341) Nil!72844)))))

(declare-fun b!7582029 () Bool)

(declare-fun e!4512744 () Bool)

(declare-fun e!4512747 () Bool)

(assert (=> b!7582029 (= e!4512744 e!4512747)))

(declare-fun res!3037442 () Bool)

(assert (=> b!7582029 (= res!3037442 (matchRSpec!4398 (regOne!40683 r!22341) s!13436))))

(assert (=> b!7582029 (=> res!3037442 e!4512747)))

(declare-fun b!7582030 () Bool)

(declare-fun e!4512742 () Bool)

(assert (=> b!7582030 (= e!4512742 e!4512748)))

(declare-fun res!3037444 () Bool)

(assert (=> b!7582030 (= res!3037444 (not ((_ is EmptyLang!20085) r!22341)))))

(assert (=> b!7582030 (=> (not res!3037444) (not e!4512748))))

(declare-fun d!2318526 () Bool)

(declare-fun c!1398520 () Bool)

(assert (=> d!2318526 (= c!1398520 ((_ is EmptyExpr!20085) r!22341))))

(assert (=> d!2318526 (= (matchRSpec!4398 r!22341 s!13436) e!4512742)))

(declare-fun b!7582027 () Bool)

(declare-fun c!1398522 () Bool)

(assert (=> b!7582027 (= c!1398522 ((_ is Union!20085) r!22341))))

(assert (=> b!7582027 (= e!4512743 e!4512744)))

(declare-fun bm!695169 () Bool)

(declare-fun c!1398523 () Bool)

(declare-fun Exists!4318 (Int) Bool)

(assert (=> bm!695169 (= call!695174 (Exists!4318 (ite c!1398523 lambda!466970 lambda!466971)))))

(declare-fun b!7582031 () Bool)

(assert (=> b!7582031 (= e!4512744 e!4512745)))

(assert (=> b!7582031 (= c!1398523 ((_ is Star!20085) r!22341))))

(declare-fun b!7582032 () Bool)

(assert (=> b!7582032 (= e!4512742 call!695173)))

(declare-fun e!4512746 () Bool)

(assert (=> b!7582033 (= e!4512746 call!695174)))

(declare-fun b!7582034 () Bool)

(declare-fun res!3037443 () Bool)

(assert (=> b!7582034 (=> res!3037443 e!4512746)))

(assert (=> b!7582034 (= res!3037443 call!695173)))

(assert (=> b!7582034 (= e!4512745 e!4512746)))

(declare-fun b!7582035 () Bool)

(assert (=> b!7582035 (= e!4512747 (matchRSpec!4398 (regTwo!40683 r!22341) s!13436))))

(assert (= (and d!2318526 c!1398520) b!7582032))

(assert (= (and d!2318526 (not c!1398520)) b!7582030))

(assert (= (and b!7582030 res!3037444) b!7582026))

(assert (= (and b!7582026 c!1398521) b!7582028))

(assert (= (and b!7582026 (not c!1398521)) b!7582027))

(assert (= (and b!7582027 c!1398522) b!7582029))

(assert (= (and b!7582027 (not c!1398522)) b!7582031))

(assert (= (and b!7582029 (not res!3037442)) b!7582035))

(assert (= (and b!7582031 c!1398523) b!7582034))

(assert (= (and b!7582031 (not c!1398523)) b!7582025))

(assert (= (and b!7582034 (not res!3037443)) b!7582033))

(assert (= (or b!7582033 b!7582025) bm!695169))

(assert (= (or b!7582032 b!7582034) bm!695168))

(assert (=> bm!695168 m!8136076))

(declare-fun m!8136142 () Bool)

(assert (=> b!7582029 m!8136142))

(declare-fun m!8136144 () Bool)

(assert (=> bm!695169 m!8136144))

(declare-fun m!8136146 () Bool)

(assert (=> b!7582035 m!8136146))

(assert (=> b!7581807 d!2318526))

(declare-fun d!2318530 () Bool)

(assert (=> d!2318530 (= (matchR!9677 r!22341 s!13436) (matchRSpec!4398 r!22341 s!13436))))

(declare-fun lt!2652673 () Unit!167126)

(declare-fun choose!58616 (Regex!20085 List!72968) Unit!167126)

(assert (=> d!2318530 (= lt!2652673 (choose!58616 r!22341 s!13436))))

(assert (=> d!2318530 (validRegex!10513 r!22341)))

(assert (=> d!2318530 (= (mainMatchTheorem!4392 r!22341 s!13436) lt!2652673)))

(declare-fun bs!1941071 () Bool)

(assert (= bs!1941071 d!2318530))

(assert (=> bs!1941071 m!8136062))

(assert (=> bs!1941071 m!8136064))

(declare-fun m!8136148 () Bool)

(assert (=> bs!1941071 m!8136148))

(assert (=> bs!1941071 m!8136078))

(assert (=> b!7581807 d!2318530))

(declare-fun d!2318532 () Bool)

(assert (=> d!2318532 (= (isEmpty!41517 s!13436) ((_ is Nil!72844) s!13436))))

(assert (=> b!7581802 d!2318532))

(declare-fun b!7582051 () Bool)

(declare-fun e!4512751 () Bool)

(declare-fun tp!2209530 () Bool)

(declare-fun tp!2209528 () Bool)

(assert (=> b!7582051 (= e!4512751 (and tp!2209530 tp!2209528))))

(declare-fun b!7582053 () Bool)

(declare-fun tp!2209529 () Bool)

(declare-fun tp!2209532 () Bool)

(assert (=> b!7582053 (= e!4512751 (and tp!2209529 tp!2209532))))

(assert (=> b!7581809 (= tp!2209513 e!4512751)))

(declare-fun b!7582050 () Bool)

(assert (=> b!7582050 (= e!4512751 tp_is_empty!50525)))

(declare-fun b!7582052 () Bool)

(declare-fun tp!2209531 () Bool)

(assert (=> b!7582052 (= e!4512751 tp!2209531)))

(assert (= (and b!7581809 ((_ is ElementMatch!20085) (regOne!40683 r!22341))) b!7582050))

(assert (= (and b!7581809 ((_ is Concat!28930) (regOne!40683 r!22341))) b!7582051))

(assert (= (and b!7581809 ((_ is Star!20085) (regOne!40683 r!22341))) b!7582052))

(assert (= (and b!7581809 ((_ is Union!20085) (regOne!40683 r!22341))) b!7582053))

(declare-fun b!7582055 () Bool)

(declare-fun e!4512752 () Bool)

(declare-fun tp!2209535 () Bool)

(declare-fun tp!2209533 () Bool)

(assert (=> b!7582055 (= e!4512752 (and tp!2209535 tp!2209533))))

(declare-fun b!7582057 () Bool)

(declare-fun tp!2209534 () Bool)

(declare-fun tp!2209537 () Bool)

(assert (=> b!7582057 (= e!4512752 (and tp!2209534 tp!2209537))))

(assert (=> b!7581809 (= tp!2209515 e!4512752)))

(declare-fun b!7582054 () Bool)

(assert (=> b!7582054 (= e!4512752 tp_is_empty!50525)))

(declare-fun b!7582056 () Bool)

(declare-fun tp!2209536 () Bool)

(assert (=> b!7582056 (= e!4512752 tp!2209536)))

(assert (= (and b!7581809 ((_ is ElementMatch!20085) (regTwo!40683 r!22341))) b!7582054))

(assert (= (and b!7581809 ((_ is Concat!28930) (regTwo!40683 r!22341))) b!7582055))

(assert (= (and b!7581809 ((_ is Star!20085) (regTwo!40683 r!22341))) b!7582056))

(assert (= (and b!7581809 ((_ is Union!20085) (regTwo!40683 r!22341))) b!7582057))

(declare-fun b!7582062 () Bool)

(declare-fun e!4512755 () Bool)

(declare-fun tp!2209540 () Bool)

(assert (=> b!7582062 (= e!4512755 (and tp_is_empty!50525 tp!2209540))))

(assert (=> b!7581804 (= tp!2209512 e!4512755)))

(assert (= (and b!7581804 ((_ is Cons!72844) (t!387703 s!13436))) b!7582062))

(declare-fun b!7582064 () Bool)

(declare-fun e!4512756 () Bool)

(declare-fun tp!2209543 () Bool)

(declare-fun tp!2209541 () Bool)

(assert (=> b!7582064 (= e!4512756 (and tp!2209543 tp!2209541))))

(declare-fun b!7582066 () Bool)

(declare-fun tp!2209542 () Bool)

(declare-fun tp!2209545 () Bool)

(assert (=> b!7582066 (= e!4512756 (and tp!2209542 tp!2209545))))

(assert (=> b!7581803 (= tp!2209514 e!4512756)))

(declare-fun b!7582063 () Bool)

(assert (=> b!7582063 (= e!4512756 tp_is_empty!50525)))

(declare-fun b!7582065 () Bool)

(declare-fun tp!2209544 () Bool)

(assert (=> b!7582065 (= e!4512756 tp!2209544)))

(assert (= (and b!7581803 ((_ is ElementMatch!20085) (reg!20414 r!22341))) b!7582063))

(assert (= (and b!7581803 ((_ is Concat!28930) (reg!20414 r!22341))) b!7582064))

(assert (= (and b!7581803 ((_ is Star!20085) (reg!20414 r!22341))) b!7582065))

(assert (= (and b!7581803 ((_ is Union!20085) (reg!20414 r!22341))) b!7582066))

(declare-fun b!7582068 () Bool)

(declare-fun e!4512757 () Bool)

(declare-fun tp!2209548 () Bool)

(declare-fun tp!2209546 () Bool)

(assert (=> b!7582068 (= e!4512757 (and tp!2209548 tp!2209546))))

(declare-fun b!7582070 () Bool)

(declare-fun tp!2209547 () Bool)

(declare-fun tp!2209550 () Bool)

(assert (=> b!7582070 (= e!4512757 (and tp!2209547 tp!2209550))))

(assert (=> b!7581806 (= tp!2209516 e!4512757)))

(declare-fun b!7582067 () Bool)

(assert (=> b!7582067 (= e!4512757 tp_is_empty!50525)))

(declare-fun b!7582069 () Bool)

(declare-fun tp!2209549 () Bool)

(assert (=> b!7582069 (= e!4512757 tp!2209549)))

(assert (= (and b!7581806 ((_ is ElementMatch!20085) (regOne!40682 r!22341))) b!7582067))

(assert (= (and b!7581806 ((_ is Concat!28930) (regOne!40682 r!22341))) b!7582068))

(assert (= (and b!7581806 ((_ is Star!20085) (regOne!40682 r!22341))) b!7582069))

(assert (= (and b!7581806 ((_ is Union!20085) (regOne!40682 r!22341))) b!7582070))

(declare-fun b!7582072 () Bool)

(declare-fun e!4512758 () Bool)

(declare-fun tp!2209553 () Bool)

(declare-fun tp!2209551 () Bool)

(assert (=> b!7582072 (= e!4512758 (and tp!2209553 tp!2209551))))

(declare-fun b!7582074 () Bool)

(declare-fun tp!2209552 () Bool)

(declare-fun tp!2209555 () Bool)

(assert (=> b!7582074 (= e!4512758 (and tp!2209552 tp!2209555))))

(assert (=> b!7581806 (= tp!2209517 e!4512758)))

(declare-fun b!7582071 () Bool)

(assert (=> b!7582071 (= e!4512758 tp_is_empty!50525)))

(declare-fun b!7582073 () Bool)

(declare-fun tp!2209554 () Bool)

(assert (=> b!7582073 (= e!4512758 tp!2209554)))

(assert (= (and b!7581806 ((_ is ElementMatch!20085) (regTwo!40682 r!22341))) b!7582071))

(assert (= (and b!7581806 ((_ is Concat!28930) (regTwo!40682 r!22341))) b!7582072))

(assert (= (and b!7581806 ((_ is Star!20085) (regTwo!40682 r!22341))) b!7582073))

(assert (= (and b!7581806 ((_ is Union!20085) (regTwo!40682 r!22341))) b!7582074))

(check-sat (not b!7582066) (not bm!695144) (not b!7581918) (not b!7581857) (not b!7581909) (not b!7582069) (not b!7582035) (not d!2318506) (not bm!695160) (not bm!695159) (not bm!695148) (not b!7582055) (not b!7582070) (not b!7581927) (not b!7582064) (not d!2318522) (not b!7582053) (not b!7582065) (not b!7582073) (not b!7581901) (not b!7582051) (not b!7581915) (not b!7581903) (not d!2318530) (not b!7581917) (not b!7582072) (not d!2318524) (not b!7582062) (not b!7581830) (not b!7581904) (not b!7581928) (not b!7582057) (not b!7581913) (not b!7582074) (not b!7581914) (not b!7581923) (not bm!695169) tp_is_empty!50525 (not d!2318510) (not b!7582029) (not bm!695168) (not bm!695143) (not d!2318520) (not b!7582068) (not b!7582056) (not bm!695149) (not b!7582052))
(check-sat)
(get-model)

(declare-fun d!2318542 () Bool)

(declare-fun nullableFct!3495 (Regex!20085) Bool)

(assert (=> d!2318542 (= (nullable!8777 (reg!20414 (regTwo!40683 r!22341))) (nullableFct!3495 (reg!20414 (regTwo!40683 r!22341))))))

(declare-fun bs!1941075 () Bool)

(assert (= bs!1941075 d!2318542))

(declare-fun m!8136174 () Bool)

(assert (=> bs!1941075 m!8136174))

(assert (=> b!7581857 d!2318542))

(declare-fun bs!1941076 () Bool)

(declare-fun b!7582166 () Bool)

(assert (= bs!1941076 (and b!7582166 b!7582033)))

(declare-fun lambda!466978 () Int)

(assert (=> bs!1941076 (= (and (= (reg!20414 (regTwo!40683 r!22341)) (reg!20414 r!22341)) (= (regTwo!40683 r!22341) r!22341)) (= lambda!466978 lambda!466970))))

(declare-fun bs!1941077 () Bool)

(assert (= bs!1941077 (and b!7582166 b!7582025)))

(assert (=> bs!1941077 (not (= lambda!466978 lambda!466971))))

(assert (=> b!7582166 true))

(assert (=> b!7582166 true))

(declare-fun bs!1941078 () Bool)

(declare-fun b!7582158 () Bool)

(assert (= bs!1941078 (and b!7582158 b!7582033)))

(declare-fun lambda!466979 () Int)

(assert (=> bs!1941078 (not (= lambda!466979 lambda!466970))))

(declare-fun bs!1941079 () Bool)

(assert (= bs!1941079 (and b!7582158 b!7582025)))

(assert (=> bs!1941079 (= (and (= (regOne!40682 (regTwo!40683 r!22341)) (regOne!40682 r!22341)) (= (regTwo!40682 (regTwo!40683 r!22341)) (regTwo!40682 r!22341))) (= lambda!466979 lambda!466971))))

(declare-fun bs!1941080 () Bool)

(assert (= bs!1941080 (and b!7582158 b!7582166)))

(assert (=> bs!1941080 (not (= lambda!466979 lambda!466978))))

(assert (=> b!7582158 true))

(assert (=> b!7582158 true))

(declare-fun e!4512797 () Bool)

(declare-fun call!695186 () Bool)

(assert (=> b!7582158 (= e!4512797 call!695186)))

(declare-fun b!7582159 () Bool)

(declare-fun c!1398534 () Bool)

(assert (=> b!7582159 (= c!1398534 ((_ is ElementMatch!20085) (regTwo!40683 r!22341)))))

(declare-fun e!4512800 () Bool)

(declare-fun e!4512795 () Bool)

(assert (=> b!7582159 (= e!4512800 e!4512795)))

(declare-fun bm!695180 () Bool)

(declare-fun call!695185 () Bool)

(assert (=> bm!695180 (= call!695185 (isEmpty!41517 s!13436))))

(declare-fun b!7582161 () Bool)

(assert (=> b!7582161 (= e!4512795 (= s!13436 (Cons!72844 (c!1398468 (regTwo!40683 r!22341)) Nil!72844)))))

(declare-fun b!7582162 () Bool)

(declare-fun e!4512796 () Bool)

(declare-fun e!4512799 () Bool)

(assert (=> b!7582162 (= e!4512796 e!4512799)))

(declare-fun res!3037471 () Bool)

(assert (=> b!7582162 (= res!3037471 (matchRSpec!4398 (regOne!40683 (regTwo!40683 r!22341)) s!13436))))

(assert (=> b!7582162 (=> res!3037471 e!4512799)))

(declare-fun b!7582163 () Bool)

(declare-fun e!4512794 () Bool)

(assert (=> b!7582163 (= e!4512794 e!4512800)))

(declare-fun res!3037473 () Bool)

(assert (=> b!7582163 (= res!3037473 (not ((_ is EmptyLang!20085) (regTwo!40683 r!22341))))))

(assert (=> b!7582163 (=> (not res!3037473) (not e!4512800))))

(declare-fun d!2318544 () Bool)

(declare-fun c!1398533 () Bool)

(assert (=> d!2318544 (= c!1398533 ((_ is EmptyExpr!20085) (regTwo!40683 r!22341)))))

(assert (=> d!2318544 (= (matchRSpec!4398 (regTwo!40683 r!22341) s!13436) e!4512794)))

(declare-fun b!7582160 () Bool)

(declare-fun c!1398535 () Bool)

(assert (=> b!7582160 (= c!1398535 ((_ is Union!20085) (regTwo!40683 r!22341)))))

(assert (=> b!7582160 (= e!4512795 e!4512796)))

(declare-fun bm!695181 () Bool)

(declare-fun c!1398536 () Bool)

(assert (=> bm!695181 (= call!695186 (Exists!4318 (ite c!1398536 lambda!466978 lambda!466979)))))

(declare-fun b!7582164 () Bool)

(assert (=> b!7582164 (= e!4512796 e!4512797)))

(assert (=> b!7582164 (= c!1398536 ((_ is Star!20085) (regTwo!40683 r!22341)))))

(declare-fun b!7582165 () Bool)

(assert (=> b!7582165 (= e!4512794 call!695185)))

(declare-fun e!4512798 () Bool)

(assert (=> b!7582166 (= e!4512798 call!695186)))

(declare-fun b!7582167 () Bool)

(declare-fun res!3037472 () Bool)

(assert (=> b!7582167 (=> res!3037472 e!4512798)))

(assert (=> b!7582167 (= res!3037472 call!695185)))

(assert (=> b!7582167 (= e!4512797 e!4512798)))

(declare-fun b!7582168 () Bool)

(assert (=> b!7582168 (= e!4512799 (matchRSpec!4398 (regTwo!40683 (regTwo!40683 r!22341)) s!13436))))

(assert (= (and d!2318544 c!1398533) b!7582165))

(assert (= (and d!2318544 (not c!1398533)) b!7582163))

(assert (= (and b!7582163 res!3037473) b!7582159))

(assert (= (and b!7582159 c!1398534) b!7582161))

(assert (= (and b!7582159 (not c!1398534)) b!7582160))

(assert (= (and b!7582160 c!1398535) b!7582162))

(assert (= (and b!7582160 (not c!1398535)) b!7582164))

(assert (= (and b!7582162 (not res!3037471)) b!7582168))

(assert (= (and b!7582164 c!1398536) b!7582167))

(assert (= (and b!7582164 (not c!1398536)) b!7582158))

(assert (= (and b!7582167 (not res!3037472)) b!7582166))

(assert (= (or b!7582166 b!7582158) bm!695181))

(assert (= (or b!7582165 b!7582167) bm!695180))

(assert (=> bm!695180 m!8136076))

(declare-fun m!8136176 () Bool)

(assert (=> b!7582162 m!8136176))

(declare-fun m!8136178 () Bool)

(assert (=> bm!695181 m!8136178))

(declare-fun m!8136180 () Bool)

(assert (=> b!7582168 m!8136180))

(assert (=> b!7582035 d!2318544))

(declare-fun d!2318546 () Bool)

(assert (=> d!2318546 (= (head!15604 s!13436) (h!79292 s!13436))))

(assert (=> b!7581928 d!2318546))

(declare-fun d!2318548 () Bool)

(assert (=> d!2318548 (= (isEmpty!41517 (tail!15144 s!13436)) ((_ is Nil!72844) (tail!15144 s!13436)))))

(assert (=> b!7581901 d!2318548))

(declare-fun d!2318550 () Bool)

(assert (=> d!2318550 (= (tail!15144 s!13436) (t!387703 s!13436))))

(assert (=> b!7581901 d!2318550))

(declare-fun b!7582183 () Bool)

(declare-fun e!4512818 () Bool)

(declare-fun e!4512814 () Bool)

(assert (=> b!7582183 (= e!4512818 e!4512814)))

(declare-fun c!1398539 () Bool)

(assert (=> b!7582183 (= c!1398539 ((_ is Union!20085) r!22341))))

(declare-fun b!7582184 () Bool)

(declare-fun e!4512815 () Bool)

(assert (=> b!7582184 (= e!4512815 e!4512818)))

(declare-fun res!3037484 () Bool)

(assert (=> b!7582184 (=> (not res!3037484) (not e!4512818))))

(assert (=> b!7582184 (= res!3037484 (and (not ((_ is ElementMatch!20085) r!22341)) (not ((_ is Star!20085) r!22341))))))

(declare-fun bm!695186 () Bool)

(declare-fun call!695191 () Bool)

(assert (=> bm!695186 (= call!695191 (lostCause!1861 (ite c!1398539 (regTwo!40683 r!22341) (regTwo!40682 r!22341))))))

(declare-fun b!7582185 () Bool)

(declare-fun e!4512813 () Bool)

(assert (=> b!7582185 (= e!4512813 call!695191)))

(declare-fun bm!695187 () Bool)

(declare-fun call!695192 () Bool)

(assert (=> bm!695187 (= call!695192 (lostCause!1861 (ite c!1398539 (regOne!40683 r!22341) (regOne!40682 r!22341))))))

(declare-fun b!7582187 () Bool)

(declare-fun e!4512816 () Bool)

(assert (=> b!7582187 (= e!4512816 call!695191)))

(declare-fun b!7582188 () Bool)

(declare-fun e!4512817 () Bool)

(assert (=> b!7582188 (= e!4512817 e!4512815)))

(declare-fun res!3037487 () Bool)

(assert (=> b!7582188 (=> res!3037487 e!4512815)))

(assert (=> b!7582188 (= res!3037487 ((_ is EmptyLang!20085) r!22341))))

(declare-fun b!7582189 () Bool)

(assert (=> b!7582189 (= e!4512814 e!4512816)))

(declare-fun res!3037485 () Bool)

(assert (=> b!7582189 (= res!3037485 call!695192)))

(assert (=> b!7582189 (=> (not res!3037485) (not e!4512816))))

(declare-fun b!7582186 () Bool)

(assert (=> b!7582186 (= e!4512814 e!4512813)))

(declare-fun res!3037486 () Bool)

(assert (=> b!7582186 (= res!3037486 call!695192)))

(assert (=> b!7582186 (=> res!3037486 e!4512813)))

(declare-fun d!2318552 () Bool)

(declare-fun lt!2652683 () Bool)

(declare-datatypes ((Option!17299 0))(
  ( (None!17298) (Some!17298 (v!54433 List!72968)) )
))
(declare-fun isEmpty!41518 (Option!17299) Bool)

(declare-fun getLanguageWitness!1118 (Regex!20085) Option!17299)

(assert (=> d!2318552 (= lt!2652683 (isEmpty!41518 (getLanguageWitness!1118 r!22341)))))

(assert (=> d!2318552 (= lt!2652683 e!4512817)))

(declare-fun res!3037488 () Bool)

(assert (=> d!2318552 (=> (not res!3037488) (not e!4512817))))

(assert (=> d!2318552 (= res!3037488 (not ((_ is EmptyExpr!20085) r!22341)))))

(assert (=> d!2318552 (= (lostCauseFct!513 r!22341) lt!2652683)))

(assert (= (and d!2318552 res!3037488) b!7582188))

(assert (= (and b!7582188 (not res!3037487)) b!7582184))

(assert (= (and b!7582184 res!3037484) b!7582183))

(assert (= (and b!7582183 c!1398539) b!7582189))

(assert (= (and b!7582183 (not c!1398539)) b!7582186))

(assert (= (and b!7582189 res!3037485) b!7582187))

(assert (= (and b!7582186 (not res!3037486)) b!7582185))

(assert (= (or b!7582187 b!7582185) bm!695186))

(assert (= (or b!7582189 b!7582186) bm!695187))

(declare-fun m!8136182 () Bool)

(assert (=> bm!695186 m!8136182))

(declare-fun m!8136184 () Bool)

(assert (=> bm!695187 m!8136184))

(declare-fun m!8136186 () Bool)

(assert (=> d!2318552 m!8136186))

(assert (=> d!2318552 m!8136186))

(declare-fun m!8136188 () Bool)

(assert (=> d!2318552 m!8136188))

(assert (=> d!2318522 d!2318552))

(declare-fun b!7582190 () Bool)

(declare-fun e!4512825 () Bool)

(declare-fun call!695193 () Bool)

(assert (=> b!7582190 (= e!4512825 call!695193)))

(declare-fun b!7582191 () Bool)

(declare-fun e!4512819 () Bool)

(declare-fun e!4512820 () Bool)

(assert (=> b!7582191 (= e!4512819 e!4512820)))

(declare-fun c!1398540 () Bool)

(assert (=> b!7582191 (= c!1398540 ((_ is Union!20085) (ite c!1398479 (regTwo!40683 (regTwo!40683 r!22341)) (regOne!40682 (regTwo!40683 r!22341)))))))

(declare-fun b!7582192 () Bool)

(declare-fun e!4512821 () Bool)

(assert (=> b!7582192 (= e!4512819 e!4512821)))

(declare-fun res!3037491 () Bool)

(assert (=> b!7582192 (= res!3037491 (not (nullable!8777 (reg!20414 (ite c!1398479 (regTwo!40683 (regTwo!40683 r!22341)) (regOne!40682 (regTwo!40683 r!22341)))))))))

(assert (=> b!7582192 (=> (not res!3037491) (not e!4512821))))

(declare-fun bm!695188 () Bool)

(declare-fun call!695194 () Bool)

(assert (=> bm!695188 (= call!695193 call!695194)))

(declare-fun d!2318554 () Bool)

(declare-fun res!3037489 () Bool)

(declare-fun e!4512824 () Bool)

(assert (=> d!2318554 (=> res!3037489 e!4512824)))

(assert (=> d!2318554 (= res!3037489 ((_ is ElementMatch!20085) (ite c!1398479 (regTwo!40683 (regTwo!40683 r!22341)) (regOne!40682 (regTwo!40683 r!22341)))))))

(assert (=> d!2318554 (= (validRegex!10513 (ite c!1398479 (regTwo!40683 (regTwo!40683 r!22341)) (regOne!40682 (regTwo!40683 r!22341)))) e!4512824)))

(declare-fun call!695195 () Bool)

(declare-fun bm!695189 () Bool)

(assert (=> bm!695189 (= call!695195 (validRegex!10513 (ite c!1398540 (regTwo!40683 (ite c!1398479 (regTwo!40683 (regTwo!40683 r!22341)) (regOne!40682 (regTwo!40683 r!22341)))) (regOne!40682 (ite c!1398479 (regTwo!40683 (regTwo!40683 r!22341)) (regOne!40682 (regTwo!40683 r!22341)))))))))

(declare-fun b!7582193 () Bool)

(declare-fun e!4512822 () Bool)

(assert (=> b!7582193 (= e!4512822 e!4512825)))

(declare-fun res!3037492 () Bool)

(assert (=> b!7582193 (=> (not res!3037492) (not e!4512825))))

(assert (=> b!7582193 (= res!3037492 call!695195)))

(declare-fun b!7582194 () Bool)

(declare-fun res!3037493 () Bool)

(declare-fun e!4512823 () Bool)

(assert (=> b!7582194 (=> (not res!3037493) (not e!4512823))))

(assert (=> b!7582194 (= res!3037493 call!695193)))

(assert (=> b!7582194 (= e!4512820 e!4512823)))

(declare-fun b!7582195 () Bool)

(assert (=> b!7582195 (= e!4512821 call!695194)))

(declare-fun b!7582196 () Bool)

(assert (=> b!7582196 (= e!4512824 e!4512819)))

(declare-fun c!1398541 () Bool)

(assert (=> b!7582196 (= c!1398541 ((_ is Star!20085) (ite c!1398479 (regTwo!40683 (regTwo!40683 r!22341)) (regOne!40682 (regTwo!40683 r!22341)))))))

(declare-fun b!7582197 () Bool)

(declare-fun res!3037490 () Bool)

(assert (=> b!7582197 (=> res!3037490 e!4512822)))

(assert (=> b!7582197 (= res!3037490 (not ((_ is Concat!28930) (ite c!1398479 (regTwo!40683 (regTwo!40683 r!22341)) (regOne!40682 (regTwo!40683 r!22341))))))))

(assert (=> b!7582197 (= e!4512820 e!4512822)))

(declare-fun bm!695190 () Bool)

(assert (=> bm!695190 (= call!695194 (validRegex!10513 (ite c!1398541 (reg!20414 (ite c!1398479 (regTwo!40683 (regTwo!40683 r!22341)) (regOne!40682 (regTwo!40683 r!22341)))) (ite c!1398540 (regOne!40683 (ite c!1398479 (regTwo!40683 (regTwo!40683 r!22341)) (regOne!40682 (regTwo!40683 r!22341)))) (regTwo!40682 (ite c!1398479 (regTwo!40683 (regTwo!40683 r!22341)) (regOne!40682 (regTwo!40683 r!22341))))))))))

(declare-fun b!7582198 () Bool)

(assert (=> b!7582198 (= e!4512823 call!695195)))

(assert (= (and d!2318554 (not res!3037489)) b!7582196))

(assert (= (and b!7582196 c!1398541) b!7582192))

(assert (= (and b!7582196 (not c!1398541)) b!7582191))

(assert (= (and b!7582192 res!3037491) b!7582195))

(assert (= (and b!7582191 c!1398540) b!7582194))

(assert (= (and b!7582191 (not c!1398540)) b!7582197))

(assert (= (and b!7582194 res!3037493) b!7582198))

(assert (= (and b!7582197 (not res!3037490)) b!7582193))

(assert (= (and b!7582193 res!3037492) b!7582190))

(assert (= (or b!7582198 b!7582193) bm!695189))

(assert (= (or b!7582194 b!7582190) bm!695188))

(assert (= (or b!7582195 bm!695188) bm!695190))

(declare-fun m!8136190 () Bool)

(assert (=> b!7582192 m!8136190))

(declare-fun m!8136192 () Bool)

(assert (=> bm!695189 m!8136192))

(declare-fun m!8136194 () Bool)

(assert (=> bm!695190 m!8136194))

(assert (=> bm!695148 d!2318554))

(declare-fun b!7582199 () Bool)

(declare-fun e!4512831 () Bool)

(declare-fun e!4512827 () Bool)

(assert (=> b!7582199 (= e!4512831 e!4512827)))

(declare-fun c!1398542 () Bool)

(assert (=> b!7582199 (= c!1398542 ((_ is Union!20085) (regTwo!40683 r!22341)))))

(declare-fun b!7582200 () Bool)

(declare-fun e!4512828 () Bool)

(assert (=> b!7582200 (= e!4512828 e!4512831)))

(declare-fun res!3037494 () Bool)

(assert (=> b!7582200 (=> (not res!3037494) (not e!4512831))))

(assert (=> b!7582200 (= res!3037494 (and (not ((_ is ElementMatch!20085) (regTwo!40683 r!22341))) (not ((_ is Star!20085) (regTwo!40683 r!22341)))))))

(declare-fun bm!695191 () Bool)

(declare-fun call!695196 () Bool)

(assert (=> bm!695191 (= call!695196 (lostCause!1861 (ite c!1398542 (regTwo!40683 (regTwo!40683 r!22341)) (regTwo!40682 (regTwo!40683 r!22341)))))))

(declare-fun b!7582201 () Bool)

(declare-fun e!4512826 () Bool)

(assert (=> b!7582201 (= e!4512826 call!695196)))

(declare-fun bm!695192 () Bool)

(declare-fun call!695197 () Bool)

(assert (=> bm!695192 (= call!695197 (lostCause!1861 (ite c!1398542 (regOne!40683 (regTwo!40683 r!22341)) (regOne!40682 (regTwo!40683 r!22341)))))))

(declare-fun b!7582203 () Bool)

(declare-fun e!4512829 () Bool)

(assert (=> b!7582203 (= e!4512829 call!695196)))

(declare-fun b!7582204 () Bool)

(declare-fun e!4512830 () Bool)

(assert (=> b!7582204 (= e!4512830 e!4512828)))

(declare-fun res!3037497 () Bool)

(assert (=> b!7582204 (=> res!3037497 e!4512828)))

(assert (=> b!7582204 (= res!3037497 ((_ is EmptyLang!20085) (regTwo!40683 r!22341)))))

(declare-fun b!7582205 () Bool)

(assert (=> b!7582205 (= e!4512827 e!4512829)))

(declare-fun res!3037495 () Bool)

(assert (=> b!7582205 (= res!3037495 call!695197)))

(assert (=> b!7582205 (=> (not res!3037495) (not e!4512829))))

(declare-fun b!7582202 () Bool)

(assert (=> b!7582202 (= e!4512827 e!4512826)))

(declare-fun res!3037496 () Bool)

(assert (=> b!7582202 (= res!3037496 call!695197)))

(assert (=> b!7582202 (=> res!3037496 e!4512826)))

(declare-fun d!2318556 () Bool)

(declare-fun lt!2652684 () Bool)

(assert (=> d!2318556 (= lt!2652684 (isEmpty!41518 (getLanguageWitness!1118 (regTwo!40683 r!22341))))))

(assert (=> d!2318556 (= lt!2652684 e!4512830)))

(declare-fun res!3037498 () Bool)

(assert (=> d!2318556 (=> (not res!3037498) (not e!4512830))))

(assert (=> d!2318556 (= res!3037498 (not ((_ is EmptyExpr!20085) (regTwo!40683 r!22341))))))

(assert (=> d!2318556 (= (lostCauseFct!513 (regTwo!40683 r!22341)) lt!2652684)))

(assert (= (and d!2318556 res!3037498) b!7582204))

(assert (= (and b!7582204 (not res!3037497)) b!7582200))

(assert (= (and b!7582200 res!3037494) b!7582199))

(assert (= (and b!7582199 c!1398542) b!7582205))

(assert (= (and b!7582199 (not c!1398542)) b!7582202))

(assert (= (and b!7582205 res!3037495) b!7582203))

(assert (= (and b!7582202 (not res!3037496)) b!7582201))

(assert (= (or b!7582203 b!7582201) bm!695191))

(assert (= (or b!7582205 b!7582202) bm!695192))

(declare-fun m!8136196 () Bool)

(assert (=> bm!695191 m!8136196))

(declare-fun m!8136198 () Bool)

(assert (=> bm!695192 m!8136198))

(declare-fun m!8136200 () Bool)

(assert (=> d!2318556 m!8136200))

(assert (=> d!2318556 m!8136200))

(declare-fun m!8136202 () Bool)

(assert (=> d!2318556 m!8136202))

(assert (=> d!2318506 d!2318556))

(declare-fun d!2318558 () Bool)

(declare-fun choose!58619 (Int) Bool)

(assert (=> d!2318558 (= (Exists!4318 (ite c!1398523 lambda!466970 lambda!466971)) (choose!58619 (ite c!1398523 lambda!466970 lambda!466971)))))

(declare-fun bs!1941081 () Bool)

(assert (= bs!1941081 d!2318558))

(declare-fun m!8136204 () Bool)

(assert (=> bs!1941081 m!8136204))

(assert (=> bm!695169 d!2318558))

(declare-fun d!2318560 () Bool)

(assert (=> d!2318560 (= (nullable!8777 r!22341) (nullableFct!3495 r!22341))))

(declare-fun bs!1941082 () Bool)

(assert (= bs!1941082 d!2318560))

(declare-fun m!8136206 () Bool)

(assert (=> bs!1941082 m!8136206))

(assert (=> b!7581923 d!2318560))

(assert (=> b!7581913 d!2318546))

(assert (=> b!7581914 d!2318546))

(assert (=> d!2318510 d!2318532))

(declare-fun b!7582206 () Bool)

(declare-fun e!4512838 () Bool)

(declare-fun call!695198 () Bool)

(assert (=> b!7582206 (= e!4512838 call!695198)))

(declare-fun b!7582207 () Bool)

(declare-fun e!4512832 () Bool)

(declare-fun e!4512833 () Bool)

(assert (=> b!7582207 (= e!4512832 e!4512833)))

(declare-fun c!1398543 () Bool)

(assert (=> b!7582207 (= c!1398543 ((_ is Union!20085) (regOne!40683 r!22341)))))

(declare-fun b!7582208 () Bool)

(declare-fun e!4512834 () Bool)

(assert (=> b!7582208 (= e!4512832 e!4512834)))

(declare-fun res!3037501 () Bool)

(assert (=> b!7582208 (= res!3037501 (not (nullable!8777 (reg!20414 (regOne!40683 r!22341)))))))

(assert (=> b!7582208 (=> (not res!3037501) (not e!4512834))))

(declare-fun bm!695193 () Bool)

(declare-fun call!695199 () Bool)

(assert (=> bm!695193 (= call!695198 call!695199)))

(declare-fun d!2318562 () Bool)

(declare-fun res!3037499 () Bool)

(declare-fun e!4512837 () Bool)

(assert (=> d!2318562 (=> res!3037499 e!4512837)))

(assert (=> d!2318562 (= res!3037499 ((_ is ElementMatch!20085) (regOne!40683 r!22341)))))

(assert (=> d!2318562 (= (validRegex!10513 (regOne!40683 r!22341)) e!4512837)))

(declare-fun bm!695194 () Bool)

(declare-fun call!695200 () Bool)

(assert (=> bm!695194 (= call!695200 (validRegex!10513 (ite c!1398543 (regTwo!40683 (regOne!40683 r!22341)) (regOne!40682 (regOne!40683 r!22341)))))))

(declare-fun b!7582209 () Bool)

(declare-fun e!4512835 () Bool)

(assert (=> b!7582209 (= e!4512835 e!4512838)))

(declare-fun res!3037502 () Bool)

(assert (=> b!7582209 (=> (not res!3037502) (not e!4512838))))

(assert (=> b!7582209 (= res!3037502 call!695200)))

(declare-fun b!7582210 () Bool)

(declare-fun res!3037503 () Bool)

(declare-fun e!4512836 () Bool)

(assert (=> b!7582210 (=> (not res!3037503) (not e!4512836))))

(assert (=> b!7582210 (= res!3037503 call!695198)))

(assert (=> b!7582210 (= e!4512833 e!4512836)))

(declare-fun b!7582211 () Bool)

(assert (=> b!7582211 (= e!4512834 call!695199)))

(declare-fun b!7582212 () Bool)

(assert (=> b!7582212 (= e!4512837 e!4512832)))

(declare-fun c!1398544 () Bool)

(assert (=> b!7582212 (= c!1398544 ((_ is Star!20085) (regOne!40683 r!22341)))))

(declare-fun b!7582213 () Bool)

(declare-fun res!3037500 () Bool)

(assert (=> b!7582213 (=> res!3037500 e!4512835)))

(assert (=> b!7582213 (= res!3037500 (not ((_ is Concat!28930) (regOne!40683 r!22341))))))

(assert (=> b!7582213 (= e!4512833 e!4512835)))

(declare-fun bm!695195 () Bool)

(assert (=> bm!695195 (= call!695199 (validRegex!10513 (ite c!1398544 (reg!20414 (regOne!40683 r!22341)) (ite c!1398543 (regOne!40683 (regOne!40683 r!22341)) (regTwo!40682 (regOne!40683 r!22341))))))))

(declare-fun b!7582214 () Bool)

(assert (=> b!7582214 (= e!4512836 call!695200)))

(assert (= (and d!2318562 (not res!3037499)) b!7582212))

(assert (= (and b!7582212 c!1398544) b!7582208))

(assert (= (and b!7582212 (not c!1398544)) b!7582207))

(assert (= (and b!7582208 res!3037501) b!7582211))

(assert (= (and b!7582207 c!1398543) b!7582210))

(assert (= (and b!7582207 (not c!1398543)) b!7582213))

(assert (= (and b!7582210 res!3037503) b!7582214))

(assert (= (and b!7582213 (not res!3037500)) b!7582209))

(assert (= (and b!7582209 res!3037502) b!7582206))

(assert (= (or b!7582214 b!7582209) bm!695194))

(assert (= (or b!7582210 b!7582206) bm!695193))

(assert (= (or b!7582211 bm!695193) bm!695195))

(declare-fun m!8136208 () Bool)

(assert (=> b!7582208 m!8136208))

(declare-fun m!8136210 () Bool)

(assert (=> bm!695194 m!8136210))

(declare-fun m!8136212 () Bool)

(assert (=> bm!695195 m!8136212))

(assert (=> d!2318510 d!2318562))

(assert (=> b!7581927 d!2318546))

(assert (=> bm!695159 d!2318532))

(assert (=> bm!695168 d!2318532))

(assert (=> d!2318520 d!2318510))

(declare-fun d!2318564 () Bool)

(assert (=> d!2318564 (not (matchR!9677 (regOne!40683 r!22341) s!13436))))

(assert (=> d!2318564 true))

(declare-fun _$100!70 () Unit!167126)

(assert (=> d!2318564 (= (choose!58615 (regOne!40683 r!22341) s!13436) _$100!70)))

(declare-fun bs!1941083 () Bool)

(assert (= bs!1941083 d!2318564))

(assert (=> bs!1941083 m!8136070))

(assert (=> d!2318520 d!2318564))

(assert (=> d!2318520 d!2318562))

(declare-fun d!2318566 () Bool)

(assert (=> d!2318566 (= (nullable!8777 (regOne!40683 r!22341)) (nullableFct!3495 (regOne!40683 r!22341)))))

(declare-fun bs!1941084 () Bool)

(assert (= bs!1941084 d!2318566))

(declare-fun m!8136214 () Bool)

(assert (=> bs!1941084 m!8136214))

(assert (=> b!7581909 d!2318566))

(declare-fun bs!1941085 () Bool)

(declare-fun b!7582223 () Bool)

(assert (= bs!1941085 (and b!7582223 b!7582033)))

(declare-fun lambda!466980 () Int)

(assert (=> bs!1941085 (= (and (= (reg!20414 (regOne!40683 r!22341)) (reg!20414 r!22341)) (= (regOne!40683 r!22341) r!22341)) (= lambda!466980 lambda!466970))))

(declare-fun bs!1941086 () Bool)

(assert (= bs!1941086 (and b!7582223 b!7582025)))

(assert (=> bs!1941086 (not (= lambda!466980 lambda!466971))))

(declare-fun bs!1941087 () Bool)

(assert (= bs!1941087 (and b!7582223 b!7582166)))

(assert (=> bs!1941087 (= (and (= (reg!20414 (regOne!40683 r!22341)) (reg!20414 (regTwo!40683 r!22341))) (= (regOne!40683 r!22341) (regTwo!40683 r!22341))) (= lambda!466980 lambda!466978))))

(declare-fun bs!1941088 () Bool)

(assert (= bs!1941088 (and b!7582223 b!7582158)))

(assert (=> bs!1941088 (not (= lambda!466980 lambda!466979))))

(assert (=> b!7582223 true))

(assert (=> b!7582223 true))

(declare-fun bs!1941089 () Bool)

(declare-fun b!7582215 () Bool)

(assert (= bs!1941089 (and b!7582215 b!7582025)))

(declare-fun lambda!466981 () Int)

(assert (=> bs!1941089 (= (and (= (regOne!40682 (regOne!40683 r!22341)) (regOne!40682 r!22341)) (= (regTwo!40682 (regOne!40683 r!22341)) (regTwo!40682 r!22341))) (= lambda!466981 lambda!466971))))

(declare-fun bs!1941090 () Bool)

(assert (= bs!1941090 (and b!7582215 b!7582223)))

(assert (=> bs!1941090 (not (= lambda!466981 lambda!466980))))

(declare-fun bs!1941091 () Bool)

(assert (= bs!1941091 (and b!7582215 b!7582033)))

(assert (=> bs!1941091 (not (= lambda!466981 lambda!466970))))

(declare-fun bs!1941092 () Bool)

(assert (= bs!1941092 (and b!7582215 b!7582166)))

(assert (=> bs!1941092 (not (= lambda!466981 lambda!466978))))

(declare-fun bs!1941093 () Bool)

(assert (= bs!1941093 (and b!7582215 b!7582158)))

(assert (=> bs!1941093 (= (and (= (regOne!40682 (regOne!40683 r!22341)) (regOne!40682 (regTwo!40683 r!22341))) (= (regTwo!40682 (regOne!40683 r!22341)) (regTwo!40682 (regTwo!40683 r!22341)))) (= lambda!466981 lambda!466979))))

(assert (=> b!7582215 true))

(assert (=> b!7582215 true))

(declare-fun e!4512842 () Bool)

(declare-fun call!695202 () Bool)

(assert (=> b!7582215 (= e!4512842 call!695202)))

(declare-fun b!7582216 () Bool)

(declare-fun c!1398546 () Bool)

(assert (=> b!7582216 (= c!1398546 ((_ is ElementMatch!20085) (regOne!40683 r!22341)))))

(declare-fun e!4512845 () Bool)

(declare-fun e!4512840 () Bool)

(assert (=> b!7582216 (= e!4512845 e!4512840)))

(declare-fun bm!695196 () Bool)

(declare-fun call!695201 () Bool)

(assert (=> bm!695196 (= call!695201 (isEmpty!41517 s!13436))))

(declare-fun b!7582218 () Bool)

(assert (=> b!7582218 (= e!4512840 (= s!13436 (Cons!72844 (c!1398468 (regOne!40683 r!22341)) Nil!72844)))))

(declare-fun b!7582219 () Bool)

(declare-fun e!4512841 () Bool)

(declare-fun e!4512844 () Bool)

(assert (=> b!7582219 (= e!4512841 e!4512844)))

(declare-fun res!3037504 () Bool)

(assert (=> b!7582219 (= res!3037504 (matchRSpec!4398 (regOne!40683 (regOne!40683 r!22341)) s!13436))))

(assert (=> b!7582219 (=> res!3037504 e!4512844)))

(declare-fun b!7582220 () Bool)

(declare-fun e!4512839 () Bool)

(assert (=> b!7582220 (= e!4512839 e!4512845)))

(declare-fun res!3037506 () Bool)

(assert (=> b!7582220 (= res!3037506 (not ((_ is EmptyLang!20085) (regOne!40683 r!22341))))))

(assert (=> b!7582220 (=> (not res!3037506) (not e!4512845))))

(declare-fun d!2318568 () Bool)

(declare-fun c!1398545 () Bool)

(assert (=> d!2318568 (= c!1398545 ((_ is EmptyExpr!20085) (regOne!40683 r!22341)))))

(assert (=> d!2318568 (= (matchRSpec!4398 (regOne!40683 r!22341) s!13436) e!4512839)))

(declare-fun b!7582217 () Bool)

(declare-fun c!1398547 () Bool)

(assert (=> b!7582217 (= c!1398547 ((_ is Union!20085) (regOne!40683 r!22341)))))

(assert (=> b!7582217 (= e!4512840 e!4512841)))

(declare-fun bm!695197 () Bool)

(declare-fun c!1398548 () Bool)

(assert (=> bm!695197 (= call!695202 (Exists!4318 (ite c!1398548 lambda!466980 lambda!466981)))))

(declare-fun b!7582221 () Bool)

(assert (=> b!7582221 (= e!4512841 e!4512842)))

(assert (=> b!7582221 (= c!1398548 ((_ is Star!20085) (regOne!40683 r!22341)))))

(declare-fun b!7582222 () Bool)

(assert (=> b!7582222 (= e!4512839 call!695201)))

(declare-fun e!4512843 () Bool)

(assert (=> b!7582223 (= e!4512843 call!695202)))

(declare-fun b!7582224 () Bool)

(declare-fun res!3037505 () Bool)

(assert (=> b!7582224 (=> res!3037505 e!4512843)))

(assert (=> b!7582224 (= res!3037505 call!695201)))

(assert (=> b!7582224 (= e!4512842 e!4512843)))

(declare-fun b!7582225 () Bool)

(assert (=> b!7582225 (= e!4512844 (matchRSpec!4398 (regTwo!40683 (regOne!40683 r!22341)) s!13436))))

(assert (= (and d!2318568 c!1398545) b!7582222))

(assert (= (and d!2318568 (not c!1398545)) b!7582220))

(assert (= (and b!7582220 res!3037506) b!7582216))

(assert (= (and b!7582216 c!1398546) b!7582218))

(assert (= (and b!7582216 (not c!1398546)) b!7582217))

(assert (= (and b!7582217 c!1398547) b!7582219))

(assert (= (and b!7582217 (not c!1398547)) b!7582221))

(assert (= (and b!7582219 (not res!3037504)) b!7582225))

(assert (= (and b!7582221 c!1398548) b!7582224))

(assert (= (and b!7582221 (not c!1398548)) b!7582215))

(assert (= (and b!7582224 (not res!3037505)) b!7582223))

(assert (= (or b!7582223 b!7582215) bm!695197))

(assert (= (or b!7582222 b!7582224) bm!695196))

(assert (=> bm!695196 m!8136076))

(declare-fun m!8136216 () Bool)

(assert (=> b!7582219 m!8136216))

(declare-fun m!8136218 () Bool)

(assert (=> bm!695197 m!8136218))

(declare-fun m!8136220 () Bool)

(assert (=> b!7582225 m!8136220))

(assert (=> b!7582029 d!2318568))

(assert (=> bm!695160 d!2318532))

(declare-fun b!7582226 () Bool)

(declare-fun e!4512852 () Bool)

(declare-fun call!695203 () Bool)

(assert (=> b!7582226 (= e!4512852 call!695203)))

(declare-fun b!7582227 () Bool)

(declare-fun e!4512846 () Bool)

(declare-fun e!4512847 () Bool)

(assert (=> b!7582227 (= e!4512846 e!4512847)))

(declare-fun c!1398549 () Bool)

(assert (=> b!7582227 (= c!1398549 ((_ is Union!20085) (ite c!1398474 (reg!20414 r!22341) (ite c!1398473 (regOne!40683 r!22341) (regTwo!40682 r!22341)))))))

(declare-fun b!7582228 () Bool)

(declare-fun e!4512848 () Bool)

(assert (=> b!7582228 (= e!4512846 e!4512848)))

(declare-fun res!3037509 () Bool)

(assert (=> b!7582228 (= res!3037509 (not (nullable!8777 (reg!20414 (ite c!1398474 (reg!20414 r!22341) (ite c!1398473 (regOne!40683 r!22341) (regTwo!40682 r!22341)))))))))

(assert (=> b!7582228 (=> (not res!3037509) (not e!4512848))))

(declare-fun bm!695198 () Bool)

(declare-fun call!695204 () Bool)

(assert (=> bm!695198 (= call!695203 call!695204)))

(declare-fun d!2318570 () Bool)

(declare-fun res!3037507 () Bool)

(declare-fun e!4512851 () Bool)

(assert (=> d!2318570 (=> res!3037507 e!4512851)))

(assert (=> d!2318570 (= res!3037507 ((_ is ElementMatch!20085) (ite c!1398474 (reg!20414 r!22341) (ite c!1398473 (regOne!40683 r!22341) (regTwo!40682 r!22341)))))))

(assert (=> d!2318570 (= (validRegex!10513 (ite c!1398474 (reg!20414 r!22341) (ite c!1398473 (regOne!40683 r!22341) (regTwo!40682 r!22341)))) e!4512851)))

(declare-fun call!695205 () Bool)

(declare-fun bm!695199 () Bool)

(assert (=> bm!695199 (= call!695205 (validRegex!10513 (ite c!1398549 (regTwo!40683 (ite c!1398474 (reg!20414 r!22341) (ite c!1398473 (regOne!40683 r!22341) (regTwo!40682 r!22341)))) (regOne!40682 (ite c!1398474 (reg!20414 r!22341) (ite c!1398473 (regOne!40683 r!22341) (regTwo!40682 r!22341)))))))))

(declare-fun b!7582229 () Bool)

(declare-fun e!4512849 () Bool)

(assert (=> b!7582229 (= e!4512849 e!4512852)))

(declare-fun res!3037510 () Bool)

(assert (=> b!7582229 (=> (not res!3037510) (not e!4512852))))

(assert (=> b!7582229 (= res!3037510 call!695205)))

(declare-fun b!7582230 () Bool)

(declare-fun res!3037511 () Bool)

(declare-fun e!4512850 () Bool)

(assert (=> b!7582230 (=> (not res!3037511) (not e!4512850))))

(assert (=> b!7582230 (= res!3037511 call!695203)))

(assert (=> b!7582230 (= e!4512847 e!4512850)))

(declare-fun b!7582231 () Bool)

(assert (=> b!7582231 (= e!4512848 call!695204)))

(declare-fun b!7582232 () Bool)

(assert (=> b!7582232 (= e!4512851 e!4512846)))

(declare-fun c!1398550 () Bool)

(assert (=> b!7582232 (= c!1398550 ((_ is Star!20085) (ite c!1398474 (reg!20414 r!22341) (ite c!1398473 (regOne!40683 r!22341) (regTwo!40682 r!22341)))))))

(declare-fun b!7582233 () Bool)

(declare-fun res!3037508 () Bool)

(assert (=> b!7582233 (=> res!3037508 e!4512849)))

(assert (=> b!7582233 (= res!3037508 (not ((_ is Concat!28930) (ite c!1398474 (reg!20414 r!22341) (ite c!1398473 (regOne!40683 r!22341) (regTwo!40682 r!22341))))))))

(assert (=> b!7582233 (= e!4512847 e!4512849)))

(declare-fun bm!695200 () Bool)

(assert (=> bm!695200 (= call!695204 (validRegex!10513 (ite c!1398550 (reg!20414 (ite c!1398474 (reg!20414 r!22341) (ite c!1398473 (regOne!40683 r!22341) (regTwo!40682 r!22341)))) (ite c!1398549 (regOne!40683 (ite c!1398474 (reg!20414 r!22341) (ite c!1398473 (regOne!40683 r!22341) (regTwo!40682 r!22341)))) (regTwo!40682 (ite c!1398474 (reg!20414 r!22341) (ite c!1398473 (regOne!40683 r!22341) (regTwo!40682 r!22341))))))))))

(declare-fun b!7582234 () Bool)

(assert (=> b!7582234 (= e!4512850 call!695205)))

(assert (= (and d!2318570 (not res!3037507)) b!7582232))

(assert (= (and b!7582232 c!1398550) b!7582228))

(assert (= (and b!7582232 (not c!1398550)) b!7582227))

(assert (= (and b!7582228 res!3037509) b!7582231))

(assert (= (and b!7582227 c!1398549) b!7582230))

(assert (= (and b!7582227 (not c!1398549)) b!7582233))

(assert (= (and b!7582230 res!3037511) b!7582234))

(assert (= (and b!7582233 (not res!3037508)) b!7582229))

(assert (= (and b!7582229 res!3037510) b!7582226))

(assert (= (or b!7582234 b!7582229) bm!695199))

(assert (= (or b!7582230 b!7582226) bm!695198))

(assert (= (or b!7582231 bm!695198) bm!695200))

(declare-fun m!8136222 () Bool)

(assert (=> b!7582228 m!8136222))

(declare-fun m!8136224 () Bool)

(assert (=> bm!695199 m!8136224))

(declare-fun m!8136226 () Bool)

(assert (=> bm!695200 m!8136226))

(assert (=> bm!695144 d!2318570))

(assert (=> d!2318530 d!2318524))

(assert (=> d!2318530 d!2318526))

(declare-fun d!2318572 () Bool)

(assert (=> d!2318572 (= (matchR!9677 r!22341 s!13436) (matchRSpec!4398 r!22341 s!13436))))

(assert (=> d!2318572 true))

(declare-fun _$88!5801 () Unit!167126)

(assert (=> d!2318572 (= (choose!58616 r!22341 s!13436) _$88!5801)))

(declare-fun bs!1941094 () Bool)

(assert (= bs!1941094 d!2318572))

(assert (=> bs!1941094 m!8136062))

(assert (=> bs!1941094 m!8136064))

(assert (=> d!2318530 d!2318572))

(assert (=> d!2318530 d!2318502))

(declare-fun b!7582235 () Bool)

(declare-fun res!3037514 () Bool)

(declare-fun e!4512858 () Bool)

(assert (=> b!7582235 (=> res!3037514 e!4512858)))

(assert (=> b!7582235 (= res!3037514 (not (isEmpty!41517 (tail!15144 (tail!15144 s!13436)))))))

(declare-fun b!7582236 () Bool)

(declare-fun res!3037519 () Bool)

(declare-fun e!4512853 () Bool)

(assert (=> b!7582236 (=> res!3037519 e!4512853)))

(declare-fun e!4512857 () Bool)

(assert (=> b!7582236 (= res!3037519 e!4512857)))

(declare-fun res!3037513 () Bool)

(assert (=> b!7582236 (=> (not res!3037513) (not e!4512857))))

(declare-fun lt!2652685 () Bool)

(assert (=> b!7582236 (= res!3037513 lt!2652685)))

(declare-fun b!7582238 () Bool)

(declare-fun e!4512855 () Bool)

(assert (=> b!7582238 (= e!4512855 (matchR!9677 (derivativeStep!5804 (derivativeStep!5804 (regOne!40683 r!22341) (head!15604 s!13436)) (head!15604 (tail!15144 s!13436))) (tail!15144 (tail!15144 s!13436))))))

(declare-fun b!7582239 () Bool)

(declare-fun e!4512859 () Bool)

(assert (=> b!7582239 (= e!4512859 (not lt!2652685))))

(declare-fun b!7582240 () Bool)

(declare-fun e!4512854 () Bool)

(assert (=> b!7582240 (= e!4512853 e!4512854)))

(declare-fun res!3037516 () Bool)

(assert (=> b!7582240 (=> (not res!3037516) (not e!4512854))))

(assert (=> b!7582240 (= res!3037516 (not lt!2652685))))

(declare-fun b!7582241 () Bool)

(assert (=> b!7582241 (= e!4512854 e!4512858)))

(declare-fun res!3037517 () Bool)

(assert (=> b!7582241 (=> res!3037517 e!4512858)))

(declare-fun call!695206 () Bool)

(assert (=> b!7582241 (= res!3037517 call!695206)))

(declare-fun b!7582242 () Bool)

(declare-fun e!4512856 () Bool)

(assert (=> b!7582242 (= e!4512856 (= lt!2652685 call!695206))))

(declare-fun bm!695201 () Bool)

(assert (=> bm!695201 (= call!695206 (isEmpty!41517 (tail!15144 s!13436)))))

(declare-fun b!7582237 () Bool)

(declare-fun res!3037515 () Bool)

(assert (=> b!7582237 (=> (not res!3037515) (not e!4512857))))

(assert (=> b!7582237 (= res!3037515 (isEmpty!41517 (tail!15144 (tail!15144 s!13436))))))

(declare-fun d!2318574 () Bool)

(assert (=> d!2318574 e!4512856))

(declare-fun c!1398552 () Bool)

(assert (=> d!2318574 (= c!1398552 ((_ is EmptyExpr!20085) (derivativeStep!5804 (regOne!40683 r!22341) (head!15604 s!13436))))))

(assert (=> d!2318574 (= lt!2652685 e!4512855)))

(declare-fun c!1398551 () Bool)

(assert (=> d!2318574 (= c!1398551 (isEmpty!41517 (tail!15144 s!13436)))))

(assert (=> d!2318574 (validRegex!10513 (derivativeStep!5804 (regOne!40683 r!22341) (head!15604 s!13436)))))

(assert (=> d!2318574 (= (matchR!9677 (derivativeStep!5804 (regOne!40683 r!22341) (head!15604 s!13436)) (tail!15144 s!13436)) lt!2652685)))

(declare-fun b!7582243 () Bool)

(assert (=> b!7582243 (= e!4512855 (nullable!8777 (derivativeStep!5804 (regOne!40683 r!22341) (head!15604 s!13436))))))

(declare-fun b!7582244 () Bool)

(declare-fun res!3037512 () Bool)

(assert (=> b!7582244 (=> res!3037512 e!4512853)))

(assert (=> b!7582244 (= res!3037512 (not ((_ is ElementMatch!20085) (derivativeStep!5804 (regOne!40683 r!22341) (head!15604 s!13436)))))))

(assert (=> b!7582244 (= e!4512859 e!4512853)))

(declare-fun b!7582245 () Bool)

(assert (=> b!7582245 (= e!4512856 e!4512859)))

(declare-fun c!1398553 () Bool)

(assert (=> b!7582245 (= c!1398553 ((_ is EmptyLang!20085) (derivativeStep!5804 (regOne!40683 r!22341) (head!15604 s!13436))))))

(declare-fun b!7582246 () Bool)

(declare-fun res!3037518 () Bool)

(assert (=> b!7582246 (=> (not res!3037518) (not e!4512857))))

(assert (=> b!7582246 (= res!3037518 (not call!695206))))

(declare-fun b!7582247 () Bool)

(assert (=> b!7582247 (= e!4512857 (= (head!15604 (tail!15144 s!13436)) (c!1398468 (derivativeStep!5804 (regOne!40683 r!22341) (head!15604 s!13436)))))))

(declare-fun b!7582248 () Bool)

(assert (=> b!7582248 (= e!4512858 (not (= (head!15604 (tail!15144 s!13436)) (c!1398468 (derivativeStep!5804 (regOne!40683 r!22341) (head!15604 s!13436))))))))

(assert (= (and d!2318574 c!1398551) b!7582243))

(assert (= (and d!2318574 (not c!1398551)) b!7582238))

(assert (= (and d!2318574 c!1398552) b!7582242))

(assert (= (and d!2318574 (not c!1398552)) b!7582245))

(assert (= (and b!7582245 c!1398553) b!7582239))

(assert (= (and b!7582245 (not c!1398553)) b!7582244))

(assert (= (and b!7582244 (not res!3037512)) b!7582236))

(assert (= (and b!7582236 res!3037513) b!7582246))

(assert (= (and b!7582246 res!3037518) b!7582237))

(assert (= (and b!7582237 res!3037515) b!7582247))

(assert (= (and b!7582236 (not res!3037519)) b!7582240))

(assert (= (and b!7582240 res!3037516) b!7582241))

(assert (= (and b!7582241 (not res!3037517)) b!7582235))

(assert (= (and b!7582235 (not res!3037514)) b!7582248))

(assert (= (or b!7582242 b!7582241 b!7582246) bm!695201))

(assert (=> b!7582248 m!8136108))

(declare-fun m!8136228 () Bool)

(assert (=> b!7582248 m!8136228))

(assert (=> b!7582235 m!8136108))

(declare-fun m!8136230 () Bool)

(assert (=> b!7582235 m!8136230))

(assert (=> b!7582235 m!8136230))

(declare-fun m!8136232 () Bool)

(assert (=> b!7582235 m!8136232))

(assert (=> b!7582247 m!8136108))

(assert (=> b!7582247 m!8136228))

(assert (=> bm!695201 m!8136108))

(assert (=> bm!695201 m!8136110))

(assert (=> d!2318574 m!8136108))

(assert (=> d!2318574 m!8136110))

(assert (=> d!2318574 m!8136116))

(declare-fun m!8136234 () Bool)

(assert (=> d!2318574 m!8136234))

(assert (=> b!7582237 m!8136108))

(assert (=> b!7582237 m!8136230))

(assert (=> b!7582237 m!8136230))

(assert (=> b!7582237 m!8136232))

(assert (=> b!7582243 m!8136116))

(declare-fun m!8136236 () Bool)

(assert (=> b!7582243 m!8136236))

(assert (=> b!7582238 m!8136108))

(assert (=> b!7582238 m!8136228))

(assert (=> b!7582238 m!8136116))

(assert (=> b!7582238 m!8136228))

(declare-fun m!8136238 () Bool)

(assert (=> b!7582238 m!8136238))

(assert (=> b!7582238 m!8136108))

(assert (=> b!7582238 m!8136230))

(assert (=> b!7582238 m!8136238))

(assert (=> b!7582238 m!8136230))

(declare-fun m!8136240 () Bool)

(assert (=> b!7582238 m!8136240))

(assert (=> b!7581904 d!2318574))

(declare-fun b!7582269 () Bool)

(declare-fun e!4512873 () Regex!20085)

(assert (=> b!7582269 (= e!4512873 (ite (= (head!15604 s!13436) (c!1398468 (regOne!40683 r!22341))) EmptyExpr!20085 EmptyLang!20085))))

(declare-fun b!7582270 () Bool)

(declare-fun c!1398567 () Bool)

(assert (=> b!7582270 (= c!1398567 (nullable!8777 (regOne!40682 (regOne!40683 r!22341))))))

(declare-fun e!4512871 () Regex!20085)

(declare-fun e!4512874 () Regex!20085)

(assert (=> b!7582270 (= e!4512871 e!4512874)))

(declare-fun b!7582271 () Bool)

(declare-fun e!4512870 () Regex!20085)

(assert (=> b!7582271 (= e!4512870 EmptyLang!20085)))

(declare-fun b!7582272 () Bool)

(assert (=> b!7582272 (= e!4512870 e!4512873)))

(declare-fun c!1398568 () Bool)

(assert (=> b!7582272 (= c!1398568 ((_ is ElementMatch!20085) (regOne!40683 r!22341)))))

(declare-fun b!7582273 () Bool)

(declare-fun call!695218 () Regex!20085)

(assert (=> b!7582273 (= e!4512874 (Union!20085 (Concat!28930 call!695218 (regTwo!40682 (regOne!40683 r!22341))) EmptyLang!20085))))

(declare-fun b!7582275 () Bool)

(declare-fun e!4512872 () Regex!20085)

(assert (=> b!7582275 (= e!4512872 e!4512871)))

(declare-fun c!1398565 () Bool)

(assert (=> b!7582275 (= c!1398565 ((_ is Star!20085) (regOne!40683 r!22341)))))

(declare-fun bm!695210 () Bool)

(declare-fun call!695217 () Regex!20085)

(assert (=> bm!695210 (= call!695218 call!695217)))

(declare-fun bm!695211 () Bool)

(declare-fun c!1398564 () Bool)

(declare-fun call!695215 () Regex!20085)

(assert (=> bm!695211 (= call!695215 (derivativeStep!5804 (ite c!1398564 (regTwo!40683 (regOne!40683 r!22341)) (regOne!40682 (regOne!40683 r!22341))) (head!15604 s!13436)))))

(declare-fun b!7582276 () Bool)

(assert (=> b!7582276 (= e!4512871 (Concat!28930 call!695217 (regOne!40683 r!22341)))))

(declare-fun b!7582277 () Bool)

(declare-fun call!695216 () Regex!20085)

(assert (=> b!7582277 (= e!4512872 (Union!20085 call!695216 call!695215))))

(declare-fun b!7582278 () Bool)

(assert (=> b!7582278 (= e!4512874 (Union!20085 (Concat!28930 call!695215 (regTwo!40682 (regOne!40683 r!22341))) call!695218))))

(declare-fun b!7582274 () Bool)

(assert (=> b!7582274 (= c!1398564 ((_ is Union!20085) (regOne!40683 r!22341)))))

(assert (=> b!7582274 (= e!4512873 e!4512872)))

(declare-fun d!2318576 () Bool)

(declare-fun lt!2652688 () Regex!20085)

(assert (=> d!2318576 (validRegex!10513 lt!2652688)))

(assert (=> d!2318576 (= lt!2652688 e!4512870)))

(declare-fun c!1398566 () Bool)

(assert (=> d!2318576 (= c!1398566 (or ((_ is EmptyExpr!20085) (regOne!40683 r!22341)) ((_ is EmptyLang!20085) (regOne!40683 r!22341))))))

(assert (=> d!2318576 (validRegex!10513 (regOne!40683 r!22341))))

(assert (=> d!2318576 (= (derivativeStep!5804 (regOne!40683 r!22341) (head!15604 s!13436)) lt!2652688)))

(declare-fun bm!695212 () Bool)

(assert (=> bm!695212 (= call!695216 (derivativeStep!5804 (ite c!1398564 (regOne!40683 (regOne!40683 r!22341)) (ite c!1398565 (reg!20414 (regOne!40683 r!22341)) (ite c!1398567 (regTwo!40682 (regOne!40683 r!22341)) (regOne!40682 (regOne!40683 r!22341))))) (head!15604 s!13436)))))

(declare-fun bm!695213 () Bool)

(assert (=> bm!695213 (= call!695217 call!695216)))

(assert (= (and d!2318576 c!1398566) b!7582271))

(assert (= (and d!2318576 (not c!1398566)) b!7582272))

(assert (= (and b!7582272 c!1398568) b!7582269))

(assert (= (and b!7582272 (not c!1398568)) b!7582274))

(assert (= (and b!7582274 c!1398564) b!7582277))

(assert (= (and b!7582274 (not c!1398564)) b!7582275))

(assert (= (and b!7582275 c!1398565) b!7582276))

(assert (= (and b!7582275 (not c!1398565)) b!7582270))

(assert (= (and b!7582270 c!1398567) b!7582278))

(assert (= (and b!7582270 (not c!1398567)) b!7582273))

(assert (= (or b!7582278 b!7582273) bm!695210))

(assert (= (or b!7582276 bm!695210) bm!695213))

(assert (= (or b!7582277 b!7582278) bm!695211))

(assert (= (or b!7582277 bm!695213) bm!695212))

(declare-fun m!8136242 () Bool)

(assert (=> b!7582270 m!8136242))

(assert (=> bm!695211 m!8136106))

(declare-fun m!8136244 () Bool)

(assert (=> bm!695211 m!8136244))

(declare-fun m!8136246 () Bool)

(assert (=> d!2318576 m!8136246))

(assert (=> d!2318576 m!8136112))

(assert (=> bm!695212 m!8136106))

(declare-fun m!8136248 () Bool)

(assert (=> bm!695212 m!8136248))

(assert (=> b!7581904 d!2318576))

(assert (=> b!7581904 d!2318546))

(assert (=> b!7581904 d!2318550))

(assert (=> b!7581903 d!2318548))

(assert (=> b!7581903 d!2318550))

(assert (=> b!7581915 d!2318548))

(assert (=> b!7581915 d!2318550))

(assert (=> d!2318524 d!2318532))

(assert (=> d!2318524 d!2318502))

(declare-fun d!2318578 () Bool)

(assert (=> d!2318578 (= (nullable!8777 (reg!20414 r!22341)) (nullableFct!3495 (reg!20414 r!22341)))))

(declare-fun bs!1941095 () Bool)

(assert (= bs!1941095 d!2318578))

(declare-fun m!8136250 () Bool)

(assert (=> bs!1941095 m!8136250))

(assert (=> b!7581830 d!2318578))

(declare-fun b!7582279 () Bool)

(declare-fun e!4512881 () Bool)

(declare-fun call!695219 () Bool)

(assert (=> b!7582279 (= e!4512881 call!695219)))

(declare-fun b!7582280 () Bool)

(declare-fun e!4512875 () Bool)

(declare-fun e!4512876 () Bool)

(assert (=> b!7582280 (= e!4512875 e!4512876)))

(declare-fun c!1398569 () Bool)

(assert (=> b!7582280 (= c!1398569 ((_ is Union!20085) (ite c!1398480 (reg!20414 (regTwo!40683 r!22341)) (ite c!1398479 (regOne!40683 (regTwo!40683 r!22341)) (regTwo!40682 (regTwo!40683 r!22341))))))))

(declare-fun b!7582281 () Bool)

(declare-fun e!4512877 () Bool)

(assert (=> b!7582281 (= e!4512875 e!4512877)))

(declare-fun res!3037522 () Bool)

(assert (=> b!7582281 (= res!3037522 (not (nullable!8777 (reg!20414 (ite c!1398480 (reg!20414 (regTwo!40683 r!22341)) (ite c!1398479 (regOne!40683 (regTwo!40683 r!22341)) (regTwo!40682 (regTwo!40683 r!22341))))))))))

(assert (=> b!7582281 (=> (not res!3037522) (not e!4512877))))

(declare-fun bm!695214 () Bool)

(declare-fun call!695220 () Bool)

(assert (=> bm!695214 (= call!695219 call!695220)))

(declare-fun d!2318580 () Bool)

(declare-fun res!3037520 () Bool)

(declare-fun e!4512880 () Bool)

(assert (=> d!2318580 (=> res!3037520 e!4512880)))

(assert (=> d!2318580 (= res!3037520 ((_ is ElementMatch!20085) (ite c!1398480 (reg!20414 (regTwo!40683 r!22341)) (ite c!1398479 (regOne!40683 (regTwo!40683 r!22341)) (regTwo!40682 (regTwo!40683 r!22341))))))))

(assert (=> d!2318580 (= (validRegex!10513 (ite c!1398480 (reg!20414 (regTwo!40683 r!22341)) (ite c!1398479 (regOne!40683 (regTwo!40683 r!22341)) (regTwo!40682 (regTwo!40683 r!22341))))) e!4512880)))

(declare-fun call!695221 () Bool)

(declare-fun bm!695215 () Bool)

(assert (=> bm!695215 (= call!695221 (validRegex!10513 (ite c!1398569 (regTwo!40683 (ite c!1398480 (reg!20414 (regTwo!40683 r!22341)) (ite c!1398479 (regOne!40683 (regTwo!40683 r!22341)) (regTwo!40682 (regTwo!40683 r!22341))))) (regOne!40682 (ite c!1398480 (reg!20414 (regTwo!40683 r!22341)) (ite c!1398479 (regOne!40683 (regTwo!40683 r!22341)) (regTwo!40682 (regTwo!40683 r!22341))))))))))

(declare-fun b!7582282 () Bool)

(declare-fun e!4512878 () Bool)

(assert (=> b!7582282 (= e!4512878 e!4512881)))

(declare-fun res!3037523 () Bool)

(assert (=> b!7582282 (=> (not res!3037523) (not e!4512881))))

(assert (=> b!7582282 (= res!3037523 call!695221)))

(declare-fun b!7582283 () Bool)

(declare-fun res!3037524 () Bool)

(declare-fun e!4512879 () Bool)

(assert (=> b!7582283 (=> (not res!3037524) (not e!4512879))))

(assert (=> b!7582283 (= res!3037524 call!695219)))

(assert (=> b!7582283 (= e!4512876 e!4512879)))

(declare-fun b!7582284 () Bool)

(assert (=> b!7582284 (= e!4512877 call!695220)))

(declare-fun b!7582285 () Bool)

(assert (=> b!7582285 (= e!4512880 e!4512875)))

(declare-fun c!1398570 () Bool)

(assert (=> b!7582285 (= c!1398570 ((_ is Star!20085) (ite c!1398480 (reg!20414 (regTwo!40683 r!22341)) (ite c!1398479 (regOne!40683 (regTwo!40683 r!22341)) (regTwo!40682 (regTwo!40683 r!22341))))))))

(declare-fun b!7582286 () Bool)

(declare-fun res!3037521 () Bool)

(assert (=> b!7582286 (=> res!3037521 e!4512878)))

(assert (=> b!7582286 (= res!3037521 (not ((_ is Concat!28930) (ite c!1398480 (reg!20414 (regTwo!40683 r!22341)) (ite c!1398479 (regOne!40683 (regTwo!40683 r!22341)) (regTwo!40682 (regTwo!40683 r!22341)))))))))

(assert (=> b!7582286 (= e!4512876 e!4512878)))

(declare-fun bm!695216 () Bool)

(assert (=> bm!695216 (= call!695220 (validRegex!10513 (ite c!1398570 (reg!20414 (ite c!1398480 (reg!20414 (regTwo!40683 r!22341)) (ite c!1398479 (regOne!40683 (regTwo!40683 r!22341)) (regTwo!40682 (regTwo!40683 r!22341))))) (ite c!1398569 (regOne!40683 (ite c!1398480 (reg!20414 (regTwo!40683 r!22341)) (ite c!1398479 (regOne!40683 (regTwo!40683 r!22341)) (regTwo!40682 (regTwo!40683 r!22341))))) (regTwo!40682 (ite c!1398480 (reg!20414 (regTwo!40683 r!22341)) (ite c!1398479 (regOne!40683 (regTwo!40683 r!22341)) (regTwo!40682 (regTwo!40683 r!22341)))))))))))

(declare-fun b!7582287 () Bool)

(assert (=> b!7582287 (= e!4512879 call!695221)))

(assert (= (and d!2318580 (not res!3037520)) b!7582285))

(assert (= (and b!7582285 c!1398570) b!7582281))

(assert (= (and b!7582285 (not c!1398570)) b!7582280))

(assert (= (and b!7582281 res!3037522) b!7582284))

(assert (= (and b!7582280 c!1398569) b!7582283))

(assert (= (and b!7582280 (not c!1398569)) b!7582286))

(assert (= (and b!7582283 res!3037524) b!7582287))

(assert (= (and b!7582286 (not res!3037521)) b!7582282))

(assert (= (and b!7582282 res!3037523) b!7582279))

(assert (= (or b!7582287 b!7582282) bm!695215))

(assert (= (or b!7582283 b!7582279) bm!695214))

(assert (= (or b!7582284 bm!695214) bm!695216))

(declare-fun m!8136252 () Bool)

(assert (=> b!7582281 m!8136252))

(declare-fun m!8136254 () Bool)

(assert (=> bm!695215 m!8136254))

(declare-fun m!8136256 () Bool)

(assert (=> bm!695216 m!8136256))

(assert (=> bm!695149 d!2318580))

(declare-fun b!7582288 () Bool)

(declare-fun res!3037527 () Bool)

(declare-fun e!4512887 () Bool)

(assert (=> b!7582288 (=> res!3037527 e!4512887)))

(assert (=> b!7582288 (= res!3037527 (not (isEmpty!41517 (tail!15144 (tail!15144 s!13436)))))))

(declare-fun b!7582289 () Bool)

(declare-fun res!3037532 () Bool)

(declare-fun e!4512882 () Bool)

(assert (=> b!7582289 (=> res!3037532 e!4512882)))

(declare-fun e!4512886 () Bool)

(assert (=> b!7582289 (= res!3037532 e!4512886)))

(declare-fun res!3037526 () Bool)

(assert (=> b!7582289 (=> (not res!3037526) (not e!4512886))))

(declare-fun lt!2652689 () Bool)

(assert (=> b!7582289 (= res!3037526 lt!2652689)))

(declare-fun b!7582291 () Bool)

(declare-fun e!4512884 () Bool)

(assert (=> b!7582291 (= e!4512884 (matchR!9677 (derivativeStep!5804 (derivativeStep!5804 r!22341 (head!15604 s!13436)) (head!15604 (tail!15144 s!13436))) (tail!15144 (tail!15144 s!13436))))))

(declare-fun b!7582292 () Bool)

(declare-fun e!4512888 () Bool)

(assert (=> b!7582292 (= e!4512888 (not lt!2652689))))

(declare-fun b!7582293 () Bool)

(declare-fun e!4512883 () Bool)

(assert (=> b!7582293 (= e!4512882 e!4512883)))

(declare-fun res!3037529 () Bool)

(assert (=> b!7582293 (=> (not res!3037529) (not e!4512883))))

(assert (=> b!7582293 (= res!3037529 (not lt!2652689))))

(declare-fun b!7582294 () Bool)

(assert (=> b!7582294 (= e!4512883 e!4512887)))

(declare-fun res!3037530 () Bool)

(assert (=> b!7582294 (=> res!3037530 e!4512887)))

(declare-fun call!695222 () Bool)

(assert (=> b!7582294 (= res!3037530 call!695222)))

(declare-fun b!7582295 () Bool)

(declare-fun e!4512885 () Bool)

(assert (=> b!7582295 (= e!4512885 (= lt!2652689 call!695222))))

(declare-fun bm!695217 () Bool)

(assert (=> bm!695217 (= call!695222 (isEmpty!41517 (tail!15144 s!13436)))))

(declare-fun b!7582290 () Bool)

(declare-fun res!3037528 () Bool)

(assert (=> b!7582290 (=> (not res!3037528) (not e!4512886))))

(assert (=> b!7582290 (= res!3037528 (isEmpty!41517 (tail!15144 (tail!15144 s!13436))))))

(declare-fun d!2318582 () Bool)

(assert (=> d!2318582 e!4512885))

(declare-fun c!1398572 () Bool)

(assert (=> d!2318582 (= c!1398572 ((_ is EmptyExpr!20085) (derivativeStep!5804 r!22341 (head!15604 s!13436))))))

(assert (=> d!2318582 (= lt!2652689 e!4512884)))

(declare-fun c!1398571 () Bool)

(assert (=> d!2318582 (= c!1398571 (isEmpty!41517 (tail!15144 s!13436)))))

(assert (=> d!2318582 (validRegex!10513 (derivativeStep!5804 r!22341 (head!15604 s!13436)))))

(assert (=> d!2318582 (= (matchR!9677 (derivativeStep!5804 r!22341 (head!15604 s!13436)) (tail!15144 s!13436)) lt!2652689)))

(declare-fun b!7582296 () Bool)

(assert (=> b!7582296 (= e!4512884 (nullable!8777 (derivativeStep!5804 r!22341 (head!15604 s!13436))))))

(declare-fun b!7582297 () Bool)

(declare-fun res!3037525 () Bool)

(assert (=> b!7582297 (=> res!3037525 e!4512882)))

(assert (=> b!7582297 (= res!3037525 (not ((_ is ElementMatch!20085) (derivativeStep!5804 r!22341 (head!15604 s!13436)))))))

(assert (=> b!7582297 (= e!4512888 e!4512882)))

(declare-fun b!7582298 () Bool)

(assert (=> b!7582298 (= e!4512885 e!4512888)))

(declare-fun c!1398573 () Bool)

(assert (=> b!7582298 (= c!1398573 ((_ is EmptyLang!20085) (derivativeStep!5804 r!22341 (head!15604 s!13436))))))

(declare-fun b!7582299 () Bool)

(declare-fun res!3037531 () Bool)

(assert (=> b!7582299 (=> (not res!3037531) (not e!4512886))))

(assert (=> b!7582299 (= res!3037531 (not call!695222))))

(declare-fun b!7582300 () Bool)

(assert (=> b!7582300 (= e!4512886 (= (head!15604 (tail!15144 s!13436)) (c!1398468 (derivativeStep!5804 r!22341 (head!15604 s!13436)))))))

(declare-fun b!7582301 () Bool)

(assert (=> b!7582301 (= e!4512887 (not (= (head!15604 (tail!15144 s!13436)) (c!1398468 (derivativeStep!5804 r!22341 (head!15604 s!13436))))))))

(assert (= (and d!2318582 c!1398571) b!7582296))

(assert (= (and d!2318582 (not c!1398571)) b!7582291))

(assert (= (and d!2318582 c!1398572) b!7582295))

(assert (= (and d!2318582 (not c!1398572)) b!7582298))

(assert (= (and b!7582298 c!1398573) b!7582292))

(assert (= (and b!7582298 (not c!1398573)) b!7582297))

(assert (= (and b!7582297 (not res!3037525)) b!7582289))

(assert (= (and b!7582289 res!3037526) b!7582299))

(assert (= (and b!7582299 res!3037531) b!7582290))

(assert (= (and b!7582290 res!3037528) b!7582300))

(assert (= (and b!7582289 (not res!3037532)) b!7582293))

(assert (= (and b!7582293 res!3037529) b!7582294))

(assert (= (and b!7582294 (not res!3037530)) b!7582288))

(assert (= (and b!7582288 (not res!3037527)) b!7582301))

(assert (= (or b!7582295 b!7582294 b!7582299) bm!695217))

(assert (=> b!7582301 m!8136108))

(assert (=> b!7582301 m!8136228))

(assert (=> b!7582288 m!8136108))

(assert (=> b!7582288 m!8136230))

(assert (=> b!7582288 m!8136230))

(assert (=> b!7582288 m!8136232))

(assert (=> b!7582300 m!8136108))

(assert (=> b!7582300 m!8136228))

(assert (=> bm!695217 m!8136108))

(assert (=> bm!695217 m!8136110))

(assert (=> d!2318582 m!8136108))

(assert (=> d!2318582 m!8136110))

(assert (=> d!2318582 m!8136126))

(declare-fun m!8136258 () Bool)

(assert (=> d!2318582 m!8136258))

(assert (=> b!7582290 m!8136108))

(assert (=> b!7582290 m!8136230))

(assert (=> b!7582290 m!8136230))

(assert (=> b!7582290 m!8136232))

(assert (=> b!7582296 m!8136126))

(declare-fun m!8136260 () Bool)

(assert (=> b!7582296 m!8136260))

(assert (=> b!7582291 m!8136108))

(assert (=> b!7582291 m!8136228))

(assert (=> b!7582291 m!8136126))

(assert (=> b!7582291 m!8136228))

(declare-fun m!8136262 () Bool)

(assert (=> b!7582291 m!8136262))

(assert (=> b!7582291 m!8136108))

(assert (=> b!7582291 m!8136230))

(assert (=> b!7582291 m!8136262))

(assert (=> b!7582291 m!8136230))

(declare-fun m!8136264 () Bool)

(assert (=> b!7582291 m!8136264))

(assert (=> b!7581918 d!2318582))

(declare-fun b!7582302 () Bool)

(declare-fun e!4512892 () Regex!20085)

(assert (=> b!7582302 (= e!4512892 (ite (= (head!15604 s!13436) (c!1398468 r!22341)) EmptyExpr!20085 EmptyLang!20085))))

(declare-fun b!7582303 () Bool)

(declare-fun c!1398577 () Bool)

(assert (=> b!7582303 (= c!1398577 (nullable!8777 (regOne!40682 r!22341)))))

(declare-fun e!4512890 () Regex!20085)

(declare-fun e!4512893 () Regex!20085)

(assert (=> b!7582303 (= e!4512890 e!4512893)))

(declare-fun b!7582304 () Bool)

(declare-fun e!4512889 () Regex!20085)

(assert (=> b!7582304 (= e!4512889 EmptyLang!20085)))

(declare-fun b!7582305 () Bool)

(assert (=> b!7582305 (= e!4512889 e!4512892)))

(declare-fun c!1398578 () Bool)

(assert (=> b!7582305 (= c!1398578 ((_ is ElementMatch!20085) r!22341))))

(declare-fun b!7582306 () Bool)

(declare-fun call!695226 () Regex!20085)

(assert (=> b!7582306 (= e!4512893 (Union!20085 (Concat!28930 call!695226 (regTwo!40682 r!22341)) EmptyLang!20085))))

(declare-fun b!7582308 () Bool)

(declare-fun e!4512891 () Regex!20085)

(assert (=> b!7582308 (= e!4512891 e!4512890)))

(declare-fun c!1398575 () Bool)

(assert (=> b!7582308 (= c!1398575 ((_ is Star!20085) r!22341))))

(declare-fun bm!695218 () Bool)

(declare-fun call!695225 () Regex!20085)

(assert (=> bm!695218 (= call!695226 call!695225)))

(declare-fun bm!695219 () Bool)

(declare-fun c!1398574 () Bool)

(declare-fun call!695223 () Regex!20085)

(assert (=> bm!695219 (= call!695223 (derivativeStep!5804 (ite c!1398574 (regTwo!40683 r!22341) (regOne!40682 r!22341)) (head!15604 s!13436)))))

(declare-fun b!7582309 () Bool)

(assert (=> b!7582309 (= e!4512890 (Concat!28930 call!695225 r!22341))))

(declare-fun b!7582310 () Bool)

(declare-fun call!695224 () Regex!20085)

(assert (=> b!7582310 (= e!4512891 (Union!20085 call!695224 call!695223))))

(declare-fun b!7582311 () Bool)

(assert (=> b!7582311 (= e!4512893 (Union!20085 (Concat!28930 call!695223 (regTwo!40682 r!22341)) call!695226))))

(declare-fun b!7582307 () Bool)

(assert (=> b!7582307 (= c!1398574 ((_ is Union!20085) r!22341))))

(assert (=> b!7582307 (= e!4512892 e!4512891)))

(declare-fun d!2318584 () Bool)

(declare-fun lt!2652690 () Regex!20085)

(assert (=> d!2318584 (validRegex!10513 lt!2652690)))

(assert (=> d!2318584 (= lt!2652690 e!4512889)))

(declare-fun c!1398576 () Bool)

(assert (=> d!2318584 (= c!1398576 (or ((_ is EmptyExpr!20085) r!22341) ((_ is EmptyLang!20085) r!22341)))))

(assert (=> d!2318584 (validRegex!10513 r!22341)))

(assert (=> d!2318584 (= (derivativeStep!5804 r!22341 (head!15604 s!13436)) lt!2652690)))

(declare-fun bm!695220 () Bool)

(assert (=> bm!695220 (= call!695224 (derivativeStep!5804 (ite c!1398574 (regOne!40683 r!22341) (ite c!1398575 (reg!20414 r!22341) (ite c!1398577 (regTwo!40682 r!22341) (regOne!40682 r!22341)))) (head!15604 s!13436)))))

(declare-fun bm!695221 () Bool)

(assert (=> bm!695221 (= call!695225 call!695224)))

(assert (= (and d!2318584 c!1398576) b!7582304))

(assert (= (and d!2318584 (not c!1398576)) b!7582305))

(assert (= (and b!7582305 c!1398578) b!7582302))

(assert (= (and b!7582305 (not c!1398578)) b!7582307))

(assert (= (and b!7582307 c!1398574) b!7582310))

(assert (= (and b!7582307 (not c!1398574)) b!7582308))

(assert (= (and b!7582308 c!1398575) b!7582309))

(assert (= (and b!7582308 (not c!1398575)) b!7582303))

(assert (= (and b!7582303 c!1398577) b!7582311))

(assert (= (and b!7582303 (not c!1398577)) b!7582306))

(assert (= (or b!7582311 b!7582306) bm!695218))

(assert (= (or b!7582309 bm!695218) bm!695221))

(assert (= (or b!7582310 b!7582311) bm!695219))

(assert (= (or b!7582310 bm!695221) bm!695220))

(declare-fun m!8136266 () Bool)

(assert (=> b!7582303 m!8136266))

(assert (=> bm!695219 m!8136106))

(declare-fun m!8136268 () Bool)

(assert (=> bm!695219 m!8136268))

(declare-fun m!8136270 () Bool)

(assert (=> d!2318584 m!8136270))

(assert (=> d!2318584 m!8136078))

(assert (=> bm!695220 m!8136106))

(declare-fun m!8136272 () Bool)

(assert (=> bm!695220 m!8136272))

(assert (=> b!7581918 d!2318584))

(assert (=> b!7581918 d!2318546))

(assert (=> b!7581918 d!2318550))

(assert (=> b!7581917 d!2318548))

(assert (=> b!7581917 d!2318550))

(declare-fun b!7582312 () Bool)

(declare-fun e!4512900 () Bool)

(declare-fun call!695227 () Bool)

(assert (=> b!7582312 (= e!4512900 call!695227)))

(declare-fun b!7582313 () Bool)

(declare-fun e!4512894 () Bool)

(declare-fun e!4512895 () Bool)

(assert (=> b!7582313 (= e!4512894 e!4512895)))

(declare-fun c!1398579 () Bool)

(assert (=> b!7582313 (= c!1398579 ((_ is Union!20085) (ite c!1398473 (regTwo!40683 r!22341) (regOne!40682 r!22341))))))

(declare-fun b!7582314 () Bool)

(declare-fun e!4512896 () Bool)

(assert (=> b!7582314 (= e!4512894 e!4512896)))

(declare-fun res!3037535 () Bool)

(assert (=> b!7582314 (= res!3037535 (not (nullable!8777 (reg!20414 (ite c!1398473 (regTwo!40683 r!22341) (regOne!40682 r!22341))))))))

(assert (=> b!7582314 (=> (not res!3037535) (not e!4512896))))

(declare-fun bm!695222 () Bool)

(declare-fun call!695228 () Bool)

(assert (=> bm!695222 (= call!695227 call!695228)))

(declare-fun d!2318586 () Bool)

(declare-fun res!3037533 () Bool)

(declare-fun e!4512899 () Bool)

(assert (=> d!2318586 (=> res!3037533 e!4512899)))

(assert (=> d!2318586 (= res!3037533 ((_ is ElementMatch!20085) (ite c!1398473 (regTwo!40683 r!22341) (regOne!40682 r!22341))))))

(assert (=> d!2318586 (= (validRegex!10513 (ite c!1398473 (regTwo!40683 r!22341) (regOne!40682 r!22341))) e!4512899)))

(declare-fun bm!695223 () Bool)

(declare-fun call!695229 () Bool)

(assert (=> bm!695223 (= call!695229 (validRegex!10513 (ite c!1398579 (regTwo!40683 (ite c!1398473 (regTwo!40683 r!22341) (regOne!40682 r!22341))) (regOne!40682 (ite c!1398473 (regTwo!40683 r!22341) (regOne!40682 r!22341))))))))

(declare-fun b!7582315 () Bool)

(declare-fun e!4512897 () Bool)

(assert (=> b!7582315 (= e!4512897 e!4512900)))

(declare-fun res!3037536 () Bool)

(assert (=> b!7582315 (=> (not res!3037536) (not e!4512900))))

(assert (=> b!7582315 (= res!3037536 call!695229)))

(declare-fun b!7582316 () Bool)

(declare-fun res!3037537 () Bool)

(declare-fun e!4512898 () Bool)

(assert (=> b!7582316 (=> (not res!3037537) (not e!4512898))))

(assert (=> b!7582316 (= res!3037537 call!695227)))

(assert (=> b!7582316 (= e!4512895 e!4512898)))

(declare-fun b!7582317 () Bool)

(assert (=> b!7582317 (= e!4512896 call!695228)))

(declare-fun b!7582318 () Bool)

(assert (=> b!7582318 (= e!4512899 e!4512894)))

(declare-fun c!1398580 () Bool)

(assert (=> b!7582318 (= c!1398580 ((_ is Star!20085) (ite c!1398473 (regTwo!40683 r!22341) (regOne!40682 r!22341))))))

(declare-fun b!7582319 () Bool)

(declare-fun res!3037534 () Bool)

(assert (=> b!7582319 (=> res!3037534 e!4512897)))

(assert (=> b!7582319 (= res!3037534 (not ((_ is Concat!28930) (ite c!1398473 (regTwo!40683 r!22341) (regOne!40682 r!22341)))))))

(assert (=> b!7582319 (= e!4512895 e!4512897)))

(declare-fun bm!695224 () Bool)

(assert (=> bm!695224 (= call!695228 (validRegex!10513 (ite c!1398580 (reg!20414 (ite c!1398473 (regTwo!40683 r!22341) (regOne!40682 r!22341))) (ite c!1398579 (regOne!40683 (ite c!1398473 (regTwo!40683 r!22341) (regOne!40682 r!22341))) (regTwo!40682 (ite c!1398473 (regTwo!40683 r!22341) (regOne!40682 r!22341)))))))))

(declare-fun b!7582320 () Bool)

(assert (=> b!7582320 (= e!4512898 call!695229)))

(assert (= (and d!2318586 (not res!3037533)) b!7582318))

(assert (= (and b!7582318 c!1398580) b!7582314))

(assert (= (and b!7582318 (not c!1398580)) b!7582313))

(assert (= (and b!7582314 res!3037535) b!7582317))

(assert (= (and b!7582313 c!1398579) b!7582316))

(assert (= (and b!7582313 (not c!1398579)) b!7582319))

(assert (= (and b!7582316 res!3037537) b!7582320))

(assert (= (and b!7582319 (not res!3037534)) b!7582315))

(assert (= (and b!7582315 res!3037536) b!7582312))

(assert (= (or b!7582320 b!7582315) bm!695223))

(assert (= (or b!7582316 b!7582312) bm!695222))

(assert (= (or b!7582317 bm!695222) bm!695224))

(declare-fun m!8136274 () Bool)

(assert (=> b!7582314 m!8136274))

(declare-fun m!8136276 () Bool)

(assert (=> bm!695223 m!8136276))

(declare-fun m!8136278 () Bool)

(assert (=> bm!695224 m!8136278))

(assert (=> bm!695143 d!2318586))

(declare-fun b!7582322 () Bool)

(declare-fun e!4512901 () Bool)

(declare-fun tp!2209596 () Bool)

(declare-fun tp!2209594 () Bool)

(assert (=> b!7582322 (= e!4512901 (and tp!2209596 tp!2209594))))

(declare-fun b!7582324 () Bool)

(declare-fun tp!2209595 () Bool)

(declare-fun tp!2209598 () Bool)

(assert (=> b!7582324 (= e!4512901 (and tp!2209595 tp!2209598))))

(assert (=> b!7582055 (= tp!2209535 e!4512901)))

(declare-fun b!7582321 () Bool)

(assert (=> b!7582321 (= e!4512901 tp_is_empty!50525)))

(declare-fun b!7582323 () Bool)

(declare-fun tp!2209597 () Bool)

(assert (=> b!7582323 (= e!4512901 tp!2209597)))

(assert (= (and b!7582055 ((_ is ElementMatch!20085) (regOne!40682 (regTwo!40683 r!22341)))) b!7582321))

(assert (= (and b!7582055 ((_ is Concat!28930) (regOne!40682 (regTwo!40683 r!22341)))) b!7582322))

(assert (= (and b!7582055 ((_ is Star!20085) (regOne!40682 (regTwo!40683 r!22341)))) b!7582323))

(assert (= (and b!7582055 ((_ is Union!20085) (regOne!40682 (regTwo!40683 r!22341)))) b!7582324))

(declare-fun b!7582326 () Bool)

(declare-fun e!4512902 () Bool)

(declare-fun tp!2209601 () Bool)

(declare-fun tp!2209599 () Bool)

(assert (=> b!7582326 (= e!4512902 (and tp!2209601 tp!2209599))))

(declare-fun b!7582328 () Bool)

(declare-fun tp!2209600 () Bool)

(declare-fun tp!2209603 () Bool)

(assert (=> b!7582328 (= e!4512902 (and tp!2209600 tp!2209603))))

(assert (=> b!7582055 (= tp!2209533 e!4512902)))

(declare-fun b!7582325 () Bool)

(assert (=> b!7582325 (= e!4512902 tp_is_empty!50525)))

(declare-fun b!7582327 () Bool)

(declare-fun tp!2209602 () Bool)

(assert (=> b!7582327 (= e!4512902 tp!2209602)))

(assert (= (and b!7582055 ((_ is ElementMatch!20085) (regTwo!40682 (regTwo!40683 r!22341)))) b!7582325))

(assert (= (and b!7582055 ((_ is Concat!28930) (regTwo!40682 (regTwo!40683 r!22341)))) b!7582326))

(assert (= (and b!7582055 ((_ is Star!20085) (regTwo!40682 (regTwo!40683 r!22341)))) b!7582327))

(assert (= (and b!7582055 ((_ is Union!20085) (regTwo!40682 (regTwo!40683 r!22341)))) b!7582328))

(declare-fun b!7582330 () Bool)

(declare-fun e!4512903 () Bool)

(declare-fun tp!2209606 () Bool)

(declare-fun tp!2209604 () Bool)

(assert (=> b!7582330 (= e!4512903 (and tp!2209606 tp!2209604))))

(declare-fun b!7582332 () Bool)

(declare-fun tp!2209605 () Bool)

(declare-fun tp!2209608 () Bool)

(assert (=> b!7582332 (= e!4512903 (and tp!2209605 tp!2209608))))

(assert (=> b!7582056 (= tp!2209536 e!4512903)))

(declare-fun b!7582329 () Bool)

(assert (=> b!7582329 (= e!4512903 tp_is_empty!50525)))

(declare-fun b!7582331 () Bool)

(declare-fun tp!2209607 () Bool)

(assert (=> b!7582331 (= e!4512903 tp!2209607)))

(assert (= (and b!7582056 ((_ is ElementMatch!20085) (reg!20414 (regTwo!40683 r!22341)))) b!7582329))

(assert (= (and b!7582056 ((_ is Concat!28930) (reg!20414 (regTwo!40683 r!22341)))) b!7582330))

(assert (= (and b!7582056 ((_ is Star!20085) (reg!20414 (regTwo!40683 r!22341)))) b!7582331))

(assert (= (and b!7582056 ((_ is Union!20085) (reg!20414 (regTwo!40683 r!22341)))) b!7582332))

(declare-fun b!7582334 () Bool)

(declare-fun e!4512904 () Bool)

(declare-fun tp!2209611 () Bool)

(declare-fun tp!2209609 () Bool)

(assert (=> b!7582334 (= e!4512904 (and tp!2209611 tp!2209609))))

(declare-fun b!7582336 () Bool)

(declare-fun tp!2209610 () Bool)

(declare-fun tp!2209613 () Bool)

(assert (=> b!7582336 (= e!4512904 (and tp!2209610 tp!2209613))))

(assert (=> b!7582051 (= tp!2209530 e!4512904)))

(declare-fun b!7582333 () Bool)

(assert (=> b!7582333 (= e!4512904 tp_is_empty!50525)))

(declare-fun b!7582335 () Bool)

(declare-fun tp!2209612 () Bool)

(assert (=> b!7582335 (= e!4512904 tp!2209612)))

(assert (= (and b!7582051 ((_ is ElementMatch!20085) (regOne!40682 (regOne!40683 r!22341)))) b!7582333))

(assert (= (and b!7582051 ((_ is Concat!28930) (regOne!40682 (regOne!40683 r!22341)))) b!7582334))

(assert (= (and b!7582051 ((_ is Star!20085) (regOne!40682 (regOne!40683 r!22341)))) b!7582335))

(assert (= (and b!7582051 ((_ is Union!20085) (regOne!40682 (regOne!40683 r!22341)))) b!7582336))

(declare-fun b!7582338 () Bool)

(declare-fun e!4512905 () Bool)

(declare-fun tp!2209616 () Bool)

(declare-fun tp!2209614 () Bool)

(assert (=> b!7582338 (= e!4512905 (and tp!2209616 tp!2209614))))

(declare-fun b!7582340 () Bool)

(declare-fun tp!2209615 () Bool)

(declare-fun tp!2209618 () Bool)

(assert (=> b!7582340 (= e!4512905 (and tp!2209615 tp!2209618))))

(assert (=> b!7582051 (= tp!2209528 e!4512905)))

(declare-fun b!7582337 () Bool)

(assert (=> b!7582337 (= e!4512905 tp_is_empty!50525)))

(declare-fun b!7582339 () Bool)

(declare-fun tp!2209617 () Bool)

(assert (=> b!7582339 (= e!4512905 tp!2209617)))

(assert (= (and b!7582051 ((_ is ElementMatch!20085) (regTwo!40682 (regOne!40683 r!22341)))) b!7582337))

(assert (= (and b!7582051 ((_ is Concat!28930) (regTwo!40682 (regOne!40683 r!22341)))) b!7582338))

(assert (= (and b!7582051 ((_ is Star!20085) (regTwo!40682 (regOne!40683 r!22341)))) b!7582339))

(assert (= (and b!7582051 ((_ is Union!20085) (regTwo!40682 (regOne!40683 r!22341)))) b!7582340))

(declare-fun b!7582342 () Bool)

(declare-fun e!4512906 () Bool)

(declare-fun tp!2209621 () Bool)

(declare-fun tp!2209619 () Bool)

(assert (=> b!7582342 (= e!4512906 (and tp!2209621 tp!2209619))))

(declare-fun b!7582344 () Bool)

(declare-fun tp!2209620 () Bool)

(declare-fun tp!2209623 () Bool)

(assert (=> b!7582344 (= e!4512906 (and tp!2209620 tp!2209623))))

(assert (=> b!7582052 (= tp!2209531 e!4512906)))

(declare-fun b!7582341 () Bool)

(assert (=> b!7582341 (= e!4512906 tp_is_empty!50525)))

(declare-fun b!7582343 () Bool)

(declare-fun tp!2209622 () Bool)

(assert (=> b!7582343 (= e!4512906 tp!2209622)))

(assert (= (and b!7582052 ((_ is ElementMatch!20085) (reg!20414 (regOne!40683 r!22341)))) b!7582341))

(assert (= (and b!7582052 ((_ is Concat!28930) (reg!20414 (regOne!40683 r!22341)))) b!7582342))

(assert (= (and b!7582052 ((_ is Star!20085) (reg!20414 (regOne!40683 r!22341)))) b!7582343))

(assert (= (and b!7582052 ((_ is Union!20085) (reg!20414 (regOne!40683 r!22341)))) b!7582344))

(declare-fun b!7582346 () Bool)

(declare-fun e!4512907 () Bool)

(declare-fun tp!2209626 () Bool)

(declare-fun tp!2209624 () Bool)

(assert (=> b!7582346 (= e!4512907 (and tp!2209626 tp!2209624))))

(declare-fun b!7582348 () Bool)

(declare-fun tp!2209625 () Bool)

(declare-fun tp!2209628 () Bool)

(assert (=> b!7582348 (= e!4512907 (and tp!2209625 tp!2209628))))

(assert (=> b!7582072 (= tp!2209553 e!4512907)))

(declare-fun b!7582345 () Bool)

(assert (=> b!7582345 (= e!4512907 tp_is_empty!50525)))

(declare-fun b!7582347 () Bool)

(declare-fun tp!2209627 () Bool)

(assert (=> b!7582347 (= e!4512907 tp!2209627)))

(assert (= (and b!7582072 ((_ is ElementMatch!20085) (regOne!40682 (regTwo!40682 r!22341)))) b!7582345))

(assert (= (and b!7582072 ((_ is Concat!28930) (regOne!40682 (regTwo!40682 r!22341)))) b!7582346))

(assert (= (and b!7582072 ((_ is Star!20085) (regOne!40682 (regTwo!40682 r!22341)))) b!7582347))

(assert (= (and b!7582072 ((_ is Union!20085) (regOne!40682 (regTwo!40682 r!22341)))) b!7582348))

(declare-fun b!7582350 () Bool)

(declare-fun e!4512908 () Bool)

(declare-fun tp!2209631 () Bool)

(declare-fun tp!2209629 () Bool)

(assert (=> b!7582350 (= e!4512908 (and tp!2209631 tp!2209629))))

(declare-fun b!7582352 () Bool)

(declare-fun tp!2209630 () Bool)

(declare-fun tp!2209633 () Bool)

(assert (=> b!7582352 (= e!4512908 (and tp!2209630 tp!2209633))))

(assert (=> b!7582072 (= tp!2209551 e!4512908)))

(declare-fun b!7582349 () Bool)

(assert (=> b!7582349 (= e!4512908 tp_is_empty!50525)))

(declare-fun b!7582351 () Bool)

(declare-fun tp!2209632 () Bool)

(assert (=> b!7582351 (= e!4512908 tp!2209632)))

(assert (= (and b!7582072 ((_ is ElementMatch!20085) (regTwo!40682 (regTwo!40682 r!22341)))) b!7582349))

(assert (= (and b!7582072 ((_ is Concat!28930) (regTwo!40682 (regTwo!40682 r!22341)))) b!7582350))

(assert (= (and b!7582072 ((_ is Star!20085) (regTwo!40682 (regTwo!40682 r!22341)))) b!7582351))

(assert (= (and b!7582072 ((_ is Union!20085) (regTwo!40682 (regTwo!40682 r!22341)))) b!7582352))

(declare-fun b!7582354 () Bool)

(declare-fun e!4512909 () Bool)

(declare-fun tp!2209636 () Bool)

(declare-fun tp!2209634 () Bool)

(assert (=> b!7582354 (= e!4512909 (and tp!2209636 tp!2209634))))

(declare-fun b!7582356 () Bool)

(declare-fun tp!2209635 () Bool)

(declare-fun tp!2209638 () Bool)

(assert (=> b!7582356 (= e!4512909 (and tp!2209635 tp!2209638))))

(assert (=> b!7582057 (= tp!2209534 e!4512909)))

(declare-fun b!7582353 () Bool)

(assert (=> b!7582353 (= e!4512909 tp_is_empty!50525)))

(declare-fun b!7582355 () Bool)

(declare-fun tp!2209637 () Bool)

(assert (=> b!7582355 (= e!4512909 tp!2209637)))

(assert (= (and b!7582057 ((_ is ElementMatch!20085) (regOne!40683 (regTwo!40683 r!22341)))) b!7582353))

(assert (= (and b!7582057 ((_ is Concat!28930) (regOne!40683 (regTwo!40683 r!22341)))) b!7582354))

(assert (= (and b!7582057 ((_ is Star!20085) (regOne!40683 (regTwo!40683 r!22341)))) b!7582355))

(assert (= (and b!7582057 ((_ is Union!20085) (regOne!40683 (regTwo!40683 r!22341)))) b!7582356))

(declare-fun b!7582358 () Bool)

(declare-fun e!4512910 () Bool)

(declare-fun tp!2209641 () Bool)

(declare-fun tp!2209639 () Bool)

(assert (=> b!7582358 (= e!4512910 (and tp!2209641 tp!2209639))))

(declare-fun b!7582360 () Bool)

(declare-fun tp!2209640 () Bool)

(declare-fun tp!2209643 () Bool)

(assert (=> b!7582360 (= e!4512910 (and tp!2209640 tp!2209643))))

(assert (=> b!7582057 (= tp!2209537 e!4512910)))

(declare-fun b!7582357 () Bool)

(assert (=> b!7582357 (= e!4512910 tp_is_empty!50525)))

(declare-fun b!7582359 () Bool)

(declare-fun tp!2209642 () Bool)

(assert (=> b!7582359 (= e!4512910 tp!2209642)))

(assert (= (and b!7582057 ((_ is ElementMatch!20085) (regTwo!40683 (regTwo!40683 r!22341)))) b!7582357))

(assert (= (and b!7582057 ((_ is Concat!28930) (regTwo!40683 (regTwo!40683 r!22341)))) b!7582358))

(assert (= (and b!7582057 ((_ is Star!20085) (regTwo!40683 (regTwo!40683 r!22341)))) b!7582359))

(assert (= (and b!7582057 ((_ is Union!20085) (regTwo!40683 (regTwo!40683 r!22341)))) b!7582360))

(declare-fun b!7582362 () Bool)

(declare-fun e!4512911 () Bool)

(declare-fun tp!2209646 () Bool)

(declare-fun tp!2209644 () Bool)

(assert (=> b!7582362 (= e!4512911 (and tp!2209646 tp!2209644))))

(declare-fun b!7582364 () Bool)

(declare-fun tp!2209645 () Bool)

(declare-fun tp!2209648 () Bool)

(assert (=> b!7582364 (= e!4512911 (and tp!2209645 tp!2209648))))

(assert (=> b!7582068 (= tp!2209548 e!4512911)))

(declare-fun b!7582361 () Bool)

(assert (=> b!7582361 (= e!4512911 tp_is_empty!50525)))

(declare-fun b!7582363 () Bool)

(declare-fun tp!2209647 () Bool)

(assert (=> b!7582363 (= e!4512911 tp!2209647)))

(assert (= (and b!7582068 ((_ is ElementMatch!20085) (regOne!40682 (regOne!40682 r!22341)))) b!7582361))

(assert (= (and b!7582068 ((_ is Concat!28930) (regOne!40682 (regOne!40682 r!22341)))) b!7582362))

(assert (= (and b!7582068 ((_ is Star!20085) (regOne!40682 (regOne!40682 r!22341)))) b!7582363))

(assert (= (and b!7582068 ((_ is Union!20085) (regOne!40682 (regOne!40682 r!22341)))) b!7582364))

(declare-fun b!7582366 () Bool)

(declare-fun e!4512912 () Bool)

(declare-fun tp!2209651 () Bool)

(declare-fun tp!2209649 () Bool)

(assert (=> b!7582366 (= e!4512912 (and tp!2209651 tp!2209649))))

(declare-fun b!7582368 () Bool)

(declare-fun tp!2209650 () Bool)

(declare-fun tp!2209653 () Bool)

(assert (=> b!7582368 (= e!4512912 (and tp!2209650 tp!2209653))))

(assert (=> b!7582068 (= tp!2209546 e!4512912)))

(declare-fun b!7582365 () Bool)

(assert (=> b!7582365 (= e!4512912 tp_is_empty!50525)))

(declare-fun b!7582367 () Bool)

(declare-fun tp!2209652 () Bool)

(assert (=> b!7582367 (= e!4512912 tp!2209652)))

(assert (= (and b!7582068 ((_ is ElementMatch!20085) (regTwo!40682 (regOne!40682 r!22341)))) b!7582365))

(assert (= (and b!7582068 ((_ is Concat!28930) (regTwo!40682 (regOne!40682 r!22341)))) b!7582366))

(assert (= (and b!7582068 ((_ is Star!20085) (regTwo!40682 (regOne!40682 r!22341)))) b!7582367))

(assert (= (and b!7582068 ((_ is Union!20085) (regTwo!40682 (regOne!40682 r!22341)))) b!7582368))

(declare-fun b!7582370 () Bool)

(declare-fun e!4512913 () Bool)

(declare-fun tp!2209656 () Bool)

(declare-fun tp!2209654 () Bool)

(assert (=> b!7582370 (= e!4512913 (and tp!2209656 tp!2209654))))

(declare-fun b!7582372 () Bool)

(declare-fun tp!2209655 () Bool)

(declare-fun tp!2209658 () Bool)

(assert (=> b!7582372 (= e!4512913 (and tp!2209655 tp!2209658))))

(assert (=> b!7582053 (= tp!2209529 e!4512913)))

(declare-fun b!7582369 () Bool)

(assert (=> b!7582369 (= e!4512913 tp_is_empty!50525)))

(declare-fun b!7582371 () Bool)

(declare-fun tp!2209657 () Bool)

(assert (=> b!7582371 (= e!4512913 tp!2209657)))

(assert (= (and b!7582053 ((_ is ElementMatch!20085) (regOne!40683 (regOne!40683 r!22341)))) b!7582369))

(assert (= (and b!7582053 ((_ is Concat!28930) (regOne!40683 (regOne!40683 r!22341)))) b!7582370))

(assert (= (and b!7582053 ((_ is Star!20085) (regOne!40683 (regOne!40683 r!22341)))) b!7582371))

(assert (= (and b!7582053 ((_ is Union!20085) (regOne!40683 (regOne!40683 r!22341)))) b!7582372))

(declare-fun b!7582374 () Bool)

(declare-fun e!4512914 () Bool)

(declare-fun tp!2209661 () Bool)

(declare-fun tp!2209659 () Bool)

(assert (=> b!7582374 (= e!4512914 (and tp!2209661 tp!2209659))))

(declare-fun b!7582376 () Bool)

(declare-fun tp!2209660 () Bool)

(declare-fun tp!2209663 () Bool)

(assert (=> b!7582376 (= e!4512914 (and tp!2209660 tp!2209663))))

(assert (=> b!7582053 (= tp!2209532 e!4512914)))

(declare-fun b!7582373 () Bool)

(assert (=> b!7582373 (= e!4512914 tp_is_empty!50525)))

(declare-fun b!7582375 () Bool)

(declare-fun tp!2209662 () Bool)

(assert (=> b!7582375 (= e!4512914 tp!2209662)))

(assert (= (and b!7582053 ((_ is ElementMatch!20085) (regTwo!40683 (regOne!40683 r!22341)))) b!7582373))

(assert (= (and b!7582053 ((_ is Concat!28930) (regTwo!40683 (regOne!40683 r!22341)))) b!7582374))

(assert (= (and b!7582053 ((_ is Star!20085) (regTwo!40683 (regOne!40683 r!22341)))) b!7582375))

(assert (= (and b!7582053 ((_ is Union!20085) (regTwo!40683 (regOne!40683 r!22341)))) b!7582376))

(declare-fun b!7582378 () Bool)

(declare-fun e!4512915 () Bool)

(declare-fun tp!2209666 () Bool)

(declare-fun tp!2209664 () Bool)

(assert (=> b!7582378 (= e!4512915 (and tp!2209666 tp!2209664))))

(declare-fun b!7582380 () Bool)

(declare-fun tp!2209665 () Bool)

(declare-fun tp!2209668 () Bool)

(assert (=> b!7582380 (= e!4512915 (and tp!2209665 tp!2209668))))

(assert (=> b!7582064 (= tp!2209543 e!4512915)))

(declare-fun b!7582377 () Bool)

(assert (=> b!7582377 (= e!4512915 tp_is_empty!50525)))

(declare-fun b!7582379 () Bool)

(declare-fun tp!2209667 () Bool)

(assert (=> b!7582379 (= e!4512915 tp!2209667)))

(assert (= (and b!7582064 ((_ is ElementMatch!20085) (regOne!40682 (reg!20414 r!22341)))) b!7582377))

(assert (= (and b!7582064 ((_ is Concat!28930) (regOne!40682 (reg!20414 r!22341)))) b!7582378))

(assert (= (and b!7582064 ((_ is Star!20085) (regOne!40682 (reg!20414 r!22341)))) b!7582379))

(assert (= (and b!7582064 ((_ is Union!20085) (regOne!40682 (reg!20414 r!22341)))) b!7582380))

(declare-fun b!7582382 () Bool)

(declare-fun e!4512916 () Bool)

(declare-fun tp!2209671 () Bool)

(declare-fun tp!2209669 () Bool)

(assert (=> b!7582382 (= e!4512916 (and tp!2209671 tp!2209669))))

(declare-fun b!7582384 () Bool)

(declare-fun tp!2209670 () Bool)

(declare-fun tp!2209673 () Bool)

(assert (=> b!7582384 (= e!4512916 (and tp!2209670 tp!2209673))))

(assert (=> b!7582064 (= tp!2209541 e!4512916)))

(declare-fun b!7582381 () Bool)

(assert (=> b!7582381 (= e!4512916 tp_is_empty!50525)))

(declare-fun b!7582383 () Bool)

(declare-fun tp!2209672 () Bool)

(assert (=> b!7582383 (= e!4512916 tp!2209672)))

(assert (= (and b!7582064 ((_ is ElementMatch!20085) (regTwo!40682 (reg!20414 r!22341)))) b!7582381))

(assert (= (and b!7582064 ((_ is Concat!28930) (regTwo!40682 (reg!20414 r!22341)))) b!7582382))

(assert (= (and b!7582064 ((_ is Star!20085) (regTwo!40682 (reg!20414 r!22341)))) b!7582383))

(assert (= (and b!7582064 ((_ is Union!20085) (regTwo!40682 (reg!20414 r!22341)))) b!7582384))

(declare-fun b!7582386 () Bool)

(declare-fun e!4512917 () Bool)

(declare-fun tp!2209676 () Bool)

(declare-fun tp!2209674 () Bool)

(assert (=> b!7582386 (= e!4512917 (and tp!2209676 tp!2209674))))

(declare-fun b!7582388 () Bool)

(declare-fun tp!2209675 () Bool)

(declare-fun tp!2209678 () Bool)

(assert (=> b!7582388 (= e!4512917 (and tp!2209675 tp!2209678))))

(assert (=> b!7582073 (= tp!2209554 e!4512917)))

(declare-fun b!7582385 () Bool)

(assert (=> b!7582385 (= e!4512917 tp_is_empty!50525)))

(declare-fun b!7582387 () Bool)

(declare-fun tp!2209677 () Bool)

(assert (=> b!7582387 (= e!4512917 tp!2209677)))

(assert (= (and b!7582073 ((_ is ElementMatch!20085) (reg!20414 (regTwo!40682 r!22341)))) b!7582385))

(assert (= (and b!7582073 ((_ is Concat!28930) (reg!20414 (regTwo!40682 r!22341)))) b!7582386))

(assert (= (and b!7582073 ((_ is Star!20085) (reg!20414 (regTwo!40682 r!22341)))) b!7582387))

(assert (= (and b!7582073 ((_ is Union!20085) (reg!20414 (regTwo!40682 r!22341)))) b!7582388))

(declare-fun b!7582390 () Bool)

(declare-fun e!4512918 () Bool)

(declare-fun tp!2209681 () Bool)

(declare-fun tp!2209679 () Bool)

(assert (=> b!7582390 (= e!4512918 (and tp!2209681 tp!2209679))))

(declare-fun b!7582392 () Bool)

(declare-fun tp!2209680 () Bool)

(declare-fun tp!2209683 () Bool)

(assert (=> b!7582392 (= e!4512918 (and tp!2209680 tp!2209683))))

(assert (=> b!7582074 (= tp!2209552 e!4512918)))

(declare-fun b!7582389 () Bool)

(assert (=> b!7582389 (= e!4512918 tp_is_empty!50525)))

(declare-fun b!7582391 () Bool)

(declare-fun tp!2209682 () Bool)

(assert (=> b!7582391 (= e!4512918 tp!2209682)))

(assert (= (and b!7582074 ((_ is ElementMatch!20085) (regOne!40683 (regTwo!40682 r!22341)))) b!7582389))

(assert (= (and b!7582074 ((_ is Concat!28930) (regOne!40683 (regTwo!40682 r!22341)))) b!7582390))

(assert (= (and b!7582074 ((_ is Star!20085) (regOne!40683 (regTwo!40682 r!22341)))) b!7582391))

(assert (= (and b!7582074 ((_ is Union!20085) (regOne!40683 (regTwo!40682 r!22341)))) b!7582392))

(declare-fun b!7582394 () Bool)

(declare-fun e!4512919 () Bool)

(declare-fun tp!2209686 () Bool)

(declare-fun tp!2209684 () Bool)

(assert (=> b!7582394 (= e!4512919 (and tp!2209686 tp!2209684))))

(declare-fun b!7582396 () Bool)

(declare-fun tp!2209685 () Bool)

(declare-fun tp!2209688 () Bool)

(assert (=> b!7582396 (= e!4512919 (and tp!2209685 tp!2209688))))

(assert (=> b!7582074 (= tp!2209555 e!4512919)))

(declare-fun b!7582393 () Bool)

(assert (=> b!7582393 (= e!4512919 tp_is_empty!50525)))

(declare-fun b!7582395 () Bool)

(declare-fun tp!2209687 () Bool)

(assert (=> b!7582395 (= e!4512919 tp!2209687)))

(assert (= (and b!7582074 ((_ is ElementMatch!20085) (regTwo!40683 (regTwo!40682 r!22341)))) b!7582393))

(assert (= (and b!7582074 ((_ is Concat!28930) (regTwo!40683 (regTwo!40682 r!22341)))) b!7582394))

(assert (= (and b!7582074 ((_ is Star!20085) (regTwo!40683 (regTwo!40682 r!22341)))) b!7582395))

(assert (= (and b!7582074 ((_ is Union!20085) (regTwo!40683 (regTwo!40682 r!22341)))) b!7582396))

(declare-fun b!7582398 () Bool)

(declare-fun e!4512920 () Bool)

(declare-fun tp!2209691 () Bool)

(declare-fun tp!2209689 () Bool)

(assert (=> b!7582398 (= e!4512920 (and tp!2209691 tp!2209689))))

(declare-fun b!7582400 () Bool)

(declare-fun tp!2209690 () Bool)

(declare-fun tp!2209693 () Bool)

(assert (=> b!7582400 (= e!4512920 (and tp!2209690 tp!2209693))))

(assert (=> b!7582069 (= tp!2209549 e!4512920)))

(declare-fun b!7582397 () Bool)

(assert (=> b!7582397 (= e!4512920 tp_is_empty!50525)))

(declare-fun b!7582399 () Bool)

(declare-fun tp!2209692 () Bool)

(assert (=> b!7582399 (= e!4512920 tp!2209692)))

(assert (= (and b!7582069 ((_ is ElementMatch!20085) (reg!20414 (regOne!40682 r!22341)))) b!7582397))

(assert (= (and b!7582069 ((_ is Concat!28930) (reg!20414 (regOne!40682 r!22341)))) b!7582398))

(assert (= (and b!7582069 ((_ is Star!20085) (reg!20414 (regOne!40682 r!22341)))) b!7582399))

(assert (= (and b!7582069 ((_ is Union!20085) (reg!20414 (regOne!40682 r!22341)))) b!7582400))

(declare-fun b!7582402 () Bool)

(declare-fun e!4512921 () Bool)

(declare-fun tp!2209696 () Bool)

(declare-fun tp!2209694 () Bool)

(assert (=> b!7582402 (= e!4512921 (and tp!2209696 tp!2209694))))

(declare-fun b!7582404 () Bool)

(declare-fun tp!2209695 () Bool)

(declare-fun tp!2209698 () Bool)

(assert (=> b!7582404 (= e!4512921 (and tp!2209695 tp!2209698))))

(assert (=> b!7582070 (= tp!2209547 e!4512921)))

(declare-fun b!7582401 () Bool)

(assert (=> b!7582401 (= e!4512921 tp_is_empty!50525)))

(declare-fun b!7582403 () Bool)

(declare-fun tp!2209697 () Bool)

(assert (=> b!7582403 (= e!4512921 tp!2209697)))

(assert (= (and b!7582070 ((_ is ElementMatch!20085) (regOne!40683 (regOne!40682 r!22341)))) b!7582401))

(assert (= (and b!7582070 ((_ is Concat!28930) (regOne!40683 (regOne!40682 r!22341)))) b!7582402))

(assert (= (and b!7582070 ((_ is Star!20085) (regOne!40683 (regOne!40682 r!22341)))) b!7582403))

(assert (= (and b!7582070 ((_ is Union!20085) (regOne!40683 (regOne!40682 r!22341)))) b!7582404))

(declare-fun b!7582406 () Bool)

(declare-fun e!4512922 () Bool)

(declare-fun tp!2209701 () Bool)

(declare-fun tp!2209699 () Bool)

(assert (=> b!7582406 (= e!4512922 (and tp!2209701 tp!2209699))))

(declare-fun b!7582408 () Bool)

(declare-fun tp!2209700 () Bool)

(declare-fun tp!2209703 () Bool)

(assert (=> b!7582408 (= e!4512922 (and tp!2209700 tp!2209703))))

(assert (=> b!7582070 (= tp!2209550 e!4512922)))

(declare-fun b!7582405 () Bool)

(assert (=> b!7582405 (= e!4512922 tp_is_empty!50525)))

(declare-fun b!7582407 () Bool)

(declare-fun tp!2209702 () Bool)

(assert (=> b!7582407 (= e!4512922 tp!2209702)))

(assert (= (and b!7582070 ((_ is ElementMatch!20085) (regTwo!40683 (regOne!40682 r!22341)))) b!7582405))

(assert (= (and b!7582070 ((_ is Concat!28930) (regTwo!40683 (regOne!40682 r!22341)))) b!7582406))

(assert (= (and b!7582070 ((_ is Star!20085) (regTwo!40683 (regOne!40682 r!22341)))) b!7582407))

(assert (= (and b!7582070 ((_ is Union!20085) (regTwo!40683 (regOne!40682 r!22341)))) b!7582408))

(declare-fun b!7582410 () Bool)

(declare-fun e!4512923 () Bool)

(declare-fun tp!2209706 () Bool)

(declare-fun tp!2209704 () Bool)

(assert (=> b!7582410 (= e!4512923 (and tp!2209706 tp!2209704))))

(declare-fun b!7582412 () Bool)

(declare-fun tp!2209705 () Bool)

(declare-fun tp!2209708 () Bool)

(assert (=> b!7582412 (= e!4512923 (and tp!2209705 tp!2209708))))

(assert (=> b!7582065 (= tp!2209544 e!4512923)))

(declare-fun b!7582409 () Bool)

(assert (=> b!7582409 (= e!4512923 tp_is_empty!50525)))

(declare-fun b!7582411 () Bool)

(declare-fun tp!2209707 () Bool)

(assert (=> b!7582411 (= e!4512923 tp!2209707)))

(assert (= (and b!7582065 ((_ is ElementMatch!20085) (reg!20414 (reg!20414 r!22341)))) b!7582409))

(assert (= (and b!7582065 ((_ is Concat!28930) (reg!20414 (reg!20414 r!22341)))) b!7582410))

(assert (= (and b!7582065 ((_ is Star!20085) (reg!20414 (reg!20414 r!22341)))) b!7582411))

(assert (= (and b!7582065 ((_ is Union!20085) (reg!20414 (reg!20414 r!22341)))) b!7582412))

(declare-fun b!7582414 () Bool)

(declare-fun e!4512924 () Bool)

(declare-fun tp!2209711 () Bool)

(declare-fun tp!2209709 () Bool)

(assert (=> b!7582414 (= e!4512924 (and tp!2209711 tp!2209709))))

(declare-fun b!7582416 () Bool)

(declare-fun tp!2209710 () Bool)

(declare-fun tp!2209713 () Bool)

(assert (=> b!7582416 (= e!4512924 (and tp!2209710 tp!2209713))))

(assert (=> b!7582066 (= tp!2209542 e!4512924)))

(declare-fun b!7582413 () Bool)

(assert (=> b!7582413 (= e!4512924 tp_is_empty!50525)))

(declare-fun b!7582415 () Bool)

(declare-fun tp!2209712 () Bool)

(assert (=> b!7582415 (= e!4512924 tp!2209712)))

(assert (= (and b!7582066 ((_ is ElementMatch!20085) (regOne!40683 (reg!20414 r!22341)))) b!7582413))

(assert (= (and b!7582066 ((_ is Concat!28930) (regOne!40683 (reg!20414 r!22341)))) b!7582414))

(assert (= (and b!7582066 ((_ is Star!20085) (regOne!40683 (reg!20414 r!22341)))) b!7582415))

(assert (= (and b!7582066 ((_ is Union!20085) (regOne!40683 (reg!20414 r!22341)))) b!7582416))

(declare-fun b!7582418 () Bool)

(declare-fun e!4512925 () Bool)

(declare-fun tp!2209716 () Bool)

(declare-fun tp!2209714 () Bool)

(assert (=> b!7582418 (= e!4512925 (and tp!2209716 tp!2209714))))

(declare-fun b!7582420 () Bool)

(declare-fun tp!2209715 () Bool)

(declare-fun tp!2209718 () Bool)

(assert (=> b!7582420 (= e!4512925 (and tp!2209715 tp!2209718))))

(assert (=> b!7582066 (= tp!2209545 e!4512925)))

(declare-fun b!7582417 () Bool)

(assert (=> b!7582417 (= e!4512925 tp_is_empty!50525)))

(declare-fun b!7582419 () Bool)

(declare-fun tp!2209717 () Bool)

(assert (=> b!7582419 (= e!4512925 tp!2209717)))

(assert (= (and b!7582066 ((_ is ElementMatch!20085) (regTwo!40683 (reg!20414 r!22341)))) b!7582417))

(assert (= (and b!7582066 ((_ is Concat!28930) (regTwo!40683 (reg!20414 r!22341)))) b!7582418))

(assert (= (and b!7582066 ((_ is Star!20085) (regTwo!40683 (reg!20414 r!22341)))) b!7582419))

(assert (= (and b!7582066 ((_ is Union!20085) (regTwo!40683 (reg!20414 r!22341)))) b!7582420))

(declare-fun b!7582421 () Bool)

(declare-fun e!4512926 () Bool)

(declare-fun tp!2209719 () Bool)

(assert (=> b!7582421 (= e!4512926 (and tp_is_empty!50525 tp!2209719))))

(assert (=> b!7582062 (= tp!2209540 e!4512926)))

(assert (= (and b!7582062 ((_ is Cons!72844) (t!387703 (t!387703 s!13436)))) b!7582421))

(check-sat (not b!7582392) (not b!7582414) (not b!7582415) (not bm!695194) (not d!2318572) (not b!7582243) (not b!7582379) (not b!7582395) (not b!7582396) (not b!7582350) (not b!7582351) (not b!7582416) (not b!7582342) (not b!7582380) (not b!7582328) (not b!7582376) (not b!7582334) (not b!7582330) (not bm!695211) (not b!7582394) (not b!7582338) (not b!7582291) (not bm!695180) (not d!2318584) (not bm!695224) (not b!7582343) (not b!7582356) (not b!7582406) (not bm!695197) (not b!7582378) (not b!7582301) (not b!7582421) (not b!7582238) (not bm!695212) (not d!2318552) (not bm!695187) (not b!7582404) (not b!7582411) (not b!7582407) (not b!7582403) (not b!7582332) (not b!7582340) (not b!7582382) (not b!7582408) (not b!7582290) (not b!7582384) (not d!2318564) (not b!7582296) (not b!7582288) (not b!7582420) (not b!7582363) (not b!7582235) (not b!7582192) (not b!7582359) (not b!7582339) (not b!7582225) (not b!7582270) (not bm!695195) (not bm!695215) (not b!7582388) (not b!7582372) (not bm!695199) (not bm!695181) (not b!7582228) (not b!7582237) (not b!7582300) (not bm!695201) (not b!7582208) (not bm!695192) (not b!7582386) (not b!7582168) (not b!7582370) (not b!7582368) (not b!7582322) (not b!7582412) (not bm!695196) (not b!7582346) (not b!7582219) (not bm!695200) (not b!7582323) (not bm!695189) (not b!7582162) (not bm!695223) (not b!7582374) (not b!7582347) (not d!2318560) (not b!7582358) (not b!7582375) (not d!2318574) (not d!2318558) (not b!7582331) (not b!7582352) (not b!7582354) (not d!2318576) (not b!7582410) (not b!7582362) (not bm!695190) (not bm!695216) (not b!7582314) (not bm!695186) (not b!7582366) (not d!2318582) (not b!7582391) (not b!7582387) tp_is_empty!50525 (not b!7582327) (not b!7582402) (not b!7582348) (not b!7582336) (not b!7582303) (not bm!695219) (not b!7582247) (not b!7582383) (not b!7582324) (not b!7582418) (not b!7582371) (not b!7582367) (not d!2318566) (not b!7582335) (not bm!695217) (not b!7582248) (not d!2318556) (not d!2318542) (not b!7582326) (not b!7582419) (not b!7582364) (not bm!695220) (not b!7582355) (not bm!695191) (not b!7582399) (not b!7582390) (not d!2318578) (not b!7582360) (not b!7582398) (not b!7582400) (not b!7582344) (not b!7582281))
(check-sat)

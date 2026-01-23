; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!731264 () Bool)

(assert start!731264)

(declare-fun b!7572817 () Bool)

(declare-fun res!3033550 () Bool)

(declare-fun e!4508135 () Bool)

(assert (=> b!7572817 (=> (not res!3033550) (not e!4508135))))

(declare-datatypes ((C!40380 0))(
  ( (C!40381 (val!30630 Int)) )
))
(declare-datatypes ((Regex!20027 0))(
  ( (ElementMatch!20027 (c!1397118 C!40380)) (Concat!28872 (regOne!40566 Regex!20027) (regTwo!40566 Regex!20027)) (EmptyExpr!20027) (Star!20027 (reg!20356 Regex!20027)) (EmptyLang!20027) (Union!20027 (regOne!40567 Regex!20027) (regTwo!40567 Regex!20027)) )
))
(declare-fun r!22341 () Regex!20027)

(declare-fun lostCause!1803 (Regex!20027) Bool)

(assert (=> b!7572817 (= res!3033550 (lostCause!1803 r!22341))))

(declare-fun res!3033551 () Bool)

(assert (=> start!731264 (=> (not res!3033551) (not e!4508135))))

(declare-fun validRegex!10455 (Regex!20027) Bool)

(assert (=> start!731264 (= res!3033551 (validRegex!10455 r!22341))))

(assert (=> start!731264 e!4508135))

(declare-fun e!4508133 () Bool)

(assert (=> start!731264 e!4508133))

(declare-fun e!4508132 () Bool)

(assert (=> start!731264 e!4508132))

(declare-fun b!7572818 () Bool)

(declare-fun res!3033549 () Bool)

(assert (=> b!7572818 (=> (not res!3033549) (not e!4508135))))

(declare-datatypes ((List!72910 0))(
  ( (Nil!72786) (Cons!72786 (h!79234 C!40380) (t!387645 List!72910)) )
))
(declare-fun s!13436 () List!72910)

(declare-fun isEmpty!41445 (List!72910) Bool)

(assert (=> b!7572818 (= res!3033549 (not (isEmpty!41445 s!13436)))))

(declare-fun b!7572819 () Bool)

(declare-fun e!4508134 () Bool)

(assert (=> b!7572819 (= e!4508135 (not e!4508134))))

(declare-fun res!3033552 () Bool)

(assert (=> b!7572819 (=> res!3033552 e!4508134)))

(get-info :version)

(assert (=> b!7572819 (= res!3033552 (or ((_ is EmptyLang!20027) r!22341) ((_ is EmptyExpr!20027) r!22341) ((_ is ElementMatch!20027) r!22341) (not ((_ is Union!20027) r!22341))))))

(declare-fun matchR!9623 (Regex!20027 List!72910) Bool)

(declare-fun matchRSpec!4346 (Regex!20027 List!72910) Bool)

(assert (=> b!7572819 (= (matchR!9623 r!22341 s!13436) (matchRSpec!4346 r!22341 s!13436))))

(declare-datatypes ((Unit!167010 0))(
  ( (Unit!167011) )
))
(declare-fun lt!2651555 () Unit!167010)

(declare-fun mainMatchTheorem!4340 (Regex!20027 List!72910) Unit!167010)

(assert (=> b!7572819 (= lt!2651555 (mainMatchTheorem!4340 r!22341 s!13436))))

(declare-fun b!7572820 () Bool)

(declare-fun tp!2206675 () Bool)

(declare-fun tp!2206674 () Bool)

(assert (=> b!7572820 (= e!4508133 (and tp!2206675 tp!2206674))))

(declare-fun b!7572821 () Bool)

(declare-fun tp!2206673 () Bool)

(assert (=> b!7572821 (= e!4508133 tp!2206673)))

(declare-fun b!7572822 () Bool)

(assert (=> b!7572822 (= e!4508134 (validRegex!10455 (regTwo!40567 r!22341)))))

(assert (=> b!7572822 (not (matchR!9623 (regTwo!40567 r!22341) s!13436))))

(declare-fun lt!2651554 () Unit!167010)

(declare-fun lemmaLostCauseCannotMatch!65 (Regex!20027 List!72910) Unit!167010)

(assert (=> b!7572822 (= lt!2651554 (lemmaLostCauseCannotMatch!65 (regTwo!40567 r!22341) s!13436))))

(assert (=> b!7572822 (not (matchR!9623 (regOne!40567 r!22341) s!13436))))

(declare-fun lt!2651556 () Unit!167010)

(assert (=> b!7572822 (= lt!2651556 (lemmaLostCauseCannotMatch!65 (regOne!40567 r!22341) s!13436))))

(declare-fun b!7572823 () Bool)

(declare-fun tp_is_empty!50409 () Bool)

(declare-fun tp!2206672 () Bool)

(assert (=> b!7572823 (= e!4508132 (and tp_is_empty!50409 tp!2206672))))

(declare-fun b!7572824 () Bool)

(assert (=> b!7572824 (= e!4508133 tp_is_empty!50409)))

(declare-fun b!7572825 () Bool)

(declare-fun tp!2206677 () Bool)

(declare-fun tp!2206676 () Bool)

(assert (=> b!7572825 (= e!4508133 (and tp!2206677 tp!2206676))))

(assert (= (and start!731264 res!3033551) b!7572817))

(assert (= (and b!7572817 res!3033550) b!7572818))

(assert (= (and b!7572818 res!3033549) b!7572819))

(assert (= (and b!7572819 (not res!3033552)) b!7572822))

(assert (= (and start!731264 ((_ is ElementMatch!20027) r!22341)) b!7572824))

(assert (= (and start!731264 ((_ is Concat!28872) r!22341)) b!7572825))

(assert (= (and start!731264 ((_ is Star!20027) r!22341)) b!7572821))

(assert (= (and start!731264 ((_ is Union!20027) r!22341)) b!7572820))

(assert (= (and start!731264 ((_ is Cons!72786) s!13436)) b!7572823))

(declare-fun m!8132636 () Bool)

(assert (=> b!7572819 m!8132636))

(declare-fun m!8132638 () Bool)

(assert (=> b!7572819 m!8132638))

(declare-fun m!8132640 () Bool)

(assert (=> b!7572819 m!8132640))

(declare-fun m!8132642 () Bool)

(assert (=> start!731264 m!8132642))

(declare-fun m!8132644 () Bool)

(assert (=> b!7572822 m!8132644))

(declare-fun m!8132646 () Bool)

(assert (=> b!7572822 m!8132646))

(declare-fun m!8132648 () Bool)

(assert (=> b!7572822 m!8132648))

(declare-fun m!8132650 () Bool)

(assert (=> b!7572822 m!8132650))

(declare-fun m!8132652 () Bool)

(assert (=> b!7572822 m!8132652))

(declare-fun m!8132654 () Bool)

(assert (=> b!7572818 m!8132654))

(declare-fun m!8132656 () Bool)

(assert (=> b!7572817 m!8132656))

(check-sat (not b!7572819) (not b!7572820) (not b!7572818) (not start!731264) (not b!7572817) (not b!7572823) tp_is_empty!50409 (not b!7572825) (not b!7572821) (not b!7572822))
(check-sat)
(get-model)

(declare-fun d!2317657 () Bool)

(declare-fun lostCauseFct!482 (Regex!20027) Bool)

(assert (=> d!2317657 (= (lostCause!1803 r!22341) (lostCauseFct!482 r!22341))))

(declare-fun bs!1940629 () Bool)

(assert (= bs!1940629 d!2317657))

(declare-fun m!8132658 () Bool)

(assert (=> bs!1940629 m!8132658))

(assert (=> b!7572817 d!2317657))

(declare-fun b!7572856 () Bool)

(declare-fun e!4508156 () Bool)

(declare-fun call!694257 () Bool)

(assert (=> b!7572856 (= e!4508156 call!694257)))

(declare-fun b!7572857 () Bool)

(declare-fun e!4508161 () Bool)

(declare-fun e!4508159 () Bool)

(assert (=> b!7572857 (= e!4508161 e!4508159)))

(declare-fun c!1397130 () Bool)

(assert (=> b!7572857 (= c!1397130 ((_ is Union!20027) (regTwo!40567 r!22341)))))

(declare-fun b!7572858 () Bool)

(declare-fun res!3033567 () Bool)

(declare-fun e!4508160 () Bool)

(assert (=> b!7572858 (=> res!3033567 e!4508160)))

(assert (=> b!7572858 (= res!3033567 (not ((_ is Concat!28872) (regTwo!40567 r!22341))))))

(assert (=> b!7572858 (= e!4508159 e!4508160)))

(declare-fun bm!694250 () Bool)

(declare-fun call!694255 () Bool)

(assert (=> bm!694250 (= call!694257 call!694255)))

(declare-fun d!2317661 () Bool)

(declare-fun res!3033565 () Bool)

(declare-fun e!4508157 () Bool)

(assert (=> d!2317661 (=> res!3033565 e!4508157)))

(assert (=> d!2317661 (= res!3033565 ((_ is ElementMatch!20027) (regTwo!40567 r!22341)))))

(assert (=> d!2317661 (= (validRegex!10455 (regTwo!40567 r!22341)) e!4508157)))

(declare-fun b!7572859 () Bool)

(declare-fun e!4508158 () Bool)

(declare-fun call!694256 () Bool)

(assert (=> b!7572859 (= e!4508158 call!694256)))

(declare-fun bm!694251 () Bool)

(assert (=> bm!694251 (= call!694256 (validRegex!10455 (ite c!1397130 (regOne!40567 (regTwo!40567 r!22341)) (regTwo!40566 (regTwo!40567 r!22341)))))))

(declare-fun b!7572860 () Bool)

(declare-fun res!3033566 () Bool)

(assert (=> b!7572860 (=> (not res!3033566) (not e!4508156))))

(assert (=> b!7572860 (= res!3033566 call!694256)))

(assert (=> b!7572860 (= e!4508159 e!4508156)))

(declare-fun b!7572861 () Bool)

(assert (=> b!7572861 (= e!4508157 e!4508161)))

(declare-fun c!1397129 () Bool)

(assert (=> b!7572861 (= c!1397129 ((_ is Star!20027) (regTwo!40567 r!22341)))))

(declare-fun b!7572862 () Bool)

(declare-fun e!4508162 () Bool)

(assert (=> b!7572862 (= e!4508162 call!694255)))

(declare-fun b!7572863 () Bool)

(assert (=> b!7572863 (= e!4508160 e!4508158)))

(declare-fun res!3033563 () Bool)

(assert (=> b!7572863 (=> (not res!3033563) (not e!4508158))))

(assert (=> b!7572863 (= res!3033563 call!694257)))

(declare-fun bm!694252 () Bool)

(assert (=> bm!694252 (= call!694255 (validRegex!10455 (ite c!1397129 (reg!20356 (regTwo!40567 r!22341)) (ite c!1397130 (regTwo!40567 (regTwo!40567 r!22341)) (regOne!40566 (regTwo!40567 r!22341))))))))

(declare-fun b!7572864 () Bool)

(assert (=> b!7572864 (= e!4508161 e!4508162)))

(declare-fun res!3033564 () Bool)

(declare-fun nullable!8743 (Regex!20027) Bool)

(assert (=> b!7572864 (= res!3033564 (not (nullable!8743 (reg!20356 (regTwo!40567 r!22341)))))))

(assert (=> b!7572864 (=> (not res!3033564) (not e!4508162))))

(assert (= (and d!2317661 (not res!3033565)) b!7572861))

(assert (= (and b!7572861 c!1397129) b!7572864))

(assert (= (and b!7572861 (not c!1397129)) b!7572857))

(assert (= (and b!7572864 res!3033564) b!7572862))

(assert (= (and b!7572857 c!1397130) b!7572860))

(assert (= (and b!7572857 (not c!1397130)) b!7572858))

(assert (= (and b!7572860 res!3033566) b!7572856))

(assert (= (and b!7572858 (not res!3033567)) b!7572863))

(assert (= (and b!7572863 res!3033563) b!7572859))

(assert (= (or b!7572856 b!7572863) bm!694250))

(assert (= (or b!7572860 b!7572859) bm!694251))

(assert (= (or b!7572862 bm!694250) bm!694252))

(declare-fun m!8132662 () Bool)

(assert (=> bm!694251 m!8132662))

(declare-fun m!8132664 () Bool)

(assert (=> bm!694252 m!8132664))

(declare-fun m!8132666 () Bool)

(assert (=> b!7572864 m!8132666))

(assert (=> b!7572822 d!2317661))

(declare-fun d!2317665 () Bool)

(assert (=> d!2317665 (not (matchR!9623 (regOne!40567 r!22341) s!13436))))

(declare-fun lt!2651561 () Unit!167010)

(declare-fun choose!58548 (Regex!20027 List!72910) Unit!167010)

(assert (=> d!2317665 (= lt!2651561 (choose!58548 (regOne!40567 r!22341) s!13436))))

(assert (=> d!2317665 (validRegex!10455 (regOne!40567 r!22341))))

(assert (=> d!2317665 (= (lemmaLostCauseCannotMatch!65 (regOne!40567 r!22341) s!13436) lt!2651561)))

(declare-fun bs!1940631 () Bool)

(assert (= bs!1940631 d!2317665))

(assert (=> bs!1940631 m!8132652))

(declare-fun m!8132668 () Bool)

(assert (=> bs!1940631 m!8132668))

(declare-fun m!8132670 () Bool)

(assert (=> bs!1940631 m!8132670))

(assert (=> b!7572822 d!2317665))

(declare-fun b!7572945 () Bool)

(declare-fun res!3033615 () Bool)

(declare-fun e!4508212 () Bool)

(assert (=> b!7572945 (=> res!3033615 e!4508212)))

(assert (=> b!7572945 (= res!3033615 (not ((_ is ElementMatch!20027) (regTwo!40567 r!22341))))))

(declare-fun e!4508207 () Bool)

(assert (=> b!7572945 (= e!4508207 e!4508212)))

(declare-fun b!7572946 () Bool)

(declare-fun res!3033616 () Bool)

(assert (=> b!7572946 (=> res!3033616 e!4508212)))

(declare-fun e!4508206 () Bool)

(assert (=> b!7572946 (= res!3033616 e!4508206)))

(declare-fun res!3033619 () Bool)

(assert (=> b!7572946 (=> (not res!3033619) (not e!4508206))))

(declare-fun lt!2651565 () Bool)

(assert (=> b!7572946 (= res!3033619 lt!2651565)))

(declare-fun b!7572947 () Bool)

(declare-fun e!4508211 () Bool)

(declare-fun call!694263 () Bool)

(assert (=> b!7572947 (= e!4508211 (= lt!2651565 call!694263))))

(declare-fun b!7572948 () Bool)

(declare-fun e!4508210 () Bool)

(declare-fun derivativeStep!5775 (Regex!20027 C!40380) Regex!20027)

(declare-fun head!15575 (List!72910) C!40380)

(declare-fun tail!15115 (List!72910) List!72910)

(assert (=> b!7572948 (= e!4508210 (matchR!9623 (derivativeStep!5775 (regTwo!40567 r!22341) (head!15575 s!13436)) (tail!15115 s!13436)))))

(declare-fun b!7572949 () Bool)

(declare-fun res!3033618 () Bool)

(assert (=> b!7572949 (=> (not res!3033618) (not e!4508206))))

(assert (=> b!7572949 (= res!3033618 (isEmpty!41445 (tail!15115 s!13436)))))

(declare-fun bm!694258 () Bool)

(assert (=> bm!694258 (= call!694263 (isEmpty!41445 s!13436))))

(declare-fun b!7572950 () Bool)

(declare-fun res!3033617 () Bool)

(declare-fun e!4508208 () Bool)

(assert (=> b!7572950 (=> res!3033617 e!4508208)))

(assert (=> b!7572950 (= res!3033617 (not (isEmpty!41445 (tail!15115 s!13436))))))

(declare-fun b!7572951 () Bool)

(declare-fun e!4508209 () Bool)

(assert (=> b!7572951 (= e!4508209 e!4508208)))

(declare-fun res!3033614 () Bool)

(assert (=> b!7572951 (=> res!3033614 e!4508208)))

(assert (=> b!7572951 (= res!3033614 call!694263)))

(declare-fun b!7572952 () Bool)

(assert (=> b!7572952 (= e!4508210 (nullable!8743 (regTwo!40567 r!22341)))))

(declare-fun b!7572953 () Bool)

(assert (=> b!7572953 (= e!4508212 e!4508209)))

(declare-fun res!3033620 () Bool)

(assert (=> b!7572953 (=> (not res!3033620) (not e!4508209))))

(assert (=> b!7572953 (= res!3033620 (not lt!2651565))))

(declare-fun b!7572954 () Bool)

(assert (=> b!7572954 (= e!4508208 (not (= (head!15575 s!13436) (c!1397118 (regTwo!40567 r!22341)))))))

(declare-fun b!7572955 () Bool)

(assert (=> b!7572955 (= e!4508211 e!4508207)))

(declare-fun c!1397150 () Bool)

(assert (=> b!7572955 (= c!1397150 ((_ is EmptyLang!20027) (regTwo!40567 r!22341)))))

(declare-fun b!7572956 () Bool)

(declare-fun res!3033621 () Bool)

(assert (=> b!7572956 (=> (not res!3033621) (not e!4508206))))

(assert (=> b!7572956 (= res!3033621 (not call!694263))))

(declare-fun b!7572957 () Bool)

(assert (=> b!7572957 (= e!4508207 (not lt!2651565))))

(declare-fun b!7572958 () Bool)

(assert (=> b!7572958 (= e!4508206 (= (head!15575 s!13436) (c!1397118 (regTwo!40567 r!22341))))))

(declare-fun d!2317667 () Bool)

(assert (=> d!2317667 e!4508211))

(declare-fun c!1397149 () Bool)

(assert (=> d!2317667 (= c!1397149 ((_ is EmptyExpr!20027) (regTwo!40567 r!22341)))))

(assert (=> d!2317667 (= lt!2651565 e!4508210)))

(declare-fun c!1397148 () Bool)

(assert (=> d!2317667 (= c!1397148 (isEmpty!41445 s!13436))))

(assert (=> d!2317667 (validRegex!10455 (regTwo!40567 r!22341))))

(assert (=> d!2317667 (= (matchR!9623 (regTwo!40567 r!22341) s!13436) lt!2651565)))

(assert (= (and d!2317667 c!1397148) b!7572952))

(assert (= (and d!2317667 (not c!1397148)) b!7572948))

(assert (= (and d!2317667 c!1397149) b!7572947))

(assert (= (and d!2317667 (not c!1397149)) b!7572955))

(assert (= (and b!7572955 c!1397150) b!7572957))

(assert (= (and b!7572955 (not c!1397150)) b!7572945))

(assert (= (and b!7572945 (not res!3033615)) b!7572946))

(assert (= (and b!7572946 res!3033619) b!7572956))

(assert (= (and b!7572956 res!3033621) b!7572949))

(assert (= (and b!7572949 res!3033618) b!7572958))

(assert (= (and b!7572946 (not res!3033616)) b!7572953))

(assert (= (and b!7572953 res!3033620) b!7572951))

(assert (= (and b!7572951 (not res!3033614)) b!7572950))

(assert (= (and b!7572950 (not res!3033617)) b!7572954))

(assert (= (or b!7572947 b!7572951 b!7572956) bm!694258))

(declare-fun m!8132684 () Bool)

(assert (=> b!7572948 m!8132684))

(assert (=> b!7572948 m!8132684))

(declare-fun m!8132686 () Bool)

(assert (=> b!7572948 m!8132686))

(declare-fun m!8132688 () Bool)

(assert (=> b!7572948 m!8132688))

(assert (=> b!7572948 m!8132686))

(assert (=> b!7572948 m!8132688))

(declare-fun m!8132690 () Bool)

(assert (=> b!7572948 m!8132690))

(assert (=> b!7572954 m!8132684))

(assert (=> b!7572958 m!8132684))

(assert (=> b!7572950 m!8132688))

(assert (=> b!7572950 m!8132688))

(declare-fun m!8132692 () Bool)

(assert (=> b!7572950 m!8132692))

(declare-fun m!8132694 () Bool)

(assert (=> b!7572952 m!8132694))

(assert (=> d!2317667 m!8132654))

(assert (=> d!2317667 m!8132648))

(assert (=> b!7572949 m!8132688))

(assert (=> b!7572949 m!8132688))

(assert (=> b!7572949 m!8132692))

(assert (=> bm!694258 m!8132654))

(assert (=> b!7572822 d!2317667))

(declare-fun d!2317671 () Bool)

(assert (=> d!2317671 (not (matchR!9623 (regTwo!40567 r!22341) s!13436))))

(declare-fun lt!2651566 () Unit!167010)

(assert (=> d!2317671 (= lt!2651566 (choose!58548 (regTwo!40567 r!22341) s!13436))))

(assert (=> d!2317671 (validRegex!10455 (regTwo!40567 r!22341))))

(assert (=> d!2317671 (= (lemmaLostCauseCannotMatch!65 (regTwo!40567 r!22341) s!13436) lt!2651566)))

(declare-fun bs!1940632 () Bool)

(assert (= bs!1940632 d!2317671))

(assert (=> bs!1940632 m!8132644))

(declare-fun m!8132696 () Bool)

(assert (=> bs!1940632 m!8132696))

(assert (=> bs!1940632 m!8132648))

(assert (=> b!7572822 d!2317671))

(declare-fun b!7572959 () Bool)

(declare-fun res!3033623 () Bool)

(declare-fun e!4508219 () Bool)

(assert (=> b!7572959 (=> res!3033623 e!4508219)))

(assert (=> b!7572959 (= res!3033623 (not ((_ is ElementMatch!20027) (regOne!40567 r!22341))))))

(declare-fun e!4508214 () Bool)

(assert (=> b!7572959 (= e!4508214 e!4508219)))

(declare-fun b!7572960 () Bool)

(declare-fun res!3033624 () Bool)

(assert (=> b!7572960 (=> res!3033624 e!4508219)))

(declare-fun e!4508213 () Bool)

(assert (=> b!7572960 (= res!3033624 e!4508213)))

(declare-fun res!3033627 () Bool)

(assert (=> b!7572960 (=> (not res!3033627) (not e!4508213))))

(declare-fun lt!2651567 () Bool)

(assert (=> b!7572960 (= res!3033627 lt!2651567)))

(declare-fun b!7572961 () Bool)

(declare-fun e!4508218 () Bool)

(declare-fun call!694264 () Bool)

(assert (=> b!7572961 (= e!4508218 (= lt!2651567 call!694264))))

(declare-fun b!7572962 () Bool)

(declare-fun e!4508217 () Bool)

(assert (=> b!7572962 (= e!4508217 (matchR!9623 (derivativeStep!5775 (regOne!40567 r!22341) (head!15575 s!13436)) (tail!15115 s!13436)))))

(declare-fun b!7572963 () Bool)

(declare-fun res!3033626 () Bool)

(assert (=> b!7572963 (=> (not res!3033626) (not e!4508213))))

(assert (=> b!7572963 (= res!3033626 (isEmpty!41445 (tail!15115 s!13436)))))

(declare-fun bm!694259 () Bool)

(assert (=> bm!694259 (= call!694264 (isEmpty!41445 s!13436))))

(declare-fun b!7572964 () Bool)

(declare-fun res!3033625 () Bool)

(declare-fun e!4508215 () Bool)

(assert (=> b!7572964 (=> res!3033625 e!4508215)))

(assert (=> b!7572964 (= res!3033625 (not (isEmpty!41445 (tail!15115 s!13436))))))

(declare-fun b!7572965 () Bool)

(declare-fun e!4508216 () Bool)

(assert (=> b!7572965 (= e!4508216 e!4508215)))

(declare-fun res!3033622 () Bool)

(assert (=> b!7572965 (=> res!3033622 e!4508215)))

(assert (=> b!7572965 (= res!3033622 call!694264)))

(declare-fun b!7572966 () Bool)

(assert (=> b!7572966 (= e!4508217 (nullable!8743 (regOne!40567 r!22341)))))

(declare-fun b!7572967 () Bool)

(assert (=> b!7572967 (= e!4508219 e!4508216)))

(declare-fun res!3033628 () Bool)

(assert (=> b!7572967 (=> (not res!3033628) (not e!4508216))))

(assert (=> b!7572967 (= res!3033628 (not lt!2651567))))

(declare-fun b!7572968 () Bool)

(assert (=> b!7572968 (= e!4508215 (not (= (head!15575 s!13436) (c!1397118 (regOne!40567 r!22341)))))))

(declare-fun b!7572969 () Bool)

(assert (=> b!7572969 (= e!4508218 e!4508214)))

(declare-fun c!1397153 () Bool)

(assert (=> b!7572969 (= c!1397153 ((_ is EmptyLang!20027) (regOne!40567 r!22341)))))

(declare-fun b!7572970 () Bool)

(declare-fun res!3033629 () Bool)

(assert (=> b!7572970 (=> (not res!3033629) (not e!4508213))))

(assert (=> b!7572970 (= res!3033629 (not call!694264))))

(declare-fun b!7572971 () Bool)

(assert (=> b!7572971 (= e!4508214 (not lt!2651567))))

(declare-fun b!7572972 () Bool)

(assert (=> b!7572972 (= e!4508213 (= (head!15575 s!13436) (c!1397118 (regOne!40567 r!22341))))))

(declare-fun d!2317673 () Bool)

(assert (=> d!2317673 e!4508218))

(declare-fun c!1397152 () Bool)

(assert (=> d!2317673 (= c!1397152 ((_ is EmptyExpr!20027) (regOne!40567 r!22341)))))

(assert (=> d!2317673 (= lt!2651567 e!4508217)))

(declare-fun c!1397151 () Bool)

(assert (=> d!2317673 (= c!1397151 (isEmpty!41445 s!13436))))

(assert (=> d!2317673 (validRegex!10455 (regOne!40567 r!22341))))

(assert (=> d!2317673 (= (matchR!9623 (regOne!40567 r!22341) s!13436) lt!2651567)))

(assert (= (and d!2317673 c!1397151) b!7572966))

(assert (= (and d!2317673 (not c!1397151)) b!7572962))

(assert (= (and d!2317673 c!1397152) b!7572961))

(assert (= (and d!2317673 (not c!1397152)) b!7572969))

(assert (= (and b!7572969 c!1397153) b!7572971))

(assert (= (and b!7572969 (not c!1397153)) b!7572959))

(assert (= (and b!7572959 (not res!3033623)) b!7572960))

(assert (= (and b!7572960 res!3033627) b!7572970))

(assert (= (and b!7572970 res!3033629) b!7572963))

(assert (= (and b!7572963 res!3033626) b!7572972))

(assert (= (and b!7572960 (not res!3033624)) b!7572967))

(assert (= (and b!7572967 res!3033628) b!7572965))

(assert (= (and b!7572965 (not res!3033622)) b!7572964))

(assert (= (and b!7572964 (not res!3033625)) b!7572968))

(assert (= (or b!7572961 b!7572965 b!7572970) bm!694259))

(assert (=> b!7572962 m!8132684))

(assert (=> b!7572962 m!8132684))

(declare-fun m!8132698 () Bool)

(assert (=> b!7572962 m!8132698))

(assert (=> b!7572962 m!8132688))

(assert (=> b!7572962 m!8132698))

(assert (=> b!7572962 m!8132688))

(declare-fun m!8132700 () Bool)

(assert (=> b!7572962 m!8132700))

(assert (=> b!7572968 m!8132684))

(assert (=> b!7572972 m!8132684))

(assert (=> b!7572964 m!8132688))

(assert (=> b!7572964 m!8132688))

(assert (=> b!7572964 m!8132692))

(declare-fun m!8132702 () Bool)

(assert (=> b!7572966 m!8132702))

(assert (=> d!2317673 m!8132654))

(assert (=> d!2317673 m!8132670))

(assert (=> b!7572963 m!8132688))

(assert (=> b!7572963 m!8132688))

(assert (=> b!7572963 m!8132692))

(assert (=> bm!694259 m!8132654))

(assert (=> b!7572822 d!2317673))

(declare-fun b!7572973 () Bool)

(declare-fun res!3033631 () Bool)

(declare-fun e!4508226 () Bool)

(assert (=> b!7572973 (=> res!3033631 e!4508226)))

(assert (=> b!7572973 (= res!3033631 (not ((_ is ElementMatch!20027) r!22341)))))

(declare-fun e!4508221 () Bool)

(assert (=> b!7572973 (= e!4508221 e!4508226)))

(declare-fun b!7572974 () Bool)

(declare-fun res!3033632 () Bool)

(assert (=> b!7572974 (=> res!3033632 e!4508226)))

(declare-fun e!4508220 () Bool)

(assert (=> b!7572974 (= res!3033632 e!4508220)))

(declare-fun res!3033635 () Bool)

(assert (=> b!7572974 (=> (not res!3033635) (not e!4508220))))

(declare-fun lt!2651568 () Bool)

(assert (=> b!7572974 (= res!3033635 lt!2651568)))

(declare-fun b!7572975 () Bool)

(declare-fun e!4508225 () Bool)

(declare-fun call!694265 () Bool)

(assert (=> b!7572975 (= e!4508225 (= lt!2651568 call!694265))))

(declare-fun b!7572976 () Bool)

(declare-fun e!4508224 () Bool)

(assert (=> b!7572976 (= e!4508224 (matchR!9623 (derivativeStep!5775 r!22341 (head!15575 s!13436)) (tail!15115 s!13436)))))

(declare-fun b!7572977 () Bool)

(declare-fun res!3033634 () Bool)

(assert (=> b!7572977 (=> (not res!3033634) (not e!4508220))))

(assert (=> b!7572977 (= res!3033634 (isEmpty!41445 (tail!15115 s!13436)))))

(declare-fun bm!694260 () Bool)

(assert (=> bm!694260 (= call!694265 (isEmpty!41445 s!13436))))

(declare-fun b!7572978 () Bool)

(declare-fun res!3033633 () Bool)

(declare-fun e!4508222 () Bool)

(assert (=> b!7572978 (=> res!3033633 e!4508222)))

(assert (=> b!7572978 (= res!3033633 (not (isEmpty!41445 (tail!15115 s!13436))))))

(declare-fun b!7572979 () Bool)

(declare-fun e!4508223 () Bool)

(assert (=> b!7572979 (= e!4508223 e!4508222)))

(declare-fun res!3033630 () Bool)

(assert (=> b!7572979 (=> res!3033630 e!4508222)))

(assert (=> b!7572979 (= res!3033630 call!694265)))

(declare-fun b!7572980 () Bool)

(assert (=> b!7572980 (= e!4508224 (nullable!8743 r!22341))))

(declare-fun b!7572981 () Bool)

(assert (=> b!7572981 (= e!4508226 e!4508223)))

(declare-fun res!3033636 () Bool)

(assert (=> b!7572981 (=> (not res!3033636) (not e!4508223))))

(assert (=> b!7572981 (= res!3033636 (not lt!2651568))))

(declare-fun b!7572982 () Bool)

(assert (=> b!7572982 (= e!4508222 (not (= (head!15575 s!13436) (c!1397118 r!22341))))))

(declare-fun b!7572983 () Bool)

(assert (=> b!7572983 (= e!4508225 e!4508221)))

(declare-fun c!1397156 () Bool)

(assert (=> b!7572983 (= c!1397156 ((_ is EmptyLang!20027) r!22341))))

(declare-fun b!7572984 () Bool)

(declare-fun res!3033637 () Bool)

(assert (=> b!7572984 (=> (not res!3033637) (not e!4508220))))

(assert (=> b!7572984 (= res!3033637 (not call!694265))))

(declare-fun b!7572985 () Bool)

(assert (=> b!7572985 (= e!4508221 (not lt!2651568))))

(declare-fun b!7572986 () Bool)

(assert (=> b!7572986 (= e!4508220 (= (head!15575 s!13436) (c!1397118 r!22341)))))

(declare-fun d!2317675 () Bool)

(assert (=> d!2317675 e!4508225))

(declare-fun c!1397155 () Bool)

(assert (=> d!2317675 (= c!1397155 ((_ is EmptyExpr!20027) r!22341))))

(assert (=> d!2317675 (= lt!2651568 e!4508224)))

(declare-fun c!1397154 () Bool)

(assert (=> d!2317675 (= c!1397154 (isEmpty!41445 s!13436))))

(assert (=> d!2317675 (validRegex!10455 r!22341)))

(assert (=> d!2317675 (= (matchR!9623 r!22341 s!13436) lt!2651568)))

(assert (= (and d!2317675 c!1397154) b!7572980))

(assert (= (and d!2317675 (not c!1397154)) b!7572976))

(assert (= (and d!2317675 c!1397155) b!7572975))

(assert (= (and d!2317675 (not c!1397155)) b!7572983))

(assert (= (and b!7572983 c!1397156) b!7572985))

(assert (= (and b!7572983 (not c!1397156)) b!7572973))

(assert (= (and b!7572973 (not res!3033631)) b!7572974))

(assert (= (and b!7572974 res!3033635) b!7572984))

(assert (= (and b!7572984 res!3033637) b!7572977))

(assert (= (and b!7572977 res!3033634) b!7572986))

(assert (= (and b!7572974 (not res!3033632)) b!7572981))

(assert (= (and b!7572981 res!3033636) b!7572979))

(assert (= (and b!7572979 (not res!3033630)) b!7572978))

(assert (= (and b!7572978 (not res!3033633)) b!7572982))

(assert (= (or b!7572975 b!7572979 b!7572984) bm!694260))

(assert (=> b!7572976 m!8132684))

(assert (=> b!7572976 m!8132684))

(declare-fun m!8132704 () Bool)

(assert (=> b!7572976 m!8132704))

(assert (=> b!7572976 m!8132688))

(assert (=> b!7572976 m!8132704))

(assert (=> b!7572976 m!8132688))

(declare-fun m!8132706 () Bool)

(assert (=> b!7572976 m!8132706))

(assert (=> b!7572982 m!8132684))

(assert (=> b!7572986 m!8132684))

(assert (=> b!7572978 m!8132688))

(assert (=> b!7572978 m!8132688))

(assert (=> b!7572978 m!8132692))

(declare-fun m!8132708 () Bool)

(assert (=> b!7572980 m!8132708))

(assert (=> d!2317675 m!8132654))

(assert (=> d!2317675 m!8132642))

(assert (=> b!7572977 m!8132688))

(assert (=> b!7572977 m!8132688))

(assert (=> b!7572977 m!8132692))

(assert (=> bm!694260 m!8132654))

(assert (=> b!7572819 d!2317675))

(declare-fun b!7573151 () Bool)

(assert (=> b!7573151 true))

(assert (=> b!7573151 true))

(declare-fun bs!1940637 () Bool)

(declare-fun b!7573149 () Bool)

(assert (= bs!1940637 (and b!7573149 b!7573151)))

(declare-fun lambda!466473 () Int)

(declare-fun lambda!466472 () Int)

(assert (=> bs!1940637 (not (= lambda!466473 lambda!466472))))

(assert (=> b!7573149 true))

(assert (=> b!7573149 true))

(declare-fun d!2317677 () Bool)

(declare-fun c!1397186 () Bool)

(assert (=> d!2317677 (= c!1397186 ((_ is EmptyExpr!20027) r!22341))))

(declare-fun e!4508310 () Bool)

(assert (=> d!2317677 (= (matchRSpec!4346 r!22341 s!13436) e!4508310)))

(declare-fun call!694290 () Bool)

(declare-fun c!1397184 () Bool)

(declare-fun bm!694285 () Bool)

(declare-fun Exists!4280 (Int) Bool)

(assert (=> bm!694285 (= call!694290 (Exists!4280 (ite c!1397184 lambda!466472 lambda!466473)))))

(declare-fun b!7573143 () Bool)

(declare-fun c!1397183 () Bool)

(assert (=> b!7573143 (= c!1397183 ((_ is Union!20027) r!22341))))

(declare-fun e!4508309 () Bool)

(declare-fun e!4508314 () Bool)

(assert (=> b!7573143 (= e!4508309 e!4508314)))

(declare-fun b!7573144 () Bool)

(assert (=> b!7573144 (= e!4508309 (= s!13436 (Cons!72786 (c!1397118 r!22341) Nil!72786)))))

(declare-fun b!7573145 () Bool)

(declare-fun e!4508313 () Bool)

(assert (=> b!7573145 (= e!4508314 e!4508313)))

(declare-fun res!3033703 () Bool)

(assert (=> b!7573145 (= res!3033703 (matchRSpec!4346 (regOne!40567 r!22341) s!13436))))

(assert (=> b!7573145 (=> res!3033703 e!4508313)))

(declare-fun bm!694286 () Bool)

(declare-fun call!694291 () Bool)

(assert (=> bm!694286 (= call!694291 (isEmpty!41445 s!13436))))

(declare-fun b!7573146 () Bool)

(assert (=> b!7573146 (= e!4508313 (matchRSpec!4346 (regTwo!40567 r!22341) s!13436))))

(declare-fun b!7573147 () Bool)

(declare-fun res!3033705 () Bool)

(declare-fun e!4508308 () Bool)

(assert (=> b!7573147 (=> res!3033705 e!4508308)))

(assert (=> b!7573147 (= res!3033705 call!694291)))

(declare-fun e!4508311 () Bool)

(assert (=> b!7573147 (= e!4508311 e!4508308)))

(declare-fun b!7573148 () Bool)

(assert (=> b!7573148 (= e!4508314 e!4508311)))

(assert (=> b!7573148 (= c!1397184 ((_ is Star!20027) r!22341))))

(assert (=> b!7573149 (= e!4508311 call!694290)))

(declare-fun b!7573150 () Bool)

(assert (=> b!7573150 (= e!4508310 call!694291)))

(assert (=> b!7573151 (= e!4508308 call!694290)))

(declare-fun b!7573152 () Bool)

(declare-fun e!4508312 () Bool)

(assert (=> b!7573152 (= e!4508310 e!4508312)))

(declare-fun res!3033704 () Bool)

(assert (=> b!7573152 (= res!3033704 (not ((_ is EmptyLang!20027) r!22341)))))

(assert (=> b!7573152 (=> (not res!3033704) (not e!4508312))))

(declare-fun b!7573153 () Bool)

(declare-fun c!1397185 () Bool)

(assert (=> b!7573153 (= c!1397185 ((_ is ElementMatch!20027) r!22341))))

(assert (=> b!7573153 (= e!4508312 e!4508309)))

(assert (= (and d!2317677 c!1397186) b!7573150))

(assert (= (and d!2317677 (not c!1397186)) b!7573152))

(assert (= (and b!7573152 res!3033704) b!7573153))

(assert (= (and b!7573153 c!1397185) b!7573144))

(assert (= (and b!7573153 (not c!1397185)) b!7573143))

(assert (= (and b!7573143 c!1397183) b!7573145))

(assert (= (and b!7573143 (not c!1397183)) b!7573148))

(assert (= (and b!7573145 (not res!3033703)) b!7573146))

(assert (= (and b!7573148 c!1397184) b!7573147))

(assert (= (and b!7573148 (not c!1397184)) b!7573149))

(assert (= (and b!7573147 (not res!3033705)) b!7573151))

(assert (= (or b!7573151 b!7573149) bm!694285))

(assert (= (or b!7573150 b!7573147) bm!694286))

(declare-fun m!8132748 () Bool)

(assert (=> bm!694285 m!8132748))

(declare-fun m!8132750 () Bool)

(assert (=> b!7573145 m!8132750))

(assert (=> bm!694286 m!8132654))

(declare-fun m!8132752 () Bool)

(assert (=> b!7573146 m!8132752))

(assert (=> b!7572819 d!2317677))

(declare-fun d!2317695 () Bool)

(assert (=> d!2317695 (= (matchR!9623 r!22341 s!13436) (matchRSpec!4346 r!22341 s!13436))))

(declare-fun lt!2651580 () Unit!167010)

(declare-fun choose!58549 (Regex!20027 List!72910) Unit!167010)

(assert (=> d!2317695 (= lt!2651580 (choose!58549 r!22341 s!13436))))

(assert (=> d!2317695 (validRegex!10455 r!22341)))

(assert (=> d!2317695 (= (mainMatchTheorem!4340 r!22341 s!13436) lt!2651580)))

(declare-fun bs!1940638 () Bool)

(assert (= bs!1940638 d!2317695))

(assert (=> bs!1940638 m!8132636))

(assert (=> bs!1940638 m!8132638))

(declare-fun m!8132754 () Bool)

(assert (=> bs!1940638 m!8132754))

(assert (=> bs!1940638 m!8132642))

(assert (=> b!7572819 d!2317695))

(declare-fun b!7573158 () Bool)

(declare-fun e!4508315 () Bool)

(declare-fun call!694294 () Bool)

(assert (=> b!7573158 (= e!4508315 call!694294)))

(declare-fun b!7573159 () Bool)

(declare-fun e!4508320 () Bool)

(declare-fun e!4508318 () Bool)

(assert (=> b!7573159 (= e!4508320 e!4508318)))

(declare-fun c!1397188 () Bool)

(assert (=> b!7573159 (= c!1397188 ((_ is Union!20027) r!22341))))

(declare-fun b!7573160 () Bool)

(declare-fun res!3033710 () Bool)

(declare-fun e!4508319 () Bool)

(assert (=> b!7573160 (=> res!3033710 e!4508319)))

(assert (=> b!7573160 (= res!3033710 (not ((_ is Concat!28872) r!22341)))))

(assert (=> b!7573160 (= e!4508318 e!4508319)))

(declare-fun bm!694287 () Bool)

(declare-fun call!694292 () Bool)

(assert (=> bm!694287 (= call!694294 call!694292)))

(declare-fun d!2317697 () Bool)

(declare-fun res!3033708 () Bool)

(declare-fun e!4508316 () Bool)

(assert (=> d!2317697 (=> res!3033708 e!4508316)))

(assert (=> d!2317697 (= res!3033708 ((_ is ElementMatch!20027) r!22341))))

(assert (=> d!2317697 (= (validRegex!10455 r!22341) e!4508316)))

(declare-fun b!7573161 () Bool)

(declare-fun e!4508317 () Bool)

(declare-fun call!694293 () Bool)

(assert (=> b!7573161 (= e!4508317 call!694293)))

(declare-fun bm!694288 () Bool)

(assert (=> bm!694288 (= call!694293 (validRegex!10455 (ite c!1397188 (regOne!40567 r!22341) (regTwo!40566 r!22341))))))

(declare-fun b!7573162 () Bool)

(declare-fun res!3033709 () Bool)

(assert (=> b!7573162 (=> (not res!3033709) (not e!4508315))))

(assert (=> b!7573162 (= res!3033709 call!694293)))

(assert (=> b!7573162 (= e!4508318 e!4508315)))

(declare-fun b!7573163 () Bool)

(assert (=> b!7573163 (= e!4508316 e!4508320)))

(declare-fun c!1397187 () Bool)

(assert (=> b!7573163 (= c!1397187 ((_ is Star!20027) r!22341))))

(declare-fun b!7573164 () Bool)

(declare-fun e!4508321 () Bool)

(assert (=> b!7573164 (= e!4508321 call!694292)))

(declare-fun b!7573165 () Bool)

(assert (=> b!7573165 (= e!4508319 e!4508317)))

(declare-fun res!3033706 () Bool)

(assert (=> b!7573165 (=> (not res!3033706) (not e!4508317))))

(assert (=> b!7573165 (= res!3033706 call!694294)))

(declare-fun bm!694289 () Bool)

(assert (=> bm!694289 (= call!694292 (validRegex!10455 (ite c!1397187 (reg!20356 r!22341) (ite c!1397188 (regTwo!40567 r!22341) (regOne!40566 r!22341)))))))

(declare-fun b!7573166 () Bool)

(assert (=> b!7573166 (= e!4508320 e!4508321)))

(declare-fun res!3033707 () Bool)

(assert (=> b!7573166 (= res!3033707 (not (nullable!8743 (reg!20356 r!22341))))))

(assert (=> b!7573166 (=> (not res!3033707) (not e!4508321))))

(assert (= (and d!2317697 (not res!3033708)) b!7573163))

(assert (= (and b!7573163 c!1397187) b!7573166))

(assert (= (and b!7573163 (not c!1397187)) b!7573159))

(assert (= (and b!7573166 res!3033707) b!7573164))

(assert (= (and b!7573159 c!1397188) b!7573162))

(assert (= (and b!7573159 (not c!1397188)) b!7573160))

(assert (= (and b!7573162 res!3033709) b!7573158))

(assert (= (and b!7573160 (not res!3033710)) b!7573165))

(assert (= (and b!7573165 res!3033706) b!7573161))

(assert (= (or b!7573158 b!7573165) bm!694287))

(assert (= (or b!7573162 b!7573161) bm!694288))

(assert (= (or b!7573164 bm!694287) bm!694289))

(declare-fun m!8132756 () Bool)

(assert (=> bm!694288 m!8132756))

(declare-fun m!8132758 () Bool)

(assert (=> bm!694289 m!8132758))

(declare-fun m!8132760 () Bool)

(assert (=> b!7573166 m!8132760))

(assert (=> start!731264 d!2317697))

(declare-fun d!2317699 () Bool)

(assert (=> d!2317699 (= (isEmpty!41445 s!13436) ((_ is Nil!72786) s!13436))))

(assert (=> b!7572818 d!2317699))

(declare-fun b!7573180 () Bool)

(declare-fun e!4508324 () Bool)

(declare-fun tp!2206727 () Bool)

(declare-fun tp!2206729 () Bool)

(assert (=> b!7573180 (= e!4508324 (and tp!2206727 tp!2206729))))

(declare-fun b!7573177 () Bool)

(assert (=> b!7573177 (= e!4508324 tp_is_empty!50409)))

(declare-fun b!7573179 () Bool)

(declare-fun tp!2206730 () Bool)

(assert (=> b!7573179 (= e!4508324 tp!2206730)))

(assert (=> b!7572820 (= tp!2206675 e!4508324)))

(declare-fun b!7573178 () Bool)

(declare-fun tp!2206726 () Bool)

(declare-fun tp!2206728 () Bool)

(assert (=> b!7573178 (= e!4508324 (and tp!2206726 tp!2206728))))

(assert (= (and b!7572820 ((_ is ElementMatch!20027) (regOne!40567 r!22341))) b!7573177))

(assert (= (and b!7572820 ((_ is Concat!28872) (regOne!40567 r!22341))) b!7573178))

(assert (= (and b!7572820 ((_ is Star!20027) (regOne!40567 r!22341))) b!7573179))

(assert (= (and b!7572820 ((_ is Union!20027) (regOne!40567 r!22341))) b!7573180))

(declare-fun b!7573184 () Bool)

(declare-fun e!4508325 () Bool)

(declare-fun tp!2206732 () Bool)

(declare-fun tp!2206734 () Bool)

(assert (=> b!7573184 (= e!4508325 (and tp!2206732 tp!2206734))))

(declare-fun b!7573181 () Bool)

(assert (=> b!7573181 (= e!4508325 tp_is_empty!50409)))

(declare-fun b!7573183 () Bool)

(declare-fun tp!2206735 () Bool)

(assert (=> b!7573183 (= e!4508325 tp!2206735)))

(assert (=> b!7572820 (= tp!2206674 e!4508325)))

(declare-fun b!7573182 () Bool)

(declare-fun tp!2206731 () Bool)

(declare-fun tp!2206733 () Bool)

(assert (=> b!7573182 (= e!4508325 (and tp!2206731 tp!2206733))))

(assert (= (and b!7572820 ((_ is ElementMatch!20027) (regTwo!40567 r!22341))) b!7573181))

(assert (= (and b!7572820 ((_ is Concat!28872) (regTwo!40567 r!22341))) b!7573182))

(assert (= (and b!7572820 ((_ is Star!20027) (regTwo!40567 r!22341))) b!7573183))

(assert (= (and b!7572820 ((_ is Union!20027) (regTwo!40567 r!22341))) b!7573184))

(declare-fun b!7573188 () Bool)

(declare-fun e!4508326 () Bool)

(declare-fun tp!2206737 () Bool)

(declare-fun tp!2206739 () Bool)

(assert (=> b!7573188 (= e!4508326 (and tp!2206737 tp!2206739))))

(declare-fun b!7573185 () Bool)

(assert (=> b!7573185 (= e!4508326 tp_is_empty!50409)))

(declare-fun b!7573187 () Bool)

(declare-fun tp!2206740 () Bool)

(assert (=> b!7573187 (= e!4508326 tp!2206740)))

(assert (=> b!7572821 (= tp!2206673 e!4508326)))

(declare-fun b!7573186 () Bool)

(declare-fun tp!2206736 () Bool)

(declare-fun tp!2206738 () Bool)

(assert (=> b!7573186 (= e!4508326 (and tp!2206736 tp!2206738))))

(assert (= (and b!7572821 ((_ is ElementMatch!20027) (reg!20356 r!22341))) b!7573185))

(assert (= (and b!7572821 ((_ is Concat!28872) (reg!20356 r!22341))) b!7573186))

(assert (= (and b!7572821 ((_ is Star!20027) (reg!20356 r!22341))) b!7573187))

(assert (= (and b!7572821 ((_ is Union!20027) (reg!20356 r!22341))) b!7573188))

(declare-fun b!7573192 () Bool)

(declare-fun e!4508327 () Bool)

(declare-fun tp!2206742 () Bool)

(declare-fun tp!2206744 () Bool)

(assert (=> b!7573192 (= e!4508327 (and tp!2206742 tp!2206744))))

(declare-fun b!7573189 () Bool)

(assert (=> b!7573189 (= e!4508327 tp_is_empty!50409)))

(declare-fun b!7573191 () Bool)

(declare-fun tp!2206745 () Bool)

(assert (=> b!7573191 (= e!4508327 tp!2206745)))

(assert (=> b!7572825 (= tp!2206677 e!4508327)))

(declare-fun b!7573190 () Bool)

(declare-fun tp!2206741 () Bool)

(declare-fun tp!2206743 () Bool)

(assert (=> b!7573190 (= e!4508327 (and tp!2206741 tp!2206743))))

(assert (= (and b!7572825 ((_ is ElementMatch!20027) (regOne!40566 r!22341))) b!7573189))

(assert (= (and b!7572825 ((_ is Concat!28872) (regOne!40566 r!22341))) b!7573190))

(assert (= (and b!7572825 ((_ is Star!20027) (regOne!40566 r!22341))) b!7573191))

(assert (= (and b!7572825 ((_ is Union!20027) (regOne!40566 r!22341))) b!7573192))

(declare-fun b!7573196 () Bool)

(declare-fun e!4508328 () Bool)

(declare-fun tp!2206747 () Bool)

(declare-fun tp!2206749 () Bool)

(assert (=> b!7573196 (= e!4508328 (and tp!2206747 tp!2206749))))

(declare-fun b!7573193 () Bool)

(assert (=> b!7573193 (= e!4508328 tp_is_empty!50409)))

(declare-fun b!7573195 () Bool)

(declare-fun tp!2206750 () Bool)

(assert (=> b!7573195 (= e!4508328 tp!2206750)))

(assert (=> b!7572825 (= tp!2206676 e!4508328)))

(declare-fun b!7573194 () Bool)

(declare-fun tp!2206746 () Bool)

(declare-fun tp!2206748 () Bool)

(assert (=> b!7573194 (= e!4508328 (and tp!2206746 tp!2206748))))

(assert (= (and b!7572825 ((_ is ElementMatch!20027) (regTwo!40566 r!22341))) b!7573193))

(assert (= (and b!7572825 ((_ is Concat!28872) (regTwo!40566 r!22341))) b!7573194))

(assert (= (and b!7572825 ((_ is Star!20027) (regTwo!40566 r!22341))) b!7573195))

(assert (= (and b!7572825 ((_ is Union!20027) (regTwo!40566 r!22341))) b!7573196))

(declare-fun b!7573201 () Bool)

(declare-fun e!4508331 () Bool)

(declare-fun tp!2206753 () Bool)

(assert (=> b!7573201 (= e!4508331 (and tp_is_empty!50409 tp!2206753))))

(assert (=> b!7572823 (= tp!2206672 e!4508331)))

(assert (= (and b!7572823 ((_ is Cons!72786) (t!387645 s!13436))) b!7573201))

(check-sat (not b!7573187) (not b!7573178) (not b!7573184) (not b!7572950) (not d!2317695) (not bm!694259) (not b!7572972) (not b!7573195) (not d!2317665) (not b!7572978) (not bm!694258) (not d!2317657) (not b!7573196) (not b!7573192) (not b!7572968) (not b!7573166) (not b!7573146) (not b!7573190) (not b!7572977) (not b!7573201) (not b!7573145) (not d!2317667) (not b!7573191) (not b!7573194) (not b!7572948) (not b!7572949) (not b!7572976) (not b!7573188) (not bm!694251) (not b!7572963) (not b!7573183) (not d!2317673) (not b!7572958) (not b!7573186) (not bm!694260) (not d!2317675) (not b!7572962) tp_is_empty!50409 (not b!7572986) (not b!7572864) (not bm!694289) (not b!7573180) (not d!2317671) (not bm!694286) (not b!7572966) (not b!7573179) (not bm!694252) (not b!7573182) (not b!7572982) (not b!7572952) (not b!7572964) (not bm!694285) (not b!7572980) (not b!7572954) (not bm!694288))
(check-sat)

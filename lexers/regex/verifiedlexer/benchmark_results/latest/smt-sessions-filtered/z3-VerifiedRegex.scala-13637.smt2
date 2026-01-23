; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!731716 () Bool)

(assert start!731716)

(declare-fun b!7577917 () Bool)

(declare-datatypes ((Unit!167093 0))(
  ( (Unit!167094) )
))
(declare-fun e!4510676 () Unit!167093)

(declare-fun lt!2652422 () Unit!167093)

(assert (=> b!7577917 (= e!4510676 lt!2652422)))

(declare-datatypes ((C!40464 0))(
  ( (C!40465 (val!30672 Int)) )
))
(declare-datatypes ((Regex!20069 0))(
  ( (ElementMatch!20069 (c!1397818 C!40464)) (Concat!28914 (regOne!40650 Regex!20069) (regTwo!40650 Regex!20069)) (EmptyExpr!20069) (Star!20069 (reg!20398 Regex!20069)) (EmptyLang!20069) (Union!20069 (regOne!40651 Regex!20069) (regTwo!40651 Regex!20069)) )
))
(declare-fun r!22341 () Regex!20069)

(declare-fun lemmaNullableThenNotLostCause!102 (Regex!20069) Unit!167093)

(assert (=> b!7577917 (= lt!2652422 (lemmaNullableThenNotLostCause!102 r!22341))))

(assert (=> b!7577917 false))

(declare-fun b!7577918 () Bool)

(declare-fun res!3035971 () Bool)

(declare-fun e!4510675 () Bool)

(assert (=> b!7577918 (=> (not res!3035971) (not e!4510675))))

(declare-datatypes ((List!72952 0))(
  ( (Nil!72828) (Cons!72828 (h!79276 C!40464) (t!387687 List!72952)) )
))
(declare-fun s!13436 () List!72952)

(declare-fun isEmpty!41497 (List!72952) Bool)

(assert (=> b!7577918 (= res!3035971 (isEmpty!41497 s!13436))))

(declare-fun b!7577919 () Bool)

(declare-fun e!4510674 () Bool)

(declare-fun tp!2208116 () Bool)

(declare-fun tp!2208117 () Bool)

(assert (=> b!7577919 (= e!4510674 (and tp!2208116 tp!2208117))))

(declare-fun b!7577920 () Bool)

(declare-fun tp!2208112 () Bool)

(declare-fun tp!2208113 () Bool)

(assert (=> b!7577920 (= e!4510674 (and tp!2208112 tp!2208113))))

(declare-fun b!7577922 () Bool)

(declare-fun e!4510677 () Bool)

(assert (=> b!7577922 (= e!4510675 e!4510677)))

(declare-fun res!3035973 () Bool)

(assert (=> b!7577922 (=> (not res!3035973) (not e!4510677))))

(declare-fun lt!2652421 () Bool)

(assert (=> b!7577922 (= res!3035973 (not lt!2652421))))

(declare-fun lt!2652420 () Unit!167093)

(assert (=> b!7577922 (= lt!2652420 e!4510676)))

(declare-fun c!1397817 () Bool)

(assert (=> b!7577922 (= c!1397817 lt!2652421)))

(declare-fun nullable!8762 (Regex!20069) Bool)

(assert (=> b!7577922 (= lt!2652421 (nullable!8762 r!22341))))

(declare-fun b!7577923 () Bool)

(declare-fun e!4510673 () Bool)

(declare-fun tp_is_empty!50493 () Bool)

(declare-fun tp!2208115 () Bool)

(assert (=> b!7577923 (= e!4510673 (and tp_is_empty!50493 tp!2208115))))

(declare-fun b!7577924 () Bool)

(declare-fun Unit!167095 () Unit!167093)

(assert (=> b!7577924 (= e!4510676 Unit!167095)))

(declare-fun b!7577925 () Bool)

(assert (=> b!7577925 (= e!4510674 tp_is_empty!50493)))

(declare-fun b!7577926 () Bool)

(declare-fun tp!2208114 () Bool)

(assert (=> b!7577926 (= e!4510674 tp!2208114)))

(declare-fun b!7577927 () Bool)

(declare-fun matchR!9661 (Regex!20069 List!72952) Bool)

(assert (=> b!7577927 (= e!4510677 (matchR!9661 r!22341 s!13436))))

(declare-fun b!7577921 () Bool)

(declare-fun res!3035972 () Bool)

(assert (=> b!7577921 (=> (not res!3035972) (not e!4510675))))

(declare-fun lostCause!1845 (Regex!20069) Bool)

(assert (=> b!7577921 (= res!3035972 (lostCause!1845 r!22341))))

(declare-fun res!3035974 () Bool)

(assert (=> start!731716 (=> (not res!3035974) (not e!4510675))))

(declare-fun validRegex!10497 (Regex!20069) Bool)

(assert (=> start!731716 (= res!3035974 (validRegex!10497 r!22341))))

(assert (=> start!731716 e!4510675))

(assert (=> start!731716 e!4510674))

(assert (=> start!731716 e!4510673))

(assert (= (and start!731716 res!3035974) b!7577921))

(assert (= (and b!7577921 res!3035972) b!7577918))

(assert (= (and b!7577918 res!3035971) b!7577922))

(assert (= (and b!7577922 c!1397817) b!7577917))

(assert (= (and b!7577922 (not c!1397817)) b!7577924))

(assert (= (and b!7577922 res!3035973) b!7577927))

(get-info :version)

(assert (= (and start!731716 ((_ is ElementMatch!20069) r!22341)) b!7577925))

(assert (= (and start!731716 ((_ is Concat!28914) r!22341)) b!7577919))

(assert (= (and start!731716 ((_ is Star!20069) r!22341)) b!7577926))

(assert (= (and start!731716 ((_ is Union!20069) r!22341)) b!7577920))

(assert (= (and start!731716 ((_ is Cons!72828) s!13436)) b!7577923))

(declare-fun m!8134978 () Bool)

(assert (=> b!7577927 m!8134978))

(declare-fun m!8134980 () Bool)

(assert (=> b!7577918 m!8134980))

(declare-fun m!8134982 () Bool)

(assert (=> b!7577921 m!8134982))

(declare-fun m!8134984 () Bool)

(assert (=> start!731716 m!8134984))

(declare-fun m!8134986 () Bool)

(assert (=> b!7577917 m!8134986))

(declare-fun m!8134988 () Bool)

(assert (=> b!7577922 m!8134988))

(check-sat (not b!7577927) (not b!7577926) (not b!7577919) (not b!7577920) (not b!7577922) (not b!7577921) (not b!7577917) (not start!731716) (not b!7577918) (not b!7577923) tp_is_empty!50493)
(check-sat)
(get-model)

(declare-fun d!2318132 () Bool)

(declare-fun lostCauseFct!497 (Regex!20069) Bool)

(assert (=> d!2318132 (= (lostCause!1845 r!22341) (lostCauseFct!497 r!22341))))

(declare-fun bs!1940922 () Bool)

(assert (= bs!1940922 d!2318132))

(declare-fun m!8134992 () Bool)

(assert (=> bs!1940922 m!8134992))

(assert (=> b!7577921 d!2318132))

(declare-fun d!2318136 () Bool)

(assert (=> d!2318136 (= (isEmpty!41497 s!13436) ((_ is Nil!72828) s!13436))))

(assert (=> b!7577918 d!2318136))

(declare-fun d!2318138 () Bool)

(assert (=> d!2318138 (not (lostCause!1845 r!22341))))

(declare-fun lt!2652425 () Unit!167093)

(declare-fun choose!58595 (Regex!20069) Unit!167093)

(assert (=> d!2318138 (= lt!2652425 (choose!58595 r!22341))))

(assert (=> d!2318138 (validRegex!10497 r!22341)))

(assert (=> d!2318138 (= (lemmaNullableThenNotLostCause!102 r!22341) lt!2652425)))

(declare-fun bs!1940923 () Bool)

(assert (= bs!1940923 d!2318138))

(assert (=> bs!1940923 m!8134982))

(declare-fun m!8134994 () Bool)

(assert (=> bs!1940923 m!8134994))

(assert (=> bs!1940923 m!8134984))

(assert (=> b!7577917 d!2318138))

(declare-fun b!7577973 () Bool)

(declare-fun res!3036003 () Bool)

(declare-fun e!4510719 () Bool)

(assert (=> b!7577973 (=> (not res!3036003) (not e!4510719))))

(declare-fun call!694668 () Bool)

(assert (=> b!7577973 (= res!3036003 call!694668)))

(declare-fun e!4510714 () Bool)

(assert (=> b!7577973 (= e!4510714 e!4510719)))

(declare-fun b!7577974 () Bool)

(declare-fun e!4510716 () Bool)

(assert (=> b!7577974 (= e!4510716 e!4510714)))

(declare-fun c!1397829 () Bool)

(assert (=> b!7577974 (= c!1397829 ((_ is Union!20069) r!22341))))

(declare-fun b!7577975 () Bool)

(declare-fun e!4510713 () Bool)

(declare-fun call!694666 () Bool)

(assert (=> b!7577975 (= e!4510713 call!694666)))

(declare-fun b!7577976 () Bool)

(declare-fun e!4510717 () Bool)

(assert (=> b!7577976 (= e!4510717 call!694668)))

(declare-fun bm!694661 () Bool)

(assert (=> bm!694661 (= call!694668 call!694666)))

(declare-fun d!2318140 () Bool)

(declare-fun res!3036000 () Bool)

(declare-fun e!4510718 () Bool)

(assert (=> d!2318140 (=> res!3036000 e!4510718)))

(assert (=> d!2318140 (= res!3036000 ((_ is ElementMatch!20069) r!22341))))

(assert (=> d!2318140 (= (validRegex!10497 r!22341) e!4510718)))

(declare-fun b!7577977 () Bool)

(assert (=> b!7577977 (= e!4510716 e!4510713)))

(declare-fun res!3036004 () Bool)

(assert (=> b!7577977 (= res!3036004 (not (nullable!8762 (reg!20398 r!22341))))))

(assert (=> b!7577977 (=> (not res!3036004) (not e!4510713))))

(declare-fun b!7577978 () Bool)

(declare-fun e!4510715 () Bool)

(assert (=> b!7577978 (= e!4510715 e!4510717)))

(declare-fun res!3036001 () Bool)

(assert (=> b!7577978 (=> (not res!3036001) (not e!4510717))))

(declare-fun call!694667 () Bool)

(assert (=> b!7577978 (= res!3036001 call!694667)))

(declare-fun b!7577979 () Bool)

(assert (=> b!7577979 (= e!4510718 e!4510716)))

(declare-fun c!1397830 () Bool)

(assert (=> b!7577979 (= c!1397830 ((_ is Star!20069) r!22341))))

(declare-fun b!7577980 () Bool)

(assert (=> b!7577980 (= e!4510719 call!694667)))

(declare-fun bm!694662 () Bool)

(assert (=> bm!694662 (= call!694666 (validRegex!10497 (ite c!1397830 (reg!20398 r!22341) (ite c!1397829 (regOne!40651 r!22341) (regTwo!40650 r!22341)))))))

(declare-fun bm!694663 () Bool)

(assert (=> bm!694663 (= call!694667 (validRegex!10497 (ite c!1397829 (regTwo!40651 r!22341) (regOne!40650 r!22341))))))

(declare-fun b!7577981 () Bool)

(declare-fun res!3036002 () Bool)

(assert (=> b!7577981 (=> res!3036002 e!4510715)))

(assert (=> b!7577981 (= res!3036002 (not ((_ is Concat!28914) r!22341)))))

(assert (=> b!7577981 (= e!4510714 e!4510715)))

(assert (= (and d!2318140 (not res!3036000)) b!7577979))

(assert (= (and b!7577979 c!1397830) b!7577977))

(assert (= (and b!7577979 (not c!1397830)) b!7577974))

(assert (= (and b!7577977 res!3036004) b!7577975))

(assert (= (and b!7577974 c!1397829) b!7577973))

(assert (= (and b!7577974 (not c!1397829)) b!7577981))

(assert (= (and b!7577973 res!3036003) b!7577980))

(assert (= (and b!7577981 (not res!3036002)) b!7577978))

(assert (= (and b!7577978 res!3036001) b!7577976))

(assert (= (or b!7577980 b!7577978) bm!694663))

(assert (= (or b!7577973 b!7577976) bm!694661))

(assert (= (or b!7577975 bm!694661) bm!694662))

(declare-fun m!8135006 () Bool)

(assert (=> b!7577977 m!8135006))

(declare-fun m!8135008 () Bool)

(assert (=> bm!694662 m!8135008))

(declare-fun m!8135010 () Bool)

(assert (=> bm!694663 m!8135010))

(assert (=> start!731716 d!2318140))

(declare-fun d!2318148 () Bool)

(declare-fun nullableFct!3490 (Regex!20069) Bool)

(assert (=> d!2318148 (= (nullable!8762 r!22341) (nullableFct!3490 r!22341))))

(declare-fun bs!1940926 () Bool)

(assert (= bs!1940926 d!2318148))

(declare-fun m!8135012 () Bool)

(assert (=> bs!1940926 m!8135012))

(assert (=> b!7577922 d!2318148))

(declare-fun b!7578052 () Bool)

(declare-fun e!4510755 () Bool)

(declare-fun e!4510757 () Bool)

(assert (=> b!7578052 (= e!4510755 e!4510757)))

(declare-fun c!1397846 () Bool)

(assert (=> b!7578052 (= c!1397846 ((_ is EmptyLang!20069) r!22341))))

(declare-fun b!7578053 () Bool)

(declare-fun lt!2652434 () Bool)

(declare-fun call!694674 () Bool)

(assert (=> b!7578053 (= e!4510755 (= lt!2652434 call!694674))))

(declare-fun b!7578054 () Bool)

(declare-fun e!4510760 () Bool)

(declare-fun derivativeStep!5788 (Regex!20069 C!40464) Regex!20069)

(declare-fun head!15588 (List!72952) C!40464)

(declare-fun tail!15128 (List!72952) List!72952)

(assert (=> b!7578054 (= e!4510760 (matchR!9661 (derivativeStep!5788 r!22341 (head!15588 s!13436)) (tail!15128 s!13436)))))

(declare-fun d!2318150 () Bool)

(assert (=> d!2318150 e!4510755))

(declare-fun c!1397848 () Bool)

(assert (=> d!2318150 (= c!1397848 ((_ is EmptyExpr!20069) r!22341))))

(assert (=> d!2318150 (= lt!2652434 e!4510760)))

(declare-fun c!1397847 () Bool)

(assert (=> d!2318150 (= c!1397847 (isEmpty!41497 s!13436))))

(assert (=> d!2318150 (validRegex!10497 r!22341)))

(assert (=> d!2318150 (= (matchR!9661 r!22341 s!13436) lt!2652434)))

(declare-fun b!7578055 () Bool)

(declare-fun e!4510759 () Bool)

(assert (=> b!7578055 (= e!4510759 (not (= (head!15588 s!13436) (c!1397818 r!22341))))))

(declare-fun b!7578056 () Bool)

(declare-fun e!4510756 () Bool)

(assert (=> b!7578056 (= e!4510756 e!4510759)))

(declare-fun res!3036052 () Bool)

(assert (=> b!7578056 (=> res!3036052 e!4510759)))

(assert (=> b!7578056 (= res!3036052 call!694674)))

(declare-fun b!7578057 () Bool)

(declare-fun res!3036051 () Bool)

(declare-fun e!4510761 () Bool)

(assert (=> b!7578057 (=> (not res!3036051) (not e!4510761))))

(assert (=> b!7578057 (= res!3036051 (isEmpty!41497 (tail!15128 s!13436)))))

(declare-fun b!7578058 () Bool)

(declare-fun e!4510758 () Bool)

(assert (=> b!7578058 (= e!4510758 e!4510756)))

(declare-fun res!3036048 () Bool)

(assert (=> b!7578058 (=> (not res!3036048) (not e!4510756))))

(assert (=> b!7578058 (= res!3036048 (not lt!2652434))))

(declare-fun b!7578059 () Bool)

(declare-fun res!3036046 () Bool)

(assert (=> b!7578059 (=> res!3036046 e!4510759)))

(assert (=> b!7578059 (= res!3036046 (not (isEmpty!41497 (tail!15128 s!13436))))))

(declare-fun b!7578060 () Bool)

(assert (=> b!7578060 (= e!4510760 (nullable!8762 r!22341))))

(declare-fun b!7578061 () Bool)

(declare-fun res!3036050 () Bool)

(assert (=> b!7578061 (=> (not res!3036050) (not e!4510761))))

(assert (=> b!7578061 (= res!3036050 (not call!694674))))

(declare-fun b!7578062 () Bool)

(assert (=> b!7578062 (= e!4510761 (= (head!15588 s!13436) (c!1397818 r!22341)))))

(declare-fun b!7578063 () Bool)

(assert (=> b!7578063 (= e!4510757 (not lt!2652434))))

(declare-fun b!7578064 () Bool)

(declare-fun res!3036049 () Bool)

(assert (=> b!7578064 (=> res!3036049 e!4510758)))

(assert (=> b!7578064 (= res!3036049 e!4510761)))

(declare-fun res!3036045 () Bool)

(assert (=> b!7578064 (=> (not res!3036045) (not e!4510761))))

(assert (=> b!7578064 (= res!3036045 lt!2652434)))

(declare-fun b!7578065 () Bool)

(declare-fun res!3036047 () Bool)

(assert (=> b!7578065 (=> res!3036047 e!4510758)))

(assert (=> b!7578065 (= res!3036047 (not ((_ is ElementMatch!20069) r!22341)))))

(assert (=> b!7578065 (= e!4510757 e!4510758)))

(declare-fun bm!694669 () Bool)

(assert (=> bm!694669 (= call!694674 (isEmpty!41497 s!13436))))

(assert (= (and d!2318150 c!1397847) b!7578060))

(assert (= (and d!2318150 (not c!1397847)) b!7578054))

(assert (= (and d!2318150 c!1397848) b!7578053))

(assert (= (and d!2318150 (not c!1397848)) b!7578052))

(assert (= (and b!7578052 c!1397846) b!7578063))

(assert (= (and b!7578052 (not c!1397846)) b!7578065))

(assert (= (and b!7578065 (not res!3036047)) b!7578064))

(assert (= (and b!7578064 res!3036045) b!7578061))

(assert (= (and b!7578061 res!3036050) b!7578057))

(assert (= (and b!7578057 res!3036051) b!7578062))

(assert (= (and b!7578064 (not res!3036049)) b!7578058))

(assert (= (and b!7578058 res!3036048) b!7578056))

(assert (= (and b!7578056 (not res!3036052)) b!7578059))

(assert (= (and b!7578059 (not res!3036046)) b!7578055))

(assert (= (or b!7578053 b!7578061 b!7578056) bm!694669))

(assert (=> d!2318150 m!8134980))

(assert (=> d!2318150 m!8134984))

(declare-fun m!8135024 () Bool)

(assert (=> b!7578062 m!8135024))

(declare-fun m!8135026 () Bool)

(assert (=> b!7578059 m!8135026))

(assert (=> b!7578059 m!8135026))

(declare-fun m!8135028 () Bool)

(assert (=> b!7578059 m!8135028))

(assert (=> b!7578057 m!8135026))

(assert (=> b!7578057 m!8135026))

(assert (=> b!7578057 m!8135028))

(assert (=> b!7578055 m!8135024))

(assert (=> bm!694669 m!8134980))

(assert (=> b!7578054 m!8135024))

(assert (=> b!7578054 m!8135024))

(declare-fun m!8135030 () Bool)

(assert (=> b!7578054 m!8135030))

(assert (=> b!7578054 m!8135026))

(assert (=> b!7578054 m!8135030))

(assert (=> b!7578054 m!8135026))

(declare-fun m!8135032 () Bool)

(assert (=> b!7578054 m!8135032))

(assert (=> b!7578060 m!8134988))

(assert (=> b!7577927 d!2318150))

(declare-fun e!4510771 () Bool)

(assert (=> b!7577926 (= tp!2208114 e!4510771)))

(declare-fun b!7578100 () Bool)

(declare-fun tp!2208152 () Bool)

(declare-fun tp!2208151 () Bool)

(assert (=> b!7578100 (= e!4510771 (and tp!2208152 tp!2208151))))

(declare-fun b!7578101 () Bool)

(declare-fun tp!2208153 () Bool)

(assert (=> b!7578101 (= e!4510771 tp!2208153)))

(declare-fun b!7578099 () Bool)

(assert (=> b!7578099 (= e!4510771 tp_is_empty!50493)))

(declare-fun b!7578102 () Bool)

(declare-fun tp!2208154 () Bool)

(declare-fun tp!2208155 () Bool)

(assert (=> b!7578102 (= e!4510771 (and tp!2208154 tp!2208155))))

(assert (= (and b!7577926 ((_ is ElementMatch!20069) (reg!20398 r!22341))) b!7578099))

(assert (= (and b!7577926 ((_ is Concat!28914) (reg!20398 r!22341))) b!7578100))

(assert (= (and b!7577926 ((_ is Star!20069) (reg!20398 r!22341))) b!7578101))

(assert (= (and b!7577926 ((_ is Union!20069) (reg!20398 r!22341))) b!7578102))

(declare-fun e!4510773 () Bool)

(assert (=> b!7577920 (= tp!2208112 e!4510773)))

(declare-fun b!7578108 () Bool)

(declare-fun tp!2208162 () Bool)

(declare-fun tp!2208161 () Bool)

(assert (=> b!7578108 (= e!4510773 (and tp!2208162 tp!2208161))))

(declare-fun b!7578109 () Bool)

(declare-fun tp!2208163 () Bool)

(assert (=> b!7578109 (= e!4510773 tp!2208163)))

(declare-fun b!7578107 () Bool)

(assert (=> b!7578107 (= e!4510773 tp_is_empty!50493)))

(declare-fun b!7578110 () Bool)

(declare-fun tp!2208164 () Bool)

(declare-fun tp!2208165 () Bool)

(assert (=> b!7578110 (= e!4510773 (and tp!2208164 tp!2208165))))

(assert (= (and b!7577920 ((_ is ElementMatch!20069) (regOne!40651 r!22341))) b!7578107))

(assert (= (and b!7577920 ((_ is Concat!28914) (regOne!40651 r!22341))) b!7578108))

(assert (= (and b!7577920 ((_ is Star!20069) (regOne!40651 r!22341))) b!7578109))

(assert (= (and b!7577920 ((_ is Union!20069) (regOne!40651 r!22341))) b!7578110))

(declare-fun e!4510775 () Bool)

(assert (=> b!7577920 (= tp!2208113 e!4510775)))

(declare-fun b!7578116 () Bool)

(declare-fun tp!2208172 () Bool)

(declare-fun tp!2208171 () Bool)

(assert (=> b!7578116 (= e!4510775 (and tp!2208172 tp!2208171))))

(declare-fun b!7578118 () Bool)

(declare-fun tp!2208175 () Bool)

(assert (=> b!7578118 (= e!4510775 tp!2208175)))

(declare-fun b!7578115 () Bool)

(assert (=> b!7578115 (= e!4510775 tp_is_empty!50493)))

(declare-fun b!7578120 () Bool)

(declare-fun tp!2208177 () Bool)

(declare-fun tp!2208179 () Bool)

(assert (=> b!7578120 (= e!4510775 (and tp!2208177 tp!2208179))))

(assert (= (and b!7577920 ((_ is ElementMatch!20069) (regTwo!40651 r!22341))) b!7578115))

(assert (= (and b!7577920 ((_ is Concat!28914) (regTwo!40651 r!22341))) b!7578116))

(assert (= (and b!7577920 ((_ is Star!20069) (regTwo!40651 r!22341))) b!7578118))

(assert (= (and b!7577920 ((_ is Union!20069) (regTwo!40651 r!22341))) b!7578120))

(declare-fun e!4510777 () Bool)

(assert (=> b!7577919 (= tp!2208116 e!4510777)))

(declare-fun b!7578124 () Bool)

(declare-fun tp!2208182 () Bool)

(declare-fun tp!2208181 () Bool)

(assert (=> b!7578124 (= e!4510777 (and tp!2208182 tp!2208181))))

(declare-fun b!7578125 () Bool)

(declare-fun tp!2208183 () Bool)

(assert (=> b!7578125 (= e!4510777 tp!2208183)))

(declare-fun b!7578123 () Bool)

(assert (=> b!7578123 (= e!4510777 tp_is_empty!50493)))

(declare-fun b!7578126 () Bool)

(declare-fun tp!2208184 () Bool)

(declare-fun tp!2208185 () Bool)

(assert (=> b!7578126 (= e!4510777 (and tp!2208184 tp!2208185))))

(assert (= (and b!7577919 ((_ is ElementMatch!20069) (regOne!40650 r!22341))) b!7578123))

(assert (= (and b!7577919 ((_ is Concat!28914) (regOne!40650 r!22341))) b!7578124))

(assert (= (and b!7577919 ((_ is Star!20069) (regOne!40650 r!22341))) b!7578125))

(assert (= (and b!7577919 ((_ is Union!20069) (regOne!40650 r!22341))) b!7578126))

(declare-fun e!4510778 () Bool)

(assert (=> b!7577919 (= tp!2208117 e!4510778)))

(declare-fun b!7578128 () Bool)

(declare-fun tp!2208187 () Bool)

(declare-fun tp!2208186 () Bool)

(assert (=> b!7578128 (= e!4510778 (and tp!2208187 tp!2208186))))

(declare-fun b!7578129 () Bool)

(declare-fun tp!2208188 () Bool)

(assert (=> b!7578129 (= e!4510778 tp!2208188)))

(declare-fun b!7578127 () Bool)

(assert (=> b!7578127 (= e!4510778 tp_is_empty!50493)))

(declare-fun b!7578130 () Bool)

(declare-fun tp!2208189 () Bool)

(declare-fun tp!2208190 () Bool)

(assert (=> b!7578130 (= e!4510778 (and tp!2208189 tp!2208190))))

(assert (= (and b!7577919 ((_ is ElementMatch!20069) (regTwo!40650 r!22341))) b!7578127))

(assert (= (and b!7577919 ((_ is Concat!28914) (regTwo!40650 r!22341))) b!7578128))

(assert (= (and b!7577919 ((_ is Star!20069) (regTwo!40650 r!22341))) b!7578129))

(assert (= (and b!7577919 ((_ is Union!20069) (regTwo!40650 r!22341))) b!7578130))

(declare-fun b!7578135 () Bool)

(declare-fun e!4510781 () Bool)

(declare-fun tp!2208193 () Bool)

(assert (=> b!7578135 (= e!4510781 (and tp_is_empty!50493 tp!2208193))))

(assert (=> b!7577923 (= tp!2208115 e!4510781)))

(assert (= (and b!7577923 ((_ is Cons!72828) (t!387687 s!13436))) b!7578135))

(check-sat (not b!7578062) (not b!7578055) (not bm!694663) (not b!7577977) (not b!7578129) (not bm!694669) (not b!7578060) (not d!2318138) (not b!7578108) (not d!2318132) (not d!2318148) (not b!7578125) (not b!7578057) (not b!7578054) (not b!7578135) (not b!7578128) (not b!7578109) (not b!7578130) (not b!7578120) (not b!7578118) (not b!7578102) (not b!7578059) (not b!7578116) (not b!7578126) (not b!7578110) (not b!7578100) (not b!7578124) (not bm!694662) (not b!7578101) tp_is_empty!50493 (not d!2318150))
(check-sat)

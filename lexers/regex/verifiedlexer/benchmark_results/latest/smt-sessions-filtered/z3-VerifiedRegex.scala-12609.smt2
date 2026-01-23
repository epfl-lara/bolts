; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!698558 () Bool)

(assert start!698558)

(declare-datatypes ((C!36928 0))(
  ( (C!36929 (val!28412 Int)) )
))
(declare-datatypes ((Regex!18327 0))(
  ( (ElementMatch!18327 (c!1335349 C!36928)) (Concat!27172 (regOne!37166 Regex!18327) (regTwo!37166 Regex!18327)) (EmptyExpr!18327) (Star!18327 (reg!18656 Regex!18327)) (EmptyLang!18327) (Union!18327 (regOne!37167 Regex!18327) (regTwo!37167 Regex!18327)) )
))
(declare-datatypes ((List!69720 0))(
  ( (Nil!69596) (Cons!69596 (h!76044 Regex!18327) (t!383739 List!69720)) )
))
(declare-datatypes ((Context!14558 0))(
  ( (Context!14559 (exprs!7779 List!69720)) )
))
(declare-fun setElem!52949 () Context!14558)

(declare-fun setRes!52949 () Bool)

(declare-fun setNonEmpty!52949 () Bool)

(declare-fun tp!1985283 () Bool)

(declare-fun e!4305615 () Bool)

(declare-fun inv!88839 (Context!14558) Bool)

(assert (=> setNonEmpty!52949 (= setRes!52949 (and tp!1985283 (inv!88839 setElem!52949) e!4305615))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun z!3530 () (InoxSet Context!14558))

(declare-fun setRest!52949 () (InoxSet Context!14558))

(assert (=> setNonEmpty!52949 (= z!3530 ((_ map or) (store ((as const (Array Context!14558 Bool)) false) setElem!52949 true) setRest!52949))))

(declare-fun b!7168049 () Bool)

(declare-fun res!2921285 () Bool)

(declare-fun e!4305616 () Bool)

(assert (=> b!7168049 (=> (not res!2921285) (not e!4305616))))

(declare-fun focus!402 (Regex!18327) (InoxSet Context!14558))

(assert (=> b!7168049 (= res!2921285 (not (= z!3530 (focus!402 EmptyExpr!18327))))))

(declare-fun b!7168050 () Bool)

(assert (=> b!7168050 (= e!4305616 (not (= z!3530 (store ((as const (Array Context!14558 Bool)) false) (Context!14559 Nil!69596) true))))))

(declare-fun res!2921284 () Bool)

(assert (=> start!698558 (=> (not res!2921284) (not e!4305616))))

(declare-datatypes ((List!69721 0))(
  ( (Nil!69597) (Cons!69597 (h!76045 Context!14558) (t!383740 List!69721)) )
))
(declare-fun unfocusZipper!2587 (List!69721) Regex!18327)

(declare-fun toList!11270 ((InoxSet Context!14558)) List!69721)

(assert (=> start!698558 (= res!2921284 (= (unfocusZipper!2587 (toList!11270 z!3530)) EmptyExpr!18327))))

(assert (=> start!698558 e!4305616))

(declare-fun condSetEmpty!52949 () Bool)

(assert (=> start!698558 (= condSetEmpty!52949 (= z!3530 ((as const (Array Context!14558 Bool)) false)))))

(assert (=> start!698558 setRes!52949))

(declare-fun setIsEmpty!52949 () Bool)

(assert (=> setIsEmpty!52949 setRes!52949))

(declare-fun b!7168051 () Bool)

(declare-fun tp!1985282 () Bool)

(assert (=> b!7168051 (= e!4305615 tp!1985282)))

(assert (= (and start!698558 res!2921284) b!7168049))

(assert (= (and b!7168049 res!2921285) b!7168050))

(assert (= (and start!698558 condSetEmpty!52949) setIsEmpty!52949))

(assert (= (and start!698558 (not condSetEmpty!52949)) setNonEmpty!52949))

(assert (= setNonEmpty!52949 b!7168051))

(declare-fun m!7870664 () Bool)

(assert (=> setNonEmpty!52949 m!7870664))

(declare-fun m!7870666 () Bool)

(assert (=> b!7168049 m!7870666))

(declare-fun m!7870668 () Bool)

(assert (=> start!698558 m!7870668))

(assert (=> start!698558 m!7870668))

(declare-fun m!7870670 () Bool)

(assert (=> start!698558 m!7870670))

(check-sat (not b!7168049) (not setNonEmpty!52949) (not start!698558) (not b!7168051))
(check-sat)
(get-model)

(declare-fun d!2232842 () Bool)

(declare-fun e!4305622 () Bool)

(assert (=> d!2232842 e!4305622))

(declare-fun res!2921293 () Bool)

(assert (=> d!2232842 (=> (not res!2921293) (not e!4305622))))

(declare-fun validRegex!9452 (Regex!18327) Bool)

(assert (=> d!2232842 (= res!2921293 (validRegex!9452 EmptyExpr!18327))))

(assert (=> d!2232842 (= (focus!402 EmptyExpr!18327) (store ((as const (Array Context!14558 Bool)) false) (Context!14559 (Cons!69596 EmptyExpr!18327 Nil!69596)) true))))

(declare-fun b!7168057 () Bool)

(assert (=> b!7168057 (= e!4305622 (= (unfocusZipper!2587 (toList!11270 (store ((as const (Array Context!14558 Bool)) false) (Context!14559 (Cons!69596 EmptyExpr!18327 Nil!69596)) true))) EmptyExpr!18327))))

(assert (= (and d!2232842 res!2921293) b!7168057))

(declare-fun m!7870680 () Bool)

(assert (=> d!2232842 m!7870680))

(declare-fun m!7870682 () Bool)

(assert (=> d!2232842 m!7870682))

(assert (=> b!7168057 m!7870682))

(assert (=> b!7168057 m!7870682))

(declare-fun m!7870684 () Bool)

(assert (=> b!7168057 m!7870684))

(assert (=> b!7168057 m!7870684))

(declare-fun m!7870686 () Bool)

(assert (=> b!7168057 m!7870686))

(assert (=> b!7168049 d!2232842))

(declare-fun d!2232846 () Bool)

(declare-fun lambda!437054 () Int)

(declare-fun forall!17157 (List!69720 Int) Bool)

(assert (=> d!2232846 (= (inv!88839 setElem!52949) (forall!17157 (exprs!7779 setElem!52949) lambda!437054))))

(declare-fun bs!1892617 () Bool)

(assert (= bs!1892617 d!2232846))

(declare-fun m!7870690 () Bool)

(assert (=> bs!1892617 m!7870690))

(assert (=> setNonEmpty!52949 d!2232846))

(declare-fun d!2232850 () Bool)

(declare-fun lt!2570202 () Regex!18327)

(assert (=> d!2232850 (validRegex!9452 lt!2570202)))

(declare-fun generalisedUnion!2755 (List!69720) Regex!18327)

(declare-fun unfocusZipperList!2311 (List!69721) List!69720)

(assert (=> d!2232850 (= lt!2570202 (generalisedUnion!2755 (unfocusZipperList!2311 (toList!11270 z!3530))))))

(assert (=> d!2232850 (= (unfocusZipper!2587 (toList!11270 z!3530)) lt!2570202)))

(declare-fun bs!1892619 () Bool)

(assert (= bs!1892619 d!2232850))

(declare-fun m!7870698 () Bool)

(assert (=> bs!1892619 m!7870698))

(assert (=> bs!1892619 m!7870668))

(declare-fun m!7870700 () Bool)

(assert (=> bs!1892619 m!7870700))

(assert (=> bs!1892619 m!7870700))

(declare-fun m!7870702 () Bool)

(assert (=> bs!1892619 m!7870702))

(assert (=> start!698558 d!2232850))

(declare-fun d!2232854 () Bool)

(declare-fun e!4305630 () Bool)

(assert (=> d!2232854 e!4305630))

(declare-fun res!2921299 () Bool)

(assert (=> d!2232854 (=> (not res!2921299) (not e!4305630))))

(declare-fun lt!2570208 () List!69721)

(declare-fun noDuplicate!2871 (List!69721) Bool)

(assert (=> d!2232854 (= res!2921299 (noDuplicate!2871 lt!2570208))))

(declare-fun choose!55357 ((InoxSet Context!14558)) List!69721)

(assert (=> d!2232854 (= lt!2570208 (choose!55357 z!3530))))

(assert (=> d!2232854 (= (toList!11270 z!3530) lt!2570208)))

(declare-fun b!7168067 () Bool)

(declare-fun content!14300 (List!69721) (InoxSet Context!14558))

(assert (=> b!7168067 (= e!4305630 (= (content!14300 lt!2570208) z!3530))))

(assert (= (and d!2232854 res!2921299) b!7168067))

(declare-fun m!7870710 () Bool)

(assert (=> d!2232854 m!7870710))

(declare-fun m!7870712 () Bool)

(assert (=> d!2232854 m!7870712))

(declare-fun m!7870714 () Bool)

(assert (=> b!7168067 m!7870714))

(assert (=> start!698558 d!2232854))

(declare-fun condSetEmpty!52955 () Bool)

(assert (=> setNonEmpty!52949 (= condSetEmpty!52955 (= setRest!52949 ((as const (Array Context!14558 Bool)) false)))))

(declare-fun setRes!52955 () Bool)

(assert (=> setNonEmpty!52949 (= tp!1985283 setRes!52955)))

(declare-fun setIsEmpty!52955 () Bool)

(assert (=> setIsEmpty!52955 setRes!52955))

(declare-fun setElem!52955 () Context!14558)

(declare-fun setNonEmpty!52955 () Bool)

(declare-fun e!4305637 () Bool)

(declare-fun tp!1985301 () Bool)

(assert (=> setNonEmpty!52955 (= setRes!52955 (and tp!1985301 (inv!88839 setElem!52955) e!4305637))))

(declare-fun setRest!52955 () (InoxSet Context!14558))

(assert (=> setNonEmpty!52955 (= setRest!52949 ((_ map or) (store ((as const (Array Context!14558 Bool)) false) setElem!52955 true) setRest!52955))))

(declare-fun b!7168078 () Bool)

(declare-fun tp!1985300 () Bool)

(assert (=> b!7168078 (= e!4305637 tp!1985300)))

(assert (= (and setNonEmpty!52949 condSetEmpty!52955) setIsEmpty!52955))

(assert (= (and setNonEmpty!52949 (not condSetEmpty!52955)) setNonEmpty!52955))

(assert (= setNonEmpty!52955 b!7168078))

(declare-fun m!7870718 () Bool)

(assert (=> setNonEmpty!52955 m!7870718))

(declare-fun b!7168083 () Bool)

(declare-fun e!4305640 () Bool)

(declare-fun tp!1985306 () Bool)

(declare-fun tp!1985307 () Bool)

(assert (=> b!7168083 (= e!4305640 (and tp!1985306 tp!1985307))))

(assert (=> b!7168051 (= tp!1985282 e!4305640)))

(get-info :version)

(assert (= (and b!7168051 ((_ is Cons!69596) (exprs!7779 setElem!52949))) b!7168083))

(check-sat (not b!7168057) (not b!7168067) (not b!7168083) (not setNonEmpty!52955) (not d!2232854) (not d!2232842) (not b!7168078) (not d!2232850) (not d!2232846))
(check-sat)
(get-model)

(declare-fun d!2232856 () Bool)

(assert (=> d!2232856 (= (validRegex!9452 EmptyExpr!18327) true)))

(assert (=> d!2232842 d!2232856))

(declare-fun bm!652996 () Bool)

(declare-fun call!653003 () Bool)

(declare-fun call!653002 () Bool)

(assert (=> bm!652996 (= call!653003 call!653002)))

(declare-fun b!7168120 () Bool)

(declare-fun e!4305670 () Bool)

(declare-fun call!653001 () Bool)

(assert (=> b!7168120 (= e!4305670 call!653001)))

(declare-fun b!7168121 () Bool)

(declare-fun res!2921323 () Bool)

(declare-fun e!4305673 () Bool)

(assert (=> b!7168121 (=> res!2921323 e!4305673)))

(assert (=> b!7168121 (= res!2921323 (not ((_ is Concat!27172) lt!2570202)))))

(declare-fun e!4305671 () Bool)

(assert (=> b!7168121 (= e!4305671 e!4305673)))

(declare-fun d!2232858 () Bool)

(declare-fun res!2921324 () Bool)

(declare-fun e!4305672 () Bool)

(assert (=> d!2232858 (=> res!2921324 e!4305672)))

(assert (=> d!2232858 (= res!2921324 ((_ is ElementMatch!18327) lt!2570202))))

(assert (=> d!2232858 (= (validRegex!9452 lt!2570202) e!4305672)))

(declare-fun b!7168122 () Bool)

(declare-fun e!4305675 () Bool)

(assert (=> b!7168122 (= e!4305675 call!653001)))

(declare-fun b!7168123 () Bool)

(assert (=> b!7168123 (= e!4305673 e!4305675)))

(declare-fun res!2921321 () Bool)

(assert (=> b!7168123 (=> (not res!2921321) (not e!4305675))))

(assert (=> b!7168123 (= res!2921321 call!653003)))

(declare-fun b!7168124 () Bool)

(declare-fun e!4305669 () Bool)

(assert (=> b!7168124 (= e!4305672 e!4305669)))

(declare-fun c!1335358 () Bool)

(assert (=> b!7168124 (= c!1335358 ((_ is Star!18327) lt!2570202))))

(declare-fun bm!652997 () Bool)

(declare-fun c!1335359 () Bool)

(assert (=> bm!652997 (= call!653002 (validRegex!9452 (ite c!1335358 (reg!18656 lt!2570202) (ite c!1335359 (regOne!37167 lt!2570202) (regOne!37166 lt!2570202)))))))

(declare-fun b!7168125 () Bool)

(declare-fun e!4305674 () Bool)

(assert (=> b!7168125 (= e!4305669 e!4305674)))

(declare-fun res!2921320 () Bool)

(declare-fun nullable!7762 (Regex!18327) Bool)

(assert (=> b!7168125 (= res!2921320 (not (nullable!7762 (reg!18656 lt!2570202))))))

(assert (=> b!7168125 (=> (not res!2921320) (not e!4305674))))

(declare-fun b!7168126 () Bool)

(declare-fun res!2921322 () Bool)

(assert (=> b!7168126 (=> (not res!2921322) (not e!4305670))))

(assert (=> b!7168126 (= res!2921322 call!653003)))

(assert (=> b!7168126 (= e!4305671 e!4305670)))

(declare-fun b!7168127 () Bool)

(assert (=> b!7168127 (= e!4305674 call!653002)))

(declare-fun b!7168128 () Bool)

(assert (=> b!7168128 (= e!4305669 e!4305671)))

(assert (=> b!7168128 (= c!1335359 ((_ is Union!18327) lt!2570202))))

(declare-fun bm!652998 () Bool)

(assert (=> bm!652998 (= call!653001 (validRegex!9452 (ite c!1335359 (regTwo!37167 lt!2570202) (regTwo!37166 lt!2570202))))))

(assert (= (and d!2232858 (not res!2921324)) b!7168124))

(assert (= (and b!7168124 c!1335358) b!7168125))

(assert (= (and b!7168124 (not c!1335358)) b!7168128))

(assert (= (and b!7168125 res!2921320) b!7168127))

(assert (= (and b!7168128 c!1335359) b!7168126))

(assert (= (and b!7168128 (not c!1335359)) b!7168121))

(assert (= (and b!7168126 res!2921322) b!7168120))

(assert (= (and b!7168121 (not res!2921323)) b!7168123))

(assert (= (and b!7168123 res!2921321) b!7168122))

(assert (= (or b!7168126 b!7168123) bm!652996))

(assert (= (or b!7168120 b!7168122) bm!652998))

(assert (= (or b!7168127 bm!652996) bm!652997))

(declare-fun m!7870722 () Bool)

(assert (=> bm!652997 m!7870722))

(declare-fun m!7870724 () Bool)

(assert (=> b!7168125 m!7870724))

(declare-fun m!7870726 () Bool)

(assert (=> bm!652998 m!7870726))

(assert (=> d!2232850 d!2232858))

(declare-fun bs!1892622 () Bool)

(declare-fun d!2232864 () Bool)

(assert (= bs!1892622 (and d!2232864 d!2232846)))

(declare-fun lambda!437060 () Int)

(assert (=> bs!1892622 (= lambda!437060 lambda!437054)))

(declare-fun b!7168178 () Bool)

(declare-fun e!4305709 () Bool)

(declare-fun isEmpty!40186 (List!69720) Bool)

(assert (=> b!7168178 (= e!4305709 (isEmpty!40186 (t!383739 (unfocusZipperList!2311 (toList!11270 z!3530)))))))

(declare-fun b!7168179 () Bool)

(declare-fun e!4305712 () Bool)

(declare-fun e!4305707 () Bool)

(assert (=> b!7168179 (= e!4305712 e!4305707)))

(declare-fun c!1335380 () Bool)

(assert (=> b!7168179 (= c!1335380 (isEmpty!40186 (unfocusZipperList!2311 (toList!11270 z!3530))))))

(declare-fun b!7168180 () Bool)

(declare-fun e!4305708 () Bool)

(declare-fun lt!2570213 () Regex!18327)

(declare-fun head!14630 (List!69720) Regex!18327)

(assert (=> b!7168180 (= e!4305708 (= lt!2570213 (head!14630 (unfocusZipperList!2311 (toList!11270 z!3530)))))))

(declare-fun b!7168181 () Bool)

(declare-fun e!4305710 () Regex!18327)

(assert (=> b!7168181 (= e!4305710 EmptyLang!18327)))

(declare-fun b!7168182 () Bool)

(assert (=> b!7168182 (= e!4305710 (Union!18327 (h!76044 (unfocusZipperList!2311 (toList!11270 z!3530))) (generalisedUnion!2755 (t!383739 (unfocusZipperList!2311 (toList!11270 z!3530))))))))

(declare-fun b!7168183 () Bool)

(declare-fun e!4305711 () Regex!18327)

(assert (=> b!7168183 (= e!4305711 (h!76044 (unfocusZipperList!2311 (toList!11270 z!3530))))))

(declare-fun b!7168184 () Bool)

(declare-fun isEmptyLang!2140 (Regex!18327) Bool)

(assert (=> b!7168184 (= e!4305707 (isEmptyLang!2140 lt!2570213))))

(declare-fun b!7168185 () Bool)

(declare-fun isUnion!1568 (Regex!18327) Bool)

(assert (=> b!7168185 (= e!4305708 (isUnion!1568 lt!2570213))))

(assert (=> d!2232864 e!4305712))

(declare-fun res!2921339 () Bool)

(assert (=> d!2232864 (=> (not res!2921339) (not e!4305712))))

(assert (=> d!2232864 (= res!2921339 (validRegex!9452 lt!2570213))))

(assert (=> d!2232864 (= lt!2570213 e!4305711)))

(declare-fun c!1335381 () Bool)

(assert (=> d!2232864 (= c!1335381 e!4305709)))

(declare-fun res!2921338 () Bool)

(assert (=> d!2232864 (=> (not res!2921338) (not e!4305709))))

(assert (=> d!2232864 (= res!2921338 ((_ is Cons!69596) (unfocusZipperList!2311 (toList!11270 z!3530))))))

(assert (=> d!2232864 (forall!17157 (unfocusZipperList!2311 (toList!11270 z!3530)) lambda!437060)))

(assert (=> d!2232864 (= (generalisedUnion!2755 (unfocusZipperList!2311 (toList!11270 z!3530))) lt!2570213)))

(declare-fun b!7168186 () Bool)

(assert (=> b!7168186 (= e!4305707 e!4305708)))

(declare-fun c!1335379 () Bool)

(declare-fun tail!14056 (List!69720) List!69720)

(assert (=> b!7168186 (= c!1335379 (isEmpty!40186 (tail!14056 (unfocusZipperList!2311 (toList!11270 z!3530)))))))

(declare-fun b!7168187 () Bool)

(assert (=> b!7168187 (= e!4305711 e!4305710)))

(declare-fun c!1335378 () Bool)

(assert (=> b!7168187 (= c!1335378 ((_ is Cons!69596) (unfocusZipperList!2311 (toList!11270 z!3530))))))

(assert (= (and d!2232864 res!2921338) b!7168178))

(assert (= (and d!2232864 c!1335381) b!7168183))

(assert (= (and d!2232864 (not c!1335381)) b!7168187))

(assert (= (and b!7168187 c!1335378) b!7168182))

(assert (= (and b!7168187 (not c!1335378)) b!7168181))

(assert (= (and d!2232864 res!2921339) b!7168179))

(assert (= (and b!7168179 c!1335380) b!7168184))

(assert (= (and b!7168179 (not c!1335380)) b!7168186))

(assert (= (and b!7168186 c!1335379) b!7168180))

(assert (= (and b!7168186 (not c!1335379)) b!7168185))

(declare-fun m!7870734 () Bool)

(assert (=> b!7168182 m!7870734))

(declare-fun m!7870736 () Bool)

(assert (=> b!7168185 m!7870736))

(declare-fun m!7870738 () Bool)

(assert (=> d!2232864 m!7870738))

(assert (=> d!2232864 m!7870700))

(declare-fun m!7870740 () Bool)

(assert (=> d!2232864 m!7870740))

(assert (=> b!7168180 m!7870700))

(declare-fun m!7870742 () Bool)

(assert (=> b!7168180 m!7870742))

(assert (=> b!7168186 m!7870700))

(declare-fun m!7870744 () Bool)

(assert (=> b!7168186 m!7870744))

(assert (=> b!7168186 m!7870744))

(declare-fun m!7870746 () Bool)

(assert (=> b!7168186 m!7870746))

(declare-fun m!7870748 () Bool)

(assert (=> b!7168184 m!7870748))

(declare-fun m!7870750 () Bool)

(assert (=> b!7168178 m!7870750))

(assert (=> b!7168179 m!7870700))

(declare-fun m!7870752 () Bool)

(assert (=> b!7168179 m!7870752))

(assert (=> d!2232850 d!2232864))

(declare-fun bs!1892625 () Bool)

(declare-fun d!2232868 () Bool)

(assert (= bs!1892625 (and d!2232868 d!2232846)))

(declare-fun lambda!437066 () Int)

(assert (=> bs!1892625 (= lambda!437066 lambda!437054)))

(declare-fun bs!1892626 () Bool)

(assert (= bs!1892626 (and d!2232868 d!2232864)))

(assert (=> bs!1892626 (= lambda!437066 lambda!437060)))

(declare-fun lt!2570219 () List!69720)

(assert (=> d!2232868 (forall!17157 lt!2570219 lambda!437066)))

(declare-fun e!4305723 () List!69720)

(assert (=> d!2232868 (= lt!2570219 e!4305723)))

(declare-fun c!1335390 () Bool)

(assert (=> d!2232868 (= c!1335390 ((_ is Cons!69597) (toList!11270 z!3530)))))

(assert (=> d!2232868 (= (unfocusZipperList!2311 (toList!11270 z!3530)) lt!2570219)))

(declare-fun b!7168206 () Bool)

(declare-fun generalisedConcat!2451 (List!69720) Regex!18327)

(assert (=> b!7168206 (= e!4305723 (Cons!69596 (generalisedConcat!2451 (exprs!7779 (h!76045 (toList!11270 z!3530)))) (unfocusZipperList!2311 (t!383740 (toList!11270 z!3530)))))))

(declare-fun b!7168207 () Bool)

(assert (=> b!7168207 (= e!4305723 Nil!69596)))

(assert (= (and d!2232868 c!1335390) b!7168206))

(assert (= (and d!2232868 (not c!1335390)) b!7168207))

(declare-fun m!7870774 () Bool)

(assert (=> d!2232868 m!7870774))

(declare-fun m!7870776 () Bool)

(assert (=> b!7168206 m!7870776))

(declare-fun m!7870778 () Bool)

(assert (=> b!7168206 m!7870778))

(assert (=> d!2232850 d!2232868))

(declare-fun d!2232872 () Bool)

(declare-fun lt!2570221 () Regex!18327)

(assert (=> d!2232872 (validRegex!9452 lt!2570221)))

(assert (=> d!2232872 (= lt!2570221 (generalisedUnion!2755 (unfocusZipperList!2311 (toList!11270 (store ((as const (Array Context!14558 Bool)) false) (Context!14559 (Cons!69596 EmptyExpr!18327 Nil!69596)) true)))))))

(assert (=> d!2232872 (= (unfocusZipper!2587 (toList!11270 (store ((as const (Array Context!14558 Bool)) false) (Context!14559 (Cons!69596 EmptyExpr!18327 Nil!69596)) true))) lt!2570221)))

(declare-fun bs!1892630 () Bool)

(assert (= bs!1892630 d!2232872))

(declare-fun m!7870786 () Bool)

(assert (=> bs!1892630 m!7870786))

(assert (=> bs!1892630 m!7870684))

(declare-fun m!7870788 () Bool)

(assert (=> bs!1892630 m!7870788))

(assert (=> bs!1892630 m!7870788))

(declare-fun m!7870790 () Bool)

(assert (=> bs!1892630 m!7870790))

(assert (=> b!7168057 d!2232872))

(declare-fun d!2232876 () Bool)

(declare-fun e!4305731 () Bool)

(assert (=> d!2232876 e!4305731))

(declare-fun res!2921348 () Bool)

(assert (=> d!2232876 (=> (not res!2921348) (not e!4305731))))

(declare-fun lt!2570222 () List!69721)

(assert (=> d!2232876 (= res!2921348 (noDuplicate!2871 lt!2570222))))

(assert (=> d!2232876 (= lt!2570222 (choose!55357 (store ((as const (Array Context!14558 Bool)) false) (Context!14559 (Cons!69596 EmptyExpr!18327 Nil!69596)) true)))))

(assert (=> d!2232876 (= (toList!11270 (store ((as const (Array Context!14558 Bool)) false) (Context!14559 (Cons!69596 EmptyExpr!18327 Nil!69596)) true)) lt!2570222)))

(declare-fun b!7168216 () Bool)

(assert (=> b!7168216 (= e!4305731 (= (content!14300 lt!2570222) (store ((as const (Array Context!14558 Bool)) false) (Context!14559 (Cons!69596 EmptyExpr!18327 Nil!69596)) true)))))

(assert (= (and d!2232876 res!2921348) b!7168216))

(declare-fun m!7870796 () Bool)

(assert (=> d!2232876 m!7870796))

(assert (=> d!2232876 m!7870682))

(declare-fun m!7870798 () Bool)

(assert (=> d!2232876 m!7870798))

(declare-fun m!7870800 () Bool)

(assert (=> b!7168216 m!7870800))

(assert (=> b!7168057 d!2232876))

(declare-fun d!2232880 () Bool)

(declare-fun res!2921359 () Bool)

(declare-fun e!4305745 () Bool)

(assert (=> d!2232880 (=> res!2921359 e!4305745)))

(assert (=> d!2232880 (= res!2921359 ((_ is Nil!69597) lt!2570208))))

(assert (=> d!2232880 (= (noDuplicate!2871 lt!2570208) e!4305745)))

(declare-fun b!7168230 () Bool)

(declare-fun e!4305746 () Bool)

(assert (=> b!7168230 (= e!4305745 e!4305746)))

(declare-fun res!2921360 () Bool)

(assert (=> b!7168230 (=> (not res!2921360) (not e!4305746))))

(declare-fun contains!20709 (List!69721 Context!14558) Bool)

(assert (=> b!7168230 (= res!2921360 (not (contains!20709 (t!383740 lt!2570208) (h!76045 lt!2570208))))))

(declare-fun b!7168231 () Bool)

(assert (=> b!7168231 (= e!4305746 (noDuplicate!2871 (t!383740 lt!2570208)))))

(assert (= (and d!2232880 (not res!2921359)) b!7168230))

(assert (= (and b!7168230 res!2921360) b!7168231))

(declare-fun m!7870808 () Bool)

(assert (=> b!7168230 m!7870808))

(declare-fun m!7870810 () Bool)

(assert (=> b!7168231 m!7870810))

(assert (=> d!2232854 d!2232880))

(declare-fun d!2232884 () Bool)

(declare-fun e!4305757 () Bool)

(assert (=> d!2232884 e!4305757))

(declare-fun res!2921366 () Bool)

(assert (=> d!2232884 (=> (not res!2921366) (not e!4305757))))

(declare-fun res!2921365 () List!69721)

(assert (=> d!2232884 (= res!2921366 (noDuplicate!2871 res!2921365))))

(declare-fun e!4305756 () Bool)

(assert (=> d!2232884 e!4305756))

(assert (=> d!2232884 (= (choose!55357 z!3530) res!2921365)))

(declare-fun b!7168245 () Bool)

(declare-fun e!4305758 () Bool)

(declare-fun tp!1985319 () Bool)

(assert (=> b!7168245 (= e!4305758 tp!1985319)))

(declare-fun b!7168244 () Bool)

(declare-fun tp!1985318 () Bool)

(assert (=> b!7168244 (= e!4305756 (and (inv!88839 (h!76045 res!2921365)) e!4305758 tp!1985318))))

(declare-fun b!7168246 () Bool)

(assert (=> b!7168246 (= e!4305757 (= (content!14300 res!2921365) z!3530))))

(assert (= b!7168244 b!7168245))

(assert (= (and d!2232884 ((_ is Cons!69597) res!2921365)) b!7168244))

(assert (= (and d!2232884 res!2921366) b!7168246))

(declare-fun m!7870816 () Bool)

(assert (=> d!2232884 m!7870816))

(declare-fun m!7870818 () Bool)

(assert (=> b!7168244 m!7870818))

(declare-fun m!7870820 () Bool)

(assert (=> b!7168246 m!7870820))

(assert (=> d!2232854 d!2232884))

(declare-fun bs!1892631 () Bool)

(declare-fun d!2232890 () Bool)

(assert (= bs!1892631 (and d!2232890 d!2232846)))

(declare-fun lambda!437068 () Int)

(assert (=> bs!1892631 (= lambda!437068 lambda!437054)))

(declare-fun bs!1892632 () Bool)

(assert (= bs!1892632 (and d!2232890 d!2232864)))

(assert (=> bs!1892632 (= lambda!437068 lambda!437060)))

(declare-fun bs!1892633 () Bool)

(assert (= bs!1892633 (and d!2232890 d!2232868)))

(assert (=> bs!1892633 (= lambda!437068 lambda!437066)))

(assert (=> d!2232890 (= (inv!88839 setElem!52955) (forall!17157 (exprs!7779 setElem!52955) lambda!437068))))

(declare-fun bs!1892634 () Bool)

(assert (= bs!1892634 d!2232890))

(declare-fun m!7870822 () Bool)

(assert (=> bs!1892634 m!7870822))

(assert (=> setNonEmpty!52955 d!2232890))

(declare-fun d!2232892 () Bool)

(declare-fun res!2921377 () Bool)

(declare-fun e!4305769 () Bool)

(assert (=> d!2232892 (=> res!2921377 e!4305769)))

(assert (=> d!2232892 (= res!2921377 ((_ is Nil!69596) (exprs!7779 setElem!52949)))))

(assert (=> d!2232892 (= (forall!17157 (exprs!7779 setElem!52949) lambda!437054) e!4305769)))

(declare-fun b!7168257 () Bool)

(declare-fun e!4305770 () Bool)

(assert (=> b!7168257 (= e!4305769 e!4305770)))

(declare-fun res!2921378 () Bool)

(assert (=> b!7168257 (=> (not res!2921378) (not e!4305770))))

(declare-fun dynLambda!28343 (Int Regex!18327) Bool)

(assert (=> b!7168257 (= res!2921378 (dynLambda!28343 lambda!437054 (h!76044 (exprs!7779 setElem!52949))))))

(declare-fun b!7168258 () Bool)

(assert (=> b!7168258 (= e!4305770 (forall!17157 (t!383739 (exprs!7779 setElem!52949)) lambda!437054))))

(assert (= (and d!2232892 (not res!2921377)) b!7168257))

(assert (= (and b!7168257 res!2921378) b!7168258))

(declare-fun b_lambda!273953 () Bool)

(assert (=> (not b_lambda!273953) (not b!7168257)))

(declare-fun m!7870828 () Bool)

(assert (=> b!7168257 m!7870828))

(declare-fun m!7870830 () Bool)

(assert (=> b!7168258 m!7870830))

(assert (=> d!2232846 d!2232892))

(declare-fun d!2232896 () Bool)

(declare-fun c!1335397 () Bool)

(assert (=> d!2232896 (= c!1335397 ((_ is Nil!69597) lt!2570208))))

(declare-fun e!4305773 () (InoxSet Context!14558))

(assert (=> d!2232896 (= (content!14300 lt!2570208) e!4305773)))

(declare-fun b!7168263 () Bool)

(assert (=> b!7168263 (= e!4305773 ((as const (Array Context!14558 Bool)) false))))

(declare-fun b!7168264 () Bool)

(assert (=> b!7168264 (= e!4305773 ((_ map or) (store ((as const (Array Context!14558 Bool)) false) (h!76045 lt!2570208) true) (content!14300 (t!383740 lt!2570208))))))

(assert (= (and d!2232896 c!1335397) b!7168263))

(assert (= (and d!2232896 (not c!1335397)) b!7168264))

(declare-fun m!7870838 () Bool)

(assert (=> b!7168264 m!7870838))

(declare-fun m!7870840 () Bool)

(assert (=> b!7168264 m!7870840))

(assert (=> b!7168067 d!2232896))

(declare-fun b!7168279 () Bool)

(declare-fun e!4305777 () Bool)

(declare-fun tp!1985330 () Bool)

(declare-fun tp!1985331 () Bool)

(assert (=> b!7168279 (= e!4305777 (and tp!1985330 tp!1985331))))

(declare-fun b!7168278 () Bool)

(declare-fun tp!1985332 () Bool)

(assert (=> b!7168278 (= e!4305777 tp!1985332)))

(assert (=> b!7168083 (= tp!1985306 e!4305777)))

(declare-fun b!7168277 () Bool)

(declare-fun tp!1985334 () Bool)

(declare-fun tp!1985333 () Bool)

(assert (=> b!7168277 (= e!4305777 (and tp!1985334 tp!1985333))))

(declare-fun b!7168276 () Bool)

(declare-fun tp_is_empty!46225 () Bool)

(assert (=> b!7168276 (= e!4305777 tp_is_empty!46225)))

(assert (= (and b!7168083 ((_ is ElementMatch!18327) (h!76044 (exprs!7779 setElem!52949)))) b!7168276))

(assert (= (and b!7168083 ((_ is Concat!27172) (h!76044 (exprs!7779 setElem!52949)))) b!7168277))

(assert (= (and b!7168083 ((_ is Star!18327) (h!76044 (exprs!7779 setElem!52949)))) b!7168278))

(assert (= (and b!7168083 ((_ is Union!18327) (h!76044 (exprs!7779 setElem!52949)))) b!7168279))

(declare-fun b!7168281 () Bool)

(declare-fun e!4305779 () Bool)

(declare-fun tp!1985337 () Bool)

(declare-fun tp!1985338 () Bool)

(assert (=> b!7168281 (= e!4305779 (and tp!1985337 tp!1985338))))

(assert (=> b!7168083 (= tp!1985307 e!4305779)))

(assert (= (and b!7168083 ((_ is Cons!69596) (t!383739 (exprs!7779 setElem!52949)))) b!7168281))

(declare-fun b!7168283 () Bool)

(declare-fun e!4305781 () Bool)

(declare-fun tp!1985341 () Bool)

(declare-fun tp!1985342 () Bool)

(assert (=> b!7168283 (= e!4305781 (and tp!1985341 tp!1985342))))

(assert (=> b!7168078 (= tp!1985300 e!4305781)))

(assert (= (and b!7168078 ((_ is Cons!69596) (exprs!7779 setElem!52955))) b!7168283))

(declare-fun condSetEmpty!52957 () Bool)

(assert (=> setNonEmpty!52955 (= condSetEmpty!52957 (= setRest!52955 ((as const (Array Context!14558 Bool)) false)))))

(declare-fun setRes!52957 () Bool)

(assert (=> setNonEmpty!52955 (= tp!1985301 setRes!52957)))

(declare-fun setIsEmpty!52957 () Bool)

(assert (=> setIsEmpty!52957 setRes!52957))

(declare-fun e!4305784 () Bool)

(declare-fun setNonEmpty!52957 () Bool)

(declare-fun tp!1985346 () Bool)

(declare-fun setElem!52957 () Context!14558)

(assert (=> setNonEmpty!52957 (= setRes!52957 (and tp!1985346 (inv!88839 setElem!52957) e!4305784))))

(declare-fun setRest!52957 () (InoxSet Context!14558))

(assert (=> setNonEmpty!52957 (= setRest!52955 ((_ map or) (store ((as const (Array Context!14558 Bool)) false) setElem!52957 true) setRest!52957))))

(declare-fun b!7168290 () Bool)

(declare-fun tp!1985345 () Bool)

(assert (=> b!7168290 (= e!4305784 tp!1985345)))

(assert (= (and setNonEmpty!52955 condSetEmpty!52957) setIsEmpty!52957))

(assert (= (and setNonEmpty!52955 (not condSetEmpty!52957)) setNonEmpty!52957))

(assert (= setNonEmpty!52957 b!7168290))

(declare-fun m!7870850 () Bool)

(assert (=> setNonEmpty!52957 m!7870850))

(declare-fun b_lambda!273955 () Bool)

(assert (= b_lambda!273953 (or d!2232846 b_lambda!273955)))

(declare-fun bs!1892636 () Bool)

(declare-fun d!2232900 () Bool)

(assert (= bs!1892636 (and d!2232900 d!2232846)))

(assert (=> bs!1892636 (= (dynLambda!28343 lambda!437054 (h!76044 (exprs!7779 setElem!52949))) (validRegex!9452 (h!76044 (exprs!7779 setElem!52949))))))

(declare-fun m!7870852 () Bool)

(assert (=> bs!1892636 m!7870852))

(assert (=> b!7168257 d!2232900))

(check-sat (not b!7168125) (not b!7168216) (not b!7168178) (not d!2232872) (not b!7168278) (not b!7168281) (not b!7168264) (not bm!652998) (not b!7168186) (not d!2232890) (not b!7168279) (not b!7168180) (not b!7168182) (not d!2232868) (not b!7168283) (not d!2232864) (not d!2232876) (not b!7168258) (not b!7168290) (not b!7168277) (not b_lambda!273955) (not b!7168206) (not b!7168246) (not b!7168184) (not b!7168179) tp_is_empty!46225 (not b!7168244) (not b!7168245) (not b!7168185) (not bm!652997) (not b!7168231) (not b!7168230) (not bs!1892636) (not d!2232884) (not setNonEmpty!52957))
(check-sat)
(get-model)

(declare-fun bs!1892638 () Bool)

(declare-fun d!2232904 () Bool)

(assert (= bs!1892638 (and d!2232904 d!2232846)))

(declare-fun lambda!437069 () Int)

(assert (=> bs!1892638 (= lambda!437069 lambda!437054)))

(declare-fun bs!1892639 () Bool)

(assert (= bs!1892639 (and d!2232904 d!2232864)))

(assert (=> bs!1892639 (= lambda!437069 lambda!437060)))

(declare-fun bs!1892640 () Bool)

(assert (= bs!1892640 (and d!2232904 d!2232868)))

(assert (=> bs!1892640 (= lambda!437069 lambda!437066)))

(declare-fun bs!1892641 () Bool)

(assert (= bs!1892641 (and d!2232904 d!2232890)))

(assert (=> bs!1892641 (= lambda!437069 lambda!437068)))

(assert (=> d!2232904 (= (inv!88839 setElem!52957) (forall!17157 (exprs!7779 setElem!52957) lambda!437069))))

(declare-fun bs!1892642 () Bool)

(assert (= bs!1892642 d!2232904))

(declare-fun m!7870856 () Bool)

(assert (=> bs!1892642 m!7870856))

(assert (=> setNonEmpty!52957 d!2232904))

(declare-fun bs!1892643 () Bool)

(declare-fun d!2232906 () Bool)

(assert (= bs!1892643 (and d!2232906 d!2232904)))

(declare-fun lambda!437070 () Int)

(assert (=> bs!1892643 (= lambda!437070 lambda!437069)))

(declare-fun bs!1892644 () Bool)

(assert (= bs!1892644 (and d!2232906 d!2232890)))

(assert (=> bs!1892644 (= lambda!437070 lambda!437068)))

(declare-fun bs!1892645 () Bool)

(assert (= bs!1892645 (and d!2232906 d!2232868)))

(assert (=> bs!1892645 (= lambda!437070 lambda!437066)))

(declare-fun bs!1892646 () Bool)

(assert (= bs!1892646 (and d!2232906 d!2232864)))

(assert (=> bs!1892646 (= lambda!437070 lambda!437060)))

(declare-fun bs!1892647 () Bool)

(assert (= bs!1892647 (and d!2232906 d!2232846)))

(assert (=> bs!1892647 (= lambda!437070 lambda!437054)))

(assert (=> d!2232906 (= (inv!88839 (h!76045 res!2921365)) (forall!17157 (exprs!7779 (h!76045 res!2921365)) lambda!437070))))

(declare-fun bs!1892648 () Bool)

(assert (= bs!1892648 d!2232906))

(declare-fun m!7870858 () Bool)

(assert (=> bs!1892648 m!7870858))

(assert (=> b!7168244 d!2232906))

(declare-fun bs!1892649 () Bool)

(declare-fun d!2232908 () Bool)

(assert (= bs!1892649 (and d!2232908 d!2232904)))

(declare-fun lambda!437071 () Int)

(assert (=> bs!1892649 (= lambda!437071 lambda!437069)))

(declare-fun bs!1892650 () Bool)

(assert (= bs!1892650 (and d!2232908 d!2232890)))

(assert (=> bs!1892650 (= lambda!437071 lambda!437068)))

(declare-fun bs!1892651 () Bool)

(assert (= bs!1892651 (and d!2232908 d!2232906)))

(assert (=> bs!1892651 (= lambda!437071 lambda!437070)))

(declare-fun bs!1892652 () Bool)

(assert (= bs!1892652 (and d!2232908 d!2232868)))

(assert (=> bs!1892652 (= lambda!437071 lambda!437066)))

(declare-fun bs!1892653 () Bool)

(assert (= bs!1892653 (and d!2232908 d!2232864)))

(assert (=> bs!1892653 (= lambda!437071 lambda!437060)))

(declare-fun bs!1892654 () Bool)

(assert (= bs!1892654 (and d!2232908 d!2232846)))

(assert (=> bs!1892654 (= lambda!437071 lambda!437054)))

(declare-fun b!7168300 () Bool)

(declare-fun e!4305789 () Bool)

(assert (=> b!7168300 (= e!4305789 (isEmpty!40186 (t!383739 (t!383739 (unfocusZipperList!2311 (toList!11270 z!3530))))))))

(declare-fun b!7168301 () Bool)

(declare-fun e!4305792 () Bool)

(declare-fun e!4305787 () Bool)

(assert (=> b!7168301 (= e!4305792 e!4305787)))

(declare-fun c!1335400 () Bool)

(assert (=> b!7168301 (= c!1335400 (isEmpty!40186 (t!383739 (unfocusZipperList!2311 (toList!11270 z!3530)))))))

(declare-fun b!7168302 () Bool)

(declare-fun e!4305788 () Bool)

(declare-fun lt!2570225 () Regex!18327)

(assert (=> b!7168302 (= e!4305788 (= lt!2570225 (head!14630 (t!383739 (unfocusZipperList!2311 (toList!11270 z!3530))))))))

(declare-fun b!7168303 () Bool)

(declare-fun e!4305790 () Regex!18327)

(assert (=> b!7168303 (= e!4305790 EmptyLang!18327)))

(declare-fun b!7168304 () Bool)

(assert (=> b!7168304 (= e!4305790 (Union!18327 (h!76044 (t!383739 (unfocusZipperList!2311 (toList!11270 z!3530)))) (generalisedUnion!2755 (t!383739 (t!383739 (unfocusZipperList!2311 (toList!11270 z!3530)))))))))

(declare-fun b!7168305 () Bool)

(declare-fun e!4305791 () Regex!18327)

(assert (=> b!7168305 (= e!4305791 (h!76044 (t!383739 (unfocusZipperList!2311 (toList!11270 z!3530)))))))

(declare-fun b!7168306 () Bool)

(assert (=> b!7168306 (= e!4305787 (isEmptyLang!2140 lt!2570225))))

(declare-fun b!7168307 () Bool)

(assert (=> b!7168307 (= e!4305788 (isUnion!1568 lt!2570225))))

(assert (=> d!2232908 e!4305792))

(declare-fun res!2921381 () Bool)

(assert (=> d!2232908 (=> (not res!2921381) (not e!4305792))))

(assert (=> d!2232908 (= res!2921381 (validRegex!9452 lt!2570225))))

(assert (=> d!2232908 (= lt!2570225 e!4305791)))

(declare-fun c!1335401 () Bool)

(assert (=> d!2232908 (= c!1335401 e!4305789)))

(declare-fun res!2921380 () Bool)

(assert (=> d!2232908 (=> (not res!2921380) (not e!4305789))))

(assert (=> d!2232908 (= res!2921380 ((_ is Cons!69596) (t!383739 (unfocusZipperList!2311 (toList!11270 z!3530)))))))

(assert (=> d!2232908 (forall!17157 (t!383739 (unfocusZipperList!2311 (toList!11270 z!3530))) lambda!437071)))

(assert (=> d!2232908 (= (generalisedUnion!2755 (t!383739 (unfocusZipperList!2311 (toList!11270 z!3530)))) lt!2570225)))

(declare-fun b!7168308 () Bool)

(assert (=> b!7168308 (= e!4305787 e!4305788)))

(declare-fun c!1335399 () Bool)

(assert (=> b!7168308 (= c!1335399 (isEmpty!40186 (tail!14056 (t!383739 (unfocusZipperList!2311 (toList!11270 z!3530))))))))

(declare-fun b!7168309 () Bool)

(assert (=> b!7168309 (= e!4305791 e!4305790)))

(declare-fun c!1335398 () Bool)

(assert (=> b!7168309 (= c!1335398 ((_ is Cons!69596) (t!383739 (unfocusZipperList!2311 (toList!11270 z!3530)))))))

(assert (= (and d!2232908 res!2921380) b!7168300))

(assert (= (and d!2232908 c!1335401) b!7168305))

(assert (= (and d!2232908 (not c!1335401)) b!7168309))

(assert (= (and b!7168309 c!1335398) b!7168304))

(assert (= (and b!7168309 (not c!1335398)) b!7168303))

(assert (= (and d!2232908 res!2921381) b!7168301))

(assert (= (and b!7168301 c!1335400) b!7168306))

(assert (= (and b!7168301 (not c!1335400)) b!7168308))

(assert (= (and b!7168308 c!1335399) b!7168302))

(assert (= (and b!7168308 (not c!1335399)) b!7168307))

(declare-fun m!7870860 () Bool)

(assert (=> b!7168304 m!7870860))

(declare-fun m!7870862 () Bool)

(assert (=> b!7168307 m!7870862))

(declare-fun m!7870864 () Bool)

(assert (=> d!2232908 m!7870864))

(declare-fun m!7870866 () Bool)

(assert (=> d!2232908 m!7870866))

(declare-fun m!7870868 () Bool)

(assert (=> b!7168302 m!7870868))

(declare-fun m!7870870 () Bool)

(assert (=> b!7168308 m!7870870))

(assert (=> b!7168308 m!7870870))

(declare-fun m!7870872 () Bool)

(assert (=> b!7168308 m!7870872))

(declare-fun m!7870874 () Bool)

(assert (=> b!7168306 m!7870874))

(declare-fun m!7870876 () Bool)

(assert (=> b!7168300 m!7870876))

(assert (=> b!7168301 m!7870750))

(assert (=> b!7168182 d!2232908))

(declare-fun bm!653002 () Bool)

(declare-fun call!653009 () Bool)

(declare-fun call!653008 () Bool)

(assert (=> bm!653002 (= call!653009 call!653008)))

(declare-fun b!7168310 () Bool)

(declare-fun e!4305794 () Bool)

(declare-fun call!653007 () Bool)

(assert (=> b!7168310 (= e!4305794 call!653007)))

(declare-fun b!7168311 () Bool)

(declare-fun res!2921385 () Bool)

(declare-fun e!4305797 () Bool)

(assert (=> b!7168311 (=> res!2921385 e!4305797)))

(assert (=> b!7168311 (= res!2921385 (not ((_ is Concat!27172) (h!76044 (exprs!7779 setElem!52949)))))))

(declare-fun e!4305795 () Bool)

(assert (=> b!7168311 (= e!4305795 e!4305797)))

(declare-fun d!2232910 () Bool)

(declare-fun res!2921386 () Bool)

(declare-fun e!4305796 () Bool)

(assert (=> d!2232910 (=> res!2921386 e!4305796)))

(assert (=> d!2232910 (= res!2921386 ((_ is ElementMatch!18327) (h!76044 (exprs!7779 setElem!52949))))))

(assert (=> d!2232910 (= (validRegex!9452 (h!76044 (exprs!7779 setElem!52949))) e!4305796)))

(declare-fun b!7168312 () Bool)

(declare-fun e!4305799 () Bool)

(assert (=> b!7168312 (= e!4305799 call!653007)))

(declare-fun b!7168313 () Bool)

(assert (=> b!7168313 (= e!4305797 e!4305799)))

(declare-fun res!2921383 () Bool)

(assert (=> b!7168313 (=> (not res!2921383) (not e!4305799))))

(assert (=> b!7168313 (= res!2921383 call!653009)))

(declare-fun b!7168314 () Bool)

(declare-fun e!4305793 () Bool)

(assert (=> b!7168314 (= e!4305796 e!4305793)))

(declare-fun c!1335402 () Bool)

(assert (=> b!7168314 (= c!1335402 ((_ is Star!18327) (h!76044 (exprs!7779 setElem!52949))))))

(declare-fun c!1335403 () Bool)

(declare-fun bm!653003 () Bool)

(assert (=> bm!653003 (= call!653008 (validRegex!9452 (ite c!1335402 (reg!18656 (h!76044 (exprs!7779 setElem!52949))) (ite c!1335403 (regOne!37167 (h!76044 (exprs!7779 setElem!52949))) (regOne!37166 (h!76044 (exprs!7779 setElem!52949)))))))))

(declare-fun b!7168315 () Bool)

(declare-fun e!4305798 () Bool)

(assert (=> b!7168315 (= e!4305793 e!4305798)))

(declare-fun res!2921382 () Bool)

(assert (=> b!7168315 (= res!2921382 (not (nullable!7762 (reg!18656 (h!76044 (exprs!7779 setElem!52949))))))))

(assert (=> b!7168315 (=> (not res!2921382) (not e!4305798))))

(declare-fun b!7168316 () Bool)

(declare-fun res!2921384 () Bool)

(assert (=> b!7168316 (=> (not res!2921384) (not e!4305794))))

(assert (=> b!7168316 (= res!2921384 call!653009)))

(assert (=> b!7168316 (= e!4305795 e!4305794)))

(declare-fun b!7168317 () Bool)

(assert (=> b!7168317 (= e!4305798 call!653008)))

(declare-fun b!7168318 () Bool)

(assert (=> b!7168318 (= e!4305793 e!4305795)))

(assert (=> b!7168318 (= c!1335403 ((_ is Union!18327) (h!76044 (exprs!7779 setElem!52949))))))

(declare-fun bm!653004 () Bool)

(assert (=> bm!653004 (= call!653007 (validRegex!9452 (ite c!1335403 (regTwo!37167 (h!76044 (exprs!7779 setElem!52949))) (regTwo!37166 (h!76044 (exprs!7779 setElem!52949))))))))

(assert (= (and d!2232910 (not res!2921386)) b!7168314))

(assert (= (and b!7168314 c!1335402) b!7168315))

(assert (= (and b!7168314 (not c!1335402)) b!7168318))

(assert (= (and b!7168315 res!2921382) b!7168317))

(assert (= (and b!7168318 c!1335403) b!7168316))

(assert (= (and b!7168318 (not c!1335403)) b!7168311))

(assert (= (and b!7168316 res!2921384) b!7168310))

(assert (= (and b!7168311 (not res!2921385)) b!7168313))

(assert (= (and b!7168313 res!2921383) b!7168312))

(assert (= (or b!7168316 b!7168313) bm!653002))

(assert (= (or b!7168310 b!7168312) bm!653004))

(assert (= (or b!7168317 bm!653002) bm!653003))

(declare-fun m!7870878 () Bool)

(assert (=> bm!653003 m!7870878))

(declare-fun m!7870880 () Bool)

(assert (=> b!7168315 m!7870880))

(declare-fun m!7870882 () Bool)

(assert (=> bm!653004 m!7870882))

(assert (=> bs!1892636 d!2232910))

(declare-fun bm!653005 () Bool)

(declare-fun call!653012 () Bool)

(declare-fun call!653011 () Bool)

(assert (=> bm!653005 (= call!653012 call!653011)))

(declare-fun b!7168319 () Bool)

(declare-fun e!4305801 () Bool)

(declare-fun call!653010 () Bool)

(assert (=> b!7168319 (= e!4305801 call!653010)))

(declare-fun b!7168320 () Bool)

(declare-fun res!2921390 () Bool)

(declare-fun e!4305804 () Bool)

(assert (=> b!7168320 (=> res!2921390 e!4305804)))

(assert (=> b!7168320 (= res!2921390 (not ((_ is Concat!27172) lt!2570221)))))

(declare-fun e!4305802 () Bool)

(assert (=> b!7168320 (= e!4305802 e!4305804)))

(declare-fun d!2232912 () Bool)

(declare-fun res!2921391 () Bool)

(declare-fun e!4305803 () Bool)

(assert (=> d!2232912 (=> res!2921391 e!4305803)))

(assert (=> d!2232912 (= res!2921391 ((_ is ElementMatch!18327) lt!2570221))))

(assert (=> d!2232912 (= (validRegex!9452 lt!2570221) e!4305803)))

(declare-fun b!7168321 () Bool)

(declare-fun e!4305806 () Bool)

(assert (=> b!7168321 (= e!4305806 call!653010)))

(declare-fun b!7168322 () Bool)

(assert (=> b!7168322 (= e!4305804 e!4305806)))

(declare-fun res!2921388 () Bool)

(assert (=> b!7168322 (=> (not res!2921388) (not e!4305806))))

(assert (=> b!7168322 (= res!2921388 call!653012)))

(declare-fun b!7168323 () Bool)

(declare-fun e!4305800 () Bool)

(assert (=> b!7168323 (= e!4305803 e!4305800)))

(declare-fun c!1335404 () Bool)

(assert (=> b!7168323 (= c!1335404 ((_ is Star!18327) lt!2570221))))

(declare-fun c!1335405 () Bool)

(declare-fun bm!653006 () Bool)

(assert (=> bm!653006 (= call!653011 (validRegex!9452 (ite c!1335404 (reg!18656 lt!2570221) (ite c!1335405 (regOne!37167 lt!2570221) (regOne!37166 lt!2570221)))))))

(declare-fun b!7168324 () Bool)

(declare-fun e!4305805 () Bool)

(assert (=> b!7168324 (= e!4305800 e!4305805)))

(declare-fun res!2921387 () Bool)

(assert (=> b!7168324 (= res!2921387 (not (nullable!7762 (reg!18656 lt!2570221))))))

(assert (=> b!7168324 (=> (not res!2921387) (not e!4305805))))

(declare-fun b!7168325 () Bool)

(declare-fun res!2921389 () Bool)

(assert (=> b!7168325 (=> (not res!2921389) (not e!4305801))))

(assert (=> b!7168325 (= res!2921389 call!653012)))

(assert (=> b!7168325 (= e!4305802 e!4305801)))

(declare-fun b!7168326 () Bool)

(assert (=> b!7168326 (= e!4305805 call!653011)))

(declare-fun b!7168327 () Bool)

(assert (=> b!7168327 (= e!4305800 e!4305802)))

(assert (=> b!7168327 (= c!1335405 ((_ is Union!18327) lt!2570221))))

(declare-fun bm!653007 () Bool)

(assert (=> bm!653007 (= call!653010 (validRegex!9452 (ite c!1335405 (regTwo!37167 lt!2570221) (regTwo!37166 lt!2570221))))))

(assert (= (and d!2232912 (not res!2921391)) b!7168323))

(assert (= (and b!7168323 c!1335404) b!7168324))

(assert (= (and b!7168323 (not c!1335404)) b!7168327))

(assert (= (and b!7168324 res!2921387) b!7168326))

(assert (= (and b!7168327 c!1335405) b!7168325))

(assert (= (and b!7168327 (not c!1335405)) b!7168320))

(assert (= (and b!7168325 res!2921389) b!7168319))

(assert (= (and b!7168320 (not res!2921390)) b!7168322))

(assert (= (and b!7168322 res!2921388) b!7168321))

(assert (= (or b!7168325 b!7168322) bm!653005))

(assert (= (or b!7168319 b!7168321) bm!653007))

(assert (= (or b!7168326 bm!653005) bm!653006))

(declare-fun m!7870884 () Bool)

(assert (=> bm!653006 m!7870884))

(declare-fun m!7870886 () Bool)

(assert (=> b!7168324 m!7870886))

(declare-fun m!7870888 () Bool)

(assert (=> bm!653007 m!7870888))

(assert (=> d!2232872 d!2232912))

(declare-fun bs!1892655 () Bool)

(declare-fun d!2232914 () Bool)

(assert (= bs!1892655 (and d!2232914 d!2232890)))

(declare-fun lambda!437072 () Int)

(assert (=> bs!1892655 (= lambda!437072 lambda!437068)))

(declare-fun bs!1892656 () Bool)

(assert (= bs!1892656 (and d!2232914 d!2232906)))

(assert (=> bs!1892656 (= lambda!437072 lambda!437070)))

(declare-fun bs!1892657 () Bool)

(assert (= bs!1892657 (and d!2232914 d!2232868)))

(assert (=> bs!1892657 (= lambda!437072 lambda!437066)))

(declare-fun bs!1892658 () Bool)

(assert (= bs!1892658 (and d!2232914 d!2232864)))

(assert (=> bs!1892658 (= lambda!437072 lambda!437060)))

(declare-fun bs!1892659 () Bool)

(assert (= bs!1892659 (and d!2232914 d!2232846)))

(assert (=> bs!1892659 (= lambda!437072 lambda!437054)))

(declare-fun bs!1892660 () Bool)

(assert (= bs!1892660 (and d!2232914 d!2232908)))

(assert (=> bs!1892660 (= lambda!437072 lambda!437071)))

(declare-fun bs!1892661 () Bool)

(assert (= bs!1892661 (and d!2232914 d!2232904)))

(assert (=> bs!1892661 (= lambda!437072 lambda!437069)))

(declare-fun b!7168328 () Bool)

(declare-fun e!4305809 () Bool)

(assert (=> b!7168328 (= e!4305809 (isEmpty!40186 (t!383739 (unfocusZipperList!2311 (toList!11270 (store ((as const (Array Context!14558 Bool)) false) (Context!14559 (Cons!69596 EmptyExpr!18327 Nil!69596)) true))))))))

(declare-fun b!7168329 () Bool)

(declare-fun e!4305812 () Bool)

(declare-fun e!4305807 () Bool)

(assert (=> b!7168329 (= e!4305812 e!4305807)))

(declare-fun c!1335408 () Bool)

(assert (=> b!7168329 (= c!1335408 (isEmpty!40186 (unfocusZipperList!2311 (toList!11270 (store ((as const (Array Context!14558 Bool)) false) (Context!14559 (Cons!69596 EmptyExpr!18327 Nil!69596)) true)))))))

(declare-fun b!7168330 () Bool)

(declare-fun e!4305808 () Bool)

(declare-fun lt!2570226 () Regex!18327)

(assert (=> b!7168330 (= e!4305808 (= lt!2570226 (head!14630 (unfocusZipperList!2311 (toList!11270 (store ((as const (Array Context!14558 Bool)) false) (Context!14559 (Cons!69596 EmptyExpr!18327 Nil!69596)) true))))))))

(declare-fun b!7168331 () Bool)

(declare-fun e!4305810 () Regex!18327)

(assert (=> b!7168331 (= e!4305810 EmptyLang!18327)))

(declare-fun b!7168332 () Bool)

(assert (=> b!7168332 (= e!4305810 (Union!18327 (h!76044 (unfocusZipperList!2311 (toList!11270 (store ((as const (Array Context!14558 Bool)) false) (Context!14559 (Cons!69596 EmptyExpr!18327 Nil!69596)) true)))) (generalisedUnion!2755 (t!383739 (unfocusZipperList!2311 (toList!11270 (store ((as const (Array Context!14558 Bool)) false) (Context!14559 (Cons!69596 EmptyExpr!18327 Nil!69596)) true)))))))))

(declare-fun b!7168333 () Bool)

(declare-fun e!4305811 () Regex!18327)

(assert (=> b!7168333 (= e!4305811 (h!76044 (unfocusZipperList!2311 (toList!11270 (store ((as const (Array Context!14558 Bool)) false) (Context!14559 (Cons!69596 EmptyExpr!18327 Nil!69596)) true)))))))

(declare-fun b!7168334 () Bool)

(assert (=> b!7168334 (= e!4305807 (isEmptyLang!2140 lt!2570226))))

(declare-fun b!7168335 () Bool)

(assert (=> b!7168335 (= e!4305808 (isUnion!1568 lt!2570226))))

(assert (=> d!2232914 e!4305812))

(declare-fun res!2921393 () Bool)

(assert (=> d!2232914 (=> (not res!2921393) (not e!4305812))))

(assert (=> d!2232914 (= res!2921393 (validRegex!9452 lt!2570226))))

(assert (=> d!2232914 (= lt!2570226 e!4305811)))

(declare-fun c!1335409 () Bool)

(assert (=> d!2232914 (= c!1335409 e!4305809)))

(declare-fun res!2921392 () Bool)

(assert (=> d!2232914 (=> (not res!2921392) (not e!4305809))))

(assert (=> d!2232914 (= res!2921392 ((_ is Cons!69596) (unfocusZipperList!2311 (toList!11270 (store ((as const (Array Context!14558 Bool)) false) (Context!14559 (Cons!69596 EmptyExpr!18327 Nil!69596)) true)))))))

(assert (=> d!2232914 (forall!17157 (unfocusZipperList!2311 (toList!11270 (store ((as const (Array Context!14558 Bool)) false) (Context!14559 (Cons!69596 EmptyExpr!18327 Nil!69596)) true))) lambda!437072)))

(assert (=> d!2232914 (= (generalisedUnion!2755 (unfocusZipperList!2311 (toList!11270 (store ((as const (Array Context!14558 Bool)) false) (Context!14559 (Cons!69596 EmptyExpr!18327 Nil!69596)) true)))) lt!2570226)))

(declare-fun b!7168336 () Bool)

(assert (=> b!7168336 (= e!4305807 e!4305808)))

(declare-fun c!1335407 () Bool)

(assert (=> b!7168336 (= c!1335407 (isEmpty!40186 (tail!14056 (unfocusZipperList!2311 (toList!11270 (store ((as const (Array Context!14558 Bool)) false) (Context!14559 (Cons!69596 EmptyExpr!18327 Nil!69596)) true))))))))

(declare-fun b!7168337 () Bool)

(assert (=> b!7168337 (= e!4305811 e!4305810)))

(declare-fun c!1335406 () Bool)

(assert (=> b!7168337 (= c!1335406 ((_ is Cons!69596) (unfocusZipperList!2311 (toList!11270 (store ((as const (Array Context!14558 Bool)) false) (Context!14559 (Cons!69596 EmptyExpr!18327 Nil!69596)) true)))))))

(assert (= (and d!2232914 res!2921392) b!7168328))

(assert (= (and d!2232914 c!1335409) b!7168333))

(assert (= (and d!2232914 (not c!1335409)) b!7168337))

(assert (= (and b!7168337 c!1335406) b!7168332))

(assert (= (and b!7168337 (not c!1335406)) b!7168331))

(assert (= (and d!2232914 res!2921393) b!7168329))

(assert (= (and b!7168329 c!1335408) b!7168334))

(assert (= (and b!7168329 (not c!1335408)) b!7168336))

(assert (= (and b!7168336 c!1335407) b!7168330))

(assert (= (and b!7168336 (not c!1335407)) b!7168335))

(declare-fun m!7870890 () Bool)

(assert (=> b!7168332 m!7870890))

(declare-fun m!7870892 () Bool)

(assert (=> b!7168335 m!7870892))

(declare-fun m!7870894 () Bool)

(assert (=> d!2232914 m!7870894))

(assert (=> d!2232914 m!7870788))

(declare-fun m!7870896 () Bool)

(assert (=> d!2232914 m!7870896))

(assert (=> b!7168330 m!7870788))

(declare-fun m!7870898 () Bool)

(assert (=> b!7168330 m!7870898))

(assert (=> b!7168336 m!7870788))

(declare-fun m!7870900 () Bool)

(assert (=> b!7168336 m!7870900))

(assert (=> b!7168336 m!7870900))

(declare-fun m!7870902 () Bool)

(assert (=> b!7168336 m!7870902))

(declare-fun m!7870904 () Bool)

(assert (=> b!7168334 m!7870904))

(declare-fun m!7870906 () Bool)

(assert (=> b!7168328 m!7870906))

(assert (=> b!7168329 m!7870788))

(declare-fun m!7870908 () Bool)

(assert (=> b!7168329 m!7870908))

(assert (=> d!2232872 d!2232914))

(declare-fun bs!1892662 () Bool)

(declare-fun d!2232916 () Bool)

(assert (= bs!1892662 (and d!2232916 d!2232890)))

(declare-fun lambda!437073 () Int)

(assert (=> bs!1892662 (= lambda!437073 lambda!437068)))

(declare-fun bs!1892663 () Bool)

(assert (= bs!1892663 (and d!2232916 d!2232906)))

(assert (=> bs!1892663 (= lambda!437073 lambda!437070)))

(declare-fun bs!1892664 () Bool)

(assert (= bs!1892664 (and d!2232916 d!2232868)))

(assert (=> bs!1892664 (= lambda!437073 lambda!437066)))

(declare-fun bs!1892665 () Bool)

(assert (= bs!1892665 (and d!2232916 d!2232864)))

(assert (=> bs!1892665 (= lambda!437073 lambda!437060)))

(declare-fun bs!1892666 () Bool)

(assert (= bs!1892666 (and d!2232916 d!2232914)))

(assert (=> bs!1892666 (= lambda!437073 lambda!437072)))

(declare-fun bs!1892667 () Bool)

(assert (= bs!1892667 (and d!2232916 d!2232846)))

(assert (=> bs!1892667 (= lambda!437073 lambda!437054)))

(declare-fun bs!1892668 () Bool)

(assert (= bs!1892668 (and d!2232916 d!2232908)))

(assert (=> bs!1892668 (= lambda!437073 lambda!437071)))

(declare-fun bs!1892669 () Bool)

(assert (= bs!1892669 (and d!2232916 d!2232904)))

(assert (=> bs!1892669 (= lambda!437073 lambda!437069)))

(declare-fun lt!2570227 () List!69720)

(assert (=> d!2232916 (forall!17157 lt!2570227 lambda!437073)))

(declare-fun e!4305813 () List!69720)

(assert (=> d!2232916 (= lt!2570227 e!4305813)))

(declare-fun c!1335410 () Bool)

(assert (=> d!2232916 (= c!1335410 ((_ is Cons!69597) (toList!11270 (store ((as const (Array Context!14558 Bool)) false) (Context!14559 (Cons!69596 EmptyExpr!18327 Nil!69596)) true))))))

(assert (=> d!2232916 (= (unfocusZipperList!2311 (toList!11270 (store ((as const (Array Context!14558 Bool)) false) (Context!14559 (Cons!69596 EmptyExpr!18327 Nil!69596)) true))) lt!2570227)))

(declare-fun b!7168338 () Bool)

(assert (=> b!7168338 (= e!4305813 (Cons!69596 (generalisedConcat!2451 (exprs!7779 (h!76045 (toList!11270 (store ((as const (Array Context!14558 Bool)) false) (Context!14559 (Cons!69596 EmptyExpr!18327 Nil!69596)) true))))) (unfocusZipperList!2311 (t!383740 (toList!11270 (store ((as const (Array Context!14558 Bool)) false) (Context!14559 (Cons!69596 EmptyExpr!18327 Nil!69596)) true))))))))

(declare-fun b!7168339 () Bool)

(assert (=> b!7168339 (= e!4305813 Nil!69596)))

(assert (= (and d!2232916 c!1335410) b!7168338))

(assert (= (and d!2232916 (not c!1335410)) b!7168339))

(declare-fun m!7870910 () Bool)

(assert (=> d!2232916 m!7870910))

(declare-fun m!7870912 () Bool)

(assert (=> b!7168338 m!7870912))

(declare-fun m!7870914 () Bool)

(assert (=> b!7168338 m!7870914))

(assert (=> d!2232872 d!2232916))

(declare-fun d!2232918 () Bool)

(declare-fun c!1335411 () Bool)

(assert (=> d!2232918 (= c!1335411 ((_ is Nil!69597) lt!2570222))))

(declare-fun e!4305814 () (InoxSet Context!14558))

(assert (=> d!2232918 (= (content!14300 lt!2570222) e!4305814)))

(declare-fun b!7168340 () Bool)

(assert (=> b!7168340 (= e!4305814 ((as const (Array Context!14558 Bool)) false))))

(declare-fun b!7168341 () Bool)

(assert (=> b!7168341 (= e!4305814 ((_ map or) (store ((as const (Array Context!14558 Bool)) false) (h!76045 lt!2570222) true) (content!14300 (t!383740 lt!2570222))))))

(assert (= (and d!2232918 c!1335411) b!7168340))

(assert (= (and d!2232918 (not c!1335411)) b!7168341))

(declare-fun m!7870916 () Bool)

(assert (=> b!7168341 m!7870916))

(declare-fun m!7870918 () Bool)

(assert (=> b!7168341 m!7870918))

(assert (=> b!7168216 d!2232918))

(declare-fun d!2232920 () Bool)

(declare-fun c!1335412 () Bool)

(assert (=> d!2232920 (= c!1335412 ((_ is Nil!69597) (t!383740 lt!2570208)))))

(declare-fun e!4305815 () (InoxSet Context!14558))

(assert (=> d!2232920 (= (content!14300 (t!383740 lt!2570208)) e!4305815)))

(declare-fun b!7168342 () Bool)

(assert (=> b!7168342 (= e!4305815 ((as const (Array Context!14558 Bool)) false))))

(declare-fun b!7168343 () Bool)

(assert (=> b!7168343 (= e!4305815 ((_ map or) (store ((as const (Array Context!14558 Bool)) false) (h!76045 (t!383740 lt!2570208)) true) (content!14300 (t!383740 (t!383740 lt!2570208)))))))

(assert (= (and d!2232920 c!1335412) b!7168342))

(assert (= (and d!2232920 (not c!1335412)) b!7168343))

(declare-fun m!7870920 () Bool)

(assert (=> b!7168343 m!7870920))

(declare-fun m!7870922 () Bool)

(assert (=> b!7168343 m!7870922))

(assert (=> b!7168264 d!2232920))

(declare-fun d!2232922 () Bool)

(assert (=> d!2232922 (= (isUnion!1568 lt!2570213) ((_ is Union!18327) lt!2570213))))

(assert (=> b!7168185 d!2232922))

(declare-fun d!2232924 () Bool)

(declare-fun res!2921394 () Bool)

(declare-fun e!4305816 () Bool)

(assert (=> d!2232924 (=> res!2921394 e!4305816)))

(assert (=> d!2232924 (= res!2921394 ((_ is Nil!69597) lt!2570222))))

(assert (=> d!2232924 (= (noDuplicate!2871 lt!2570222) e!4305816)))

(declare-fun b!7168344 () Bool)

(declare-fun e!4305817 () Bool)

(assert (=> b!7168344 (= e!4305816 e!4305817)))

(declare-fun res!2921395 () Bool)

(assert (=> b!7168344 (=> (not res!2921395) (not e!4305817))))

(assert (=> b!7168344 (= res!2921395 (not (contains!20709 (t!383740 lt!2570222) (h!76045 lt!2570222))))))

(declare-fun b!7168345 () Bool)

(assert (=> b!7168345 (= e!4305817 (noDuplicate!2871 (t!383740 lt!2570222)))))

(assert (= (and d!2232924 (not res!2921394)) b!7168344))

(assert (= (and b!7168344 res!2921395) b!7168345))

(declare-fun m!7870924 () Bool)

(assert (=> b!7168344 m!7870924))

(declare-fun m!7870926 () Bool)

(assert (=> b!7168345 m!7870926))

(assert (=> d!2232876 d!2232924))

(declare-fun d!2232926 () Bool)

(declare-fun e!4305819 () Bool)

(assert (=> d!2232926 e!4305819))

(declare-fun res!2921397 () Bool)

(assert (=> d!2232926 (=> (not res!2921397) (not e!4305819))))

(declare-fun res!2921396 () List!69721)

(assert (=> d!2232926 (= res!2921397 (noDuplicate!2871 res!2921396))))

(declare-fun e!4305818 () Bool)

(assert (=> d!2232926 e!4305818))

(assert (=> d!2232926 (= (choose!55357 (store ((as const (Array Context!14558 Bool)) false) (Context!14559 (Cons!69596 EmptyExpr!18327 Nil!69596)) true)) res!2921396)))

(declare-fun b!7168347 () Bool)

(declare-fun e!4305820 () Bool)

(declare-fun tp!1985363 () Bool)

(assert (=> b!7168347 (= e!4305820 tp!1985363)))

(declare-fun b!7168346 () Bool)

(declare-fun tp!1985362 () Bool)

(assert (=> b!7168346 (= e!4305818 (and (inv!88839 (h!76045 res!2921396)) e!4305820 tp!1985362))))

(declare-fun b!7168348 () Bool)

(assert (=> b!7168348 (= e!4305819 (= (content!14300 res!2921396) (store ((as const (Array Context!14558 Bool)) false) (Context!14559 (Cons!69596 EmptyExpr!18327 Nil!69596)) true)))))

(assert (= b!7168346 b!7168347))

(assert (= (and d!2232926 ((_ is Cons!69597) res!2921396)) b!7168346))

(assert (= (and d!2232926 res!2921397) b!7168348))

(declare-fun m!7870928 () Bool)

(assert (=> d!2232926 m!7870928))

(declare-fun m!7870930 () Bool)

(assert (=> b!7168346 m!7870930))

(declare-fun m!7870932 () Bool)

(assert (=> b!7168348 m!7870932))

(assert (=> d!2232876 d!2232926))

(declare-fun bm!653008 () Bool)

(declare-fun call!653015 () Bool)

(declare-fun call!653014 () Bool)

(assert (=> bm!653008 (= call!653015 call!653014)))

(declare-fun b!7168349 () Bool)

(declare-fun e!4305822 () Bool)

(declare-fun call!653013 () Bool)

(assert (=> b!7168349 (= e!4305822 call!653013)))

(declare-fun b!7168350 () Bool)

(declare-fun res!2921401 () Bool)

(declare-fun e!4305825 () Bool)

(assert (=> b!7168350 (=> res!2921401 e!4305825)))

(assert (=> b!7168350 (= res!2921401 (not ((_ is Concat!27172) (ite c!1335359 (regTwo!37167 lt!2570202) (regTwo!37166 lt!2570202)))))))

(declare-fun e!4305823 () Bool)

(assert (=> b!7168350 (= e!4305823 e!4305825)))

(declare-fun d!2232928 () Bool)

(declare-fun res!2921402 () Bool)

(declare-fun e!4305824 () Bool)

(assert (=> d!2232928 (=> res!2921402 e!4305824)))

(assert (=> d!2232928 (= res!2921402 ((_ is ElementMatch!18327) (ite c!1335359 (regTwo!37167 lt!2570202) (regTwo!37166 lt!2570202))))))

(assert (=> d!2232928 (= (validRegex!9452 (ite c!1335359 (regTwo!37167 lt!2570202) (regTwo!37166 lt!2570202))) e!4305824)))

(declare-fun b!7168351 () Bool)

(declare-fun e!4305827 () Bool)

(assert (=> b!7168351 (= e!4305827 call!653013)))

(declare-fun b!7168352 () Bool)

(assert (=> b!7168352 (= e!4305825 e!4305827)))

(declare-fun res!2921399 () Bool)

(assert (=> b!7168352 (=> (not res!2921399) (not e!4305827))))

(assert (=> b!7168352 (= res!2921399 call!653015)))

(declare-fun b!7168353 () Bool)

(declare-fun e!4305821 () Bool)

(assert (=> b!7168353 (= e!4305824 e!4305821)))

(declare-fun c!1335413 () Bool)

(assert (=> b!7168353 (= c!1335413 ((_ is Star!18327) (ite c!1335359 (regTwo!37167 lt!2570202) (regTwo!37166 lt!2570202))))))

(declare-fun c!1335414 () Bool)

(declare-fun bm!653009 () Bool)

(assert (=> bm!653009 (= call!653014 (validRegex!9452 (ite c!1335413 (reg!18656 (ite c!1335359 (regTwo!37167 lt!2570202) (regTwo!37166 lt!2570202))) (ite c!1335414 (regOne!37167 (ite c!1335359 (regTwo!37167 lt!2570202) (regTwo!37166 lt!2570202))) (regOne!37166 (ite c!1335359 (regTwo!37167 lt!2570202) (regTwo!37166 lt!2570202)))))))))

(declare-fun b!7168354 () Bool)

(declare-fun e!4305826 () Bool)

(assert (=> b!7168354 (= e!4305821 e!4305826)))

(declare-fun res!2921398 () Bool)

(assert (=> b!7168354 (= res!2921398 (not (nullable!7762 (reg!18656 (ite c!1335359 (regTwo!37167 lt!2570202) (regTwo!37166 lt!2570202))))))))

(assert (=> b!7168354 (=> (not res!2921398) (not e!4305826))))

(declare-fun b!7168355 () Bool)

(declare-fun res!2921400 () Bool)

(assert (=> b!7168355 (=> (not res!2921400) (not e!4305822))))

(assert (=> b!7168355 (= res!2921400 call!653015)))

(assert (=> b!7168355 (= e!4305823 e!4305822)))

(declare-fun b!7168356 () Bool)

(assert (=> b!7168356 (= e!4305826 call!653014)))

(declare-fun b!7168357 () Bool)

(assert (=> b!7168357 (= e!4305821 e!4305823)))

(assert (=> b!7168357 (= c!1335414 ((_ is Union!18327) (ite c!1335359 (regTwo!37167 lt!2570202) (regTwo!37166 lt!2570202))))))

(declare-fun bm!653010 () Bool)

(assert (=> bm!653010 (= call!653013 (validRegex!9452 (ite c!1335414 (regTwo!37167 (ite c!1335359 (regTwo!37167 lt!2570202) (regTwo!37166 lt!2570202))) (regTwo!37166 (ite c!1335359 (regTwo!37167 lt!2570202) (regTwo!37166 lt!2570202))))))))

(assert (= (and d!2232928 (not res!2921402)) b!7168353))

(assert (= (and b!7168353 c!1335413) b!7168354))

(assert (= (and b!7168353 (not c!1335413)) b!7168357))

(assert (= (and b!7168354 res!2921398) b!7168356))

(assert (= (and b!7168357 c!1335414) b!7168355))

(assert (= (and b!7168357 (not c!1335414)) b!7168350))

(assert (= (and b!7168355 res!2921400) b!7168349))

(assert (= (and b!7168350 (not res!2921401)) b!7168352))

(assert (= (and b!7168352 res!2921399) b!7168351))

(assert (= (or b!7168355 b!7168352) bm!653008))

(assert (= (or b!7168349 b!7168351) bm!653010))

(assert (= (or b!7168356 bm!653008) bm!653009))

(declare-fun m!7870934 () Bool)

(assert (=> bm!653009 m!7870934))

(declare-fun m!7870936 () Bool)

(assert (=> b!7168354 m!7870936))

(declare-fun m!7870938 () Bool)

(assert (=> bm!653010 m!7870938))

(assert (=> bm!652998 d!2232928))

(declare-fun d!2232930 () Bool)

(assert (=> d!2232930 (= (isEmptyLang!2140 lt!2570213) ((_ is EmptyLang!18327) lt!2570213))))

(assert (=> b!7168184 d!2232930))

(declare-fun d!2232932 () Bool)

(assert (=> d!2232932 (= (isEmpty!40186 (unfocusZipperList!2311 (toList!11270 z!3530))) ((_ is Nil!69596) (unfocusZipperList!2311 (toList!11270 z!3530))))))

(assert (=> b!7168179 d!2232932))

(declare-fun d!2232934 () Bool)

(declare-fun nullableFct!3031 (Regex!18327) Bool)

(assert (=> d!2232934 (= (nullable!7762 (reg!18656 lt!2570202)) (nullableFct!3031 (reg!18656 lt!2570202)))))

(declare-fun bs!1892670 () Bool)

(assert (= bs!1892670 d!2232934))

(declare-fun m!7870940 () Bool)

(assert (=> bs!1892670 m!7870940))

(assert (=> b!7168125 d!2232934))

(declare-fun d!2232936 () Bool)

(assert (=> d!2232936 (= (head!14630 (unfocusZipperList!2311 (toList!11270 z!3530))) (h!76044 (unfocusZipperList!2311 (toList!11270 z!3530))))))

(assert (=> b!7168180 d!2232936))

(declare-fun d!2232938 () Bool)

(assert (=> d!2232938 (= (isEmpty!40186 (t!383739 (unfocusZipperList!2311 (toList!11270 z!3530)))) ((_ is Nil!69596) (t!383739 (unfocusZipperList!2311 (toList!11270 z!3530)))))))

(assert (=> b!7168178 d!2232938))

(declare-fun bm!653011 () Bool)

(declare-fun call!653018 () Bool)

(declare-fun call!653017 () Bool)

(assert (=> bm!653011 (= call!653018 call!653017)))

(declare-fun b!7168358 () Bool)

(declare-fun e!4305829 () Bool)

(declare-fun call!653016 () Bool)

(assert (=> b!7168358 (= e!4305829 call!653016)))

(declare-fun b!7168359 () Bool)

(declare-fun res!2921406 () Bool)

(declare-fun e!4305832 () Bool)

(assert (=> b!7168359 (=> res!2921406 e!4305832)))

(assert (=> b!7168359 (= res!2921406 (not ((_ is Concat!27172) (ite c!1335358 (reg!18656 lt!2570202) (ite c!1335359 (regOne!37167 lt!2570202) (regOne!37166 lt!2570202))))))))

(declare-fun e!4305830 () Bool)

(assert (=> b!7168359 (= e!4305830 e!4305832)))

(declare-fun d!2232940 () Bool)

(declare-fun res!2921407 () Bool)

(declare-fun e!4305831 () Bool)

(assert (=> d!2232940 (=> res!2921407 e!4305831)))

(assert (=> d!2232940 (= res!2921407 ((_ is ElementMatch!18327) (ite c!1335358 (reg!18656 lt!2570202) (ite c!1335359 (regOne!37167 lt!2570202) (regOne!37166 lt!2570202)))))))

(assert (=> d!2232940 (= (validRegex!9452 (ite c!1335358 (reg!18656 lt!2570202) (ite c!1335359 (regOne!37167 lt!2570202) (regOne!37166 lt!2570202)))) e!4305831)))

(declare-fun b!7168360 () Bool)

(declare-fun e!4305834 () Bool)

(assert (=> b!7168360 (= e!4305834 call!653016)))

(declare-fun b!7168361 () Bool)

(assert (=> b!7168361 (= e!4305832 e!4305834)))

(declare-fun res!2921404 () Bool)

(assert (=> b!7168361 (=> (not res!2921404) (not e!4305834))))

(assert (=> b!7168361 (= res!2921404 call!653018)))

(declare-fun b!7168362 () Bool)

(declare-fun e!4305828 () Bool)

(assert (=> b!7168362 (= e!4305831 e!4305828)))

(declare-fun c!1335415 () Bool)

(assert (=> b!7168362 (= c!1335415 ((_ is Star!18327) (ite c!1335358 (reg!18656 lt!2570202) (ite c!1335359 (regOne!37167 lt!2570202) (regOne!37166 lt!2570202)))))))

(declare-fun c!1335416 () Bool)

(declare-fun bm!653012 () Bool)

(assert (=> bm!653012 (= call!653017 (validRegex!9452 (ite c!1335415 (reg!18656 (ite c!1335358 (reg!18656 lt!2570202) (ite c!1335359 (regOne!37167 lt!2570202) (regOne!37166 lt!2570202)))) (ite c!1335416 (regOne!37167 (ite c!1335358 (reg!18656 lt!2570202) (ite c!1335359 (regOne!37167 lt!2570202) (regOne!37166 lt!2570202)))) (regOne!37166 (ite c!1335358 (reg!18656 lt!2570202) (ite c!1335359 (regOne!37167 lt!2570202) (regOne!37166 lt!2570202))))))))))

(declare-fun b!7168363 () Bool)

(declare-fun e!4305833 () Bool)

(assert (=> b!7168363 (= e!4305828 e!4305833)))

(declare-fun res!2921403 () Bool)

(assert (=> b!7168363 (= res!2921403 (not (nullable!7762 (reg!18656 (ite c!1335358 (reg!18656 lt!2570202) (ite c!1335359 (regOne!37167 lt!2570202) (regOne!37166 lt!2570202)))))))))

(assert (=> b!7168363 (=> (not res!2921403) (not e!4305833))))

(declare-fun b!7168364 () Bool)

(declare-fun res!2921405 () Bool)

(assert (=> b!7168364 (=> (not res!2921405) (not e!4305829))))

(assert (=> b!7168364 (= res!2921405 call!653018)))

(assert (=> b!7168364 (= e!4305830 e!4305829)))

(declare-fun b!7168365 () Bool)

(assert (=> b!7168365 (= e!4305833 call!653017)))

(declare-fun b!7168366 () Bool)

(assert (=> b!7168366 (= e!4305828 e!4305830)))

(assert (=> b!7168366 (= c!1335416 ((_ is Union!18327) (ite c!1335358 (reg!18656 lt!2570202) (ite c!1335359 (regOne!37167 lt!2570202) (regOne!37166 lt!2570202)))))))

(declare-fun bm!653013 () Bool)

(assert (=> bm!653013 (= call!653016 (validRegex!9452 (ite c!1335416 (regTwo!37167 (ite c!1335358 (reg!18656 lt!2570202) (ite c!1335359 (regOne!37167 lt!2570202) (regOne!37166 lt!2570202)))) (regTwo!37166 (ite c!1335358 (reg!18656 lt!2570202) (ite c!1335359 (regOne!37167 lt!2570202) (regOne!37166 lt!2570202)))))))))

(assert (= (and d!2232940 (not res!2921407)) b!7168362))

(assert (= (and b!7168362 c!1335415) b!7168363))

(assert (= (and b!7168362 (not c!1335415)) b!7168366))

(assert (= (and b!7168363 res!2921403) b!7168365))

(assert (= (and b!7168366 c!1335416) b!7168364))

(assert (= (and b!7168366 (not c!1335416)) b!7168359))

(assert (= (and b!7168364 res!2921405) b!7168358))

(assert (= (and b!7168359 (not res!2921406)) b!7168361))

(assert (= (and b!7168361 res!2921404) b!7168360))

(assert (= (or b!7168364 b!7168361) bm!653011))

(assert (= (or b!7168358 b!7168360) bm!653013))

(assert (= (or b!7168365 bm!653011) bm!653012))

(declare-fun m!7870942 () Bool)

(assert (=> bm!653012 m!7870942))

(declare-fun m!7870944 () Bool)

(assert (=> b!7168363 m!7870944))

(declare-fun m!7870946 () Bool)

(assert (=> bm!653013 m!7870946))

(assert (=> bm!652997 d!2232940))

(declare-fun d!2232942 () Bool)

(declare-fun res!2921408 () Bool)

(declare-fun e!4305835 () Bool)

(assert (=> d!2232942 (=> res!2921408 e!4305835)))

(assert (=> d!2232942 (= res!2921408 ((_ is Nil!69597) res!2921365))))

(assert (=> d!2232942 (= (noDuplicate!2871 res!2921365) e!4305835)))

(declare-fun b!7168367 () Bool)

(declare-fun e!4305836 () Bool)

(assert (=> b!7168367 (= e!4305835 e!4305836)))

(declare-fun res!2921409 () Bool)

(assert (=> b!7168367 (=> (not res!2921409) (not e!4305836))))

(assert (=> b!7168367 (= res!2921409 (not (contains!20709 (t!383740 res!2921365) (h!76045 res!2921365))))))

(declare-fun b!7168368 () Bool)

(assert (=> b!7168368 (= e!4305836 (noDuplicate!2871 (t!383740 res!2921365)))))

(assert (= (and d!2232942 (not res!2921408)) b!7168367))

(assert (= (and b!7168367 res!2921409) b!7168368))

(declare-fun m!7870948 () Bool)

(assert (=> b!7168367 m!7870948))

(declare-fun m!7870950 () Bool)

(assert (=> b!7168368 m!7870950))

(assert (=> d!2232884 d!2232942))

(declare-fun d!2232944 () Bool)

(declare-fun res!2921410 () Bool)

(declare-fun e!4305837 () Bool)

(assert (=> d!2232944 (=> res!2921410 e!4305837)))

(assert (=> d!2232944 (= res!2921410 ((_ is Nil!69596) (t!383739 (exprs!7779 setElem!52949))))))

(assert (=> d!2232944 (= (forall!17157 (t!383739 (exprs!7779 setElem!52949)) lambda!437054) e!4305837)))

(declare-fun b!7168369 () Bool)

(declare-fun e!4305838 () Bool)

(assert (=> b!7168369 (= e!4305837 e!4305838)))

(declare-fun res!2921411 () Bool)

(assert (=> b!7168369 (=> (not res!2921411) (not e!4305838))))

(assert (=> b!7168369 (= res!2921411 (dynLambda!28343 lambda!437054 (h!76044 (t!383739 (exprs!7779 setElem!52949)))))))

(declare-fun b!7168370 () Bool)

(assert (=> b!7168370 (= e!4305838 (forall!17157 (t!383739 (t!383739 (exprs!7779 setElem!52949))) lambda!437054))))

(assert (= (and d!2232944 (not res!2921410)) b!7168369))

(assert (= (and b!7168369 res!2921411) b!7168370))

(declare-fun b_lambda!273959 () Bool)

(assert (=> (not b_lambda!273959) (not b!7168369)))

(declare-fun m!7870952 () Bool)

(assert (=> b!7168369 m!7870952))

(declare-fun m!7870954 () Bool)

(assert (=> b!7168370 m!7870954))

(assert (=> b!7168258 d!2232944))

(declare-fun bm!653014 () Bool)

(declare-fun call!653021 () Bool)

(declare-fun call!653020 () Bool)

(assert (=> bm!653014 (= call!653021 call!653020)))

(declare-fun b!7168371 () Bool)

(declare-fun e!4305840 () Bool)

(declare-fun call!653019 () Bool)

(assert (=> b!7168371 (= e!4305840 call!653019)))

(declare-fun b!7168372 () Bool)

(declare-fun res!2921415 () Bool)

(declare-fun e!4305843 () Bool)

(assert (=> b!7168372 (=> res!2921415 e!4305843)))

(assert (=> b!7168372 (= res!2921415 (not ((_ is Concat!27172) lt!2570213)))))

(declare-fun e!4305841 () Bool)

(assert (=> b!7168372 (= e!4305841 e!4305843)))

(declare-fun d!2232946 () Bool)

(declare-fun res!2921416 () Bool)

(declare-fun e!4305842 () Bool)

(assert (=> d!2232946 (=> res!2921416 e!4305842)))

(assert (=> d!2232946 (= res!2921416 ((_ is ElementMatch!18327) lt!2570213))))

(assert (=> d!2232946 (= (validRegex!9452 lt!2570213) e!4305842)))

(declare-fun b!7168373 () Bool)

(declare-fun e!4305845 () Bool)

(assert (=> b!7168373 (= e!4305845 call!653019)))

(declare-fun b!7168374 () Bool)

(assert (=> b!7168374 (= e!4305843 e!4305845)))

(declare-fun res!2921413 () Bool)

(assert (=> b!7168374 (=> (not res!2921413) (not e!4305845))))

(assert (=> b!7168374 (= res!2921413 call!653021)))

(declare-fun b!7168375 () Bool)

(declare-fun e!4305839 () Bool)

(assert (=> b!7168375 (= e!4305842 e!4305839)))

(declare-fun c!1335417 () Bool)

(assert (=> b!7168375 (= c!1335417 ((_ is Star!18327) lt!2570213))))

(declare-fun bm!653015 () Bool)

(declare-fun c!1335418 () Bool)

(assert (=> bm!653015 (= call!653020 (validRegex!9452 (ite c!1335417 (reg!18656 lt!2570213) (ite c!1335418 (regOne!37167 lt!2570213) (regOne!37166 lt!2570213)))))))

(declare-fun b!7168376 () Bool)

(declare-fun e!4305844 () Bool)

(assert (=> b!7168376 (= e!4305839 e!4305844)))

(declare-fun res!2921412 () Bool)

(assert (=> b!7168376 (= res!2921412 (not (nullable!7762 (reg!18656 lt!2570213))))))

(assert (=> b!7168376 (=> (not res!2921412) (not e!4305844))))

(declare-fun b!7168377 () Bool)

(declare-fun res!2921414 () Bool)

(assert (=> b!7168377 (=> (not res!2921414) (not e!4305840))))

(assert (=> b!7168377 (= res!2921414 call!653021)))

(assert (=> b!7168377 (= e!4305841 e!4305840)))

(declare-fun b!7168378 () Bool)

(assert (=> b!7168378 (= e!4305844 call!653020)))

(declare-fun b!7168379 () Bool)

(assert (=> b!7168379 (= e!4305839 e!4305841)))

(assert (=> b!7168379 (= c!1335418 ((_ is Union!18327) lt!2570213))))

(declare-fun bm!653016 () Bool)

(assert (=> bm!653016 (= call!653019 (validRegex!9452 (ite c!1335418 (regTwo!37167 lt!2570213) (regTwo!37166 lt!2570213))))))

(assert (= (and d!2232946 (not res!2921416)) b!7168375))

(assert (= (and b!7168375 c!1335417) b!7168376))

(assert (= (and b!7168375 (not c!1335417)) b!7168379))

(assert (= (and b!7168376 res!2921412) b!7168378))

(assert (= (and b!7168379 c!1335418) b!7168377))

(assert (= (and b!7168379 (not c!1335418)) b!7168372))

(assert (= (and b!7168377 res!2921414) b!7168371))

(assert (= (and b!7168372 (not res!2921415)) b!7168374))

(assert (= (and b!7168374 res!2921413) b!7168373))

(assert (= (or b!7168377 b!7168374) bm!653014))

(assert (= (or b!7168371 b!7168373) bm!653016))

(assert (= (or b!7168378 bm!653014) bm!653015))

(declare-fun m!7870956 () Bool)

(assert (=> bm!653015 m!7870956))

(declare-fun m!7870958 () Bool)

(assert (=> b!7168376 m!7870958))

(declare-fun m!7870960 () Bool)

(assert (=> bm!653016 m!7870960))

(assert (=> d!2232864 d!2232946))

(declare-fun d!2232948 () Bool)

(declare-fun res!2921417 () Bool)

(declare-fun e!4305846 () Bool)

(assert (=> d!2232948 (=> res!2921417 e!4305846)))

(assert (=> d!2232948 (= res!2921417 ((_ is Nil!69596) (unfocusZipperList!2311 (toList!11270 z!3530))))))

(assert (=> d!2232948 (= (forall!17157 (unfocusZipperList!2311 (toList!11270 z!3530)) lambda!437060) e!4305846)))

(declare-fun b!7168380 () Bool)

(declare-fun e!4305847 () Bool)

(assert (=> b!7168380 (= e!4305846 e!4305847)))

(declare-fun res!2921418 () Bool)

(assert (=> b!7168380 (=> (not res!2921418) (not e!4305847))))

(assert (=> b!7168380 (= res!2921418 (dynLambda!28343 lambda!437060 (h!76044 (unfocusZipperList!2311 (toList!11270 z!3530)))))))

(declare-fun b!7168381 () Bool)

(assert (=> b!7168381 (= e!4305847 (forall!17157 (t!383739 (unfocusZipperList!2311 (toList!11270 z!3530))) lambda!437060))))

(assert (= (and d!2232948 (not res!2921417)) b!7168380))

(assert (= (and b!7168380 res!2921418) b!7168381))

(declare-fun b_lambda!273961 () Bool)

(assert (=> (not b_lambda!273961) (not b!7168380)))

(declare-fun m!7870962 () Bool)

(assert (=> b!7168380 m!7870962))

(declare-fun m!7870964 () Bool)

(assert (=> b!7168381 m!7870964))

(assert (=> d!2232864 d!2232948))

(declare-fun d!2232950 () Bool)

(declare-fun res!2921419 () Bool)

(declare-fun e!4305848 () Bool)

(assert (=> d!2232950 (=> res!2921419 e!4305848)))

(assert (=> d!2232950 (= res!2921419 ((_ is Nil!69596) (exprs!7779 setElem!52955)))))

(assert (=> d!2232950 (= (forall!17157 (exprs!7779 setElem!52955) lambda!437068) e!4305848)))

(declare-fun b!7168382 () Bool)

(declare-fun e!4305849 () Bool)

(assert (=> b!7168382 (= e!4305848 e!4305849)))

(declare-fun res!2921420 () Bool)

(assert (=> b!7168382 (=> (not res!2921420) (not e!4305849))))

(assert (=> b!7168382 (= res!2921420 (dynLambda!28343 lambda!437068 (h!76044 (exprs!7779 setElem!52955))))))

(declare-fun b!7168383 () Bool)

(assert (=> b!7168383 (= e!4305849 (forall!17157 (t!383739 (exprs!7779 setElem!52955)) lambda!437068))))

(assert (= (and d!2232950 (not res!2921419)) b!7168382))

(assert (= (and b!7168382 res!2921420) b!7168383))

(declare-fun b_lambda!273963 () Bool)

(assert (=> (not b_lambda!273963) (not b!7168382)))

(declare-fun m!7870966 () Bool)

(assert (=> b!7168382 m!7870966))

(declare-fun m!7870968 () Bool)

(assert (=> b!7168383 m!7870968))

(assert (=> d!2232890 d!2232950))

(declare-fun d!2232952 () Bool)

(declare-fun res!2921421 () Bool)

(declare-fun e!4305850 () Bool)

(assert (=> d!2232952 (=> res!2921421 e!4305850)))

(assert (=> d!2232952 (= res!2921421 ((_ is Nil!69596) lt!2570219))))

(assert (=> d!2232952 (= (forall!17157 lt!2570219 lambda!437066) e!4305850)))

(declare-fun b!7168384 () Bool)

(declare-fun e!4305851 () Bool)

(assert (=> b!7168384 (= e!4305850 e!4305851)))

(declare-fun res!2921422 () Bool)

(assert (=> b!7168384 (=> (not res!2921422) (not e!4305851))))

(assert (=> b!7168384 (= res!2921422 (dynLambda!28343 lambda!437066 (h!76044 lt!2570219)))))

(declare-fun b!7168385 () Bool)

(assert (=> b!7168385 (= e!4305851 (forall!17157 (t!383739 lt!2570219) lambda!437066))))

(assert (= (and d!2232952 (not res!2921421)) b!7168384))

(assert (= (and b!7168384 res!2921422) b!7168385))

(declare-fun b_lambda!273965 () Bool)

(assert (=> (not b_lambda!273965) (not b!7168384)))

(declare-fun m!7870970 () Bool)

(assert (=> b!7168384 m!7870970))

(declare-fun m!7870972 () Bool)

(assert (=> b!7168385 m!7870972))

(assert (=> d!2232868 d!2232952))

(declare-fun d!2232954 () Bool)

(declare-fun res!2921423 () Bool)

(declare-fun e!4305852 () Bool)

(assert (=> d!2232954 (=> res!2921423 e!4305852)))

(assert (=> d!2232954 (= res!2921423 ((_ is Nil!69597) (t!383740 lt!2570208)))))

(assert (=> d!2232954 (= (noDuplicate!2871 (t!383740 lt!2570208)) e!4305852)))

(declare-fun b!7168386 () Bool)

(declare-fun e!4305853 () Bool)

(assert (=> b!7168386 (= e!4305852 e!4305853)))

(declare-fun res!2921424 () Bool)

(assert (=> b!7168386 (=> (not res!2921424) (not e!4305853))))

(assert (=> b!7168386 (= res!2921424 (not (contains!20709 (t!383740 (t!383740 lt!2570208)) (h!76045 (t!383740 lt!2570208)))))))

(declare-fun b!7168387 () Bool)

(assert (=> b!7168387 (= e!4305853 (noDuplicate!2871 (t!383740 (t!383740 lt!2570208))))))

(assert (= (and d!2232954 (not res!2921423)) b!7168386))

(assert (= (and b!7168386 res!2921424) b!7168387))

(declare-fun m!7870974 () Bool)

(assert (=> b!7168386 m!7870974))

(declare-fun m!7870976 () Bool)

(assert (=> b!7168387 m!7870976))

(assert (=> b!7168231 d!2232954))

(declare-fun d!2232956 () Bool)

(declare-fun lt!2570230 () Bool)

(assert (=> d!2232956 (= lt!2570230 (select (content!14300 (t!383740 lt!2570208)) (h!76045 lt!2570208)))))

(declare-fun e!4305859 () Bool)

(assert (=> d!2232956 (= lt!2570230 e!4305859)))

(declare-fun res!2921429 () Bool)

(assert (=> d!2232956 (=> (not res!2921429) (not e!4305859))))

(assert (=> d!2232956 (= res!2921429 ((_ is Cons!69597) (t!383740 lt!2570208)))))

(assert (=> d!2232956 (= (contains!20709 (t!383740 lt!2570208) (h!76045 lt!2570208)) lt!2570230)))

(declare-fun b!7168392 () Bool)

(declare-fun e!4305858 () Bool)

(assert (=> b!7168392 (= e!4305859 e!4305858)))

(declare-fun res!2921430 () Bool)

(assert (=> b!7168392 (=> res!2921430 e!4305858)))

(assert (=> b!7168392 (= res!2921430 (= (h!76045 (t!383740 lt!2570208)) (h!76045 lt!2570208)))))

(declare-fun b!7168393 () Bool)

(assert (=> b!7168393 (= e!4305858 (contains!20709 (t!383740 (t!383740 lt!2570208)) (h!76045 lt!2570208)))))

(assert (= (and d!2232956 res!2921429) b!7168392))

(assert (= (and b!7168392 (not res!2921430)) b!7168393))

(assert (=> d!2232956 m!7870840))

(declare-fun m!7870978 () Bool)

(assert (=> d!2232956 m!7870978))

(declare-fun m!7870980 () Bool)

(assert (=> b!7168393 m!7870980))

(assert (=> b!7168230 d!2232956))

(declare-fun d!2232958 () Bool)

(declare-fun c!1335419 () Bool)

(assert (=> d!2232958 (= c!1335419 ((_ is Nil!69597) res!2921365))))

(declare-fun e!4305860 () (InoxSet Context!14558))

(assert (=> d!2232958 (= (content!14300 res!2921365) e!4305860)))

(declare-fun b!7168394 () Bool)

(assert (=> b!7168394 (= e!4305860 ((as const (Array Context!14558 Bool)) false))))

(declare-fun b!7168395 () Bool)

(assert (=> b!7168395 (= e!4305860 ((_ map or) (store ((as const (Array Context!14558 Bool)) false) (h!76045 res!2921365) true) (content!14300 (t!383740 res!2921365))))))

(assert (= (and d!2232958 c!1335419) b!7168394))

(assert (= (and d!2232958 (not c!1335419)) b!7168395))

(declare-fun m!7870982 () Bool)

(assert (=> b!7168395 m!7870982))

(declare-fun m!7870984 () Bool)

(assert (=> b!7168395 m!7870984))

(assert (=> b!7168246 d!2232958))

(declare-fun d!2232960 () Bool)

(assert (=> d!2232960 (= (isEmpty!40186 (tail!14056 (unfocusZipperList!2311 (toList!11270 z!3530)))) ((_ is Nil!69596) (tail!14056 (unfocusZipperList!2311 (toList!11270 z!3530)))))))

(assert (=> b!7168186 d!2232960))

(declare-fun d!2232962 () Bool)

(assert (=> d!2232962 (= (tail!14056 (unfocusZipperList!2311 (toList!11270 z!3530))) (t!383739 (unfocusZipperList!2311 (toList!11270 z!3530))))))

(assert (=> b!7168186 d!2232962))

(declare-fun bs!1892671 () Bool)

(declare-fun d!2232964 () Bool)

(assert (= bs!1892671 (and d!2232964 d!2232890)))

(declare-fun lambda!437076 () Int)

(assert (=> bs!1892671 (= lambda!437076 lambda!437068)))

(declare-fun bs!1892672 () Bool)

(assert (= bs!1892672 (and d!2232964 d!2232906)))

(assert (=> bs!1892672 (= lambda!437076 lambda!437070)))

(declare-fun bs!1892673 () Bool)

(assert (= bs!1892673 (and d!2232964 d!2232916)))

(assert (=> bs!1892673 (= lambda!437076 lambda!437073)))

(declare-fun bs!1892674 () Bool)

(assert (= bs!1892674 (and d!2232964 d!2232868)))

(assert (=> bs!1892674 (= lambda!437076 lambda!437066)))

(declare-fun bs!1892675 () Bool)

(assert (= bs!1892675 (and d!2232964 d!2232864)))

(assert (=> bs!1892675 (= lambda!437076 lambda!437060)))

(declare-fun bs!1892676 () Bool)

(assert (= bs!1892676 (and d!2232964 d!2232914)))

(assert (=> bs!1892676 (= lambda!437076 lambda!437072)))

(declare-fun bs!1892677 () Bool)

(assert (= bs!1892677 (and d!2232964 d!2232846)))

(assert (=> bs!1892677 (= lambda!437076 lambda!437054)))

(declare-fun bs!1892678 () Bool)

(assert (= bs!1892678 (and d!2232964 d!2232908)))

(assert (=> bs!1892678 (= lambda!437076 lambda!437071)))

(declare-fun bs!1892679 () Bool)

(assert (= bs!1892679 (and d!2232964 d!2232904)))

(assert (=> bs!1892679 (= lambda!437076 lambda!437069)))

(declare-fun b!7168416 () Bool)

(declare-fun e!4305873 () Bool)

(declare-fun lt!2570233 () Regex!18327)

(declare-fun isConcat!1608 (Regex!18327) Bool)

(assert (=> b!7168416 (= e!4305873 (isConcat!1608 lt!2570233))))

(declare-fun b!7168417 () Bool)

(declare-fun e!4305877 () Regex!18327)

(assert (=> b!7168417 (= e!4305877 EmptyExpr!18327)))

(declare-fun e!4305874 () Bool)

(assert (=> d!2232964 e!4305874))

(declare-fun res!2921435 () Bool)

(assert (=> d!2232964 (=> (not res!2921435) (not e!4305874))))

(assert (=> d!2232964 (= res!2921435 (validRegex!9452 lt!2570233))))

(declare-fun e!4305876 () Regex!18327)

(assert (=> d!2232964 (= lt!2570233 e!4305876)))

(declare-fun c!1335431 () Bool)

(declare-fun e!4305875 () Bool)

(assert (=> d!2232964 (= c!1335431 e!4305875)))

(declare-fun res!2921436 () Bool)

(assert (=> d!2232964 (=> (not res!2921436) (not e!4305875))))

(assert (=> d!2232964 (= res!2921436 ((_ is Cons!69596) (exprs!7779 (h!76045 (toList!11270 z!3530)))))))

(assert (=> d!2232964 (forall!17157 (exprs!7779 (h!76045 (toList!11270 z!3530))) lambda!437076)))

(assert (=> d!2232964 (= (generalisedConcat!2451 (exprs!7779 (h!76045 (toList!11270 z!3530)))) lt!2570233)))

(declare-fun b!7168418 () Bool)

(assert (=> b!7168418 (= e!4305877 (Concat!27172 (h!76044 (exprs!7779 (h!76045 (toList!11270 z!3530)))) (generalisedConcat!2451 (t!383739 (exprs!7779 (h!76045 (toList!11270 z!3530)))))))))

(declare-fun b!7168419 () Bool)

(assert (=> b!7168419 (= e!4305873 (= lt!2570233 (head!14630 (exprs!7779 (h!76045 (toList!11270 z!3530))))))))

(declare-fun b!7168420 () Bool)

(assert (=> b!7168420 (= e!4305875 (isEmpty!40186 (t!383739 (exprs!7779 (h!76045 (toList!11270 z!3530))))))))

(declare-fun b!7168421 () Bool)

(assert (=> b!7168421 (= e!4305876 e!4305877)))

(declare-fun c!1335429 () Bool)

(assert (=> b!7168421 (= c!1335429 ((_ is Cons!69596) (exprs!7779 (h!76045 (toList!11270 z!3530)))))))

(declare-fun b!7168422 () Bool)

(declare-fun e!4305878 () Bool)

(declare-fun isEmptyExpr!2086 (Regex!18327) Bool)

(assert (=> b!7168422 (= e!4305878 (isEmptyExpr!2086 lt!2570233))))

(declare-fun b!7168423 () Bool)

(assert (=> b!7168423 (= e!4305876 (h!76044 (exprs!7779 (h!76045 (toList!11270 z!3530)))))))

(declare-fun b!7168424 () Bool)

(assert (=> b!7168424 (= e!4305874 e!4305878)))

(declare-fun c!1335428 () Bool)

(assert (=> b!7168424 (= c!1335428 (isEmpty!40186 (exprs!7779 (h!76045 (toList!11270 z!3530)))))))

(declare-fun b!7168425 () Bool)

(assert (=> b!7168425 (= e!4305878 e!4305873)))

(declare-fun c!1335430 () Bool)

(assert (=> b!7168425 (= c!1335430 (isEmpty!40186 (tail!14056 (exprs!7779 (h!76045 (toList!11270 z!3530))))))))

(assert (= (and d!2232964 res!2921436) b!7168420))

(assert (= (and d!2232964 c!1335431) b!7168423))

(assert (= (and d!2232964 (not c!1335431)) b!7168421))

(assert (= (and b!7168421 c!1335429) b!7168418))

(assert (= (and b!7168421 (not c!1335429)) b!7168417))

(assert (= (and d!2232964 res!2921435) b!7168424))

(assert (= (and b!7168424 c!1335428) b!7168422))

(assert (= (and b!7168424 (not c!1335428)) b!7168425))

(assert (= (and b!7168425 c!1335430) b!7168419))

(assert (= (and b!7168425 (not c!1335430)) b!7168416))

(declare-fun m!7870986 () Bool)

(assert (=> b!7168420 m!7870986))

(declare-fun m!7870988 () Bool)

(assert (=> b!7168418 m!7870988))

(declare-fun m!7870990 () Bool)

(assert (=> d!2232964 m!7870990))

(declare-fun m!7870992 () Bool)

(assert (=> d!2232964 m!7870992))

(declare-fun m!7870994 () Bool)

(assert (=> b!7168425 m!7870994))

(assert (=> b!7168425 m!7870994))

(declare-fun m!7870996 () Bool)

(assert (=> b!7168425 m!7870996))

(declare-fun m!7870998 () Bool)

(assert (=> b!7168424 m!7870998))

(declare-fun m!7871000 () Bool)

(assert (=> b!7168422 m!7871000))

(declare-fun m!7871002 () Bool)

(assert (=> b!7168419 m!7871002))

(declare-fun m!7871004 () Bool)

(assert (=> b!7168416 m!7871004))

(assert (=> b!7168206 d!2232964))

(declare-fun bs!1892680 () Bool)

(declare-fun d!2232966 () Bool)

(assert (= bs!1892680 (and d!2232966 d!2232890)))

(declare-fun lambda!437077 () Int)

(assert (=> bs!1892680 (= lambda!437077 lambda!437068)))

(declare-fun bs!1892681 () Bool)

(assert (= bs!1892681 (and d!2232966 d!2232906)))

(assert (=> bs!1892681 (= lambda!437077 lambda!437070)))

(declare-fun bs!1892682 () Bool)

(assert (= bs!1892682 (and d!2232966 d!2232868)))

(assert (=> bs!1892682 (= lambda!437077 lambda!437066)))

(declare-fun bs!1892683 () Bool)

(assert (= bs!1892683 (and d!2232966 d!2232864)))

(assert (=> bs!1892683 (= lambda!437077 lambda!437060)))

(declare-fun bs!1892684 () Bool)

(assert (= bs!1892684 (and d!2232966 d!2232914)))

(assert (=> bs!1892684 (= lambda!437077 lambda!437072)))

(declare-fun bs!1892685 () Bool)

(assert (= bs!1892685 (and d!2232966 d!2232846)))

(assert (=> bs!1892685 (= lambda!437077 lambda!437054)))

(declare-fun bs!1892686 () Bool)

(assert (= bs!1892686 (and d!2232966 d!2232908)))

(assert (=> bs!1892686 (= lambda!437077 lambda!437071)))

(declare-fun bs!1892687 () Bool)

(assert (= bs!1892687 (and d!2232966 d!2232904)))

(assert (=> bs!1892687 (= lambda!437077 lambda!437069)))

(declare-fun bs!1892688 () Bool)

(assert (= bs!1892688 (and d!2232966 d!2232964)))

(assert (=> bs!1892688 (= lambda!437077 lambda!437076)))

(declare-fun bs!1892689 () Bool)

(assert (= bs!1892689 (and d!2232966 d!2232916)))

(assert (=> bs!1892689 (= lambda!437077 lambda!437073)))

(declare-fun lt!2570234 () List!69720)

(assert (=> d!2232966 (forall!17157 lt!2570234 lambda!437077)))

(declare-fun e!4305879 () List!69720)

(assert (=> d!2232966 (= lt!2570234 e!4305879)))

(declare-fun c!1335432 () Bool)

(assert (=> d!2232966 (= c!1335432 ((_ is Cons!69597) (t!383740 (toList!11270 z!3530))))))

(assert (=> d!2232966 (= (unfocusZipperList!2311 (t!383740 (toList!11270 z!3530))) lt!2570234)))

(declare-fun b!7168426 () Bool)

(assert (=> b!7168426 (= e!4305879 (Cons!69596 (generalisedConcat!2451 (exprs!7779 (h!76045 (t!383740 (toList!11270 z!3530))))) (unfocusZipperList!2311 (t!383740 (t!383740 (toList!11270 z!3530))))))))

(declare-fun b!7168427 () Bool)

(assert (=> b!7168427 (= e!4305879 Nil!69596)))

(assert (= (and d!2232966 c!1335432) b!7168426))

(assert (= (and d!2232966 (not c!1335432)) b!7168427))

(declare-fun m!7871006 () Bool)

(assert (=> d!2232966 m!7871006))

(declare-fun m!7871008 () Bool)

(assert (=> b!7168426 m!7871008))

(declare-fun m!7871010 () Bool)

(assert (=> b!7168426 m!7871010))

(assert (=> b!7168206 d!2232966))

(declare-fun condSetEmpty!52958 () Bool)

(assert (=> setNonEmpty!52957 (= condSetEmpty!52958 (= setRest!52957 ((as const (Array Context!14558 Bool)) false)))))

(declare-fun setRes!52958 () Bool)

(assert (=> setNonEmpty!52957 (= tp!1985346 setRes!52958)))

(declare-fun setIsEmpty!52958 () Bool)

(assert (=> setIsEmpty!52958 setRes!52958))

(declare-fun setElem!52958 () Context!14558)

(declare-fun e!4305880 () Bool)

(declare-fun tp!1985365 () Bool)

(declare-fun setNonEmpty!52958 () Bool)

(assert (=> setNonEmpty!52958 (= setRes!52958 (and tp!1985365 (inv!88839 setElem!52958) e!4305880))))

(declare-fun setRest!52958 () (InoxSet Context!14558))

(assert (=> setNonEmpty!52958 (= setRest!52957 ((_ map or) (store ((as const (Array Context!14558 Bool)) false) setElem!52958 true) setRest!52958))))

(declare-fun b!7168428 () Bool)

(declare-fun tp!1985364 () Bool)

(assert (=> b!7168428 (= e!4305880 tp!1985364)))

(assert (= (and setNonEmpty!52957 condSetEmpty!52958) setIsEmpty!52958))

(assert (= (and setNonEmpty!52957 (not condSetEmpty!52958)) setNonEmpty!52958))

(assert (= setNonEmpty!52958 b!7168428))

(declare-fun m!7871012 () Bool)

(assert (=> setNonEmpty!52958 m!7871012))

(declare-fun b!7168432 () Bool)

(declare-fun e!4305881 () Bool)

(declare-fun tp!1985366 () Bool)

(declare-fun tp!1985367 () Bool)

(assert (=> b!7168432 (= e!4305881 (and tp!1985366 tp!1985367))))

(declare-fun b!7168431 () Bool)

(declare-fun tp!1985368 () Bool)

(assert (=> b!7168431 (= e!4305881 tp!1985368)))

(assert (=> b!7168278 (= tp!1985332 e!4305881)))

(declare-fun b!7168430 () Bool)

(declare-fun tp!1985370 () Bool)

(declare-fun tp!1985369 () Bool)

(assert (=> b!7168430 (= e!4305881 (and tp!1985370 tp!1985369))))

(declare-fun b!7168429 () Bool)

(assert (=> b!7168429 (= e!4305881 tp_is_empty!46225)))

(assert (= (and b!7168278 ((_ is ElementMatch!18327) (reg!18656 (h!76044 (exprs!7779 setElem!52949))))) b!7168429))

(assert (= (and b!7168278 ((_ is Concat!27172) (reg!18656 (h!76044 (exprs!7779 setElem!52949))))) b!7168430))

(assert (= (and b!7168278 ((_ is Star!18327) (reg!18656 (h!76044 (exprs!7779 setElem!52949))))) b!7168431))

(assert (= (and b!7168278 ((_ is Union!18327) (reg!18656 (h!76044 (exprs!7779 setElem!52949))))) b!7168432))

(declare-fun b!7168436 () Bool)

(declare-fun e!4305882 () Bool)

(declare-fun tp!1985371 () Bool)

(declare-fun tp!1985372 () Bool)

(assert (=> b!7168436 (= e!4305882 (and tp!1985371 tp!1985372))))

(declare-fun b!7168435 () Bool)

(declare-fun tp!1985373 () Bool)

(assert (=> b!7168435 (= e!4305882 tp!1985373)))

(assert (=> b!7168281 (= tp!1985337 e!4305882)))

(declare-fun b!7168434 () Bool)

(declare-fun tp!1985375 () Bool)

(declare-fun tp!1985374 () Bool)

(assert (=> b!7168434 (= e!4305882 (and tp!1985375 tp!1985374))))

(declare-fun b!7168433 () Bool)

(assert (=> b!7168433 (= e!4305882 tp_is_empty!46225)))

(assert (= (and b!7168281 ((_ is ElementMatch!18327) (h!76044 (t!383739 (exprs!7779 setElem!52949))))) b!7168433))

(assert (= (and b!7168281 ((_ is Concat!27172) (h!76044 (t!383739 (exprs!7779 setElem!52949))))) b!7168434))

(assert (= (and b!7168281 ((_ is Star!18327) (h!76044 (t!383739 (exprs!7779 setElem!52949))))) b!7168435))

(assert (= (and b!7168281 ((_ is Union!18327) (h!76044 (t!383739 (exprs!7779 setElem!52949))))) b!7168436))

(declare-fun b!7168437 () Bool)

(declare-fun e!4305883 () Bool)

(declare-fun tp!1985376 () Bool)

(declare-fun tp!1985377 () Bool)

(assert (=> b!7168437 (= e!4305883 (and tp!1985376 tp!1985377))))

(assert (=> b!7168281 (= tp!1985338 e!4305883)))

(assert (= (and b!7168281 ((_ is Cons!69596) (t!383739 (t!383739 (exprs!7779 setElem!52949))))) b!7168437))

(declare-fun b!7168445 () Bool)

(declare-fun e!4305889 () Bool)

(declare-fun tp!1985382 () Bool)

(assert (=> b!7168445 (= e!4305889 tp!1985382)))

(declare-fun e!4305888 () Bool)

(declare-fun b!7168444 () Bool)

(declare-fun tp!1985383 () Bool)

(assert (=> b!7168444 (= e!4305888 (and (inv!88839 (h!76045 (t!383740 res!2921365))) e!4305889 tp!1985383))))

(assert (=> b!7168244 (= tp!1985318 e!4305888)))

(assert (= b!7168444 b!7168445))

(assert (= (and b!7168244 ((_ is Cons!69597) (t!383740 res!2921365))) b!7168444))

(declare-fun m!7871014 () Bool)

(assert (=> b!7168444 m!7871014))

(declare-fun b!7168446 () Bool)

(declare-fun e!4305890 () Bool)

(declare-fun tp!1985384 () Bool)

(declare-fun tp!1985385 () Bool)

(assert (=> b!7168446 (= e!4305890 (and tp!1985384 tp!1985385))))

(assert (=> b!7168290 (= tp!1985345 e!4305890)))

(assert (= (and b!7168290 ((_ is Cons!69596) (exprs!7779 setElem!52957))) b!7168446))

(declare-fun b!7168450 () Bool)

(declare-fun e!4305891 () Bool)

(declare-fun tp!1985386 () Bool)

(declare-fun tp!1985387 () Bool)

(assert (=> b!7168450 (= e!4305891 (and tp!1985386 tp!1985387))))

(declare-fun b!7168449 () Bool)

(declare-fun tp!1985388 () Bool)

(assert (=> b!7168449 (= e!4305891 tp!1985388)))

(assert (=> b!7168277 (= tp!1985334 e!4305891)))

(declare-fun b!7168448 () Bool)

(declare-fun tp!1985390 () Bool)

(declare-fun tp!1985389 () Bool)

(assert (=> b!7168448 (= e!4305891 (and tp!1985390 tp!1985389))))

(declare-fun b!7168447 () Bool)

(assert (=> b!7168447 (= e!4305891 tp_is_empty!46225)))

(assert (= (and b!7168277 ((_ is ElementMatch!18327) (regOne!37166 (h!76044 (exprs!7779 setElem!52949))))) b!7168447))

(assert (= (and b!7168277 ((_ is Concat!27172) (regOne!37166 (h!76044 (exprs!7779 setElem!52949))))) b!7168448))

(assert (= (and b!7168277 ((_ is Star!18327) (regOne!37166 (h!76044 (exprs!7779 setElem!52949))))) b!7168449))

(assert (= (and b!7168277 ((_ is Union!18327) (regOne!37166 (h!76044 (exprs!7779 setElem!52949))))) b!7168450))

(declare-fun b!7168454 () Bool)

(declare-fun e!4305892 () Bool)

(declare-fun tp!1985391 () Bool)

(declare-fun tp!1985392 () Bool)

(assert (=> b!7168454 (= e!4305892 (and tp!1985391 tp!1985392))))

(declare-fun b!7168453 () Bool)

(declare-fun tp!1985393 () Bool)

(assert (=> b!7168453 (= e!4305892 tp!1985393)))

(assert (=> b!7168277 (= tp!1985333 e!4305892)))

(declare-fun b!7168452 () Bool)

(declare-fun tp!1985395 () Bool)

(declare-fun tp!1985394 () Bool)

(assert (=> b!7168452 (= e!4305892 (and tp!1985395 tp!1985394))))

(declare-fun b!7168451 () Bool)

(assert (=> b!7168451 (= e!4305892 tp_is_empty!46225)))

(assert (= (and b!7168277 ((_ is ElementMatch!18327) (regTwo!37166 (h!76044 (exprs!7779 setElem!52949))))) b!7168451))

(assert (= (and b!7168277 ((_ is Concat!27172) (regTwo!37166 (h!76044 (exprs!7779 setElem!52949))))) b!7168452))

(assert (= (and b!7168277 ((_ is Star!18327) (regTwo!37166 (h!76044 (exprs!7779 setElem!52949))))) b!7168453))

(assert (= (and b!7168277 ((_ is Union!18327) (regTwo!37166 (h!76044 (exprs!7779 setElem!52949))))) b!7168454))

(declare-fun b!7168455 () Bool)

(declare-fun e!4305893 () Bool)

(declare-fun tp!1985396 () Bool)

(declare-fun tp!1985397 () Bool)

(assert (=> b!7168455 (= e!4305893 (and tp!1985396 tp!1985397))))

(assert (=> b!7168245 (= tp!1985319 e!4305893)))

(assert (= (and b!7168245 ((_ is Cons!69596) (exprs!7779 (h!76045 res!2921365)))) b!7168455))

(declare-fun b!7168459 () Bool)

(declare-fun e!4305894 () Bool)

(declare-fun tp!1985398 () Bool)

(declare-fun tp!1985399 () Bool)

(assert (=> b!7168459 (= e!4305894 (and tp!1985398 tp!1985399))))

(declare-fun b!7168458 () Bool)

(declare-fun tp!1985400 () Bool)

(assert (=> b!7168458 (= e!4305894 tp!1985400)))

(assert (=> b!7168283 (= tp!1985341 e!4305894)))

(declare-fun b!7168457 () Bool)

(declare-fun tp!1985402 () Bool)

(declare-fun tp!1985401 () Bool)

(assert (=> b!7168457 (= e!4305894 (and tp!1985402 tp!1985401))))

(declare-fun b!7168456 () Bool)

(assert (=> b!7168456 (= e!4305894 tp_is_empty!46225)))

(assert (= (and b!7168283 ((_ is ElementMatch!18327) (h!76044 (exprs!7779 setElem!52955)))) b!7168456))

(assert (= (and b!7168283 ((_ is Concat!27172) (h!76044 (exprs!7779 setElem!52955)))) b!7168457))

(assert (= (and b!7168283 ((_ is Star!18327) (h!76044 (exprs!7779 setElem!52955)))) b!7168458))

(assert (= (and b!7168283 ((_ is Union!18327) (h!76044 (exprs!7779 setElem!52955)))) b!7168459))

(declare-fun b!7168460 () Bool)

(declare-fun e!4305895 () Bool)

(declare-fun tp!1985403 () Bool)

(declare-fun tp!1985404 () Bool)

(assert (=> b!7168460 (= e!4305895 (and tp!1985403 tp!1985404))))

(assert (=> b!7168283 (= tp!1985342 e!4305895)))

(assert (= (and b!7168283 ((_ is Cons!69596) (t!383739 (exprs!7779 setElem!52955)))) b!7168460))

(declare-fun b!7168464 () Bool)

(declare-fun e!4305896 () Bool)

(declare-fun tp!1985405 () Bool)

(declare-fun tp!1985406 () Bool)

(assert (=> b!7168464 (= e!4305896 (and tp!1985405 tp!1985406))))

(declare-fun b!7168463 () Bool)

(declare-fun tp!1985407 () Bool)

(assert (=> b!7168463 (= e!4305896 tp!1985407)))

(assert (=> b!7168279 (= tp!1985330 e!4305896)))

(declare-fun b!7168462 () Bool)

(declare-fun tp!1985409 () Bool)

(declare-fun tp!1985408 () Bool)

(assert (=> b!7168462 (= e!4305896 (and tp!1985409 tp!1985408))))

(declare-fun b!7168461 () Bool)

(assert (=> b!7168461 (= e!4305896 tp_is_empty!46225)))

(assert (= (and b!7168279 ((_ is ElementMatch!18327) (regOne!37167 (h!76044 (exprs!7779 setElem!52949))))) b!7168461))

(assert (= (and b!7168279 ((_ is Concat!27172) (regOne!37167 (h!76044 (exprs!7779 setElem!52949))))) b!7168462))

(assert (= (and b!7168279 ((_ is Star!18327) (regOne!37167 (h!76044 (exprs!7779 setElem!52949))))) b!7168463))

(assert (= (and b!7168279 ((_ is Union!18327) (regOne!37167 (h!76044 (exprs!7779 setElem!52949))))) b!7168464))

(declare-fun b!7168468 () Bool)

(declare-fun e!4305897 () Bool)

(declare-fun tp!1985410 () Bool)

(declare-fun tp!1985411 () Bool)

(assert (=> b!7168468 (= e!4305897 (and tp!1985410 tp!1985411))))

(declare-fun b!7168467 () Bool)

(declare-fun tp!1985412 () Bool)

(assert (=> b!7168467 (= e!4305897 tp!1985412)))

(assert (=> b!7168279 (= tp!1985331 e!4305897)))

(declare-fun b!7168466 () Bool)

(declare-fun tp!1985414 () Bool)

(declare-fun tp!1985413 () Bool)

(assert (=> b!7168466 (= e!4305897 (and tp!1985414 tp!1985413))))

(declare-fun b!7168465 () Bool)

(assert (=> b!7168465 (= e!4305897 tp_is_empty!46225)))

(assert (= (and b!7168279 ((_ is ElementMatch!18327) (regTwo!37167 (h!76044 (exprs!7779 setElem!52949))))) b!7168465))

(assert (= (and b!7168279 ((_ is Concat!27172) (regTwo!37167 (h!76044 (exprs!7779 setElem!52949))))) b!7168466))

(assert (= (and b!7168279 ((_ is Star!18327) (regTwo!37167 (h!76044 (exprs!7779 setElem!52949))))) b!7168467))

(assert (= (and b!7168279 ((_ is Union!18327) (regTwo!37167 (h!76044 (exprs!7779 setElem!52949))))) b!7168468))

(declare-fun b_lambda!273967 () Bool)

(assert (= b_lambda!273959 (or d!2232846 b_lambda!273967)))

(declare-fun bs!1892690 () Bool)

(declare-fun d!2232968 () Bool)

(assert (= bs!1892690 (and d!2232968 d!2232846)))

(assert (=> bs!1892690 (= (dynLambda!28343 lambda!437054 (h!76044 (t!383739 (exprs!7779 setElem!52949)))) (validRegex!9452 (h!76044 (t!383739 (exprs!7779 setElem!52949)))))))

(declare-fun m!7871016 () Bool)

(assert (=> bs!1892690 m!7871016))

(assert (=> b!7168369 d!2232968))

(declare-fun b_lambda!273969 () Bool)

(assert (= b_lambda!273965 (or d!2232868 b_lambda!273969)))

(declare-fun bs!1892691 () Bool)

(declare-fun d!2232970 () Bool)

(assert (= bs!1892691 (and d!2232970 d!2232868)))

(assert (=> bs!1892691 (= (dynLambda!28343 lambda!437066 (h!76044 lt!2570219)) (validRegex!9452 (h!76044 lt!2570219)))))

(declare-fun m!7871018 () Bool)

(assert (=> bs!1892691 m!7871018))

(assert (=> b!7168384 d!2232970))

(declare-fun b_lambda!273971 () Bool)

(assert (= b_lambda!273961 (or d!2232864 b_lambda!273971)))

(declare-fun bs!1892692 () Bool)

(declare-fun d!2232972 () Bool)

(assert (= bs!1892692 (and d!2232972 d!2232864)))

(assert (=> bs!1892692 (= (dynLambda!28343 lambda!437060 (h!76044 (unfocusZipperList!2311 (toList!11270 z!3530)))) (validRegex!9452 (h!76044 (unfocusZipperList!2311 (toList!11270 z!3530)))))))

(declare-fun m!7871020 () Bool)

(assert (=> bs!1892692 m!7871020))

(assert (=> b!7168380 d!2232972))

(declare-fun b_lambda!273973 () Bool)

(assert (= b_lambda!273963 (or d!2232890 b_lambda!273973)))

(declare-fun bs!1892693 () Bool)

(declare-fun d!2232976 () Bool)

(assert (= bs!1892693 (and d!2232976 d!2232890)))

(assert (=> bs!1892693 (= (dynLambda!28343 lambda!437068 (h!76044 (exprs!7779 setElem!52955))) (validRegex!9452 (h!76044 (exprs!7779 setElem!52955))))))

(declare-fun m!7871022 () Bool)

(assert (=> bs!1892693 m!7871022))

(assert (=> b!7168382 d!2232976))

(check-sat (not b!7168308) (not b!7168422) (not b!7168452) (not b!7168463) (not b!7168328) (not d!2232934) (not bs!1892690) (not b!7168445) (not b!7168336) (not b!7168428) (not b_lambda!273973) (not b!7168462) (not b!7168367) (not b!7168464) (not b!7168453) (not b!7168343) (not b!7168387) (not b!7168354) (not bm!653013) (not bm!653004) (not b!7168455) (not b!7168341) (not b!7168425) (not d!2232966) (not b!7168430) (not b!7168416) (not d!2232964) (not bm!653010) (not b!7168446) (not b!7168466) (not b!7168363) (not b!7168306) (not b!7168431) (not b!7168385) (not b_lambda!273969) (not b!7168454) (not b!7168424) (not b!7168347) (not bs!1892691) (not b!7168324) (not b!7168345) (not b!7168376) (not b!7168344) (not b!7168435) (not b!7168457) (not bm!653003) (not b!7168329) (not b!7168467) (not b_lambda!273971) (not b!7168437) (not b!7168300) (not bs!1892693) (not b!7168458) (not b!7168330) (not b!7168304) (not b!7168418) (not b!7168460) (not d!2232916) (not setNonEmpty!52958) (not b!7168419) (not bm!653016) (not b!7168348) (not b_lambda!273955) (not d!2232956) (not b!7168450) (not b!7168334) (not b!7168335) (not bm!653006) (not bm!653009) (not bm!653007) (not b!7168307) (not bm!653012) (not b!7168436) (not bm!653015) (not b!7168383) (not d!2232906) tp_is_empty!46225 (not b!7168434) (not b!7168393) (not b!7168381) (not b!7168315) (not b!7168301) (not b!7168432) (not b!7168426) (not b!7168386) (not b!7168444) (not b!7168459) (not bs!1892692) (not d!2232926) (not b!7168302) (not b_lambda!273967) (not b!7168448) (not b!7168468) (not b!7168395) (not b!7168449) (not b!7168338) (not d!2232908) (not d!2232914) (not b!7168370) (not b!7168368) (not b!7168332) (not d!2232904) (not b!7168420) (not b!7168346))
(check-sat)
(get-model)

(declare-fun d!2233048 () Bool)

(assert (=> d!2233048 (= (isEmpty!40186 (t!383739 (exprs!7779 (h!76045 (toList!11270 z!3530))))) ((_ is Nil!69596) (t!383739 (exprs!7779 (h!76045 (toList!11270 z!3530))))))))

(assert (=> b!7168420 d!2233048))

(declare-fun d!2233050 () Bool)

(declare-fun res!2921494 () Bool)

(declare-fun e!4306009 () Bool)

(assert (=> d!2233050 (=> res!2921494 e!4306009)))

(assert (=> d!2233050 (= res!2921494 ((_ is Nil!69596) (exprs!7779 setElem!52957)))))

(assert (=> d!2233050 (= (forall!17157 (exprs!7779 setElem!52957) lambda!437069) e!4306009)))

(declare-fun b!7168638 () Bool)

(declare-fun e!4306010 () Bool)

(assert (=> b!7168638 (= e!4306009 e!4306010)))

(declare-fun res!2921495 () Bool)

(assert (=> b!7168638 (=> (not res!2921495) (not e!4306010))))

(assert (=> b!7168638 (= res!2921495 (dynLambda!28343 lambda!437069 (h!76044 (exprs!7779 setElem!52957))))))

(declare-fun b!7168639 () Bool)

(assert (=> b!7168639 (= e!4306010 (forall!17157 (t!383739 (exprs!7779 setElem!52957)) lambda!437069))))

(assert (= (and d!2233050 (not res!2921494)) b!7168638))

(assert (= (and b!7168638 res!2921495) b!7168639))

(declare-fun b_lambda!273991 () Bool)

(assert (=> (not b_lambda!273991) (not b!7168638)))

(declare-fun m!7871192 () Bool)

(assert (=> b!7168638 m!7871192))

(declare-fun m!7871194 () Bool)

(assert (=> b!7168639 m!7871194))

(assert (=> d!2232904 d!2233050))

(declare-fun d!2233052 () Bool)

(declare-fun lt!2570245 () Bool)

(assert (=> d!2233052 (= lt!2570245 (select (content!14300 (t!383740 lt!2570222)) (h!76045 lt!2570222)))))

(declare-fun e!4306012 () Bool)

(assert (=> d!2233052 (= lt!2570245 e!4306012)))

(declare-fun res!2921496 () Bool)

(assert (=> d!2233052 (=> (not res!2921496) (not e!4306012))))

(assert (=> d!2233052 (= res!2921496 ((_ is Cons!69597) (t!383740 lt!2570222)))))

(assert (=> d!2233052 (= (contains!20709 (t!383740 lt!2570222) (h!76045 lt!2570222)) lt!2570245)))

(declare-fun b!7168640 () Bool)

(declare-fun e!4306011 () Bool)

(assert (=> b!7168640 (= e!4306012 e!4306011)))

(declare-fun res!2921497 () Bool)

(assert (=> b!7168640 (=> res!2921497 e!4306011)))

(assert (=> b!7168640 (= res!2921497 (= (h!76045 (t!383740 lt!2570222)) (h!76045 lt!2570222)))))

(declare-fun b!7168641 () Bool)

(assert (=> b!7168641 (= e!4306011 (contains!20709 (t!383740 (t!383740 lt!2570222)) (h!76045 lt!2570222)))))

(assert (= (and d!2233052 res!2921496) b!7168640))

(assert (= (and b!7168640 (not res!2921497)) b!7168641))

(assert (=> d!2233052 m!7870918))

(declare-fun m!7871196 () Bool)

(assert (=> d!2233052 m!7871196))

(declare-fun m!7871198 () Bool)

(assert (=> b!7168641 m!7871198))

(assert (=> b!7168344 d!2233052))

(declare-fun d!2233054 () Bool)

(assert (=> d!2233054 (= (isEmptyExpr!2086 lt!2570233) ((_ is EmptyExpr!18327) lt!2570233))))

(assert (=> b!7168422 d!2233054))

(declare-fun d!2233056 () Bool)

(declare-fun lt!2570246 () Bool)

(assert (=> d!2233056 (= lt!2570246 (select (content!14300 (t!383740 (t!383740 lt!2570208))) (h!76045 (t!383740 lt!2570208))))))

(declare-fun e!4306014 () Bool)

(assert (=> d!2233056 (= lt!2570246 e!4306014)))

(declare-fun res!2921498 () Bool)

(assert (=> d!2233056 (=> (not res!2921498) (not e!4306014))))

(assert (=> d!2233056 (= res!2921498 ((_ is Cons!69597) (t!383740 (t!383740 lt!2570208))))))

(assert (=> d!2233056 (= (contains!20709 (t!383740 (t!383740 lt!2570208)) (h!76045 (t!383740 lt!2570208))) lt!2570246)))

(declare-fun b!7168642 () Bool)

(declare-fun e!4306013 () Bool)

(assert (=> b!7168642 (= e!4306014 e!4306013)))

(declare-fun res!2921499 () Bool)

(assert (=> b!7168642 (=> res!2921499 e!4306013)))

(assert (=> b!7168642 (= res!2921499 (= (h!76045 (t!383740 (t!383740 lt!2570208))) (h!76045 (t!383740 lt!2570208))))))

(declare-fun b!7168643 () Bool)

(assert (=> b!7168643 (= e!4306013 (contains!20709 (t!383740 (t!383740 (t!383740 lt!2570208))) (h!76045 (t!383740 lt!2570208))))))

(assert (= (and d!2233056 res!2921498) b!7168642))

(assert (= (and b!7168642 (not res!2921499)) b!7168643))

(assert (=> d!2233056 m!7870922))

(declare-fun m!7871200 () Bool)

(assert (=> d!2233056 m!7871200))

(declare-fun m!7871202 () Bool)

(assert (=> b!7168643 m!7871202))

(assert (=> b!7168386 d!2233056))

(declare-fun d!2233058 () Bool)

(declare-fun c!1335468 () Bool)

(assert (=> d!2233058 (= c!1335468 ((_ is Nil!69597) (t!383740 res!2921365)))))

(declare-fun e!4306015 () (InoxSet Context!14558))

(assert (=> d!2233058 (= (content!14300 (t!383740 res!2921365)) e!4306015)))

(declare-fun b!7168644 () Bool)

(assert (=> b!7168644 (= e!4306015 ((as const (Array Context!14558 Bool)) false))))

(declare-fun b!7168645 () Bool)

(assert (=> b!7168645 (= e!4306015 ((_ map or) (store ((as const (Array Context!14558 Bool)) false) (h!76045 (t!383740 res!2921365)) true) (content!14300 (t!383740 (t!383740 res!2921365)))))))

(assert (= (and d!2233058 c!1335468) b!7168644))

(assert (= (and d!2233058 (not c!1335468)) b!7168645))

(declare-fun m!7871204 () Bool)

(assert (=> b!7168645 m!7871204))

(declare-fun m!7871206 () Bool)

(assert (=> b!7168645 m!7871206))

(assert (=> b!7168395 d!2233058))

(declare-fun bs!1892750 () Bool)

(declare-fun d!2233060 () Bool)

(assert (= bs!1892750 (and d!2233060 d!2232890)))

(declare-fun lambda!437087 () Int)

(assert (=> bs!1892750 (= lambda!437087 lambda!437068)))

(declare-fun bs!1892751 () Bool)

(assert (= bs!1892751 (and d!2233060 d!2232906)))

(assert (=> bs!1892751 (= lambda!437087 lambda!437070)))

(declare-fun bs!1892752 () Bool)

(assert (= bs!1892752 (and d!2233060 d!2232868)))

(assert (=> bs!1892752 (= lambda!437087 lambda!437066)))

(declare-fun bs!1892753 () Bool)

(assert (= bs!1892753 (and d!2233060 d!2232914)))

(assert (=> bs!1892753 (= lambda!437087 lambda!437072)))

(declare-fun bs!1892754 () Bool)

(assert (= bs!1892754 (and d!2233060 d!2232846)))

(assert (=> bs!1892754 (= lambda!437087 lambda!437054)))

(declare-fun bs!1892755 () Bool)

(assert (= bs!1892755 (and d!2233060 d!2232908)))

(assert (=> bs!1892755 (= lambda!437087 lambda!437071)))

(declare-fun bs!1892756 () Bool)

(assert (= bs!1892756 (and d!2233060 d!2232904)))

(assert (=> bs!1892756 (= lambda!437087 lambda!437069)))

(declare-fun bs!1892757 () Bool)

(assert (= bs!1892757 (and d!2233060 d!2232964)))

(assert (=> bs!1892757 (= lambda!437087 lambda!437076)))

(declare-fun bs!1892758 () Bool)

(assert (= bs!1892758 (and d!2233060 d!2232916)))

(assert (=> bs!1892758 (= lambda!437087 lambda!437073)))

(declare-fun bs!1892759 () Bool)

(assert (= bs!1892759 (and d!2233060 d!2232966)))

(assert (=> bs!1892759 (= lambda!437087 lambda!437077)))

(declare-fun bs!1892760 () Bool)

(assert (= bs!1892760 (and d!2233060 d!2232864)))

(assert (=> bs!1892760 (= lambda!437087 lambda!437060)))

(declare-fun b!7168646 () Bool)

(declare-fun e!4306016 () Bool)

(declare-fun lt!2570247 () Regex!18327)

(assert (=> b!7168646 (= e!4306016 (isConcat!1608 lt!2570247))))

(declare-fun b!7168647 () Bool)

(declare-fun e!4306020 () Regex!18327)

(assert (=> b!7168647 (= e!4306020 EmptyExpr!18327)))

(declare-fun e!4306017 () Bool)

(assert (=> d!2233060 e!4306017))

(declare-fun res!2921500 () Bool)

(assert (=> d!2233060 (=> (not res!2921500) (not e!4306017))))

(assert (=> d!2233060 (= res!2921500 (validRegex!9452 lt!2570247))))

(declare-fun e!4306019 () Regex!18327)

(assert (=> d!2233060 (= lt!2570247 e!4306019)))

(declare-fun c!1335472 () Bool)

(declare-fun e!4306018 () Bool)

(assert (=> d!2233060 (= c!1335472 e!4306018)))

(declare-fun res!2921501 () Bool)

(assert (=> d!2233060 (=> (not res!2921501) (not e!4306018))))

(assert (=> d!2233060 (= res!2921501 ((_ is Cons!69596) (exprs!7779 (h!76045 (t!383740 (toList!11270 z!3530))))))))

(assert (=> d!2233060 (forall!17157 (exprs!7779 (h!76045 (t!383740 (toList!11270 z!3530)))) lambda!437087)))

(assert (=> d!2233060 (= (generalisedConcat!2451 (exprs!7779 (h!76045 (t!383740 (toList!11270 z!3530))))) lt!2570247)))

(declare-fun b!7168648 () Bool)

(assert (=> b!7168648 (= e!4306020 (Concat!27172 (h!76044 (exprs!7779 (h!76045 (t!383740 (toList!11270 z!3530))))) (generalisedConcat!2451 (t!383739 (exprs!7779 (h!76045 (t!383740 (toList!11270 z!3530))))))))))

(declare-fun b!7168649 () Bool)

(assert (=> b!7168649 (= e!4306016 (= lt!2570247 (head!14630 (exprs!7779 (h!76045 (t!383740 (toList!11270 z!3530)))))))))

(declare-fun b!7168650 () Bool)

(assert (=> b!7168650 (= e!4306018 (isEmpty!40186 (t!383739 (exprs!7779 (h!76045 (t!383740 (toList!11270 z!3530)))))))))

(declare-fun b!7168651 () Bool)

(assert (=> b!7168651 (= e!4306019 e!4306020)))

(declare-fun c!1335470 () Bool)

(assert (=> b!7168651 (= c!1335470 ((_ is Cons!69596) (exprs!7779 (h!76045 (t!383740 (toList!11270 z!3530))))))))

(declare-fun b!7168652 () Bool)

(declare-fun e!4306021 () Bool)

(assert (=> b!7168652 (= e!4306021 (isEmptyExpr!2086 lt!2570247))))

(declare-fun b!7168653 () Bool)

(assert (=> b!7168653 (= e!4306019 (h!76044 (exprs!7779 (h!76045 (t!383740 (toList!11270 z!3530))))))))

(declare-fun b!7168654 () Bool)

(assert (=> b!7168654 (= e!4306017 e!4306021)))

(declare-fun c!1335469 () Bool)

(assert (=> b!7168654 (= c!1335469 (isEmpty!40186 (exprs!7779 (h!76045 (t!383740 (toList!11270 z!3530))))))))

(declare-fun b!7168655 () Bool)

(assert (=> b!7168655 (= e!4306021 e!4306016)))

(declare-fun c!1335471 () Bool)

(assert (=> b!7168655 (= c!1335471 (isEmpty!40186 (tail!14056 (exprs!7779 (h!76045 (t!383740 (toList!11270 z!3530)))))))))

(assert (= (and d!2233060 res!2921501) b!7168650))

(assert (= (and d!2233060 c!1335472) b!7168653))

(assert (= (and d!2233060 (not c!1335472)) b!7168651))

(assert (= (and b!7168651 c!1335470) b!7168648))

(assert (= (and b!7168651 (not c!1335470)) b!7168647))

(assert (= (and d!2233060 res!2921500) b!7168654))

(assert (= (and b!7168654 c!1335469) b!7168652))

(assert (= (and b!7168654 (not c!1335469)) b!7168655))

(assert (= (and b!7168655 c!1335471) b!7168649))

(assert (= (and b!7168655 (not c!1335471)) b!7168646))

(declare-fun m!7871208 () Bool)

(assert (=> b!7168650 m!7871208))

(declare-fun m!7871210 () Bool)

(assert (=> b!7168648 m!7871210))

(declare-fun m!7871212 () Bool)

(assert (=> d!2233060 m!7871212))

(declare-fun m!7871214 () Bool)

(assert (=> d!2233060 m!7871214))

(declare-fun m!7871216 () Bool)

(assert (=> b!7168655 m!7871216))

(assert (=> b!7168655 m!7871216))

(declare-fun m!7871218 () Bool)

(assert (=> b!7168655 m!7871218))

(declare-fun m!7871220 () Bool)

(assert (=> b!7168654 m!7871220))

(declare-fun m!7871222 () Bool)

(assert (=> b!7168652 m!7871222))

(declare-fun m!7871224 () Bool)

(assert (=> b!7168649 m!7871224))

(declare-fun m!7871226 () Bool)

(assert (=> b!7168646 m!7871226))

(assert (=> b!7168426 d!2233060))

(declare-fun bs!1892761 () Bool)

(declare-fun d!2233062 () Bool)

(assert (= bs!1892761 (and d!2233062 d!2232906)))

(declare-fun lambda!437088 () Int)

(assert (=> bs!1892761 (= lambda!437088 lambda!437070)))

(declare-fun bs!1892762 () Bool)

(assert (= bs!1892762 (and d!2233062 d!2232868)))

(assert (=> bs!1892762 (= lambda!437088 lambda!437066)))

(declare-fun bs!1892763 () Bool)

(assert (= bs!1892763 (and d!2233062 d!2232914)))

(assert (=> bs!1892763 (= lambda!437088 lambda!437072)))

(declare-fun bs!1892764 () Bool)

(assert (= bs!1892764 (and d!2233062 d!2232846)))

(assert (=> bs!1892764 (= lambda!437088 lambda!437054)))

(declare-fun bs!1892765 () Bool)

(assert (= bs!1892765 (and d!2233062 d!2232908)))

(assert (=> bs!1892765 (= lambda!437088 lambda!437071)))

(declare-fun bs!1892766 () Bool)

(assert (= bs!1892766 (and d!2233062 d!2232904)))

(assert (=> bs!1892766 (= lambda!437088 lambda!437069)))

(declare-fun bs!1892767 () Bool)

(assert (= bs!1892767 (and d!2233062 d!2232890)))

(assert (=> bs!1892767 (= lambda!437088 lambda!437068)))

(declare-fun bs!1892768 () Bool)

(assert (= bs!1892768 (and d!2233062 d!2233060)))

(assert (=> bs!1892768 (= lambda!437088 lambda!437087)))

(declare-fun bs!1892769 () Bool)

(assert (= bs!1892769 (and d!2233062 d!2232964)))

(assert (=> bs!1892769 (= lambda!437088 lambda!437076)))

(declare-fun bs!1892770 () Bool)

(assert (= bs!1892770 (and d!2233062 d!2232916)))

(assert (=> bs!1892770 (= lambda!437088 lambda!437073)))

(declare-fun bs!1892771 () Bool)

(assert (= bs!1892771 (and d!2233062 d!2232966)))

(assert (=> bs!1892771 (= lambda!437088 lambda!437077)))

(declare-fun bs!1892772 () Bool)

(assert (= bs!1892772 (and d!2233062 d!2232864)))

(assert (=> bs!1892772 (= lambda!437088 lambda!437060)))

(declare-fun lt!2570248 () List!69720)

(assert (=> d!2233062 (forall!17157 lt!2570248 lambda!437088)))

(declare-fun e!4306022 () List!69720)

(assert (=> d!2233062 (= lt!2570248 e!4306022)))

(declare-fun c!1335473 () Bool)

(assert (=> d!2233062 (= c!1335473 ((_ is Cons!69597) (t!383740 (t!383740 (toList!11270 z!3530)))))))

(assert (=> d!2233062 (= (unfocusZipperList!2311 (t!383740 (t!383740 (toList!11270 z!3530)))) lt!2570248)))

(declare-fun b!7168656 () Bool)

(assert (=> b!7168656 (= e!4306022 (Cons!69596 (generalisedConcat!2451 (exprs!7779 (h!76045 (t!383740 (t!383740 (toList!11270 z!3530)))))) (unfocusZipperList!2311 (t!383740 (t!383740 (t!383740 (toList!11270 z!3530)))))))))

(declare-fun b!7168657 () Bool)

(assert (=> b!7168657 (= e!4306022 Nil!69596)))

(assert (= (and d!2233062 c!1335473) b!7168656))

(assert (= (and d!2233062 (not c!1335473)) b!7168657))

(declare-fun m!7871228 () Bool)

(assert (=> d!2233062 m!7871228))

(declare-fun m!7871230 () Bool)

(assert (=> b!7168656 m!7871230))

(declare-fun m!7871232 () Bool)

(assert (=> b!7168656 m!7871232))

(assert (=> b!7168426 d!2233062))

(declare-fun bm!653032 () Bool)

(declare-fun call!653039 () Bool)

(declare-fun call!653038 () Bool)

(assert (=> bm!653032 (= call!653039 call!653038)))

(declare-fun b!7168658 () Bool)

(declare-fun e!4306024 () Bool)

(declare-fun call!653037 () Bool)

(assert (=> b!7168658 (= e!4306024 call!653037)))

(declare-fun b!7168659 () Bool)

(declare-fun res!2921505 () Bool)

(declare-fun e!4306027 () Bool)

(assert (=> b!7168659 (=> res!2921505 e!4306027)))

(assert (=> b!7168659 (= res!2921505 (not ((_ is Concat!27172) (h!76044 (exprs!7779 setElem!52955)))))))

(declare-fun e!4306025 () Bool)

(assert (=> b!7168659 (= e!4306025 e!4306027)))

(declare-fun d!2233064 () Bool)

(declare-fun res!2921506 () Bool)

(declare-fun e!4306026 () Bool)

(assert (=> d!2233064 (=> res!2921506 e!4306026)))

(assert (=> d!2233064 (= res!2921506 ((_ is ElementMatch!18327) (h!76044 (exprs!7779 setElem!52955))))))

(assert (=> d!2233064 (= (validRegex!9452 (h!76044 (exprs!7779 setElem!52955))) e!4306026)))

(declare-fun b!7168660 () Bool)

(declare-fun e!4306029 () Bool)

(assert (=> b!7168660 (= e!4306029 call!653037)))

(declare-fun b!7168661 () Bool)

(assert (=> b!7168661 (= e!4306027 e!4306029)))

(declare-fun res!2921503 () Bool)

(assert (=> b!7168661 (=> (not res!2921503) (not e!4306029))))

(assert (=> b!7168661 (= res!2921503 call!653039)))

(declare-fun b!7168662 () Bool)

(declare-fun e!4306023 () Bool)

(assert (=> b!7168662 (= e!4306026 e!4306023)))

(declare-fun c!1335474 () Bool)

(assert (=> b!7168662 (= c!1335474 ((_ is Star!18327) (h!76044 (exprs!7779 setElem!52955))))))

(declare-fun bm!653033 () Bool)

(declare-fun c!1335475 () Bool)

(assert (=> bm!653033 (= call!653038 (validRegex!9452 (ite c!1335474 (reg!18656 (h!76044 (exprs!7779 setElem!52955))) (ite c!1335475 (regOne!37167 (h!76044 (exprs!7779 setElem!52955))) (regOne!37166 (h!76044 (exprs!7779 setElem!52955)))))))))

(declare-fun b!7168663 () Bool)

(declare-fun e!4306028 () Bool)

(assert (=> b!7168663 (= e!4306023 e!4306028)))

(declare-fun res!2921502 () Bool)

(assert (=> b!7168663 (= res!2921502 (not (nullable!7762 (reg!18656 (h!76044 (exprs!7779 setElem!52955))))))))

(assert (=> b!7168663 (=> (not res!2921502) (not e!4306028))))

(declare-fun b!7168664 () Bool)

(declare-fun res!2921504 () Bool)

(assert (=> b!7168664 (=> (not res!2921504) (not e!4306024))))

(assert (=> b!7168664 (= res!2921504 call!653039)))

(assert (=> b!7168664 (= e!4306025 e!4306024)))

(declare-fun b!7168665 () Bool)

(assert (=> b!7168665 (= e!4306028 call!653038)))

(declare-fun b!7168666 () Bool)

(assert (=> b!7168666 (= e!4306023 e!4306025)))

(assert (=> b!7168666 (= c!1335475 ((_ is Union!18327) (h!76044 (exprs!7779 setElem!52955))))))

(declare-fun bm!653034 () Bool)

(assert (=> bm!653034 (= call!653037 (validRegex!9452 (ite c!1335475 (regTwo!37167 (h!76044 (exprs!7779 setElem!52955))) (regTwo!37166 (h!76044 (exprs!7779 setElem!52955))))))))

(assert (= (and d!2233064 (not res!2921506)) b!7168662))

(assert (= (and b!7168662 c!1335474) b!7168663))

(assert (= (and b!7168662 (not c!1335474)) b!7168666))

(assert (= (and b!7168663 res!2921502) b!7168665))

(assert (= (and b!7168666 c!1335475) b!7168664))

(assert (= (and b!7168666 (not c!1335475)) b!7168659))

(assert (= (and b!7168664 res!2921504) b!7168658))

(assert (= (and b!7168659 (not res!2921505)) b!7168661))

(assert (= (and b!7168661 res!2921503) b!7168660))

(assert (= (or b!7168664 b!7168661) bm!653032))

(assert (= (or b!7168658 b!7168660) bm!653034))

(assert (= (or b!7168665 bm!653032) bm!653033))

(declare-fun m!7871234 () Bool)

(assert (=> bm!653033 m!7871234))

(declare-fun m!7871236 () Bool)

(assert (=> b!7168663 m!7871236))

(declare-fun m!7871238 () Bool)

(assert (=> bm!653034 m!7871238))

(assert (=> bs!1892693 d!2233064))

(declare-fun d!2233066 () Bool)

(assert (=> d!2233066 (= (isEmpty!40186 (exprs!7779 (h!76045 (toList!11270 z!3530)))) ((_ is Nil!69596) (exprs!7779 (h!76045 (toList!11270 z!3530)))))))

(assert (=> b!7168424 d!2233066))

(declare-fun bm!653035 () Bool)

(declare-fun call!653042 () Bool)

(declare-fun call!653041 () Bool)

(assert (=> bm!653035 (= call!653042 call!653041)))

(declare-fun b!7168667 () Bool)

(declare-fun e!4306031 () Bool)

(declare-fun call!653040 () Bool)

(assert (=> b!7168667 (= e!4306031 call!653040)))

(declare-fun b!7168668 () Bool)

(declare-fun res!2921510 () Bool)

(declare-fun e!4306034 () Bool)

(assert (=> b!7168668 (=> res!2921510 e!4306034)))

(assert (=> b!7168668 (= res!2921510 (not ((_ is Concat!27172) (ite c!1335404 (reg!18656 lt!2570221) (ite c!1335405 (regOne!37167 lt!2570221) (regOne!37166 lt!2570221))))))))

(declare-fun e!4306032 () Bool)

(assert (=> b!7168668 (= e!4306032 e!4306034)))

(declare-fun d!2233068 () Bool)

(declare-fun res!2921511 () Bool)

(declare-fun e!4306033 () Bool)

(assert (=> d!2233068 (=> res!2921511 e!4306033)))

(assert (=> d!2233068 (= res!2921511 ((_ is ElementMatch!18327) (ite c!1335404 (reg!18656 lt!2570221) (ite c!1335405 (regOne!37167 lt!2570221) (regOne!37166 lt!2570221)))))))

(assert (=> d!2233068 (= (validRegex!9452 (ite c!1335404 (reg!18656 lt!2570221) (ite c!1335405 (regOne!37167 lt!2570221) (regOne!37166 lt!2570221)))) e!4306033)))

(declare-fun b!7168669 () Bool)

(declare-fun e!4306036 () Bool)

(assert (=> b!7168669 (= e!4306036 call!653040)))

(declare-fun b!7168670 () Bool)

(assert (=> b!7168670 (= e!4306034 e!4306036)))

(declare-fun res!2921508 () Bool)

(assert (=> b!7168670 (=> (not res!2921508) (not e!4306036))))

(assert (=> b!7168670 (= res!2921508 call!653042)))

(declare-fun b!7168671 () Bool)

(declare-fun e!4306030 () Bool)

(assert (=> b!7168671 (= e!4306033 e!4306030)))

(declare-fun c!1335476 () Bool)

(assert (=> b!7168671 (= c!1335476 ((_ is Star!18327) (ite c!1335404 (reg!18656 lt!2570221) (ite c!1335405 (regOne!37167 lt!2570221) (regOne!37166 lt!2570221)))))))

(declare-fun c!1335477 () Bool)

(declare-fun bm!653036 () Bool)

(assert (=> bm!653036 (= call!653041 (validRegex!9452 (ite c!1335476 (reg!18656 (ite c!1335404 (reg!18656 lt!2570221) (ite c!1335405 (regOne!37167 lt!2570221) (regOne!37166 lt!2570221)))) (ite c!1335477 (regOne!37167 (ite c!1335404 (reg!18656 lt!2570221) (ite c!1335405 (regOne!37167 lt!2570221) (regOne!37166 lt!2570221)))) (regOne!37166 (ite c!1335404 (reg!18656 lt!2570221) (ite c!1335405 (regOne!37167 lt!2570221) (regOne!37166 lt!2570221))))))))))

(declare-fun b!7168672 () Bool)

(declare-fun e!4306035 () Bool)

(assert (=> b!7168672 (= e!4306030 e!4306035)))

(declare-fun res!2921507 () Bool)

(assert (=> b!7168672 (= res!2921507 (not (nullable!7762 (reg!18656 (ite c!1335404 (reg!18656 lt!2570221) (ite c!1335405 (regOne!37167 lt!2570221) (regOne!37166 lt!2570221)))))))))

(assert (=> b!7168672 (=> (not res!2921507) (not e!4306035))))

(declare-fun b!7168673 () Bool)

(declare-fun res!2921509 () Bool)

(assert (=> b!7168673 (=> (not res!2921509) (not e!4306031))))

(assert (=> b!7168673 (= res!2921509 call!653042)))

(assert (=> b!7168673 (= e!4306032 e!4306031)))

(declare-fun b!7168674 () Bool)

(assert (=> b!7168674 (= e!4306035 call!653041)))

(declare-fun b!7168675 () Bool)

(assert (=> b!7168675 (= e!4306030 e!4306032)))

(assert (=> b!7168675 (= c!1335477 ((_ is Union!18327) (ite c!1335404 (reg!18656 lt!2570221) (ite c!1335405 (regOne!37167 lt!2570221) (regOne!37166 lt!2570221)))))))

(declare-fun bm!653037 () Bool)

(assert (=> bm!653037 (= call!653040 (validRegex!9452 (ite c!1335477 (regTwo!37167 (ite c!1335404 (reg!18656 lt!2570221) (ite c!1335405 (regOne!37167 lt!2570221) (regOne!37166 lt!2570221)))) (regTwo!37166 (ite c!1335404 (reg!18656 lt!2570221) (ite c!1335405 (regOne!37167 lt!2570221) (regOne!37166 lt!2570221)))))))))

(assert (= (and d!2233068 (not res!2921511)) b!7168671))

(assert (= (and b!7168671 c!1335476) b!7168672))

(assert (= (and b!7168671 (not c!1335476)) b!7168675))

(assert (= (and b!7168672 res!2921507) b!7168674))

(assert (= (and b!7168675 c!1335477) b!7168673))

(assert (= (and b!7168675 (not c!1335477)) b!7168668))

(assert (= (and b!7168673 res!2921509) b!7168667))

(assert (= (and b!7168668 (not res!2921510)) b!7168670))

(assert (= (and b!7168670 res!2921508) b!7168669))

(assert (= (or b!7168673 b!7168670) bm!653035))

(assert (= (or b!7168667 b!7168669) bm!653037))

(assert (= (or b!7168674 bm!653035) bm!653036))

(declare-fun m!7871240 () Bool)

(assert (=> bm!653036 m!7871240))

(declare-fun m!7871242 () Bool)

(assert (=> b!7168672 m!7871242))

(declare-fun m!7871244 () Bool)

(assert (=> bm!653037 m!7871244))

(assert (=> bm!653006 d!2233068))

(declare-fun d!2233070 () Bool)

(declare-fun lt!2570249 () Bool)

(assert (=> d!2233070 (= lt!2570249 (select (content!14300 (t!383740 res!2921365)) (h!76045 res!2921365)))))

(declare-fun e!4306038 () Bool)

(assert (=> d!2233070 (= lt!2570249 e!4306038)))

(declare-fun res!2921512 () Bool)

(assert (=> d!2233070 (=> (not res!2921512) (not e!4306038))))

(assert (=> d!2233070 (= res!2921512 ((_ is Cons!69597) (t!383740 res!2921365)))))

(assert (=> d!2233070 (= (contains!20709 (t!383740 res!2921365) (h!76045 res!2921365)) lt!2570249)))

(declare-fun b!7168676 () Bool)

(declare-fun e!4306037 () Bool)

(assert (=> b!7168676 (= e!4306038 e!4306037)))

(declare-fun res!2921513 () Bool)

(assert (=> b!7168676 (=> res!2921513 e!4306037)))

(assert (=> b!7168676 (= res!2921513 (= (h!76045 (t!383740 res!2921365)) (h!76045 res!2921365)))))

(declare-fun b!7168677 () Bool)

(assert (=> b!7168677 (= e!4306037 (contains!20709 (t!383740 (t!383740 res!2921365)) (h!76045 res!2921365)))))

(assert (= (and d!2233070 res!2921512) b!7168676))

(assert (= (and b!7168676 (not res!2921513)) b!7168677))

(assert (=> d!2233070 m!7870984))

(declare-fun m!7871246 () Bool)

(assert (=> d!2233070 m!7871246))

(declare-fun m!7871248 () Bool)

(assert (=> b!7168677 m!7871248))

(assert (=> b!7168367 d!2233070))

(declare-fun bm!653038 () Bool)

(declare-fun call!653045 () Bool)

(declare-fun call!653044 () Bool)

(assert (=> bm!653038 (= call!653045 call!653044)))

(declare-fun b!7168678 () Bool)

(declare-fun e!4306040 () Bool)

(declare-fun call!653043 () Bool)

(assert (=> b!7168678 (= e!4306040 call!653043)))

(declare-fun b!7168679 () Bool)

(declare-fun res!2921517 () Bool)

(declare-fun e!4306043 () Bool)

(assert (=> b!7168679 (=> res!2921517 e!4306043)))

(assert (=> b!7168679 (= res!2921517 (not ((_ is Concat!27172) lt!2570226)))))

(declare-fun e!4306041 () Bool)

(assert (=> b!7168679 (= e!4306041 e!4306043)))

(declare-fun d!2233072 () Bool)

(declare-fun res!2921518 () Bool)

(declare-fun e!4306042 () Bool)

(assert (=> d!2233072 (=> res!2921518 e!4306042)))

(assert (=> d!2233072 (= res!2921518 ((_ is ElementMatch!18327) lt!2570226))))

(assert (=> d!2233072 (= (validRegex!9452 lt!2570226) e!4306042)))

(declare-fun b!7168680 () Bool)

(declare-fun e!4306045 () Bool)

(assert (=> b!7168680 (= e!4306045 call!653043)))

(declare-fun b!7168681 () Bool)

(assert (=> b!7168681 (= e!4306043 e!4306045)))

(declare-fun res!2921515 () Bool)

(assert (=> b!7168681 (=> (not res!2921515) (not e!4306045))))

(assert (=> b!7168681 (= res!2921515 call!653045)))

(declare-fun b!7168682 () Bool)

(declare-fun e!4306039 () Bool)

(assert (=> b!7168682 (= e!4306042 e!4306039)))

(declare-fun c!1335478 () Bool)

(assert (=> b!7168682 (= c!1335478 ((_ is Star!18327) lt!2570226))))

(declare-fun c!1335479 () Bool)

(declare-fun bm!653039 () Bool)

(assert (=> bm!653039 (= call!653044 (validRegex!9452 (ite c!1335478 (reg!18656 lt!2570226) (ite c!1335479 (regOne!37167 lt!2570226) (regOne!37166 lt!2570226)))))))

(declare-fun b!7168683 () Bool)

(declare-fun e!4306044 () Bool)

(assert (=> b!7168683 (= e!4306039 e!4306044)))

(declare-fun res!2921514 () Bool)

(assert (=> b!7168683 (= res!2921514 (not (nullable!7762 (reg!18656 lt!2570226))))))

(assert (=> b!7168683 (=> (not res!2921514) (not e!4306044))))

(declare-fun b!7168684 () Bool)

(declare-fun res!2921516 () Bool)

(assert (=> b!7168684 (=> (not res!2921516) (not e!4306040))))

(assert (=> b!7168684 (= res!2921516 call!653045)))

(assert (=> b!7168684 (= e!4306041 e!4306040)))

(declare-fun b!7168685 () Bool)

(assert (=> b!7168685 (= e!4306044 call!653044)))

(declare-fun b!7168686 () Bool)

(assert (=> b!7168686 (= e!4306039 e!4306041)))

(assert (=> b!7168686 (= c!1335479 ((_ is Union!18327) lt!2570226))))

(declare-fun bm!653040 () Bool)

(assert (=> bm!653040 (= call!653043 (validRegex!9452 (ite c!1335479 (regTwo!37167 lt!2570226) (regTwo!37166 lt!2570226))))))

(assert (= (and d!2233072 (not res!2921518)) b!7168682))

(assert (= (and b!7168682 c!1335478) b!7168683))

(assert (= (and b!7168682 (not c!1335478)) b!7168686))

(assert (= (and b!7168683 res!2921514) b!7168685))

(assert (= (and b!7168686 c!1335479) b!7168684))

(assert (= (and b!7168686 (not c!1335479)) b!7168679))

(assert (= (and b!7168684 res!2921516) b!7168678))

(assert (= (and b!7168679 (not res!2921517)) b!7168681))

(assert (= (and b!7168681 res!2921515) b!7168680))

(assert (= (or b!7168684 b!7168681) bm!653038))

(assert (= (or b!7168678 b!7168680) bm!653040))

(assert (= (or b!7168685 bm!653038) bm!653039))

(declare-fun m!7871250 () Bool)

(assert (=> bm!653039 m!7871250))

(declare-fun m!7871252 () Bool)

(assert (=> b!7168683 m!7871252))

(declare-fun m!7871254 () Bool)

(assert (=> bm!653040 m!7871254))

(assert (=> d!2232914 d!2233072))

(declare-fun d!2233074 () Bool)

(declare-fun res!2921519 () Bool)

(declare-fun e!4306046 () Bool)

(assert (=> d!2233074 (=> res!2921519 e!4306046)))

(assert (=> d!2233074 (= res!2921519 ((_ is Nil!69596) (unfocusZipperList!2311 (toList!11270 (store ((as const (Array Context!14558 Bool)) false) (Context!14559 (Cons!69596 EmptyExpr!18327 Nil!69596)) true)))))))

(assert (=> d!2233074 (= (forall!17157 (unfocusZipperList!2311 (toList!11270 (store ((as const (Array Context!14558 Bool)) false) (Context!14559 (Cons!69596 EmptyExpr!18327 Nil!69596)) true))) lambda!437072) e!4306046)))

(declare-fun b!7168687 () Bool)

(declare-fun e!4306047 () Bool)

(assert (=> b!7168687 (= e!4306046 e!4306047)))

(declare-fun res!2921520 () Bool)

(assert (=> b!7168687 (=> (not res!2921520) (not e!4306047))))

(assert (=> b!7168687 (= res!2921520 (dynLambda!28343 lambda!437072 (h!76044 (unfocusZipperList!2311 (toList!11270 (store ((as const (Array Context!14558 Bool)) false) (Context!14559 (Cons!69596 EmptyExpr!18327 Nil!69596)) true))))))))

(declare-fun b!7168688 () Bool)

(assert (=> b!7168688 (= e!4306047 (forall!17157 (t!383739 (unfocusZipperList!2311 (toList!11270 (store ((as const (Array Context!14558 Bool)) false) (Context!14559 (Cons!69596 EmptyExpr!18327 Nil!69596)) true)))) lambda!437072))))

(assert (= (and d!2233074 (not res!2921519)) b!7168687))

(assert (= (and b!7168687 res!2921520) b!7168688))

(declare-fun b_lambda!273993 () Bool)

(assert (=> (not b_lambda!273993) (not b!7168687)))

(declare-fun m!7871256 () Bool)

(assert (=> b!7168687 m!7871256))

(declare-fun m!7871258 () Bool)

(assert (=> b!7168688 m!7871258))

(assert (=> d!2232914 d!2233074))

(declare-fun d!2233076 () Bool)

(declare-fun res!2921521 () Bool)

(declare-fun e!4306048 () Bool)

(assert (=> d!2233076 (=> res!2921521 e!4306048)))

(assert (=> d!2233076 (= res!2921521 ((_ is Nil!69596) (t!383739 (t!383739 (exprs!7779 setElem!52949)))))))

(assert (=> d!2233076 (= (forall!17157 (t!383739 (t!383739 (exprs!7779 setElem!52949))) lambda!437054) e!4306048)))

(declare-fun b!7168689 () Bool)

(declare-fun e!4306049 () Bool)

(assert (=> b!7168689 (= e!4306048 e!4306049)))

(declare-fun res!2921522 () Bool)

(assert (=> b!7168689 (=> (not res!2921522) (not e!4306049))))

(assert (=> b!7168689 (= res!2921522 (dynLambda!28343 lambda!437054 (h!76044 (t!383739 (t!383739 (exprs!7779 setElem!52949))))))))

(declare-fun b!7168690 () Bool)

(assert (=> b!7168690 (= e!4306049 (forall!17157 (t!383739 (t!383739 (t!383739 (exprs!7779 setElem!52949)))) lambda!437054))))

(assert (= (and d!2233076 (not res!2921521)) b!7168689))

(assert (= (and b!7168689 res!2921522) b!7168690))

(declare-fun b_lambda!273995 () Bool)

(assert (=> (not b_lambda!273995) (not b!7168689)))

(declare-fun m!7871260 () Bool)

(assert (=> b!7168689 m!7871260))

(declare-fun m!7871262 () Bool)

(assert (=> b!7168690 m!7871262))

(assert (=> b!7168370 d!2233076))

(declare-fun bs!1892773 () Bool)

(declare-fun d!2233078 () Bool)

(assert (= bs!1892773 (and d!2233078 d!2232906)))

(declare-fun lambda!437089 () Int)

(assert (=> bs!1892773 (= lambda!437089 lambda!437070)))

(declare-fun bs!1892774 () Bool)

(assert (= bs!1892774 (and d!2233078 d!2232868)))

(assert (=> bs!1892774 (= lambda!437089 lambda!437066)))

(declare-fun bs!1892775 () Bool)

(assert (= bs!1892775 (and d!2233078 d!2233062)))

(assert (=> bs!1892775 (= lambda!437089 lambda!437088)))

(declare-fun bs!1892776 () Bool)

(assert (= bs!1892776 (and d!2233078 d!2232914)))

(assert (=> bs!1892776 (= lambda!437089 lambda!437072)))

(declare-fun bs!1892777 () Bool)

(assert (= bs!1892777 (and d!2233078 d!2232846)))

(assert (=> bs!1892777 (= lambda!437089 lambda!437054)))

(declare-fun bs!1892778 () Bool)

(assert (= bs!1892778 (and d!2233078 d!2232908)))

(assert (=> bs!1892778 (= lambda!437089 lambda!437071)))

(declare-fun bs!1892779 () Bool)

(assert (= bs!1892779 (and d!2233078 d!2232904)))

(assert (=> bs!1892779 (= lambda!437089 lambda!437069)))

(declare-fun bs!1892780 () Bool)

(assert (= bs!1892780 (and d!2233078 d!2232890)))

(assert (=> bs!1892780 (= lambda!437089 lambda!437068)))

(declare-fun bs!1892781 () Bool)

(assert (= bs!1892781 (and d!2233078 d!2233060)))

(assert (=> bs!1892781 (= lambda!437089 lambda!437087)))

(declare-fun bs!1892782 () Bool)

(assert (= bs!1892782 (and d!2233078 d!2232964)))

(assert (=> bs!1892782 (= lambda!437089 lambda!437076)))

(declare-fun bs!1892783 () Bool)

(assert (= bs!1892783 (and d!2233078 d!2232916)))

(assert (=> bs!1892783 (= lambda!437089 lambda!437073)))

(declare-fun bs!1892784 () Bool)

(assert (= bs!1892784 (and d!2233078 d!2232966)))

(assert (=> bs!1892784 (= lambda!437089 lambda!437077)))

(declare-fun bs!1892785 () Bool)

(assert (= bs!1892785 (and d!2233078 d!2232864)))

(assert (=> bs!1892785 (= lambda!437089 lambda!437060)))

(declare-fun b!7168691 () Bool)

(declare-fun e!4306052 () Bool)

(assert (=> b!7168691 (= e!4306052 (isEmpty!40186 (t!383739 (t!383739 (unfocusZipperList!2311 (toList!11270 (store ((as const (Array Context!14558 Bool)) false) (Context!14559 (Cons!69596 EmptyExpr!18327 Nil!69596)) true)))))))))

(declare-fun b!7168692 () Bool)

(declare-fun e!4306055 () Bool)

(declare-fun e!4306050 () Bool)

(assert (=> b!7168692 (= e!4306055 e!4306050)))

(declare-fun c!1335482 () Bool)

(assert (=> b!7168692 (= c!1335482 (isEmpty!40186 (t!383739 (unfocusZipperList!2311 (toList!11270 (store ((as const (Array Context!14558 Bool)) false) (Context!14559 (Cons!69596 EmptyExpr!18327 Nil!69596)) true))))))))

(declare-fun b!7168693 () Bool)

(declare-fun e!4306051 () Bool)

(declare-fun lt!2570250 () Regex!18327)

(assert (=> b!7168693 (= e!4306051 (= lt!2570250 (head!14630 (t!383739 (unfocusZipperList!2311 (toList!11270 (store ((as const (Array Context!14558 Bool)) false) (Context!14559 (Cons!69596 EmptyExpr!18327 Nil!69596)) true)))))))))

(declare-fun b!7168694 () Bool)

(declare-fun e!4306053 () Regex!18327)

(assert (=> b!7168694 (= e!4306053 EmptyLang!18327)))

(declare-fun b!7168695 () Bool)

(assert (=> b!7168695 (= e!4306053 (Union!18327 (h!76044 (t!383739 (unfocusZipperList!2311 (toList!11270 (store ((as const (Array Context!14558 Bool)) false) (Context!14559 (Cons!69596 EmptyExpr!18327 Nil!69596)) true))))) (generalisedUnion!2755 (t!383739 (t!383739 (unfocusZipperList!2311 (toList!11270 (store ((as const (Array Context!14558 Bool)) false) (Context!14559 (Cons!69596 EmptyExpr!18327 Nil!69596)) true))))))))))

(declare-fun b!7168696 () Bool)

(declare-fun e!4306054 () Regex!18327)

(assert (=> b!7168696 (= e!4306054 (h!76044 (t!383739 (unfocusZipperList!2311 (toList!11270 (store ((as const (Array Context!14558 Bool)) false) (Context!14559 (Cons!69596 EmptyExpr!18327 Nil!69596)) true))))))))

(declare-fun b!7168697 () Bool)

(assert (=> b!7168697 (= e!4306050 (isEmptyLang!2140 lt!2570250))))

(declare-fun b!7168698 () Bool)

(assert (=> b!7168698 (= e!4306051 (isUnion!1568 lt!2570250))))

(assert (=> d!2233078 e!4306055))

(declare-fun res!2921524 () Bool)

(assert (=> d!2233078 (=> (not res!2921524) (not e!4306055))))

(assert (=> d!2233078 (= res!2921524 (validRegex!9452 lt!2570250))))

(assert (=> d!2233078 (= lt!2570250 e!4306054)))

(declare-fun c!1335483 () Bool)

(assert (=> d!2233078 (= c!1335483 e!4306052)))

(declare-fun res!2921523 () Bool)

(assert (=> d!2233078 (=> (not res!2921523) (not e!4306052))))

(assert (=> d!2233078 (= res!2921523 ((_ is Cons!69596) (t!383739 (unfocusZipperList!2311 (toList!11270 (store ((as const (Array Context!14558 Bool)) false) (Context!14559 (Cons!69596 EmptyExpr!18327 Nil!69596)) true))))))))

(assert (=> d!2233078 (forall!17157 (t!383739 (unfocusZipperList!2311 (toList!11270 (store ((as const (Array Context!14558 Bool)) false) (Context!14559 (Cons!69596 EmptyExpr!18327 Nil!69596)) true)))) lambda!437089)))

(assert (=> d!2233078 (= (generalisedUnion!2755 (t!383739 (unfocusZipperList!2311 (toList!11270 (store ((as const (Array Context!14558 Bool)) false) (Context!14559 (Cons!69596 EmptyExpr!18327 Nil!69596)) true))))) lt!2570250)))

(declare-fun b!7168699 () Bool)

(assert (=> b!7168699 (= e!4306050 e!4306051)))

(declare-fun c!1335481 () Bool)

(assert (=> b!7168699 (= c!1335481 (isEmpty!40186 (tail!14056 (t!383739 (unfocusZipperList!2311 (toList!11270 (store ((as const (Array Context!14558 Bool)) false) (Context!14559 (Cons!69596 EmptyExpr!18327 Nil!69596)) true)))))))))

(declare-fun b!7168700 () Bool)

(assert (=> b!7168700 (= e!4306054 e!4306053)))

(declare-fun c!1335480 () Bool)

(assert (=> b!7168700 (= c!1335480 ((_ is Cons!69596) (t!383739 (unfocusZipperList!2311 (toList!11270 (store ((as const (Array Context!14558 Bool)) false) (Context!14559 (Cons!69596 EmptyExpr!18327 Nil!69596)) true))))))))

(assert (= (and d!2233078 res!2921523) b!7168691))

(assert (= (and d!2233078 c!1335483) b!7168696))

(assert (= (and d!2233078 (not c!1335483)) b!7168700))

(assert (= (and b!7168700 c!1335480) b!7168695))

(assert (= (and b!7168700 (not c!1335480)) b!7168694))

(assert (= (and d!2233078 res!2921524) b!7168692))

(assert (= (and b!7168692 c!1335482) b!7168697))

(assert (= (and b!7168692 (not c!1335482)) b!7168699))

(assert (= (and b!7168699 c!1335481) b!7168693))

(assert (= (and b!7168699 (not c!1335481)) b!7168698))

(declare-fun m!7871264 () Bool)

(assert (=> b!7168695 m!7871264))

(declare-fun m!7871266 () Bool)

(assert (=> b!7168698 m!7871266))

(declare-fun m!7871268 () Bool)

(assert (=> d!2233078 m!7871268))

(declare-fun m!7871270 () Bool)

(assert (=> d!2233078 m!7871270))

(declare-fun m!7871272 () Bool)

(assert (=> b!7168693 m!7871272))

(declare-fun m!7871274 () Bool)

(assert (=> b!7168699 m!7871274))

(assert (=> b!7168699 m!7871274))

(declare-fun m!7871276 () Bool)

(assert (=> b!7168699 m!7871276))

(declare-fun m!7871278 () Bool)

(assert (=> b!7168697 m!7871278))

(declare-fun m!7871280 () Bool)

(assert (=> b!7168691 m!7871280))

(assert (=> b!7168692 m!7870906))

(assert (=> b!7168332 d!2233078))

(declare-fun bs!1892786 () Bool)

(declare-fun d!2233080 () Bool)

(assert (= bs!1892786 (and d!2233080 d!2232906)))

(declare-fun lambda!437090 () Int)

(assert (=> bs!1892786 (= lambda!437090 lambda!437070)))

(declare-fun bs!1892787 () Bool)

(assert (= bs!1892787 (and d!2233080 d!2232868)))

(assert (=> bs!1892787 (= lambda!437090 lambda!437066)))

(declare-fun bs!1892788 () Bool)

(assert (= bs!1892788 (and d!2233080 d!2233062)))

(assert (=> bs!1892788 (= lambda!437090 lambda!437088)))

(declare-fun bs!1892789 () Bool)

(assert (= bs!1892789 (and d!2233080 d!2232914)))

(assert (=> bs!1892789 (= lambda!437090 lambda!437072)))

(declare-fun bs!1892790 () Bool)

(assert (= bs!1892790 (and d!2233080 d!2232846)))

(assert (=> bs!1892790 (= lambda!437090 lambda!437054)))

(declare-fun bs!1892791 () Bool)

(assert (= bs!1892791 (and d!2233080 d!2232908)))

(assert (=> bs!1892791 (= lambda!437090 lambda!437071)))

(declare-fun bs!1892792 () Bool)

(assert (= bs!1892792 (and d!2233080 d!2232904)))

(assert (=> bs!1892792 (= lambda!437090 lambda!437069)))

(declare-fun bs!1892793 () Bool)

(assert (= bs!1892793 (and d!2233080 d!2232890)))

(assert (=> bs!1892793 (= lambda!437090 lambda!437068)))

(declare-fun bs!1892794 () Bool)

(assert (= bs!1892794 (and d!2233080 d!2233060)))

(assert (=> bs!1892794 (= lambda!437090 lambda!437087)))

(declare-fun bs!1892795 () Bool)

(assert (= bs!1892795 (and d!2233080 d!2233078)))

(assert (=> bs!1892795 (= lambda!437090 lambda!437089)))

(declare-fun bs!1892796 () Bool)

(assert (= bs!1892796 (and d!2233080 d!2232964)))

(assert (=> bs!1892796 (= lambda!437090 lambda!437076)))

(declare-fun bs!1892797 () Bool)

(assert (= bs!1892797 (and d!2233080 d!2232916)))

(assert (=> bs!1892797 (= lambda!437090 lambda!437073)))

(declare-fun bs!1892798 () Bool)

(assert (= bs!1892798 (and d!2233080 d!2232966)))

(assert (=> bs!1892798 (= lambda!437090 lambda!437077)))

(declare-fun bs!1892799 () Bool)

(assert (= bs!1892799 (and d!2233080 d!2232864)))

(assert (=> bs!1892799 (= lambda!437090 lambda!437060)))

(declare-fun b!7168701 () Bool)

(declare-fun e!4306056 () Bool)

(declare-fun lt!2570251 () Regex!18327)

(assert (=> b!7168701 (= e!4306056 (isConcat!1608 lt!2570251))))

(declare-fun b!7168702 () Bool)

(declare-fun e!4306060 () Regex!18327)

(assert (=> b!7168702 (= e!4306060 EmptyExpr!18327)))

(declare-fun e!4306057 () Bool)

(assert (=> d!2233080 e!4306057))

(declare-fun res!2921525 () Bool)

(assert (=> d!2233080 (=> (not res!2921525) (not e!4306057))))

(assert (=> d!2233080 (= res!2921525 (validRegex!9452 lt!2570251))))

(declare-fun e!4306059 () Regex!18327)

(assert (=> d!2233080 (= lt!2570251 e!4306059)))

(declare-fun c!1335487 () Bool)

(declare-fun e!4306058 () Bool)

(assert (=> d!2233080 (= c!1335487 e!4306058)))

(declare-fun res!2921526 () Bool)

(assert (=> d!2233080 (=> (not res!2921526) (not e!4306058))))

(assert (=> d!2233080 (= res!2921526 ((_ is Cons!69596) (exprs!7779 (h!76045 (toList!11270 (store ((as const (Array Context!14558 Bool)) false) (Context!14559 (Cons!69596 EmptyExpr!18327 Nil!69596)) true))))))))

(assert (=> d!2233080 (forall!17157 (exprs!7779 (h!76045 (toList!11270 (store ((as const (Array Context!14558 Bool)) false) (Context!14559 (Cons!69596 EmptyExpr!18327 Nil!69596)) true)))) lambda!437090)))

(assert (=> d!2233080 (= (generalisedConcat!2451 (exprs!7779 (h!76045 (toList!11270 (store ((as const (Array Context!14558 Bool)) false) (Context!14559 (Cons!69596 EmptyExpr!18327 Nil!69596)) true))))) lt!2570251)))

(declare-fun b!7168703 () Bool)

(assert (=> b!7168703 (= e!4306060 (Concat!27172 (h!76044 (exprs!7779 (h!76045 (toList!11270 (store ((as const (Array Context!14558 Bool)) false) (Context!14559 (Cons!69596 EmptyExpr!18327 Nil!69596)) true))))) (generalisedConcat!2451 (t!383739 (exprs!7779 (h!76045 (toList!11270 (store ((as const (Array Context!14558 Bool)) false) (Context!14559 (Cons!69596 EmptyExpr!18327 Nil!69596)) true))))))))))

(declare-fun b!7168704 () Bool)

(assert (=> b!7168704 (= e!4306056 (= lt!2570251 (head!14630 (exprs!7779 (h!76045 (toList!11270 (store ((as const (Array Context!14558 Bool)) false) (Context!14559 (Cons!69596 EmptyExpr!18327 Nil!69596)) true)))))))))

(declare-fun b!7168705 () Bool)

(assert (=> b!7168705 (= e!4306058 (isEmpty!40186 (t!383739 (exprs!7779 (h!76045 (toList!11270 (store ((as const (Array Context!14558 Bool)) false) (Context!14559 (Cons!69596 EmptyExpr!18327 Nil!69596)) true)))))))))

(declare-fun b!7168706 () Bool)

(assert (=> b!7168706 (= e!4306059 e!4306060)))

(declare-fun c!1335485 () Bool)

(assert (=> b!7168706 (= c!1335485 ((_ is Cons!69596) (exprs!7779 (h!76045 (toList!11270 (store ((as const (Array Context!14558 Bool)) false) (Context!14559 (Cons!69596 EmptyExpr!18327 Nil!69596)) true))))))))

(declare-fun b!7168707 () Bool)

(declare-fun e!4306061 () Bool)

(assert (=> b!7168707 (= e!4306061 (isEmptyExpr!2086 lt!2570251))))

(declare-fun b!7168708 () Bool)

(assert (=> b!7168708 (= e!4306059 (h!76044 (exprs!7779 (h!76045 (toList!11270 (store ((as const (Array Context!14558 Bool)) false) (Context!14559 (Cons!69596 EmptyExpr!18327 Nil!69596)) true))))))))

(declare-fun b!7168709 () Bool)

(assert (=> b!7168709 (= e!4306057 e!4306061)))

(declare-fun c!1335484 () Bool)

(assert (=> b!7168709 (= c!1335484 (isEmpty!40186 (exprs!7779 (h!76045 (toList!11270 (store ((as const (Array Context!14558 Bool)) false) (Context!14559 (Cons!69596 EmptyExpr!18327 Nil!69596)) true))))))))

(declare-fun b!7168710 () Bool)

(assert (=> b!7168710 (= e!4306061 e!4306056)))

(declare-fun c!1335486 () Bool)

(assert (=> b!7168710 (= c!1335486 (isEmpty!40186 (tail!14056 (exprs!7779 (h!76045 (toList!11270 (store ((as const (Array Context!14558 Bool)) false) (Context!14559 (Cons!69596 EmptyExpr!18327 Nil!69596)) true)))))))))

(assert (= (and d!2233080 res!2921526) b!7168705))

(assert (= (and d!2233080 c!1335487) b!7168708))

(assert (= (and d!2233080 (not c!1335487)) b!7168706))

(assert (= (and b!7168706 c!1335485) b!7168703))

(assert (= (and b!7168706 (not c!1335485)) b!7168702))

(assert (= (and d!2233080 res!2921525) b!7168709))

(assert (= (and b!7168709 c!1335484) b!7168707))

(assert (= (and b!7168709 (not c!1335484)) b!7168710))

(assert (= (and b!7168710 c!1335486) b!7168704))

(assert (= (and b!7168710 (not c!1335486)) b!7168701))

(declare-fun m!7871282 () Bool)

(assert (=> b!7168705 m!7871282))

(declare-fun m!7871284 () Bool)

(assert (=> b!7168703 m!7871284))

(declare-fun m!7871286 () Bool)

(assert (=> d!2233080 m!7871286))

(declare-fun m!7871288 () Bool)

(assert (=> d!2233080 m!7871288))

(declare-fun m!7871290 () Bool)

(assert (=> b!7168710 m!7871290))

(assert (=> b!7168710 m!7871290))

(declare-fun m!7871292 () Bool)

(assert (=> b!7168710 m!7871292))

(declare-fun m!7871294 () Bool)

(assert (=> b!7168709 m!7871294))

(declare-fun m!7871296 () Bool)

(assert (=> b!7168707 m!7871296))

(declare-fun m!7871298 () Bool)

(assert (=> b!7168704 m!7871298))

(declare-fun m!7871300 () Bool)

(assert (=> b!7168701 m!7871300))

(assert (=> b!7168338 d!2233080))

(declare-fun bs!1892800 () Bool)

(declare-fun d!2233082 () Bool)

(assert (= bs!1892800 (and d!2233082 d!2232906)))

(declare-fun lambda!437091 () Int)

(assert (=> bs!1892800 (= lambda!437091 lambda!437070)))

(declare-fun bs!1892801 () Bool)

(assert (= bs!1892801 (and d!2233082 d!2233080)))

(assert (=> bs!1892801 (= lambda!437091 lambda!437090)))

(declare-fun bs!1892802 () Bool)

(assert (= bs!1892802 (and d!2233082 d!2232868)))

(assert (=> bs!1892802 (= lambda!437091 lambda!437066)))

(declare-fun bs!1892803 () Bool)

(assert (= bs!1892803 (and d!2233082 d!2233062)))

(assert (=> bs!1892803 (= lambda!437091 lambda!437088)))

(declare-fun bs!1892804 () Bool)

(assert (= bs!1892804 (and d!2233082 d!2232914)))

(assert (=> bs!1892804 (= lambda!437091 lambda!437072)))

(declare-fun bs!1892805 () Bool)

(assert (= bs!1892805 (and d!2233082 d!2232846)))

(assert (=> bs!1892805 (= lambda!437091 lambda!437054)))

(declare-fun bs!1892806 () Bool)

(assert (= bs!1892806 (and d!2233082 d!2232908)))

(assert (=> bs!1892806 (= lambda!437091 lambda!437071)))

(declare-fun bs!1892807 () Bool)

(assert (= bs!1892807 (and d!2233082 d!2232904)))

(assert (=> bs!1892807 (= lambda!437091 lambda!437069)))

(declare-fun bs!1892808 () Bool)

(assert (= bs!1892808 (and d!2233082 d!2232890)))

(assert (=> bs!1892808 (= lambda!437091 lambda!437068)))

(declare-fun bs!1892809 () Bool)

(assert (= bs!1892809 (and d!2233082 d!2233060)))

(assert (=> bs!1892809 (= lambda!437091 lambda!437087)))

(declare-fun bs!1892810 () Bool)

(assert (= bs!1892810 (and d!2233082 d!2233078)))

(assert (=> bs!1892810 (= lambda!437091 lambda!437089)))

(declare-fun bs!1892811 () Bool)

(assert (= bs!1892811 (and d!2233082 d!2232964)))

(assert (=> bs!1892811 (= lambda!437091 lambda!437076)))

(declare-fun bs!1892812 () Bool)

(assert (= bs!1892812 (and d!2233082 d!2232916)))

(assert (=> bs!1892812 (= lambda!437091 lambda!437073)))

(declare-fun bs!1892813 () Bool)

(assert (= bs!1892813 (and d!2233082 d!2232966)))

(assert (=> bs!1892813 (= lambda!437091 lambda!437077)))

(declare-fun bs!1892814 () Bool)

(assert (= bs!1892814 (and d!2233082 d!2232864)))

(assert (=> bs!1892814 (= lambda!437091 lambda!437060)))

(declare-fun lt!2570252 () List!69720)

(assert (=> d!2233082 (forall!17157 lt!2570252 lambda!437091)))

(declare-fun e!4306062 () List!69720)

(assert (=> d!2233082 (= lt!2570252 e!4306062)))

(declare-fun c!1335488 () Bool)

(assert (=> d!2233082 (= c!1335488 ((_ is Cons!69597) (t!383740 (toList!11270 (store ((as const (Array Context!14558 Bool)) false) (Context!14559 (Cons!69596 EmptyExpr!18327 Nil!69596)) true)))))))

(assert (=> d!2233082 (= (unfocusZipperList!2311 (t!383740 (toList!11270 (store ((as const (Array Context!14558 Bool)) false) (Context!14559 (Cons!69596 EmptyExpr!18327 Nil!69596)) true)))) lt!2570252)))

(declare-fun b!7168711 () Bool)

(assert (=> b!7168711 (= e!4306062 (Cons!69596 (generalisedConcat!2451 (exprs!7779 (h!76045 (t!383740 (toList!11270 (store ((as const (Array Context!14558 Bool)) false) (Context!14559 (Cons!69596 EmptyExpr!18327 Nil!69596)) true)))))) (unfocusZipperList!2311 (t!383740 (t!383740 (toList!11270 (store ((as const (Array Context!14558 Bool)) false) (Context!14559 (Cons!69596 EmptyExpr!18327 Nil!69596)) true)))))))))

(declare-fun b!7168712 () Bool)

(assert (=> b!7168712 (= e!4306062 Nil!69596)))

(assert (= (and d!2233082 c!1335488) b!7168711))

(assert (= (and d!2233082 (not c!1335488)) b!7168712))

(declare-fun m!7871302 () Bool)

(assert (=> d!2233082 m!7871302))

(declare-fun m!7871304 () Bool)

(assert (=> b!7168711 m!7871304))

(declare-fun m!7871306 () Bool)

(assert (=> b!7168711 m!7871306))

(assert (=> b!7168338 d!2233082))

(declare-fun d!2233084 () Bool)

(declare-fun res!2921527 () Bool)

(declare-fun e!4306063 () Bool)

(assert (=> d!2233084 (=> res!2921527 e!4306063)))

(assert (=> d!2233084 (= res!2921527 ((_ is Nil!69596) (t!383739 (exprs!7779 setElem!52955))))))

(assert (=> d!2233084 (= (forall!17157 (t!383739 (exprs!7779 setElem!52955)) lambda!437068) e!4306063)))

(declare-fun b!7168713 () Bool)

(declare-fun e!4306064 () Bool)

(assert (=> b!7168713 (= e!4306063 e!4306064)))

(declare-fun res!2921528 () Bool)

(assert (=> b!7168713 (=> (not res!2921528) (not e!4306064))))

(assert (=> b!7168713 (= res!2921528 (dynLambda!28343 lambda!437068 (h!76044 (t!383739 (exprs!7779 setElem!52955)))))))

(declare-fun b!7168714 () Bool)

(assert (=> b!7168714 (= e!4306064 (forall!17157 (t!383739 (t!383739 (exprs!7779 setElem!52955))) lambda!437068))))

(assert (= (and d!2233084 (not res!2921527)) b!7168713))

(assert (= (and b!7168713 res!2921528) b!7168714))

(declare-fun b_lambda!273997 () Bool)

(assert (=> (not b_lambda!273997) (not b!7168713)))

(declare-fun m!7871308 () Bool)

(assert (=> b!7168713 m!7871308))

(declare-fun m!7871310 () Bool)

(assert (=> b!7168714 m!7871310))

(assert (=> b!7168383 d!2233084))

(declare-fun d!2233086 () Bool)

(assert (=> d!2233086 (= (isConcat!1608 lt!2570233) ((_ is Concat!27172) lt!2570233))))

(assert (=> b!7168416 d!2233086))

(declare-fun bs!1892815 () Bool)

(declare-fun d!2233088 () Bool)

(assert (= bs!1892815 (and d!2233088 d!2232906)))

(declare-fun lambda!437092 () Int)

(assert (=> bs!1892815 (= lambda!437092 lambda!437070)))

(declare-fun bs!1892816 () Bool)

(assert (= bs!1892816 (and d!2233088 d!2233080)))

(assert (=> bs!1892816 (= lambda!437092 lambda!437090)))

(declare-fun bs!1892817 () Bool)

(assert (= bs!1892817 (and d!2233088 d!2232868)))

(assert (=> bs!1892817 (= lambda!437092 lambda!437066)))

(declare-fun bs!1892818 () Bool)

(assert (= bs!1892818 (and d!2233088 d!2233082)))

(assert (=> bs!1892818 (= lambda!437092 lambda!437091)))

(declare-fun bs!1892819 () Bool)

(assert (= bs!1892819 (and d!2233088 d!2233062)))

(assert (=> bs!1892819 (= lambda!437092 lambda!437088)))

(declare-fun bs!1892820 () Bool)

(assert (= bs!1892820 (and d!2233088 d!2232914)))

(assert (=> bs!1892820 (= lambda!437092 lambda!437072)))

(declare-fun bs!1892821 () Bool)

(assert (= bs!1892821 (and d!2233088 d!2232846)))

(assert (=> bs!1892821 (= lambda!437092 lambda!437054)))

(declare-fun bs!1892822 () Bool)

(assert (= bs!1892822 (and d!2233088 d!2232908)))

(assert (=> bs!1892822 (= lambda!437092 lambda!437071)))

(declare-fun bs!1892823 () Bool)

(assert (= bs!1892823 (and d!2233088 d!2232904)))

(assert (=> bs!1892823 (= lambda!437092 lambda!437069)))

(declare-fun bs!1892824 () Bool)

(assert (= bs!1892824 (and d!2233088 d!2232890)))

(assert (=> bs!1892824 (= lambda!437092 lambda!437068)))

(declare-fun bs!1892825 () Bool)

(assert (= bs!1892825 (and d!2233088 d!2233060)))

(assert (=> bs!1892825 (= lambda!437092 lambda!437087)))

(declare-fun bs!1892826 () Bool)

(assert (= bs!1892826 (and d!2233088 d!2233078)))

(assert (=> bs!1892826 (= lambda!437092 lambda!437089)))

(declare-fun bs!1892827 () Bool)

(assert (= bs!1892827 (and d!2233088 d!2232964)))

(assert (=> bs!1892827 (= lambda!437092 lambda!437076)))

(declare-fun bs!1892828 () Bool)

(assert (= bs!1892828 (and d!2233088 d!2232916)))

(assert (=> bs!1892828 (= lambda!437092 lambda!437073)))

(declare-fun bs!1892829 () Bool)

(assert (= bs!1892829 (and d!2233088 d!2232966)))

(assert (=> bs!1892829 (= lambda!437092 lambda!437077)))

(declare-fun bs!1892830 () Bool)

(assert (= bs!1892830 (and d!2233088 d!2232864)))

(assert (=> bs!1892830 (= lambda!437092 lambda!437060)))

(declare-fun b!7168715 () Bool)

(declare-fun e!4306065 () Bool)

(declare-fun lt!2570253 () Regex!18327)

(assert (=> b!7168715 (= e!4306065 (isConcat!1608 lt!2570253))))

(declare-fun b!7168716 () Bool)

(declare-fun e!4306069 () Regex!18327)

(assert (=> b!7168716 (= e!4306069 EmptyExpr!18327)))

(declare-fun e!4306066 () Bool)

(assert (=> d!2233088 e!4306066))

(declare-fun res!2921529 () Bool)

(assert (=> d!2233088 (=> (not res!2921529) (not e!4306066))))

(assert (=> d!2233088 (= res!2921529 (validRegex!9452 lt!2570253))))

(declare-fun e!4306068 () Regex!18327)

(assert (=> d!2233088 (= lt!2570253 e!4306068)))

(declare-fun c!1335492 () Bool)

(declare-fun e!4306067 () Bool)

(assert (=> d!2233088 (= c!1335492 e!4306067)))

(declare-fun res!2921530 () Bool)

(assert (=> d!2233088 (=> (not res!2921530) (not e!4306067))))

(assert (=> d!2233088 (= res!2921530 ((_ is Cons!69596) (t!383739 (exprs!7779 (h!76045 (toList!11270 z!3530))))))))

(assert (=> d!2233088 (forall!17157 (t!383739 (exprs!7779 (h!76045 (toList!11270 z!3530)))) lambda!437092)))

(assert (=> d!2233088 (= (generalisedConcat!2451 (t!383739 (exprs!7779 (h!76045 (toList!11270 z!3530))))) lt!2570253)))

(declare-fun b!7168717 () Bool)

(assert (=> b!7168717 (= e!4306069 (Concat!27172 (h!76044 (t!383739 (exprs!7779 (h!76045 (toList!11270 z!3530))))) (generalisedConcat!2451 (t!383739 (t!383739 (exprs!7779 (h!76045 (toList!11270 z!3530))))))))))

(declare-fun b!7168718 () Bool)

(assert (=> b!7168718 (= e!4306065 (= lt!2570253 (head!14630 (t!383739 (exprs!7779 (h!76045 (toList!11270 z!3530)))))))))

(declare-fun b!7168719 () Bool)

(assert (=> b!7168719 (= e!4306067 (isEmpty!40186 (t!383739 (t!383739 (exprs!7779 (h!76045 (toList!11270 z!3530)))))))))

(declare-fun b!7168720 () Bool)

(assert (=> b!7168720 (= e!4306068 e!4306069)))

(declare-fun c!1335490 () Bool)

(assert (=> b!7168720 (= c!1335490 ((_ is Cons!69596) (t!383739 (exprs!7779 (h!76045 (toList!11270 z!3530))))))))

(declare-fun b!7168721 () Bool)

(declare-fun e!4306070 () Bool)

(assert (=> b!7168721 (= e!4306070 (isEmptyExpr!2086 lt!2570253))))

(declare-fun b!7168722 () Bool)

(assert (=> b!7168722 (= e!4306068 (h!76044 (t!383739 (exprs!7779 (h!76045 (toList!11270 z!3530))))))))

(declare-fun b!7168723 () Bool)

(assert (=> b!7168723 (= e!4306066 e!4306070)))

(declare-fun c!1335489 () Bool)

(assert (=> b!7168723 (= c!1335489 (isEmpty!40186 (t!383739 (exprs!7779 (h!76045 (toList!11270 z!3530))))))))

(declare-fun b!7168724 () Bool)

(assert (=> b!7168724 (= e!4306070 e!4306065)))

(declare-fun c!1335491 () Bool)

(assert (=> b!7168724 (= c!1335491 (isEmpty!40186 (tail!14056 (t!383739 (exprs!7779 (h!76045 (toList!11270 z!3530)))))))))

(assert (= (and d!2233088 res!2921530) b!7168719))

(assert (= (and d!2233088 c!1335492) b!7168722))

(assert (= (and d!2233088 (not c!1335492)) b!7168720))

(assert (= (and b!7168720 c!1335490) b!7168717))

(assert (= (and b!7168720 (not c!1335490)) b!7168716))

(assert (= (and d!2233088 res!2921529) b!7168723))

(assert (= (and b!7168723 c!1335489) b!7168721))

(assert (= (and b!7168723 (not c!1335489)) b!7168724))

(assert (= (and b!7168724 c!1335491) b!7168718))

(assert (= (and b!7168724 (not c!1335491)) b!7168715))

(declare-fun m!7871312 () Bool)

(assert (=> b!7168719 m!7871312))

(declare-fun m!7871314 () Bool)

(assert (=> b!7168717 m!7871314))

(declare-fun m!7871316 () Bool)

(assert (=> d!2233088 m!7871316))

(declare-fun m!7871318 () Bool)

(assert (=> d!2233088 m!7871318))

(declare-fun m!7871320 () Bool)

(assert (=> b!7168724 m!7871320))

(assert (=> b!7168724 m!7871320))

(declare-fun m!7871322 () Bool)

(assert (=> b!7168724 m!7871322))

(assert (=> b!7168723 m!7870986))

(declare-fun m!7871324 () Bool)

(assert (=> b!7168721 m!7871324))

(declare-fun m!7871326 () Bool)

(assert (=> b!7168718 m!7871326))

(declare-fun m!7871328 () Bool)

(assert (=> b!7168715 m!7871328))

(assert (=> b!7168418 d!2233088))

(declare-fun d!2233090 () Bool)

(assert (=> d!2233090 (= (isEmptyLang!2140 lt!2570226) ((_ is EmptyLang!18327) lt!2570226))))

(assert (=> b!7168334 d!2233090))

(declare-fun d!2233092 () Bool)

(declare-fun res!2921531 () Bool)

(declare-fun e!4306071 () Bool)

(assert (=> d!2233092 (=> res!2921531 e!4306071)))

(assert (=> d!2233092 (= res!2921531 ((_ is Nil!69596) lt!2570234))))

(assert (=> d!2233092 (= (forall!17157 lt!2570234 lambda!437077) e!4306071)))

(declare-fun b!7168725 () Bool)

(declare-fun e!4306072 () Bool)

(assert (=> b!7168725 (= e!4306071 e!4306072)))

(declare-fun res!2921532 () Bool)

(assert (=> b!7168725 (=> (not res!2921532) (not e!4306072))))

(assert (=> b!7168725 (= res!2921532 (dynLambda!28343 lambda!437077 (h!76044 lt!2570234)))))

(declare-fun b!7168726 () Bool)

(assert (=> b!7168726 (= e!4306072 (forall!17157 (t!383739 lt!2570234) lambda!437077))))

(assert (= (and d!2233092 (not res!2921531)) b!7168725))

(assert (= (and b!7168725 res!2921532) b!7168726))

(declare-fun b_lambda!273999 () Bool)

(assert (=> (not b_lambda!273999) (not b!7168725)))

(declare-fun m!7871330 () Bool)

(assert (=> b!7168725 m!7871330))

(declare-fun m!7871332 () Bool)

(assert (=> b!7168726 m!7871332))

(assert (=> d!2232966 d!2233092))

(declare-fun bm!653041 () Bool)

(declare-fun call!653048 () Bool)

(declare-fun call!653047 () Bool)

(assert (=> bm!653041 (= call!653048 call!653047)))

(declare-fun b!7168727 () Bool)

(declare-fun e!4306074 () Bool)

(declare-fun call!653046 () Bool)

(assert (=> b!7168727 (= e!4306074 call!653046)))

(declare-fun b!7168728 () Bool)

(declare-fun res!2921536 () Bool)

(declare-fun e!4306077 () Bool)

(assert (=> b!7168728 (=> res!2921536 e!4306077)))

(assert (=> b!7168728 (= res!2921536 (not ((_ is Concat!27172) lt!2570225)))))

(declare-fun e!4306075 () Bool)

(assert (=> b!7168728 (= e!4306075 e!4306077)))

(declare-fun d!2233094 () Bool)

(declare-fun res!2921537 () Bool)

(declare-fun e!4306076 () Bool)

(assert (=> d!2233094 (=> res!2921537 e!4306076)))

(assert (=> d!2233094 (= res!2921537 ((_ is ElementMatch!18327) lt!2570225))))

(assert (=> d!2233094 (= (validRegex!9452 lt!2570225) e!4306076)))

(declare-fun b!7168729 () Bool)

(declare-fun e!4306079 () Bool)

(assert (=> b!7168729 (= e!4306079 call!653046)))

(declare-fun b!7168730 () Bool)

(assert (=> b!7168730 (= e!4306077 e!4306079)))

(declare-fun res!2921534 () Bool)

(assert (=> b!7168730 (=> (not res!2921534) (not e!4306079))))

(assert (=> b!7168730 (= res!2921534 call!653048)))

(declare-fun b!7168731 () Bool)

(declare-fun e!4306073 () Bool)

(assert (=> b!7168731 (= e!4306076 e!4306073)))

(declare-fun c!1335493 () Bool)

(assert (=> b!7168731 (= c!1335493 ((_ is Star!18327) lt!2570225))))

(declare-fun bm!653042 () Bool)

(declare-fun c!1335494 () Bool)

(assert (=> bm!653042 (= call!653047 (validRegex!9452 (ite c!1335493 (reg!18656 lt!2570225) (ite c!1335494 (regOne!37167 lt!2570225) (regOne!37166 lt!2570225)))))))

(declare-fun b!7168732 () Bool)

(declare-fun e!4306078 () Bool)

(assert (=> b!7168732 (= e!4306073 e!4306078)))

(declare-fun res!2921533 () Bool)

(assert (=> b!7168732 (= res!2921533 (not (nullable!7762 (reg!18656 lt!2570225))))))

(assert (=> b!7168732 (=> (not res!2921533) (not e!4306078))))

(declare-fun b!7168733 () Bool)

(declare-fun res!2921535 () Bool)

(assert (=> b!7168733 (=> (not res!2921535) (not e!4306074))))

(assert (=> b!7168733 (= res!2921535 call!653048)))

(assert (=> b!7168733 (= e!4306075 e!4306074)))

(declare-fun b!7168734 () Bool)

(assert (=> b!7168734 (= e!4306078 call!653047)))

(declare-fun b!7168735 () Bool)

(assert (=> b!7168735 (= e!4306073 e!4306075)))

(assert (=> b!7168735 (= c!1335494 ((_ is Union!18327) lt!2570225))))

(declare-fun bm!653043 () Bool)

(assert (=> bm!653043 (= call!653046 (validRegex!9452 (ite c!1335494 (regTwo!37167 lt!2570225) (regTwo!37166 lt!2570225))))))

(assert (= (and d!2233094 (not res!2921537)) b!7168731))

(assert (= (and b!7168731 c!1335493) b!7168732))

(assert (= (and b!7168731 (not c!1335493)) b!7168735))

(assert (= (and b!7168732 res!2921533) b!7168734))

(assert (= (and b!7168735 c!1335494) b!7168733))

(assert (= (and b!7168735 (not c!1335494)) b!7168728))

(assert (= (and b!7168733 res!2921535) b!7168727))

(assert (= (and b!7168728 (not res!2921536)) b!7168730))

(assert (= (and b!7168730 res!2921534) b!7168729))

(assert (= (or b!7168733 b!7168730) bm!653041))

(assert (= (or b!7168727 b!7168729) bm!653043))

(assert (= (or b!7168734 bm!653041) bm!653042))

(declare-fun m!7871334 () Bool)

(assert (=> bm!653042 m!7871334))

(declare-fun m!7871336 () Bool)

(assert (=> b!7168732 m!7871336))

(declare-fun m!7871338 () Bool)

(assert (=> bm!653043 m!7871338))

(assert (=> d!2232908 d!2233094))

(declare-fun d!2233096 () Bool)

(declare-fun res!2921538 () Bool)

(declare-fun e!4306080 () Bool)

(assert (=> d!2233096 (=> res!2921538 e!4306080)))

(assert (=> d!2233096 (= res!2921538 ((_ is Nil!69596) (t!383739 (unfocusZipperList!2311 (toList!11270 z!3530)))))))

(assert (=> d!2233096 (= (forall!17157 (t!383739 (unfocusZipperList!2311 (toList!11270 z!3530))) lambda!437071) e!4306080)))

(declare-fun b!7168736 () Bool)

(declare-fun e!4306081 () Bool)

(assert (=> b!7168736 (= e!4306080 e!4306081)))

(declare-fun res!2921539 () Bool)

(assert (=> b!7168736 (=> (not res!2921539) (not e!4306081))))

(assert (=> b!7168736 (= res!2921539 (dynLambda!28343 lambda!437071 (h!76044 (t!383739 (unfocusZipperList!2311 (toList!11270 z!3530))))))))

(declare-fun b!7168737 () Bool)

(assert (=> b!7168737 (= e!4306081 (forall!17157 (t!383739 (t!383739 (unfocusZipperList!2311 (toList!11270 z!3530)))) lambda!437071))))

(assert (= (and d!2233096 (not res!2921538)) b!7168736))

(assert (= (and b!7168736 res!2921539) b!7168737))

(declare-fun b_lambda!274001 () Bool)

(assert (=> (not b_lambda!274001) (not b!7168736)))

(declare-fun m!7871340 () Bool)

(assert (=> b!7168736 m!7871340))

(declare-fun m!7871342 () Bool)

(assert (=> b!7168737 m!7871342))

(assert (=> d!2232908 d!2233096))

(declare-fun d!2233098 () Bool)

(assert (=> d!2233098 (= (isUnion!1568 lt!2570225) ((_ is Union!18327) lt!2570225))))

(assert (=> b!7168307 d!2233098))

(declare-fun d!2233100 () Bool)

(assert (=> d!2233100 (= (isEmpty!40186 (tail!14056 (unfocusZipperList!2311 (toList!11270 (store ((as const (Array Context!14558 Bool)) false) (Context!14559 (Cons!69596 EmptyExpr!18327 Nil!69596)) true))))) ((_ is Nil!69596) (tail!14056 (unfocusZipperList!2311 (toList!11270 (store ((as const (Array Context!14558 Bool)) false) (Context!14559 (Cons!69596 EmptyExpr!18327 Nil!69596)) true))))))))

(assert (=> b!7168336 d!2233100))

(declare-fun d!2233102 () Bool)

(assert (=> d!2233102 (= (tail!14056 (unfocusZipperList!2311 (toList!11270 (store ((as const (Array Context!14558 Bool)) false) (Context!14559 (Cons!69596 EmptyExpr!18327 Nil!69596)) true)))) (t!383739 (unfocusZipperList!2311 (toList!11270 (store ((as const (Array Context!14558 Bool)) false) (Context!14559 (Cons!69596 EmptyExpr!18327 Nil!69596)) true)))))))

(assert (=> b!7168336 d!2233102))

(declare-fun d!2233104 () Bool)

(declare-fun lt!2570254 () Bool)

(assert (=> d!2233104 (= lt!2570254 (select (content!14300 (t!383740 (t!383740 lt!2570208))) (h!76045 lt!2570208)))))

(declare-fun e!4306083 () Bool)

(assert (=> d!2233104 (= lt!2570254 e!4306083)))

(declare-fun res!2921540 () Bool)

(assert (=> d!2233104 (=> (not res!2921540) (not e!4306083))))

(assert (=> d!2233104 (= res!2921540 ((_ is Cons!69597) (t!383740 (t!383740 lt!2570208))))))

(assert (=> d!2233104 (= (contains!20709 (t!383740 (t!383740 lt!2570208)) (h!76045 lt!2570208)) lt!2570254)))

(declare-fun b!7168738 () Bool)

(declare-fun e!4306082 () Bool)

(assert (=> b!7168738 (= e!4306083 e!4306082)))

(declare-fun res!2921541 () Bool)

(assert (=> b!7168738 (=> res!2921541 e!4306082)))

(assert (=> b!7168738 (= res!2921541 (= (h!76045 (t!383740 (t!383740 lt!2570208))) (h!76045 lt!2570208)))))

(declare-fun b!7168739 () Bool)

(assert (=> b!7168739 (= e!4306082 (contains!20709 (t!383740 (t!383740 (t!383740 lt!2570208))) (h!76045 lt!2570208)))))

(assert (= (and d!2233104 res!2921540) b!7168738))

(assert (= (and b!7168738 (not res!2921541)) b!7168739))

(assert (=> d!2233104 m!7870922))

(declare-fun m!7871344 () Bool)

(assert (=> d!2233104 m!7871344))

(declare-fun m!7871346 () Bool)

(assert (=> b!7168739 m!7871346))

(assert (=> b!7168393 d!2233104))

(declare-fun d!2233106 () Bool)

(assert (=> d!2233106 (= (isEmpty!40186 (t!383739 (unfocusZipperList!2311 (toList!11270 (store ((as const (Array Context!14558 Bool)) false) (Context!14559 (Cons!69596 EmptyExpr!18327 Nil!69596)) true))))) ((_ is Nil!69596) (t!383739 (unfocusZipperList!2311 (toList!11270 (store ((as const (Array Context!14558 Bool)) false) (Context!14559 (Cons!69596 EmptyExpr!18327 Nil!69596)) true))))))))

(assert (=> b!7168328 d!2233106))

(declare-fun bm!653044 () Bool)

(declare-fun call!653051 () Bool)

(declare-fun call!653050 () Bool)

(assert (=> bm!653044 (= call!653051 call!653050)))

(declare-fun b!7168740 () Bool)

(declare-fun e!4306085 () Bool)

(declare-fun call!653049 () Bool)

(assert (=> b!7168740 (= e!4306085 call!653049)))

(declare-fun b!7168741 () Bool)

(declare-fun res!2921545 () Bool)

(declare-fun e!4306088 () Bool)

(assert (=> b!7168741 (=> res!2921545 e!4306088)))

(assert (=> b!7168741 (= res!2921545 (not ((_ is Concat!27172) (h!76044 lt!2570219))))))

(declare-fun e!4306086 () Bool)

(assert (=> b!7168741 (= e!4306086 e!4306088)))

(declare-fun d!2233108 () Bool)

(declare-fun res!2921546 () Bool)

(declare-fun e!4306087 () Bool)

(assert (=> d!2233108 (=> res!2921546 e!4306087)))

(assert (=> d!2233108 (= res!2921546 ((_ is ElementMatch!18327) (h!76044 lt!2570219)))))

(assert (=> d!2233108 (= (validRegex!9452 (h!76044 lt!2570219)) e!4306087)))

(declare-fun b!7168742 () Bool)

(declare-fun e!4306090 () Bool)

(assert (=> b!7168742 (= e!4306090 call!653049)))

(declare-fun b!7168743 () Bool)

(assert (=> b!7168743 (= e!4306088 e!4306090)))

(declare-fun res!2921543 () Bool)

(assert (=> b!7168743 (=> (not res!2921543) (not e!4306090))))

(assert (=> b!7168743 (= res!2921543 call!653051)))

(declare-fun b!7168744 () Bool)

(declare-fun e!4306084 () Bool)

(assert (=> b!7168744 (= e!4306087 e!4306084)))

(declare-fun c!1335495 () Bool)

(assert (=> b!7168744 (= c!1335495 ((_ is Star!18327) (h!76044 lt!2570219)))))

(declare-fun c!1335496 () Bool)

(declare-fun bm!653045 () Bool)

(assert (=> bm!653045 (= call!653050 (validRegex!9452 (ite c!1335495 (reg!18656 (h!76044 lt!2570219)) (ite c!1335496 (regOne!37167 (h!76044 lt!2570219)) (regOne!37166 (h!76044 lt!2570219))))))))

(declare-fun b!7168745 () Bool)

(declare-fun e!4306089 () Bool)

(assert (=> b!7168745 (= e!4306084 e!4306089)))

(declare-fun res!2921542 () Bool)

(assert (=> b!7168745 (= res!2921542 (not (nullable!7762 (reg!18656 (h!76044 lt!2570219)))))))

(assert (=> b!7168745 (=> (not res!2921542) (not e!4306089))))

(declare-fun b!7168746 () Bool)

(declare-fun res!2921544 () Bool)

(assert (=> b!7168746 (=> (not res!2921544) (not e!4306085))))

(assert (=> b!7168746 (= res!2921544 call!653051)))

(assert (=> b!7168746 (= e!4306086 e!4306085)))

(declare-fun b!7168747 () Bool)

(assert (=> b!7168747 (= e!4306089 call!653050)))

(declare-fun b!7168748 () Bool)

(assert (=> b!7168748 (= e!4306084 e!4306086)))

(assert (=> b!7168748 (= c!1335496 ((_ is Union!18327) (h!76044 lt!2570219)))))

(declare-fun bm!653046 () Bool)

(assert (=> bm!653046 (= call!653049 (validRegex!9452 (ite c!1335496 (regTwo!37167 (h!76044 lt!2570219)) (regTwo!37166 (h!76044 lt!2570219)))))))

(assert (= (and d!2233108 (not res!2921546)) b!7168744))

(assert (= (and b!7168744 c!1335495) b!7168745))

(assert (= (and b!7168744 (not c!1335495)) b!7168748))

(assert (= (and b!7168745 res!2921542) b!7168747))

(assert (= (and b!7168748 c!1335496) b!7168746))

(assert (= (and b!7168748 (not c!1335496)) b!7168741))

(assert (= (and b!7168746 res!2921544) b!7168740))

(assert (= (and b!7168741 (not res!2921545)) b!7168743))

(assert (= (and b!7168743 res!2921543) b!7168742))

(assert (= (or b!7168746 b!7168743) bm!653044))

(assert (= (or b!7168740 b!7168742) bm!653046))

(assert (= (or b!7168747 bm!653044) bm!653045))

(declare-fun m!7871348 () Bool)

(assert (=> bm!653045 m!7871348))

(declare-fun m!7871350 () Bool)

(assert (=> b!7168745 m!7871350))

(declare-fun m!7871352 () Bool)

(assert (=> bm!653046 m!7871352))

(assert (=> bs!1892691 d!2233108))

(declare-fun bm!653047 () Bool)

(declare-fun call!653054 () Bool)

(declare-fun call!653053 () Bool)

(assert (=> bm!653047 (= call!653054 call!653053)))

(declare-fun b!7168749 () Bool)

(declare-fun e!4306092 () Bool)

(declare-fun call!653052 () Bool)

(assert (=> b!7168749 (= e!4306092 call!653052)))

(declare-fun b!7168750 () Bool)

(declare-fun res!2921550 () Bool)

(declare-fun e!4306095 () Bool)

(assert (=> b!7168750 (=> res!2921550 e!4306095)))

(assert (=> b!7168750 (= res!2921550 (not ((_ is Concat!27172) (ite c!1335414 (regTwo!37167 (ite c!1335359 (regTwo!37167 lt!2570202) (regTwo!37166 lt!2570202))) (regTwo!37166 (ite c!1335359 (regTwo!37167 lt!2570202) (regTwo!37166 lt!2570202)))))))))

(declare-fun e!4306093 () Bool)

(assert (=> b!7168750 (= e!4306093 e!4306095)))

(declare-fun d!2233110 () Bool)

(declare-fun res!2921551 () Bool)

(declare-fun e!4306094 () Bool)

(assert (=> d!2233110 (=> res!2921551 e!4306094)))

(assert (=> d!2233110 (= res!2921551 ((_ is ElementMatch!18327) (ite c!1335414 (regTwo!37167 (ite c!1335359 (regTwo!37167 lt!2570202) (regTwo!37166 lt!2570202))) (regTwo!37166 (ite c!1335359 (regTwo!37167 lt!2570202) (regTwo!37166 lt!2570202))))))))

(assert (=> d!2233110 (= (validRegex!9452 (ite c!1335414 (regTwo!37167 (ite c!1335359 (regTwo!37167 lt!2570202) (regTwo!37166 lt!2570202))) (regTwo!37166 (ite c!1335359 (regTwo!37167 lt!2570202) (regTwo!37166 lt!2570202))))) e!4306094)))

(declare-fun b!7168751 () Bool)

(declare-fun e!4306097 () Bool)

(assert (=> b!7168751 (= e!4306097 call!653052)))

(declare-fun b!7168752 () Bool)

(assert (=> b!7168752 (= e!4306095 e!4306097)))

(declare-fun res!2921548 () Bool)

(assert (=> b!7168752 (=> (not res!2921548) (not e!4306097))))

(assert (=> b!7168752 (= res!2921548 call!653054)))

(declare-fun b!7168753 () Bool)

(declare-fun e!4306091 () Bool)

(assert (=> b!7168753 (= e!4306094 e!4306091)))

(declare-fun c!1335497 () Bool)

(assert (=> b!7168753 (= c!1335497 ((_ is Star!18327) (ite c!1335414 (regTwo!37167 (ite c!1335359 (regTwo!37167 lt!2570202) (regTwo!37166 lt!2570202))) (regTwo!37166 (ite c!1335359 (regTwo!37167 lt!2570202) (regTwo!37166 lt!2570202))))))))

(declare-fun bm!653048 () Bool)

(declare-fun c!1335498 () Bool)

(assert (=> bm!653048 (= call!653053 (validRegex!9452 (ite c!1335497 (reg!18656 (ite c!1335414 (regTwo!37167 (ite c!1335359 (regTwo!37167 lt!2570202) (regTwo!37166 lt!2570202))) (regTwo!37166 (ite c!1335359 (regTwo!37167 lt!2570202) (regTwo!37166 lt!2570202))))) (ite c!1335498 (regOne!37167 (ite c!1335414 (regTwo!37167 (ite c!1335359 (regTwo!37167 lt!2570202) (regTwo!37166 lt!2570202))) (regTwo!37166 (ite c!1335359 (regTwo!37167 lt!2570202) (regTwo!37166 lt!2570202))))) (regOne!37166 (ite c!1335414 (regTwo!37167 (ite c!1335359 (regTwo!37167 lt!2570202) (regTwo!37166 lt!2570202))) (regTwo!37166 (ite c!1335359 (regTwo!37167 lt!2570202) (regTwo!37166 lt!2570202)))))))))))

(declare-fun b!7168754 () Bool)

(declare-fun e!4306096 () Bool)

(assert (=> b!7168754 (= e!4306091 e!4306096)))

(declare-fun res!2921547 () Bool)

(assert (=> b!7168754 (= res!2921547 (not (nullable!7762 (reg!18656 (ite c!1335414 (regTwo!37167 (ite c!1335359 (regTwo!37167 lt!2570202) (regTwo!37166 lt!2570202))) (regTwo!37166 (ite c!1335359 (regTwo!37167 lt!2570202) (regTwo!37166 lt!2570202))))))))))

(assert (=> b!7168754 (=> (not res!2921547) (not e!4306096))))

(declare-fun b!7168755 () Bool)

(declare-fun res!2921549 () Bool)

(assert (=> b!7168755 (=> (not res!2921549) (not e!4306092))))

(assert (=> b!7168755 (= res!2921549 call!653054)))

(assert (=> b!7168755 (= e!4306093 e!4306092)))

(declare-fun b!7168756 () Bool)

(assert (=> b!7168756 (= e!4306096 call!653053)))

(declare-fun b!7168757 () Bool)

(assert (=> b!7168757 (= e!4306091 e!4306093)))

(assert (=> b!7168757 (= c!1335498 ((_ is Union!18327) (ite c!1335414 (regTwo!37167 (ite c!1335359 (regTwo!37167 lt!2570202) (regTwo!37166 lt!2570202))) (regTwo!37166 (ite c!1335359 (regTwo!37167 lt!2570202) (regTwo!37166 lt!2570202))))))))

(declare-fun bm!653049 () Bool)

(assert (=> bm!653049 (= call!653052 (validRegex!9452 (ite c!1335498 (regTwo!37167 (ite c!1335414 (regTwo!37167 (ite c!1335359 (regTwo!37167 lt!2570202) (regTwo!37166 lt!2570202))) (regTwo!37166 (ite c!1335359 (regTwo!37167 lt!2570202) (regTwo!37166 lt!2570202))))) (regTwo!37166 (ite c!1335414 (regTwo!37167 (ite c!1335359 (regTwo!37167 lt!2570202) (regTwo!37166 lt!2570202))) (regTwo!37166 (ite c!1335359 (regTwo!37167 lt!2570202) (regTwo!37166 lt!2570202))))))))))

(assert (= (and d!2233110 (not res!2921551)) b!7168753))

(assert (= (and b!7168753 c!1335497) b!7168754))

(assert (= (and b!7168753 (not c!1335497)) b!7168757))

(assert (= (and b!7168754 res!2921547) b!7168756))

(assert (= (and b!7168757 c!1335498) b!7168755))

(assert (= (and b!7168757 (not c!1335498)) b!7168750))

(assert (= (and b!7168755 res!2921549) b!7168749))

(assert (= (and b!7168750 (not res!2921550)) b!7168752))

(assert (= (and b!7168752 res!2921548) b!7168751))

(assert (= (or b!7168755 b!7168752) bm!653047))

(assert (= (or b!7168749 b!7168751) bm!653049))

(assert (= (or b!7168756 bm!653047) bm!653048))

(declare-fun m!7871354 () Bool)

(assert (=> bm!653048 m!7871354))

(declare-fun m!7871356 () Bool)

(assert (=> b!7168754 m!7871356))

(declare-fun m!7871358 () Bool)

(assert (=> bm!653049 m!7871358))

(assert (=> bm!653010 d!2233110))

(declare-fun bm!653050 () Bool)

(declare-fun call!653057 () Bool)

(declare-fun call!653056 () Bool)

(assert (=> bm!653050 (= call!653057 call!653056)))

(declare-fun b!7168758 () Bool)

(declare-fun e!4306099 () Bool)

(declare-fun call!653055 () Bool)

(assert (=> b!7168758 (= e!4306099 call!653055)))

(declare-fun b!7168759 () Bool)

(declare-fun res!2921555 () Bool)

(declare-fun e!4306102 () Bool)

(assert (=> b!7168759 (=> res!2921555 e!4306102)))

(assert (=> b!7168759 (= res!2921555 (not ((_ is Concat!27172) lt!2570233)))))

(declare-fun e!4306100 () Bool)

(assert (=> b!7168759 (= e!4306100 e!4306102)))

(declare-fun d!2233112 () Bool)

(declare-fun res!2921556 () Bool)

(declare-fun e!4306101 () Bool)

(assert (=> d!2233112 (=> res!2921556 e!4306101)))

(assert (=> d!2233112 (= res!2921556 ((_ is ElementMatch!18327) lt!2570233))))

(assert (=> d!2233112 (= (validRegex!9452 lt!2570233) e!4306101)))

(declare-fun b!7168760 () Bool)

(declare-fun e!4306104 () Bool)

(assert (=> b!7168760 (= e!4306104 call!653055)))

(declare-fun b!7168761 () Bool)

(assert (=> b!7168761 (= e!4306102 e!4306104)))

(declare-fun res!2921553 () Bool)

(assert (=> b!7168761 (=> (not res!2921553) (not e!4306104))))

(assert (=> b!7168761 (= res!2921553 call!653057)))

(declare-fun b!7168762 () Bool)

(declare-fun e!4306098 () Bool)

(assert (=> b!7168762 (= e!4306101 e!4306098)))

(declare-fun c!1335499 () Bool)

(assert (=> b!7168762 (= c!1335499 ((_ is Star!18327) lt!2570233))))

(declare-fun bm!653051 () Bool)

(declare-fun c!1335500 () Bool)

(assert (=> bm!653051 (= call!653056 (validRegex!9452 (ite c!1335499 (reg!18656 lt!2570233) (ite c!1335500 (regOne!37167 lt!2570233) (regOne!37166 lt!2570233)))))))

(declare-fun b!7168763 () Bool)

(declare-fun e!4306103 () Bool)

(assert (=> b!7168763 (= e!4306098 e!4306103)))

(declare-fun res!2921552 () Bool)

(assert (=> b!7168763 (= res!2921552 (not (nullable!7762 (reg!18656 lt!2570233))))))

(assert (=> b!7168763 (=> (not res!2921552) (not e!4306103))))

(declare-fun b!7168764 () Bool)

(declare-fun res!2921554 () Bool)

(assert (=> b!7168764 (=> (not res!2921554) (not e!4306099))))

(assert (=> b!7168764 (= res!2921554 call!653057)))

(assert (=> b!7168764 (= e!4306100 e!4306099)))

(declare-fun b!7168765 () Bool)

(assert (=> b!7168765 (= e!4306103 call!653056)))

(declare-fun b!7168766 () Bool)

(assert (=> b!7168766 (= e!4306098 e!4306100)))

(assert (=> b!7168766 (= c!1335500 ((_ is Union!18327) lt!2570233))))

(declare-fun bm!653052 () Bool)

(assert (=> bm!653052 (= call!653055 (validRegex!9452 (ite c!1335500 (regTwo!37167 lt!2570233) (regTwo!37166 lt!2570233))))))

(assert (= (and d!2233112 (not res!2921556)) b!7168762))

(assert (= (and b!7168762 c!1335499) b!7168763))

(assert (= (and b!7168762 (not c!1335499)) b!7168766))

(assert (= (and b!7168763 res!2921552) b!7168765))

(assert (= (and b!7168766 c!1335500) b!7168764))

(assert (= (and b!7168766 (not c!1335500)) b!7168759))

(assert (= (and b!7168764 res!2921554) b!7168758))

(assert (= (and b!7168759 (not res!2921555)) b!7168761))

(assert (= (and b!7168761 res!2921553) b!7168760))

(assert (= (or b!7168764 b!7168761) bm!653050))

(assert (= (or b!7168758 b!7168760) bm!653052))

(assert (= (or b!7168765 bm!653050) bm!653051))

(declare-fun m!7871360 () Bool)

(assert (=> bm!653051 m!7871360))

(declare-fun m!7871362 () Bool)

(assert (=> b!7168763 m!7871362))

(declare-fun m!7871364 () Bool)

(assert (=> bm!653052 m!7871364))

(assert (=> d!2232964 d!2233112))

(declare-fun d!2233114 () Bool)

(declare-fun res!2921557 () Bool)

(declare-fun e!4306105 () Bool)

(assert (=> d!2233114 (=> res!2921557 e!4306105)))

(assert (=> d!2233114 (= res!2921557 ((_ is Nil!69596) (exprs!7779 (h!76045 (toList!11270 z!3530)))))))

(assert (=> d!2233114 (= (forall!17157 (exprs!7779 (h!76045 (toList!11270 z!3530))) lambda!437076) e!4306105)))

(declare-fun b!7168767 () Bool)

(declare-fun e!4306106 () Bool)

(assert (=> b!7168767 (= e!4306105 e!4306106)))

(declare-fun res!2921558 () Bool)

(assert (=> b!7168767 (=> (not res!2921558) (not e!4306106))))

(assert (=> b!7168767 (= res!2921558 (dynLambda!28343 lambda!437076 (h!76044 (exprs!7779 (h!76045 (toList!11270 z!3530))))))))

(declare-fun b!7168768 () Bool)

(assert (=> b!7168768 (= e!4306106 (forall!17157 (t!383739 (exprs!7779 (h!76045 (toList!11270 z!3530)))) lambda!437076))))

(assert (= (and d!2233114 (not res!2921557)) b!7168767))

(assert (= (and b!7168767 res!2921558) b!7168768))

(declare-fun b_lambda!274003 () Bool)

(assert (=> (not b_lambda!274003) (not b!7168767)))

(declare-fun m!7871366 () Bool)

(assert (=> b!7168767 m!7871366))

(declare-fun m!7871368 () Bool)

(assert (=> b!7168768 m!7871368))

(assert (=> d!2232964 d!2233114))

(assert (=> b!7168301 d!2232938))

(declare-fun d!2233116 () Bool)

(assert (=> d!2233116 (= (head!14630 (unfocusZipperList!2311 (toList!11270 (store ((as const (Array Context!14558 Bool)) false) (Context!14559 (Cons!69596 EmptyExpr!18327 Nil!69596)) true)))) (h!76044 (unfocusZipperList!2311 (toList!11270 (store ((as const (Array Context!14558 Bool)) false) (Context!14559 (Cons!69596 EmptyExpr!18327 Nil!69596)) true)))))))

(assert (=> b!7168330 d!2233116))

(declare-fun bm!653053 () Bool)

(declare-fun call!653060 () Bool)

(declare-fun call!653059 () Bool)

(assert (=> bm!653053 (= call!653060 call!653059)))

(declare-fun b!7168769 () Bool)

(declare-fun e!4306108 () Bool)

(declare-fun call!653058 () Bool)

(assert (=> b!7168769 (= e!4306108 call!653058)))

(declare-fun b!7168770 () Bool)

(declare-fun res!2921562 () Bool)

(declare-fun e!4306111 () Bool)

(assert (=> b!7168770 (=> res!2921562 e!4306111)))

(assert (=> b!7168770 (= res!2921562 (not ((_ is Concat!27172) (ite c!1335417 (reg!18656 lt!2570213) (ite c!1335418 (regOne!37167 lt!2570213) (regOne!37166 lt!2570213))))))))

(declare-fun e!4306109 () Bool)

(assert (=> b!7168770 (= e!4306109 e!4306111)))

(declare-fun d!2233118 () Bool)

(declare-fun res!2921563 () Bool)

(declare-fun e!4306110 () Bool)

(assert (=> d!2233118 (=> res!2921563 e!4306110)))

(assert (=> d!2233118 (= res!2921563 ((_ is ElementMatch!18327) (ite c!1335417 (reg!18656 lt!2570213) (ite c!1335418 (regOne!37167 lt!2570213) (regOne!37166 lt!2570213)))))))

(assert (=> d!2233118 (= (validRegex!9452 (ite c!1335417 (reg!18656 lt!2570213) (ite c!1335418 (regOne!37167 lt!2570213) (regOne!37166 lt!2570213)))) e!4306110)))

(declare-fun b!7168771 () Bool)

(declare-fun e!4306113 () Bool)

(assert (=> b!7168771 (= e!4306113 call!653058)))

(declare-fun b!7168772 () Bool)

(assert (=> b!7168772 (= e!4306111 e!4306113)))

(declare-fun res!2921560 () Bool)

(assert (=> b!7168772 (=> (not res!2921560) (not e!4306113))))

(assert (=> b!7168772 (= res!2921560 call!653060)))

(declare-fun b!7168773 () Bool)

(declare-fun e!4306107 () Bool)

(assert (=> b!7168773 (= e!4306110 e!4306107)))

(declare-fun c!1335501 () Bool)

(assert (=> b!7168773 (= c!1335501 ((_ is Star!18327) (ite c!1335417 (reg!18656 lt!2570213) (ite c!1335418 (regOne!37167 lt!2570213) (regOne!37166 lt!2570213)))))))

(declare-fun bm!653054 () Bool)

(declare-fun c!1335502 () Bool)

(assert (=> bm!653054 (= call!653059 (validRegex!9452 (ite c!1335501 (reg!18656 (ite c!1335417 (reg!18656 lt!2570213) (ite c!1335418 (regOne!37167 lt!2570213) (regOne!37166 lt!2570213)))) (ite c!1335502 (regOne!37167 (ite c!1335417 (reg!18656 lt!2570213) (ite c!1335418 (regOne!37167 lt!2570213) (regOne!37166 lt!2570213)))) (regOne!37166 (ite c!1335417 (reg!18656 lt!2570213) (ite c!1335418 (regOne!37167 lt!2570213) (regOne!37166 lt!2570213))))))))))

(declare-fun b!7168774 () Bool)

(declare-fun e!4306112 () Bool)

(assert (=> b!7168774 (= e!4306107 e!4306112)))

(declare-fun res!2921559 () Bool)

(assert (=> b!7168774 (= res!2921559 (not (nullable!7762 (reg!18656 (ite c!1335417 (reg!18656 lt!2570213) (ite c!1335418 (regOne!37167 lt!2570213) (regOne!37166 lt!2570213)))))))))

(assert (=> b!7168774 (=> (not res!2921559) (not e!4306112))))

(declare-fun b!7168775 () Bool)

(declare-fun res!2921561 () Bool)

(assert (=> b!7168775 (=> (not res!2921561) (not e!4306108))))

(assert (=> b!7168775 (= res!2921561 call!653060)))

(assert (=> b!7168775 (= e!4306109 e!4306108)))

(declare-fun b!7168776 () Bool)

(assert (=> b!7168776 (= e!4306112 call!653059)))

(declare-fun b!7168777 () Bool)

(assert (=> b!7168777 (= e!4306107 e!4306109)))

(assert (=> b!7168777 (= c!1335502 ((_ is Union!18327) (ite c!1335417 (reg!18656 lt!2570213) (ite c!1335418 (regOne!37167 lt!2570213) (regOne!37166 lt!2570213)))))))

(declare-fun bm!653055 () Bool)

(assert (=> bm!653055 (= call!653058 (validRegex!9452 (ite c!1335502 (regTwo!37167 (ite c!1335417 (reg!18656 lt!2570213) (ite c!1335418 (regOne!37167 lt!2570213) (regOne!37166 lt!2570213)))) (regTwo!37166 (ite c!1335417 (reg!18656 lt!2570213) (ite c!1335418 (regOne!37167 lt!2570213) (regOne!37166 lt!2570213)))))))))

(assert (= (and d!2233118 (not res!2921563)) b!7168773))

(assert (= (and b!7168773 c!1335501) b!7168774))

(assert (= (and b!7168773 (not c!1335501)) b!7168777))

(assert (= (and b!7168774 res!2921559) b!7168776))

(assert (= (and b!7168777 c!1335502) b!7168775))

(assert (= (and b!7168777 (not c!1335502)) b!7168770))

(assert (= (and b!7168775 res!2921561) b!7168769))

(assert (= (and b!7168770 (not res!2921562)) b!7168772))

(assert (= (and b!7168772 res!2921560) b!7168771))

(assert (= (or b!7168775 b!7168772) bm!653053))

(assert (= (or b!7168769 b!7168771) bm!653055))

(assert (= (or b!7168776 bm!653053) bm!653054))

(declare-fun m!7871370 () Bool)

(assert (=> bm!653054 m!7871370))

(declare-fun m!7871372 () Bool)

(assert (=> b!7168774 m!7871372))

(declare-fun m!7871374 () Bool)

(assert (=> bm!653055 m!7871374))

(assert (=> bm!653015 d!2233118))

(declare-fun d!2233120 () Bool)

(assert (=> d!2233120 (= (isEmpty!40186 (tail!14056 (exprs!7779 (h!76045 (toList!11270 z!3530))))) ((_ is Nil!69596) (tail!14056 (exprs!7779 (h!76045 (toList!11270 z!3530))))))))

(assert (=> b!7168425 d!2233120))

(declare-fun d!2233122 () Bool)

(assert (=> d!2233122 (= (tail!14056 (exprs!7779 (h!76045 (toList!11270 z!3530)))) (t!383739 (exprs!7779 (h!76045 (toList!11270 z!3530)))))))

(assert (=> b!7168425 d!2233122))

(declare-fun d!2233124 () Bool)

(declare-fun c!1335503 () Bool)

(assert (=> d!2233124 (= c!1335503 ((_ is Nil!69597) (t!383740 (t!383740 lt!2570208))))))

(declare-fun e!4306114 () (InoxSet Context!14558))

(assert (=> d!2233124 (= (content!14300 (t!383740 (t!383740 lt!2570208))) e!4306114)))

(declare-fun b!7168778 () Bool)

(assert (=> b!7168778 (= e!4306114 ((as const (Array Context!14558 Bool)) false))))

(declare-fun b!7168779 () Bool)

(assert (=> b!7168779 (= e!4306114 ((_ map or) (store ((as const (Array Context!14558 Bool)) false) (h!76045 (t!383740 (t!383740 lt!2570208))) true) (content!14300 (t!383740 (t!383740 (t!383740 lt!2570208))))))))

(assert (= (and d!2233124 c!1335503) b!7168778))

(assert (= (and d!2233124 (not c!1335503)) b!7168779))

(declare-fun m!7871376 () Bool)

(assert (=> b!7168779 m!7871376))

(declare-fun m!7871378 () Bool)

(assert (=> b!7168779 m!7871378))

(assert (=> b!7168343 d!2233124))

(declare-fun bm!653056 () Bool)

(declare-fun call!653063 () Bool)

(declare-fun call!653062 () Bool)

(assert (=> bm!653056 (= call!653063 call!653062)))

(declare-fun b!7168780 () Bool)

(declare-fun e!4306116 () Bool)

(declare-fun call!653061 () Bool)

(assert (=> b!7168780 (= e!4306116 call!653061)))

(declare-fun b!7168781 () Bool)

(declare-fun res!2921567 () Bool)

(declare-fun e!4306119 () Bool)

(assert (=> b!7168781 (=> res!2921567 e!4306119)))

(assert (=> b!7168781 (= res!2921567 (not ((_ is Concat!27172) (ite c!1335415 (reg!18656 (ite c!1335358 (reg!18656 lt!2570202) (ite c!1335359 (regOne!37167 lt!2570202) (regOne!37166 lt!2570202)))) (ite c!1335416 (regOne!37167 (ite c!1335358 (reg!18656 lt!2570202) (ite c!1335359 (regOne!37167 lt!2570202) (regOne!37166 lt!2570202)))) (regOne!37166 (ite c!1335358 (reg!18656 lt!2570202) (ite c!1335359 (regOne!37167 lt!2570202) (regOne!37166 lt!2570202)))))))))))

(declare-fun e!4306117 () Bool)

(assert (=> b!7168781 (= e!4306117 e!4306119)))

(declare-fun d!2233126 () Bool)

(declare-fun res!2921568 () Bool)

(declare-fun e!4306118 () Bool)

(assert (=> d!2233126 (=> res!2921568 e!4306118)))

(assert (=> d!2233126 (= res!2921568 ((_ is ElementMatch!18327) (ite c!1335415 (reg!18656 (ite c!1335358 (reg!18656 lt!2570202) (ite c!1335359 (regOne!37167 lt!2570202) (regOne!37166 lt!2570202)))) (ite c!1335416 (regOne!37167 (ite c!1335358 (reg!18656 lt!2570202) (ite c!1335359 (regOne!37167 lt!2570202) (regOne!37166 lt!2570202)))) (regOne!37166 (ite c!1335358 (reg!18656 lt!2570202) (ite c!1335359 (regOne!37167 lt!2570202) (regOne!37166 lt!2570202))))))))))

(assert (=> d!2233126 (= (validRegex!9452 (ite c!1335415 (reg!18656 (ite c!1335358 (reg!18656 lt!2570202) (ite c!1335359 (regOne!37167 lt!2570202) (regOne!37166 lt!2570202)))) (ite c!1335416 (regOne!37167 (ite c!1335358 (reg!18656 lt!2570202) (ite c!1335359 (regOne!37167 lt!2570202) (regOne!37166 lt!2570202)))) (regOne!37166 (ite c!1335358 (reg!18656 lt!2570202) (ite c!1335359 (regOne!37167 lt!2570202) (regOne!37166 lt!2570202))))))) e!4306118)))

(declare-fun b!7168782 () Bool)

(declare-fun e!4306121 () Bool)

(assert (=> b!7168782 (= e!4306121 call!653061)))

(declare-fun b!7168783 () Bool)

(assert (=> b!7168783 (= e!4306119 e!4306121)))

(declare-fun res!2921565 () Bool)

(assert (=> b!7168783 (=> (not res!2921565) (not e!4306121))))

(assert (=> b!7168783 (= res!2921565 call!653063)))

(declare-fun b!7168784 () Bool)

(declare-fun e!4306115 () Bool)

(assert (=> b!7168784 (= e!4306118 e!4306115)))

(declare-fun c!1335504 () Bool)

(assert (=> b!7168784 (= c!1335504 ((_ is Star!18327) (ite c!1335415 (reg!18656 (ite c!1335358 (reg!18656 lt!2570202) (ite c!1335359 (regOne!37167 lt!2570202) (regOne!37166 lt!2570202)))) (ite c!1335416 (regOne!37167 (ite c!1335358 (reg!18656 lt!2570202) (ite c!1335359 (regOne!37167 lt!2570202) (regOne!37166 lt!2570202)))) (regOne!37166 (ite c!1335358 (reg!18656 lt!2570202) (ite c!1335359 (regOne!37167 lt!2570202) (regOne!37166 lt!2570202))))))))))

(declare-fun bm!653057 () Bool)

(declare-fun c!1335505 () Bool)

(assert (=> bm!653057 (= call!653062 (validRegex!9452 (ite c!1335504 (reg!18656 (ite c!1335415 (reg!18656 (ite c!1335358 (reg!18656 lt!2570202) (ite c!1335359 (regOne!37167 lt!2570202) (regOne!37166 lt!2570202)))) (ite c!1335416 (regOne!37167 (ite c!1335358 (reg!18656 lt!2570202) (ite c!1335359 (regOne!37167 lt!2570202) (regOne!37166 lt!2570202)))) (regOne!37166 (ite c!1335358 (reg!18656 lt!2570202) (ite c!1335359 (regOne!37167 lt!2570202) (regOne!37166 lt!2570202))))))) (ite c!1335505 (regOne!37167 (ite c!1335415 (reg!18656 (ite c!1335358 (reg!18656 lt!2570202) (ite c!1335359 (regOne!37167 lt!2570202) (regOne!37166 lt!2570202)))) (ite c!1335416 (regOne!37167 (ite c!1335358 (reg!18656 lt!2570202) (ite c!1335359 (regOne!37167 lt!2570202) (regOne!37166 lt!2570202)))) (regOne!37166 (ite c!1335358 (reg!18656 lt!2570202) (ite c!1335359 (regOne!37167 lt!2570202) (regOne!37166 lt!2570202))))))) (regOne!37166 (ite c!1335415 (reg!18656 (ite c!1335358 (reg!18656 lt!2570202) (ite c!1335359 (regOne!37167 lt!2570202) (regOne!37166 lt!2570202)))) (ite c!1335416 (regOne!37167 (ite c!1335358 (reg!18656 lt!2570202) (ite c!1335359 (regOne!37167 lt!2570202) (regOne!37166 lt!2570202)))) (regOne!37166 (ite c!1335358 (reg!18656 lt!2570202) (ite c!1335359 (regOne!37167 lt!2570202) (regOne!37166 lt!2570202)))))))))))))

(declare-fun b!7168785 () Bool)

(declare-fun e!4306120 () Bool)

(assert (=> b!7168785 (= e!4306115 e!4306120)))

(declare-fun res!2921564 () Bool)

(assert (=> b!7168785 (= res!2921564 (not (nullable!7762 (reg!18656 (ite c!1335415 (reg!18656 (ite c!1335358 (reg!18656 lt!2570202) (ite c!1335359 (regOne!37167 lt!2570202) (regOne!37166 lt!2570202)))) (ite c!1335416 (regOne!37167 (ite c!1335358 (reg!18656 lt!2570202) (ite c!1335359 (regOne!37167 lt!2570202) (regOne!37166 lt!2570202)))) (regOne!37166 (ite c!1335358 (reg!18656 lt!2570202) (ite c!1335359 (regOne!37167 lt!2570202) (regOne!37166 lt!2570202))))))))))))

(assert (=> b!7168785 (=> (not res!2921564) (not e!4306120))))

(declare-fun b!7168786 () Bool)

(declare-fun res!2921566 () Bool)

(assert (=> b!7168786 (=> (not res!2921566) (not e!4306116))))

(assert (=> b!7168786 (= res!2921566 call!653063)))

(assert (=> b!7168786 (= e!4306117 e!4306116)))

(declare-fun b!7168787 () Bool)

(assert (=> b!7168787 (= e!4306120 call!653062)))

(declare-fun b!7168788 () Bool)

(assert (=> b!7168788 (= e!4306115 e!4306117)))

(assert (=> b!7168788 (= c!1335505 ((_ is Union!18327) (ite c!1335415 (reg!18656 (ite c!1335358 (reg!18656 lt!2570202) (ite c!1335359 (regOne!37167 lt!2570202) (regOne!37166 lt!2570202)))) (ite c!1335416 (regOne!37167 (ite c!1335358 (reg!18656 lt!2570202) (ite c!1335359 (regOne!37167 lt!2570202) (regOne!37166 lt!2570202)))) (regOne!37166 (ite c!1335358 (reg!18656 lt!2570202) (ite c!1335359 (regOne!37167 lt!2570202) (regOne!37166 lt!2570202))))))))))

(declare-fun bm!653058 () Bool)

(assert (=> bm!653058 (= call!653061 (validRegex!9452 (ite c!1335505 (regTwo!37167 (ite c!1335415 (reg!18656 (ite c!1335358 (reg!18656 lt!2570202) (ite c!1335359 (regOne!37167 lt!2570202) (regOne!37166 lt!2570202)))) (ite c!1335416 (regOne!37167 (ite c!1335358 (reg!18656 lt!2570202) (ite c!1335359 (regOne!37167 lt!2570202) (regOne!37166 lt!2570202)))) (regOne!37166 (ite c!1335358 (reg!18656 lt!2570202) (ite c!1335359 (regOne!37167 lt!2570202) (regOne!37166 lt!2570202))))))) (regTwo!37166 (ite c!1335415 (reg!18656 (ite c!1335358 (reg!18656 lt!2570202) (ite c!1335359 (regOne!37167 lt!2570202) (regOne!37166 lt!2570202)))) (ite c!1335416 (regOne!37167 (ite c!1335358 (reg!18656 lt!2570202) (ite c!1335359 (regOne!37167 lt!2570202) (regOne!37166 lt!2570202)))) (regOne!37166 (ite c!1335358 (reg!18656 lt!2570202) (ite c!1335359 (regOne!37167 lt!2570202) (regOne!37166 lt!2570202))))))))))))

(assert (= (and d!2233126 (not res!2921568)) b!7168784))

(assert (= (and b!7168784 c!1335504) b!7168785))

(assert (= (and b!7168784 (not c!1335504)) b!7168788))

(assert (= (and b!7168785 res!2921564) b!7168787))

(assert (= (and b!7168788 c!1335505) b!7168786))

(assert (= (and b!7168788 (not c!1335505)) b!7168781))

(assert (= (and b!7168786 res!2921566) b!7168780))

(assert (= (and b!7168781 (not res!2921567)) b!7168783))

(assert (= (and b!7168783 res!2921565) b!7168782))

(assert (= (or b!7168786 b!7168783) bm!653056))

(assert (= (or b!7168780 b!7168782) bm!653058))

(assert (= (or b!7168787 bm!653056) bm!653057))

(declare-fun m!7871380 () Bool)

(assert (=> bm!653057 m!7871380))

(declare-fun m!7871382 () Bool)

(assert (=> b!7168785 m!7871382))

(declare-fun m!7871384 () Bool)

(assert (=> bm!653058 m!7871384))

(assert (=> bm!653012 d!2233126))

(declare-fun d!2233128 () Bool)

(declare-fun res!2921569 () Bool)

(declare-fun e!4306122 () Bool)

(assert (=> d!2233128 (=> res!2921569 e!4306122)))

(assert (=> d!2233128 (= res!2921569 ((_ is Nil!69597) res!2921396))))

(assert (=> d!2233128 (= (noDuplicate!2871 res!2921396) e!4306122)))

(declare-fun b!7168789 () Bool)

(declare-fun e!4306123 () Bool)

(assert (=> b!7168789 (= e!4306122 e!4306123)))

(declare-fun res!2921570 () Bool)

(assert (=> b!7168789 (=> (not res!2921570) (not e!4306123))))

(assert (=> b!7168789 (= res!2921570 (not (contains!20709 (t!383740 res!2921396) (h!76045 res!2921396))))))

(declare-fun b!7168790 () Bool)

(assert (=> b!7168790 (= e!4306123 (noDuplicate!2871 (t!383740 res!2921396)))))

(assert (= (and d!2233128 (not res!2921569)) b!7168789))

(assert (= (and b!7168789 res!2921570) b!7168790))

(declare-fun m!7871386 () Bool)

(assert (=> b!7168789 m!7871386))

(declare-fun m!7871388 () Bool)

(assert (=> b!7168790 m!7871388))

(assert (=> d!2232926 d!2233128))

(declare-fun bm!653059 () Bool)

(declare-fun call!653066 () Bool)

(declare-fun call!653065 () Bool)

(assert (=> bm!653059 (= call!653066 call!653065)))

(declare-fun b!7168791 () Bool)

(declare-fun e!4306125 () Bool)

(declare-fun call!653064 () Bool)

(assert (=> b!7168791 (= e!4306125 call!653064)))

(declare-fun b!7168792 () Bool)

(declare-fun res!2921574 () Bool)

(declare-fun e!4306128 () Bool)

(assert (=> b!7168792 (=> res!2921574 e!4306128)))

(assert (=> b!7168792 (= res!2921574 (not ((_ is Concat!27172) (ite c!1335405 (regTwo!37167 lt!2570221) (regTwo!37166 lt!2570221)))))))

(declare-fun e!4306126 () Bool)

(assert (=> b!7168792 (= e!4306126 e!4306128)))

(declare-fun d!2233130 () Bool)

(declare-fun res!2921575 () Bool)

(declare-fun e!4306127 () Bool)

(assert (=> d!2233130 (=> res!2921575 e!4306127)))

(assert (=> d!2233130 (= res!2921575 ((_ is ElementMatch!18327) (ite c!1335405 (regTwo!37167 lt!2570221) (regTwo!37166 lt!2570221))))))

(assert (=> d!2233130 (= (validRegex!9452 (ite c!1335405 (regTwo!37167 lt!2570221) (regTwo!37166 lt!2570221))) e!4306127)))

(declare-fun b!7168793 () Bool)

(declare-fun e!4306130 () Bool)

(assert (=> b!7168793 (= e!4306130 call!653064)))

(declare-fun b!7168794 () Bool)

(assert (=> b!7168794 (= e!4306128 e!4306130)))

(declare-fun res!2921572 () Bool)

(assert (=> b!7168794 (=> (not res!2921572) (not e!4306130))))

(assert (=> b!7168794 (= res!2921572 call!653066)))

(declare-fun b!7168795 () Bool)

(declare-fun e!4306124 () Bool)

(assert (=> b!7168795 (= e!4306127 e!4306124)))

(declare-fun c!1335506 () Bool)

(assert (=> b!7168795 (= c!1335506 ((_ is Star!18327) (ite c!1335405 (regTwo!37167 lt!2570221) (regTwo!37166 lt!2570221))))))

(declare-fun bm!653060 () Bool)

(declare-fun c!1335507 () Bool)

(assert (=> bm!653060 (= call!653065 (validRegex!9452 (ite c!1335506 (reg!18656 (ite c!1335405 (regTwo!37167 lt!2570221) (regTwo!37166 lt!2570221))) (ite c!1335507 (regOne!37167 (ite c!1335405 (regTwo!37167 lt!2570221) (regTwo!37166 lt!2570221))) (regOne!37166 (ite c!1335405 (regTwo!37167 lt!2570221) (regTwo!37166 lt!2570221)))))))))

(declare-fun b!7168796 () Bool)

(declare-fun e!4306129 () Bool)

(assert (=> b!7168796 (= e!4306124 e!4306129)))

(declare-fun res!2921571 () Bool)

(assert (=> b!7168796 (= res!2921571 (not (nullable!7762 (reg!18656 (ite c!1335405 (regTwo!37167 lt!2570221) (regTwo!37166 lt!2570221))))))))

(assert (=> b!7168796 (=> (not res!2921571) (not e!4306129))))

(declare-fun b!7168797 () Bool)

(declare-fun res!2921573 () Bool)

(assert (=> b!7168797 (=> (not res!2921573) (not e!4306125))))

(assert (=> b!7168797 (= res!2921573 call!653066)))

(assert (=> b!7168797 (= e!4306126 e!4306125)))

(declare-fun b!7168798 () Bool)

(assert (=> b!7168798 (= e!4306129 call!653065)))

(declare-fun b!7168799 () Bool)

(assert (=> b!7168799 (= e!4306124 e!4306126)))

(assert (=> b!7168799 (= c!1335507 ((_ is Union!18327) (ite c!1335405 (regTwo!37167 lt!2570221) (regTwo!37166 lt!2570221))))))

(declare-fun bm!653061 () Bool)

(assert (=> bm!653061 (= call!653064 (validRegex!9452 (ite c!1335507 (regTwo!37167 (ite c!1335405 (regTwo!37167 lt!2570221) (regTwo!37166 lt!2570221))) (regTwo!37166 (ite c!1335405 (regTwo!37167 lt!2570221) (regTwo!37166 lt!2570221))))))))

(assert (= (and d!2233130 (not res!2921575)) b!7168795))

(assert (= (and b!7168795 c!1335506) b!7168796))

(assert (= (and b!7168795 (not c!1335506)) b!7168799))

(assert (= (and b!7168796 res!2921571) b!7168798))

(assert (= (and b!7168799 c!1335507) b!7168797))

(assert (= (and b!7168799 (not c!1335507)) b!7168792))

(assert (= (and b!7168797 res!2921573) b!7168791))

(assert (= (and b!7168792 (not res!2921574)) b!7168794))

(assert (= (and b!7168794 res!2921572) b!7168793))

(assert (= (or b!7168797 b!7168794) bm!653059))

(assert (= (or b!7168791 b!7168793) bm!653061))

(assert (= (or b!7168798 bm!653059) bm!653060))

(declare-fun m!7871390 () Bool)

(assert (=> bm!653060 m!7871390))

(declare-fun m!7871392 () Bool)

(assert (=> b!7168796 m!7871392))

(declare-fun m!7871394 () Bool)

(assert (=> bm!653061 m!7871394))

(assert (=> bm!653007 d!2233130))

(declare-fun d!2233132 () Bool)

(assert (=> d!2233132 (= (nullable!7762 (reg!18656 (ite c!1335359 (regTwo!37167 lt!2570202) (regTwo!37166 lt!2570202)))) (nullableFct!3031 (reg!18656 (ite c!1335359 (regTwo!37167 lt!2570202) (regTwo!37166 lt!2570202)))))))

(declare-fun bs!1892831 () Bool)

(assert (= bs!1892831 d!2233132))

(declare-fun m!7871396 () Bool)

(assert (=> bs!1892831 m!7871396))

(assert (=> b!7168354 d!2233132))

(declare-fun bm!653062 () Bool)

(declare-fun call!653069 () Bool)

(declare-fun call!653068 () Bool)

(assert (=> bm!653062 (= call!653069 call!653068)))

(declare-fun b!7168800 () Bool)

(declare-fun e!4306132 () Bool)

(declare-fun call!653067 () Bool)

(assert (=> b!7168800 (= e!4306132 call!653067)))

(declare-fun b!7168801 () Bool)

(declare-fun res!2921579 () Bool)

(declare-fun e!4306135 () Bool)

(assert (=> b!7168801 (=> res!2921579 e!4306135)))

(assert (=> b!7168801 (= res!2921579 (not ((_ is Concat!27172) (ite c!1335402 (reg!18656 (h!76044 (exprs!7779 setElem!52949))) (ite c!1335403 (regOne!37167 (h!76044 (exprs!7779 setElem!52949))) (regOne!37166 (h!76044 (exprs!7779 setElem!52949))))))))))

(declare-fun e!4306133 () Bool)

(assert (=> b!7168801 (= e!4306133 e!4306135)))

(declare-fun d!2233134 () Bool)

(declare-fun res!2921580 () Bool)

(declare-fun e!4306134 () Bool)

(assert (=> d!2233134 (=> res!2921580 e!4306134)))

(assert (=> d!2233134 (= res!2921580 ((_ is ElementMatch!18327) (ite c!1335402 (reg!18656 (h!76044 (exprs!7779 setElem!52949))) (ite c!1335403 (regOne!37167 (h!76044 (exprs!7779 setElem!52949))) (regOne!37166 (h!76044 (exprs!7779 setElem!52949)))))))))

(assert (=> d!2233134 (= (validRegex!9452 (ite c!1335402 (reg!18656 (h!76044 (exprs!7779 setElem!52949))) (ite c!1335403 (regOne!37167 (h!76044 (exprs!7779 setElem!52949))) (regOne!37166 (h!76044 (exprs!7779 setElem!52949)))))) e!4306134)))

(declare-fun b!7168802 () Bool)

(declare-fun e!4306137 () Bool)

(assert (=> b!7168802 (= e!4306137 call!653067)))

(declare-fun b!7168803 () Bool)

(assert (=> b!7168803 (= e!4306135 e!4306137)))

(declare-fun res!2921577 () Bool)

(assert (=> b!7168803 (=> (not res!2921577) (not e!4306137))))

(assert (=> b!7168803 (= res!2921577 call!653069)))

(declare-fun b!7168804 () Bool)

(declare-fun e!4306131 () Bool)

(assert (=> b!7168804 (= e!4306134 e!4306131)))

(declare-fun c!1335508 () Bool)

(assert (=> b!7168804 (= c!1335508 ((_ is Star!18327) (ite c!1335402 (reg!18656 (h!76044 (exprs!7779 setElem!52949))) (ite c!1335403 (regOne!37167 (h!76044 (exprs!7779 setElem!52949))) (regOne!37166 (h!76044 (exprs!7779 setElem!52949)))))))))

(declare-fun bm!653063 () Bool)

(declare-fun c!1335509 () Bool)

(assert (=> bm!653063 (= call!653068 (validRegex!9452 (ite c!1335508 (reg!18656 (ite c!1335402 (reg!18656 (h!76044 (exprs!7779 setElem!52949))) (ite c!1335403 (regOne!37167 (h!76044 (exprs!7779 setElem!52949))) (regOne!37166 (h!76044 (exprs!7779 setElem!52949)))))) (ite c!1335509 (regOne!37167 (ite c!1335402 (reg!18656 (h!76044 (exprs!7779 setElem!52949))) (ite c!1335403 (regOne!37167 (h!76044 (exprs!7779 setElem!52949))) (regOne!37166 (h!76044 (exprs!7779 setElem!52949)))))) (regOne!37166 (ite c!1335402 (reg!18656 (h!76044 (exprs!7779 setElem!52949))) (ite c!1335403 (regOne!37167 (h!76044 (exprs!7779 setElem!52949))) (regOne!37166 (h!76044 (exprs!7779 setElem!52949))))))))))))

(declare-fun b!7168805 () Bool)

(declare-fun e!4306136 () Bool)

(assert (=> b!7168805 (= e!4306131 e!4306136)))

(declare-fun res!2921576 () Bool)

(assert (=> b!7168805 (= res!2921576 (not (nullable!7762 (reg!18656 (ite c!1335402 (reg!18656 (h!76044 (exprs!7779 setElem!52949))) (ite c!1335403 (regOne!37167 (h!76044 (exprs!7779 setElem!52949))) (regOne!37166 (h!76044 (exprs!7779 setElem!52949)))))))))))

(assert (=> b!7168805 (=> (not res!2921576) (not e!4306136))))

(declare-fun b!7168806 () Bool)

(declare-fun res!2921578 () Bool)

(assert (=> b!7168806 (=> (not res!2921578) (not e!4306132))))

(assert (=> b!7168806 (= res!2921578 call!653069)))

(assert (=> b!7168806 (= e!4306133 e!4306132)))

(declare-fun b!7168807 () Bool)

(assert (=> b!7168807 (= e!4306136 call!653068)))

(declare-fun b!7168808 () Bool)

(assert (=> b!7168808 (= e!4306131 e!4306133)))

(assert (=> b!7168808 (= c!1335509 ((_ is Union!18327) (ite c!1335402 (reg!18656 (h!76044 (exprs!7779 setElem!52949))) (ite c!1335403 (regOne!37167 (h!76044 (exprs!7779 setElem!52949))) (regOne!37166 (h!76044 (exprs!7779 setElem!52949)))))))))

(declare-fun bm!653064 () Bool)

(assert (=> bm!653064 (= call!653067 (validRegex!9452 (ite c!1335509 (regTwo!37167 (ite c!1335402 (reg!18656 (h!76044 (exprs!7779 setElem!52949))) (ite c!1335403 (regOne!37167 (h!76044 (exprs!7779 setElem!52949))) (regOne!37166 (h!76044 (exprs!7779 setElem!52949)))))) (regTwo!37166 (ite c!1335402 (reg!18656 (h!76044 (exprs!7779 setElem!52949))) (ite c!1335403 (regOne!37167 (h!76044 (exprs!7779 setElem!52949))) (regOne!37166 (h!76044 (exprs!7779 setElem!52949)))))))))))

(assert (= (and d!2233134 (not res!2921580)) b!7168804))

(assert (= (and b!7168804 c!1335508) b!7168805))

(assert (= (and b!7168804 (not c!1335508)) b!7168808))

(assert (= (and b!7168805 res!2921576) b!7168807))

(assert (= (and b!7168808 c!1335509) b!7168806))

(assert (= (and b!7168808 (not c!1335509)) b!7168801))

(assert (= (and b!7168806 res!2921578) b!7168800))

(assert (= (and b!7168801 (not res!2921579)) b!7168803))

(assert (= (and b!7168803 res!2921577) b!7168802))

(assert (= (or b!7168806 b!7168803) bm!653062))

(assert (= (or b!7168800 b!7168802) bm!653064))

(assert (= (or b!7168807 bm!653062) bm!653063))

(declare-fun m!7871398 () Bool)

(assert (=> bm!653063 m!7871398))

(declare-fun m!7871400 () Bool)

(assert (=> b!7168805 m!7871400))

(declare-fun m!7871402 () Bool)

(assert (=> bm!653064 m!7871402))

(assert (=> bm!653003 d!2233134))

(assert (=> d!2232956 d!2232920))

(declare-fun d!2233136 () Bool)

(declare-fun res!2921581 () Bool)

(declare-fun e!4306138 () Bool)

(assert (=> d!2233136 (=> res!2921581 e!4306138)))

(assert (=> d!2233136 (= res!2921581 ((_ is Nil!69597) (t!383740 lt!2570222)))))

(assert (=> d!2233136 (= (noDuplicate!2871 (t!383740 lt!2570222)) e!4306138)))

(declare-fun b!7168809 () Bool)

(declare-fun e!4306139 () Bool)

(assert (=> b!7168809 (= e!4306138 e!4306139)))

(declare-fun res!2921582 () Bool)

(assert (=> b!7168809 (=> (not res!2921582) (not e!4306139))))

(assert (=> b!7168809 (= res!2921582 (not (contains!20709 (t!383740 (t!383740 lt!2570222)) (h!76045 (t!383740 lt!2570222)))))))

(declare-fun b!7168810 () Bool)

(assert (=> b!7168810 (= e!4306139 (noDuplicate!2871 (t!383740 (t!383740 lt!2570222))))))

(assert (= (and d!2233136 (not res!2921581)) b!7168809))

(assert (= (and b!7168809 res!2921582) b!7168810))

(declare-fun m!7871404 () Bool)

(assert (=> b!7168809 m!7871404))

(declare-fun m!7871406 () Bool)

(assert (=> b!7168810 m!7871406))

(assert (=> b!7168345 d!2233136))

(declare-fun d!2233138 () Bool)

(assert (=> d!2233138 (= (isEmpty!40186 (tail!14056 (t!383739 (unfocusZipperList!2311 (toList!11270 z!3530))))) ((_ is Nil!69596) (tail!14056 (t!383739 (unfocusZipperList!2311 (toList!11270 z!3530))))))))

(assert (=> b!7168308 d!2233138))

(declare-fun d!2233140 () Bool)

(assert (=> d!2233140 (= (tail!14056 (t!383739 (unfocusZipperList!2311 (toList!11270 z!3530)))) (t!383739 (t!383739 (unfocusZipperList!2311 (toList!11270 z!3530)))))))

(assert (=> b!7168308 d!2233140))

(declare-fun d!2233142 () Bool)

(declare-fun res!2921583 () Bool)

(declare-fun e!4306140 () Bool)

(assert (=> d!2233142 (=> res!2921583 e!4306140)))

(assert (=> d!2233142 (= res!2921583 ((_ is Nil!69597) (t!383740 (t!383740 lt!2570208))))))

(assert (=> d!2233142 (= (noDuplicate!2871 (t!383740 (t!383740 lt!2570208))) e!4306140)))

(declare-fun b!7168811 () Bool)

(declare-fun e!4306141 () Bool)

(assert (=> b!7168811 (= e!4306140 e!4306141)))

(declare-fun res!2921584 () Bool)

(assert (=> b!7168811 (=> (not res!2921584) (not e!4306141))))

(assert (=> b!7168811 (= res!2921584 (not (contains!20709 (t!383740 (t!383740 (t!383740 lt!2570208))) (h!76045 (t!383740 (t!383740 lt!2570208))))))))

(declare-fun b!7168812 () Bool)

(assert (=> b!7168812 (= e!4306141 (noDuplicate!2871 (t!383740 (t!383740 (t!383740 lt!2570208)))))))

(assert (= (and d!2233142 (not res!2921583)) b!7168811))

(assert (= (and b!7168811 res!2921584) b!7168812))

(declare-fun m!7871408 () Bool)

(assert (=> b!7168811 m!7871408))

(declare-fun m!7871410 () Bool)

(assert (=> b!7168812 m!7871410))

(assert (=> b!7168387 d!2233142))

(declare-fun d!2233144 () Bool)

(assert (=> d!2233144 (= (nullable!7762 (reg!18656 lt!2570221)) (nullableFct!3031 (reg!18656 lt!2570221)))))

(declare-fun bs!1892832 () Bool)

(assert (= bs!1892832 d!2233144))

(declare-fun m!7871412 () Bool)

(assert (=> bs!1892832 m!7871412))

(assert (=> b!7168324 d!2233144))

(declare-fun d!2233146 () Bool)

(declare-fun res!2921585 () Bool)

(declare-fun e!4306142 () Bool)

(assert (=> d!2233146 (=> res!2921585 e!4306142)))

(assert (=> d!2233146 (= res!2921585 ((_ is Nil!69597) (t!383740 res!2921365)))))

(assert (=> d!2233146 (= (noDuplicate!2871 (t!383740 res!2921365)) e!4306142)))

(declare-fun b!7168813 () Bool)

(declare-fun e!4306143 () Bool)

(assert (=> b!7168813 (= e!4306142 e!4306143)))

(declare-fun res!2921586 () Bool)

(assert (=> b!7168813 (=> (not res!2921586) (not e!4306143))))

(assert (=> b!7168813 (= res!2921586 (not (contains!20709 (t!383740 (t!383740 res!2921365)) (h!76045 (t!383740 res!2921365)))))))

(declare-fun b!7168814 () Bool)

(assert (=> b!7168814 (= e!4306143 (noDuplicate!2871 (t!383740 (t!383740 res!2921365))))))

(assert (= (and d!2233146 (not res!2921585)) b!7168813))

(assert (= (and b!7168813 res!2921586) b!7168814))

(declare-fun m!7871414 () Bool)

(assert (=> b!7168813 m!7871414))

(declare-fun m!7871416 () Bool)

(assert (=> b!7168814 m!7871416))

(assert (=> b!7168368 d!2233146))

(declare-fun d!2233148 () Bool)

(declare-fun res!2921587 () Bool)

(declare-fun e!4306144 () Bool)

(assert (=> d!2233148 (=> res!2921587 e!4306144)))

(assert (=> d!2233148 (= res!2921587 ((_ is Nil!69596) (t!383739 (unfocusZipperList!2311 (toList!11270 z!3530)))))))

(assert (=> d!2233148 (= (forall!17157 (t!383739 (unfocusZipperList!2311 (toList!11270 z!3530))) lambda!437060) e!4306144)))

(declare-fun b!7168815 () Bool)

(declare-fun e!4306145 () Bool)

(assert (=> b!7168815 (= e!4306144 e!4306145)))

(declare-fun res!2921588 () Bool)

(assert (=> b!7168815 (=> (not res!2921588) (not e!4306145))))

(assert (=> b!7168815 (= res!2921588 (dynLambda!28343 lambda!437060 (h!76044 (t!383739 (unfocusZipperList!2311 (toList!11270 z!3530))))))))

(declare-fun b!7168816 () Bool)

(assert (=> b!7168816 (= e!4306145 (forall!17157 (t!383739 (t!383739 (unfocusZipperList!2311 (toList!11270 z!3530)))) lambda!437060))))

(assert (= (and d!2233148 (not res!2921587)) b!7168815))

(assert (= (and b!7168815 res!2921588) b!7168816))

(declare-fun b_lambda!274005 () Bool)

(assert (=> (not b_lambda!274005) (not b!7168815)))

(declare-fun m!7871418 () Bool)

(assert (=> b!7168815 m!7871418))

(declare-fun m!7871420 () Bool)

(assert (=> b!7168816 m!7871420))

(assert (=> b!7168381 d!2233148))

(declare-fun bs!1892833 () Bool)

(declare-fun d!2233150 () Bool)

(assert (= bs!1892833 (and d!2233150 d!2232906)))

(declare-fun lambda!437093 () Int)

(assert (=> bs!1892833 (= lambda!437093 lambda!437070)))

(declare-fun bs!1892834 () Bool)

(assert (= bs!1892834 (and d!2233150 d!2233080)))

(assert (=> bs!1892834 (= lambda!437093 lambda!437090)))

(declare-fun bs!1892835 () Bool)

(assert (= bs!1892835 (and d!2233150 d!2232868)))

(assert (=> bs!1892835 (= lambda!437093 lambda!437066)))

(declare-fun bs!1892836 () Bool)

(assert (= bs!1892836 (and d!2233150 d!2233088)))

(assert (=> bs!1892836 (= lambda!437093 lambda!437092)))

(declare-fun bs!1892837 () Bool)

(assert (= bs!1892837 (and d!2233150 d!2233082)))

(assert (=> bs!1892837 (= lambda!437093 lambda!437091)))

(declare-fun bs!1892838 () Bool)

(assert (= bs!1892838 (and d!2233150 d!2233062)))

(assert (=> bs!1892838 (= lambda!437093 lambda!437088)))

(declare-fun bs!1892839 () Bool)

(assert (= bs!1892839 (and d!2233150 d!2232914)))

(assert (=> bs!1892839 (= lambda!437093 lambda!437072)))

(declare-fun bs!1892840 () Bool)

(assert (= bs!1892840 (and d!2233150 d!2232846)))

(assert (=> bs!1892840 (= lambda!437093 lambda!437054)))

(declare-fun bs!1892841 () Bool)

(assert (= bs!1892841 (and d!2233150 d!2232908)))

(assert (=> bs!1892841 (= lambda!437093 lambda!437071)))

(declare-fun bs!1892842 () Bool)

(assert (= bs!1892842 (and d!2233150 d!2232904)))

(assert (=> bs!1892842 (= lambda!437093 lambda!437069)))

(declare-fun bs!1892843 () Bool)

(assert (= bs!1892843 (and d!2233150 d!2232890)))

(assert (=> bs!1892843 (= lambda!437093 lambda!437068)))

(declare-fun bs!1892844 () Bool)

(assert (= bs!1892844 (and d!2233150 d!2233060)))

(assert (=> bs!1892844 (= lambda!437093 lambda!437087)))

(declare-fun bs!1892845 () Bool)

(assert (= bs!1892845 (and d!2233150 d!2233078)))

(assert (=> bs!1892845 (= lambda!437093 lambda!437089)))

(declare-fun bs!1892846 () Bool)

(assert (= bs!1892846 (and d!2233150 d!2232964)))

(assert (=> bs!1892846 (= lambda!437093 lambda!437076)))

(declare-fun bs!1892847 () Bool)

(assert (= bs!1892847 (and d!2233150 d!2232916)))

(assert (=> bs!1892847 (= lambda!437093 lambda!437073)))

(declare-fun bs!1892848 () Bool)

(assert (= bs!1892848 (and d!2233150 d!2232966)))

(assert (=> bs!1892848 (= lambda!437093 lambda!437077)))

(declare-fun bs!1892849 () Bool)

(assert (= bs!1892849 (and d!2233150 d!2232864)))

(assert (=> bs!1892849 (= lambda!437093 lambda!437060)))

(assert (=> d!2233150 (= (inv!88839 (h!76045 (t!383740 res!2921365))) (forall!17157 (exprs!7779 (h!76045 (t!383740 res!2921365))) lambda!437093))))

(declare-fun bs!1892850 () Bool)

(assert (= bs!1892850 d!2233150))

(declare-fun m!7871422 () Bool)

(assert (=> bs!1892850 m!7871422))

(assert (=> b!7168444 d!2233150))

(declare-fun d!2233152 () Bool)

(declare-fun c!1335510 () Bool)

(assert (=> d!2233152 (= c!1335510 ((_ is Nil!69597) (t!383740 lt!2570222)))))

(declare-fun e!4306146 () (InoxSet Context!14558))

(assert (=> d!2233152 (= (content!14300 (t!383740 lt!2570222)) e!4306146)))

(declare-fun b!7168817 () Bool)

(assert (=> b!7168817 (= e!4306146 ((as const (Array Context!14558 Bool)) false))))

(declare-fun b!7168818 () Bool)

(assert (=> b!7168818 (= e!4306146 ((_ map or) (store ((as const (Array Context!14558 Bool)) false) (h!76045 (t!383740 lt!2570222)) true) (content!14300 (t!383740 (t!383740 lt!2570222)))))))

(assert (= (and d!2233152 c!1335510) b!7168817))

(assert (= (and d!2233152 (not c!1335510)) b!7168818))

(declare-fun m!7871424 () Bool)

(assert (=> b!7168818 m!7871424))

(declare-fun m!7871426 () Bool)

(assert (=> b!7168818 m!7871426))

(assert (=> b!7168341 d!2233152))

(declare-fun bs!1892851 () Bool)

(declare-fun d!2233154 () Bool)

(assert (= bs!1892851 (and d!2233154 d!2232906)))

(declare-fun lambda!437094 () Int)

(assert (=> bs!1892851 (= lambda!437094 lambda!437070)))

(declare-fun bs!1892852 () Bool)

(assert (= bs!1892852 (and d!2233154 d!2233080)))

(assert (=> bs!1892852 (= lambda!437094 lambda!437090)))

(declare-fun bs!1892853 () Bool)

(assert (= bs!1892853 (and d!2233154 d!2232868)))

(assert (=> bs!1892853 (= lambda!437094 lambda!437066)))

(declare-fun bs!1892854 () Bool)

(assert (= bs!1892854 (and d!2233154 d!2233088)))

(assert (=> bs!1892854 (= lambda!437094 lambda!437092)))

(declare-fun bs!1892855 () Bool)

(assert (= bs!1892855 (and d!2233154 d!2233082)))

(assert (=> bs!1892855 (= lambda!437094 lambda!437091)))

(declare-fun bs!1892856 () Bool)

(assert (= bs!1892856 (and d!2233154 d!2233062)))

(assert (=> bs!1892856 (= lambda!437094 lambda!437088)))

(declare-fun bs!1892857 () Bool)

(assert (= bs!1892857 (and d!2233154 d!2232914)))

(assert (=> bs!1892857 (= lambda!437094 lambda!437072)))

(declare-fun bs!1892858 () Bool)

(assert (= bs!1892858 (and d!2233154 d!2232846)))

(assert (=> bs!1892858 (= lambda!437094 lambda!437054)))

(declare-fun bs!1892859 () Bool)

(assert (= bs!1892859 (and d!2233154 d!2233150)))

(assert (=> bs!1892859 (= lambda!437094 lambda!437093)))

(declare-fun bs!1892860 () Bool)

(assert (= bs!1892860 (and d!2233154 d!2232908)))

(assert (=> bs!1892860 (= lambda!437094 lambda!437071)))

(declare-fun bs!1892861 () Bool)

(assert (= bs!1892861 (and d!2233154 d!2232904)))

(assert (=> bs!1892861 (= lambda!437094 lambda!437069)))

(declare-fun bs!1892862 () Bool)

(assert (= bs!1892862 (and d!2233154 d!2232890)))

(assert (=> bs!1892862 (= lambda!437094 lambda!437068)))

(declare-fun bs!1892863 () Bool)

(assert (= bs!1892863 (and d!2233154 d!2233060)))

(assert (=> bs!1892863 (= lambda!437094 lambda!437087)))

(declare-fun bs!1892864 () Bool)

(assert (= bs!1892864 (and d!2233154 d!2233078)))

(assert (=> bs!1892864 (= lambda!437094 lambda!437089)))

(declare-fun bs!1892865 () Bool)

(assert (= bs!1892865 (and d!2233154 d!2232964)))

(assert (=> bs!1892865 (= lambda!437094 lambda!437076)))

(declare-fun bs!1892866 () Bool)

(assert (= bs!1892866 (and d!2233154 d!2232916)))

(assert (=> bs!1892866 (= lambda!437094 lambda!437073)))

(declare-fun bs!1892867 () Bool)

(assert (= bs!1892867 (and d!2233154 d!2232966)))

(assert (=> bs!1892867 (= lambda!437094 lambda!437077)))

(declare-fun bs!1892868 () Bool)

(assert (= bs!1892868 (and d!2233154 d!2232864)))

(assert (=> bs!1892868 (= lambda!437094 lambda!437060)))

(assert (=> d!2233154 (= (inv!88839 (h!76045 res!2921396)) (forall!17157 (exprs!7779 (h!76045 res!2921396)) lambda!437094))))

(declare-fun bs!1892869 () Bool)

(assert (= bs!1892869 d!2233154))

(declare-fun m!7871428 () Bool)

(assert (=> bs!1892869 m!7871428))

(assert (=> b!7168346 d!2233154))

(declare-fun bs!1892870 () Bool)

(declare-fun d!2233156 () Bool)

(assert (= bs!1892870 (and d!2233156 d!2232906)))

(declare-fun lambda!437095 () Int)

(assert (=> bs!1892870 (= lambda!437095 lambda!437070)))

(declare-fun bs!1892871 () Bool)

(assert (= bs!1892871 (and d!2233156 d!2233080)))

(assert (=> bs!1892871 (= lambda!437095 lambda!437090)))

(declare-fun bs!1892872 () Bool)

(assert (= bs!1892872 (and d!2233156 d!2232868)))

(assert (=> bs!1892872 (= lambda!437095 lambda!437066)))

(declare-fun bs!1892873 () Bool)

(assert (= bs!1892873 (and d!2233156 d!2233088)))

(assert (=> bs!1892873 (= lambda!437095 lambda!437092)))

(declare-fun bs!1892874 () Bool)

(assert (= bs!1892874 (and d!2233156 d!2233062)))

(assert (=> bs!1892874 (= lambda!437095 lambda!437088)))

(declare-fun bs!1892875 () Bool)

(assert (= bs!1892875 (and d!2233156 d!2232914)))

(assert (=> bs!1892875 (= lambda!437095 lambda!437072)))

(declare-fun bs!1892876 () Bool)

(assert (= bs!1892876 (and d!2233156 d!2232846)))

(assert (=> bs!1892876 (= lambda!437095 lambda!437054)))

(declare-fun bs!1892877 () Bool)

(assert (= bs!1892877 (and d!2233156 d!2233150)))

(assert (=> bs!1892877 (= lambda!437095 lambda!437093)))

(declare-fun bs!1892878 () Bool)

(assert (= bs!1892878 (and d!2233156 d!2232908)))

(assert (=> bs!1892878 (= lambda!437095 lambda!437071)))

(declare-fun bs!1892879 () Bool)

(assert (= bs!1892879 (and d!2233156 d!2232904)))

(assert (=> bs!1892879 (= lambda!437095 lambda!437069)))

(declare-fun bs!1892880 () Bool)

(assert (= bs!1892880 (and d!2233156 d!2232890)))

(assert (=> bs!1892880 (= lambda!437095 lambda!437068)))

(declare-fun bs!1892881 () Bool)

(assert (= bs!1892881 (and d!2233156 d!2233060)))

(assert (=> bs!1892881 (= lambda!437095 lambda!437087)))

(declare-fun bs!1892882 () Bool)

(assert (= bs!1892882 (and d!2233156 d!2233078)))

(assert (=> bs!1892882 (= lambda!437095 lambda!437089)))

(declare-fun bs!1892883 () Bool)

(assert (= bs!1892883 (and d!2233156 d!2232964)))

(assert (=> bs!1892883 (= lambda!437095 lambda!437076)))

(declare-fun bs!1892884 () Bool)

(assert (= bs!1892884 (and d!2233156 d!2232916)))

(assert (=> bs!1892884 (= lambda!437095 lambda!437073)))

(declare-fun bs!1892885 () Bool)

(assert (= bs!1892885 (and d!2233156 d!2233082)))

(assert (=> bs!1892885 (= lambda!437095 lambda!437091)))

(declare-fun bs!1892886 () Bool)

(assert (= bs!1892886 (and d!2233156 d!2233154)))

(assert (=> bs!1892886 (= lambda!437095 lambda!437094)))

(declare-fun bs!1892887 () Bool)

(assert (= bs!1892887 (and d!2233156 d!2232966)))

(assert (=> bs!1892887 (= lambda!437095 lambda!437077)))

(declare-fun bs!1892888 () Bool)

(assert (= bs!1892888 (and d!2233156 d!2232864)))

(assert (=> bs!1892888 (= lambda!437095 lambda!437060)))

(declare-fun b!7168819 () Bool)

(declare-fun e!4306149 () Bool)

(assert (=> b!7168819 (= e!4306149 (isEmpty!40186 (t!383739 (t!383739 (t!383739 (unfocusZipperList!2311 (toList!11270 z!3530)))))))))

(declare-fun b!7168820 () Bool)

(declare-fun e!4306152 () Bool)

(declare-fun e!4306147 () Bool)

(assert (=> b!7168820 (= e!4306152 e!4306147)))

(declare-fun c!1335513 () Bool)

(assert (=> b!7168820 (= c!1335513 (isEmpty!40186 (t!383739 (t!383739 (unfocusZipperList!2311 (toList!11270 z!3530))))))))

(declare-fun b!7168821 () Bool)

(declare-fun e!4306148 () Bool)

(declare-fun lt!2570255 () Regex!18327)

(assert (=> b!7168821 (= e!4306148 (= lt!2570255 (head!14630 (t!383739 (t!383739 (unfocusZipperList!2311 (toList!11270 z!3530)))))))))

(declare-fun b!7168822 () Bool)

(declare-fun e!4306150 () Regex!18327)

(assert (=> b!7168822 (= e!4306150 EmptyLang!18327)))

(declare-fun b!7168823 () Bool)

(assert (=> b!7168823 (= e!4306150 (Union!18327 (h!76044 (t!383739 (t!383739 (unfocusZipperList!2311 (toList!11270 z!3530))))) (generalisedUnion!2755 (t!383739 (t!383739 (t!383739 (unfocusZipperList!2311 (toList!11270 z!3530))))))))))

(declare-fun b!7168824 () Bool)

(declare-fun e!4306151 () Regex!18327)

(assert (=> b!7168824 (= e!4306151 (h!76044 (t!383739 (t!383739 (unfocusZipperList!2311 (toList!11270 z!3530))))))))

(declare-fun b!7168825 () Bool)

(assert (=> b!7168825 (= e!4306147 (isEmptyLang!2140 lt!2570255))))

(declare-fun b!7168826 () Bool)

(assert (=> b!7168826 (= e!4306148 (isUnion!1568 lt!2570255))))

(assert (=> d!2233156 e!4306152))

(declare-fun res!2921590 () Bool)

(assert (=> d!2233156 (=> (not res!2921590) (not e!4306152))))

(assert (=> d!2233156 (= res!2921590 (validRegex!9452 lt!2570255))))

(assert (=> d!2233156 (= lt!2570255 e!4306151)))

(declare-fun c!1335514 () Bool)

(assert (=> d!2233156 (= c!1335514 e!4306149)))

(declare-fun res!2921589 () Bool)

(assert (=> d!2233156 (=> (not res!2921589) (not e!4306149))))

(assert (=> d!2233156 (= res!2921589 ((_ is Cons!69596) (t!383739 (t!383739 (unfocusZipperList!2311 (toList!11270 z!3530))))))))

(assert (=> d!2233156 (forall!17157 (t!383739 (t!383739 (unfocusZipperList!2311 (toList!11270 z!3530)))) lambda!437095)))

(assert (=> d!2233156 (= (generalisedUnion!2755 (t!383739 (t!383739 (unfocusZipperList!2311 (toList!11270 z!3530))))) lt!2570255)))

(declare-fun b!7168827 () Bool)

(assert (=> b!7168827 (= e!4306147 e!4306148)))

(declare-fun c!1335512 () Bool)

(assert (=> b!7168827 (= c!1335512 (isEmpty!40186 (tail!14056 (t!383739 (t!383739 (unfocusZipperList!2311 (toList!11270 z!3530)))))))))

(declare-fun b!7168828 () Bool)

(assert (=> b!7168828 (= e!4306151 e!4306150)))

(declare-fun c!1335511 () Bool)

(assert (=> b!7168828 (= c!1335511 ((_ is Cons!69596) (t!383739 (t!383739 (unfocusZipperList!2311 (toList!11270 z!3530))))))))

(assert (= (and d!2233156 res!2921589) b!7168819))

(assert (= (and d!2233156 c!1335514) b!7168824))

(assert (= (and d!2233156 (not c!1335514)) b!7168828))

(assert (= (and b!7168828 c!1335511) b!7168823))

(assert (= (and b!7168828 (not c!1335511)) b!7168822))

(assert (= (and d!2233156 res!2921590) b!7168820))

(assert (= (and b!7168820 c!1335513) b!7168825))

(assert (= (and b!7168820 (not c!1335513)) b!7168827))

(assert (= (and b!7168827 c!1335512) b!7168821))

(assert (= (and b!7168827 (not c!1335512)) b!7168826))

(declare-fun m!7871430 () Bool)

(assert (=> b!7168823 m!7871430))

(declare-fun m!7871432 () Bool)

(assert (=> b!7168826 m!7871432))

(declare-fun m!7871434 () Bool)

(assert (=> d!2233156 m!7871434))

(declare-fun m!7871436 () Bool)

(assert (=> d!2233156 m!7871436))

(declare-fun m!7871438 () Bool)

(assert (=> b!7168821 m!7871438))

(declare-fun m!7871440 () Bool)

(assert (=> b!7168827 m!7871440))

(assert (=> b!7168827 m!7871440))

(declare-fun m!7871442 () Bool)

(assert (=> b!7168827 m!7871442))

(declare-fun m!7871444 () Bool)

(assert (=> b!7168825 m!7871444))

(declare-fun m!7871446 () Bool)

(assert (=> b!7168819 m!7871446))

(assert (=> b!7168820 m!7870876))

(assert (=> b!7168304 d!2233156))

(declare-fun bm!653065 () Bool)

(declare-fun call!653072 () Bool)

(declare-fun call!653071 () Bool)

(assert (=> bm!653065 (= call!653072 call!653071)))

(declare-fun b!7168829 () Bool)

(declare-fun e!4306154 () Bool)

(declare-fun call!653070 () Bool)

(assert (=> b!7168829 (= e!4306154 call!653070)))

(declare-fun b!7168830 () Bool)

(declare-fun res!2921594 () Bool)

(declare-fun e!4306157 () Bool)

(assert (=> b!7168830 (=> res!2921594 e!4306157)))

(assert (=> b!7168830 (= res!2921594 (not ((_ is Concat!27172) (h!76044 (unfocusZipperList!2311 (toList!11270 z!3530))))))))

(declare-fun e!4306155 () Bool)

(assert (=> b!7168830 (= e!4306155 e!4306157)))

(declare-fun d!2233158 () Bool)

(declare-fun res!2921595 () Bool)

(declare-fun e!4306156 () Bool)

(assert (=> d!2233158 (=> res!2921595 e!4306156)))

(assert (=> d!2233158 (= res!2921595 ((_ is ElementMatch!18327) (h!76044 (unfocusZipperList!2311 (toList!11270 z!3530)))))))

(assert (=> d!2233158 (= (validRegex!9452 (h!76044 (unfocusZipperList!2311 (toList!11270 z!3530)))) e!4306156)))

(declare-fun b!7168831 () Bool)

(declare-fun e!4306159 () Bool)

(assert (=> b!7168831 (= e!4306159 call!653070)))

(declare-fun b!7168832 () Bool)

(assert (=> b!7168832 (= e!4306157 e!4306159)))

(declare-fun res!2921592 () Bool)

(assert (=> b!7168832 (=> (not res!2921592) (not e!4306159))))

(assert (=> b!7168832 (= res!2921592 call!653072)))

(declare-fun b!7168833 () Bool)

(declare-fun e!4306153 () Bool)

(assert (=> b!7168833 (= e!4306156 e!4306153)))

(declare-fun c!1335515 () Bool)

(assert (=> b!7168833 (= c!1335515 ((_ is Star!18327) (h!76044 (unfocusZipperList!2311 (toList!11270 z!3530)))))))

(declare-fun bm!653066 () Bool)

(declare-fun c!1335516 () Bool)

(assert (=> bm!653066 (= call!653071 (validRegex!9452 (ite c!1335515 (reg!18656 (h!76044 (unfocusZipperList!2311 (toList!11270 z!3530)))) (ite c!1335516 (regOne!37167 (h!76044 (unfocusZipperList!2311 (toList!11270 z!3530)))) (regOne!37166 (h!76044 (unfocusZipperList!2311 (toList!11270 z!3530))))))))))

(declare-fun b!7168834 () Bool)

(declare-fun e!4306158 () Bool)

(assert (=> b!7168834 (= e!4306153 e!4306158)))

(declare-fun res!2921591 () Bool)

(assert (=> b!7168834 (= res!2921591 (not (nullable!7762 (reg!18656 (h!76044 (unfocusZipperList!2311 (toList!11270 z!3530)))))))))

(assert (=> b!7168834 (=> (not res!2921591) (not e!4306158))))

(declare-fun b!7168835 () Bool)

(declare-fun res!2921593 () Bool)

(assert (=> b!7168835 (=> (not res!2921593) (not e!4306154))))

(assert (=> b!7168835 (= res!2921593 call!653072)))

(assert (=> b!7168835 (= e!4306155 e!4306154)))

(declare-fun b!7168836 () Bool)

(assert (=> b!7168836 (= e!4306158 call!653071)))

(declare-fun b!7168837 () Bool)

(assert (=> b!7168837 (= e!4306153 e!4306155)))

(assert (=> b!7168837 (= c!1335516 ((_ is Union!18327) (h!76044 (unfocusZipperList!2311 (toList!11270 z!3530)))))))

(declare-fun bm!653067 () Bool)

(assert (=> bm!653067 (= call!653070 (validRegex!9452 (ite c!1335516 (regTwo!37167 (h!76044 (unfocusZipperList!2311 (toList!11270 z!3530)))) (regTwo!37166 (h!76044 (unfocusZipperList!2311 (toList!11270 z!3530)))))))))

(assert (= (and d!2233158 (not res!2921595)) b!7168833))

(assert (= (and b!7168833 c!1335515) b!7168834))

(assert (= (and b!7168833 (not c!1335515)) b!7168837))

(assert (= (and b!7168834 res!2921591) b!7168836))

(assert (= (and b!7168837 c!1335516) b!7168835))

(assert (= (and b!7168837 (not c!1335516)) b!7168830))

(assert (= (and b!7168835 res!2921593) b!7168829))

(assert (= (and b!7168830 (not res!2921594)) b!7168832))

(assert (= (and b!7168832 res!2921592) b!7168831))

(assert (= (or b!7168835 b!7168832) bm!653065))

(assert (= (or b!7168829 b!7168831) bm!653067))

(assert (= (or b!7168836 bm!653065) bm!653066))

(declare-fun m!7871448 () Bool)

(assert (=> bm!653066 m!7871448))

(declare-fun m!7871450 () Bool)

(assert (=> b!7168834 m!7871450))

(declare-fun m!7871452 () Bool)

(assert (=> bm!653067 m!7871452))

(assert (=> bs!1892692 d!2233158))

(declare-fun d!2233160 () Bool)

(assert (=> d!2233160 (= (isEmptyLang!2140 lt!2570225) ((_ is EmptyLang!18327) lt!2570225))))

(assert (=> b!7168306 d!2233160))

(declare-fun d!2233162 () Bool)

(assert (=> d!2233162 (= (isUnion!1568 lt!2570226) ((_ is Union!18327) lt!2570226))))

(assert (=> b!7168335 d!2233162))

(declare-fun d!2233164 () Bool)

(assert (=> d!2233164 (= (head!14630 (exprs!7779 (h!76045 (toList!11270 z!3530)))) (h!76044 (exprs!7779 (h!76045 (toList!11270 z!3530)))))))

(assert (=> b!7168419 d!2233164))

(declare-fun d!2233166 () Bool)

(declare-fun c!1335517 () Bool)

(assert (=> d!2233166 (= c!1335517 ((_ is Nil!69597) res!2921396))))

(declare-fun e!4306160 () (InoxSet Context!14558))

(assert (=> d!2233166 (= (content!14300 res!2921396) e!4306160)))

(declare-fun b!7168838 () Bool)

(assert (=> b!7168838 (= e!4306160 ((as const (Array Context!14558 Bool)) false))))

(declare-fun b!7168839 () Bool)

(assert (=> b!7168839 (= e!4306160 ((_ map or) (store ((as const (Array Context!14558 Bool)) false) (h!76045 res!2921396) true) (content!14300 (t!383740 res!2921396))))))

(assert (= (and d!2233166 c!1335517) b!7168838))

(assert (= (and d!2233166 (not c!1335517)) b!7168839))

(declare-fun m!7871454 () Bool)

(assert (=> b!7168839 m!7871454))

(declare-fun m!7871456 () Bool)

(assert (=> b!7168839 m!7871456))

(assert (=> b!7168348 d!2233166))

(declare-fun bm!653068 () Bool)

(declare-fun call!653075 () Bool)

(declare-fun call!653074 () Bool)

(assert (=> bm!653068 (= call!653075 call!653074)))

(declare-fun b!7168840 () Bool)

(declare-fun e!4306162 () Bool)

(declare-fun call!653073 () Bool)

(assert (=> b!7168840 (= e!4306162 call!653073)))

(declare-fun b!7168841 () Bool)

(declare-fun res!2921599 () Bool)

(declare-fun e!4306165 () Bool)

(assert (=> b!7168841 (=> res!2921599 e!4306165)))

(assert (=> b!7168841 (= res!2921599 (not ((_ is Concat!27172) (ite c!1335418 (regTwo!37167 lt!2570213) (regTwo!37166 lt!2570213)))))))

(declare-fun e!4306163 () Bool)

(assert (=> b!7168841 (= e!4306163 e!4306165)))

(declare-fun d!2233168 () Bool)

(declare-fun res!2921600 () Bool)

(declare-fun e!4306164 () Bool)

(assert (=> d!2233168 (=> res!2921600 e!4306164)))

(assert (=> d!2233168 (= res!2921600 ((_ is ElementMatch!18327) (ite c!1335418 (regTwo!37167 lt!2570213) (regTwo!37166 lt!2570213))))))

(assert (=> d!2233168 (= (validRegex!9452 (ite c!1335418 (regTwo!37167 lt!2570213) (regTwo!37166 lt!2570213))) e!4306164)))

(declare-fun b!7168842 () Bool)

(declare-fun e!4306167 () Bool)

(assert (=> b!7168842 (= e!4306167 call!653073)))

(declare-fun b!7168843 () Bool)

(assert (=> b!7168843 (= e!4306165 e!4306167)))

(declare-fun res!2921597 () Bool)

(assert (=> b!7168843 (=> (not res!2921597) (not e!4306167))))

(assert (=> b!7168843 (= res!2921597 call!653075)))

(declare-fun b!7168844 () Bool)

(declare-fun e!4306161 () Bool)

(assert (=> b!7168844 (= e!4306164 e!4306161)))

(declare-fun c!1335518 () Bool)

(assert (=> b!7168844 (= c!1335518 ((_ is Star!18327) (ite c!1335418 (regTwo!37167 lt!2570213) (regTwo!37166 lt!2570213))))))

(declare-fun c!1335519 () Bool)

(declare-fun bm!653069 () Bool)

(assert (=> bm!653069 (= call!653074 (validRegex!9452 (ite c!1335518 (reg!18656 (ite c!1335418 (regTwo!37167 lt!2570213) (regTwo!37166 lt!2570213))) (ite c!1335519 (regOne!37167 (ite c!1335418 (regTwo!37167 lt!2570213) (regTwo!37166 lt!2570213))) (regOne!37166 (ite c!1335418 (regTwo!37167 lt!2570213) (regTwo!37166 lt!2570213)))))))))

(declare-fun b!7168845 () Bool)

(declare-fun e!4306166 () Bool)

(assert (=> b!7168845 (= e!4306161 e!4306166)))

(declare-fun res!2921596 () Bool)

(assert (=> b!7168845 (= res!2921596 (not (nullable!7762 (reg!18656 (ite c!1335418 (regTwo!37167 lt!2570213) (regTwo!37166 lt!2570213))))))))

(assert (=> b!7168845 (=> (not res!2921596) (not e!4306166))))

(declare-fun b!7168846 () Bool)

(declare-fun res!2921598 () Bool)

(assert (=> b!7168846 (=> (not res!2921598) (not e!4306162))))

(assert (=> b!7168846 (= res!2921598 call!653075)))

(assert (=> b!7168846 (= e!4306163 e!4306162)))

(declare-fun b!7168847 () Bool)

(assert (=> b!7168847 (= e!4306166 call!653074)))

(declare-fun b!7168848 () Bool)

(assert (=> b!7168848 (= e!4306161 e!4306163)))

(assert (=> b!7168848 (= c!1335519 ((_ is Union!18327) (ite c!1335418 (regTwo!37167 lt!2570213) (regTwo!37166 lt!2570213))))))

(declare-fun bm!653070 () Bool)

(assert (=> bm!653070 (= call!653073 (validRegex!9452 (ite c!1335519 (regTwo!37167 (ite c!1335418 (regTwo!37167 lt!2570213) (regTwo!37166 lt!2570213))) (regTwo!37166 (ite c!1335418 (regTwo!37167 lt!2570213) (regTwo!37166 lt!2570213))))))))

(assert (= (and d!2233168 (not res!2921600)) b!7168844))

(assert (= (and b!7168844 c!1335518) b!7168845))

(assert (= (and b!7168844 (not c!1335518)) b!7168848))

(assert (= (and b!7168845 res!2921596) b!7168847))

(assert (= (and b!7168848 c!1335519) b!7168846))

(assert (= (and b!7168848 (not c!1335519)) b!7168841))

(assert (= (and b!7168846 res!2921598) b!7168840))

(assert (= (and b!7168841 (not res!2921599)) b!7168843))

(assert (= (and b!7168843 res!2921597) b!7168842))

(assert (= (or b!7168846 b!7168843) bm!653068))

(assert (= (or b!7168840 b!7168842) bm!653070))

(assert (= (or b!7168847 bm!653068) bm!653069))

(declare-fun m!7871458 () Bool)

(assert (=> bm!653069 m!7871458))

(declare-fun m!7871460 () Bool)

(assert (=> b!7168845 m!7871460))

(declare-fun m!7871462 () Bool)

(assert (=> bm!653070 m!7871462))

(assert (=> bm!653016 d!2233168))

(declare-fun b!7168863 () Bool)

(declare-fun e!4306185 () Bool)

(declare-fun e!4306184 () Bool)

(assert (=> b!7168863 (= e!4306185 e!4306184)))

(declare-fun res!2921614 () Bool)

(declare-fun call!653080 () Bool)

(assert (=> b!7168863 (= res!2921614 call!653080)))

(assert (=> b!7168863 (=> (not res!2921614) (not e!4306184))))

(declare-fun b!7168864 () Bool)

(declare-fun e!4306183 () Bool)

(assert (=> b!7168864 (= e!4306185 e!4306183)))

(declare-fun res!2921611 () Bool)

(assert (=> b!7168864 (= res!2921611 call!653080)))

(assert (=> b!7168864 (=> res!2921611 e!4306183)))

(declare-fun b!7168865 () Bool)

(declare-fun call!653081 () Bool)

(assert (=> b!7168865 (= e!4306184 call!653081)))

(declare-fun b!7168866 () Bool)

(declare-fun e!4306182 () Bool)

(assert (=> b!7168866 (= e!4306182 e!4306185)))

(declare-fun c!1335522 () Bool)

(assert (=> b!7168866 (= c!1335522 ((_ is Union!18327) (reg!18656 lt!2570202)))))

(declare-fun b!7168867 () Bool)

(assert (=> b!7168867 (= e!4306183 call!653081)))

(declare-fun b!7168868 () Bool)

(declare-fun e!4306181 () Bool)

(declare-fun e!4306180 () Bool)

(assert (=> b!7168868 (= e!4306181 e!4306180)))

(declare-fun res!2921612 () Bool)

(assert (=> b!7168868 (=> (not res!2921612) (not e!4306180))))

(assert (=> b!7168868 (= res!2921612 (and (not ((_ is EmptyLang!18327) (reg!18656 lt!2570202))) (not ((_ is ElementMatch!18327) (reg!18656 lt!2570202)))))))

(declare-fun d!2233170 () Bool)

(declare-fun res!2921613 () Bool)

(assert (=> d!2233170 (=> res!2921613 e!4306181)))

(assert (=> d!2233170 (= res!2921613 ((_ is EmptyExpr!18327) (reg!18656 lt!2570202)))))

(assert (=> d!2233170 (= (nullableFct!3031 (reg!18656 lt!2570202)) e!4306181)))

(declare-fun bm!653075 () Bool)

(assert (=> bm!653075 (= call!653081 (nullable!7762 (ite c!1335522 (regTwo!37167 (reg!18656 lt!2570202)) (regTwo!37166 (reg!18656 lt!2570202)))))))

(declare-fun b!7168869 () Bool)

(assert (=> b!7168869 (= e!4306180 e!4306182)))

(declare-fun res!2921615 () Bool)

(assert (=> b!7168869 (=> res!2921615 e!4306182)))

(assert (=> b!7168869 (= res!2921615 ((_ is Star!18327) (reg!18656 lt!2570202)))))

(declare-fun bm!653076 () Bool)

(assert (=> bm!653076 (= call!653080 (nullable!7762 (ite c!1335522 (regOne!37167 (reg!18656 lt!2570202)) (regOne!37166 (reg!18656 lt!2570202)))))))

(assert (= (and d!2233170 (not res!2921613)) b!7168868))

(assert (= (and b!7168868 res!2921612) b!7168869))

(assert (= (and b!7168869 (not res!2921615)) b!7168866))

(assert (= (and b!7168866 c!1335522) b!7168864))

(assert (= (and b!7168866 (not c!1335522)) b!7168863))

(assert (= (and b!7168864 (not res!2921611)) b!7168867))

(assert (= (and b!7168863 res!2921614) b!7168865))

(assert (= (or b!7168864 b!7168863) bm!653076))

(assert (= (or b!7168867 b!7168865) bm!653075))

(declare-fun m!7871464 () Bool)

(assert (=> bm!653075 m!7871464))

(declare-fun m!7871466 () Bool)

(assert (=> bm!653076 m!7871466))

(assert (=> d!2232934 d!2233170))

(declare-fun d!2233172 () Bool)

(assert (=> d!2233172 (= (nullable!7762 (reg!18656 (h!76044 (exprs!7779 setElem!52949)))) (nullableFct!3031 (reg!18656 (h!76044 (exprs!7779 setElem!52949)))))))

(declare-fun bs!1892889 () Bool)

(assert (= bs!1892889 d!2233172))

(declare-fun m!7871468 () Bool)

(assert (=> bs!1892889 m!7871468))

(assert (=> b!7168315 d!2233172))

(declare-fun d!2233174 () Bool)

(declare-fun res!2921616 () Bool)

(declare-fun e!4306186 () Bool)

(assert (=> d!2233174 (=> res!2921616 e!4306186)))

(assert (=> d!2233174 (= res!2921616 ((_ is Nil!69596) (t!383739 lt!2570219)))))

(assert (=> d!2233174 (= (forall!17157 (t!383739 lt!2570219) lambda!437066) e!4306186)))

(declare-fun b!7168870 () Bool)

(declare-fun e!4306187 () Bool)

(assert (=> b!7168870 (= e!4306186 e!4306187)))

(declare-fun res!2921617 () Bool)

(assert (=> b!7168870 (=> (not res!2921617) (not e!4306187))))

(assert (=> b!7168870 (= res!2921617 (dynLambda!28343 lambda!437066 (h!76044 (t!383739 lt!2570219))))))

(declare-fun b!7168871 () Bool)

(assert (=> b!7168871 (= e!4306187 (forall!17157 (t!383739 (t!383739 lt!2570219)) lambda!437066))))

(assert (= (and d!2233174 (not res!2921616)) b!7168870))

(assert (= (and b!7168870 res!2921617) b!7168871))

(declare-fun b_lambda!274007 () Bool)

(assert (=> (not b_lambda!274007) (not b!7168870)))

(declare-fun m!7871470 () Bool)

(assert (=> b!7168870 m!7871470))

(declare-fun m!7871472 () Bool)

(assert (=> b!7168871 m!7871472))

(assert (=> b!7168385 d!2233174))

(declare-fun bm!653077 () Bool)

(declare-fun call!653084 () Bool)

(declare-fun call!653083 () Bool)

(assert (=> bm!653077 (= call!653084 call!653083)))

(declare-fun b!7168872 () Bool)

(declare-fun e!4306189 () Bool)

(declare-fun call!653082 () Bool)

(assert (=> b!7168872 (= e!4306189 call!653082)))

(declare-fun b!7168873 () Bool)

(declare-fun res!2921621 () Bool)

(declare-fun e!4306192 () Bool)

(assert (=> b!7168873 (=> res!2921621 e!4306192)))

(assert (=> b!7168873 (= res!2921621 (not ((_ is Concat!27172) (ite c!1335416 (regTwo!37167 (ite c!1335358 (reg!18656 lt!2570202) (ite c!1335359 (regOne!37167 lt!2570202) (regOne!37166 lt!2570202)))) (regTwo!37166 (ite c!1335358 (reg!18656 lt!2570202) (ite c!1335359 (regOne!37167 lt!2570202) (regOne!37166 lt!2570202))))))))))

(declare-fun e!4306190 () Bool)

(assert (=> b!7168873 (= e!4306190 e!4306192)))

(declare-fun d!2233176 () Bool)

(declare-fun res!2921622 () Bool)

(declare-fun e!4306191 () Bool)

(assert (=> d!2233176 (=> res!2921622 e!4306191)))

(assert (=> d!2233176 (= res!2921622 ((_ is ElementMatch!18327) (ite c!1335416 (regTwo!37167 (ite c!1335358 (reg!18656 lt!2570202) (ite c!1335359 (regOne!37167 lt!2570202) (regOne!37166 lt!2570202)))) (regTwo!37166 (ite c!1335358 (reg!18656 lt!2570202) (ite c!1335359 (regOne!37167 lt!2570202) (regOne!37166 lt!2570202)))))))))

(assert (=> d!2233176 (= (validRegex!9452 (ite c!1335416 (regTwo!37167 (ite c!1335358 (reg!18656 lt!2570202) (ite c!1335359 (regOne!37167 lt!2570202) (regOne!37166 lt!2570202)))) (regTwo!37166 (ite c!1335358 (reg!18656 lt!2570202) (ite c!1335359 (regOne!37167 lt!2570202) (regOne!37166 lt!2570202)))))) e!4306191)))

(declare-fun b!7168874 () Bool)

(declare-fun e!4306194 () Bool)

(assert (=> b!7168874 (= e!4306194 call!653082)))

(declare-fun b!7168875 () Bool)

(assert (=> b!7168875 (= e!4306192 e!4306194)))

(declare-fun res!2921619 () Bool)

(assert (=> b!7168875 (=> (not res!2921619) (not e!4306194))))

(assert (=> b!7168875 (= res!2921619 call!653084)))

(declare-fun b!7168876 () Bool)

(declare-fun e!4306188 () Bool)

(assert (=> b!7168876 (= e!4306191 e!4306188)))

(declare-fun c!1335523 () Bool)

(assert (=> b!7168876 (= c!1335523 ((_ is Star!18327) (ite c!1335416 (regTwo!37167 (ite c!1335358 (reg!18656 lt!2570202) (ite c!1335359 (regOne!37167 lt!2570202) (regOne!37166 lt!2570202)))) (regTwo!37166 (ite c!1335358 (reg!18656 lt!2570202) (ite c!1335359 (regOne!37167 lt!2570202) (regOne!37166 lt!2570202)))))))))

(declare-fun bm!653078 () Bool)

(declare-fun c!1335524 () Bool)

(assert (=> bm!653078 (= call!653083 (validRegex!9452 (ite c!1335523 (reg!18656 (ite c!1335416 (regTwo!37167 (ite c!1335358 (reg!18656 lt!2570202) (ite c!1335359 (regOne!37167 lt!2570202) (regOne!37166 lt!2570202)))) (regTwo!37166 (ite c!1335358 (reg!18656 lt!2570202) (ite c!1335359 (regOne!37167 lt!2570202) (regOne!37166 lt!2570202)))))) (ite c!1335524 (regOne!37167 (ite c!1335416 (regTwo!37167 (ite c!1335358 (reg!18656 lt!2570202) (ite c!1335359 (regOne!37167 lt!2570202) (regOne!37166 lt!2570202)))) (regTwo!37166 (ite c!1335358 (reg!18656 lt!2570202) (ite c!1335359 (regOne!37167 lt!2570202) (regOne!37166 lt!2570202)))))) (regOne!37166 (ite c!1335416 (regTwo!37167 (ite c!1335358 (reg!18656 lt!2570202) (ite c!1335359 (regOne!37167 lt!2570202) (regOne!37166 lt!2570202)))) (regTwo!37166 (ite c!1335358 (reg!18656 lt!2570202) (ite c!1335359 (regOne!37167 lt!2570202) (regOne!37166 lt!2570202))))))))))))

(declare-fun b!7168877 () Bool)

(declare-fun e!4306193 () Bool)

(assert (=> b!7168877 (= e!4306188 e!4306193)))

(declare-fun res!2921618 () Bool)

(assert (=> b!7168877 (= res!2921618 (not (nullable!7762 (reg!18656 (ite c!1335416 (regTwo!37167 (ite c!1335358 (reg!18656 lt!2570202) (ite c!1335359 (regOne!37167 lt!2570202) (regOne!37166 lt!2570202)))) (regTwo!37166 (ite c!1335358 (reg!18656 lt!2570202) (ite c!1335359 (regOne!37167 lt!2570202) (regOne!37166 lt!2570202)))))))))))

(assert (=> b!7168877 (=> (not res!2921618) (not e!4306193))))

(declare-fun b!7168878 () Bool)

(declare-fun res!2921620 () Bool)

(assert (=> b!7168878 (=> (not res!2921620) (not e!4306189))))

(assert (=> b!7168878 (= res!2921620 call!653084)))

(assert (=> b!7168878 (= e!4306190 e!4306189)))

(declare-fun b!7168879 () Bool)

(assert (=> b!7168879 (= e!4306193 call!653083)))

(declare-fun b!7168880 () Bool)

(assert (=> b!7168880 (= e!4306188 e!4306190)))

(assert (=> b!7168880 (= c!1335524 ((_ is Union!18327) (ite c!1335416 (regTwo!37167 (ite c!1335358 (reg!18656 lt!2570202) (ite c!1335359 (regOne!37167 lt!2570202) (regOne!37166 lt!2570202)))) (regTwo!37166 (ite c!1335358 (reg!18656 lt!2570202) (ite c!1335359 (regOne!37167 lt!2570202) (regOne!37166 lt!2570202)))))))))

(declare-fun bm!653079 () Bool)

(assert (=> bm!653079 (= call!653082 (validRegex!9452 (ite c!1335524 (regTwo!37167 (ite c!1335416 (regTwo!37167 (ite c!1335358 (reg!18656 lt!2570202) (ite c!1335359 (regOne!37167 lt!2570202) (regOne!37166 lt!2570202)))) (regTwo!37166 (ite c!1335358 (reg!18656 lt!2570202) (ite c!1335359 (regOne!37167 lt!2570202) (regOne!37166 lt!2570202)))))) (regTwo!37166 (ite c!1335416 (regTwo!37167 (ite c!1335358 (reg!18656 lt!2570202) (ite c!1335359 (regOne!37167 lt!2570202) (regOne!37166 lt!2570202)))) (regTwo!37166 (ite c!1335358 (reg!18656 lt!2570202) (ite c!1335359 (regOne!37167 lt!2570202) (regOne!37166 lt!2570202)))))))))))

(assert (= (and d!2233176 (not res!2921622)) b!7168876))

(assert (= (and b!7168876 c!1335523) b!7168877))

(assert (= (and b!7168876 (not c!1335523)) b!7168880))

(assert (= (and b!7168877 res!2921618) b!7168879))

(assert (= (and b!7168880 c!1335524) b!7168878))

(assert (= (and b!7168880 (not c!1335524)) b!7168873))

(assert (= (and b!7168878 res!2921620) b!7168872))

(assert (= (and b!7168873 (not res!2921621)) b!7168875))

(assert (= (and b!7168875 res!2921619) b!7168874))

(assert (= (or b!7168878 b!7168875) bm!653077))

(assert (= (or b!7168872 b!7168874) bm!653079))

(assert (= (or b!7168879 bm!653077) bm!653078))

(declare-fun m!7871474 () Bool)

(assert (=> bm!653078 m!7871474))

(declare-fun m!7871476 () Bool)

(assert (=> b!7168877 m!7871476))

(declare-fun m!7871478 () Bool)

(assert (=> bm!653079 m!7871478))

(assert (=> bm!653013 d!2233176))

(declare-fun d!2233178 () Bool)

(assert (=> d!2233178 (= (isEmpty!40186 (t!383739 (t!383739 (unfocusZipperList!2311 (toList!11270 z!3530))))) ((_ is Nil!69596) (t!383739 (t!383739 (unfocusZipperList!2311 (toList!11270 z!3530))))))))

(assert (=> b!7168300 d!2233178))

(declare-fun d!2233180 () Bool)

(assert (=> d!2233180 (= (isEmpty!40186 (unfocusZipperList!2311 (toList!11270 (store ((as const (Array Context!14558 Bool)) false) (Context!14559 (Cons!69596 EmptyExpr!18327 Nil!69596)) true)))) ((_ is Nil!69596) (unfocusZipperList!2311 (toList!11270 (store ((as const (Array Context!14558 Bool)) false) (Context!14559 (Cons!69596 EmptyExpr!18327 Nil!69596)) true)))))))

(assert (=> b!7168329 d!2233180))

(declare-fun d!2233182 () Bool)

(assert (=> d!2233182 (= (head!14630 (t!383739 (unfocusZipperList!2311 (toList!11270 z!3530)))) (h!76044 (t!383739 (unfocusZipperList!2311 (toList!11270 z!3530)))))))

(assert (=> b!7168302 d!2233182))

(declare-fun bm!653080 () Bool)

(declare-fun call!653087 () Bool)

(declare-fun call!653086 () Bool)

(assert (=> bm!653080 (= call!653087 call!653086)))

(declare-fun b!7168881 () Bool)

(declare-fun e!4306196 () Bool)

(declare-fun call!653085 () Bool)

(assert (=> b!7168881 (= e!4306196 call!653085)))

(declare-fun b!7168882 () Bool)

(declare-fun res!2921626 () Bool)

(declare-fun e!4306199 () Bool)

(assert (=> b!7168882 (=> res!2921626 e!4306199)))

(assert (=> b!7168882 (= res!2921626 (not ((_ is Concat!27172) (ite c!1335403 (regTwo!37167 (h!76044 (exprs!7779 setElem!52949))) (regTwo!37166 (h!76044 (exprs!7779 setElem!52949)))))))))

(declare-fun e!4306197 () Bool)

(assert (=> b!7168882 (= e!4306197 e!4306199)))

(declare-fun d!2233184 () Bool)

(declare-fun res!2921627 () Bool)

(declare-fun e!4306198 () Bool)

(assert (=> d!2233184 (=> res!2921627 e!4306198)))

(assert (=> d!2233184 (= res!2921627 ((_ is ElementMatch!18327) (ite c!1335403 (regTwo!37167 (h!76044 (exprs!7779 setElem!52949))) (regTwo!37166 (h!76044 (exprs!7779 setElem!52949))))))))

(assert (=> d!2233184 (= (validRegex!9452 (ite c!1335403 (regTwo!37167 (h!76044 (exprs!7779 setElem!52949))) (regTwo!37166 (h!76044 (exprs!7779 setElem!52949))))) e!4306198)))

(declare-fun b!7168883 () Bool)

(declare-fun e!4306201 () Bool)

(assert (=> b!7168883 (= e!4306201 call!653085)))

(declare-fun b!7168884 () Bool)

(assert (=> b!7168884 (= e!4306199 e!4306201)))

(declare-fun res!2921624 () Bool)

(assert (=> b!7168884 (=> (not res!2921624) (not e!4306201))))

(assert (=> b!7168884 (= res!2921624 call!653087)))

(declare-fun b!7168885 () Bool)

(declare-fun e!4306195 () Bool)

(assert (=> b!7168885 (= e!4306198 e!4306195)))

(declare-fun c!1335525 () Bool)

(assert (=> b!7168885 (= c!1335525 ((_ is Star!18327) (ite c!1335403 (regTwo!37167 (h!76044 (exprs!7779 setElem!52949))) (regTwo!37166 (h!76044 (exprs!7779 setElem!52949))))))))

(declare-fun c!1335526 () Bool)

(declare-fun bm!653081 () Bool)

(assert (=> bm!653081 (= call!653086 (validRegex!9452 (ite c!1335525 (reg!18656 (ite c!1335403 (regTwo!37167 (h!76044 (exprs!7779 setElem!52949))) (regTwo!37166 (h!76044 (exprs!7779 setElem!52949))))) (ite c!1335526 (regOne!37167 (ite c!1335403 (regTwo!37167 (h!76044 (exprs!7779 setElem!52949))) (regTwo!37166 (h!76044 (exprs!7779 setElem!52949))))) (regOne!37166 (ite c!1335403 (regTwo!37167 (h!76044 (exprs!7779 setElem!52949))) (regTwo!37166 (h!76044 (exprs!7779 setElem!52949)))))))))))

(declare-fun b!7168886 () Bool)

(declare-fun e!4306200 () Bool)

(assert (=> b!7168886 (= e!4306195 e!4306200)))

(declare-fun res!2921623 () Bool)

(assert (=> b!7168886 (= res!2921623 (not (nullable!7762 (reg!18656 (ite c!1335403 (regTwo!37167 (h!76044 (exprs!7779 setElem!52949))) (regTwo!37166 (h!76044 (exprs!7779 setElem!52949))))))))))

(assert (=> b!7168886 (=> (not res!2921623) (not e!4306200))))

(declare-fun b!7168887 () Bool)

(declare-fun res!2921625 () Bool)

(assert (=> b!7168887 (=> (not res!2921625) (not e!4306196))))

(assert (=> b!7168887 (= res!2921625 call!653087)))

(assert (=> b!7168887 (= e!4306197 e!4306196)))

(declare-fun b!7168888 () Bool)

(assert (=> b!7168888 (= e!4306200 call!653086)))

(declare-fun b!7168889 () Bool)

(assert (=> b!7168889 (= e!4306195 e!4306197)))

(assert (=> b!7168889 (= c!1335526 ((_ is Union!18327) (ite c!1335403 (regTwo!37167 (h!76044 (exprs!7779 setElem!52949))) (regTwo!37166 (h!76044 (exprs!7779 setElem!52949))))))))

(declare-fun bm!653082 () Bool)

(assert (=> bm!653082 (= call!653085 (validRegex!9452 (ite c!1335526 (regTwo!37167 (ite c!1335403 (regTwo!37167 (h!76044 (exprs!7779 setElem!52949))) (regTwo!37166 (h!76044 (exprs!7779 setElem!52949))))) (regTwo!37166 (ite c!1335403 (regTwo!37167 (h!76044 (exprs!7779 setElem!52949))) (regTwo!37166 (h!76044 (exprs!7779 setElem!52949))))))))))

(assert (= (and d!2233184 (not res!2921627)) b!7168885))

(assert (= (and b!7168885 c!1335525) b!7168886))

(assert (= (and b!7168885 (not c!1335525)) b!7168889))

(assert (= (and b!7168886 res!2921623) b!7168888))

(assert (= (and b!7168889 c!1335526) b!7168887))

(assert (= (and b!7168889 (not c!1335526)) b!7168882))

(assert (= (and b!7168887 res!2921625) b!7168881))

(assert (= (and b!7168882 (not res!2921626)) b!7168884))

(assert (= (and b!7168884 res!2921624) b!7168883))

(assert (= (or b!7168887 b!7168884) bm!653080))

(assert (= (or b!7168881 b!7168883) bm!653082))

(assert (= (or b!7168888 bm!653080) bm!653081))

(declare-fun m!7871480 () Bool)

(assert (=> bm!653081 m!7871480))

(declare-fun m!7871482 () Bool)

(assert (=> b!7168886 m!7871482))

(declare-fun m!7871484 () Bool)

(assert (=> bm!653082 m!7871484))

(assert (=> bm!653004 d!2233184))

(declare-fun bm!653083 () Bool)

(declare-fun call!653090 () Bool)

(declare-fun call!653089 () Bool)

(assert (=> bm!653083 (= call!653090 call!653089)))

(declare-fun b!7168890 () Bool)

(declare-fun e!4306203 () Bool)

(declare-fun call!653088 () Bool)

(assert (=> b!7168890 (= e!4306203 call!653088)))

(declare-fun b!7168891 () Bool)

(declare-fun res!2921631 () Bool)

(declare-fun e!4306206 () Bool)

(assert (=> b!7168891 (=> res!2921631 e!4306206)))

(assert (=> b!7168891 (= res!2921631 (not ((_ is Concat!27172) (h!76044 (t!383739 (exprs!7779 setElem!52949))))))))

(declare-fun e!4306204 () Bool)

(assert (=> b!7168891 (= e!4306204 e!4306206)))

(declare-fun d!2233186 () Bool)

(declare-fun res!2921632 () Bool)

(declare-fun e!4306205 () Bool)

(assert (=> d!2233186 (=> res!2921632 e!4306205)))

(assert (=> d!2233186 (= res!2921632 ((_ is ElementMatch!18327) (h!76044 (t!383739 (exprs!7779 setElem!52949)))))))

(assert (=> d!2233186 (= (validRegex!9452 (h!76044 (t!383739 (exprs!7779 setElem!52949)))) e!4306205)))

(declare-fun b!7168892 () Bool)

(declare-fun e!4306208 () Bool)

(assert (=> b!7168892 (= e!4306208 call!653088)))

(declare-fun b!7168893 () Bool)

(assert (=> b!7168893 (= e!4306206 e!4306208)))

(declare-fun res!2921629 () Bool)

(assert (=> b!7168893 (=> (not res!2921629) (not e!4306208))))

(assert (=> b!7168893 (= res!2921629 call!653090)))

(declare-fun b!7168894 () Bool)

(declare-fun e!4306202 () Bool)

(assert (=> b!7168894 (= e!4306205 e!4306202)))

(declare-fun c!1335527 () Bool)

(assert (=> b!7168894 (= c!1335527 ((_ is Star!18327) (h!76044 (t!383739 (exprs!7779 setElem!52949)))))))

(declare-fun bm!653084 () Bool)

(declare-fun c!1335528 () Bool)

(assert (=> bm!653084 (= call!653089 (validRegex!9452 (ite c!1335527 (reg!18656 (h!76044 (t!383739 (exprs!7779 setElem!52949)))) (ite c!1335528 (regOne!37167 (h!76044 (t!383739 (exprs!7779 setElem!52949)))) (regOne!37166 (h!76044 (t!383739 (exprs!7779 setElem!52949))))))))))

(declare-fun b!7168895 () Bool)

(declare-fun e!4306207 () Bool)

(assert (=> b!7168895 (= e!4306202 e!4306207)))

(declare-fun res!2921628 () Bool)

(assert (=> b!7168895 (= res!2921628 (not (nullable!7762 (reg!18656 (h!76044 (t!383739 (exprs!7779 setElem!52949)))))))))

(assert (=> b!7168895 (=> (not res!2921628) (not e!4306207))))

(declare-fun b!7168896 () Bool)

(declare-fun res!2921630 () Bool)

(assert (=> b!7168896 (=> (not res!2921630) (not e!4306203))))

(assert (=> b!7168896 (= res!2921630 call!653090)))

(assert (=> b!7168896 (= e!4306204 e!4306203)))

(declare-fun b!7168897 () Bool)

(assert (=> b!7168897 (= e!4306207 call!653089)))

(declare-fun b!7168898 () Bool)

(assert (=> b!7168898 (= e!4306202 e!4306204)))

(assert (=> b!7168898 (= c!1335528 ((_ is Union!18327) (h!76044 (t!383739 (exprs!7779 setElem!52949)))))))

(declare-fun bm!653085 () Bool)

(assert (=> bm!653085 (= call!653088 (validRegex!9452 (ite c!1335528 (regTwo!37167 (h!76044 (t!383739 (exprs!7779 setElem!52949)))) (regTwo!37166 (h!76044 (t!383739 (exprs!7779 setElem!52949)))))))))

(assert (= (and d!2233186 (not res!2921632)) b!7168894))

(assert (= (and b!7168894 c!1335527) b!7168895))

(assert (= (and b!7168894 (not c!1335527)) b!7168898))

(assert (= (and b!7168895 res!2921628) b!7168897))

(assert (= (and b!7168898 c!1335528) b!7168896))

(assert (= (and b!7168898 (not c!1335528)) b!7168891))

(assert (= (and b!7168896 res!2921630) b!7168890))

(assert (= (and b!7168891 (not res!2921631)) b!7168893))

(assert (= (and b!7168893 res!2921629) b!7168892))

(assert (= (or b!7168896 b!7168893) bm!653083))

(assert (= (or b!7168890 b!7168892) bm!653085))

(assert (= (or b!7168897 bm!653083) bm!653084))

(declare-fun m!7871486 () Bool)

(assert (=> bm!653084 m!7871486))

(declare-fun m!7871488 () Bool)

(assert (=> b!7168895 m!7871488))

(declare-fun m!7871490 () Bool)

(assert (=> bm!653085 m!7871490))

(assert (=> bs!1892690 d!2233186))

(declare-fun d!2233188 () Bool)

(assert (=> d!2233188 (= (nullable!7762 (reg!18656 lt!2570213)) (nullableFct!3031 (reg!18656 lt!2570213)))))

(declare-fun bs!1892890 () Bool)

(assert (= bs!1892890 d!2233188))

(declare-fun m!7871492 () Bool)

(assert (=> bs!1892890 m!7871492))

(assert (=> b!7168376 d!2233188))

(declare-fun d!2233190 () Bool)

(declare-fun res!2921633 () Bool)

(declare-fun e!4306209 () Bool)

(assert (=> d!2233190 (=> res!2921633 e!4306209)))

(assert (=> d!2233190 (= res!2921633 ((_ is Nil!69596) lt!2570227))))

(assert (=> d!2233190 (= (forall!17157 lt!2570227 lambda!437073) e!4306209)))

(declare-fun b!7168899 () Bool)

(declare-fun e!4306210 () Bool)

(assert (=> b!7168899 (= e!4306209 e!4306210)))

(declare-fun res!2921634 () Bool)

(assert (=> b!7168899 (=> (not res!2921634) (not e!4306210))))

(assert (=> b!7168899 (= res!2921634 (dynLambda!28343 lambda!437073 (h!76044 lt!2570227)))))

(declare-fun b!7168900 () Bool)

(assert (=> b!7168900 (= e!4306210 (forall!17157 (t!383739 lt!2570227) lambda!437073))))

(assert (= (and d!2233190 (not res!2921633)) b!7168899))

(assert (= (and b!7168899 res!2921634) b!7168900))

(declare-fun b_lambda!274009 () Bool)

(assert (=> (not b_lambda!274009) (not b!7168899)))

(declare-fun m!7871494 () Bool)

(assert (=> b!7168899 m!7871494))

(declare-fun m!7871496 () Bool)

(assert (=> b!7168900 m!7871496))

(assert (=> d!2232916 d!2233190))

(declare-fun d!2233192 () Bool)

(assert (=> d!2233192 (= (nullable!7762 (reg!18656 (ite c!1335358 (reg!18656 lt!2570202) (ite c!1335359 (regOne!37167 lt!2570202) (regOne!37166 lt!2570202))))) (nullableFct!3031 (reg!18656 (ite c!1335358 (reg!18656 lt!2570202) (ite c!1335359 (regOne!37167 lt!2570202) (regOne!37166 lt!2570202))))))))

(declare-fun bs!1892891 () Bool)

(assert (= bs!1892891 d!2233192))

(declare-fun m!7871498 () Bool)

(assert (=> bs!1892891 m!7871498))

(assert (=> b!7168363 d!2233192))

(declare-fun d!2233194 () Bool)

(declare-fun res!2921635 () Bool)

(declare-fun e!4306211 () Bool)

(assert (=> d!2233194 (=> res!2921635 e!4306211)))

(assert (=> d!2233194 (= res!2921635 ((_ is Nil!69596) (exprs!7779 (h!76045 res!2921365))))))

(assert (=> d!2233194 (= (forall!17157 (exprs!7779 (h!76045 res!2921365)) lambda!437070) e!4306211)))

(declare-fun b!7168901 () Bool)

(declare-fun e!4306212 () Bool)

(assert (=> b!7168901 (= e!4306211 e!4306212)))

(declare-fun res!2921636 () Bool)

(assert (=> b!7168901 (=> (not res!2921636) (not e!4306212))))

(assert (=> b!7168901 (= res!2921636 (dynLambda!28343 lambda!437070 (h!76044 (exprs!7779 (h!76045 res!2921365)))))))

(declare-fun b!7168902 () Bool)

(assert (=> b!7168902 (= e!4306212 (forall!17157 (t!383739 (exprs!7779 (h!76045 res!2921365))) lambda!437070))))

(assert (= (and d!2233194 (not res!2921635)) b!7168901))

(assert (= (and b!7168901 res!2921636) b!7168902))

(declare-fun b_lambda!274011 () Bool)

(assert (=> (not b_lambda!274011) (not b!7168901)))

(declare-fun m!7871500 () Bool)

(assert (=> b!7168901 m!7871500))

(declare-fun m!7871502 () Bool)

(assert (=> b!7168902 m!7871502))

(assert (=> d!2232906 d!2233194))

(declare-fun bs!1892892 () Bool)

(declare-fun d!2233196 () Bool)

(assert (= bs!1892892 (and d!2233196 d!2232906)))

(declare-fun lambda!437096 () Int)

(assert (=> bs!1892892 (= lambda!437096 lambda!437070)))

(declare-fun bs!1892893 () Bool)

(assert (= bs!1892893 (and d!2233196 d!2233080)))

(assert (=> bs!1892893 (= lambda!437096 lambda!437090)))

(declare-fun bs!1892894 () Bool)

(assert (= bs!1892894 (and d!2233196 d!2232868)))

(assert (=> bs!1892894 (= lambda!437096 lambda!437066)))

(declare-fun bs!1892895 () Bool)

(assert (= bs!1892895 (and d!2233196 d!2233088)))

(assert (=> bs!1892895 (= lambda!437096 lambda!437092)))

(declare-fun bs!1892896 () Bool)

(assert (= bs!1892896 (and d!2233196 d!2233062)))

(assert (=> bs!1892896 (= lambda!437096 lambda!437088)))

(declare-fun bs!1892897 () Bool)

(assert (= bs!1892897 (and d!2233196 d!2232914)))

(assert (=> bs!1892897 (= lambda!437096 lambda!437072)))

(declare-fun bs!1892898 () Bool)

(assert (= bs!1892898 (and d!2233196 d!2232846)))

(assert (=> bs!1892898 (= lambda!437096 lambda!437054)))

(declare-fun bs!1892899 () Bool)

(assert (= bs!1892899 (and d!2233196 d!2233150)))

(assert (=> bs!1892899 (= lambda!437096 lambda!437093)))

(declare-fun bs!1892900 () Bool)

(assert (= bs!1892900 (and d!2233196 d!2232908)))

(assert (=> bs!1892900 (= lambda!437096 lambda!437071)))

(declare-fun bs!1892901 () Bool)

(assert (= bs!1892901 (and d!2233196 d!2232904)))

(assert (=> bs!1892901 (= lambda!437096 lambda!437069)))

(declare-fun bs!1892902 () Bool)

(assert (= bs!1892902 (and d!2233196 d!2233156)))

(assert (=> bs!1892902 (= lambda!437096 lambda!437095)))

(declare-fun bs!1892903 () Bool)

(assert (= bs!1892903 (and d!2233196 d!2232890)))

(assert (=> bs!1892903 (= lambda!437096 lambda!437068)))

(declare-fun bs!1892904 () Bool)

(assert (= bs!1892904 (and d!2233196 d!2233060)))

(assert (=> bs!1892904 (= lambda!437096 lambda!437087)))

(declare-fun bs!1892905 () Bool)

(assert (= bs!1892905 (and d!2233196 d!2233078)))

(assert (=> bs!1892905 (= lambda!437096 lambda!437089)))

(declare-fun bs!1892906 () Bool)

(assert (= bs!1892906 (and d!2233196 d!2232964)))

(assert (=> bs!1892906 (= lambda!437096 lambda!437076)))

(declare-fun bs!1892907 () Bool)

(assert (= bs!1892907 (and d!2233196 d!2232916)))

(assert (=> bs!1892907 (= lambda!437096 lambda!437073)))

(declare-fun bs!1892908 () Bool)

(assert (= bs!1892908 (and d!2233196 d!2233082)))

(assert (=> bs!1892908 (= lambda!437096 lambda!437091)))

(declare-fun bs!1892909 () Bool)

(assert (= bs!1892909 (and d!2233196 d!2233154)))

(assert (=> bs!1892909 (= lambda!437096 lambda!437094)))

(declare-fun bs!1892910 () Bool)

(assert (= bs!1892910 (and d!2233196 d!2232966)))

(assert (=> bs!1892910 (= lambda!437096 lambda!437077)))

(declare-fun bs!1892911 () Bool)

(assert (= bs!1892911 (and d!2233196 d!2232864)))

(assert (=> bs!1892911 (= lambda!437096 lambda!437060)))

(assert (=> d!2233196 (= (inv!88839 setElem!52958) (forall!17157 (exprs!7779 setElem!52958) lambda!437096))))

(declare-fun bs!1892912 () Bool)

(assert (= bs!1892912 d!2233196))

(declare-fun m!7871504 () Bool)

(assert (=> bs!1892912 m!7871504))

(assert (=> setNonEmpty!52958 d!2233196))

(declare-fun bm!653086 () Bool)

(declare-fun call!653093 () Bool)

(declare-fun call!653092 () Bool)

(assert (=> bm!653086 (= call!653093 call!653092)))

(declare-fun b!7168903 () Bool)

(declare-fun e!4306214 () Bool)

(declare-fun call!653091 () Bool)

(assert (=> b!7168903 (= e!4306214 call!653091)))

(declare-fun b!7168904 () Bool)

(declare-fun res!2921640 () Bool)

(declare-fun e!4306217 () Bool)

(assert (=> b!7168904 (=> res!2921640 e!4306217)))

(assert (=> b!7168904 (= res!2921640 (not ((_ is Concat!27172) (ite c!1335413 (reg!18656 (ite c!1335359 (regTwo!37167 lt!2570202) (regTwo!37166 lt!2570202))) (ite c!1335414 (regOne!37167 (ite c!1335359 (regTwo!37167 lt!2570202) (regTwo!37166 lt!2570202))) (regOne!37166 (ite c!1335359 (regTwo!37167 lt!2570202) (regTwo!37166 lt!2570202))))))))))

(declare-fun e!4306215 () Bool)

(assert (=> b!7168904 (= e!4306215 e!4306217)))

(declare-fun d!2233198 () Bool)

(declare-fun res!2921641 () Bool)

(declare-fun e!4306216 () Bool)

(assert (=> d!2233198 (=> res!2921641 e!4306216)))

(assert (=> d!2233198 (= res!2921641 ((_ is ElementMatch!18327) (ite c!1335413 (reg!18656 (ite c!1335359 (regTwo!37167 lt!2570202) (regTwo!37166 lt!2570202))) (ite c!1335414 (regOne!37167 (ite c!1335359 (regTwo!37167 lt!2570202) (regTwo!37166 lt!2570202))) (regOne!37166 (ite c!1335359 (regTwo!37167 lt!2570202) (regTwo!37166 lt!2570202)))))))))

(assert (=> d!2233198 (= (validRegex!9452 (ite c!1335413 (reg!18656 (ite c!1335359 (regTwo!37167 lt!2570202) (regTwo!37166 lt!2570202))) (ite c!1335414 (regOne!37167 (ite c!1335359 (regTwo!37167 lt!2570202) (regTwo!37166 lt!2570202))) (regOne!37166 (ite c!1335359 (regTwo!37167 lt!2570202) (regTwo!37166 lt!2570202)))))) e!4306216)))

(declare-fun b!7168905 () Bool)

(declare-fun e!4306219 () Bool)

(assert (=> b!7168905 (= e!4306219 call!653091)))

(declare-fun b!7168906 () Bool)

(assert (=> b!7168906 (= e!4306217 e!4306219)))

(declare-fun res!2921638 () Bool)

(assert (=> b!7168906 (=> (not res!2921638) (not e!4306219))))

(assert (=> b!7168906 (= res!2921638 call!653093)))

(declare-fun b!7168907 () Bool)

(declare-fun e!4306213 () Bool)

(assert (=> b!7168907 (= e!4306216 e!4306213)))

(declare-fun c!1335529 () Bool)

(assert (=> b!7168907 (= c!1335529 ((_ is Star!18327) (ite c!1335413 (reg!18656 (ite c!1335359 (regTwo!37167 lt!2570202) (regTwo!37166 lt!2570202))) (ite c!1335414 (regOne!37167 (ite c!1335359 (regTwo!37167 lt!2570202) (regTwo!37166 lt!2570202))) (regOne!37166 (ite c!1335359 (regTwo!37167 lt!2570202) (regTwo!37166 lt!2570202)))))))))

(declare-fun c!1335530 () Bool)

(declare-fun bm!653087 () Bool)

(assert (=> bm!653087 (= call!653092 (validRegex!9452 (ite c!1335529 (reg!18656 (ite c!1335413 (reg!18656 (ite c!1335359 (regTwo!37167 lt!2570202) (regTwo!37166 lt!2570202))) (ite c!1335414 (regOne!37167 (ite c!1335359 (regTwo!37167 lt!2570202) (regTwo!37166 lt!2570202))) (regOne!37166 (ite c!1335359 (regTwo!37167 lt!2570202) (regTwo!37166 lt!2570202)))))) (ite c!1335530 (regOne!37167 (ite c!1335413 (reg!18656 (ite c!1335359 (regTwo!37167 lt!2570202) (regTwo!37166 lt!2570202))) (ite c!1335414 (regOne!37167 (ite c!1335359 (regTwo!37167 lt!2570202) (regTwo!37166 lt!2570202))) (regOne!37166 (ite c!1335359 (regTwo!37167 lt!2570202) (regTwo!37166 lt!2570202)))))) (regOne!37166 (ite c!1335413 (reg!18656 (ite c!1335359 (regTwo!37167 lt!2570202) (regTwo!37166 lt!2570202))) (ite c!1335414 (regOne!37167 (ite c!1335359 (regTwo!37167 lt!2570202) (regTwo!37166 lt!2570202))) (regOne!37166 (ite c!1335359 (regTwo!37167 lt!2570202) (regTwo!37166 lt!2570202))))))))))))

(declare-fun b!7168908 () Bool)

(declare-fun e!4306218 () Bool)

(assert (=> b!7168908 (= e!4306213 e!4306218)))

(declare-fun res!2921637 () Bool)

(assert (=> b!7168908 (= res!2921637 (not (nullable!7762 (reg!18656 (ite c!1335413 (reg!18656 (ite c!1335359 (regTwo!37167 lt!2570202) (regTwo!37166 lt!2570202))) (ite c!1335414 (regOne!37167 (ite c!1335359 (regTwo!37167 lt!2570202) (regTwo!37166 lt!2570202))) (regOne!37166 (ite c!1335359 (regTwo!37167 lt!2570202) (regTwo!37166 lt!2570202)))))))))))

(assert (=> b!7168908 (=> (not res!2921637) (not e!4306218))))

(declare-fun b!7168909 () Bool)

(declare-fun res!2921639 () Bool)

(assert (=> b!7168909 (=> (not res!2921639) (not e!4306214))))

(assert (=> b!7168909 (= res!2921639 call!653093)))

(assert (=> b!7168909 (= e!4306215 e!4306214)))

(declare-fun b!7168910 () Bool)

(assert (=> b!7168910 (= e!4306218 call!653092)))

(declare-fun b!7168911 () Bool)

(assert (=> b!7168911 (= e!4306213 e!4306215)))

(assert (=> b!7168911 (= c!1335530 ((_ is Union!18327) (ite c!1335413 (reg!18656 (ite c!1335359 (regTwo!37167 lt!2570202) (regTwo!37166 lt!2570202))) (ite c!1335414 (regOne!37167 (ite c!1335359 (regTwo!37167 lt!2570202) (regTwo!37166 lt!2570202))) (regOne!37166 (ite c!1335359 (regTwo!37167 lt!2570202) (regTwo!37166 lt!2570202)))))))))

(declare-fun bm!653088 () Bool)

(assert (=> bm!653088 (= call!653091 (validRegex!9452 (ite c!1335530 (regTwo!37167 (ite c!1335413 (reg!18656 (ite c!1335359 (regTwo!37167 lt!2570202) (regTwo!37166 lt!2570202))) (ite c!1335414 (regOne!37167 (ite c!1335359 (regTwo!37167 lt!2570202) (regTwo!37166 lt!2570202))) (regOne!37166 (ite c!1335359 (regTwo!37167 lt!2570202) (regTwo!37166 lt!2570202)))))) (regTwo!37166 (ite c!1335413 (reg!18656 (ite c!1335359 (regTwo!37167 lt!2570202) (regTwo!37166 lt!2570202))) (ite c!1335414 (regOne!37167 (ite c!1335359 (regTwo!37167 lt!2570202) (regTwo!37166 lt!2570202))) (regOne!37166 (ite c!1335359 (regTwo!37167 lt!2570202) (regTwo!37166 lt!2570202)))))))))))

(assert (= (and d!2233198 (not res!2921641)) b!7168907))

(assert (= (and b!7168907 c!1335529) b!7168908))

(assert (= (and b!7168907 (not c!1335529)) b!7168911))

(assert (= (and b!7168908 res!2921637) b!7168910))

(assert (= (and b!7168911 c!1335530) b!7168909))

(assert (= (and b!7168911 (not c!1335530)) b!7168904))

(assert (= (and b!7168909 res!2921639) b!7168903))

(assert (= (and b!7168904 (not res!2921640)) b!7168906))

(assert (= (and b!7168906 res!2921638) b!7168905))

(assert (= (or b!7168909 b!7168906) bm!653086))

(assert (= (or b!7168903 b!7168905) bm!653088))

(assert (= (or b!7168910 bm!653086) bm!653087))

(declare-fun m!7871506 () Bool)

(assert (=> bm!653087 m!7871506))

(declare-fun m!7871508 () Bool)

(assert (=> b!7168908 m!7871508))

(declare-fun m!7871510 () Bool)

(assert (=> bm!653088 m!7871510))

(assert (=> bm!653009 d!2233198))

(declare-fun b!7168915 () Bool)

(declare-fun e!4306220 () Bool)

(declare-fun tp!1985468 () Bool)

(declare-fun tp!1985469 () Bool)

(assert (=> b!7168915 (= e!4306220 (and tp!1985468 tp!1985469))))

(declare-fun b!7168914 () Bool)

(declare-fun tp!1985470 () Bool)

(assert (=> b!7168914 (= e!4306220 tp!1985470)))

(assert (=> b!7168432 (= tp!1985366 e!4306220)))

(declare-fun b!7168913 () Bool)

(declare-fun tp!1985472 () Bool)

(declare-fun tp!1985471 () Bool)

(assert (=> b!7168913 (= e!4306220 (and tp!1985472 tp!1985471))))

(declare-fun b!7168912 () Bool)

(assert (=> b!7168912 (= e!4306220 tp_is_empty!46225)))

(assert (= (and b!7168432 ((_ is ElementMatch!18327) (regOne!37167 (reg!18656 (h!76044 (exprs!7779 setElem!52949)))))) b!7168912))

(assert (= (and b!7168432 ((_ is Concat!27172) (regOne!37167 (reg!18656 (h!76044 (exprs!7779 setElem!52949)))))) b!7168913))

(assert (= (and b!7168432 ((_ is Star!18327) (regOne!37167 (reg!18656 (h!76044 (exprs!7779 setElem!52949)))))) b!7168914))

(assert (= (and b!7168432 ((_ is Union!18327) (regOne!37167 (reg!18656 (h!76044 (exprs!7779 setElem!52949)))))) b!7168915))

(declare-fun b!7168919 () Bool)

(declare-fun e!4306221 () Bool)

(declare-fun tp!1985473 () Bool)

(declare-fun tp!1985474 () Bool)

(assert (=> b!7168919 (= e!4306221 (and tp!1985473 tp!1985474))))

(declare-fun b!7168918 () Bool)

(declare-fun tp!1985475 () Bool)

(assert (=> b!7168918 (= e!4306221 tp!1985475)))

(assert (=> b!7168432 (= tp!1985367 e!4306221)))

(declare-fun b!7168917 () Bool)

(declare-fun tp!1985477 () Bool)

(declare-fun tp!1985476 () Bool)

(assert (=> b!7168917 (= e!4306221 (and tp!1985477 tp!1985476))))

(declare-fun b!7168916 () Bool)

(assert (=> b!7168916 (= e!4306221 tp_is_empty!46225)))

(assert (= (and b!7168432 ((_ is ElementMatch!18327) (regTwo!37167 (reg!18656 (h!76044 (exprs!7779 setElem!52949)))))) b!7168916))

(assert (= (and b!7168432 ((_ is Concat!27172) (regTwo!37167 (reg!18656 (h!76044 (exprs!7779 setElem!52949)))))) b!7168917))

(assert (= (and b!7168432 ((_ is Star!18327) (regTwo!37167 (reg!18656 (h!76044 (exprs!7779 setElem!52949)))))) b!7168918))

(assert (= (and b!7168432 ((_ is Union!18327) (regTwo!37167 (reg!18656 (h!76044 (exprs!7779 setElem!52949)))))) b!7168919))

(declare-fun b!7168923 () Bool)

(declare-fun e!4306222 () Bool)

(declare-fun tp!1985478 () Bool)

(declare-fun tp!1985479 () Bool)

(assert (=> b!7168923 (= e!4306222 (and tp!1985478 tp!1985479))))

(declare-fun b!7168922 () Bool)

(declare-fun tp!1985480 () Bool)

(assert (=> b!7168922 (= e!4306222 tp!1985480)))

(assert (=> b!7168454 (= tp!1985391 e!4306222)))

(declare-fun b!7168921 () Bool)

(declare-fun tp!1985482 () Bool)

(declare-fun tp!1985481 () Bool)

(assert (=> b!7168921 (= e!4306222 (and tp!1985482 tp!1985481))))

(declare-fun b!7168920 () Bool)

(assert (=> b!7168920 (= e!4306222 tp_is_empty!46225)))

(assert (= (and b!7168454 ((_ is ElementMatch!18327) (regOne!37167 (regTwo!37166 (h!76044 (exprs!7779 setElem!52949)))))) b!7168920))

(assert (= (and b!7168454 ((_ is Concat!27172) (regOne!37167 (regTwo!37166 (h!76044 (exprs!7779 setElem!52949)))))) b!7168921))

(assert (= (and b!7168454 ((_ is Star!18327) (regOne!37167 (regTwo!37166 (h!76044 (exprs!7779 setElem!52949)))))) b!7168922))

(assert (= (and b!7168454 ((_ is Union!18327) (regOne!37167 (regTwo!37166 (h!76044 (exprs!7779 setElem!52949)))))) b!7168923))

(declare-fun b!7168927 () Bool)

(declare-fun e!4306223 () Bool)

(declare-fun tp!1985483 () Bool)

(declare-fun tp!1985484 () Bool)

(assert (=> b!7168927 (= e!4306223 (and tp!1985483 tp!1985484))))

(declare-fun b!7168926 () Bool)

(declare-fun tp!1985485 () Bool)

(assert (=> b!7168926 (= e!4306223 tp!1985485)))

(assert (=> b!7168454 (= tp!1985392 e!4306223)))

(declare-fun b!7168925 () Bool)

(declare-fun tp!1985487 () Bool)

(declare-fun tp!1985486 () Bool)

(assert (=> b!7168925 (= e!4306223 (and tp!1985487 tp!1985486))))

(declare-fun b!7168924 () Bool)

(assert (=> b!7168924 (= e!4306223 tp_is_empty!46225)))

(assert (= (and b!7168454 ((_ is ElementMatch!18327) (regTwo!37167 (regTwo!37166 (h!76044 (exprs!7779 setElem!52949)))))) b!7168924))

(assert (= (and b!7168454 ((_ is Concat!27172) (regTwo!37167 (regTwo!37166 (h!76044 (exprs!7779 setElem!52949)))))) b!7168925))

(assert (= (and b!7168454 ((_ is Star!18327) (regTwo!37167 (regTwo!37166 (h!76044 (exprs!7779 setElem!52949)))))) b!7168926))

(assert (= (and b!7168454 ((_ is Union!18327) (regTwo!37167 (regTwo!37166 (h!76044 (exprs!7779 setElem!52949)))))) b!7168927))

(declare-fun b!7168931 () Bool)

(declare-fun e!4306224 () Bool)

(declare-fun tp!1985488 () Bool)

(declare-fun tp!1985489 () Bool)

(assert (=> b!7168931 (= e!4306224 (and tp!1985488 tp!1985489))))

(declare-fun b!7168930 () Bool)

(declare-fun tp!1985490 () Bool)

(assert (=> b!7168930 (= e!4306224 tp!1985490)))

(assert (=> b!7168431 (= tp!1985368 e!4306224)))

(declare-fun b!7168929 () Bool)

(declare-fun tp!1985492 () Bool)

(declare-fun tp!1985491 () Bool)

(assert (=> b!7168929 (= e!4306224 (and tp!1985492 tp!1985491))))

(declare-fun b!7168928 () Bool)

(assert (=> b!7168928 (= e!4306224 tp_is_empty!46225)))

(assert (= (and b!7168431 ((_ is ElementMatch!18327) (reg!18656 (reg!18656 (h!76044 (exprs!7779 setElem!52949)))))) b!7168928))

(assert (= (and b!7168431 ((_ is Concat!27172) (reg!18656 (reg!18656 (h!76044 (exprs!7779 setElem!52949)))))) b!7168929))

(assert (= (and b!7168431 ((_ is Star!18327) (reg!18656 (reg!18656 (h!76044 (exprs!7779 setElem!52949)))))) b!7168930))

(assert (= (and b!7168431 ((_ is Union!18327) (reg!18656 (reg!18656 (h!76044 (exprs!7779 setElem!52949)))))) b!7168931))

(declare-fun b!7168935 () Bool)

(declare-fun e!4306225 () Bool)

(declare-fun tp!1985493 () Bool)

(declare-fun tp!1985494 () Bool)

(assert (=> b!7168935 (= e!4306225 (and tp!1985493 tp!1985494))))

(declare-fun b!7168934 () Bool)

(declare-fun tp!1985495 () Bool)

(assert (=> b!7168934 (= e!4306225 tp!1985495)))

(assert (=> b!7168453 (= tp!1985393 e!4306225)))

(declare-fun b!7168933 () Bool)

(declare-fun tp!1985497 () Bool)

(declare-fun tp!1985496 () Bool)

(assert (=> b!7168933 (= e!4306225 (and tp!1985497 tp!1985496))))

(declare-fun b!7168932 () Bool)

(assert (=> b!7168932 (= e!4306225 tp_is_empty!46225)))

(assert (= (and b!7168453 ((_ is ElementMatch!18327) (reg!18656 (regTwo!37166 (h!76044 (exprs!7779 setElem!52949)))))) b!7168932))

(assert (= (and b!7168453 ((_ is Concat!27172) (reg!18656 (regTwo!37166 (h!76044 (exprs!7779 setElem!52949)))))) b!7168933))

(assert (= (and b!7168453 ((_ is Star!18327) (reg!18656 (regTwo!37166 (h!76044 (exprs!7779 setElem!52949)))))) b!7168934))

(assert (= (and b!7168453 ((_ is Union!18327) (reg!18656 (regTwo!37166 (h!76044 (exprs!7779 setElem!52949)))))) b!7168935))

(declare-fun b!7168939 () Bool)

(declare-fun e!4306226 () Bool)

(declare-fun tp!1985498 () Bool)

(declare-fun tp!1985499 () Bool)

(assert (=> b!7168939 (= e!4306226 (and tp!1985498 tp!1985499))))

(declare-fun b!7168938 () Bool)

(declare-fun tp!1985500 () Bool)

(assert (=> b!7168938 (= e!4306226 tp!1985500)))

(assert (=> b!7168446 (= tp!1985384 e!4306226)))

(declare-fun b!7168937 () Bool)

(declare-fun tp!1985502 () Bool)

(declare-fun tp!1985501 () Bool)

(assert (=> b!7168937 (= e!4306226 (and tp!1985502 tp!1985501))))

(declare-fun b!7168936 () Bool)

(assert (=> b!7168936 (= e!4306226 tp_is_empty!46225)))

(assert (= (and b!7168446 ((_ is ElementMatch!18327) (h!76044 (exprs!7779 setElem!52957)))) b!7168936))

(assert (= (and b!7168446 ((_ is Concat!27172) (h!76044 (exprs!7779 setElem!52957)))) b!7168937))

(assert (= (and b!7168446 ((_ is Star!18327) (h!76044 (exprs!7779 setElem!52957)))) b!7168938))

(assert (= (and b!7168446 ((_ is Union!18327) (h!76044 (exprs!7779 setElem!52957)))) b!7168939))

(declare-fun b!7168940 () Bool)

(declare-fun e!4306227 () Bool)

(declare-fun tp!1985503 () Bool)

(declare-fun tp!1985504 () Bool)

(assert (=> b!7168940 (= e!4306227 (and tp!1985503 tp!1985504))))

(assert (=> b!7168446 (= tp!1985385 e!4306227)))

(assert (= (and b!7168446 ((_ is Cons!69596) (t!383739 (exprs!7779 setElem!52957)))) b!7168940))

(declare-fun b!7168944 () Bool)

(declare-fun e!4306228 () Bool)

(declare-fun tp!1985505 () Bool)

(declare-fun tp!1985506 () Bool)

(assert (=> b!7168944 (= e!4306228 (and tp!1985505 tp!1985506))))

(declare-fun b!7168943 () Bool)

(declare-fun tp!1985507 () Bool)

(assert (=> b!7168943 (= e!4306228 tp!1985507)))

(assert (=> b!7168455 (= tp!1985396 e!4306228)))

(declare-fun b!7168942 () Bool)

(declare-fun tp!1985509 () Bool)

(declare-fun tp!1985508 () Bool)

(assert (=> b!7168942 (= e!4306228 (and tp!1985509 tp!1985508))))

(declare-fun b!7168941 () Bool)

(assert (=> b!7168941 (= e!4306228 tp_is_empty!46225)))

(assert (= (and b!7168455 ((_ is ElementMatch!18327) (h!76044 (exprs!7779 (h!76045 res!2921365))))) b!7168941))

(assert (= (and b!7168455 ((_ is Concat!27172) (h!76044 (exprs!7779 (h!76045 res!2921365))))) b!7168942))

(assert (= (and b!7168455 ((_ is Star!18327) (h!76044 (exprs!7779 (h!76045 res!2921365))))) b!7168943))

(assert (= (and b!7168455 ((_ is Union!18327) (h!76044 (exprs!7779 (h!76045 res!2921365))))) b!7168944))

(declare-fun b!7168945 () Bool)

(declare-fun e!4306229 () Bool)

(declare-fun tp!1985510 () Bool)

(declare-fun tp!1985511 () Bool)

(assert (=> b!7168945 (= e!4306229 (and tp!1985510 tp!1985511))))

(assert (=> b!7168455 (= tp!1985397 e!4306229)))

(assert (= (and b!7168455 ((_ is Cons!69596) (t!383739 (exprs!7779 (h!76045 res!2921365))))) b!7168945))

(declare-fun b!7168947 () Bool)

(declare-fun e!4306231 () Bool)

(declare-fun tp!1985512 () Bool)

(assert (=> b!7168947 (= e!4306231 tp!1985512)))

(declare-fun b!7168946 () Bool)

(declare-fun tp!1985513 () Bool)

(declare-fun e!4306230 () Bool)

(assert (=> b!7168946 (= e!4306230 (and (inv!88839 (h!76045 (t!383740 (t!383740 res!2921365)))) e!4306231 tp!1985513))))

(assert (=> b!7168444 (= tp!1985383 e!4306230)))

(assert (= b!7168946 b!7168947))

(assert (= (and b!7168444 ((_ is Cons!69597) (t!383740 (t!383740 res!2921365)))) b!7168946))

(declare-fun m!7871512 () Bool)

(assert (=> b!7168946 m!7871512))

(declare-fun b!7168951 () Bool)

(declare-fun e!4306232 () Bool)

(declare-fun tp!1985514 () Bool)

(declare-fun tp!1985515 () Bool)

(assert (=> b!7168951 (= e!4306232 (and tp!1985514 tp!1985515))))

(declare-fun b!7168950 () Bool)

(declare-fun tp!1985516 () Bool)

(assert (=> b!7168950 (= e!4306232 tp!1985516)))

(assert (=> b!7168467 (= tp!1985412 e!4306232)))

(declare-fun b!7168949 () Bool)

(declare-fun tp!1985518 () Bool)

(declare-fun tp!1985517 () Bool)

(assert (=> b!7168949 (= e!4306232 (and tp!1985518 tp!1985517))))

(declare-fun b!7168948 () Bool)

(assert (=> b!7168948 (= e!4306232 tp_is_empty!46225)))

(assert (= (and b!7168467 ((_ is ElementMatch!18327) (reg!18656 (regTwo!37167 (h!76044 (exprs!7779 setElem!52949)))))) b!7168948))

(assert (= (and b!7168467 ((_ is Concat!27172) (reg!18656 (regTwo!37167 (h!76044 (exprs!7779 setElem!52949)))))) b!7168949))

(assert (= (and b!7168467 ((_ is Star!18327) (reg!18656 (regTwo!37167 (h!76044 (exprs!7779 setElem!52949)))))) b!7168950))

(assert (= (and b!7168467 ((_ is Union!18327) (reg!18656 (regTwo!37167 (h!76044 (exprs!7779 setElem!52949)))))) b!7168951))

(declare-fun b!7168953 () Bool)

(declare-fun e!4306234 () Bool)

(declare-fun tp!1985519 () Bool)

(assert (=> b!7168953 (= e!4306234 tp!1985519)))

(declare-fun b!7168952 () Bool)

(declare-fun e!4306233 () Bool)

(declare-fun tp!1985520 () Bool)

(assert (=> b!7168952 (= e!4306233 (and (inv!88839 (h!76045 (t!383740 res!2921396))) e!4306234 tp!1985520))))

(assert (=> b!7168346 (= tp!1985362 e!4306233)))

(assert (= b!7168952 b!7168953))

(assert (= (and b!7168346 ((_ is Cons!69597) (t!383740 res!2921396))) b!7168952))

(declare-fun m!7871514 () Bool)

(assert (=> b!7168952 m!7871514))

(declare-fun b!7168954 () Bool)

(declare-fun e!4306235 () Bool)

(declare-fun tp!1985521 () Bool)

(declare-fun tp!1985522 () Bool)

(assert (=> b!7168954 (= e!4306235 (and tp!1985521 tp!1985522))))

(assert (=> b!7168445 (= tp!1985382 e!4306235)))

(assert (= (and b!7168445 ((_ is Cons!69596) (exprs!7779 (h!76045 (t!383740 res!2921365))))) b!7168954))

(declare-fun b!7168958 () Bool)

(declare-fun e!4306236 () Bool)

(declare-fun tp!1985523 () Bool)

(declare-fun tp!1985524 () Bool)

(assert (=> b!7168958 (= e!4306236 (and tp!1985523 tp!1985524))))

(declare-fun b!7168957 () Bool)

(declare-fun tp!1985525 () Bool)

(assert (=> b!7168957 (= e!4306236 tp!1985525)))

(assert (=> b!7168468 (= tp!1985410 e!4306236)))

(declare-fun b!7168956 () Bool)

(declare-fun tp!1985527 () Bool)

(declare-fun tp!1985526 () Bool)

(assert (=> b!7168956 (= e!4306236 (and tp!1985527 tp!1985526))))

(declare-fun b!7168955 () Bool)

(assert (=> b!7168955 (= e!4306236 tp_is_empty!46225)))

(assert (= (and b!7168468 ((_ is ElementMatch!18327) (regOne!37167 (regTwo!37167 (h!76044 (exprs!7779 setElem!52949)))))) b!7168955))

(assert (= (and b!7168468 ((_ is Concat!27172) (regOne!37167 (regTwo!37167 (h!76044 (exprs!7779 setElem!52949)))))) b!7168956))

(assert (= (and b!7168468 ((_ is Star!18327) (regOne!37167 (regTwo!37167 (h!76044 (exprs!7779 setElem!52949)))))) b!7168957))

(assert (= (and b!7168468 ((_ is Union!18327) (regOne!37167 (regTwo!37167 (h!76044 (exprs!7779 setElem!52949)))))) b!7168958))

(declare-fun b!7168962 () Bool)

(declare-fun e!4306237 () Bool)

(declare-fun tp!1985528 () Bool)

(declare-fun tp!1985529 () Bool)

(assert (=> b!7168962 (= e!4306237 (and tp!1985528 tp!1985529))))

(declare-fun b!7168961 () Bool)

(declare-fun tp!1985530 () Bool)

(assert (=> b!7168961 (= e!4306237 tp!1985530)))

(assert (=> b!7168468 (= tp!1985411 e!4306237)))

(declare-fun b!7168960 () Bool)

(declare-fun tp!1985532 () Bool)

(declare-fun tp!1985531 () Bool)

(assert (=> b!7168960 (= e!4306237 (and tp!1985532 tp!1985531))))

(declare-fun b!7168959 () Bool)

(assert (=> b!7168959 (= e!4306237 tp_is_empty!46225)))

(assert (= (and b!7168468 ((_ is ElementMatch!18327) (regTwo!37167 (regTwo!37167 (h!76044 (exprs!7779 setElem!52949)))))) b!7168959))

(assert (= (and b!7168468 ((_ is Concat!27172) (regTwo!37167 (regTwo!37167 (h!76044 (exprs!7779 setElem!52949)))))) b!7168960))

(assert (= (and b!7168468 ((_ is Star!18327) (regTwo!37167 (regTwo!37167 (h!76044 (exprs!7779 setElem!52949)))))) b!7168961))

(assert (= (and b!7168468 ((_ is Union!18327) (regTwo!37167 (regTwo!37167 (h!76044 (exprs!7779 setElem!52949)))))) b!7168962))

(declare-fun b!7168966 () Bool)

(declare-fun e!4306238 () Bool)

(declare-fun tp!1985533 () Bool)

(declare-fun tp!1985534 () Bool)

(assert (=> b!7168966 (= e!4306238 (and tp!1985533 tp!1985534))))

(declare-fun b!7168965 () Bool)

(declare-fun tp!1985535 () Bool)

(assert (=> b!7168965 (= e!4306238 tp!1985535)))

(assert (=> b!7168460 (= tp!1985403 e!4306238)))

(declare-fun b!7168964 () Bool)

(declare-fun tp!1985537 () Bool)

(declare-fun tp!1985536 () Bool)

(assert (=> b!7168964 (= e!4306238 (and tp!1985537 tp!1985536))))

(declare-fun b!7168963 () Bool)

(assert (=> b!7168963 (= e!4306238 tp_is_empty!46225)))

(assert (= (and b!7168460 ((_ is ElementMatch!18327) (h!76044 (t!383739 (exprs!7779 setElem!52955))))) b!7168963))

(assert (= (and b!7168460 ((_ is Concat!27172) (h!76044 (t!383739 (exprs!7779 setElem!52955))))) b!7168964))

(assert (= (and b!7168460 ((_ is Star!18327) (h!76044 (t!383739 (exprs!7779 setElem!52955))))) b!7168965))

(assert (= (and b!7168460 ((_ is Union!18327) (h!76044 (t!383739 (exprs!7779 setElem!52955))))) b!7168966))

(declare-fun b!7168967 () Bool)

(declare-fun e!4306239 () Bool)

(declare-fun tp!1985538 () Bool)

(declare-fun tp!1985539 () Bool)

(assert (=> b!7168967 (= e!4306239 (and tp!1985538 tp!1985539))))

(assert (=> b!7168460 (= tp!1985404 e!4306239)))

(assert (= (and b!7168460 ((_ is Cons!69596) (t!383739 (t!383739 (exprs!7779 setElem!52955))))) b!7168967))

(declare-fun b!7168968 () Bool)

(declare-fun e!4306240 () Bool)

(declare-fun tp!1985540 () Bool)

(declare-fun tp!1985541 () Bool)

(assert (=> b!7168968 (= e!4306240 (and tp!1985540 tp!1985541))))

(assert (=> b!7168347 (= tp!1985363 e!4306240)))

(assert (= (and b!7168347 ((_ is Cons!69596) (exprs!7779 (h!76045 res!2921396)))) b!7168968))

(declare-fun b!7168972 () Bool)

(declare-fun e!4306241 () Bool)

(declare-fun tp!1985542 () Bool)

(declare-fun tp!1985543 () Bool)

(assert (=> b!7168972 (= e!4306241 (and tp!1985542 tp!1985543))))

(declare-fun b!7168971 () Bool)

(declare-fun tp!1985544 () Bool)

(assert (=> b!7168971 (= e!4306241 tp!1985544)))

(assert (=> b!7168430 (= tp!1985370 e!4306241)))

(declare-fun b!7168970 () Bool)

(declare-fun tp!1985546 () Bool)

(declare-fun tp!1985545 () Bool)

(assert (=> b!7168970 (= e!4306241 (and tp!1985546 tp!1985545))))

(declare-fun b!7168969 () Bool)

(assert (=> b!7168969 (= e!4306241 tp_is_empty!46225)))

(assert (= (and b!7168430 ((_ is ElementMatch!18327) (regOne!37166 (reg!18656 (h!76044 (exprs!7779 setElem!52949)))))) b!7168969))

(assert (= (and b!7168430 ((_ is Concat!27172) (regOne!37166 (reg!18656 (h!76044 (exprs!7779 setElem!52949)))))) b!7168970))

(assert (= (and b!7168430 ((_ is Star!18327) (regOne!37166 (reg!18656 (h!76044 (exprs!7779 setElem!52949)))))) b!7168971))

(assert (= (and b!7168430 ((_ is Union!18327) (regOne!37166 (reg!18656 (h!76044 (exprs!7779 setElem!52949)))))) b!7168972))

(declare-fun b!7168976 () Bool)

(declare-fun e!4306242 () Bool)

(declare-fun tp!1985547 () Bool)

(declare-fun tp!1985548 () Bool)

(assert (=> b!7168976 (= e!4306242 (and tp!1985547 tp!1985548))))

(declare-fun b!7168975 () Bool)

(declare-fun tp!1985549 () Bool)

(assert (=> b!7168975 (= e!4306242 tp!1985549)))

(assert (=> b!7168430 (= tp!1985369 e!4306242)))

(declare-fun b!7168974 () Bool)

(declare-fun tp!1985551 () Bool)

(declare-fun tp!1985550 () Bool)

(assert (=> b!7168974 (= e!4306242 (and tp!1985551 tp!1985550))))

(declare-fun b!7168973 () Bool)

(assert (=> b!7168973 (= e!4306242 tp_is_empty!46225)))

(assert (= (and b!7168430 ((_ is ElementMatch!18327) (regTwo!37166 (reg!18656 (h!76044 (exprs!7779 setElem!52949)))))) b!7168973))

(assert (= (and b!7168430 ((_ is Concat!27172) (regTwo!37166 (reg!18656 (h!76044 (exprs!7779 setElem!52949)))))) b!7168974))

(assert (= (and b!7168430 ((_ is Star!18327) (regTwo!37166 (reg!18656 (h!76044 (exprs!7779 setElem!52949)))))) b!7168975))

(assert (= (and b!7168430 ((_ is Union!18327) (regTwo!37166 (reg!18656 (h!76044 (exprs!7779 setElem!52949)))))) b!7168976))

(declare-fun b!7168980 () Bool)

(declare-fun e!4306243 () Bool)

(declare-fun tp!1985552 () Bool)

(declare-fun tp!1985553 () Bool)

(assert (=> b!7168980 (= e!4306243 (and tp!1985552 tp!1985553))))

(declare-fun b!7168979 () Bool)

(declare-fun tp!1985554 () Bool)

(assert (=> b!7168979 (= e!4306243 tp!1985554)))

(assert (=> b!7168452 (= tp!1985395 e!4306243)))

(declare-fun b!7168978 () Bool)

(declare-fun tp!1985556 () Bool)

(declare-fun tp!1985555 () Bool)

(assert (=> b!7168978 (= e!4306243 (and tp!1985556 tp!1985555))))

(declare-fun b!7168977 () Bool)

(assert (=> b!7168977 (= e!4306243 tp_is_empty!46225)))

(assert (= (and b!7168452 ((_ is ElementMatch!18327) (regOne!37166 (regTwo!37166 (h!76044 (exprs!7779 setElem!52949)))))) b!7168977))

(assert (= (and b!7168452 ((_ is Concat!27172) (regOne!37166 (regTwo!37166 (h!76044 (exprs!7779 setElem!52949)))))) b!7168978))

(assert (= (and b!7168452 ((_ is Star!18327) (regOne!37166 (regTwo!37166 (h!76044 (exprs!7779 setElem!52949)))))) b!7168979))

(assert (= (and b!7168452 ((_ is Union!18327) (regOne!37166 (regTwo!37166 (h!76044 (exprs!7779 setElem!52949)))))) b!7168980))

(declare-fun b!7168984 () Bool)

(declare-fun e!4306244 () Bool)

(declare-fun tp!1985557 () Bool)

(declare-fun tp!1985558 () Bool)

(assert (=> b!7168984 (= e!4306244 (and tp!1985557 tp!1985558))))

(declare-fun b!7168983 () Bool)

(declare-fun tp!1985559 () Bool)

(assert (=> b!7168983 (= e!4306244 tp!1985559)))

(assert (=> b!7168452 (= tp!1985394 e!4306244)))

(declare-fun b!7168982 () Bool)

(declare-fun tp!1985561 () Bool)

(declare-fun tp!1985560 () Bool)

(assert (=> b!7168982 (= e!4306244 (and tp!1985561 tp!1985560))))

(declare-fun b!7168981 () Bool)

(assert (=> b!7168981 (= e!4306244 tp_is_empty!46225)))

(assert (= (and b!7168452 ((_ is ElementMatch!18327) (regTwo!37166 (regTwo!37166 (h!76044 (exprs!7779 setElem!52949)))))) b!7168981))

(assert (= (and b!7168452 ((_ is Concat!27172) (regTwo!37166 (regTwo!37166 (h!76044 (exprs!7779 setElem!52949)))))) b!7168982))

(assert (= (and b!7168452 ((_ is Star!18327) (regTwo!37166 (regTwo!37166 (h!76044 (exprs!7779 setElem!52949)))))) b!7168983))

(assert (= (and b!7168452 ((_ is Union!18327) (regTwo!37166 (regTwo!37166 (h!76044 (exprs!7779 setElem!52949)))))) b!7168984))

(declare-fun b!7168988 () Bool)

(declare-fun e!4306245 () Bool)

(declare-fun tp!1985562 () Bool)

(declare-fun tp!1985563 () Bool)

(assert (=> b!7168988 (= e!4306245 (and tp!1985562 tp!1985563))))

(declare-fun b!7168987 () Bool)

(declare-fun tp!1985564 () Bool)

(assert (=> b!7168987 (= e!4306245 tp!1985564)))

(assert (=> b!7168449 (= tp!1985388 e!4306245)))

(declare-fun b!7168986 () Bool)

(declare-fun tp!1985566 () Bool)

(declare-fun tp!1985565 () Bool)

(assert (=> b!7168986 (= e!4306245 (and tp!1985566 tp!1985565))))

(declare-fun b!7168985 () Bool)

(assert (=> b!7168985 (= e!4306245 tp_is_empty!46225)))

(assert (= (and b!7168449 ((_ is ElementMatch!18327) (reg!18656 (regOne!37166 (h!76044 (exprs!7779 setElem!52949)))))) b!7168985))

(assert (= (and b!7168449 ((_ is Concat!27172) (reg!18656 (regOne!37166 (h!76044 (exprs!7779 setElem!52949)))))) b!7168986))

(assert (= (and b!7168449 ((_ is Star!18327) (reg!18656 (regOne!37166 (h!76044 (exprs!7779 setElem!52949)))))) b!7168987))

(assert (= (and b!7168449 ((_ is Union!18327) (reg!18656 (regOne!37166 (h!76044 (exprs!7779 setElem!52949)))))) b!7168988))

(declare-fun b!7168992 () Bool)

(declare-fun e!4306246 () Bool)

(declare-fun tp!1985567 () Bool)

(declare-fun tp!1985568 () Bool)

(assert (=> b!7168992 (= e!4306246 (and tp!1985567 tp!1985568))))

(declare-fun b!7168991 () Bool)

(declare-fun tp!1985569 () Bool)

(assert (=> b!7168991 (= e!4306246 tp!1985569)))

(assert (=> b!7168436 (= tp!1985371 e!4306246)))

(declare-fun b!7168990 () Bool)

(declare-fun tp!1985571 () Bool)

(declare-fun tp!1985570 () Bool)

(assert (=> b!7168990 (= e!4306246 (and tp!1985571 tp!1985570))))

(declare-fun b!7168989 () Bool)

(assert (=> b!7168989 (= e!4306246 tp_is_empty!46225)))

(assert (= (and b!7168436 ((_ is ElementMatch!18327) (regOne!37167 (h!76044 (t!383739 (exprs!7779 setElem!52949)))))) b!7168989))

(assert (= (and b!7168436 ((_ is Concat!27172) (regOne!37167 (h!76044 (t!383739 (exprs!7779 setElem!52949)))))) b!7168990))

(assert (= (and b!7168436 ((_ is Star!18327) (regOne!37167 (h!76044 (t!383739 (exprs!7779 setElem!52949)))))) b!7168991))

(assert (= (and b!7168436 ((_ is Union!18327) (regOne!37167 (h!76044 (t!383739 (exprs!7779 setElem!52949)))))) b!7168992))

(declare-fun b!7168996 () Bool)

(declare-fun e!4306247 () Bool)

(declare-fun tp!1985572 () Bool)

(declare-fun tp!1985573 () Bool)

(assert (=> b!7168996 (= e!4306247 (and tp!1985572 tp!1985573))))

(declare-fun b!7168995 () Bool)

(declare-fun tp!1985574 () Bool)

(assert (=> b!7168995 (= e!4306247 tp!1985574)))

(assert (=> b!7168436 (= tp!1985372 e!4306247)))

(declare-fun b!7168994 () Bool)

(declare-fun tp!1985576 () Bool)

(declare-fun tp!1985575 () Bool)

(assert (=> b!7168994 (= e!4306247 (and tp!1985576 tp!1985575))))

(declare-fun b!7168993 () Bool)

(assert (=> b!7168993 (= e!4306247 tp_is_empty!46225)))

(assert (= (and b!7168436 ((_ is ElementMatch!18327) (regTwo!37167 (h!76044 (t!383739 (exprs!7779 setElem!52949)))))) b!7168993))

(assert (= (and b!7168436 ((_ is Concat!27172) (regTwo!37167 (h!76044 (t!383739 (exprs!7779 setElem!52949)))))) b!7168994))

(assert (= (and b!7168436 ((_ is Star!18327) (regTwo!37167 (h!76044 (t!383739 (exprs!7779 setElem!52949)))))) b!7168995))

(assert (= (and b!7168436 ((_ is Union!18327) (regTwo!37167 (h!76044 (t!383739 (exprs!7779 setElem!52949)))))) b!7168996))

(declare-fun b!7169000 () Bool)

(declare-fun e!4306248 () Bool)

(declare-fun tp!1985577 () Bool)

(declare-fun tp!1985578 () Bool)

(assert (=> b!7169000 (= e!4306248 (and tp!1985577 tp!1985578))))

(declare-fun b!7168999 () Bool)

(declare-fun tp!1985579 () Bool)

(assert (=> b!7168999 (= e!4306248 tp!1985579)))

(assert (=> b!7168457 (= tp!1985402 e!4306248)))

(declare-fun b!7168998 () Bool)

(declare-fun tp!1985581 () Bool)

(declare-fun tp!1985580 () Bool)

(assert (=> b!7168998 (= e!4306248 (and tp!1985581 tp!1985580))))

(declare-fun b!7168997 () Bool)

(assert (=> b!7168997 (= e!4306248 tp_is_empty!46225)))

(assert (= (and b!7168457 ((_ is ElementMatch!18327) (regOne!37166 (h!76044 (exprs!7779 setElem!52955))))) b!7168997))

(assert (= (and b!7168457 ((_ is Concat!27172) (regOne!37166 (h!76044 (exprs!7779 setElem!52955))))) b!7168998))

(assert (= (and b!7168457 ((_ is Star!18327) (regOne!37166 (h!76044 (exprs!7779 setElem!52955))))) b!7168999))

(assert (= (and b!7168457 ((_ is Union!18327) (regOne!37166 (h!76044 (exprs!7779 setElem!52955))))) b!7169000))

(declare-fun b!7169004 () Bool)

(declare-fun e!4306249 () Bool)

(declare-fun tp!1985582 () Bool)

(declare-fun tp!1985583 () Bool)

(assert (=> b!7169004 (= e!4306249 (and tp!1985582 tp!1985583))))

(declare-fun b!7169003 () Bool)

(declare-fun tp!1985584 () Bool)

(assert (=> b!7169003 (= e!4306249 tp!1985584)))

(assert (=> b!7168457 (= tp!1985401 e!4306249)))

(declare-fun b!7169002 () Bool)

(declare-fun tp!1985586 () Bool)

(declare-fun tp!1985585 () Bool)

(assert (=> b!7169002 (= e!4306249 (and tp!1985586 tp!1985585))))

(declare-fun b!7169001 () Bool)

(assert (=> b!7169001 (= e!4306249 tp_is_empty!46225)))

(assert (= (and b!7168457 ((_ is ElementMatch!18327) (regTwo!37166 (h!76044 (exprs!7779 setElem!52955))))) b!7169001))

(assert (= (and b!7168457 ((_ is Concat!27172) (regTwo!37166 (h!76044 (exprs!7779 setElem!52955))))) b!7169002))

(assert (= (and b!7168457 ((_ is Star!18327) (regTwo!37166 (h!76044 (exprs!7779 setElem!52955))))) b!7169003))

(assert (= (and b!7168457 ((_ is Union!18327) (regTwo!37166 (h!76044 (exprs!7779 setElem!52955))))) b!7169004))

(declare-fun b!7169008 () Bool)

(declare-fun e!4306250 () Bool)

(declare-fun tp!1985587 () Bool)

(declare-fun tp!1985588 () Bool)

(assert (=> b!7169008 (= e!4306250 (and tp!1985587 tp!1985588))))

(declare-fun b!7169007 () Bool)

(declare-fun tp!1985589 () Bool)

(assert (=> b!7169007 (= e!4306250 tp!1985589)))

(assert (=> b!7168450 (= tp!1985386 e!4306250)))

(declare-fun b!7169006 () Bool)

(declare-fun tp!1985591 () Bool)

(declare-fun tp!1985590 () Bool)

(assert (=> b!7169006 (= e!4306250 (and tp!1985591 tp!1985590))))

(declare-fun b!7169005 () Bool)

(assert (=> b!7169005 (= e!4306250 tp_is_empty!46225)))

(assert (= (and b!7168450 ((_ is ElementMatch!18327) (regOne!37167 (regOne!37166 (h!76044 (exprs!7779 setElem!52949)))))) b!7169005))

(assert (= (and b!7168450 ((_ is Concat!27172) (regOne!37167 (regOne!37166 (h!76044 (exprs!7779 setElem!52949)))))) b!7169006))

(assert (= (and b!7168450 ((_ is Star!18327) (regOne!37167 (regOne!37166 (h!76044 (exprs!7779 setElem!52949)))))) b!7169007))

(assert (= (and b!7168450 ((_ is Union!18327) (regOne!37167 (regOne!37166 (h!76044 (exprs!7779 setElem!52949)))))) b!7169008))

(declare-fun b!7169012 () Bool)

(declare-fun e!4306251 () Bool)

(declare-fun tp!1985592 () Bool)

(declare-fun tp!1985593 () Bool)

(assert (=> b!7169012 (= e!4306251 (and tp!1985592 tp!1985593))))

(declare-fun b!7169011 () Bool)

(declare-fun tp!1985594 () Bool)

(assert (=> b!7169011 (= e!4306251 tp!1985594)))

(assert (=> b!7168450 (= tp!1985387 e!4306251)))

(declare-fun b!7169010 () Bool)

(declare-fun tp!1985596 () Bool)

(declare-fun tp!1985595 () Bool)

(assert (=> b!7169010 (= e!4306251 (and tp!1985596 tp!1985595))))

(declare-fun b!7169009 () Bool)

(assert (=> b!7169009 (= e!4306251 tp_is_empty!46225)))

(assert (= (and b!7168450 ((_ is ElementMatch!18327) (regTwo!37167 (regOne!37166 (h!76044 (exprs!7779 setElem!52949)))))) b!7169009))

(assert (= (and b!7168450 ((_ is Concat!27172) (regTwo!37167 (regOne!37166 (h!76044 (exprs!7779 setElem!52949)))))) b!7169010))

(assert (= (and b!7168450 ((_ is Star!18327) (regTwo!37167 (regOne!37166 (h!76044 (exprs!7779 setElem!52949)))))) b!7169011))

(assert (= (and b!7168450 ((_ is Union!18327) (regTwo!37167 (regOne!37166 (h!76044 (exprs!7779 setElem!52949)))))) b!7169012))

(declare-fun b!7169016 () Bool)

(declare-fun e!4306252 () Bool)

(declare-fun tp!1985597 () Bool)

(declare-fun tp!1985598 () Bool)

(assert (=> b!7169016 (= e!4306252 (and tp!1985597 tp!1985598))))

(declare-fun b!7169015 () Bool)

(declare-fun tp!1985599 () Bool)

(assert (=> b!7169015 (= e!4306252 tp!1985599)))

(assert (=> b!7168458 (= tp!1985400 e!4306252)))

(declare-fun b!7169014 () Bool)

(declare-fun tp!1985601 () Bool)

(declare-fun tp!1985600 () Bool)

(assert (=> b!7169014 (= e!4306252 (and tp!1985601 tp!1985600))))

(declare-fun b!7169013 () Bool)

(assert (=> b!7169013 (= e!4306252 tp_is_empty!46225)))

(assert (= (and b!7168458 ((_ is ElementMatch!18327) (reg!18656 (h!76044 (exprs!7779 setElem!52955))))) b!7169013))

(assert (= (and b!7168458 ((_ is Concat!27172) (reg!18656 (h!76044 (exprs!7779 setElem!52955))))) b!7169014))

(assert (= (and b!7168458 ((_ is Star!18327) (reg!18656 (h!76044 (exprs!7779 setElem!52955))))) b!7169015))

(assert (= (and b!7168458 ((_ is Union!18327) (reg!18656 (h!76044 (exprs!7779 setElem!52955))))) b!7169016))

(declare-fun b!7169020 () Bool)

(declare-fun e!4306253 () Bool)

(declare-fun tp!1985602 () Bool)

(declare-fun tp!1985603 () Bool)

(assert (=> b!7169020 (= e!4306253 (and tp!1985602 tp!1985603))))

(declare-fun b!7169019 () Bool)

(declare-fun tp!1985604 () Bool)

(assert (=> b!7169019 (= e!4306253 tp!1985604)))

(assert (=> b!7168466 (= tp!1985414 e!4306253)))

(declare-fun b!7169018 () Bool)

(declare-fun tp!1985606 () Bool)

(declare-fun tp!1985605 () Bool)

(assert (=> b!7169018 (= e!4306253 (and tp!1985606 tp!1985605))))

(declare-fun b!7169017 () Bool)

(assert (=> b!7169017 (= e!4306253 tp_is_empty!46225)))

(assert (= (and b!7168466 ((_ is ElementMatch!18327) (regOne!37166 (regTwo!37167 (h!76044 (exprs!7779 setElem!52949)))))) b!7169017))

(assert (= (and b!7168466 ((_ is Concat!27172) (regOne!37166 (regTwo!37167 (h!76044 (exprs!7779 setElem!52949)))))) b!7169018))

(assert (= (and b!7168466 ((_ is Star!18327) (regOne!37166 (regTwo!37167 (h!76044 (exprs!7779 setElem!52949)))))) b!7169019))

(assert (= (and b!7168466 ((_ is Union!18327) (regOne!37166 (regTwo!37167 (h!76044 (exprs!7779 setElem!52949)))))) b!7169020))

(declare-fun b!7169024 () Bool)

(declare-fun e!4306254 () Bool)

(declare-fun tp!1985607 () Bool)

(declare-fun tp!1985608 () Bool)

(assert (=> b!7169024 (= e!4306254 (and tp!1985607 tp!1985608))))

(declare-fun b!7169023 () Bool)

(declare-fun tp!1985609 () Bool)

(assert (=> b!7169023 (= e!4306254 tp!1985609)))

(assert (=> b!7168466 (= tp!1985413 e!4306254)))

(declare-fun b!7169022 () Bool)

(declare-fun tp!1985611 () Bool)

(declare-fun tp!1985610 () Bool)

(assert (=> b!7169022 (= e!4306254 (and tp!1985611 tp!1985610))))

(declare-fun b!7169021 () Bool)

(assert (=> b!7169021 (= e!4306254 tp_is_empty!46225)))

(assert (= (and b!7168466 ((_ is ElementMatch!18327) (regTwo!37166 (regTwo!37167 (h!76044 (exprs!7779 setElem!52949)))))) b!7169021))

(assert (= (and b!7168466 ((_ is Concat!27172) (regTwo!37166 (regTwo!37167 (h!76044 (exprs!7779 setElem!52949)))))) b!7169022))

(assert (= (and b!7168466 ((_ is Star!18327) (regTwo!37166 (regTwo!37167 (h!76044 (exprs!7779 setElem!52949)))))) b!7169023))

(assert (= (and b!7168466 ((_ is Union!18327) (regTwo!37166 (regTwo!37167 (h!76044 (exprs!7779 setElem!52949)))))) b!7169024))

(declare-fun b!7169028 () Bool)

(declare-fun e!4306255 () Bool)

(declare-fun tp!1985612 () Bool)

(declare-fun tp!1985613 () Bool)

(assert (=> b!7169028 (= e!4306255 (and tp!1985612 tp!1985613))))

(declare-fun b!7169027 () Bool)

(declare-fun tp!1985614 () Bool)

(assert (=> b!7169027 (= e!4306255 tp!1985614)))

(assert (=> b!7168437 (= tp!1985376 e!4306255)))

(declare-fun b!7169026 () Bool)

(declare-fun tp!1985616 () Bool)

(declare-fun tp!1985615 () Bool)

(assert (=> b!7169026 (= e!4306255 (and tp!1985616 tp!1985615))))

(declare-fun b!7169025 () Bool)

(assert (=> b!7169025 (= e!4306255 tp_is_empty!46225)))

(assert (= (and b!7168437 ((_ is ElementMatch!18327) (h!76044 (t!383739 (t!383739 (exprs!7779 setElem!52949)))))) b!7169025))

(assert (= (and b!7168437 ((_ is Concat!27172) (h!76044 (t!383739 (t!383739 (exprs!7779 setElem!52949)))))) b!7169026))

(assert (= (and b!7168437 ((_ is Star!18327) (h!76044 (t!383739 (t!383739 (exprs!7779 setElem!52949)))))) b!7169027))

(assert (= (and b!7168437 ((_ is Union!18327) (h!76044 (t!383739 (t!383739 (exprs!7779 setElem!52949)))))) b!7169028))

(declare-fun b!7169029 () Bool)

(declare-fun e!4306256 () Bool)

(declare-fun tp!1985617 () Bool)

(declare-fun tp!1985618 () Bool)

(assert (=> b!7169029 (= e!4306256 (and tp!1985617 tp!1985618))))

(assert (=> b!7168437 (= tp!1985377 e!4306256)))

(assert (= (and b!7168437 ((_ is Cons!69596) (t!383739 (t!383739 (t!383739 (exprs!7779 setElem!52949)))))) b!7169029))

(declare-fun b!7169033 () Bool)

(declare-fun e!4306257 () Bool)

(declare-fun tp!1985619 () Bool)

(declare-fun tp!1985620 () Bool)

(assert (=> b!7169033 (= e!4306257 (and tp!1985619 tp!1985620))))

(declare-fun b!7169032 () Bool)

(declare-fun tp!1985621 () Bool)

(assert (=> b!7169032 (= e!4306257 tp!1985621)))

(assert (=> b!7168459 (= tp!1985398 e!4306257)))

(declare-fun b!7169031 () Bool)

(declare-fun tp!1985623 () Bool)

(declare-fun tp!1985622 () Bool)

(assert (=> b!7169031 (= e!4306257 (and tp!1985623 tp!1985622))))

(declare-fun b!7169030 () Bool)

(assert (=> b!7169030 (= e!4306257 tp_is_empty!46225)))

(assert (= (and b!7168459 ((_ is ElementMatch!18327) (regOne!37167 (h!76044 (exprs!7779 setElem!52955))))) b!7169030))

(assert (= (and b!7168459 ((_ is Concat!27172) (regOne!37167 (h!76044 (exprs!7779 setElem!52955))))) b!7169031))

(assert (= (and b!7168459 ((_ is Star!18327) (regOne!37167 (h!76044 (exprs!7779 setElem!52955))))) b!7169032))

(assert (= (and b!7168459 ((_ is Union!18327) (regOne!37167 (h!76044 (exprs!7779 setElem!52955))))) b!7169033))

(declare-fun b!7169037 () Bool)

(declare-fun e!4306258 () Bool)

(declare-fun tp!1985624 () Bool)

(declare-fun tp!1985625 () Bool)

(assert (=> b!7169037 (= e!4306258 (and tp!1985624 tp!1985625))))

(declare-fun b!7169036 () Bool)

(declare-fun tp!1985626 () Bool)

(assert (=> b!7169036 (= e!4306258 tp!1985626)))

(assert (=> b!7168459 (= tp!1985399 e!4306258)))

(declare-fun b!7169035 () Bool)

(declare-fun tp!1985628 () Bool)

(declare-fun tp!1985627 () Bool)

(assert (=> b!7169035 (= e!4306258 (and tp!1985628 tp!1985627))))

(declare-fun b!7169034 () Bool)

(assert (=> b!7169034 (= e!4306258 tp_is_empty!46225)))

(assert (= (and b!7168459 ((_ is ElementMatch!18327) (regTwo!37167 (h!76044 (exprs!7779 setElem!52955))))) b!7169034))

(assert (= (and b!7168459 ((_ is Concat!27172) (regTwo!37167 (h!76044 (exprs!7779 setElem!52955))))) b!7169035))

(assert (= (and b!7168459 ((_ is Star!18327) (regTwo!37167 (h!76044 (exprs!7779 setElem!52955))))) b!7169036))

(assert (= (and b!7168459 ((_ is Union!18327) (regTwo!37167 (h!76044 (exprs!7779 setElem!52955))))) b!7169037))

(declare-fun b!7169041 () Bool)

(declare-fun e!4306259 () Bool)

(declare-fun tp!1985629 () Bool)

(declare-fun tp!1985630 () Bool)

(assert (=> b!7169041 (= e!4306259 (and tp!1985629 tp!1985630))))

(declare-fun b!7169040 () Bool)

(declare-fun tp!1985631 () Bool)

(assert (=> b!7169040 (= e!4306259 tp!1985631)))

(assert (=> b!7168462 (= tp!1985409 e!4306259)))

(declare-fun b!7169039 () Bool)

(declare-fun tp!1985633 () Bool)

(declare-fun tp!1985632 () Bool)

(assert (=> b!7169039 (= e!4306259 (and tp!1985633 tp!1985632))))

(declare-fun b!7169038 () Bool)

(assert (=> b!7169038 (= e!4306259 tp_is_empty!46225)))

(assert (= (and b!7168462 ((_ is ElementMatch!18327) (regOne!37166 (regOne!37167 (h!76044 (exprs!7779 setElem!52949)))))) b!7169038))

(assert (= (and b!7168462 ((_ is Concat!27172) (regOne!37166 (regOne!37167 (h!76044 (exprs!7779 setElem!52949)))))) b!7169039))

(assert (= (and b!7168462 ((_ is Star!18327) (regOne!37166 (regOne!37167 (h!76044 (exprs!7779 setElem!52949)))))) b!7169040))

(assert (= (and b!7168462 ((_ is Union!18327) (regOne!37166 (regOne!37167 (h!76044 (exprs!7779 setElem!52949)))))) b!7169041))

(declare-fun b!7169045 () Bool)

(declare-fun e!4306260 () Bool)

(declare-fun tp!1985634 () Bool)

(declare-fun tp!1985635 () Bool)

(assert (=> b!7169045 (= e!4306260 (and tp!1985634 tp!1985635))))

(declare-fun b!7169044 () Bool)

(declare-fun tp!1985636 () Bool)

(assert (=> b!7169044 (= e!4306260 tp!1985636)))

(assert (=> b!7168462 (= tp!1985408 e!4306260)))

(declare-fun b!7169043 () Bool)

(declare-fun tp!1985638 () Bool)

(declare-fun tp!1985637 () Bool)

(assert (=> b!7169043 (= e!4306260 (and tp!1985638 tp!1985637))))

(declare-fun b!7169042 () Bool)

(assert (=> b!7169042 (= e!4306260 tp_is_empty!46225)))

(assert (= (and b!7168462 ((_ is ElementMatch!18327) (regTwo!37166 (regOne!37167 (h!76044 (exprs!7779 setElem!52949)))))) b!7169042))

(assert (= (and b!7168462 ((_ is Concat!27172) (regTwo!37166 (regOne!37167 (h!76044 (exprs!7779 setElem!52949)))))) b!7169043))

(assert (= (and b!7168462 ((_ is Star!18327) (regTwo!37166 (regOne!37167 (h!76044 (exprs!7779 setElem!52949)))))) b!7169044))

(assert (= (and b!7168462 ((_ is Union!18327) (regTwo!37166 (regOne!37167 (h!76044 (exprs!7779 setElem!52949)))))) b!7169045))

(declare-fun b!7169049 () Bool)

(declare-fun e!4306261 () Bool)

(declare-fun tp!1985639 () Bool)

(declare-fun tp!1985640 () Bool)

(assert (=> b!7169049 (= e!4306261 (and tp!1985639 tp!1985640))))

(declare-fun b!7169048 () Bool)

(declare-fun tp!1985641 () Bool)

(assert (=> b!7169048 (= e!4306261 tp!1985641)))

(assert (=> b!7168464 (= tp!1985405 e!4306261)))

(declare-fun b!7169047 () Bool)

(declare-fun tp!1985643 () Bool)

(declare-fun tp!1985642 () Bool)

(assert (=> b!7169047 (= e!4306261 (and tp!1985643 tp!1985642))))

(declare-fun b!7169046 () Bool)

(assert (=> b!7169046 (= e!4306261 tp_is_empty!46225)))

(assert (= (and b!7168464 ((_ is ElementMatch!18327) (regOne!37167 (regOne!37167 (h!76044 (exprs!7779 setElem!52949)))))) b!7169046))

(assert (= (and b!7168464 ((_ is Concat!27172) (regOne!37167 (regOne!37167 (h!76044 (exprs!7779 setElem!52949)))))) b!7169047))

(assert (= (and b!7168464 ((_ is Star!18327) (regOne!37167 (regOne!37167 (h!76044 (exprs!7779 setElem!52949)))))) b!7169048))

(assert (= (and b!7168464 ((_ is Union!18327) (regOne!37167 (regOne!37167 (h!76044 (exprs!7779 setElem!52949)))))) b!7169049))

(declare-fun b!7169053 () Bool)

(declare-fun e!4306262 () Bool)

(declare-fun tp!1985644 () Bool)

(declare-fun tp!1985645 () Bool)

(assert (=> b!7169053 (= e!4306262 (and tp!1985644 tp!1985645))))

(declare-fun b!7169052 () Bool)

(declare-fun tp!1985646 () Bool)

(assert (=> b!7169052 (= e!4306262 tp!1985646)))

(assert (=> b!7168464 (= tp!1985406 e!4306262)))

(declare-fun b!7169051 () Bool)

(declare-fun tp!1985648 () Bool)

(declare-fun tp!1985647 () Bool)

(assert (=> b!7169051 (= e!4306262 (and tp!1985648 tp!1985647))))

(declare-fun b!7169050 () Bool)

(assert (=> b!7169050 (= e!4306262 tp_is_empty!46225)))

(assert (= (and b!7168464 ((_ is ElementMatch!18327) (regTwo!37167 (regOne!37167 (h!76044 (exprs!7779 setElem!52949)))))) b!7169050))

(assert (= (and b!7168464 ((_ is Concat!27172) (regTwo!37167 (regOne!37167 (h!76044 (exprs!7779 setElem!52949)))))) b!7169051))

(assert (= (and b!7168464 ((_ is Star!18327) (regTwo!37167 (regOne!37167 (h!76044 (exprs!7779 setElem!52949)))))) b!7169052))

(assert (= (and b!7168464 ((_ is Union!18327) (regTwo!37167 (regOne!37167 (h!76044 (exprs!7779 setElem!52949)))))) b!7169053))

(declare-fun b!7169057 () Bool)

(declare-fun e!4306263 () Bool)

(declare-fun tp!1985649 () Bool)

(declare-fun tp!1985650 () Bool)

(assert (=> b!7169057 (= e!4306263 (and tp!1985649 tp!1985650))))

(declare-fun b!7169056 () Bool)

(declare-fun tp!1985651 () Bool)

(assert (=> b!7169056 (= e!4306263 tp!1985651)))

(assert (=> b!7168463 (= tp!1985407 e!4306263)))

(declare-fun b!7169055 () Bool)

(declare-fun tp!1985653 () Bool)

(declare-fun tp!1985652 () Bool)

(assert (=> b!7169055 (= e!4306263 (and tp!1985653 tp!1985652))))

(declare-fun b!7169054 () Bool)

(assert (=> b!7169054 (= e!4306263 tp_is_empty!46225)))

(assert (= (and b!7168463 ((_ is ElementMatch!18327) (reg!18656 (regOne!37167 (h!76044 (exprs!7779 setElem!52949)))))) b!7169054))

(assert (= (and b!7168463 ((_ is Concat!27172) (reg!18656 (regOne!37167 (h!76044 (exprs!7779 setElem!52949)))))) b!7169055))

(assert (= (and b!7168463 ((_ is Star!18327) (reg!18656 (regOne!37167 (h!76044 (exprs!7779 setElem!52949)))))) b!7169056))

(assert (= (and b!7168463 ((_ is Union!18327) (reg!18656 (regOne!37167 (h!76044 (exprs!7779 setElem!52949)))))) b!7169057))

(declare-fun b!7169061 () Bool)

(declare-fun e!4306264 () Bool)

(declare-fun tp!1985654 () Bool)

(declare-fun tp!1985655 () Bool)

(assert (=> b!7169061 (= e!4306264 (and tp!1985654 tp!1985655))))

(declare-fun b!7169060 () Bool)

(declare-fun tp!1985656 () Bool)

(assert (=> b!7169060 (= e!4306264 tp!1985656)))

(assert (=> b!7168434 (= tp!1985375 e!4306264)))

(declare-fun b!7169059 () Bool)

(declare-fun tp!1985658 () Bool)

(declare-fun tp!1985657 () Bool)

(assert (=> b!7169059 (= e!4306264 (and tp!1985658 tp!1985657))))

(declare-fun b!7169058 () Bool)

(assert (=> b!7169058 (= e!4306264 tp_is_empty!46225)))

(assert (= (and b!7168434 ((_ is ElementMatch!18327) (regOne!37166 (h!76044 (t!383739 (exprs!7779 setElem!52949)))))) b!7169058))

(assert (= (and b!7168434 ((_ is Concat!27172) (regOne!37166 (h!76044 (t!383739 (exprs!7779 setElem!52949)))))) b!7169059))

(assert (= (and b!7168434 ((_ is Star!18327) (regOne!37166 (h!76044 (t!383739 (exprs!7779 setElem!52949)))))) b!7169060))

(assert (= (and b!7168434 ((_ is Union!18327) (regOne!37166 (h!76044 (t!383739 (exprs!7779 setElem!52949)))))) b!7169061))

(declare-fun b!7169065 () Bool)

(declare-fun e!4306265 () Bool)

(declare-fun tp!1985659 () Bool)

(declare-fun tp!1985660 () Bool)

(assert (=> b!7169065 (= e!4306265 (and tp!1985659 tp!1985660))))

(declare-fun b!7169064 () Bool)

(declare-fun tp!1985661 () Bool)

(assert (=> b!7169064 (= e!4306265 tp!1985661)))

(assert (=> b!7168434 (= tp!1985374 e!4306265)))

(declare-fun b!7169063 () Bool)

(declare-fun tp!1985663 () Bool)

(declare-fun tp!1985662 () Bool)

(assert (=> b!7169063 (= e!4306265 (and tp!1985663 tp!1985662))))

(declare-fun b!7169062 () Bool)

(assert (=> b!7169062 (= e!4306265 tp_is_empty!46225)))

(assert (= (and b!7168434 ((_ is ElementMatch!18327) (regTwo!37166 (h!76044 (t!383739 (exprs!7779 setElem!52949)))))) b!7169062))

(assert (= (and b!7168434 ((_ is Concat!27172) (regTwo!37166 (h!76044 (t!383739 (exprs!7779 setElem!52949)))))) b!7169063))

(assert (= (and b!7168434 ((_ is Star!18327) (regTwo!37166 (h!76044 (t!383739 (exprs!7779 setElem!52949)))))) b!7169064))

(assert (= (and b!7168434 ((_ is Union!18327) (regTwo!37166 (h!76044 (t!383739 (exprs!7779 setElem!52949)))))) b!7169065))

(declare-fun b!7169066 () Bool)

(declare-fun e!4306266 () Bool)

(declare-fun tp!1985664 () Bool)

(declare-fun tp!1985665 () Bool)

(assert (=> b!7169066 (= e!4306266 (and tp!1985664 tp!1985665))))

(assert (=> b!7168428 (= tp!1985364 e!4306266)))

(assert (= (and b!7168428 ((_ is Cons!69596) (exprs!7779 setElem!52958))) b!7169066))

(declare-fun b!7169070 () Bool)

(declare-fun e!4306267 () Bool)

(declare-fun tp!1985666 () Bool)

(declare-fun tp!1985667 () Bool)

(assert (=> b!7169070 (= e!4306267 (and tp!1985666 tp!1985667))))

(declare-fun b!7169069 () Bool)

(declare-fun tp!1985668 () Bool)

(assert (=> b!7169069 (= e!4306267 tp!1985668)))

(assert (=> b!7168448 (= tp!1985390 e!4306267)))

(declare-fun b!7169068 () Bool)

(declare-fun tp!1985670 () Bool)

(declare-fun tp!1985669 () Bool)

(assert (=> b!7169068 (= e!4306267 (and tp!1985670 tp!1985669))))

(declare-fun b!7169067 () Bool)

(assert (=> b!7169067 (= e!4306267 tp_is_empty!46225)))

(assert (= (and b!7168448 ((_ is ElementMatch!18327) (regOne!37166 (regOne!37166 (h!76044 (exprs!7779 setElem!52949)))))) b!7169067))

(assert (= (and b!7168448 ((_ is Concat!27172) (regOne!37166 (regOne!37166 (h!76044 (exprs!7779 setElem!52949)))))) b!7169068))

(assert (= (and b!7168448 ((_ is Star!18327) (regOne!37166 (regOne!37166 (h!76044 (exprs!7779 setElem!52949)))))) b!7169069))

(assert (= (and b!7168448 ((_ is Union!18327) (regOne!37166 (regOne!37166 (h!76044 (exprs!7779 setElem!52949)))))) b!7169070))

(declare-fun b!7169076 () Bool)

(declare-fun e!4306270 () Bool)

(declare-fun tp!1985671 () Bool)

(declare-fun tp!1985672 () Bool)

(assert (=> b!7169076 (= e!4306270 (and tp!1985671 tp!1985672))))

(declare-fun b!7169075 () Bool)

(declare-fun tp!1985673 () Bool)

(assert (=> b!7169075 (= e!4306270 tp!1985673)))

(assert (=> b!7168448 (= tp!1985389 e!4306270)))

(declare-fun b!7169074 () Bool)

(declare-fun tp!1985675 () Bool)

(declare-fun tp!1985674 () Bool)

(assert (=> b!7169074 (= e!4306270 (and tp!1985675 tp!1985674))))

(declare-fun b!7169073 () Bool)

(assert (=> b!7169073 (= e!4306270 tp_is_empty!46225)))

(assert (= (and b!7168448 ((_ is ElementMatch!18327) (regTwo!37166 (regOne!37166 (h!76044 (exprs!7779 setElem!52949)))))) b!7169073))

(assert (= (and b!7168448 ((_ is Concat!27172) (regTwo!37166 (regOne!37166 (h!76044 (exprs!7779 setElem!52949)))))) b!7169074))

(assert (= (and b!7168448 ((_ is Star!18327) (regTwo!37166 (regOne!37166 (h!76044 (exprs!7779 setElem!52949)))))) b!7169075))

(assert (= (and b!7168448 ((_ is Union!18327) (regTwo!37166 (regOne!37166 (h!76044 (exprs!7779 setElem!52949)))))) b!7169076))

(declare-fun b!7169080 () Bool)

(declare-fun e!4306271 () Bool)

(declare-fun tp!1985676 () Bool)

(declare-fun tp!1985677 () Bool)

(assert (=> b!7169080 (= e!4306271 (and tp!1985676 tp!1985677))))

(declare-fun b!7169079 () Bool)

(declare-fun tp!1985678 () Bool)

(assert (=> b!7169079 (= e!4306271 tp!1985678)))

(assert (=> b!7168435 (= tp!1985373 e!4306271)))

(declare-fun b!7169078 () Bool)

(declare-fun tp!1985680 () Bool)

(declare-fun tp!1985679 () Bool)

(assert (=> b!7169078 (= e!4306271 (and tp!1985680 tp!1985679))))

(declare-fun b!7169077 () Bool)

(assert (=> b!7169077 (= e!4306271 tp_is_empty!46225)))

(assert (= (and b!7168435 ((_ is ElementMatch!18327) (reg!18656 (h!76044 (t!383739 (exprs!7779 setElem!52949)))))) b!7169077))

(assert (= (and b!7168435 ((_ is Concat!27172) (reg!18656 (h!76044 (t!383739 (exprs!7779 setElem!52949)))))) b!7169078))

(assert (= (and b!7168435 ((_ is Star!18327) (reg!18656 (h!76044 (t!383739 (exprs!7779 setElem!52949)))))) b!7169079))

(assert (= (and b!7168435 ((_ is Union!18327) (reg!18656 (h!76044 (t!383739 (exprs!7779 setElem!52949)))))) b!7169080))

(declare-fun condSetEmpty!52960 () Bool)

(assert (=> setNonEmpty!52958 (= condSetEmpty!52960 (= setRest!52958 ((as const (Array Context!14558 Bool)) false)))))

(declare-fun setRes!52960 () Bool)

(assert (=> setNonEmpty!52958 (= tp!1985365 setRes!52960)))

(declare-fun setIsEmpty!52960 () Bool)

(assert (=> setIsEmpty!52960 setRes!52960))

(declare-fun setNonEmpty!52960 () Bool)

(declare-fun setElem!52960 () Context!14558)

(declare-fun e!4306272 () Bool)

(declare-fun tp!1985682 () Bool)

(assert (=> setNonEmpty!52960 (= setRes!52960 (and tp!1985682 (inv!88839 setElem!52960) e!4306272))))

(declare-fun setRest!52960 () (InoxSet Context!14558))

(assert (=> setNonEmpty!52960 (= setRest!52958 ((_ map or) (store ((as const (Array Context!14558 Bool)) false) setElem!52960 true) setRest!52960))))

(declare-fun b!7169081 () Bool)

(declare-fun tp!1985681 () Bool)

(assert (=> b!7169081 (= e!4306272 tp!1985681)))

(assert (= (and setNonEmpty!52958 condSetEmpty!52960) setIsEmpty!52960))

(assert (= (and setNonEmpty!52958 (not condSetEmpty!52960)) setNonEmpty!52960))

(assert (= setNonEmpty!52960 b!7169081))

(declare-fun m!7871520 () Bool)

(assert (=> setNonEmpty!52960 m!7871520))

(declare-fun b_lambda!274013 () Bool)

(assert (= b_lambda!273995 (or d!2232846 b_lambda!274013)))

(declare-fun bs!1892925 () Bool)

(declare-fun d!2233204 () Bool)

(assert (= bs!1892925 (and d!2233204 d!2232846)))

(assert (=> bs!1892925 (= (dynLambda!28343 lambda!437054 (h!76044 (t!383739 (t!383739 (exprs!7779 setElem!52949))))) (validRegex!9452 (h!76044 (t!383739 (t!383739 (exprs!7779 setElem!52949))))))))

(declare-fun m!7871524 () Bool)

(assert (=> bs!1892925 m!7871524))

(assert (=> b!7168689 d!2233204))

(declare-fun b_lambda!274015 () Bool)

(assert (= b_lambda!274011 (or d!2232906 b_lambda!274015)))

(declare-fun bs!1892926 () Bool)

(declare-fun d!2233208 () Bool)

(assert (= bs!1892926 (and d!2233208 d!2232906)))

(assert (=> bs!1892926 (= (dynLambda!28343 lambda!437070 (h!76044 (exprs!7779 (h!76045 res!2921365)))) (validRegex!9452 (h!76044 (exprs!7779 (h!76045 res!2921365)))))))

(declare-fun m!7871526 () Bool)

(assert (=> bs!1892926 m!7871526))

(assert (=> b!7168901 d!2233208))

(declare-fun b_lambda!274017 () Bool)

(assert (= b_lambda!273999 (or d!2232966 b_lambda!274017)))

(declare-fun bs!1892927 () Bool)

(declare-fun d!2233210 () Bool)

(assert (= bs!1892927 (and d!2233210 d!2232966)))

(assert (=> bs!1892927 (= (dynLambda!28343 lambda!437077 (h!76044 lt!2570234)) (validRegex!9452 (h!76044 lt!2570234)))))

(declare-fun m!7871528 () Bool)

(assert (=> bs!1892927 m!7871528))

(assert (=> b!7168725 d!2233210))

(declare-fun b_lambda!274019 () Bool)

(assert (= b_lambda!273993 (or d!2232914 b_lambda!274019)))

(declare-fun bs!1892928 () Bool)

(declare-fun d!2233212 () Bool)

(assert (= bs!1892928 (and d!2233212 d!2232914)))

(assert (=> bs!1892928 (= (dynLambda!28343 lambda!437072 (h!76044 (unfocusZipperList!2311 (toList!11270 (store ((as const (Array Context!14558 Bool)) false) (Context!14559 (Cons!69596 EmptyExpr!18327 Nil!69596)) true))))) (validRegex!9452 (h!76044 (unfocusZipperList!2311 (toList!11270 (store ((as const (Array Context!14558 Bool)) false) (Context!14559 (Cons!69596 EmptyExpr!18327 Nil!69596)) true))))))))

(declare-fun m!7871530 () Bool)

(assert (=> bs!1892928 m!7871530))

(assert (=> b!7168687 d!2233212))

(declare-fun b_lambda!274021 () Bool)

(assert (= b_lambda!274003 (or d!2232964 b_lambda!274021)))

(declare-fun bs!1892929 () Bool)

(declare-fun d!2233214 () Bool)

(assert (= bs!1892929 (and d!2233214 d!2232964)))

(assert (=> bs!1892929 (= (dynLambda!28343 lambda!437076 (h!76044 (exprs!7779 (h!76045 (toList!11270 z!3530))))) (validRegex!9452 (h!76044 (exprs!7779 (h!76045 (toList!11270 z!3530))))))))

(declare-fun m!7871532 () Bool)

(assert (=> bs!1892929 m!7871532))

(assert (=> b!7168767 d!2233214))

(declare-fun b_lambda!274023 () Bool)

(assert (= b_lambda!274005 (or d!2232864 b_lambda!274023)))

(declare-fun bs!1892930 () Bool)

(declare-fun d!2233216 () Bool)

(assert (= bs!1892930 (and d!2233216 d!2232864)))

(assert (=> bs!1892930 (= (dynLambda!28343 lambda!437060 (h!76044 (t!383739 (unfocusZipperList!2311 (toList!11270 z!3530))))) (validRegex!9452 (h!76044 (t!383739 (unfocusZipperList!2311 (toList!11270 z!3530))))))))

(declare-fun m!7871534 () Bool)

(assert (=> bs!1892930 m!7871534))

(assert (=> b!7168815 d!2233216))

(declare-fun b_lambda!274025 () Bool)

(assert (= b_lambda!273991 (or d!2232904 b_lambda!274025)))

(declare-fun bs!1892931 () Bool)

(declare-fun d!2233218 () Bool)

(assert (= bs!1892931 (and d!2233218 d!2232904)))

(assert (=> bs!1892931 (= (dynLambda!28343 lambda!437069 (h!76044 (exprs!7779 setElem!52957))) (validRegex!9452 (h!76044 (exprs!7779 setElem!52957))))))

(declare-fun m!7871536 () Bool)

(assert (=> bs!1892931 m!7871536))

(assert (=> b!7168638 d!2233218))

(declare-fun b_lambda!274027 () Bool)

(assert (= b_lambda!274009 (or d!2232916 b_lambda!274027)))

(declare-fun bs!1892932 () Bool)

(declare-fun d!2233220 () Bool)

(assert (= bs!1892932 (and d!2233220 d!2232916)))

(assert (=> bs!1892932 (= (dynLambda!28343 lambda!437073 (h!76044 lt!2570227)) (validRegex!9452 (h!76044 lt!2570227)))))

(declare-fun m!7871540 () Bool)

(assert (=> bs!1892932 m!7871540))

(assert (=> b!7168899 d!2233220))

(declare-fun b_lambda!274029 () Bool)

(assert (= b_lambda!274007 (or d!2232868 b_lambda!274029)))

(declare-fun bs!1892933 () Bool)

(declare-fun d!2233222 () Bool)

(assert (= bs!1892933 (and d!2233222 d!2232868)))

(assert (=> bs!1892933 (= (dynLambda!28343 lambda!437066 (h!76044 (t!383739 lt!2570219))) (validRegex!9452 (h!76044 (t!383739 lt!2570219))))))

(declare-fun m!7871544 () Bool)

(assert (=> bs!1892933 m!7871544))

(assert (=> b!7168870 d!2233222))

(declare-fun b_lambda!274031 () Bool)

(assert (= b_lambda!274001 (or d!2232908 b_lambda!274031)))

(declare-fun bs!1892934 () Bool)

(declare-fun d!2233224 () Bool)

(assert (= bs!1892934 (and d!2233224 d!2232908)))

(assert (=> bs!1892934 (= (dynLambda!28343 lambda!437071 (h!76044 (t!383739 (unfocusZipperList!2311 (toList!11270 z!3530))))) (validRegex!9452 (h!76044 (t!383739 (unfocusZipperList!2311 (toList!11270 z!3530))))))))

(assert (=> bs!1892934 m!7871534))

(assert (=> b!7168736 d!2233224))

(declare-fun b_lambda!274033 () Bool)

(assert (= b_lambda!273997 (or d!2232890 b_lambda!274033)))

(declare-fun bs!1892935 () Bool)

(declare-fun d!2233228 () Bool)

(assert (= bs!1892935 (and d!2233228 d!2232890)))

(assert (=> bs!1892935 (= (dynLambda!28343 lambda!437068 (h!76044 (t!383739 (exprs!7779 setElem!52955)))) (validRegex!9452 (h!76044 (t!383739 (exprs!7779 setElem!52955)))))))

(declare-fun m!7871548 () Bool)

(assert (=> bs!1892935 m!7871548))

(assert (=> b!7168713 d!2233228))

(check-sat (not d!2233154) (not b!7168995) (not b!7169012) (not b!7168990) (not b_lambda!274027) (not bs!1892935) (not b!7168956) (not b!7168983) (not bm!653066) (not d!2233150) (not b!7168819) (not bm!653088) (not b!7168813) (not bs!1892931) (not b!7168972) (not b!7169011) (not b!7168693) (not b!7169041) (not b!7169031) (not b!7169000) (not bm!653049) (not bm!653061) (not b!7169044) (not d!2233082) (not b!7168810) (not b!7169007) (not b!7168711) (not b!7169049) (not b!7168695) (not bm!653063) (not b!7168992) (not bm!653051) (not b!7168965) (not b!7168724) (not b!7168999) (not b!7168998) (not b_lambda!274021) (not b!7168991) (not b!7168654) (not b!7169037) (not b!7168984) (not b!7169010) (not b!7168774) (not b_lambda!273973) (not b!7168645) (not bm!653085) (not b!7168934) (not bm!653036) (not bm!653045) (not b!7169078) (not b!7168827) (not b!7168698) (not b_lambda!274023) (not bm!653054) (not b!7168737) (not b_lambda!274029) (not b!7168954) (not b!7168672) (not b!7168962) (not b!7169039) (not b!7168785) (not bm!653081) (not bm!653084) (not b!7168703) (not d!2233060) (not b!7168650) (not b!7168649) (not bm!653070) (not bs!1892932) (not d!2233188) (not b!7168966) (not b!7169023) (not b!7168957) (not b!7168967) (not b!7168715) (not b!7169063) (not b!7168923) (not b!7168705) (not b!7168961) (not b!7169022) (not b!7168709) (not b!7168714) (not b!7168641) (not b!7168805) (not b_lambda!273969) (not b!7169032) (not b!7168953) (not b!7168745) (not b!7169014) (not b!7169003) (not b!7168922) (not b!7169016) (not b!7169002) (not b!7168812) (not b_lambda!274013) (not b!7168937) (not b!7169060) (not b!7168945) (not b!7168918) (not setNonEmpty!52960) (not b!7168814) (not b!7168917) (not b!7168677) (not bm!653034) (not bs!1892933) (not b!7168719) (not b!7168925) (not b!7168723) (not d!2233132) (not b!7168931) (not bm!653046) (not bs!1892930) (not b!7168947) (not b!7169048) (not b!7169051) (not b!7168648) (not b!7169052) (not b!7168933) (not bm!653040) (not bs!1892928) (not b!7169061) (not b!7168726) (not b!7168790) (not b!7168940) (not b!7168796) (not b!7168825) (not b!7168978) (not b!7169029) (not b!7168950) (not b!7168717) (not b_lambda!273971) (not b!7169008) (not b!7168739) (not d!2233104) (not b!7168970) (not b!7168994) (not b!7169027) (not b!7169015) (not b!7168710) (not b!7168930) (not d!2233062) (not b!7168871) (not b!7168935) (not b!7168789) (not bm!653042) (not b!7168929) (not d!2233070) (not b!7168877) (not b!7168821) (not bm!653048) (not b_lambda!274025) (not bm!653055) (not b!7168971) (not d!2233192) (not b!7168646) (not b!7168913) (not b!7168975) (not b!7168943) (not b!7169028) (not b!7168927) (not d!2233078) (not bs!1892927) (not b!7168915) (not b!7168996) (not b!7169047) (not bm!653078) (not b_lambda!273955) (not b!7169068) (not b!7169075) (not b_lambda!274031) (not b!7169064) (not bm!653043) (not b!7169056) (not bm!653082) (not b!7168655) (not b!7168663) (not d!2233088) (not b!7168974) (not b!7168699) (not b!7168768) (not b!7168845) (not b!7169081) (not b!7168732) (not b!7168820) (not b!7168942) (not d!2233056) (not b!7168939) (not b!7168692) (not b!7168908) (not b!7169045) (not b!7168988) (not bm!653079) (not b!7169006) (not b!7168964) (not b!7168697) (not b!7168809) (not bs!1892929) (not bm!653058) (not b!7168949) (not bm!653069) (not b!7169043) (not b_lambda!274015) (not b!7168818) (not b!7169055) (not b!7169074) (not b!7168643) (not b!7168704) (not b!7169053) (not bm!653076) (not b!7168968) (not b!7168707) (not b!7169018) tp_is_empty!46225 (not b!7168701) (not b!7168886) (not d!2233156) (not b!7169069) (not bm!653075) (not b!7168826) (not b!7169040) (not b!7168980) (not b!7169036) (not b!7168895) (not b!7168688) (not b!7168718) (not b!7168944) (not b_lambda!274017) (not b!7169024) (not b_lambda!274019) (not b!7168639) (not b!7168986) (not b!7169070) (not bm!653037) (not b!7168976) (not bm!653052) (not b!7168690) (not d!2233196) (not bm!653033) (not b!7168951) (not b!7168952) (not b!7168914) (not b!7168987) (not d!2233172) (not b!7169076) (not b!7169026) (not b!7168823) (not b!7169065) (not b!7168834) (not b!7168839) (not bs!1892925) (not b!7168721) (not bs!1892934) (not b!7168958) (not b!7169004) (not b_lambda!273967) (not b!7168779) (not b!7169080) (not bs!1892926) (not b!7168763) (not bm!653087) (not b!7168919) (not b!7168691) (not b!7168754) (not b_lambda!274033) (not b!7168938) (not b!7169035) (not d!2233144) (not bm!653067) (not b!7168656) (not d!2233080) (not d!2233052) (not b!7168900) (not b!7168683) (not b!7169019) (not b!7169033) (not b!7168921) (not bm!653064) (not b!7168926) (not b!7168979) (not b!7169079) (not b!7168811) (not bm!653039) (not b!7168902) (not b!7168946) (not b!7168816) (not b!7169059) (not b!7168652) (not bm!653060) (not b!7169020) (not b!7169066) (not bm!653057) (not b!7168960) (not b!7168982) (not b!7169057))
(check-sat)

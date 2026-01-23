; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!697788 () Bool)

(assert start!697788)

(declare-fun res!2918494 () Bool)

(declare-fun e!4299997 () Bool)

(assert (=> start!697788 (=> (not res!2918494) (not e!4299997))))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((C!36872 0))(
  ( (C!36873 (val!28384 Int)) )
))
(declare-datatypes ((Regex!18299 0))(
  ( (ElementMatch!18299 (c!1333849 C!36872)) (Concat!27144 (regOne!37110 Regex!18299) (regTwo!37110 Regex!18299)) (EmptyExpr!18299) (Star!18299 (reg!18628 Regex!18299)) (EmptyLang!18299) (Union!18299 (regOne!37111 Regex!18299) (regTwo!37111 Regex!18299)) )
))
(declare-datatypes ((List!69637 0))(
  ( (Nil!69513) (Cons!69513 (h!75961 Regex!18299) (t!383654 List!69637)) )
))
(declare-datatypes ((Context!14502 0))(
  ( (Context!14503 (exprs!7751 List!69637)) )
))
(declare-fun z!3530 () (InoxSet Context!14502))

(declare-datatypes ((List!69638 0))(
  ( (Nil!69514) (Cons!69514 (h!75962 Context!14502) (t!383655 List!69638)) )
))
(declare-fun unfocusZipper!2559 (List!69638) Regex!18299)

(declare-fun toList!11242 ((InoxSet Context!14502)) List!69638)

(assert (=> start!697788 (= res!2918494 (= (unfocusZipper!2559 (toList!11242 z!3530)) EmptyExpr!18299))))

(assert (=> start!697788 e!4299997))

(declare-fun condSetEmpty!52753 () Bool)

(assert (=> start!697788 (= condSetEmpty!52753 (= z!3530 ((as const (Array Context!14502 Bool)) false)))))

(declare-fun setRes!52753 () Bool)

(assert (=> start!697788 setRes!52753))

(declare-fun e!4299998 () Bool)

(assert (=> start!697788 e!4299998))

(declare-fun b!7157679 () Bool)

(declare-fun e!4299995 () Bool)

(assert (=> b!7157679 (= e!4299997 (not e!4299995))))

(declare-fun res!2918493 () Bool)

(assert (=> b!7157679 (=> res!2918493 e!4299995)))

(declare-datatypes ((List!69639 0))(
  ( (Nil!69515) (Cons!69515 (h!75963 C!36872) (t!383656 List!69639)) )
))
(declare-fun s!7967 () List!69639)

(declare-fun isEmpty!40149 (List!69639) Bool)

(assert (=> b!7157679 (= res!2918493 (isEmpty!40149 s!7967))))

(declare-fun lt!2569558 () Context!14502)

(declare-fun nullableContext!172 (Context!14502) Bool)

(assert (=> b!7157679 (nullableContext!172 lt!2569558)))

(assert (=> b!7157679 (= lt!2569558 (Context!14503 (Cons!69513 EmptyExpr!18299 Nil!69513)))))

(declare-fun b!7157680 () Bool)

(declare-fun e!4299996 () Bool)

(declare-fun lt!2569560 () (InoxSet Context!14502))

(assert (=> b!7157680 (= e!4299996 (not (= (toList!11242 lt!2569560) Nil!69514)))))

(declare-fun setIsEmpty!52753 () Bool)

(assert (=> setIsEmpty!52753 setRes!52753))

(declare-fun tp!1979380 () Bool)

(declare-fun setElem!52753 () Context!14502)

(declare-fun setNonEmpty!52753 () Bool)

(declare-fun e!4299994 () Bool)

(declare-fun inv!88769 (Context!14502) Bool)

(assert (=> setNonEmpty!52753 (= setRes!52753 (and tp!1979380 (inv!88769 setElem!52753) e!4299994))))

(declare-fun setRest!52753 () (InoxSet Context!14502))

(assert (=> setNonEmpty!52753 (= z!3530 ((_ map or) (store ((as const (Array Context!14502 Bool)) false) setElem!52753 true) setRest!52753))))

(declare-fun b!7157681 () Bool)

(declare-fun res!2918492 () Bool)

(assert (=> b!7157681 (=> (not res!2918492) (not e!4299997))))

(declare-fun focus!374 (Regex!18299) (InoxSet Context!14502))

(assert (=> b!7157681 (= res!2918492 (= z!3530 (focus!374 EmptyExpr!18299)))))

(declare-fun b!7157682 () Bool)

(declare-fun tp_is_empty!46171 () Bool)

(declare-fun tp!1979379 () Bool)

(assert (=> b!7157682 (= e!4299998 (and tp_is_empty!46171 tp!1979379))))

(declare-fun b!7157683 () Bool)

(declare-fun res!2918495 () Bool)

(assert (=> b!7157683 (=> res!2918495 e!4299996)))

(assert (=> b!7157683 (= res!2918495 (= lt!2569560 ((as const (Array Context!14502 Bool)) false)))))

(declare-fun b!7157684 () Bool)

(assert (=> b!7157684 (= e!4299995 e!4299996)))

(declare-fun res!2918491 () Bool)

(assert (=> b!7157684 (=> res!2918491 e!4299996)))

(declare-fun lt!2569559 () C!36872)

(declare-fun derivationStepZipperUp!2289 (Context!14502 C!36872) (InoxSet Context!14502))

(assert (=> b!7157684 (= res!2918491 (not (= (derivationStepZipperUp!2289 lt!2569558 lt!2569559) ((as const (Array Context!14502 Bool)) false))))))

(declare-fun derivationStepZipper!3184 ((InoxSet Context!14502) C!36872) (InoxSet Context!14502))

(assert (=> b!7157684 (= lt!2569560 (derivationStepZipper!3184 z!3530 lt!2569559))))

(declare-fun head!14579 (List!69639) C!36872)

(assert (=> b!7157684 (= lt!2569559 (head!14579 s!7967))))

(declare-fun b!7157685 () Bool)

(declare-fun tp!1979381 () Bool)

(assert (=> b!7157685 (= e!4299994 tp!1979381)))

(assert (= (and start!697788 res!2918494) b!7157681))

(assert (= (and b!7157681 res!2918492) b!7157679))

(assert (= (and b!7157679 (not res!2918493)) b!7157684))

(assert (= (and b!7157684 (not res!2918491)) b!7157683))

(assert (= (and b!7157683 (not res!2918495)) b!7157680))

(assert (= (and start!697788 condSetEmpty!52753) setIsEmpty!52753))

(assert (= (and start!697788 (not condSetEmpty!52753)) setNonEmpty!52753))

(assert (= setNonEmpty!52753 b!7157685))

(get-info :version)

(assert (= (and start!697788 ((_ is Cons!69515) s!7967)) b!7157682))

(declare-fun m!7864092 () Bool)

(assert (=> b!7157680 m!7864092))

(declare-fun m!7864094 () Bool)

(assert (=> start!697788 m!7864094))

(assert (=> start!697788 m!7864094))

(declare-fun m!7864096 () Bool)

(assert (=> start!697788 m!7864096))

(declare-fun m!7864098 () Bool)

(assert (=> b!7157681 m!7864098))

(declare-fun m!7864100 () Bool)

(assert (=> b!7157684 m!7864100))

(declare-fun m!7864102 () Bool)

(assert (=> b!7157684 m!7864102))

(declare-fun m!7864104 () Bool)

(assert (=> b!7157684 m!7864104))

(declare-fun m!7864106 () Bool)

(assert (=> b!7157679 m!7864106))

(declare-fun m!7864108 () Bool)

(assert (=> b!7157679 m!7864108))

(declare-fun m!7864110 () Bool)

(assert (=> setNonEmpty!52753 m!7864110))

(check-sat (not b!7157679) (not b!7157680) (not b!7157684) (not start!697788) (not setNonEmpty!52753) (not b!7157682) (not b!7157681) tp_is_empty!46171 (not b!7157685))
(check-sat)
(get-model)

(declare-fun d!2229986 () Bool)

(declare-fun lambda!436626 () Int)

(declare-fun forall!17134 (List!69637 Int) Bool)

(assert (=> d!2229986 (= (inv!88769 setElem!52753) (forall!17134 (exprs!7751 setElem!52753) lambda!436626))))

(declare-fun bs!1890126 () Bool)

(assert (= bs!1890126 d!2229986))

(declare-fun m!7864152 () Bool)

(assert (=> bs!1890126 m!7864152))

(assert (=> setNonEmpty!52753 d!2229986))

(declare-fun d!2230008 () Bool)

(declare-fun e!4300026 () Bool)

(assert (=> d!2230008 e!4300026))

(declare-fun res!2918509 () Bool)

(assert (=> d!2230008 (=> (not res!2918509) (not e!4300026))))

(declare-fun lt!2569570 () List!69638)

(declare-fun noDuplicate!2851 (List!69638) Bool)

(assert (=> d!2230008 (= res!2918509 (noDuplicate!2851 lt!2569570))))

(declare-fun choose!55315 ((InoxSet Context!14502)) List!69638)

(assert (=> d!2230008 (= lt!2569570 (choose!55315 lt!2569560))))

(assert (=> d!2230008 (= (toList!11242 lt!2569560) lt!2569570)))

(declare-fun b!7157727 () Bool)

(declare-fun content!14280 (List!69638) (InoxSet Context!14502))

(assert (=> b!7157727 (= e!4300026 (= (content!14280 lt!2569570) lt!2569560))))

(assert (= (and d!2230008 res!2918509) b!7157727))

(declare-fun m!7864154 () Bool)

(assert (=> d!2230008 m!7864154))

(declare-fun m!7864156 () Bool)

(assert (=> d!2230008 m!7864156))

(declare-fun m!7864158 () Bool)

(assert (=> b!7157727 m!7864158))

(assert (=> b!7157680 d!2230008))

(declare-fun b!7157738 () Bool)

(declare-fun call!651738 () (InoxSet Context!14502))

(declare-fun e!4300035 () (InoxSet Context!14502))

(assert (=> b!7157738 (= e!4300035 ((_ map or) call!651738 (derivationStepZipperUp!2289 (Context!14503 (t!383654 (exprs!7751 lt!2569558))) lt!2569559)))))

(declare-fun b!7157739 () Bool)

(declare-fun e!4300034 () (InoxSet Context!14502))

(assert (=> b!7157739 (= e!4300034 ((as const (Array Context!14502 Bool)) false))))

(declare-fun d!2230010 () Bool)

(declare-fun c!1333863 () Bool)

(declare-fun e!4300033 () Bool)

(assert (=> d!2230010 (= c!1333863 e!4300033)))

(declare-fun res!2918512 () Bool)

(assert (=> d!2230010 (=> (not res!2918512) (not e!4300033))))

(assert (=> d!2230010 (= res!2918512 ((_ is Cons!69513) (exprs!7751 lt!2569558)))))

(assert (=> d!2230010 (= (derivationStepZipperUp!2289 lt!2569558 lt!2569559) e!4300035)))

(declare-fun b!7157740 () Bool)

(declare-fun nullable!7744 (Regex!18299) Bool)

(assert (=> b!7157740 (= e!4300033 (nullable!7744 (h!75961 (exprs!7751 lt!2569558))))))

(declare-fun b!7157741 () Bool)

(assert (=> b!7157741 (= e!4300034 call!651738)))

(declare-fun b!7157742 () Bool)

(assert (=> b!7157742 (= e!4300035 e!4300034)))

(declare-fun c!1333864 () Bool)

(assert (=> b!7157742 (= c!1333864 ((_ is Cons!69513) (exprs!7751 lt!2569558)))))

(declare-fun bm!651733 () Bool)

(declare-fun derivationStepZipperDown!2486 (Regex!18299 Context!14502 C!36872) (InoxSet Context!14502))

(assert (=> bm!651733 (= call!651738 (derivationStepZipperDown!2486 (h!75961 (exprs!7751 lt!2569558)) (Context!14503 (t!383654 (exprs!7751 lt!2569558))) lt!2569559))))

(assert (= (and d!2230010 res!2918512) b!7157740))

(assert (= (and d!2230010 c!1333863) b!7157738))

(assert (= (and d!2230010 (not c!1333863)) b!7157742))

(assert (= (and b!7157742 c!1333864) b!7157741))

(assert (= (and b!7157742 (not c!1333864)) b!7157739))

(assert (= (or b!7157738 b!7157741) bm!651733))

(declare-fun m!7864160 () Bool)

(assert (=> b!7157738 m!7864160))

(declare-fun m!7864162 () Bool)

(assert (=> b!7157740 m!7864162))

(declare-fun m!7864164 () Bool)

(assert (=> bm!651733 m!7864164))

(assert (=> b!7157684 d!2230010))

(declare-fun d!2230012 () Bool)

(assert (=> d!2230012 true))

(declare-fun lambda!436629 () Int)

(declare-fun flatMap!2641 ((InoxSet Context!14502) Int) (InoxSet Context!14502))

(assert (=> d!2230012 (= (derivationStepZipper!3184 z!3530 lt!2569559) (flatMap!2641 z!3530 lambda!436629))))

(declare-fun bs!1890127 () Bool)

(assert (= bs!1890127 d!2230012))

(declare-fun m!7864166 () Bool)

(assert (=> bs!1890127 m!7864166))

(assert (=> b!7157684 d!2230012))

(declare-fun d!2230014 () Bool)

(assert (=> d!2230014 (= (head!14579 s!7967) (h!75963 s!7967))))

(assert (=> b!7157684 d!2230014))

(declare-fun d!2230016 () Bool)

(assert (=> d!2230016 (= (isEmpty!40149 s!7967) ((_ is Nil!69515) s!7967))))

(assert (=> b!7157679 d!2230016))

(declare-fun bs!1890128 () Bool)

(declare-fun d!2230018 () Bool)

(assert (= bs!1890128 (and d!2230018 d!2229986)))

(declare-fun lambda!436632 () Int)

(assert (=> bs!1890128 (not (= lambda!436632 lambda!436626))))

(assert (=> d!2230018 (= (nullableContext!172 lt!2569558) (forall!17134 (exprs!7751 lt!2569558) lambda!436632))))

(declare-fun bs!1890129 () Bool)

(assert (= bs!1890129 d!2230018))

(declare-fun m!7864168 () Bool)

(assert (=> bs!1890129 m!7864168))

(assert (=> b!7157679 d!2230018))

(declare-fun d!2230020 () Bool)

(declare-fun e!4300038 () Bool)

(assert (=> d!2230020 e!4300038))

(declare-fun res!2918516 () Bool)

(assert (=> d!2230020 (=> (not res!2918516) (not e!4300038))))

(declare-fun validRegex!9431 (Regex!18299) Bool)

(assert (=> d!2230020 (= res!2918516 (validRegex!9431 EmptyExpr!18299))))

(assert (=> d!2230020 (= (focus!374 EmptyExpr!18299) (store ((as const (Array Context!14502 Bool)) false) (Context!14503 (Cons!69513 EmptyExpr!18299 Nil!69513)) true))))

(declare-fun b!7157747 () Bool)

(assert (=> b!7157747 (= e!4300038 (= (unfocusZipper!2559 (toList!11242 (store ((as const (Array Context!14502 Bool)) false) (Context!14503 (Cons!69513 EmptyExpr!18299 Nil!69513)) true))) EmptyExpr!18299))))

(assert (= (and d!2230020 res!2918516) b!7157747))

(declare-fun m!7864170 () Bool)

(assert (=> d!2230020 m!7864170))

(declare-fun m!7864172 () Bool)

(assert (=> d!2230020 m!7864172))

(assert (=> b!7157747 m!7864172))

(assert (=> b!7157747 m!7864172))

(declare-fun m!7864174 () Bool)

(assert (=> b!7157747 m!7864174))

(assert (=> b!7157747 m!7864174))

(declare-fun m!7864176 () Bool)

(assert (=> b!7157747 m!7864176))

(assert (=> b!7157681 d!2230020))

(declare-fun d!2230022 () Bool)

(declare-fun lt!2569573 () Regex!18299)

(assert (=> d!2230022 (validRegex!9431 lt!2569573)))

(declare-fun generalisedUnion!2734 (List!69637) Regex!18299)

(declare-fun unfocusZipperList!2290 (List!69638) List!69637)

(assert (=> d!2230022 (= lt!2569573 (generalisedUnion!2734 (unfocusZipperList!2290 (toList!11242 z!3530))))))

(assert (=> d!2230022 (= (unfocusZipper!2559 (toList!11242 z!3530)) lt!2569573)))

(declare-fun bs!1890130 () Bool)

(assert (= bs!1890130 d!2230022))

(declare-fun m!7864178 () Bool)

(assert (=> bs!1890130 m!7864178))

(assert (=> bs!1890130 m!7864094))

(declare-fun m!7864180 () Bool)

(assert (=> bs!1890130 m!7864180))

(assert (=> bs!1890130 m!7864180))

(declare-fun m!7864182 () Bool)

(assert (=> bs!1890130 m!7864182))

(assert (=> start!697788 d!2230022))

(declare-fun d!2230024 () Bool)

(declare-fun e!4300039 () Bool)

(assert (=> d!2230024 e!4300039))

(declare-fun res!2918517 () Bool)

(assert (=> d!2230024 (=> (not res!2918517) (not e!4300039))))

(declare-fun lt!2569574 () List!69638)

(assert (=> d!2230024 (= res!2918517 (noDuplicate!2851 lt!2569574))))

(assert (=> d!2230024 (= lt!2569574 (choose!55315 z!3530))))

(assert (=> d!2230024 (= (toList!11242 z!3530) lt!2569574)))

(declare-fun b!7157748 () Bool)

(assert (=> b!7157748 (= e!4300039 (= (content!14280 lt!2569574) z!3530))))

(assert (= (and d!2230024 res!2918517) b!7157748))

(declare-fun m!7864184 () Bool)

(assert (=> d!2230024 m!7864184))

(declare-fun m!7864186 () Bool)

(assert (=> d!2230024 m!7864186))

(declare-fun m!7864188 () Bool)

(assert (=> b!7157748 m!7864188))

(assert (=> start!697788 d!2230024))

(declare-fun b!7157753 () Bool)

(declare-fun e!4300042 () Bool)

(declare-fun tp!1979401 () Bool)

(declare-fun tp!1979402 () Bool)

(assert (=> b!7157753 (= e!4300042 (and tp!1979401 tp!1979402))))

(assert (=> b!7157685 (= tp!1979381 e!4300042)))

(assert (= (and b!7157685 ((_ is Cons!69513) (exprs!7751 setElem!52753))) b!7157753))

(declare-fun condSetEmpty!52759 () Bool)

(assert (=> setNonEmpty!52753 (= condSetEmpty!52759 (= setRest!52753 ((as const (Array Context!14502 Bool)) false)))))

(declare-fun setRes!52759 () Bool)

(assert (=> setNonEmpty!52753 (= tp!1979380 setRes!52759)))

(declare-fun setIsEmpty!52759 () Bool)

(assert (=> setIsEmpty!52759 setRes!52759))

(declare-fun setElem!52759 () Context!14502)

(declare-fun e!4300045 () Bool)

(declare-fun setNonEmpty!52759 () Bool)

(declare-fun tp!1979407 () Bool)

(assert (=> setNonEmpty!52759 (= setRes!52759 (and tp!1979407 (inv!88769 setElem!52759) e!4300045))))

(declare-fun setRest!52759 () (InoxSet Context!14502))

(assert (=> setNonEmpty!52759 (= setRest!52753 ((_ map or) (store ((as const (Array Context!14502 Bool)) false) setElem!52759 true) setRest!52759))))

(declare-fun b!7157758 () Bool)

(declare-fun tp!1979408 () Bool)

(assert (=> b!7157758 (= e!4300045 tp!1979408)))

(assert (= (and setNonEmpty!52753 condSetEmpty!52759) setIsEmpty!52759))

(assert (= (and setNonEmpty!52753 (not condSetEmpty!52759)) setNonEmpty!52759))

(assert (= setNonEmpty!52759 b!7157758))

(declare-fun m!7864190 () Bool)

(assert (=> setNonEmpty!52759 m!7864190))

(declare-fun b!7157763 () Bool)

(declare-fun e!4300048 () Bool)

(declare-fun tp!1979411 () Bool)

(assert (=> b!7157763 (= e!4300048 (and tp_is_empty!46171 tp!1979411))))

(assert (=> b!7157682 (= tp!1979379 e!4300048)))

(assert (= (and b!7157682 ((_ is Cons!69515) (t!383656 s!7967))) b!7157763))

(check-sat (not d!2230020) (not d!2230012) (not d!2230008) (not d!2230022) (not b!7157758) (not b!7157748) (not setNonEmpty!52759) (not b!7157753) (not d!2230018) (not b!7157740) (not d!2229986) tp_is_empty!46171 (not b!7157763) (not b!7157727) (not b!7157747) (not b!7157738) (not bm!651733) (not d!2230024))
(check-sat)
(get-model)

(declare-fun d!2230048 () Bool)

(declare-fun c!1333908 () Bool)

(assert (=> d!2230048 (= c!1333908 ((_ is Nil!69514) lt!2569570))))

(declare-fun e!4300140 () (InoxSet Context!14502))

(assert (=> d!2230048 (= (content!14280 lt!2569570) e!4300140)))

(declare-fun b!7157895 () Bool)

(assert (=> b!7157895 (= e!4300140 ((as const (Array Context!14502 Bool)) false))))

(declare-fun b!7157896 () Bool)

(assert (=> b!7157896 (= e!4300140 ((_ map or) (store ((as const (Array Context!14502 Bool)) false) (h!75962 lt!2569570) true) (content!14280 (t!383655 lt!2569570))))))

(assert (= (and d!2230048 c!1333908) b!7157895))

(assert (= (and d!2230048 (not c!1333908)) b!7157896))

(declare-fun m!7864270 () Bool)

(assert (=> b!7157896 m!7864270))

(declare-fun m!7864272 () Bool)

(assert (=> b!7157896 m!7864272))

(assert (=> b!7157727 d!2230048))

(declare-fun d!2230058 () Bool)

(assert (=> d!2230058 (= (validRegex!9431 EmptyExpr!18299) true)))

(assert (=> d!2230020 d!2230058))

(declare-fun d!2230060 () Bool)

(declare-fun c!1333911 () Bool)

(assert (=> d!2230060 (= c!1333911 ((_ is Nil!69514) lt!2569574))))

(declare-fun e!4300143 () (InoxSet Context!14502))

(assert (=> d!2230060 (= (content!14280 lt!2569574) e!4300143)))

(declare-fun b!7157901 () Bool)

(assert (=> b!7157901 (= e!4300143 ((as const (Array Context!14502 Bool)) false))))

(declare-fun b!7157902 () Bool)

(assert (=> b!7157902 (= e!4300143 ((_ map or) (store ((as const (Array Context!14502 Bool)) false) (h!75962 lt!2569574) true) (content!14280 (t!383655 lt!2569574))))))

(assert (= (and d!2230060 c!1333911) b!7157901))

(assert (= (and d!2230060 (not c!1333911)) b!7157902))

(declare-fun m!7864274 () Bool)

(assert (=> b!7157902 m!7864274))

(declare-fun m!7864276 () Bool)

(assert (=> b!7157902 m!7864276))

(assert (=> b!7157748 d!2230060))

(declare-fun b!7157946 () Bool)

(declare-fun e!4300171 () Bool)

(declare-fun e!4300170 () Bool)

(assert (=> b!7157946 (= e!4300171 e!4300170)))

(declare-fun c!1333919 () Bool)

(assert (=> b!7157946 (= c!1333919 ((_ is Star!18299) lt!2569573))))

(declare-fun bm!651768 () Bool)

(declare-fun call!651773 () Bool)

(declare-fun c!1333918 () Bool)

(assert (=> bm!651768 (= call!651773 (validRegex!9431 (ite c!1333918 (regOne!37111 lt!2569573) (regOne!37110 lt!2569573))))))

(declare-fun b!7157947 () Bool)

(declare-fun e!4300175 () Bool)

(assert (=> b!7157947 (= e!4300170 e!4300175)))

(assert (=> b!7157947 (= c!1333918 ((_ is Union!18299) lt!2569573))))

(declare-fun b!7157948 () Bool)

(declare-fun e!4300174 () Bool)

(assert (=> b!7157948 (= e!4300170 e!4300174)))

(declare-fun res!2918581 () Bool)

(assert (=> b!7157948 (= res!2918581 (not (nullable!7744 (reg!18628 lt!2569573))))))

(assert (=> b!7157948 (=> (not res!2918581) (not e!4300174))))

(declare-fun b!7157949 () Bool)

(declare-fun res!2918578 () Bool)

(declare-fun e!4300173 () Bool)

(assert (=> b!7157949 (=> res!2918578 e!4300173)))

(assert (=> b!7157949 (= res!2918578 (not ((_ is Concat!27144) lt!2569573)))))

(assert (=> b!7157949 (= e!4300175 e!4300173)))

(declare-fun b!7157951 () Bool)

(declare-fun e!4300172 () Bool)

(assert (=> b!7157951 (= e!4300173 e!4300172)))

(declare-fun res!2918579 () Bool)

(assert (=> b!7157951 (=> (not res!2918579) (not e!4300172))))

(assert (=> b!7157951 (= res!2918579 call!651773)))

(declare-fun b!7157952 () Bool)

(declare-fun call!651774 () Bool)

(assert (=> b!7157952 (= e!4300172 call!651774)))

(declare-fun bm!651769 () Bool)

(declare-fun call!651775 () Bool)

(assert (=> bm!651769 (= call!651774 call!651775)))

(declare-fun b!7157953 () Bool)

(declare-fun e!4300176 () Bool)

(assert (=> b!7157953 (= e!4300176 call!651774)))

(declare-fun d!2230062 () Bool)

(declare-fun res!2918582 () Bool)

(assert (=> d!2230062 (=> res!2918582 e!4300171)))

(assert (=> d!2230062 (= res!2918582 ((_ is ElementMatch!18299) lt!2569573))))

(assert (=> d!2230062 (= (validRegex!9431 lt!2569573) e!4300171)))

(declare-fun b!7157950 () Bool)

(declare-fun res!2918580 () Bool)

(assert (=> b!7157950 (=> (not res!2918580) (not e!4300176))))

(assert (=> b!7157950 (= res!2918580 call!651773)))

(assert (=> b!7157950 (= e!4300175 e!4300176)))

(declare-fun bm!651770 () Bool)

(assert (=> bm!651770 (= call!651775 (validRegex!9431 (ite c!1333919 (reg!18628 lt!2569573) (ite c!1333918 (regTwo!37111 lt!2569573) (regTwo!37110 lt!2569573)))))))

(declare-fun b!7157954 () Bool)

(assert (=> b!7157954 (= e!4300174 call!651775)))

(assert (= (and d!2230062 (not res!2918582)) b!7157946))

(assert (= (and b!7157946 c!1333919) b!7157948))

(assert (= (and b!7157946 (not c!1333919)) b!7157947))

(assert (= (and b!7157948 res!2918581) b!7157954))

(assert (= (and b!7157947 c!1333918) b!7157950))

(assert (= (and b!7157947 (not c!1333918)) b!7157949))

(assert (= (and b!7157950 res!2918580) b!7157953))

(assert (= (and b!7157949 (not res!2918578)) b!7157951))

(assert (= (and b!7157951 res!2918579) b!7157952))

(assert (= (or b!7157950 b!7157951) bm!651768))

(assert (= (or b!7157953 b!7157952) bm!651769))

(assert (= (or b!7157954 bm!651769) bm!651770))

(declare-fun m!7864306 () Bool)

(assert (=> bm!651768 m!7864306))

(declare-fun m!7864308 () Bool)

(assert (=> b!7157948 m!7864308))

(declare-fun m!7864310 () Bool)

(assert (=> bm!651770 m!7864310))

(assert (=> d!2230022 d!2230062))

(declare-fun bs!1890146 () Bool)

(declare-fun d!2230076 () Bool)

(assert (= bs!1890146 (and d!2230076 d!2229986)))

(declare-fun lambda!436642 () Int)

(assert (=> bs!1890146 (= lambda!436642 lambda!436626)))

(declare-fun bs!1890147 () Bool)

(assert (= bs!1890147 (and d!2230076 d!2230018)))

(assert (=> bs!1890147 (not (= lambda!436642 lambda!436632))))

(declare-fun b!7157975 () Bool)

(declare-fun e!4300193 () Bool)

(declare-fun lt!2569585 () Regex!18299)

(declare-fun head!14581 (List!69637) Regex!18299)

(assert (=> b!7157975 (= e!4300193 (= lt!2569585 (head!14581 (unfocusZipperList!2290 (toList!11242 z!3530)))))))

(declare-fun e!4300190 () Bool)

(assert (=> d!2230076 e!4300190))

(declare-fun res!2918587 () Bool)

(assert (=> d!2230076 (=> (not res!2918587) (not e!4300190))))

(assert (=> d!2230076 (= res!2918587 (validRegex!9431 lt!2569585))))

(declare-fun e!4300189 () Regex!18299)

(assert (=> d!2230076 (= lt!2569585 e!4300189)))

(declare-fun c!1333929 () Bool)

(declare-fun e!4300192 () Bool)

(assert (=> d!2230076 (= c!1333929 e!4300192)))

(declare-fun res!2918588 () Bool)

(assert (=> d!2230076 (=> (not res!2918588) (not e!4300192))))

(assert (=> d!2230076 (= res!2918588 ((_ is Cons!69513) (unfocusZipperList!2290 (toList!11242 z!3530))))))

(assert (=> d!2230076 (forall!17134 (unfocusZipperList!2290 (toList!11242 z!3530)) lambda!436642)))

(assert (=> d!2230076 (= (generalisedUnion!2734 (unfocusZipperList!2290 (toList!11242 z!3530))) lt!2569585)))

(declare-fun b!7157976 () Bool)

(declare-fun isUnion!1559 (Regex!18299) Bool)

(assert (=> b!7157976 (= e!4300193 (isUnion!1559 lt!2569585))))

(declare-fun b!7157977 () Bool)

(declare-fun e!4300194 () Regex!18299)

(assert (=> b!7157977 (= e!4300189 e!4300194)))

(declare-fun c!1333930 () Bool)

(assert (=> b!7157977 (= c!1333930 ((_ is Cons!69513) (unfocusZipperList!2290 (toList!11242 z!3530))))))

(declare-fun b!7157978 () Bool)

(assert (=> b!7157978 (= e!4300194 EmptyLang!18299)))

(declare-fun b!7157979 () Bool)

(declare-fun e!4300191 () Bool)

(assert (=> b!7157979 (= e!4300190 e!4300191)))

(declare-fun c!1333931 () Bool)

(declare-fun isEmpty!40151 (List!69637) Bool)

(assert (=> b!7157979 (= c!1333931 (isEmpty!40151 (unfocusZipperList!2290 (toList!11242 z!3530))))))

(declare-fun b!7157980 () Bool)

(assert (=> b!7157980 (= e!4300191 e!4300193)))

(declare-fun c!1333928 () Bool)

(declare-fun tail!14047 (List!69637) List!69637)

(assert (=> b!7157980 (= c!1333928 (isEmpty!40151 (tail!14047 (unfocusZipperList!2290 (toList!11242 z!3530)))))))

(declare-fun b!7157981 () Bool)

(assert (=> b!7157981 (= e!4300192 (isEmpty!40151 (t!383654 (unfocusZipperList!2290 (toList!11242 z!3530)))))))

(declare-fun b!7157982 () Bool)

(assert (=> b!7157982 (= e!4300189 (h!75961 (unfocusZipperList!2290 (toList!11242 z!3530))))))

(declare-fun b!7157983 () Bool)

(declare-fun isEmptyLang!2131 (Regex!18299) Bool)

(assert (=> b!7157983 (= e!4300191 (isEmptyLang!2131 lt!2569585))))

(declare-fun b!7157984 () Bool)

(assert (=> b!7157984 (= e!4300194 (Union!18299 (h!75961 (unfocusZipperList!2290 (toList!11242 z!3530))) (generalisedUnion!2734 (t!383654 (unfocusZipperList!2290 (toList!11242 z!3530))))))))

(assert (= (and d!2230076 res!2918588) b!7157981))

(assert (= (and d!2230076 c!1333929) b!7157982))

(assert (= (and d!2230076 (not c!1333929)) b!7157977))

(assert (= (and b!7157977 c!1333930) b!7157984))

(assert (= (and b!7157977 (not c!1333930)) b!7157978))

(assert (= (and d!2230076 res!2918587) b!7157979))

(assert (= (and b!7157979 c!1333931) b!7157983))

(assert (= (and b!7157979 (not c!1333931)) b!7157980))

(assert (= (and b!7157980 c!1333928) b!7157975))

(assert (= (and b!7157980 (not c!1333928)) b!7157976))

(declare-fun m!7864312 () Bool)

(assert (=> b!7157976 m!7864312))

(declare-fun m!7864314 () Bool)

(assert (=> b!7157984 m!7864314))

(declare-fun m!7864316 () Bool)

(assert (=> d!2230076 m!7864316))

(assert (=> d!2230076 m!7864180))

(declare-fun m!7864318 () Bool)

(assert (=> d!2230076 m!7864318))

(declare-fun m!7864320 () Bool)

(assert (=> b!7157983 m!7864320))

(declare-fun m!7864322 () Bool)

(assert (=> b!7157981 m!7864322))

(assert (=> b!7157975 m!7864180))

(declare-fun m!7864324 () Bool)

(assert (=> b!7157975 m!7864324))

(assert (=> b!7157979 m!7864180))

(declare-fun m!7864326 () Bool)

(assert (=> b!7157979 m!7864326))

(assert (=> b!7157980 m!7864180))

(declare-fun m!7864328 () Bool)

(assert (=> b!7157980 m!7864328))

(assert (=> b!7157980 m!7864328))

(declare-fun m!7864330 () Bool)

(assert (=> b!7157980 m!7864330))

(assert (=> d!2230022 d!2230076))

(declare-fun bs!1890148 () Bool)

(declare-fun d!2230078 () Bool)

(assert (= bs!1890148 (and d!2230078 d!2229986)))

(declare-fun lambda!436645 () Int)

(assert (=> bs!1890148 (= lambda!436645 lambda!436626)))

(declare-fun bs!1890149 () Bool)

(assert (= bs!1890149 (and d!2230078 d!2230018)))

(assert (=> bs!1890149 (not (= lambda!436645 lambda!436632))))

(declare-fun bs!1890150 () Bool)

(assert (= bs!1890150 (and d!2230078 d!2230076)))

(assert (=> bs!1890150 (= lambda!436645 lambda!436642)))

(declare-fun lt!2569588 () List!69637)

(assert (=> d!2230078 (forall!17134 lt!2569588 lambda!436645)))

(declare-fun e!4300197 () List!69637)

(assert (=> d!2230078 (= lt!2569588 e!4300197)))

(declare-fun c!1333934 () Bool)

(assert (=> d!2230078 (= c!1333934 ((_ is Cons!69514) (toList!11242 z!3530)))))

(assert (=> d!2230078 (= (unfocusZipperList!2290 (toList!11242 z!3530)) lt!2569588)))

(declare-fun b!7157989 () Bool)

(declare-fun generalisedConcat!2442 (List!69637) Regex!18299)

(assert (=> b!7157989 (= e!4300197 (Cons!69513 (generalisedConcat!2442 (exprs!7751 (h!75962 (toList!11242 z!3530)))) (unfocusZipperList!2290 (t!383655 (toList!11242 z!3530)))))))

(declare-fun b!7157990 () Bool)

(assert (=> b!7157990 (= e!4300197 Nil!69513)))

(assert (= (and d!2230078 c!1333934) b!7157989))

(assert (= (and d!2230078 (not c!1333934)) b!7157990))

(declare-fun m!7864332 () Bool)

(assert (=> d!2230078 m!7864332))

(declare-fun m!7864334 () Bool)

(assert (=> b!7157989 m!7864334))

(declare-fun m!7864336 () Bool)

(assert (=> b!7157989 m!7864336))

(assert (=> d!2230022 d!2230078))

(declare-fun b!7158013 () Bool)

(declare-fun e!4300212 () (InoxSet Context!14502))

(declare-fun call!651788 () (InoxSet Context!14502))

(declare-fun call!651789 () (InoxSet Context!14502))

(assert (=> b!7158013 (= e!4300212 ((_ map or) call!651788 call!651789))))

(declare-fun b!7158014 () Bool)

(declare-fun e!4300210 () (InoxSet Context!14502))

(assert (=> b!7158014 (= e!4300210 e!4300212)))

(declare-fun c!1333949 () Bool)

(assert (=> b!7158014 (= c!1333949 ((_ is Union!18299) (h!75961 (exprs!7751 lt!2569558))))))

(declare-fun b!7158015 () Bool)

(declare-fun c!1333946 () Bool)

(declare-fun e!4300211 () Bool)

(assert (=> b!7158015 (= c!1333946 e!4300211)))

(declare-fun res!2918591 () Bool)

(assert (=> b!7158015 (=> (not res!2918591) (not e!4300211))))

(assert (=> b!7158015 (= res!2918591 ((_ is Concat!27144) (h!75961 (exprs!7751 lt!2569558))))))

(declare-fun e!4300214 () (InoxSet Context!14502))

(assert (=> b!7158015 (= e!4300212 e!4300214)))

(declare-fun b!7158016 () Bool)

(declare-fun e!4300215 () (InoxSet Context!14502))

(declare-fun call!651793 () (InoxSet Context!14502))

(assert (=> b!7158016 (= e!4300215 call!651793)))

(declare-fun bm!651783 () Bool)

(declare-fun call!651791 () List!69637)

(declare-fun call!651790 () List!69637)

(assert (=> bm!651783 (= call!651791 call!651790)))

(declare-fun b!7158017 () Bool)

(declare-fun c!1333945 () Bool)

(assert (=> b!7158017 (= c!1333945 ((_ is Star!18299) (h!75961 (exprs!7751 lt!2569558))))))

(declare-fun e!4300213 () (InoxSet Context!14502))

(assert (=> b!7158017 (= e!4300213 e!4300215)))

(declare-fun bm!651784 () Bool)

(assert (=> bm!651784 (= call!651789 (derivationStepZipperDown!2486 (ite c!1333949 (regTwo!37111 (h!75961 (exprs!7751 lt!2569558))) (regOne!37110 (h!75961 (exprs!7751 lt!2569558)))) (ite c!1333949 (Context!14503 (t!383654 (exprs!7751 lt!2569558))) (Context!14503 call!651790)) lt!2569559))))

(declare-fun b!7158018 () Bool)

(assert (=> b!7158018 (= e!4300213 call!651793)))

(declare-fun d!2230080 () Bool)

(declare-fun c!1333947 () Bool)

(assert (=> d!2230080 (= c!1333947 (and ((_ is ElementMatch!18299) (h!75961 (exprs!7751 lt!2569558))) (= (c!1333849 (h!75961 (exprs!7751 lt!2569558))) lt!2569559)))))

(assert (=> d!2230080 (= (derivationStepZipperDown!2486 (h!75961 (exprs!7751 lt!2569558)) (Context!14503 (t!383654 (exprs!7751 lt!2569558))) lt!2569559) e!4300210)))

(declare-fun bm!651785 () Bool)

(declare-fun call!651792 () (InoxSet Context!14502))

(assert (=> bm!651785 (= call!651792 call!651788)))

(declare-fun bm!651786 () Bool)

(declare-fun c!1333948 () Bool)

(declare-fun $colon$colon!2831 (List!69637 Regex!18299) List!69637)

(assert (=> bm!651786 (= call!651790 ($colon$colon!2831 (exprs!7751 (Context!14503 (t!383654 (exprs!7751 lt!2569558)))) (ite (or c!1333946 c!1333948) (regTwo!37110 (h!75961 (exprs!7751 lt!2569558))) (h!75961 (exprs!7751 lt!2569558)))))))

(declare-fun bm!651787 () Bool)

(assert (=> bm!651787 (= call!651793 call!651792)))

(declare-fun b!7158019 () Bool)

(assert (=> b!7158019 (= e!4300214 ((_ map or) call!651789 call!651792))))

(declare-fun b!7158020 () Bool)

(assert (=> b!7158020 (= e!4300215 ((as const (Array Context!14502 Bool)) false))))

(declare-fun b!7158021 () Bool)

(assert (=> b!7158021 (= e!4300211 (nullable!7744 (regOne!37110 (h!75961 (exprs!7751 lt!2569558)))))))

(declare-fun b!7158022 () Bool)

(assert (=> b!7158022 (= e!4300210 (store ((as const (Array Context!14502 Bool)) false) (Context!14503 (t!383654 (exprs!7751 lt!2569558))) true))))

(declare-fun b!7158023 () Bool)

(assert (=> b!7158023 (= e!4300214 e!4300213)))

(assert (=> b!7158023 (= c!1333948 ((_ is Concat!27144) (h!75961 (exprs!7751 lt!2569558))))))

(declare-fun bm!651788 () Bool)

(assert (=> bm!651788 (= call!651788 (derivationStepZipperDown!2486 (ite c!1333949 (regOne!37111 (h!75961 (exprs!7751 lt!2569558))) (ite c!1333946 (regTwo!37110 (h!75961 (exprs!7751 lt!2569558))) (ite c!1333948 (regOne!37110 (h!75961 (exprs!7751 lt!2569558))) (reg!18628 (h!75961 (exprs!7751 lt!2569558)))))) (ite (or c!1333949 c!1333946) (Context!14503 (t!383654 (exprs!7751 lt!2569558))) (Context!14503 call!651791)) lt!2569559))))

(assert (= (and d!2230080 c!1333947) b!7158022))

(assert (= (and d!2230080 (not c!1333947)) b!7158014))

(assert (= (and b!7158014 c!1333949) b!7158013))

(assert (= (and b!7158014 (not c!1333949)) b!7158015))

(assert (= (and b!7158015 res!2918591) b!7158021))

(assert (= (and b!7158015 c!1333946) b!7158019))

(assert (= (and b!7158015 (not c!1333946)) b!7158023))

(assert (= (and b!7158023 c!1333948) b!7158018))

(assert (= (and b!7158023 (not c!1333948)) b!7158017))

(assert (= (and b!7158017 c!1333945) b!7158016))

(assert (= (and b!7158017 (not c!1333945)) b!7158020))

(assert (= (or b!7158018 b!7158016) bm!651783))

(assert (= (or b!7158018 b!7158016) bm!651787))

(assert (= (or b!7158019 bm!651787) bm!651785))

(assert (= (or b!7158019 bm!651783) bm!651786))

(assert (= (or b!7158013 b!7158019) bm!651784))

(assert (= (or b!7158013 bm!651785) bm!651788))

(declare-fun m!7864338 () Bool)

(assert (=> bm!651784 m!7864338))

(declare-fun m!7864340 () Bool)

(assert (=> b!7158022 m!7864340))

(declare-fun m!7864342 () Bool)

(assert (=> b!7158021 m!7864342))

(declare-fun m!7864344 () Bool)

(assert (=> bm!651788 m!7864344))

(declare-fun m!7864346 () Bool)

(assert (=> bm!651786 m!7864346))

(assert (=> bm!651733 d!2230080))

(declare-fun d!2230082 () Bool)

(declare-fun lt!2569589 () Regex!18299)

(assert (=> d!2230082 (validRegex!9431 lt!2569589)))

(assert (=> d!2230082 (= lt!2569589 (generalisedUnion!2734 (unfocusZipperList!2290 (toList!11242 (store ((as const (Array Context!14502 Bool)) false) (Context!14503 (Cons!69513 EmptyExpr!18299 Nil!69513)) true)))))))

(assert (=> d!2230082 (= (unfocusZipper!2559 (toList!11242 (store ((as const (Array Context!14502 Bool)) false) (Context!14503 (Cons!69513 EmptyExpr!18299 Nil!69513)) true))) lt!2569589)))

(declare-fun bs!1890151 () Bool)

(assert (= bs!1890151 d!2230082))

(declare-fun m!7864348 () Bool)

(assert (=> bs!1890151 m!7864348))

(assert (=> bs!1890151 m!7864174))

(declare-fun m!7864350 () Bool)

(assert (=> bs!1890151 m!7864350))

(assert (=> bs!1890151 m!7864350))

(declare-fun m!7864352 () Bool)

(assert (=> bs!1890151 m!7864352))

(assert (=> b!7157747 d!2230082))

(declare-fun d!2230084 () Bool)

(declare-fun e!4300216 () Bool)

(assert (=> d!2230084 e!4300216))

(declare-fun res!2918592 () Bool)

(assert (=> d!2230084 (=> (not res!2918592) (not e!4300216))))

(declare-fun lt!2569590 () List!69638)

(assert (=> d!2230084 (= res!2918592 (noDuplicate!2851 lt!2569590))))

(assert (=> d!2230084 (= lt!2569590 (choose!55315 (store ((as const (Array Context!14502 Bool)) false) (Context!14503 (Cons!69513 EmptyExpr!18299 Nil!69513)) true)))))

(assert (=> d!2230084 (= (toList!11242 (store ((as const (Array Context!14502 Bool)) false) (Context!14503 (Cons!69513 EmptyExpr!18299 Nil!69513)) true)) lt!2569590)))

(declare-fun b!7158024 () Bool)

(assert (=> b!7158024 (= e!4300216 (= (content!14280 lt!2569590) (store ((as const (Array Context!14502 Bool)) false) (Context!14503 (Cons!69513 EmptyExpr!18299 Nil!69513)) true)))))

(assert (= (and d!2230084 res!2918592) b!7158024))

(declare-fun m!7864354 () Bool)

(assert (=> d!2230084 m!7864354))

(assert (=> d!2230084 m!7864172))

(declare-fun m!7864356 () Bool)

(assert (=> d!2230084 m!7864356))

(declare-fun m!7864358 () Bool)

(assert (=> b!7158024 m!7864358))

(assert (=> b!7157747 d!2230084))

(declare-fun bs!1890152 () Bool)

(declare-fun d!2230086 () Bool)

(assert (= bs!1890152 (and d!2230086 d!2229986)))

(declare-fun lambda!436646 () Int)

(assert (=> bs!1890152 (= lambda!436646 lambda!436626)))

(declare-fun bs!1890153 () Bool)

(assert (= bs!1890153 (and d!2230086 d!2230018)))

(assert (=> bs!1890153 (not (= lambda!436646 lambda!436632))))

(declare-fun bs!1890154 () Bool)

(assert (= bs!1890154 (and d!2230086 d!2230076)))

(assert (=> bs!1890154 (= lambda!436646 lambda!436642)))

(declare-fun bs!1890155 () Bool)

(assert (= bs!1890155 (and d!2230086 d!2230078)))

(assert (=> bs!1890155 (= lambda!436646 lambda!436645)))

(assert (=> d!2230086 (= (inv!88769 setElem!52759) (forall!17134 (exprs!7751 setElem!52759) lambda!436646))))

(declare-fun bs!1890156 () Bool)

(assert (= bs!1890156 d!2230086))

(declare-fun m!7864360 () Bool)

(assert (=> bs!1890156 m!7864360))

(assert (=> setNonEmpty!52759 d!2230086))

(declare-fun d!2230088 () Bool)

(declare-fun res!2918597 () Bool)

(declare-fun e!4300221 () Bool)

(assert (=> d!2230088 (=> res!2918597 e!4300221)))

(assert (=> d!2230088 (= res!2918597 ((_ is Nil!69514) lt!2569570))))

(assert (=> d!2230088 (= (noDuplicate!2851 lt!2569570) e!4300221)))

(declare-fun b!7158029 () Bool)

(declare-fun e!4300222 () Bool)

(assert (=> b!7158029 (= e!4300221 e!4300222)))

(declare-fun res!2918598 () Bool)

(assert (=> b!7158029 (=> (not res!2918598) (not e!4300222))))

(declare-fun contains!20699 (List!69638 Context!14502) Bool)

(assert (=> b!7158029 (= res!2918598 (not (contains!20699 (t!383655 lt!2569570) (h!75962 lt!2569570))))))

(declare-fun b!7158030 () Bool)

(assert (=> b!7158030 (= e!4300222 (noDuplicate!2851 (t!383655 lt!2569570)))))

(assert (= (and d!2230088 (not res!2918597)) b!7158029))

(assert (= (and b!7158029 res!2918598) b!7158030))

(declare-fun m!7864362 () Bool)

(assert (=> b!7158029 m!7864362))

(declare-fun m!7864364 () Bool)

(assert (=> b!7158030 m!7864364))

(assert (=> d!2230008 d!2230088))

(declare-fun d!2230090 () Bool)

(declare-fun e!4300230 () Bool)

(assert (=> d!2230090 e!4300230))

(declare-fun res!2918603 () Bool)

(assert (=> d!2230090 (=> (not res!2918603) (not e!4300230))))

(declare-fun res!2918604 () List!69638)

(assert (=> d!2230090 (= res!2918603 (noDuplicate!2851 res!2918604))))

(declare-fun e!4300231 () Bool)

(assert (=> d!2230090 e!4300231))

(assert (=> d!2230090 (= (choose!55315 lt!2569560) res!2918604)))

(declare-fun b!7158038 () Bool)

(declare-fun e!4300229 () Bool)

(declare-fun tp!1979446 () Bool)

(assert (=> b!7158038 (= e!4300229 tp!1979446)))

(declare-fun tp!1979447 () Bool)

(declare-fun b!7158037 () Bool)

(assert (=> b!7158037 (= e!4300231 (and (inv!88769 (h!75962 res!2918604)) e!4300229 tp!1979447))))

(declare-fun b!7158039 () Bool)

(assert (=> b!7158039 (= e!4300230 (= (content!14280 res!2918604) lt!2569560))))

(assert (= b!7158037 b!7158038))

(assert (= (and d!2230090 ((_ is Cons!69514) res!2918604)) b!7158037))

(assert (= (and d!2230090 res!2918603) b!7158039))

(declare-fun m!7864366 () Bool)

(assert (=> d!2230090 m!7864366))

(declare-fun m!7864368 () Bool)

(assert (=> b!7158037 m!7864368))

(declare-fun m!7864370 () Bool)

(assert (=> b!7158039 m!7864370))

(assert (=> d!2230008 d!2230090))

(declare-fun call!651794 () (InoxSet Context!14502))

(declare-fun e!4300234 () (InoxSet Context!14502))

(declare-fun b!7158040 () Bool)

(assert (=> b!7158040 (= e!4300234 ((_ map or) call!651794 (derivationStepZipperUp!2289 (Context!14503 (t!383654 (exprs!7751 (Context!14503 (t!383654 (exprs!7751 lt!2569558)))))) lt!2569559)))))

(declare-fun b!7158041 () Bool)

(declare-fun e!4300233 () (InoxSet Context!14502))

(assert (=> b!7158041 (= e!4300233 ((as const (Array Context!14502 Bool)) false))))

(declare-fun d!2230092 () Bool)

(declare-fun c!1333950 () Bool)

(declare-fun e!4300232 () Bool)

(assert (=> d!2230092 (= c!1333950 e!4300232)))

(declare-fun res!2918605 () Bool)

(assert (=> d!2230092 (=> (not res!2918605) (not e!4300232))))

(assert (=> d!2230092 (= res!2918605 ((_ is Cons!69513) (exprs!7751 (Context!14503 (t!383654 (exprs!7751 lt!2569558))))))))

(assert (=> d!2230092 (= (derivationStepZipperUp!2289 (Context!14503 (t!383654 (exprs!7751 lt!2569558))) lt!2569559) e!4300234)))

(declare-fun b!7158042 () Bool)

(assert (=> b!7158042 (= e!4300232 (nullable!7744 (h!75961 (exprs!7751 (Context!14503 (t!383654 (exprs!7751 lt!2569558)))))))))

(declare-fun b!7158043 () Bool)

(assert (=> b!7158043 (= e!4300233 call!651794)))

(declare-fun b!7158044 () Bool)

(assert (=> b!7158044 (= e!4300234 e!4300233)))

(declare-fun c!1333951 () Bool)

(assert (=> b!7158044 (= c!1333951 ((_ is Cons!69513) (exprs!7751 (Context!14503 (t!383654 (exprs!7751 lt!2569558))))))))

(declare-fun bm!651789 () Bool)

(assert (=> bm!651789 (= call!651794 (derivationStepZipperDown!2486 (h!75961 (exprs!7751 (Context!14503 (t!383654 (exprs!7751 lt!2569558))))) (Context!14503 (t!383654 (exprs!7751 (Context!14503 (t!383654 (exprs!7751 lt!2569558)))))) lt!2569559))))

(assert (= (and d!2230092 res!2918605) b!7158042))

(assert (= (and d!2230092 c!1333950) b!7158040))

(assert (= (and d!2230092 (not c!1333950)) b!7158044))

(assert (= (and b!7158044 c!1333951) b!7158043))

(assert (= (and b!7158044 (not c!1333951)) b!7158041))

(assert (= (or b!7158040 b!7158043) bm!651789))

(declare-fun m!7864372 () Bool)

(assert (=> b!7158040 m!7864372))

(declare-fun m!7864374 () Bool)

(assert (=> b!7158042 m!7864374))

(declare-fun m!7864376 () Bool)

(assert (=> bm!651789 m!7864376))

(assert (=> b!7157738 d!2230092))

(declare-fun d!2230094 () Bool)

(declare-fun res!2918606 () Bool)

(declare-fun e!4300235 () Bool)

(assert (=> d!2230094 (=> res!2918606 e!4300235)))

(assert (=> d!2230094 (= res!2918606 ((_ is Nil!69514) lt!2569574))))

(assert (=> d!2230094 (= (noDuplicate!2851 lt!2569574) e!4300235)))

(declare-fun b!7158045 () Bool)

(declare-fun e!4300236 () Bool)

(assert (=> b!7158045 (= e!4300235 e!4300236)))

(declare-fun res!2918607 () Bool)

(assert (=> b!7158045 (=> (not res!2918607) (not e!4300236))))

(assert (=> b!7158045 (= res!2918607 (not (contains!20699 (t!383655 lt!2569574) (h!75962 lt!2569574))))))

(declare-fun b!7158046 () Bool)

(assert (=> b!7158046 (= e!4300236 (noDuplicate!2851 (t!383655 lt!2569574)))))

(assert (= (and d!2230094 (not res!2918606)) b!7158045))

(assert (= (and b!7158045 res!2918607) b!7158046))

(declare-fun m!7864378 () Bool)

(assert (=> b!7158045 m!7864378))

(declare-fun m!7864380 () Bool)

(assert (=> b!7158046 m!7864380))

(assert (=> d!2230024 d!2230094))

(declare-fun d!2230096 () Bool)

(declare-fun e!4300238 () Bool)

(assert (=> d!2230096 e!4300238))

(declare-fun res!2918608 () Bool)

(assert (=> d!2230096 (=> (not res!2918608) (not e!4300238))))

(declare-fun res!2918609 () List!69638)

(assert (=> d!2230096 (= res!2918608 (noDuplicate!2851 res!2918609))))

(declare-fun e!4300239 () Bool)

(assert (=> d!2230096 e!4300239))

(assert (=> d!2230096 (= (choose!55315 z!3530) res!2918609)))

(declare-fun b!7158048 () Bool)

(declare-fun e!4300237 () Bool)

(declare-fun tp!1979448 () Bool)

(assert (=> b!7158048 (= e!4300237 tp!1979448)))

(declare-fun b!7158047 () Bool)

(declare-fun tp!1979449 () Bool)

(assert (=> b!7158047 (= e!4300239 (and (inv!88769 (h!75962 res!2918609)) e!4300237 tp!1979449))))

(declare-fun b!7158049 () Bool)

(assert (=> b!7158049 (= e!4300238 (= (content!14280 res!2918609) z!3530))))

(assert (= b!7158047 b!7158048))

(assert (= (and d!2230096 ((_ is Cons!69514) res!2918609)) b!7158047))

(assert (= (and d!2230096 res!2918608) b!7158049))

(declare-fun m!7864382 () Bool)

(assert (=> d!2230096 m!7864382))

(declare-fun m!7864384 () Bool)

(assert (=> b!7158047 m!7864384))

(declare-fun m!7864386 () Bool)

(assert (=> b!7158049 m!7864386))

(assert (=> d!2230024 d!2230096))

(declare-fun d!2230098 () Bool)

(declare-fun res!2918614 () Bool)

(declare-fun e!4300244 () Bool)

(assert (=> d!2230098 (=> res!2918614 e!4300244)))

(assert (=> d!2230098 (= res!2918614 ((_ is Nil!69513) (exprs!7751 lt!2569558)))))

(assert (=> d!2230098 (= (forall!17134 (exprs!7751 lt!2569558) lambda!436632) e!4300244)))

(declare-fun b!7158054 () Bool)

(declare-fun e!4300245 () Bool)

(assert (=> b!7158054 (= e!4300244 e!4300245)))

(declare-fun res!2918615 () Bool)

(assert (=> b!7158054 (=> (not res!2918615) (not e!4300245))))

(declare-fun dynLambda!28316 (Int Regex!18299) Bool)

(assert (=> b!7158054 (= res!2918615 (dynLambda!28316 lambda!436632 (h!75961 (exprs!7751 lt!2569558))))))

(declare-fun b!7158055 () Bool)

(assert (=> b!7158055 (= e!4300245 (forall!17134 (t!383654 (exprs!7751 lt!2569558)) lambda!436632))))

(assert (= (and d!2230098 (not res!2918614)) b!7158054))

(assert (= (and b!7158054 res!2918615) b!7158055))

(declare-fun b_lambda!273379 () Bool)

(assert (=> (not b_lambda!273379) (not b!7158054)))

(declare-fun m!7864388 () Bool)

(assert (=> b!7158054 m!7864388))

(declare-fun m!7864390 () Bool)

(assert (=> b!7158055 m!7864390))

(assert (=> d!2230018 d!2230098))

(declare-fun d!2230100 () Bool)

(declare-fun res!2918616 () Bool)

(declare-fun e!4300246 () Bool)

(assert (=> d!2230100 (=> res!2918616 e!4300246)))

(assert (=> d!2230100 (= res!2918616 ((_ is Nil!69513) (exprs!7751 setElem!52753)))))

(assert (=> d!2230100 (= (forall!17134 (exprs!7751 setElem!52753) lambda!436626) e!4300246)))

(declare-fun b!7158056 () Bool)

(declare-fun e!4300247 () Bool)

(assert (=> b!7158056 (= e!4300246 e!4300247)))

(declare-fun res!2918617 () Bool)

(assert (=> b!7158056 (=> (not res!2918617) (not e!4300247))))

(assert (=> b!7158056 (= res!2918617 (dynLambda!28316 lambda!436626 (h!75961 (exprs!7751 setElem!52753))))))

(declare-fun b!7158057 () Bool)

(assert (=> b!7158057 (= e!4300247 (forall!17134 (t!383654 (exprs!7751 setElem!52753)) lambda!436626))))

(assert (= (and d!2230100 (not res!2918616)) b!7158056))

(assert (= (and b!7158056 res!2918617) b!7158057))

(declare-fun b_lambda!273381 () Bool)

(assert (=> (not b_lambda!273381) (not b!7158056)))

(declare-fun m!7864392 () Bool)

(assert (=> b!7158056 m!7864392))

(declare-fun m!7864394 () Bool)

(assert (=> b!7158057 m!7864394))

(assert (=> d!2229986 d!2230100))

(declare-fun d!2230102 () Bool)

(declare-fun choose!55317 ((InoxSet Context!14502) Int) (InoxSet Context!14502))

(assert (=> d!2230102 (= (flatMap!2641 z!3530 lambda!436629) (choose!55317 z!3530 lambda!436629))))

(declare-fun bs!1890157 () Bool)

(assert (= bs!1890157 d!2230102))

(declare-fun m!7864396 () Bool)

(assert (=> bs!1890157 m!7864396))

(assert (=> d!2230012 d!2230102))

(declare-fun d!2230104 () Bool)

(declare-fun nullableFct!3022 (Regex!18299) Bool)

(assert (=> d!2230104 (= (nullable!7744 (h!75961 (exprs!7751 lt!2569558))) (nullableFct!3022 (h!75961 (exprs!7751 lt!2569558))))))

(declare-fun bs!1890158 () Bool)

(assert (= bs!1890158 d!2230104))

(declare-fun m!7864398 () Bool)

(assert (=> bs!1890158 m!7864398))

(assert (=> b!7157740 d!2230104))

(declare-fun condSetEmpty!52761 () Bool)

(assert (=> setNonEmpty!52759 (= condSetEmpty!52761 (= setRest!52759 ((as const (Array Context!14502 Bool)) false)))))

(declare-fun setRes!52761 () Bool)

(assert (=> setNonEmpty!52759 (= tp!1979407 setRes!52761)))

(declare-fun setIsEmpty!52761 () Bool)

(assert (=> setIsEmpty!52761 setRes!52761))

(declare-fun tp!1979450 () Bool)

(declare-fun setElem!52761 () Context!14502)

(declare-fun e!4300248 () Bool)

(declare-fun setNonEmpty!52761 () Bool)

(assert (=> setNonEmpty!52761 (= setRes!52761 (and tp!1979450 (inv!88769 setElem!52761) e!4300248))))

(declare-fun setRest!52761 () (InoxSet Context!14502))

(assert (=> setNonEmpty!52761 (= setRest!52759 ((_ map or) (store ((as const (Array Context!14502 Bool)) false) setElem!52761 true) setRest!52761))))

(declare-fun b!7158058 () Bool)

(declare-fun tp!1979451 () Bool)

(assert (=> b!7158058 (= e!4300248 tp!1979451)))

(assert (= (and setNonEmpty!52759 condSetEmpty!52761) setIsEmpty!52761))

(assert (= (and setNonEmpty!52759 (not condSetEmpty!52761)) setNonEmpty!52761))

(assert (= setNonEmpty!52761 b!7158058))

(declare-fun m!7864400 () Bool)

(assert (=> setNonEmpty!52761 m!7864400))

(declare-fun b!7158059 () Bool)

(declare-fun e!4300249 () Bool)

(declare-fun tp!1979452 () Bool)

(assert (=> b!7158059 (= e!4300249 (and tp_is_empty!46171 tp!1979452))))

(assert (=> b!7157763 (= tp!1979411 e!4300249)))

(assert (= (and b!7157763 ((_ is Cons!69515) (t!383656 (t!383656 s!7967)))) b!7158059))

(declare-fun b!7158060 () Bool)

(declare-fun e!4300250 () Bool)

(declare-fun tp!1979453 () Bool)

(declare-fun tp!1979454 () Bool)

(assert (=> b!7158060 (= e!4300250 (and tp!1979453 tp!1979454))))

(assert (=> b!7157758 (= tp!1979408 e!4300250)))

(assert (= (and b!7157758 ((_ is Cons!69513) (exprs!7751 setElem!52759))) b!7158060))

(declare-fun b!7158074 () Bool)

(declare-fun e!4300253 () Bool)

(declare-fun tp!1979467 () Bool)

(declare-fun tp!1979466 () Bool)

(assert (=> b!7158074 (= e!4300253 (and tp!1979467 tp!1979466))))

(declare-fun b!7158071 () Bool)

(assert (=> b!7158071 (= e!4300253 tp_is_empty!46171)))

(assert (=> b!7157753 (= tp!1979401 e!4300253)))

(declare-fun b!7158072 () Bool)

(declare-fun tp!1979465 () Bool)

(declare-fun tp!1979469 () Bool)

(assert (=> b!7158072 (= e!4300253 (and tp!1979465 tp!1979469))))

(declare-fun b!7158073 () Bool)

(declare-fun tp!1979468 () Bool)

(assert (=> b!7158073 (= e!4300253 tp!1979468)))

(assert (= (and b!7157753 ((_ is ElementMatch!18299) (h!75961 (exprs!7751 setElem!52753)))) b!7158071))

(assert (= (and b!7157753 ((_ is Concat!27144) (h!75961 (exprs!7751 setElem!52753)))) b!7158072))

(assert (= (and b!7157753 ((_ is Star!18299) (h!75961 (exprs!7751 setElem!52753)))) b!7158073))

(assert (= (and b!7157753 ((_ is Union!18299) (h!75961 (exprs!7751 setElem!52753)))) b!7158074))

(declare-fun b!7158075 () Bool)

(declare-fun e!4300254 () Bool)

(declare-fun tp!1979470 () Bool)

(declare-fun tp!1979471 () Bool)

(assert (=> b!7158075 (= e!4300254 (and tp!1979470 tp!1979471))))

(assert (=> b!7157753 (= tp!1979402 e!4300254)))

(assert (= (and b!7157753 ((_ is Cons!69513) (t!383654 (exprs!7751 setElem!52753)))) b!7158075))

(declare-fun b_lambda!273383 () Bool)

(assert (= b_lambda!273379 (or d!2230018 b_lambda!273383)))

(declare-fun bs!1890159 () Bool)

(declare-fun d!2230106 () Bool)

(assert (= bs!1890159 (and d!2230106 d!2230018)))

(assert (=> bs!1890159 (= (dynLambda!28316 lambda!436632 (h!75961 (exprs!7751 lt!2569558))) (nullable!7744 (h!75961 (exprs!7751 lt!2569558))))))

(assert (=> bs!1890159 m!7864162))

(assert (=> b!7158054 d!2230106))

(declare-fun b_lambda!273385 () Bool)

(assert (= b_lambda!273381 (or d!2229986 b_lambda!273385)))

(declare-fun bs!1890160 () Bool)

(declare-fun d!2230108 () Bool)

(assert (= bs!1890160 (and d!2230108 d!2229986)))

(assert (=> bs!1890160 (= (dynLambda!28316 lambda!436626 (h!75961 (exprs!7751 setElem!52753))) (validRegex!9431 (h!75961 (exprs!7751 setElem!52753))))))

(declare-fun m!7864402 () Bool)

(assert (=> bs!1890160 m!7864402))

(assert (=> b!7158056 d!2230108))

(check-sat (not b!7158030) (not d!2230078) (not b!7158057) (not b!7158046) (not bm!651786) (not b!7157948) tp_is_empty!46171 (not d!2230104) (not b!7158048) (not b!7157983) (not b!7158075) (not b!7158045) (not b!7157981) (not d!2230084) (not setNonEmpty!52761) (not b!7158040) (not d!2230082) (not b!7158074) (not b!7157979) (not d!2230076) (not bm!651784) (not d!2230102) (not b!7157980) (not b!7158039) (not b!7158060) (not b!7157896) (not b!7158029) (not b!7158059) (not d!2230086) (not b!7158049) (not b!7157989) (not b!7158042) (not b!7158072) (not b!7157975) (not b!7157902) (not bs!1890160) (not b!7158037) (not bm!651770) (not d!2230096) (not bm!651768) (not b!7158047) (not b_lambda!273385) (not b_lambda!273383) (not b!7157984) (not b!7158055) (not d!2230090) (not b!7158058) (not bs!1890159) (not b!7158021) (not b!7158073) (not bm!651789) (not b!7157976) (not b!7158038) (not b!7158024) (not bm!651788))
(check-sat)

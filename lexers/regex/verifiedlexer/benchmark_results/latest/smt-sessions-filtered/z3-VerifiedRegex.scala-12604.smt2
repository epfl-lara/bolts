; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!698142 () Bool)

(assert start!698142)

(declare-fun b!7159299 () Bool)

(declare-fun e!4301061 () Bool)

(declare-fun e!4301062 () Bool)

(assert (=> b!7159299 (= e!4301061 (not e!4301062))))

(declare-fun res!2919113 () Bool)

(assert (=> b!7159299 (=> res!2919113 e!4301062)))

(declare-datatypes ((C!36908 0))(
  ( (C!36909 (val!28402 Int)) )
))
(declare-datatypes ((List!69691 0))(
  ( (Nil!69567) (Cons!69567 (h!76015 C!36908) (t!383708 List!69691)) )
))
(declare-fun s!7967 () List!69691)

(declare-fun isEmpty!40171 (List!69691) Bool)

(assert (=> b!7159299 (= res!2919113 (isEmpty!40171 s!7967))))

(declare-datatypes ((Regex!18317 0))(
  ( (ElementMatch!18317 (c!1334161 C!36908)) (Concat!27162 (regOne!37146 Regex!18317) (regTwo!37146 Regex!18317)) (EmptyExpr!18317) (Star!18317 (reg!18646 Regex!18317)) (EmptyLang!18317) (Union!18317 (regOne!37147 Regex!18317) (regTwo!37147 Regex!18317)) )
))
(declare-datatypes ((List!69692 0))(
  ( (Nil!69568) (Cons!69568 (h!76016 Regex!18317) (t!383709 List!69692)) )
))
(declare-datatypes ((Context!14538 0))(
  ( (Context!14539 (exprs!7769 List!69692)) )
))
(declare-fun lt!2569868 () Context!14538)

(declare-fun nullableContext!180 (Context!14538) Bool)

(assert (=> b!7159299 (nullableContext!180 lt!2569868)))

(assert (=> b!7159299 (= lt!2569868 (Context!14539 (Cons!69568 EmptyExpr!18317 Nil!69568)))))

(declare-fun b!7159300 () Bool)

(declare-fun e!4301063 () Bool)

(declare-fun tp_is_empty!46207 () Bool)

(declare-fun tp!1979904 () Bool)

(assert (=> b!7159300 (= e!4301063 (and tp_is_empty!46207 tp!1979904))))

(declare-fun tp!1979905 () Bool)

(declare-fun setRes!52853 () Bool)

(declare-fun e!4301064 () Bool)

(declare-fun setNonEmpty!52853 () Bool)

(declare-fun setElem!52853 () Context!14538)

(declare-fun inv!88814 (Context!14538) Bool)

(assert (=> setNonEmpty!52853 (= setRes!52853 (and tp!1979905 (inv!88814 setElem!52853) e!4301064))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun z!3530 () (InoxSet Context!14538))

(declare-fun setRest!52853 () (InoxSet Context!14538))

(assert (=> setNonEmpty!52853 (= z!3530 ((_ map or) (store ((as const (Array Context!14538 Bool)) false) setElem!52853 true) setRest!52853))))

(declare-fun b!7159302 () Bool)

(declare-fun res!2919112 () Bool)

(assert (=> b!7159302 (=> (not res!2919112) (not e!4301061))))

(declare-fun focus!392 (Regex!18317) (InoxSet Context!14538))

(assert (=> b!7159302 (= res!2919112 (= z!3530 (focus!392 EmptyExpr!18317)))))

(declare-fun b!7159303 () Bool)

(declare-fun derivationStepZipperUp!2305 (Context!14538 C!36908) (InoxSet Context!14538))

(declare-fun head!14607 (List!69691) C!36908)

(assert (=> b!7159303 (= e!4301062 (= (derivationStepZipperUp!2305 lt!2569868 (head!14607 s!7967)) ((as const (Array Context!14538 Bool)) false)))))

(declare-fun setIsEmpty!52853 () Bool)

(assert (=> setIsEmpty!52853 setRes!52853))

(declare-fun b!7159301 () Bool)

(declare-fun tp!1979903 () Bool)

(assert (=> b!7159301 (= e!4301064 tp!1979903)))

(declare-fun res!2919111 () Bool)

(assert (=> start!698142 (=> (not res!2919111) (not e!4301061))))

(declare-datatypes ((List!69693 0))(
  ( (Nil!69569) (Cons!69569 (h!76017 Context!14538) (t!383710 List!69693)) )
))
(declare-fun unfocusZipper!2577 (List!69693) Regex!18317)

(declare-fun toList!11260 ((InoxSet Context!14538)) List!69693)

(assert (=> start!698142 (= res!2919111 (= (unfocusZipper!2577 (toList!11260 z!3530)) EmptyExpr!18317))))

(assert (=> start!698142 e!4301061))

(declare-fun condSetEmpty!52853 () Bool)

(assert (=> start!698142 (= condSetEmpty!52853 (= z!3530 ((as const (Array Context!14538 Bool)) false)))))

(assert (=> start!698142 setRes!52853))

(assert (=> start!698142 e!4301063))

(assert (= (and start!698142 res!2919111) b!7159302))

(assert (= (and b!7159302 res!2919112) b!7159299))

(assert (= (and b!7159299 (not res!2919113)) b!7159303))

(assert (= (and start!698142 condSetEmpty!52853) setIsEmpty!52853))

(assert (= (and start!698142 (not condSetEmpty!52853)) setNonEmpty!52853))

(assert (= setNonEmpty!52853 b!7159301))

(get-info :version)

(assert (= (and start!698142 ((_ is Cons!69567) s!7967)) b!7159300))

(declare-fun m!7865426 () Bool)

(assert (=> b!7159299 m!7865426))

(declare-fun m!7865428 () Bool)

(assert (=> b!7159299 m!7865428))

(declare-fun m!7865430 () Bool)

(assert (=> start!698142 m!7865430))

(assert (=> start!698142 m!7865430))

(declare-fun m!7865432 () Bool)

(assert (=> start!698142 m!7865432))

(declare-fun m!7865434 () Bool)

(assert (=> setNonEmpty!52853 m!7865434))

(declare-fun m!7865436 () Bool)

(assert (=> b!7159303 m!7865436))

(assert (=> b!7159303 m!7865436))

(declare-fun m!7865438 () Bool)

(assert (=> b!7159303 m!7865438))

(declare-fun m!7865440 () Bool)

(assert (=> b!7159302 m!7865440))

(check-sat (not b!7159299) tp_is_empty!46207 (not b!7159300) (not b!7159303) (not start!698142) (not b!7159301) (not b!7159302) (not setNonEmpty!52853))
(check-sat)
(get-model)

(declare-fun d!2230427 () Bool)

(declare-fun lambda!436786 () Int)

(declare-fun forall!17146 (List!69692 Int) Bool)

(assert (=> d!2230427 (= (inv!88814 setElem!52853) (forall!17146 (exprs!7769 setElem!52853) lambda!436786))))

(declare-fun bs!1890262 () Bool)

(assert (= bs!1890262 d!2230427))

(declare-fun m!7865474 () Bool)

(assert (=> bs!1890262 m!7865474))

(assert (=> setNonEmpty!52853 d!2230427))

(declare-fun d!2230441 () Bool)

(declare-fun lt!2569877 () Regex!18317)

(declare-fun validRegex!9443 (Regex!18317) Bool)

(assert (=> d!2230441 (validRegex!9443 lt!2569877)))

(declare-fun generalisedUnion!2746 (List!69692) Regex!18317)

(declare-fun unfocusZipperList!2302 (List!69693) List!69692)

(assert (=> d!2230441 (= lt!2569877 (generalisedUnion!2746 (unfocusZipperList!2302 (toList!11260 z!3530))))))

(assert (=> d!2230441 (= (unfocusZipper!2577 (toList!11260 z!3530)) lt!2569877)))

(declare-fun bs!1890263 () Bool)

(assert (= bs!1890263 d!2230441))

(declare-fun m!7865476 () Bool)

(assert (=> bs!1890263 m!7865476))

(assert (=> bs!1890263 m!7865430))

(declare-fun m!7865478 () Bool)

(assert (=> bs!1890263 m!7865478))

(assert (=> bs!1890263 m!7865478))

(declare-fun m!7865480 () Bool)

(assert (=> bs!1890263 m!7865480))

(assert (=> start!698142 d!2230441))

(declare-fun d!2230443 () Bool)

(declare-fun e!4301091 () Bool)

(assert (=> d!2230443 e!4301091))

(declare-fun res!2919126 () Bool)

(assert (=> d!2230443 (=> (not res!2919126) (not e!4301091))))

(declare-fun lt!2569880 () List!69693)

(declare-fun noDuplicate!2862 (List!69693) Bool)

(assert (=> d!2230443 (= res!2919126 (noDuplicate!2862 lt!2569880))))

(declare-fun choose!55333 ((InoxSet Context!14538)) List!69693)

(assert (=> d!2230443 (= lt!2569880 (choose!55333 z!3530))))

(assert (=> d!2230443 (= (toList!11260 z!3530) lt!2569880)))

(declare-fun b!7159342 () Bool)

(declare-fun content!14291 (List!69693) (InoxSet Context!14538))

(assert (=> b!7159342 (= e!4301091 (= (content!14291 lt!2569880) z!3530))))

(assert (= (and d!2230443 res!2919126) b!7159342))

(declare-fun m!7865482 () Bool)

(assert (=> d!2230443 m!7865482))

(declare-fun m!7865484 () Bool)

(assert (=> d!2230443 m!7865484))

(declare-fun m!7865486 () Bool)

(assert (=> b!7159342 m!7865486))

(assert (=> start!698142 d!2230443))

(declare-fun d!2230445 () Bool)

(declare-fun e!4301094 () Bool)

(assert (=> d!2230445 e!4301094))

(declare-fun res!2919130 () Bool)

(assert (=> d!2230445 (=> (not res!2919130) (not e!4301094))))

(assert (=> d!2230445 (= res!2919130 (validRegex!9443 EmptyExpr!18317))))

(assert (=> d!2230445 (= (focus!392 EmptyExpr!18317) (store ((as const (Array Context!14538 Bool)) false) (Context!14539 (Cons!69568 EmptyExpr!18317 Nil!69568)) true))))

(declare-fun b!7159345 () Bool)

(assert (=> b!7159345 (= e!4301094 (= (unfocusZipper!2577 (toList!11260 (store ((as const (Array Context!14538 Bool)) false) (Context!14539 (Cons!69568 EmptyExpr!18317 Nil!69568)) true))) EmptyExpr!18317))))

(assert (= (and d!2230445 res!2919130) b!7159345))

(declare-fun m!7865488 () Bool)

(assert (=> d!2230445 m!7865488))

(declare-fun m!7865490 () Bool)

(assert (=> d!2230445 m!7865490))

(assert (=> b!7159345 m!7865490))

(assert (=> b!7159345 m!7865490))

(declare-fun m!7865492 () Bool)

(assert (=> b!7159345 m!7865492))

(assert (=> b!7159345 m!7865492))

(declare-fun m!7865494 () Bool)

(assert (=> b!7159345 m!7865494))

(assert (=> b!7159302 d!2230445))

(declare-fun d!2230447 () Bool)

(assert (=> d!2230447 (= (isEmpty!40171 s!7967) ((_ is Nil!69567) s!7967))))

(assert (=> b!7159299 d!2230447))

(declare-fun bs!1890264 () Bool)

(declare-fun d!2230449 () Bool)

(assert (= bs!1890264 (and d!2230449 d!2230427)))

(declare-fun lambda!436789 () Int)

(assert (=> bs!1890264 (not (= lambda!436789 lambda!436786))))

(assert (=> d!2230449 (= (nullableContext!180 lt!2569868) (forall!17146 (exprs!7769 lt!2569868) lambda!436789))))

(declare-fun bs!1890265 () Bool)

(assert (= bs!1890265 d!2230449))

(declare-fun m!7865496 () Bool)

(assert (=> bs!1890265 m!7865496))

(assert (=> b!7159299 d!2230449))

(declare-fun d!2230451 () Bool)

(declare-fun c!1334174 () Bool)

(declare-fun e!4301102 () Bool)

(assert (=> d!2230451 (= c!1334174 e!4301102)))

(declare-fun res!2919133 () Bool)

(assert (=> d!2230451 (=> (not res!2919133) (not e!4301102))))

(assert (=> d!2230451 (= res!2919133 ((_ is Cons!69568) (exprs!7769 lt!2569868)))))

(declare-fun e!4301103 () (InoxSet Context!14538))

(assert (=> d!2230451 (= (derivationStepZipperUp!2305 lt!2569868 (head!14607 s!7967)) e!4301103)))

(declare-fun call!651886 () (InoxSet Context!14538))

(declare-fun b!7159356 () Bool)

(assert (=> b!7159356 (= e!4301103 ((_ map or) call!651886 (derivationStepZipperUp!2305 (Context!14539 (t!383709 (exprs!7769 lt!2569868))) (head!14607 s!7967))))))

(declare-fun b!7159357 () Bool)

(declare-fun e!4301101 () (InoxSet Context!14538))

(assert (=> b!7159357 (= e!4301101 ((as const (Array Context!14538 Bool)) false))))

(declare-fun bm!651881 () Bool)

(declare-fun derivationStepZipperDown!2496 (Regex!18317 Context!14538 C!36908) (InoxSet Context!14538))

(assert (=> bm!651881 (= call!651886 (derivationStepZipperDown!2496 (h!76016 (exprs!7769 lt!2569868)) (Context!14539 (t!383709 (exprs!7769 lt!2569868))) (head!14607 s!7967)))))

(declare-fun b!7159358 () Bool)

(assert (=> b!7159358 (= e!4301103 e!4301101)))

(declare-fun c!1334175 () Bool)

(assert (=> b!7159358 (= c!1334175 ((_ is Cons!69568) (exprs!7769 lt!2569868)))))

(declare-fun b!7159359 () Bool)

(assert (=> b!7159359 (= e!4301101 call!651886)))

(declare-fun b!7159360 () Bool)

(declare-fun nullable!7754 (Regex!18317) Bool)

(assert (=> b!7159360 (= e!4301102 (nullable!7754 (h!76016 (exprs!7769 lt!2569868))))))

(assert (= (and d!2230451 res!2919133) b!7159360))

(assert (= (and d!2230451 c!1334174) b!7159356))

(assert (= (and d!2230451 (not c!1334174)) b!7159358))

(assert (= (and b!7159358 c!1334175) b!7159359))

(assert (= (and b!7159358 (not c!1334175)) b!7159357))

(assert (= (or b!7159356 b!7159359) bm!651881))

(assert (=> b!7159356 m!7865436))

(declare-fun m!7865498 () Bool)

(assert (=> b!7159356 m!7865498))

(assert (=> bm!651881 m!7865436))

(declare-fun m!7865500 () Bool)

(assert (=> bm!651881 m!7865500))

(declare-fun m!7865502 () Bool)

(assert (=> b!7159360 m!7865502))

(assert (=> b!7159303 d!2230451))

(declare-fun d!2230453 () Bool)

(assert (=> d!2230453 (= (head!14607 s!7967) (h!76015 s!7967))))

(assert (=> b!7159303 d!2230453))

(declare-fun b!7159365 () Bool)

(declare-fun e!4301106 () Bool)

(declare-fun tp!1979923 () Bool)

(assert (=> b!7159365 (= e!4301106 (and tp_is_empty!46207 tp!1979923))))

(assert (=> b!7159300 (= tp!1979904 e!4301106)))

(assert (= (and b!7159300 ((_ is Cons!69567) (t!383708 s!7967))) b!7159365))

(declare-fun condSetEmpty!52859 () Bool)

(assert (=> setNonEmpty!52853 (= condSetEmpty!52859 (= setRest!52853 ((as const (Array Context!14538 Bool)) false)))))

(declare-fun setRes!52859 () Bool)

(assert (=> setNonEmpty!52853 (= tp!1979905 setRes!52859)))

(declare-fun setIsEmpty!52859 () Bool)

(assert (=> setIsEmpty!52859 setRes!52859))

(declare-fun e!4301109 () Bool)

(declare-fun setElem!52859 () Context!14538)

(declare-fun setNonEmpty!52859 () Bool)

(declare-fun tp!1979929 () Bool)

(assert (=> setNonEmpty!52859 (= setRes!52859 (and tp!1979929 (inv!88814 setElem!52859) e!4301109))))

(declare-fun setRest!52859 () (InoxSet Context!14538))

(assert (=> setNonEmpty!52859 (= setRest!52853 ((_ map or) (store ((as const (Array Context!14538 Bool)) false) setElem!52859 true) setRest!52859))))

(declare-fun b!7159370 () Bool)

(declare-fun tp!1979928 () Bool)

(assert (=> b!7159370 (= e!4301109 tp!1979928)))

(assert (= (and setNonEmpty!52853 condSetEmpty!52859) setIsEmpty!52859))

(assert (= (and setNonEmpty!52853 (not condSetEmpty!52859)) setNonEmpty!52859))

(assert (= setNonEmpty!52859 b!7159370))

(declare-fun m!7865504 () Bool)

(assert (=> setNonEmpty!52859 m!7865504))

(declare-fun b!7159375 () Bool)

(declare-fun e!4301112 () Bool)

(declare-fun tp!1979934 () Bool)

(declare-fun tp!1979935 () Bool)

(assert (=> b!7159375 (= e!4301112 (and tp!1979934 tp!1979935))))

(assert (=> b!7159301 (= tp!1979903 e!4301112)))

(assert (= (and b!7159301 ((_ is Cons!69568) (exprs!7769 setElem!52853))) b!7159375))

(check-sat (not b!7159360) (not bm!651881) (not b!7159342) (not d!2230427) (not b!7159365) (not b!7159356) (not d!2230443) (not b!7159345) tp_is_empty!46207 (not d!2230445) (not d!2230441) (not b!7159370) (not b!7159375) (not setNonEmpty!52859) (not d!2230449))
(check-sat)
(get-model)

(declare-fun d!2230461 () Bool)

(declare-fun nullableFct!3025 (Regex!18317) Bool)

(assert (=> d!2230461 (= (nullable!7754 (h!76016 (exprs!7769 lt!2569868))) (nullableFct!3025 (h!76016 (exprs!7769 lt!2569868))))))

(declare-fun bs!1890267 () Bool)

(assert (= bs!1890267 d!2230461))

(declare-fun m!7865518 () Bool)

(assert (=> bs!1890267 m!7865518))

(assert (=> b!7159360 d!2230461))

(declare-fun d!2230463 () Bool)

(assert (=> d!2230463 (= (validRegex!9443 EmptyExpr!18317) true)))

(assert (=> d!2230445 d!2230463))

(declare-fun d!2230465 () Bool)

(declare-fun c!1334191 () Bool)

(declare-fun e!4301133 () Bool)

(assert (=> d!2230465 (= c!1334191 e!4301133)))

(declare-fun res!2919138 () Bool)

(assert (=> d!2230465 (=> (not res!2919138) (not e!4301133))))

(assert (=> d!2230465 (= res!2919138 ((_ is Cons!69568) (exprs!7769 (Context!14539 (t!383709 (exprs!7769 lt!2569868))))))))

(declare-fun e!4301134 () (InoxSet Context!14538))

(assert (=> d!2230465 (= (derivationStepZipperUp!2305 (Context!14539 (t!383709 (exprs!7769 lt!2569868))) (head!14607 s!7967)) e!4301134)))

(declare-fun b!7159410 () Bool)

(declare-fun call!651905 () (InoxSet Context!14538))

(assert (=> b!7159410 (= e!4301134 ((_ map or) call!651905 (derivationStepZipperUp!2305 (Context!14539 (t!383709 (exprs!7769 (Context!14539 (t!383709 (exprs!7769 lt!2569868)))))) (head!14607 s!7967))))))

(declare-fun b!7159411 () Bool)

(declare-fun e!4301132 () (InoxSet Context!14538))

(assert (=> b!7159411 (= e!4301132 ((as const (Array Context!14538 Bool)) false))))

(declare-fun bm!651900 () Bool)

(assert (=> bm!651900 (= call!651905 (derivationStepZipperDown!2496 (h!76016 (exprs!7769 (Context!14539 (t!383709 (exprs!7769 lt!2569868))))) (Context!14539 (t!383709 (exprs!7769 (Context!14539 (t!383709 (exprs!7769 lt!2569868)))))) (head!14607 s!7967)))))

(declare-fun b!7159412 () Bool)

(assert (=> b!7159412 (= e!4301134 e!4301132)))

(declare-fun c!1334192 () Bool)

(assert (=> b!7159412 (= c!1334192 ((_ is Cons!69568) (exprs!7769 (Context!14539 (t!383709 (exprs!7769 lt!2569868))))))))

(declare-fun b!7159413 () Bool)

(assert (=> b!7159413 (= e!4301132 call!651905)))

(declare-fun b!7159414 () Bool)

(assert (=> b!7159414 (= e!4301133 (nullable!7754 (h!76016 (exprs!7769 (Context!14539 (t!383709 (exprs!7769 lt!2569868)))))))))

(assert (= (and d!2230465 res!2919138) b!7159414))

(assert (= (and d!2230465 c!1334191) b!7159410))

(assert (= (and d!2230465 (not c!1334191)) b!7159412))

(assert (= (and b!7159412 c!1334192) b!7159413))

(assert (= (and b!7159412 (not c!1334192)) b!7159411))

(assert (= (or b!7159410 b!7159413) bm!651900))

(assert (=> b!7159410 m!7865436))

(declare-fun m!7865530 () Bool)

(assert (=> b!7159410 m!7865530))

(assert (=> bm!651900 m!7865436))

(declare-fun m!7865532 () Bool)

(assert (=> bm!651900 m!7865532))

(declare-fun m!7865534 () Bool)

(assert (=> b!7159414 m!7865534))

(assert (=> b!7159356 d!2230465))

(declare-fun bs!1890268 () Bool)

(declare-fun d!2230469 () Bool)

(assert (= bs!1890268 (and d!2230469 d!2230427)))

(declare-fun lambda!436790 () Int)

(assert (=> bs!1890268 (= lambda!436790 lambda!436786)))

(declare-fun bs!1890269 () Bool)

(assert (= bs!1890269 (and d!2230469 d!2230449)))

(assert (=> bs!1890269 (not (= lambda!436790 lambda!436789))))

(assert (=> d!2230469 (= (inv!88814 setElem!52859) (forall!17146 (exprs!7769 setElem!52859) lambda!436790))))

(declare-fun bs!1890270 () Bool)

(assert (= bs!1890270 d!2230469))

(declare-fun m!7865536 () Bool)

(assert (=> bs!1890270 m!7865536))

(assert (=> setNonEmpty!52859 d!2230469))

(declare-fun b!7159494 () Bool)

(declare-fun e!4301190 () (InoxSet Context!14538))

(declare-fun call!651928 () (InoxSet Context!14538))

(assert (=> b!7159494 (= e!4301190 call!651928)))

(declare-fun bm!651922 () Bool)

(declare-fun call!651931 () (InoxSet Context!14538))

(declare-fun call!651932 () (InoxSet Context!14538))

(assert (=> bm!651922 (= call!651931 call!651932)))

(declare-fun b!7159495 () Bool)

(declare-fun e!4301191 () (InoxSet Context!14538))

(declare-fun e!4301189 () (InoxSet Context!14538))

(assert (=> b!7159495 (= e!4301191 e!4301189)))

(declare-fun c!1334224 () Bool)

(assert (=> b!7159495 (= c!1334224 ((_ is Concat!27162) (h!76016 (exprs!7769 lt!2569868))))))

(declare-fun b!7159496 () Bool)

(assert (=> b!7159496 (= e!4301189 call!651928)))

(declare-fun b!7159497 () Bool)

(declare-fun e!4301188 () (InoxSet Context!14538))

(declare-fun e!4301186 () (InoxSet Context!14538))

(assert (=> b!7159497 (= e!4301188 e!4301186)))

(declare-fun c!1334223 () Bool)

(assert (=> b!7159497 (= c!1334223 ((_ is Union!18317) (h!76016 (exprs!7769 lt!2569868))))))

(declare-fun b!7159498 () Bool)

(declare-fun e!4301187 () Bool)

(assert (=> b!7159498 (= e!4301187 (nullable!7754 (regOne!37146 (h!76016 (exprs!7769 lt!2569868)))))))

(declare-fun b!7159499 () Bool)

(declare-fun call!651927 () (InoxSet Context!14538))

(assert (=> b!7159499 (= e!4301191 ((_ map or) call!651927 call!651931))))

(declare-fun call!651930 () List!69692)

(declare-fun bm!651923 () Bool)

(declare-fun c!1334225 () Bool)

(assert (=> bm!651923 (= call!651932 (derivationStepZipperDown!2496 (ite c!1334223 (regOne!37147 (h!76016 (exprs!7769 lt!2569868))) (ite c!1334225 (regTwo!37146 (h!76016 (exprs!7769 lt!2569868))) (ite c!1334224 (regOne!37146 (h!76016 (exprs!7769 lt!2569868))) (reg!18646 (h!76016 (exprs!7769 lt!2569868)))))) (ite (or c!1334223 c!1334225) (Context!14539 (t!383709 (exprs!7769 lt!2569868))) (Context!14539 call!651930)) (head!14607 s!7967)))))

(declare-fun bm!651924 () Bool)

(assert (=> bm!651924 (= call!651928 call!651931)))

(declare-fun b!7159500 () Bool)

(assert (=> b!7159500 (= e!4301186 ((_ map or) call!651932 call!651927))))

(declare-fun bm!651925 () Bool)

(declare-fun call!651929 () List!69692)

(assert (=> bm!651925 (= call!651930 call!651929)))

(declare-fun b!7159501 () Bool)

(assert (=> b!7159501 (= c!1334225 e!4301187)))

(declare-fun res!2919162 () Bool)

(assert (=> b!7159501 (=> (not res!2919162) (not e!4301187))))

(assert (=> b!7159501 (= res!2919162 ((_ is Concat!27162) (h!76016 (exprs!7769 lt!2569868))))))

(assert (=> b!7159501 (= e!4301186 e!4301191)))

(declare-fun bm!651926 () Bool)

(assert (=> bm!651926 (= call!651927 (derivationStepZipperDown!2496 (ite c!1334223 (regTwo!37147 (h!76016 (exprs!7769 lt!2569868))) (regOne!37146 (h!76016 (exprs!7769 lt!2569868)))) (ite c!1334223 (Context!14539 (t!383709 (exprs!7769 lt!2569868))) (Context!14539 call!651929)) (head!14607 s!7967)))))

(declare-fun b!7159502 () Bool)

(assert (=> b!7159502 (= e!4301190 ((as const (Array Context!14538 Bool)) false))))

(declare-fun bm!651927 () Bool)

(declare-fun $colon$colon!2835 (List!69692 Regex!18317) List!69692)

(assert (=> bm!651927 (= call!651929 ($colon$colon!2835 (exprs!7769 (Context!14539 (t!383709 (exprs!7769 lt!2569868)))) (ite (or c!1334225 c!1334224) (regTwo!37146 (h!76016 (exprs!7769 lt!2569868))) (h!76016 (exprs!7769 lt!2569868)))))))

(declare-fun b!7159503 () Bool)

(declare-fun c!1334221 () Bool)

(assert (=> b!7159503 (= c!1334221 ((_ is Star!18317) (h!76016 (exprs!7769 lt!2569868))))))

(assert (=> b!7159503 (= e!4301189 e!4301190)))

(declare-fun d!2230471 () Bool)

(declare-fun c!1334222 () Bool)

(assert (=> d!2230471 (= c!1334222 (and ((_ is ElementMatch!18317) (h!76016 (exprs!7769 lt!2569868))) (= (c!1334161 (h!76016 (exprs!7769 lt!2569868))) (head!14607 s!7967))))))

(assert (=> d!2230471 (= (derivationStepZipperDown!2496 (h!76016 (exprs!7769 lt!2569868)) (Context!14539 (t!383709 (exprs!7769 lt!2569868))) (head!14607 s!7967)) e!4301188)))

(declare-fun b!7159504 () Bool)

(assert (=> b!7159504 (= e!4301188 (store ((as const (Array Context!14538 Bool)) false) (Context!14539 (t!383709 (exprs!7769 lt!2569868))) true))))

(assert (= (and d!2230471 c!1334222) b!7159504))

(assert (= (and d!2230471 (not c!1334222)) b!7159497))

(assert (= (and b!7159497 c!1334223) b!7159500))

(assert (= (and b!7159497 (not c!1334223)) b!7159501))

(assert (= (and b!7159501 res!2919162) b!7159498))

(assert (= (and b!7159501 c!1334225) b!7159499))

(assert (= (and b!7159501 (not c!1334225)) b!7159495))

(assert (= (and b!7159495 c!1334224) b!7159496))

(assert (= (and b!7159495 (not c!1334224)) b!7159503))

(assert (= (and b!7159503 c!1334221) b!7159494))

(assert (= (and b!7159503 (not c!1334221)) b!7159502))

(assert (= (or b!7159496 b!7159494) bm!651925))

(assert (= (or b!7159496 b!7159494) bm!651924))

(assert (= (or b!7159499 bm!651924) bm!651922))

(assert (= (or b!7159499 bm!651925) bm!651927))

(assert (= (or b!7159500 b!7159499) bm!651926))

(assert (= (or b!7159500 bm!651922) bm!651923))

(declare-fun m!7865564 () Bool)

(assert (=> b!7159504 m!7865564))

(declare-fun m!7865566 () Bool)

(assert (=> b!7159498 m!7865566))

(declare-fun m!7865568 () Bool)

(assert (=> bm!651927 m!7865568))

(assert (=> bm!651926 m!7865436))

(declare-fun m!7865570 () Bool)

(assert (=> bm!651926 m!7865570))

(assert (=> bm!651923 m!7865436))

(declare-fun m!7865572 () Bool)

(assert (=> bm!651923 m!7865572))

(assert (=> bm!651881 d!2230471))

(declare-fun d!2230477 () Bool)

(declare-fun lt!2569889 () Regex!18317)

(assert (=> d!2230477 (validRegex!9443 lt!2569889)))

(assert (=> d!2230477 (= lt!2569889 (generalisedUnion!2746 (unfocusZipperList!2302 (toList!11260 (store ((as const (Array Context!14538 Bool)) false) (Context!14539 (Cons!69568 EmptyExpr!18317 Nil!69568)) true)))))))

(assert (=> d!2230477 (= (unfocusZipper!2577 (toList!11260 (store ((as const (Array Context!14538 Bool)) false) (Context!14539 (Cons!69568 EmptyExpr!18317 Nil!69568)) true))) lt!2569889)))

(declare-fun bs!1890276 () Bool)

(assert (= bs!1890276 d!2230477))

(declare-fun m!7865580 () Bool)

(assert (=> bs!1890276 m!7865580))

(assert (=> bs!1890276 m!7865492))

(declare-fun m!7865582 () Bool)

(assert (=> bs!1890276 m!7865582))

(assert (=> bs!1890276 m!7865582))

(declare-fun m!7865584 () Bool)

(assert (=> bs!1890276 m!7865584))

(assert (=> b!7159345 d!2230477))

(declare-fun d!2230481 () Bool)

(declare-fun e!4301201 () Bool)

(assert (=> d!2230481 e!4301201))

(declare-fun res!2919169 () Bool)

(assert (=> d!2230481 (=> (not res!2919169) (not e!4301201))))

(declare-fun lt!2569890 () List!69693)

(assert (=> d!2230481 (= res!2919169 (noDuplicate!2862 lt!2569890))))

(assert (=> d!2230481 (= lt!2569890 (choose!55333 (store ((as const (Array Context!14538 Bool)) false) (Context!14539 (Cons!69568 EmptyExpr!18317 Nil!69568)) true)))))

(assert (=> d!2230481 (= (toList!11260 (store ((as const (Array Context!14538 Bool)) false) (Context!14539 (Cons!69568 EmptyExpr!18317 Nil!69568)) true)) lt!2569890)))

(declare-fun b!7159517 () Bool)

(assert (=> b!7159517 (= e!4301201 (= (content!14291 lt!2569890) (store ((as const (Array Context!14538 Bool)) false) (Context!14539 (Cons!69568 EmptyExpr!18317 Nil!69568)) true)))))

(assert (= (and d!2230481 res!2919169) b!7159517))

(declare-fun m!7865588 () Bool)

(assert (=> d!2230481 m!7865588))

(assert (=> d!2230481 m!7865490))

(declare-fun m!7865592 () Bool)

(assert (=> d!2230481 m!7865592))

(declare-fun m!7865594 () Bool)

(assert (=> b!7159517 m!7865594))

(assert (=> b!7159345 d!2230481))

(declare-fun d!2230485 () Bool)

(declare-fun res!2919174 () Bool)

(declare-fun e!4301208 () Bool)

(assert (=> d!2230485 (=> res!2919174 e!4301208)))

(assert (=> d!2230485 (= res!2919174 ((_ is Nil!69568) (exprs!7769 lt!2569868)))))

(assert (=> d!2230485 (= (forall!17146 (exprs!7769 lt!2569868) lambda!436789) e!4301208)))

(declare-fun b!7159526 () Bool)

(declare-fun e!4301209 () Bool)

(assert (=> b!7159526 (= e!4301208 e!4301209)))

(declare-fun res!2919175 () Bool)

(assert (=> b!7159526 (=> (not res!2919175) (not e!4301209))))

(declare-fun dynLambda!28326 (Int Regex!18317) Bool)

(assert (=> b!7159526 (= res!2919175 (dynLambda!28326 lambda!436789 (h!76016 (exprs!7769 lt!2569868))))))

(declare-fun b!7159527 () Bool)

(assert (=> b!7159527 (= e!4301209 (forall!17146 (t!383709 (exprs!7769 lt!2569868)) lambda!436789))))

(assert (= (and d!2230485 (not res!2919174)) b!7159526))

(assert (= (and b!7159526 res!2919175) b!7159527))

(declare-fun b_lambda!273397 () Bool)

(assert (=> (not b_lambda!273397) (not b!7159526)))

(declare-fun m!7865598 () Bool)

(assert (=> b!7159526 m!7865598))

(declare-fun m!7865600 () Bool)

(assert (=> b!7159527 m!7865600))

(assert (=> d!2230449 d!2230485))

(declare-fun d!2230489 () Bool)

(declare-fun res!2919176 () Bool)

(declare-fun e!4301211 () Bool)

(assert (=> d!2230489 (=> res!2919176 e!4301211)))

(assert (=> d!2230489 (= res!2919176 ((_ is Nil!69568) (exprs!7769 setElem!52853)))))

(assert (=> d!2230489 (= (forall!17146 (exprs!7769 setElem!52853) lambda!436786) e!4301211)))

(declare-fun b!7159530 () Bool)

(declare-fun e!4301212 () Bool)

(assert (=> b!7159530 (= e!4301211 e!4301212)))

(declare-fun res!2919177 () Bool)

(assert (=> b!7159530 (=> (not res!2919177) (not e!4301212))))

(assert (=> b!7159530 (= res!2919177 (dynLambda!28326 lambda!436786 (h!76016 (exprs!7769 setElem!52853))))))

(declare-fun b!7159531 () Bool)

(assert (=> b!7159531 (= e!4301212 (forall!17146 (t!383709 (exprs!7769 setElem!52853)) lambda!436786))))

(assert (= (and d!2230489 (not res!2919176)) b!7159530))

(assert (= (and b!7159530 res!2919177) b!7159531))

(declare-fun b_lambda!273399 () Bool)

(assert (=> (not b_lambda!273399) (not b!7159530)))

(declare-fun m!7865606 () Bool)

(assert (=> b!7159530 m!7865606))

(declare-fun m!7865608 () Bool)

(assert (=> b!7159531 m!7865608))

(assert (=> d!2230427 d!2230489))

(declare-fun b!7159572 () Bool)

(declare-fun e!4301249 () Bool)

(declare-fun e!4301247 () Bool)

(assert (=> b!7159572 (= e!4301249 e!4301247)))

(declare-fun c!1334238 () Bool)

(assert (=> b!7159572 (= c!1334238 ((_ is Union!18317) lt!2569877))))

(declare-fun d!2230493 () Bool)

(declare-fun res!2919205 () Bool)

(declare-fun e!4301251 () Bool)

(assert (=> d!2230493 (=> res!2919205 e!4301251)))

(assert (=> d!2230493 (= res!2919205 ((_ is ElementMatch!18317) lt!2569877))))

(assert (=> d!2230493 (= (validRegex!9443 lt!2569877) e!4301251)))

(declare-fun call!651942 () Bool)

(declare-fun bm!651935 () Bool)

(declare-fun c!1334239 () Bool)

(assert (=> bm!651935 (= call!651942 (validRegex!9443 (ite c!1334239 (reg!18646 lt!2569877) (ite c!1334238 (regOne!37147 lt!2569877) (regOne!37146 lt!2569877)))))))

(declare-fun b!7159573 () Bool)

(declare-fun e!4301248 () Bool)

(assert (=> b!7159573 (= e!4301248 call!651942)))

(declare-fun b!7159574 () Bool)

(assert (=> b!7159574 (= e!4301251 e!4301249)))

(assert (=> b!7159574 (= c!1334239 ((_ is Star!18317) lt!2569877))))

(declare-fun bm!651936 () Bool)

(declare-fun call!651940 () Bool)

(assert (=> bm!651936 (= call!651940 (validRegex!9443 (ite c!1334238 (regTwo!37147 lt!2569877) (regTwo!37146 lt!2569877))))))

(declare-fun b!7159575 () Bool)

(declare-fun res!2919203 () Bool)

(declare-fun e!4301250 () Bool)

(assert (=> b!7159575 (=> res!2919203 e!4301250)))

(assert (=> b!7159575 (= res!2919203 (not ((_ is Concat!27162) lt!2569877)))))

(assert (=> b!7159575 (= e!4301247 e!4301250)))

(declare-fun b!7159576 () Bool)

(declare-fun e!4301253 () Bool)

(assert (=> b!7159576 (= e!4301250 e!4301253)))

(declare-fun res!2919206 () Bool)

(assert (=> b!7159576 (=> (not res!2919206) (not e!4301253))))

(declare-fun call!651941 () Bool)

(assert (=> b!7159576 (= res!2919206 call!651941)))

(declare-fun b!7159577 () Bool)

(declare-fun e!4301252 () Bool)

(assert (=> b!7159577 (= e!4301252 call!651940)))

(declare-fun bm!651937 () Bool)

(assert (=> bm!651937 (= call!651941 call!651942)))

(declare-fun b!7159578 () Bool)

(assert (=> b!7159578 (= e!4301249 e!4301248)))

(declare-fun res!2919204 () Bool)

(assert (=> b!7159578 (= res!2919204 (not (nullable!7754 (reg!18646 lt!2569877))))))

(assert (=> b!7159578 (=> (not res!2919204) (not e!4301248))))

(declare-fun b!7159579 () Bool)

(assert (=> b!7159579 (= e!4301253 call!651940)))

(declare-fun b!7159580 () Bool)

(declare-fun res!2919207 () Bool)

(assert (=> b!7159580 (=> (not res!2919207) (not e!4301252))))

(assert (=> b!7159580 (= res!2919207 call!651941)))

(assert (=> b!7159580 (= e!4301247 e!4301252)))

(assert (= (and d!2230493 (not res!2919205)) b!7159574))

(assert (= (and b!7159574 c!1334239) b!7159578))

(assert (= (and b!7159574 (not c!1334239)) b!7159572))

(assert (= (and b!7159578 res!2919204) b!7159573))

(assert (= (and b!7159572 c!1334238) b!7159580))

(assert (= (and b!7159572 (not c!1334238)) b!7159575))

(assert (= (and b!7159580 res!2919207) b!7159577))

(assert (= (and b!7159575 (not res!2919203)) b!7159576))

(assert (= (and b!7159576 res!2919206) b!7159579))

(assert (= (or b!7159580 b!7159576) bm!651937))

(assert (= (or b!7159577 b!7159579) bm!651936))

(assert (= (or b!7159573 bm!651937) bm!651935))

(declare-fun m!7865632 () Bool)

(assert (=> bm!651935 m!7865632))

(declare-fun m!7865634 () Bool)

(assert (=> bm!651936 m!7865634))

(declare-fun m!7865636 () Bool)

(assert (=> b!7159578 m!7865636))

(assert (=> d!2230441 d!2230493))

(declare-fun bs!1890285 () Bool)

(declare-fun d!2230505 () Bool)

(assert (= bs!1890285 (and d!2230505 d!2230427)))

(declare-fun lambda!436800 () Int)

(assert (=> bs!1890285 (= lambda!436800 lambda!436786)))

(declare-fun bs!1890286 () Bool)

(assert (= bs!1890286 (and d!2230505 d!2230449)))

(assert (=> bs!1890286 (not (= lambda!436800 lambda!436789))))

(declare-fun bs!1890287 () Bool)

(assert (= bs!1890287 (and d!2230505 d!2230469)))

(assert (=> bs!1890287 (= lambda!436800 lambda!436790)))

(declare-fun b!7159619 () Bool)

(declare-fun e!4301278 () Regex!18317)

(assert (=> b!7159619 (= e!4301278 EmptyLang!18317)))

(declare-fun b!7159620 () Bool)

(declare-fun e!4301275 () Bool)

(declare-fun e!4301274 () Bool)

(assert (=> b!7159620 (= e!4301275 e!4301274)))

(declare-fun c!1334251 () Bool)

(declare-fun isEmpty!40173 (List!69692) Bool)

(declare-fun tail!14051 (List!69692) List!69692)

(assert (=> b!7159620 (= c!1334251 (isEmpty!40173 (tail!14051 (unfocusZipperList!2302 (toList!11260 z!3530)))))))

(declare-fun b!7159621 () Bool)

(declare-fun e!4301276 () Regex!18317)

(assert (=> b!7159621 (= e!4301276 (h!76016 (unfocusZipperList!2302 (toList!11260 z!3530))))))

(declare-fun b!7159622 () Bool)

(declare-fun e!4301273 () Bool)

(assert (=> b!7159622 (= e!4301273 (isEmpty!40173 (t!383709 (unfocusZipperList!2302 (toList!11260 z!3530)))))))

(declare-fun e!4301277 () Bool)

(assert (=> d!2230505 e!4301277))

(declare-fun res!2919213 () Bool)

(assert (=> d!2230505 (=> (not res!2919213) (not e!4301277))))

(declare-fun lt!2569893 () Regex!18317)

(assert (=> d!2230505 (= res!2919213 (validRegex!9443 lt!2569893))))

(assert (=> d!2230505 (= lt!2569893 e!4301276)))

(declare-fun c!1334250 () Bool)

(assert (=> d!2230505 (= c!1334250 e!4301273)))

(declare-fun res!2919212 () Bool)

(assert (=> d!2230505 (=> (not res!2919212) (not e!4301273))))

(assert (=> d!2230505 (= res!2919212 ((_ is Cons!69568) (unfocusZipperList!2302 (toList!11260 z!3530))))))

(assert (=> d!2230505 (forall!17146 (unfocusZipperList!2302 (toList!11260 z!3530)) lambda!436800)))

(assert (=> d!2230505 (= (generalisedUnion!2746 (unfocusZipperList!2302 (toList!11260 z!3530))) lt!2569893)))

(declare-fun b!7159623 () Bool)

(declare-fun head!14609 (List!69692) Regex!18317)

(assert (=> b!7159623 (= e!4301274 (= lt!2569893 (head!14609 (unfocusZipperList!2302 (toList!11260 z!3530)))))))

(declare-fun b!7159624 () Bool)

(assert (=> b!7159624 (= e!4301278 (Union!18317 (h!76016 (unfocusZipperList!2302 (toList!11260 z!3530))) (generalisedUnion!2746 (t!383709 (unfocusZipperList!2302 (toList!11260 z!3530))))))))

(declare-fun b!7159625 () Bool)

(assert (=> b!7159625 (= e!4301276 e!4301278)))

(declare-fun c!1334248 () Bool)

(assert (=> b!7159625 (= c!1334248 ((_ is Cons!69568) (unfocusZipperList!2302 (toList!11260 z!3530))))))

(declare-fun b!7159626 () Bool)

(declare-fun isEmptyLang!2135 (Regex!18317) Bool)

(assert (=> b!7159626 (= e!4301275 (isEmptyLang!2135 lt!2569893))))

(declare-fun b!7159627 () Bool)

(assert (=> b!7159627 (= e!4301277 e!4301275)))

(declare-fun c!1334249 () Bool)

(assert (=> b!7159627 (= c!1334249 (isEmpty!40173 (unfocusZipperList!2302 (toList!11260 z!3530))))))

(declare-fun b!7159628 () Bool)

(declare-fun isUnion!1563 (Regex!18317) Bool)

(assert (=> b!7159628 (= e!4301274 (isUnion!1563 lt!2569893))))

(assert (= (and d!2230505 res!2919212) b!7159622))

(assert (= (and d!2230505 c!1334250) b!7159621))

(assert (= (and d!2230505 (not c!1334250)) b!7159625))

(assert (= (and b!7159625 c!1334248) b!7159624))

(assert (= (and b!7159625 (not c!1334248)) b!7159619))

(assert (= (and d!2230505 res!2919213) b!7159627))

(assert (= (and b!7159627 c!1334249) b!7159626))

(assert (= (and b!7159627 (not c!1334249)) b!7159620))

(assert (= (and b!7159620 c!1334251) b!7159623))

(assert (= (and b!7159620 (not c!1334251)) b!7159628))

(declare-fun m!7865642 () Bool)

(assert (=> b!7159628 m!7865642))

(assert (=> b!7159623 m!7865478))

(declare-fun m!7865644 () Bool)

(assert (=> b!7159623 m!7865644))

(declare-fun m!7865646 () Bool)

(assert (=> d!2230505 m!7865646))

(assert (=> d!2230505 m!7865478))

(declare-fun m!7865648 () Bool)

(assert (=> d!2230505 m!7865648))

(declare-fun m!7865650 () Bool)

(assert (=> b!7159622 m!7865650))

(declare-fun m!7865652 () Bool)

(assert (=> b!7159626 m!7865652))

(assert (=> b!7159620 m!7865478))

(declare-fun m!7865654 () Bool)

(assert (=> b!7159620 m!7865654))

(assert (=> b!7159620 m!7865654))

(declare-fun m!7865656 () Bool)

(assert (=> b!7159620 m!7865656))

(assert (=> b!7159627 m!7865478))

(declare-fun m!7865658 () Bool)

(assert (=> b!7159627 m!7865658))

(declare-fun m!7865660 () Bool)

(assert (=> b!7159624 m!7865660))

(assert (=> d!2230441 d!2230505))

(declare-fun bs!1890288 () Bool)

(declare-fun d!2230511 () Bool)

(assert (= bs!1890288 (and d!2230511 d!2230427)))

(declare-fun lambda!436803 () Int)

(assert (=> bs!1890288 (= lambda!436803 lambda!436786)))

(declare-fun bs!1890289 () Bool)

(assert (= bs!1890289 (and d!2230511 d!2230449)))

(assert (=> bs!1890289 (not (= lambda!436803 lambda!436789))))

(declare-fun bs!1890290 () Bool)

(assert (= bs!1890290 (and d!2230511 d!2230469)))

(assert (=> bs!1890290 (= lambda!436803 lambda!436790)))

(declare-fun bs!1890291 () Bool)

(assert (= bs!1890291 (and d!2230511 d!2230505)))

(assert (=> bs!1890291 (= lambda!436803 lambda!436800)))

(declare-fun lt!2569896 () List!69692)

(assert (=> d!2230511 (forall!17146 lt!2569896 lambda!436803)))

(declare-fun e!4301281 () List!69692)

(assert (=> d!2230511 (= lt!2569896 e!4301281)))

(declare-fun c!1334254 () Bool)

(assert (=> d!2230511 (= c!1334254 ((_ is Cons!69569) (toList!11260 z!3530)))))

(assert (=> d!2230511 (= (unfocusZipperList!2302 (toList!11260 z!3530)) lt!2569896)))

(declare-fun b!7159633 () Bool)

(declare-fun generalisedConcat!2446 (List!69692) Regex!18317)

(assert (=> b!7159633 (= e!4301281 (Cons!69568 (generalisedConcat!2446 (exprs!7769 (h!76017 (toList!11260 z!3530)))) (unfocusZipperList!2302 (t!383710 (toList!11260 z!3530)))))))

(declare-fun b!7159634 () Bool)

(assert (=> b!7159634 (= e!4301281 Nil!69568)))

(assert (= (and d!2230511 c!1334254) b!7159633))

(assert (= (and d!2230511 (not c!1334254)) b!7159634))

(declare-fun m!7865662 () Bool)

(assert (=> d!2230511 m!7865662))

(declare-fun m!7865664 () Bool)

(assert (=> b!7159633 m!7865664))

(declare-fun m!7865666 () Bool)

(assert (=> b!7159633 m!7865666))

(assert (=> d!2230441 d!2230511))

(declare-fun d!2230513 () Bool)

(declare-fun res!2919218 () Bool)

(declare-fun e!4301286 () Bool)

(assert (=> d!2230513 (=> res!2919218 e!4301286)))

(assert (=> d!2230513 (= res!2919218 ((_ is Nil!69569) lt!2569880))))

(assert (=> d!2230513 (= (noDuplicate!2862 lt!2569880) e!4301286)))

(declare-fun b!7159639 () Bool)

(declare-fun e!4301287 () Bool)

(assert (=> b!7159639 (= e!4301286 e!4301287)))

(declare-fun res!2919219 () Bool)

(assert (=> b!7159639 (=> (not res!2919219) (not e!4301287))))

(declare-fun contains!20703 (List!69693 Context!14538) Bool)

(assert (=> b!7159639 (= res!2919219 (not (contains!20703 (t!383710 lt!2569880) (h!76017 lt!2569880))))))

(declare-fun b!7159640 () Bool)

(assert (=> b!7159640 (= e!4301287 (noDuplicate!2862 (t!383710 lt!2569880)))))

(assert (= (and d!2230513 (not res!2919218)) b!7159639))

(assert (= (and b!7159639 res!2919219) b!7159640))

(declare-fun m!7865668 () Bool)

(assert (=> b!7159639 m!7865668))

(declare-fun m!7865670 () Bool)

(assert (=> b!7159640 m!7865670))

(assert (=> d!2230443 d!2230513))

(declare-fun d!2230515 () Bool)

(declare-fun e!4301294 () Bool)

(assert (=> d!2230515 e!4301294))

(declare-fun res!2919224 () Bool)

(assert (=> d!2230515 (=> (not res!2919224) (not e!4301294))))

(declare-fun res!2919225 () List!69693)

(assert (=> d!2230515 (= res!2919224 (noDuplicate!2862 res!2919225))))

(declare-fun e!4301295 () Bool)

(assert (=> d!2230515 e!4301295))

(assert (=> d!2230515 (= (choose!55333 z!3530) res!2919225)))

(declare-fun b!7159648 () Bool)

(declare-fun e!4301296 () Bool)

(declare-fun tp!1979969 () Bool)

(assert (=> b!7159648 (= e!4301296 tp!1979969)))

(declare-fun tp!1979968 () Bool)

(declare-fun b!7159647 () Bool)

(assert (=> b!7159647 (= e!4301295 (and (inv!88814 (h!76017 res!2919225)) e!4301296 tp!1979968))))

(declare-fun b!7159649 () Bool)

(assert (=> b!7159649 (= e!4301294 (= (content!14291 res!2919225) z!3530))))

(assert (= b!7159647 b!7159648))

(assert (= (and d!2230515 ((_ is Cons!69569) res!2919225)) b!7159647))

(assert (= (and d!2230515 res!2919224) b!7159649))

(declare-fun m!7865672 () Bool)

(assert (=> d!2230515 m!7865672))

(declare-fun m!7865674 () Bool)

(assert (=> b!7159647 m!7865674))

(declare-fun m!7865676 () Bool)

(assert (=> b!7159649 m!7865676))

(assert (=> d!2230443 d!2230515))

(declare-fun d!2230517 () Bool)

(declare-fun c!1334257 () Bool)

(assert (=> d!2230517 (= c!1334257 ((_ is Nil!69569) lt!2569880))))

(declare-fun e!4301299 () (InoxSet Context!14538))

(assert (=> d!2230517 (= (content!14291 lt!2569880) e!4301299)))

(declare-fun b!7159654 () Bool)

(assert (=> b!7159654 (= e!4301299 ((as const (Array Context!14538 Bool)) false))))

(declare-fun b!7159655 () Bool)

(assert (=> b!7159655 (= e!4301299 ((_ map or) (store ((as const (Array Context!14538 Bool)) false) (h!76017 lt!2569880) true) (content!14291 (t!383710 lt!2569880))))))

(assert (= (and d!2230517 c!1334257) b!7159654))

(assert (= (and d!2230517 (not c!1334257)) b!7159655))

(declare-fun m!7865678 () Bool)

(assert (=> b!7159655 m!7865678))

(declare-fun m!7865680 () Bool)

(assert (=> b!7159655 m!7865680))

(assert (=> b!7159342 d!2230517))

(declare-fun b!7159656 () Bool)

(declare-fun e!4301300 () Bool)

(declare-fun tp!1979970 () Bool)

(assert (=> b!7159656 (= e!4301300 (and tp_is_empty!46207 tp!1979970))))

(assert (=> b!7159365 (= tp!1979923 e!4301300)))

(assert (= (and b!7159365 ((_ is Cons!69567) (t!383708 (t!383708 s!7967)))) b!7159656))

(declare-fun condSetEmpty!52861 () Bool)

(assert (=> setNonEmpty!52859 (= condSetEmpty!52861 (= setRest!52859 ((as const (Array Context!14538 Bool)) false)))))

(declare-fun setRes!52861 () Bool)

(assert (=> setNonEmpty!52859 (= tp!1979929 setRes!52861)))

(declare-fun setIsEmpty!52861 () Bool)

(assert (=> setIsEmpty!52861 setRes!52861))

(declare-fun tp!1979972 () Bool)

(declare-fun e!4301301 () Bool)

(declare-fun setNonEmpty!52861 () Bool)

(declare-fun setElem!52861 () Context!14538)

(assert (=> setNonEmpty!52861 (= setRes!52861 (and tp!1979972 (inv!88814 setElem!52861) e!4301301))))

(declare-fun setRest!52861 () (InoxSet Context!14538))

(assert (=> setNonEmpty!52861 (= setRest!52859 ((_ map or) (store ((as const (Array Context!14538 Bool)) false) setElem!52861 true) setRest!52861))))

(declare-fun b!7159657 () Bool)

(declare-fun tp!1979971 () Bool)

(assert (=> b!7159657 (= e!4301301 tp!1979971)))

(assert (= (and setNonEmpty!52859 condSetEmpty!52861) setIsEmpty!52861))

(assert (= (and setNonEmpty!52859 (not condSetEmpty!52861)) setNonEmpty!52861))

(assert (= setNonEmpty!52861 b!7159657))

(declare-fun m!7865682 () Bool)

(assert (=> setNonEmpty!52861 m!7865682))

(declare-fun b!7159671 () Bool)

(declare-fun e!4301304 () Bool)

(declare-fun tp!1979986 () Bool)

(declare-fun tp!1979984 () Bool)

(assert (=> b!7159671 (= e!4301304 (and tp!1979986 tp!1979984))))

(declare-fun b!7159669 () Bool)

(declare-fun tp!1979983 () Bool)

(declare-fun tp!1979985 () Bool)

(assert (=> b!7159669 (= e!4301304 (and tp!1979983 tp!1979985))))

(declare-fun b!7159670 () Bool)

(declare-fun tp!1979987 () Bool)

(assert (=> b!7159670 (= e!4301304 tp!1979987)))

(assert (=> b!7159375 (= tp!1979934 e!4301304)))

(declare-fun b!7159668 () Bool)

(assert (=> b!7159668 (= e!4301304 tp_is_empty!46207)))

(assert (= (and b!7159375 ((_ is ElementMatch!18317) (h!76016 (exprs!7769 setElem!52853)))) b!7159668))

(assert (= (and b!7159375 ((_ is Concat!27162) (h!76016 (exprs!7769 setElem!52853)))) b!7159669))

(assert (= (and b!7159375 ((_ is Star!18317) (h!76016 (exprs!7769 setElem!52853)))) b!7159670))

(assert (= (and b!7159375 ((_ is Union!18317) (h!76016 (exprs!7769 setElem!52853)))) b!7159671))

(declare-fun b!7159672 () Bool)

(declare-fun e!4301305 () Bool)

(declare-fun tp!1979988 () Bool)

(declare-fun tp!1979989 () Bool)

(assert (=> b!7159672 (= e!4301305 (and tp!1979988 tp!1979989))))

(assert (=> b!7159375 (= tp!1979935 e!4301305)))

(assert (= (and b!7159375 ((_ is Cons!69568) (t!383709 (exprs!7769 setElem!52853)))) b!7159672))

(declare-fun b!7159673 () Bool)

(declare-fun e!4301306 () Bool)

(declare-fun tp!1979990 () Bool)

(declare-fun tp!1979991 () Bool)

(assert (=> b!7159673 (= e!4301306 (and tp!1979990 tp!1979991))))

(assert (=> b!7159370 (= tp!1979928 e!4301306)))

(assert (= (and b!7159370 ((_ is Cons!69568) (exprs!7769 setElem!52859))) b!7159673))

(declare-fun b_lambda!273407 () Bool)

(assert (= b_lambda!273399 (or d!2230427 b_lambda!273407)))

(declare-fun bs!1890292 () Bool)

(declare-fun d!2230519 () Bool)

(assert (= bs!1890292 (and d!2230519 d!2230427)))

(assert (=> bs!1890292 (= (dynLambda!28326 lambda!436786 (h!76016 (exprs!7769 setElem!52853))) (validRegex!9443 (h!76016 (exprs!7769 setElem!52853))))))

(declare-fun m!7865684 () Bool)

(assert (=> bs!1890292 m!7865684))

(assert (=> b!7159530 d!2230519))

(declare-fun b_lambda!273409 () Bool)

(assert (= b_lambda!273397 (or d!2230449 b_lambda!273409)))

(declare-fun bs!1890293 () Bool)

(declare-fun d!2230521 () Bool)

(assert (= bs!1890293 (and d!2230521 d!2230449)))

(assert (=> bs!1890293 (= (dynLambda!28326 lambda!436789 (h!76016 (exprs!7769 lt!2569868))) (nullable!7754 (h!76016 (exprs!7769 lt!2569868))))))

(assert (=> bs!1890293 m!7865502))

(assert (=> b!7159526 d!2230521))

(check-sat (not b!7159626) (not bm!651927) (not bm!651900) (not b!7159498) (not b!7159673) (not b!7159622) (not b!7159669) (not b!7159623) (not b!7159517) (not b!7159649) (not b!7159527) (not d!2230481) (not b!7159657) (not b!7159656) (not b!7159627) (not d!2230515) (not bm!651935) (not d!2230505) (not b!7159670) (not b!7159648) (not b!7159620) (not b!7159578) (not b!7159414) (not b_lambda!273407) (not bm!651926) (not b!7159640) (not b!7159624) (not d!2230469) (not d!2230477) (not b_lambda!273409) (not d!2230461) (not d!2230511) (not b!7159671) (not setNonEmpty!52861) (not b!7159647) (not b!7159655) tp_is_empty!46207 (not b!7159410) (not bs!1890292) (not b!7159639) (not bm!651936) (not b!7159672) (not b!7159633) (not b!7159628) (not b!7159531) (not bm!651923) (not bs!1890293))
(check-sat)

; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!699464 () Bool)

(assert start!699464)

(declare-fun res!2926300 () Bool)

(declare-fun e!4315445 () Bool)

(assert (=> start!699464 (=> (not res!2926300) (not e!4315445))))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((C!36988 0))(
  ( (C!36989 (val!28442 Int)) )
))
(declare-datatypes ((Regex!18357 0))(
  ( (ElementMatch!18357 (c!1337840 C!36988)) (Concat!27202 (regOne!37226 Regex!18357) (regTwo!37226 Regex!18357)) (EmptyExpr!18357) (Star!18357 (reg!18686 Regex!18357)) (EmptyLang!18357) (Union!18357 (regOne!37227 Regex!18357) (regTwo!37227 Regex!18357)) )
))
(declare-datatypes ((List!69800 0))(
  ( (Nil!69676) (Cons!69676 (h!76124 Regex!18357) (t!383823 List!69800)) )
))
(declare-datatypes ((Context!14618 0))(
  ( (Context!14619 (exprs!7809 List!69800)) )
))
(declare-fun z!3530 () (InoxSet Context!14618))

(declare-datatypes ((List!69801 0))(
  ( (Nil!69677) (Cons!69677 (h!76125 Context!14618) (t!383824 List!69801)) )
))
(declare-fun unfocusZipper!2617 (List!69801) Regex!18357)

(declare-fun toList!11300 ((InoxSet Context!14618)) List!69801)

(assert (=> start!699464 (= res!2926300 (= (unfocusZipper!2617 (toList!11300 z!3530)) EmptyExpr!18357))))

(assert (=> start!699464 e!4315445))

(declare-fun condSetEmpty!53187 () Bool)

(assert (=> start!699464 (= condSetEmpty!53187 (= z!3530 ((as const (Array Context!14618 Bool)) false)))))

(declare-fun setRes!53187 () Bool)

(assert (=> start!699464 setRes!53187))

(declare-fun b!7185961 () Bool)

(declare-fun res!2926301 () Bool)

(assert (=> b!7185961 (=> (not res!2926301) (not e!4315445))))

(declare-fun focus!432 (Regex!18357) (InoxSet Context!14618))

(assert (=> b!7185961 (= res!2926301 (not (= z!3530 (focus!432 EmptyExpr!18357))))))

(declare-fun b!7185962 () Bool)

(declare-fun inv!88914 (Context!14618) Bool)

(assert (=> b!7185962 (= e!4315445 (not (inv!88914 (Context!14619 Nil!69676))))))

(declare-fun setIsEmpty!53187 () Bool)

(assert (=> setIsEmpty!53187 setRes!53187))

(declare-fun b!7185963 () Bool)

(declare-fun e!4315446 () Bool)

(declare-fun tp!1995488 () Bool)

(assert (=> b!7185963 (= e!4315446 tp!1995488)))

(declare-fun setNonEmpty!53187 () Bool)

(declare-fun tp!1995489 () Bool)

(declare-fun setElem!53187 () Context!14618)

(assert (=> setNonEmpty!53187 (= setRes!53187 (and tp!1995489 (inv!88914 setElem!53187) e!4315446))))

(declare-fun setRest!53187 () (InoxSet Context!14618))

(assert (=> setNonEmpty!53187 (= z!3530 ((_ map or) (store ((as const (Array Context!14618 Bool)) false) setElem!53187 true) setRest!53187))))

(assert (= (and start!699464 res!2926300) b!7185961))

(assert (= (and b!7185961 res!2926301) b!7185962))

(assert (= (and start!699464 condSetEmpty!53187) setIsEmpty!53187))

(assert (= (and start!699464 (not condSetEmpty!53187)) setNonEmpty!53187))

(assert (= setNonEmpty!53187 b!7185963))

(declare-fun m!7882816 () Bool)

(assert (=> start!699464 m!7882816))

(assert (=> start!699464 m!7882816))

(declare-fun m!7882818 () Bool)

(assert (=> start!699464 m!7882818))

(declare-fun m!7882820 () Bool)

(assert (=> b!7185961 m!7882820))

(declare-fun m!7882822 () Bool)

(assert (=> b!7185962 m!7882822))

(declare-fun m!7882824 () Bool)

(assert (=> setNonEmpty!53187 m!7882824))

(check-sat (not start!699464) (not b!7185961) (not b!7185963) (not setNonEmpty!53187) (not b!7185962))
(check-sat)
(get-model)

(declare-fun d!2238407 () Bool)

(declare-fun lambda!437666 () Int)

(declare-fun forall!17182 (List!69800 Int) Bool)

(assert (=> d!2238407 (= (inv!88914 (Context!14619 Nil!69676)) (forall!17182 (exprs!7809 (Context!14619 Nil!69676)) lambda!437666))))

(declare-fun bs!1897930 () Bool)

(assert (= bs!1897930 d!2238407))

(declare-fun m!7882826 () Bool)

(assert (=> bs!1897930 m!7882826))

(assert (=> b!7185962 d!2238407))

(declare-fun d!2238411 () Bool)

(declare-fun lt!2571015 () Regex!18357)

(declare-fun validRegex!9471 (Regex!18357) Bool)

(assert (=> d!2238411 (validRegex!9471 lt!2571015)))

(declare-fun generalisedUnion!2773 (List!69800) Regex!18357)

(declare-fun unfocusZipperList!2329 (List!69801) List!69800)

(assert (=> d!2238411 (= lt!2571015 (generalisedUnion!2773 (unfocusZipperList!2329 (toList!11300 z!3530))))))

(assert (=> d!2238411 (= (unfocusZipper!2617 (toList!11300 z!3530)) lt!2571015)))

(declare-fun bs!1897931 () Bool)

(assert (= bs!1897931 d!2238411))

(declare-fun m!7882828 () Bool)

(assert (=> bs!1897931 m!7882828))

(assert (=> bs!1897931 m!7882816))

(declare-fun m!7882830 () Bool)

(assert (=> bs!1897931 m!7882830))

(assert (=> bs!1897931 m!7882830))

(declare-fun m!7882832 () Bool)

(assert (=> bs!1897931 m!7882832))

(assert (=> start!699464 d!2238411))

(declare-fun d!2238413 () Bool)

(declare-fun e!4315449 () Bool)

(assert (=> d!2238413 e!4315449))

(declare-fun res!2926304 () Bool)

(assert (=> d!2238413 (=> (not res!2926304) (not e!4315449))))

(declare-fun lt!2571018 () List!69801)

(declare-fun noDuplicate!2889 (List!69801) Bool)

(assert (=> d!2238413 (= res!2926304 (noDuplicate!2889 lt!2571018))))

(declare-fun choose!55397 ((InoxSet Context!14618)) List!69801)

(assert (=> d!2238413 (= lt!2571018 (choose!55397 z!3530))))

(assert (=> d!2238413 (= (toList!11300 z!3530) lt!2571018)))

(declare-fun b!7185966 () Bool)

(declare-fun content!14318 (List!69801) (InoxSet Context!14618))

(assert (=> b!7185966 (= e!4315449 (= (content!14318 lt!2571018) z!3530))))

(assert (= (and d!2238413 res!2926304) b!7185966))

(declare-fun m!7882834 () Bool)

(assert (=> d!2238413 m!7882834))

(declare-fun m!7882836 () Bool)

(assert (=> d!2238413 m!7882836))

(declare-fun m!7882838 () Bool)

(assert (=> b!7185966 m!7882838))

(assert (=> start!699464 d!2238413))

(declare-fun d!2238415 () Bool)

(declare-fun e!4315452 () Bool)

(assert (=> d!2238415 e!4315452))

(declare-fun res!2926308 () Bool)

(assert (=> d!2238415 (=> (not res!2926308) (not e!4315452))))

(assert (=> d!2238415 (= res!2926308 (validRegex!9471 EmptyExpr!18357))))

(assert (=> d!2238415 (= (focus!432 EmptyExpr!18357) (store ((as const (Array Context!14618 Bool)) false) (Context!14619 (Cons!69676 EmptyExpr!18357 Nil!69676)) true))))

(declare-fun b!7185969 () Bool)

(assert (=> b!7185969 (= e!4315452 (= (unfocusZipper!2617 (toList!11300 (store ((as const (Array Context!14618 Bool)) false) (Context!14619 (Cons!69676 EmptyExpr!18357 Nil!69676)) true))) EmptyExpr!18357))))

(assert (= (and d!2238415 res!2926308) b!7185969))

(declare-fun m!7882840 () Bool)

(assert (=> d!2238415 m!7882840))

(declare-fun m!7882842 () Bool)

(assert (=> d!2238415 m!7882842))

(assert (=> b!7185969 m!7882842))

(assert (=> b!7185969 m!7882842))

(declare-fun m!7882844 () Bool)

(assert (=> b!7185969 m!7882844))

(assert (=> b!7185969 m!7882844))

(declare-fun m!7882846 () Bool)

(assert (=> b!7185969 m!7882846))

(assert (=> b!7185961 d!2238415))

(declare-fun bs!1897932 () Bool)

(declare-fun d!2238417 () Bool)

(assert (= bs!1897932 (and d!2238417 d!2238407)))

(declare-fun lambda!437667 () Int)

(assert (=> bs!1897932 (= lambda!437667 lambda!437666)))

(assert (=> d!2238417 (= (inv!88914 setElem!53187) (forall!17182 (exprs!7809 setElem!53187) lambda!437667))))

(declare-fun bs!1897933 () Bool)

(assert (= bs!1897933 d!2238417))

(declare-fun m!7882848 () Bool)

(assert (=> bs!1897933 m!7882848))

(assert (=> setNonEmpty!53187 d!2238417))

(declare-fun condSetEmpty!53190 () Bool)

(assert (=> setNonEmpty!53187 (= condSetEmpty!53190 (= setRest!53187 ((as const (Array Context!14618 Bool)) false)))))

(declare-fun setRes!53190 () Bool)

(assert (=> setNonEmpty!53187 (= tp!1995489 setRes!53190)))

(declare-fun setIsEmpty!53190 () Bool)

(assert (=> setIsEmpty!53190 setRes!53190))

(declare-fun e!4315455 () Bool)

(declare-fun setElem!53190 () Context!14618)

(declare-fun tp!1995495 () Bool)

(declare-fun setNonEmpty!53190 () Bool)

(assert (=> setNonEmpty!53190 (= setRes!53190 (and tp!1995495 (inv!88914 setElem!53190) e!4315455))))

(declare-fun setRest!53190 () (InoxSet Context!14618))

(assert (=> setNonEmpty!53190 (= setRest!53187 ((_ map or) (store ((as const (Array Context!14618 Bool)) false) setElem!53190 true) setRest!53190))))

(declare-fun b!7185974 () Bool)

(declare-fun tp!1995494 () Bool)

(assert (=> b!7185974 (= e!4315455 tp!1995494)))

(assert (= (and setNonEmpty!53187 condSetEmpty!53190) setIsEmpty!53190))

(assert (= (and setNonEmpty!53187 (not condSetEmpty!53190)) setNonEmpty!53190))

(assert (= setNonEmpty!53190 b!7185974))

(declare-fun m!7882850 () Bool)

(assert (=> setNonEmpty!53190 m!7882850))

(declare-fun b!7185979 () Bool)

(declare-fun e!4315458 () Bool)

(declare-fun tp!1995500 () Bool)

(declare-fun tp!1995501 () Bool)

(assert (=> b!7185979 (= e!4315458 (and tp!1995500 tp!1995501))))

(assert (=> b!7185963 (= tp!1995488 e!4315458)))

(get-info :version)

(assert (= (and b!7185963 ((_ is Cons!69676) (exprs!7809 setElem!53187))) b!7185979))

(check-sat (not d!2238417) (not d!2238411) (not b!7185966) (not b!7185979) (not b!7185974) (not d!2238407) (not d!2238415) (not setNonEmpty!53190) (not b!7185969) (not d!2238413))
(check-sat)
(get-model)

(declare-fun d!2238419 () Bool)

(declare-fun lt!2571019 () Regex!18357)

(assert (=> d!2238419 (validRegex!9471 lt!2571019)))

(assert (=> d!2238419 (= lt!2571019 (generalisedUnion!2773 (unfocusZipperList!2329 (toList!11300 (store ((as const (Array Context!14618 Bool)) false) (Context!14619 (Cons!69676 EmptyExpr!18357 Nil!69676)) true)))))))

(assert (=> d!2238419 (= (unfocusZipper!2617 (toList!11300 (store ((as const (Array Context!14618 Bool)) false) (Context!14619 (Cons!69676 EmptyExpr!18357 Nil!69676)) true))) lt!2571019)))

(declare-fun bs!1897934 () Bool)

(assert (= bs!1897934 d!2238419))

(declare-fun m!7882852 () Bool)

(assert (=> bs!1897934 m!7882852))

(assert (=> bs!1897934 m!7882844))

(declare-fun m!7882854 () Bool)

(assert (=> bs!1897934 m!7882854))

(assert (=> bs!1897934 m!7882854))

(declare-fun m!7882856 () Bool)

(assert (=> bs!1897934 m!7882856))

(assert (=> b!7185969 d!2238419))

(declare-fun d!2238421 () Bool)

(declare-fun e!4315459 () Bool)

(assert (=> d!2238421 e!4315459))

(declare-fun res!2926309 () Bool)

(assert (=> d!2238421 (=> (not res!2926309) (not e!4315459))))

(declare-fun lt!2571020 () List!69801)

(assert (=> d!2238421 (= res!2926309 (noDuplicate!2889 lt!2571020))))

(assert (=> d!2238421 (= lt!2571020 (choose!55397 (store ((as const (Array Context!14618 Bool)) false) (Context!14619 (Cons!69676 EmptyExpr!18357 Nil!69676)) true)))))

(assert (=> d!2238421 (= (toList!11300 (store ((as const (Array Context!14618 Bool)) false) (Context!14619 (Cons!69676 EmptyExpr!18357 Nil!69676)) true)) lt!2571020)))

(declare-fun b!7185980 () Bool)

(assert (=> b!7185980 (= e!4315459 (= (content!14318 lt!2571020) (store ((as const (Array Context!14618 Bool)) false) (Context!14619 (Cons!69676 EmptyExpr!18357 Nil!69676)) true)))))

(assert (= (and d!2238421 res!2926309) b!7185980))

(declare-fun m!7882858 () Bool)

(assert (=> d!2238421 m!7882858))

(assert (=> d!2238421 m!7882842))

(declare-fun m!7882860 () Bool)

(assert (=> d!2238421 m!7882860))

(declare-fun m!7882862 () Bool)

(assert (=> b!7185980 m!7882862))

(assert (=> b!7185969 d!2238421))

(declare-fun d!2238423 () Bool)

(declare-fun res!2926314 () Bool)

(declare-fun e!4315464 () Bool)

(assert (=> d!2238423 (=> res!2926314 e!4315464)))

(assert (=> d!2238423 (= res!2926314 ((_ is Nil!69676) (exprs!7809 (Context!14619 Nil!69676))))))

(assert (=> d!2238423 (= (forall!17182 (exprs!7809 (Context!14619 Nil!69676)) lambda!437666) e!4315464)))

(declare-fun b!7185985 () Bool)

(declare-fun e!4315465 () Bool)

(assert (=> b!7185985 (= e!4315464 e!4315465)))

(declare-fun res!2926315 () Bool)

(assert (=> b!7185985 (=> (not res!2926315) (not e!4315465))))

(declare-fun dynLambda!28374 (Int Regex!18357) Bool)

(assert (=> b!7185985 (= res!2926315 (dynLambda!28374 lambda!437666 (h!76124 (exprs!7809 (Context!14619 Nil!69676)))))))

(declare-fun b!7185986 () Bool)

(assert (=> b!7185986 (= e!4315465 (forall!17182 (t!383823 (exprs!7809 (Context!14619 Nil!69676))) lambda!437666))))

(assert (= (and d!2238423 (not res!2926314)) b!7185985))

(assert (= (and b!7185985 res!2926315) b!7185986))

(declare-fun b_lambda!275201 () Bool)

(assert (=> (not b_lambda!275201) (not b!7185985)))

(declare-fun m!7882864 () Bool)

(assert (=> b!7185985 m!7882864))

(declare-fun m!7882866 () Bool)

(assert (=> b!7185986 m!7882866))

(assert (=> d!2238407 d!2238423))

(declare-fun d!2238425 () Bool)

(declare-fun c!1337843 () Bool)

(assert (=> d!2238425 (= c!1337843 ((_ is Nil!69677) lt!2571018))))

(declare-fun e!4315468 () (InoxSet Context!14618))

(assert (=> d!2238425 (= (content!14318 lt!2571018) e!4315468)))

(declare-fun b!7185991 () Bool)

(assert (=> b!7185991 (= e!4315468 ((as const (Array Context!14618 Bool)) false))))

(declare-fun b!7185992 () Bool)

(assert (=> b!7185992 (= e!4315468 ((_ map or) (store ((as const (Array Context!14618 Bool)) false) (h!76125 lt!2571018) true) (content!14318 (t!383824 lt!2571018))))))

(assert (= (and d!2238425 c!1337843) b!7185991))

(assert (= (and d!2238425 (not c!1337843)) b!7185992))

(declare-fun m!7882868 () Bool)

(assert (=> b!7185992 m!7882868))

(declare-fun m!7882870 () Bool)

(assert (=> b!7185992 m!7882870))

(assert (=> b!7185966 d!2238425))

(declare-fun d!2238427 () Bool)

(declare-fun res!2926316 () Bool)

(declare-fun e!4315469 () Bool)

(assert (=> d!2238427 (=> res!2926316 e!4315469)))

(assert (=> d!2238427 (= res!2926316 ((_ is Nil!69676) (exprs!7809 setElem!53187)))))

(assert (=> d!2238427 (= (forall!17182 (exprs!7809 setElem!53187) lambda!437667) e!4315469)))

(declare-fun b!7185993 () Bool)

(declare-fun e!4315470 () Bool)

(assert (=> b!7185993 (= e!4315469 e!4315470)))

(declare-fun res!2926317 () Bool)

(assert (=> b!7185993 (=> (not res!2926317) (not e!4315470))))

(assert (=> b!7185993 (= res!2926317 (dynLambda!28374 lambda!437667 (h!76124 (exprs!7809 setElem!53187))))))

(declare-fun b!7185994 () Bool)

(assert (=> b!7185994 (= e!4315470 (forall!17182 (t!383823 (exprs!7809 setElem!53187)) lambda!437667))))

(assert (= (and d!2238427 (not res!2926316)) b!7185993))

(assert (= (and b!7185993 res!2926317) b!7185994))

(declare-fun b_lambda!275203 () Bool)

(assert (=> (not b_lambda!275203) (not b!7185993)))

(declare-fun m!7882872 () Bool)

(assert (=> b!7185993 m!7882872))

(declare-fun m!7882874 () Bool)

(assert (=> b!7185994 m!7882874))

(assert (=> d!2238417 d!2238427))

(declare-fun b!7186013 () Bool)

(declare-fun res!2926330 () Bool)

(declare-fun e!4315489 () Bool)

(assert (=> b!7186013 (=> (not res!2926330) (not e!4315489))))

(declare-fun call!655099 () Bool)

(assert (=> b!7186013 (= res!2926330 call!655099)))

(declare-fun e!4315485 () Bool)

(assert (=> b!7186013 (= e!4315485 e!4315489)))

(declare-fun b!7186014 () Bool)

(declare-fun call!655098 () Bool)

(assert (=> b!7186014 (= e!4315489 call!655098)))

(declare-fun b!7186015 () Bool)

(declare-fun res!2926331 () Bool)

(declare-fun e!4315490 () Bool)

(assert (=> b!7186015 (=> res!2926331 e!4315490)))

(assert (=> b!7186015 (= res!2926331 (not ((_ is Concat!27202) lt!2571015)))))

(assert (=> b!7186015 (= e!4315485 e!4315490)))

(declare-fun b!7186016 () Bool)

(declare-fun e!4315491 () Bool)

(assert (=> b!7186016 (= e!4315491 e!4315485)))

(declare-fun c!1337849 () Bool)

(assert (=> b!7186016 (= c!1337849 ((_ is Union!18357) lt!2571015))))

(declare-fun call!655097 () Bool)

(declare-fun bm!655092 () Bool)

(declare-fun c!1337848 () Bool)

(assert (=> bm!655092 (= call!655097 (validRegex!9471 (ite c!1337848 (reg!18686 lt!2571015) (ite c!1337849 (regTwo!37227 lt!2571015) (regTwo!37226 lt!2571015)))))))

(declare-fun b!7186017 () Bool)

(declare-fun e!4315487 () Bool)

(assert (=> b!7186017 (= e!4315487 call!655098)))

(declare-fun bm!655093 () Bool)

(assert (=> bm!655093 (= call!655098 call!655097)))

(declare-fun b!7186018 () Bool)

(declare-fun e!4315486 () Bool)

(assert (=> b!7186018 (= e!4315486 e!4315491)))

(assert (=> b!7186018 (= c!1337848 ((_ is Star!18357) lt!2571015))))

(declare-fun b!7186019 () Bool)

(declare-fun e!4315488 () Bool)

(assert (=> b!7186019 (= e!4315491 e!4315488)))

(declare-fun res!2926332 () Bool)

(declare-fun nullable!7779 (Regex!18357) Bool)

(assert (=> b!7186019 (= res!2926332 (not (nullable!7779 (reg!18686 lt!2571015))))))

(assert (=> b!7186019 (=> (not res!2926332) (not e!4315488))))

(declare-fun bm!655094 () Bool)

(assert (=> bm!655094 (= call!655099 (validRegex!9471 (ite c!1337849 (regOne!37227 lt!2571015) (regOne!37226 lt!2571015))))))

(declare-fun b!7186021 () Bool)

(assert (=> b!7186021 (= e!4315488 call!655097)))

(declare-fun d!2238429 () Bool)

(declare-fun res!2926328 () Bool)

(assert (=> d!2238429 (=> res!2926328 e!4315486)))

(assert (=> d!2238429 (= res!2926328 ((_ is ElementMatch!18357) lt!2571015))))

(assert (=> d!2238429 (= (validRegex!9471 lt!2571015) e!4315486)))

(declare-fun b!7186020 () Bool)

(assert (=> b!7186020 (= e!4315490 e!4315487)))

(declare-fun res!2926329 () Bool)

(assert (=> b!7186020 (=> (not res!2926329) (not e!4315487))))

(assert (=> b!7186020 (= res!2926329 call!655099)))

(assert (= (and d!2238429 (not res!2926328)) b!7186018))

(assert (= (and b!7186018 c!1337848) b!7186019))

(assert (= (and b!7186018 (not c!1337848)) b!7186016))

(assert (= (and b!7186019 res!2926332) b!7186021))

(assert (= (and b!7186016 c!1337849) b!7186013))

(assert (= (and b!7186016 (not c!1337849)) b!7186015))

(assert (= (and b!7186013 res!2926330) b!7186014))

(assert (= (and b!7186015 (not res!2926331)) b!7186020))

(assert (= (and b!7186020 res!2926329) b!7186017))

(assert (= (or b!7186013 b!7186020) bm!655094))

(assert (= (or b!7186014 b!7186017) bm!655093))

(assert (= (or b!7186021 bm!655093) bm!655092))

(declare-fun m!7882876 () Bool)

(assert (=> bm!655092 m!7882876))

(declare-fun m!7882878 () Bool)

(assert (=> b!7186019 m!7882878))

(declare-fun m!7882880 () Bool)

(assert (=> bm!655094 m!7882880))

(assert (=> d!2238411 d!2238429))

(declare-fun bs!1897935 () Bool)

(declare-fun d!2238431 () Bool)

(assert (= bs!1897935 (and d!2238431 d!2238407)))

(declare-fun lambda!437670 () Int)

(assert (=> bs!1897935 (= lambda!437670 lambda!437666)))

(declare-fun bs!1897936 () Bool)

(assert (= bs!1897936 (and d!2238431 d!2238417)))

(assert (=> bs!1897936 (= lambda!437670 lambda!437667)))

(declare-fun b!7186042 () Bool)

(declare-fun e!4315508 () Bool)

(declare-fun lt!2571023 () Regex!18357)

(declare-fun isEmptyLang!2152 (Regex!18357) Bool)

(assert (=> b!7186042 (= e!4315508 (isEmptyLang!2152 lt!2571023))))

(declare-fun b!7186043 () Bool)

(declare-fun e!4315506 () Bool)

(declare-fun isUnion!1580 (Regex!18357) Bool)

(assert (=> b!7186043 (= e!4315506 (isUnion!1580 lt!2571023))))

(declare-fun b!7186044 () Bool)

(declare-fun e!4315509 () Regex!18357)

(assert (=> b!7186044 (= e!4315509 (h!76124 (unfocusZipperList!2329 (toList!11300 z!3530))))))

(declare-fun b!7186045 () Bool)

(declare-fun e!4315504 () Regex!18357)

(assert (=> b!7186045 (= e!4315509 e!4315504)))

(declare-fun c!1337859 () Bool)

(assert (=> b!7186045 (= c!1337859 ((_ is Cons!69676) (unfocusZipperList!2329 (toList!11300 z!3530))))))

(declare-fun b!7186046 () Bool)

(assert (=> b!7186046 (= e!4315504 EmptyLang!18357)))

(declare-fun b!7186047 () Bool)

(declare-fun head!14677 (List!69800) Regex!18357)

(assert (=> b!7186047 (= e!4315506 (= lt!2571023 (head!14677 (unfocusZipperList!2329 (toList!11300 z!3530)))))))

(declare-fun e!4315507 () Bool)

(assert (=> d!2238431 e!4315507))

(declare-fun res!2926338 () Bool)

(assert (=> d!2238431 (=> (not res!2926338) (not e!4315507))))

(assert (=> d!2238431 (= res!2926338 (validRegex!9471 lt!2571023))))

(assert (=> d!2238431 (= lt!2571023 e!4315509)))

(declare-fun c!1337860 () Bool)

(declare-fun e!4315505 () Bool)

(assert (=> d!2238431 (= c!1337860 e!4315505)))

(declare-fun res!2926337 () Bool)

(assert (=> d!2238431 (=> (not res!2926337) (not e!4315505))))

(assert (=> d!2238431 (= res!2926337 ((_ is Cons!69676) (unfocusZipperList!2329 (toList!11300 z!3530))))))

(assert (=> d!2238431 (forall!17182 (unfocusZipperList!2329 (toList!11300 z!3530)) lambda!437670)))

(assert (=> d!2238431 (= (generalisedUnion!2773 (unfocusZipperList!2329 (toList!11300 z!3530))) lt!2571023)))

(declare-fun b!7186048 () Bool)

(declare-fun isEmpty!40218 (List!69800) Bool)

(assert (=> b!7186048 (= e!4315505 (isEmpty!40218 (t!383823 (unfocusZipperList!2329 (toList!11300 z!3530)))))))

(declare-fun b!7186049 () Bool)

(assert (=> b!7186049 (= e!4315504 (Union!18357 (h!76124 (unfocusZipperList!2329 (toList!11300 z!3530))) (generalisedUnion!2773 (t!383823 (unfocusZipperList!2329 (toList!11300 z!3530))))))))

(declare-fun b!7186050 () Bool)

(assert (=> b!7186050 (= e!4315508 e!4315506)))

(declare-fun c!1337858 () Bool)

(declare-fun tail!14074 (List!69800) List!69800)

(assert (=> b!7186050 (= c!1337858 (isEmpty!40218 (tail!14074 (unfocusZipperList!2329 (toList!11300 z!3530)))))))

(declare-fun b!7186051 () Bool)

(assert (=> b!7186051 (= e!4315507 e!4315508)))

(declare-fun c!1337861 () Bool)

(assert (=> b!7186051 (= c!1337861 (isEmpty!40218 (unfocusZipperList!2329 (toList!11300 z!3530))))))

(assert (= (and d!2238431 res!2926337) b!7186048))

(assert (= (and d!2238431 c!1337860) b!7186044))

(assert (= (and d!2238431 (not c!1337860)) b!7186045))

(assert (= (and b!7186045 c!1337859) b!7186049))

(assert (= (and b!7186045 (not c!1337859)) b!7186046))

(assert (= (and d!2238431 res!2926338) b!7186051))

(assert (= (and b!7186051 c!1337861) b!7186042))

(assert (= (and b!7186051 (not c!1337861)) b!7186050))

(assert (= (and b!7186050 c!1337858) b!7186047))

(assert (= (and b!7186050 (not c!1337858)) b!7186043))

(declare-fun m!7882882 () Bool)

(assert (=> b!7186049 m!7882882))

(assert (=> b!7186047 m!7882830))

(declare-fun m!7882884 () Bool)

(assert (=> b!7186047 m!7882884))

(declare-fun m!7882886 () Bool)

(assert (=> b!7186048 m!7882886))

(assert (=> b!7186050 m!7882830))

(declare-fun m!7882888 () Bool)

(assert (=> b!7186050 m!7882888))

(assert (=> b!7186050 m!7882888))

(declare-fun m!7882890 () Bool)

(assert (=> b!7186050 m!7882890))

(assert (=> b!7186051 m!7882830))

(declare-fun m!7882892 () Bool)

(assert (=> b!7186051 m!7882892))

(declare-fun m!7882894 () Bool)

(assert (=> d!2238431 m!7882894))

(assert (=> d!2238431 m!7882830))

(declare-fun m!7882896 () Bool)

(assert (=> d!2238431 m!7882896))

(declare-fun m!7882898 () Bool)

(assert (=> b!7186042 m!7882898))

(declare-fun m!7882900 () Bool)

(assert (=> b!7186043 m!7882900))

(assert (=> d!2238411 d!2238431))

(declare-fun bs!1897937 () Bool)

(declare-fun d!2238433 () Bool)

(assert (= bs!1897937 (and d!2238433 d!2238407)))

(declare-fun lambda!437675 () Int)

(assert (=> bs!1897937 (= lambda!437675 lambda!437666)))

(declare-fun bs!1897938 () Bool)

(assert (= bs!1897938 (and d!2238433 d!2238417)))

(assert (=> bs!1897938 (= lambda!437675 lambda!437667)))

(declare-fun bs!1897939 () Bool)

(assert (= bs!1897939 (and d!2238433 d!2238431)))

(assert (=> bs!1897939 (= lambda!437675 lambda!437670)))

(declare-fun lt!2571026 () List!69800)

(assert (=> d!2238433 (forall!17182 lt!2571026 lambda!437675)))

(declare-fun e!4315512 () List!69800)

(assert (=> d!2238433 (= lt!2571026 e!4315512)))

(declare-fun c!1337864 () Bool)

(assert (=> d!2238433 (= c!1337864 ((_ is Cons!69677) (toList!11300 z!3530)))))

(assert (=> d!2238433 (= (unfocusZipperList!2329 (toList!11300 z!3530)) lt!2571026)))

(declare-fun b!7186056 () Bool)

(declare-fun generalisedConcat!2462 (List!69800) Regex!18357)

(assert (=> b!7186056 (= e!4315512 (Cons!69676 (generalisedConcat!2462 (exprs!7809 (h!76125 (toList!11300 z!3530)))) (unfocusZipperList!2329 (t!383824 (toList!11300 z!3530)))))))

(declare-fun b!7186057 () Bool)

(assert (=> b!7186057 (= e!4315512 Nil!69676)))

(assert (= (and d!2238433 c!1337864) b!7186056))

(assert (= (and d!2238433 (not c!1337864)) b!7186057))

(declare-fun m!7882902 () Bool)

(assert (=> d!2238433 m!7882902))

(declare-fun m!7882904 () Bool)

(assert (=> b!7186056 m!7882904))

(declare-fun m!7882906 () Bool)

(assert (=> b!7186056 m!7882906))

(assert (=> d!2238411 d!2238433))

(declare-fun d!2238435 () Bool)

(assert (=> d!2238435 (= (validRegex!9471 EmptyExpr!18357) true)))

(assert (=> d!2238415 d!2238435))

(declare-fun d!2238439 () Bool)

(declare-fun res!2926344 () Bool)

(declare-fun e!4315517 () Bool)

(assert (=> d!2238439 (=> res!2926344 e!4315517)))

(assert (=> d!2238439 (= res!2926344 ((_ is Nil!69677) lt!2571018))))

(assert (=> d!2238439 (= (noDuplicate!2889 lt!2571018) e!4315517)))

(declare-fun b!7186062 () Bool)

(declare-fun e!4315518 () Bool)

(assert (=> b!7186062 (= e!4315517 e!4315518)))

(declare-fun res!2926345 () Bool)

(assert (=> b!7186062 (=> (not res!2926345) (not e!4315518))))

(declare-fun contains!20719 (List!69801 Context!14618) Bool)

(assert (=> b!7186062 (= res!2926345 (not (contains!20719 (t!383824 lt!2571018) (h!76125 lt!2571018))))))

(declare-fun b!7186063 () Bool)

(assert (=> b!7186063 (= e!4315518 (noDuplicate!2889 (t!383824 lt!2571018)))))

(assert (= (and d!2238439 (not res!2926344)) b!7186062))

(assert (= (and b!7186062 res!2926345) b!7186063))

(declare-fun m!7882910 () Bool)

(assert (=> b!7186062 m!7882910))

(declare-fun m!7882912 () Bool)

(assert (=> b!7186063 m!7882912))

(assert (=> d!2238413 d!2238439))

(declare-fun d!2238441 () Bool)

(declare-fun e!4315527 () Bool)

(assert (=> d!2238441 e!4315527))

(declare-fun res!2926353 () Bool)

(assert (=> d!2238441 (=> (not res!2926353) (not e!4315527))))

(declare-fun res!2926352 () List!69801)

(assert (=> d!2238441 (= res!2926353 (noDuplicate!2889 res!2926352))))

(declare-fun e!4315529 () Bool)

(assert (=> d!2238441 e!4315529))

(assert (=> d!2238441 (= (choose!55397 z!3530) res!2926352)))

(declare-fun b!7186073 () Bool)

(declare-fun e!4315528 () Bool)

(declare-fun tp!1995507 () Bool)

(assert (=> b!7186073 (= e!4315528 tp!1995507)))

(declare-fun b!7186072 () Bool)

(declare-fun tp!1995506 () Bool)

(assert (=> b!7186072 (= e!4315529 (and (inv!88914 (h!76125 res!2926352)) e!4315528 tp!1995506))))

(declare-fun b!7186074 () Bool)

(assert (=> b!7186074 (= e!4315527 (= (content!14318 res!2926352) z!3530))))

(assert (= b!7186072 b!7186073))

(assert (= (and d!2238441 ((_ is Cons!69677) res!2926352)) b!7186072))

(assert (= (and d!2238441 res!2926353) b!7186074))

(declare-fun m!7882914 () Bool)

(assert (=> d!2238441 m!7882914))

(declare-fun m!7882916 () Bool)

(assert (=> b!7186072 m!7882916))

(declare-fun m!7882918 () Bool)

(assert (=> b!7186074 m!7882918))

(assert (=> d!2238413 d!2238441))

(declare-fun bs!1897941 () Bool)

(declare-fun d!2238443 () Bool)

(assert (= bs!1897941 (and d!2238443 d!2238407)))

(declare-fun lambda!437677 () Int)

(assert (=> bs!1897941 (= lambda!437677 lambda!437666)))

(declare-fun bs!1897942 () Bool)

(assert (= bs!1897942 (and d!2238443 d!2238417)))

(assert (=> bs!1897942 (= lambda!437677 lambda!437667)))

(declare-fun bs!1897943 () Bool)

(assert (= bs!1897943 (and d!2238443 d!2238431)))

(assert (=> bs!1897943 (= lambda!437677 lambda!437670)))

(declare-fun bs!1897944 () Bool)

(assert (= bs!1897944 (and d!2238443 d!2238433)))

(assert (=> bs!1897944 (= lambda!437677 lambda!437675)))

(assert (=> d!2238443 (= (inv!88914 setElem!53190) (forall!17182 (exprs!7809 setElem!53190) lambda!437677))))

(declare-fun bs!1897945 () Bool)

(assert (= bs!1897945 d!2238443))

(declare-fun m!7882920 () Bool)

(assert (=> bs!1897945 m!7882920))

(assert (=> setNonEmpty!53190 d!2238443))

(declare-fun b!7186076 () Bool)

(declare-fun e!4315531 () Bool)

(declare-fun tp!1995508 () Bool)

(declare-fun tp!1995509 () Bool)

(assert (=> b!7186076 (= e!4315531 (and tp!1995508 tp!1995509))))

(assert (=> b!7185974 (= tp!1995494 e!4315531)))

(assert (= (and b!7185974 ((_ is Cons!69676) (exprs!7809 setElem!53190))) b!7186076))

(declare-fun condSetEmpty!53191 () Bool)

(assert (=> setNonEmpty!53190 (= condSetEmpty!53191 (= setRest!53190 ((as const (Array Context!14618 Bool)) false)))))

(declare-fun setRes!53191 () Bool)

(assert (=> setNonEmpty!53190 (= tp!1995495 setRes!53191)))

(declare-fun setIsEmpty!53191 () Bool)

(assert (=> setIsEmpty!53191 setRes!53191))

(declare-fun setNonEmpty!53191 () Bool)

(declare-fun e!4315532 () Bool)

(declare-fun tp!1995511 () Bool)

(declare-fun setElem!53191 () Context!14618)

(assert (=> setNonEmpty!53191 (= setRes!53191 (and tp!1995511 (inv!88914 setElem!53191) e!4315532))))

(declare-fun setRest!53191 () (InoxSet Context!14618))

(assert (=> setNonEmpty!53191 (= setRest!53190 ((_ map or) (store ((as const (Array Context!14618 Bool)) false) setElem!53191 true) setRest!53191))))

(declare-fun b!7186077 () Bool)

(declare-fun tp!1995510 () Bool)

(assert (=> b!7186077 (= e!4315532 tp!1995510)))

(assert (= (and setNonEmpty!53190 condSetEmpty!53191) setIsEmpty!53191))

(assert (= (and setNonEmpty!53190 (not condSetEmpty!53191)) setNonEmpty!53191))

(assert (= setNonEmpty!53191 b!7186077))

(declare-fun m!7882930 () Bool)

(assert (=> setNonEmpty!53191 m!7882930))

(declare-fun b!7186088 () Bool)

(declare-fun e!4315535 () Bool)

(declare-fun tp_is_empty!46273 () Bool)

(assert (=> b!7186088 (= e!4315535 tp_is_empty!46273)))

(declare-fun b!7186091 () Bool)

(declare-fun tp!1995526 () Bool)

(declare-fun tp!1995522 () Bool)

(assert (=> b!7186091 (= e!4315535 (and tp!1995526 tp!1995522))))

(declare-fun b!7186089 () Bool)

(declare-fun tp!1995525 () Bool)

(declare-fun tp!1995524 () Bool)

(assert (=> b!7186089 (= e!4315535 (and tp!1995525 tp!1995524))))

(declare-fun b!7186090 () Bool)

(declare-fun tp!1995523 () Bool)

(assert (=> b!7186090 (= e!4315535 tp!1995523)))

(assert (=> b!7185979 (= tp!1995500 e!4315535)))

(assert (= (and b!7185979 ((_ is ElementMatch!18357) (h!76124 (exprs!7809 setElem!53187)))) b!7186088))

(assert (= (and b!7185979 ((_ is Concat!27202) (h!76124 (exprs!7809 setElem!53187)))) b!7186089))

(assert (= (and b!7185979 ((_ is Star!18357) (h!76124 (exprs!7809 setElem!53187)))) b!7186090))

(assert (= (and b!7185979 ((_ is Union!18357) (h!76124 (exprs!7809 setElem!53187)))) b!7186091))

(declare-fun b!7186092 () Bool)

(declare-fun e!4315536 () Bool)

(declare-fun tp!1995527 () Bool)

(declare-fun tp!1995528 () Bool)

(assert (=> b!7186092 (= e!4315536 (and tp!1995527 tp!1995528))))

(assert (=> b!7185979 (= tp!1995501 e!4315536)))

(assert (= (and b!7185979 ((_ is Cons!69676) (t!383823 (exprs!7809 setElem!53187)))) b!7186092))

(declare-fun b_lambda!275205 () Bool)

(assert (= b_lambda!275203 (or d!2238417 b_lambda!275205)))

(declare-fun bs!1897948 () Bool)

(declare-fun d!2238449 () Bool)

(assert (= bs!1897948 (and d!2238449 d!2238417)))

(assert (=> bs!1897948 (= (dynLambda!28374 lambda!437667 (h!76124 (exprs!7809 setElem!53187))) (validRegex!9471 (h!76124 (exprs!7809 setElem!53187))))))

(declare-fun m!7882934 () Bool)

(assert (=> bs!1897948 m!7882934))

(assert (=> b!7185993 d!2238449))

(declare-fun b_lambda!275207 () Bool)

(assert (= b_lambda!275201 (or d!2238407 b_lambda!275207)))

(declare-fun bs!1897949 () Bool)

(declare-fun d!2238451 () Bool)

(assert (= bs!1897949 (and d!2238451 d!2238407)))

(assert (=> bs!1897949 (= (dynLambda!28374 lambda!437666 (h!76124 (exprs!7809 (Context!14619 Nil!69676)))) (validRegex!9471 (h!76124 (exprs!7809 (Context!14619 Nil!69676)))))))

(declare-fun m!7882936 () Bool)

(assert (=> bs!1897949 m!7882936))

(assert (=> b!7185985 d!2238451))

(check-sat (not b!7186073) (not b!7186062) (not bm!655094) (not b!7185980) (not b_lambda!275205) (not b!7186072) (not b!7185992) (not b!7186063) (not bm!655092) (not b!7186048) (not b!7186089) (not b!7186042) (not b!7186090) (not d!2238421) (not d!2238441) (not b!7186092) (not b!7186049) (not b!7186019) (not b!7186051) (not d!2238431) (not b!7186077) (not d!2238443) (not b!7186076) (not b!7185994) tp_is_empty!46273 (not bs!1897949) (not d!2238433) (not b!7186047) (not b!7186091) (not setNonEmpty!53191) (not b!7186074) (not b!7186050) (not d!2238419) (not b!7186043) (not b!7186056) (not b_lambda!275207) (not b!7185986) (not bs!1897948))
(check-sat)

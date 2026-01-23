; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!699508 () Bool)

(assert start!699508)

(declare-fun b!7186229 () Bool)

(declare-fun e!4315626 () Bool)

(declare-fun e!4315628 () Bool)

(assert (=> b!7186229 (= e!4315626 e!4315628)))

(declare-fun res!2926413 () Bool)

(assert (=> b!7186229 (=> (not res!2926413) (not e!4315628))))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((C!36992 0))(
  ( (C!36993 (val!28444 Int)) )
))
(declare-datatypes ((Regex!18359 0))(
  ( (ElementMatch!18359 (c!1337887 C!36992)) (Concat!27204 (regOne!37230 Regex!18359) (regTwo!37230 Regex!18359)) (EmptyExpr!18359) (Star!18359 (reg!18688 Regex!18359)) (EmptyLang!18359) (Union!18359 (regOne!37231 Regex!18359) (regTwo!37231 Regex!18359)) )
))
(declare-datatypes ((List!69805 0))(
  ( (Nil!69681) (Cons!69681 (h!76129 Regex!18359) (t!383828 List!69805)) )
))
(declare-datatypes ((Context!14622 0))(
  ( (Context!14623 (exprs!7811 List!69805)) )
))
(declare-fun z!3530 () (InoxSet Context!14622))

(declare-fun lt!2571044 () Context!14622)

(assert (=> b!7186229 (= res!2926413 (= z!3530 (store ((as const (Array Context!14622 Bool)) false) lt!2571044 true)))))

(assert (=> b!7186229 (= lt!2571044 (Context!14623 Nil!69681))))

(declare-fun setIsEmpty!53201 () Bool)

(declare-fun setRes!53201 () Bool)

(assert (=> setIsEmpty!53201 setRes!53201))

(declare-fun b!7186230 () Bool)

(declare-fun res!2926414 () Bool)

(assert (=> b!7186230 (=> (not res!2926414) (not e!4315628))))

(declare-datatypes ((List!69806 0))(
  ( (Nil!69682) (Cons!69682 (h!76130 C!36992) (t!383829 List!69806)) )
))
(declare-fun s!7967 () List!69806)

(declare-fun isEmpty!40220 (List!69806) Bool)

(assert (=> b!7186230 (= res!2926414 (isEmpty!40220 s!7967))))

(declare-fun b!7186231 () Bool)

(declare-fun e!4315629 () Bool)

(declare-fun tp!1995578 () Bool)

(assert (=> b!7186231 (= e!4315629 tp!1995578)))

(declare-fun b!7186232 () Bool)

(declare-fun res!2926411 () Bool)

(assert (=> b!7186232 (=> (not res!2926411) (not e!4315626))))

(declare-fun focus!434 (Regex!18359) (InoxSet Context!14622))

(assert (=> b!7186232 (= res!2926411 (not (= z!3530 (focus!434 EmptyExpr!18359))))))

(declare-fun b!7186233 () Bool)

(declare-fun e!4315627 () Bool)

(declare-fun tp_is_empty!46279 () Bool)

(declare-fun tp!1995579 () Bool)

(assert (=> b!7186233 (= e!4315627 (and tp_is_empty!46279 tp!1995579))))

(declare-fun tp!1995577 () Bool)

(declare-fun setNonEmpty!53201 () Bool)

(declare-fun setElem!53201 () Context!14622)

(declare-fun inv!88919 (Context!14622) Bool)

(assert (=> setNonEmpty!53201 (= setRes!53201 (and tp!1995577 (inv!88919 setElem!53201) e!4315629))))

(declare-fun setRest!53201 () (InoxSet Context!14622))

(assert (=> setNonEmpty!53201 (= z!3530 ((_ map or) (store ((as const (Array Context!14622 Bool)) false) setElem!53201 true) setRest!53201))))

(declare-fun b!7186228 () Bool)

(declare-fun nullableContext!206 (Context!14622) Bool)

(assert (=> b!7186228 (= e!4315628 (not (nullableContext!206 lt!2571044)))))

(declare-fun res!2926412 () Bool)

(assert (=> start!699508 (=> (not res!2926412) (not e!4315626))))

(declare-datatypes ((List!69807 0))(
  ( (Nil!69683) (Cons!69683 (h!76131 Context!14622) (t!383830 List!69807)) )
))
(declare-fun unfocusZipper!2619 (List!69807) Regex!18359)

(declare-fun toList!11302 ((InoxSet Context!14622)) List!69807)

(assert (=> start!699508 (= res!2926412 (= (unfocusZipper!2619 (toList!11302 z!3530)) EmptyExpr!18359))))

(assert (=> start!699508 e!4315626))

(declare-fun condSetEmpty!53201 () Bool)

(assert (=> start!699508 (= condSetEmpty!53201 (= z!3530 ((as const (Array Context!14622 Bool)) false)))))

(assert (=> start!699508 setRes!53201))

(assert (=> start!699508 e!4315627))

(assert (= (and start!699508 res!2926412) b!7186232))

(assert (= (and b!7186232 res!2926411) b!7186229))

(assert (= (and b!7186229 res!2926413) b!7186230))

(assert (= (and b!7186230 res!2926414) b!7186228))

(assert (= (and start!699508 condSetEmpty!53201) setIsEmpty!53201))

(assert (= (and start!699508 (not condSetEmpty!53201)) setNonEmpty!53201))

(assert (= setNonEmpty!53201 b!7186231))

(get-info :version)

(assert (= (and start!699508 ((_ is Cons!69682) s!7967)) b!7186233))

(declare-fun m!7883004 () Bool)

(assert (=> b!7186232 m!7883004))

(declare-fun m!7883006 () Bool)

(assert (=> b!7186230 m!7883006))

(declare-fun m!7883008 () Bool)

(assert (=> start!699508 m!7883008))

(assert (=> start!699508 m!7883008))

(declare-fun m!7883010 () Bool)

(assert (=> start!699508 m!7883010))

(declare-fun m!7883012 () Bool)

(assert (=> b!7186229 m!7883012))

(declare-fun m!7883014 () Bool)

(assert (=> setNonEmpty!53201 m!7883014))

(declare-fun m!7883016 () Bool)

(assert (=> b!7186228 m!7883016))

(check-sat (not b!7186233) (not b!7186232) tp_is_empty!46279 (not b!7186231) (not b!7186228) (not b!7186230) (not setNonEmpty!53201) (not start!699508))
(check-sat)
(get-model)

(declare-fun d!2238468 () Bool)

(declare-fun lt!2571047 () Regex!18359)

(declare-fun validRegex!9474 (Regex!18359) Bool)

(assert (=> d!2238468 (validRegex!9474 lt!2571047)))

(declare-fun generalisedUnion!2776 (List!69805) Regex!18359)

(declare-fun unfocusZipperList!2332 (List!69807) List!69805)

(assert (=> d!2238468 (= lt!2571047 (generalisedUnion!2776 (unfocusZipperList!2332 (toList!11302 z!3530))))))

(assert (=> d!2238468 (= (unfocusZipper!2619 (toList!11302 z!3530)) lt!2571047)))

(declare-fun bs!1897963 () Bool)

(assert (= bs!1897963 d!2238468))

(declare-fun m!7883018 () Bool)

(assert (=> bs!1897963 m!7883018))

(assert (=> bs!1897963 m!7883008))

(declare-fun m!7883020 () Bool)

(assert (=> bs!1897963 m!7883020))

(assert (=> bs!1897963 m!7883020))

(declare-fun m!7883022 () Bool)

(assert (=> bs!1897963 m!7883022))

(assert (=> start!699508 d!2238468))

(declare-fun d!2238472 () Bool)

(declare-fun e!4315634 () Bool)

(assert (=> d!2238472 e!4315634))

(declare-fun res!2926419 () Bool)

(assert (=> d!2238472 (=> (not res!2926419) (not e!4315634))))

(declare-fun lt!2571055 () List!69807)

(declare-fun noDuplicate!2892 (List!69807) Bool)

(assert (=> d!2238472 (= res!2926419 (noDuplicate!2892 lt!2571055))))

(declare-fun choose!55400 ((InoxSet Context!14622)) List!69807)

(assert (=> d!2238472 (= lt!2571055 (choose!55400 z!3530))))

(assert (=> d!2238472 (= (toList!11302 z!3530) lt!2571055)))

(declare-fun b!7186238 () Bool)

(declare-fun content!14321 (List!69807) (InoxSet Context!14622))

(assert (=> b!7186238 (= e!4315634 (= (content!14321 lt!2571055) z!3530))))

(assert (= (and d!2238472 res!2926419) b!7186238))

(declare-fun m!7883030 () Bool)

(assert (=> d!2238472 m!7883030))

(declare-fun m!7883032 () Bool)

(assert (=> d!2238472 m!7883032))

(declare-fun m!7883034 () Bool)

(assert (=> b!7186238 m!7883034))

(assert (=> start!699508 d!2238472))

(declare-fun d!2238476 () Bool)

(declare-fun lambda!437694 () Int)

(declare-fun forall!17185 (List!69805 Int) Bool)

(assert (=> d!2238476 (= (inv!88919 setElem!53201) (forall!17185 (exprs!7811 setElem!53201) lambda!437694))))

(declare-fun bs!1897968 () Bool)

(assert (= bs!1897968 d!2238476))

(declare-fun m!7883056 () Bool)

(assert (=> bs!1897968 m!7883056))

(assert (=> setNonEmpty!53201 d!2238476))

(declare-fun d!2238486 () Bool)

(assert (=> d!2238486 (= (isEmpty!40220 s!7967) ((_ is Nil!69682) s!7967))))

(assert (=> b!7186230 d!2238486))

(declare-fun bs!1897969 () Bool)

(declare-fun d!2238488 () Bool)

(assert (= bs!1897969 (and d!2238488 d!2238476)))

(declare-fun lambda!437697 () Int)

(assert (=> bs!1897969 (not (= lambda!437697 lambda!437694))))

(assert (=> d!2238488 (= (nullableContext!206 lt!2571044) (forall!17185 (exprs!7811 lt!2571044) lambda!437697))))

(declare-fun bs!1897970 () Bool)

(assert (= bs!1897970 d!2238488))

(declare-fun m!7883058 () Bool)

(assert (=> bs!1897970 m!7883058))

(assert (=> b!7186228 d!2238488))

(declare-fun d!2238490 () Bool)

(declare-fun e!4315650 () Bool)

(assert (=> d!2238490 e!4315650))

(declare-fun res!2926428 () Bool)

(assert (=> d!2238490 (=> (not res!2926428) (not e!4315650))))

(assert (=> d!2238490 (= res!2926428 (validRegex!9474 EmptyExpr!18359))))

(assert (=> d!2238490 (= (focus!434 EmptyExpr!18359) (store ((as const (Array Context!14622 Bool)) false) (Context!14623 (Cons!69681 EmptyExpr!18359 Nil!69681)) true))))

(declare-fun b!7186260 () Bool)

(assert (=> b!7186260 (= e!4315650 (= (unfocusZipper!2619 (toList!11302 (store ((as const (Array Context!14622 Bool)) false) (Context!14623 (Cons!69681 EmptyExpr!18359 Nil!69681)) true))) EmptyExpr!18359))))

(assert (= (and d!2238490 res!2926428) b!7186260))

(declare-fun m!7883060 () Bool)

(assert (=> d!2238490 m!7883060))

(declare-fun m!7883062 () Bool)

(assert (=> d!2238490 m!7883062))

(assert (=> b!7186260 m!7883062))

(assert (=> b!7186260 m!7883062))

(declare-fun m!7883064 () Bool)

(assert (=> b!7186260 m!7883064))

(assert (=> b!7186260 m!7883064))

(declare-fun m!7883066 () Bool)

(assert (=> b!7186260 m!7883066))

(assert (=> b!7186232 d!2238490))

(declare-fun b!7186265 () Bool)

(declare-fun e!4315653 () Bool)

(declare-fun tp!1995597 () Bool)

(assert (=> b!7186265 (= e!4315653 (and tp_is_empty!46279 tp!1995597))))

(assert (=> b!7186233 (= tp!1995579 e!4315653)))

(assert (= (and b!7186233 ((_ is Cons!69682) (t!383829 s!7967))) b!7186265))

(declare-fun condSetEmpty!53207 () Bool)

(assert (=> setNonEmpty!53201 (= condSetEmpty!53207 (= setRest!53201 ((as const (Array Context!14622 Bool)) false)))))

(declare-fun setRes!53207 () Bool)

(assert (=> setNonEmpty!53201 (= tp!1995577 setRes!53207)))

(declare-fun setIsEmpty!53207 () Bool)

(assert (=> setIsEmpty!53207 setRes!53207))

(declare-fun tp!1995603 () Bool)

(declare-fun setElem!53207 () Context!14622)

(declare-fun setNonEmpty!53207 () Bool)

(declare-fun e!4315656 () Bool)

(assert (=> setNonEmpty!53207 (= setRes!53207 (and tp!1995603 (inv!88919 setElem!53207) e!4315656))))

(declare-fun setRest!53207 () (InoxSet Context!14622))

(assert (=> setNonEmpty!53207 (= setRest!53201 ((_ map or) (store ((as const (Array Context!14622 Bool)) false) setElem!53207 true) setRest!53207))))

(declare-fun b!7186270 () Bool)

(declare-fun tp!1995602 () Bool)

(assert (=> b!7186270 (= e!4315656 tp!1995602)))

(assert (= (and setNonEmpty!53201 condSetEmpty!53207) setIsEmpty!53207))

(assert (= (and setNonEmpty!53201 (not condSetEmpty!53207)) setNonEmpty!53207))

(assert (= setNonEmpty!53207 b!7186270))

(declare-fun m!7883068 () Bool)

(assert (=> setNonEmpty!53207 m!7883068))

(declare-fun b!7186275 () Bool)

(declare-fun e!4315659 () Bool)

(declare-fun tp!1995608 () Bool)

(declare-fun tp!1995609 () Bool)

(assert (=> b!7186275 (= e!4315659 (and tp!1995608 tp!1995609))))

(assert (=> b!7186231 (= tp!1995578 e!4315659)))

(assert (= (and b!7186231 ((_ is Cons!69681) (exprs!7811 setElem!53201))) b!7186275))

(check-sat tp_is_empty!46279 (not d!2238472) (not d!2238488) (not b!7186260) (not d!2238476) (not b!7186238) (not d!2238490) (not b!7186275) (not b!7186265) (not d!2238468) (not setNonEmpty!53207) (not b!7186270))
(check-sat)
(get-model)

(declare-fun d!2238496 () Bool)

(declare-fun res!2926454 () Bool)

(declare-fun e!4315703 () Bool)

(assert (=> d!2238496 (=> res!2926454 e!4315703)))

(assert (=> d!2238496 (= res!2926454 ((_ is Nil!69681) (exprs!7811 setElem!53201)))))

(assert (=> d!2238496 (= (forall!17185 (exprs!7811 setElem!53201) lambda!437694) e!4315703)))

(declare-fun b!7186337 () Bool)

(declare-fun e!4315704 () Bool)

(assert (=> b!7186337 (= e!4315703 e!4315704)))

(declare-fun res!2926455 () Bool)

(assert (=> b!7186337 (=> (not res!2926455) (not e!4315704))))

(declare-fun dynLambda!28375 (Int Regex!18359) Bool)

(assert (=> b!7186337 (= res!2926455 (dynLambda!28375 lambda!437694 (h!76129 (exprs!7811 setElem!53201))))))

(declare-fun b!7186338 () Bool)

(assert (=> b!7186338 (= e!4315704 (forall!17185 (t!383828 (exprs!7811 setElem!53201)) lambda!437694))))

(assert (= (and d!2238496 (not res!2926454)) b!7186337))

(assert (= (and b!7186337 res!2926455) b!7186338))

(declare-fun b_lambda!275213 () Bool)

(assert (=> (not b_lambda!275213) (not b!7186337)))

(declare-fun m!7883096 () Bool)

(assert (=> b!7186337 m!7883096))

(declare-fun m!7883098 () Bool)

(assert (=> b!7186338 m!7883098))

(assert (=> d!2238476 d!2238496))

(declare-fun d!2238500 () Bool)

(assert (=> d!2238500 (= (validRegex!9474 EmptyExpr!18359) true)))

(assert (=> d!2238490 d!2238500))

(declare-fun d!2238502 () Bool)

(declare-fun c!1337913 () Bool)

(assert (=> d!2238502 (= c!1337913 ((_ is Nil!69683) lt!2571055))))

(declare-fun e!4315710 () (InoxSet Context!14622))

(assert (=> d!2238502 (= (content!14321 lt!2571055) e!4315710)))

(declare-fun b!7186349 () Bool)

(assert (=> b!7186349 (= e!4315710 ((as const (Array Context!14622 Bool)) false))))

(declare-fun b!7186350 () Bool)

(assert (=> b!7186350 (= e!4315710 ((_ map or) (store ((as const (Array Context!14622 Bool)) false) (h!76131 lt!2571055) true) (content!14321 (t!383830 lt!2571055))))))

(assert (= (and d!2238502 c!1337913) b!7186349))

(assert (= (and d!2238502 (not c!1337913)) b!7186350))

(declare-fun m!7883106 () Bool)

(assert (=> b!7186350 m!7883106))

(declare-fun m!7883108 () Bool)

(assert (=> b!7186350 m!7883108))

(assert (=> b!7186238 d!2238502))

(declare-fun d!2238506 () Bool)

(declare-fun res!2926466 () Bool)

(declare-fun e!4315721 () Bool)

(assert (=> d!2238506 (=> res!2926466 e!4315721)))

(assert (=> d!2238506 (= res!2926466 ((_ is Nil!69683) lt!2571055))))

(assert (=> d!2238506 (= (noDuplicate!2892 lt!2571055) e!4315721)))

(declare-fun b!7186361 () Bool)

(declare-fun e!4315722 () Bool)

(assert (=> b!7186361 (= e!4315721 e!4315722)))

(declare-fun res!2926467 () Bool)

(assert (=> b!7186361 (=> (not res!2926467) (not e!4315722))))

(declare-fun contains!20720 (List!69807 Context!14622) Bool)

(assert (=> b!7186361 (= res!2926467 (not (contains!20720 (t!383830 lt!2571055) (h!76131 lt!2571055))))))

(declare-fun b!7186362 () Bool)

(assert (=> b!7186362 (= e!4315722 (noDuplicate!2892 (t!383830 lt!2571055)))))

(assert (= (and d!2238506 (not res!2926466)) b!7186361))

(assert (= (and b!7186361 res!2926467) b!7186362))

(declare-fun m!7883116 () Bool)

(assert (=> b!7186361 m!7883116))

(declare-fun m!7883118 () Bool)

(assert (=> b!7186362 m!7883118))

(assert (=> d!2238472 d!2238506))

(declare-fun d!2238514 () Bool)

(declare-fun e!4315734 () Bool)

(assert (=> d!2238514 e!4315734))

(declare-fun res!2926476 () Bool)

(assert (=> d!2238514 (=> (not res!2926476) (not e!4315734))))

(declare-fun res!2926475 () List!69807)

(assert (=> d!2238514 (= res!2926476 (noDuplicate!2892 res!2926475))))

(declare-fun e!4315732 () Bool)

(assert (=> d!2238514 e!4315732))

(assert (=> d!2238514 (= (choose!55400 z!3530) res!2926475)))

(declare-fun b!7186373 () Bool)

(declare-fun e!4315733 () Bool)

(declare-fun tp!1995615 () Bool)

(assert (=> b!7186373 (= e!4315733 tp!1995615)))

(declare-fun b!7186372 () Bool)

(declare-fun tp!1995614 () Bool)

(assert (=> b!7186372 (= e!4315732 (and (inv!88919 (h!76131 res!2926475)) e!4315733 tp!1995614))))

(declare-fun b!7186374 () Bool)

(assert (=> b!7186374 (= e!4315734 (= (content!14321 res!2926475) z!3530))))

(assert (= b!7186372 b!7186373))

(assert (= (and d!2238514 ((_ is Cons!69683) res!2926475)) b!7186372))

(assert (= (and d!2238514 res!2926476) b!7186374))

(declare-fun m!7883136 () Bool)

(assert (=> d!2238514 m!7883136))

(declare-fun m!7883138 () Bool)

(assert (=> b!7186372 m!7883138))

(declare-fun m!7883140 () Bool)

(assert (=> b!7186374 m!7883140))

(assert (=> d!2238472 d!2238514))

(declare-fun d!2238522 () Bool)

(declare-fun lt!2571065 () Regex!18359)

(assert (=> d!2238522 (validRegex!9474 lt!2571065)))

(assert (=> d!2238522 (= lt!2571065 (generalisedUnion!2776 (unfocusZipperList!2332 (toList!11302 (store ((as const (Array Context!14622 Bool)) false) (Context!14623 (Cons!69681 EmptyExpr!18359 Nil!69681)) true)))))))

(assert (=> d!2238522 (= (unfocusZipper!2619 (toList!11302 (store ((as const (Array Context!14622 Bool)) false) (Context!14623 (Cons!69681 EmptyExpr!18359 Nil!69681)) true))) lt!2571065)))

(declare-fun bs!1897982 () Bool)

(assert (= bs!1897982 d!2238522))

(declare-fun m!7883150 () Bool)

(assert (=> bs!1897982 m!7883150))

(assert (=> bs!1897982 m!7883064))

(declare-fun m!7883152 () Bool)

(assert (=> bs!1897982 m!7883152))

(assert (=> bs!1897982 m!7883152))

(declare-fun m!7883154 () Bool)

(assert (=> bs!1897982 m!7883154))

(assert (=> b!7186260 d!2238522))

(declare-fun d!2238528 () Bool)

(declare-fun e!4315754 () Bool)

(assert (=> d!2238528 e!4315754))

(declare-fun res!2926489 () Bool)

(assert (=> d!2238528 (=> (not res!2926489) (not e!4315754))))

(declare-fun lt!2571066 () List!69807)

(assert (=> d!2238528 (= res!2926489 (noDuplicate!2892 lt!2571066))))

(assert (=> d!2238528 (= lt!2571066 (choose!55400 (store ((as const (Array Context!14622 Bool)) false) (Context!14623 (Cons!69681 EmptyExpr!18359 Nil!69681)) true)))))

(assert (=> d!2238528 (= (toList!11302 (store ((as const (Array Context!14622 Bool)) false) (Context!14623 (Cons!69681 EmptyExpr!18359 Nil!69681)) true)) lt!2571066)))

(declare-fun b!7186397 () Bool)

(assert (=> b!7186397 (= e!4315754 (= (content!14321 lt!2571066) (store ((as const (Array Context!14622 Bool)) false) (Context!14623 (Cons!69681 EmptyExpr!18359 Nil!69681)) true)))))

(assert (= (and d!2238528 res!2926489) b!7186397))

(declare-fun m!7883164 () Bool)

(assert (=> d!2238528 m!7883164))

(assert (=> d!2238528 m!7883062))

(declare-fun m!7883166 () Bool)

(assert (=> d!2238528 m!7883166))

(declare-fun m!7883168 () Bool)

(assert (=> b!7186397 m!7883168))

(assert (=> b!7186260 d!2238528))

(declare-fun d!2238530 () Bool)

(declare-fun res!2926490 () Bool)

(declare-fun e!4315757 () Bool)

(assert (=> d!2238530 (=> res!2926490 e!4315757)))

(assert (=> d!2238530 (= res!2926490 ((_ is Nil!69681) (exprs!7811 lt!2571044)))))

(assert (=> d!2238530 (= (forall!17185 (exprs!7811 lt!2571044) lambda!437697) e!4315757)))

(declare-fun b!7186408 () Bool)

(declare-fun e!4315758 () Bool)

(assert (=> b!7186408 (= e!4315757 e!4315758)))

(declare-fun res!2926491 () Bool)

(assert (=> b!7186408 (=> (not res!2926491) (not e!4315758))))

(assert (=> b!7186408 (= res!2926491 (dynLambda!28375 lambda!437697 (h!76129 (exprs!7811 lt!2571044))))))

(declare-fun b!7186409 () Bool)

(assert (=> b!7186409 (= e!4315758 (forall!17185 (t!383828 (exprs!7811 lt!2571044)) lambda!437697))))

(assert (= (and d!2238530 (not res!2926490)) b!7186408))

(assert (= (and b!7186408 res!2926491) b!7186409))

(declare-fun b_lambda!275219 () Bool)

(assert (=> (not b_lambda!275219) (not b!7186408)))

(declare-fun m!7883170 () Bool)

(assert (=> b!7186408 m!7883170))

(declare-fun m!7883172 () Bool)

(assert (=> b!7186409 m!7883172))

(assert (=> d!2238488 d!2238530))

(declare-fun b!7186435 () Bool)

(declare-fun res!2926505 () Bool)

(declare-fun e!4315779 () Bool)

(assert (=> b!7186435 (=> res!2926505 e!4315779)))

(assert (=> b!7186435 (= res!2926505 (not ((_ is Concat!27204) lt!2571047)))))

(declare-fun e!4315778 () Bool)

(assert (=> b!7186435 (= e!4315778 e!4315779)))

(declare-fun b!7186436 () Bool)

(declare-fun e!4315781 () Bool)

(declare-fun call!655124 () Bool)

(assert (=> b!7186436 (= e!4315781 call!655124)))

(declare-fun c!1337922 () Bool)

(declare-fun bm!655119 () Bool)

(declare-fun c!1337921 () Bool)

(assert (=> bm!655119 (= call!655124 (validRegex!9474 (ite c!1337922 (reg!18688 lt!2571047) (ite c!1337921 (regTwo!37231 lt!2571047) (regTwo!37230 lt!2571047)))))))

(declare-fun bm!655120 () Bool)

(declare-fun call!655125 () Bool)

(assert (=> bm!655120 (= call!655125 (validRegex!9474 (ite c!1337921 (regOne!37231 lt!2571047) (regOne!37230 lt!2571047))))))

(declare-fun b!7186437 () Bool)

(declare-fun e!4315782 () Bool)

(assert (=> b!7186437 (= e!4315782 e!4315778)))

(assert (=> b!7186437 (= c!1337921 ((_ is Union!18359) lt!2571047))))

(declare-fun b!7186438 () Bool)

(declare-fun e!4315780 () Bool)

(declare-fun call!655126 () Bool)

(assert (=> b!7186438 (= e!4315780 call!655126)))

(declare-fun b!7186439 () Bool)

(declare-fun res!2926504 () Bool)

(assert (=> b!7186439 (=> (not res!2926504) (not e!4315780))))

(assert (=> b!7186439 (= res!2926504 call!655125)))

(assert (=> b!7186439 (= e!4315778 e!4315780)))

(declare-fun b!7186440 () Bool)

(assert (=> b!7186440 (= e!4315782 e!4315781)))

(declare-fun res!2926506 () Bool)

(declare-fun nullable!7781 (Regex!18359) Bool)

(assert (=> b!7186440 (= res!2926506 (not (nullable!7781 (reg!18688 lt!2571047))))))

(assert (=> b!7186440 (=> (not res!2926506) (not e!4315781))))

(declare-fun b!7186442 () Bool)

(declare-fun e!4315777 () Bool)

(assert (=> b!7186442 (= e!4315777 e!4315782)))

(assert (=> b!7186442 (= c!1337922 ((_ is Star!18359) lt!2571047))))

(declare-fun bm!655121 () Bool)

(assert (=> bm!655121 (= call!655126 call!655124)))

(declare-fun b!7186443 () Bool)

(declare-fun e!4315783 () Bool)

(assert (=> b!7186443 (= e!4315783 call!655126)))

(declare-fun b!7186441 () Bool)

(assert (=> b!7186441 (= e!4315779 e!4315783)))

(declare-fun res!2926503 () Bool)

(assert (=> b!7186441 (=> (not res!2926503) (not e!4315783))))

(assert (=> b!7186441 (= res!2926503 call!655125)))

(declare-fun d!2238532 () Bool)

(declare-fun res!2926502 () Bool)

(assert (=> d!2238532 (=> res!2926502 e!4315777)))

(assert (=> d!2238532 (= res!2926502 ((_ is ElementMatch!18359) lt!2571047))))

(assert (=> d!2238532 (= (validRegex!9474 lt!2571047) e!4315777)))

(assert (= (and d!2238532 (not res!2926502)) b!7186442))

(assert (= (and b!7186442 c!1337922) b!7186440))

(assert (= (and b!7186442 (not c!1337922)) b!7186437))

(assert (= (and b!7186440 res!2926506) b!7186436))

(assert (= (and b!7186437 c!1337921) b!7186439))

(assert (= (and b!7186437 (not c!1337921)) b!7186435))

(assert (= (and b!7186439 res!2926504) b!7186438))

(assert (= (and b!7186435 (not res!2926505)) b!7186441))

(assert (= (and b!7186441 res!2926503) b!7186443))

(assert (= (or b!7186439 b!7186441) bm!655120))

(assert (= (or b!7186438 b!7186443) bm!655121))

(assert (= (or b!7186436 bm!655121) bm!655119))

(declare-fun m!7883178 () Bool)

(assert (=> bm!655119 m!7883178))

(declare-fun m!7883180 () Bool)

(assert (=> bm!655120 m!7883180))

(declare-fun m!7883182 () Bool)

(assert (=> b!7186440 m!7883182))

(assert (=> d!2238468 d!2238532))

(declare-fun bs!1897985 () Bool)

(declare-fun d!2238538 () Bool)

(assert (= bs!1897985 (and d!2238538 d!2238476)))

(declare-fun lambda!437707 () Int)

(assert (=> bs!1897985 (= lambda!437707 lambda!437694)))

(declare-fun bs!1897986 () Bool)

(assert (= bs!1897986 (and d!2238538 d!2238488)))

(assert (=> bs!1897986 (not (= lambda!437707 lambda!437697))))

(declare-fun b!7186464 () Bool)

(declare-fun e!4315798 () Regex!18359)

(assert (=> b!7186464 (= e!4315798 (h!76129 (unfocusZipperList!2332 (toList!11302 z!3530))))))

(declare-fun b!7186465 () Bool)

(declare-fun e!4315800 () Bool)

(declare-fun isEmpty!40222 (List!69805) Bool)

(assert (=> b!7186465 (= e!4315800 (isEmpty!40222 (t!383828 (unfocusZipperList!2332 (toList!11302 z!3530)))))))

(declare-fun b!7186466 () Bool)

(declare-fun e!4315796 () Bool)

(declare-fun lt!2571069 () Regex!18359)

(declare-fun head!14679 (List!69805) Regex!18359)

(assert (=> b!7186466 (= e!4315796 (= lt!2571069 (head!14679 (unfocusZipperList!2332 (toList!11302 z!3530)))))))

(declare-fun e!4315799 () Bool)

(assert (=> d!2238538 e!4315799))

(declare-fun res!2926511 () Bool)

(assert (=> d!2238538 (=> (not res!2926511) (not e!4315799))))

(assert (=> d!2238538 (= res!2926511 (validRegex!9474 lt!2571069))))

(assert (=> d!2238538 (= lt!2571069 e!4315798)))

(declare-fun c!1337932 () Bool)

(assert (=> d!2238538 (= c!1337932 e!4315800)))

(declare-fun res!2926512 () Bool)

(assert (=> d!2238538 (=> (not res!2926512) (not e!4315800))))

(assert (=> d!2238538 (= res!2926512 ((_ is Cons!69681) (unfocusZipperList!2332 (toList!11302 z!3530))))))

(assert (=> d!2238538 (forall!17185 (unfocusZipperList!2332 (toList!11302 z!3530)) lambda!437707)))

(assert (=> d!2238538 (= (generalisedUnion!2776 (unfocusZipperList!2332 (toList!11302 z!3530))) lt!2571069)))

(declare-fun b!7186467 () Bool)

(declare-fun e!4315797 () Regex!18359)

(assert (=> b!7186467 (= e!4315797 EmptyLang!18359)))

(declare-fun b!7186468 () Bool)

(declare-fun e!4315801 () Bool)

(declare-fun isEmptyLang!2154 (Regex!18359) Bool)

(assert (=> b!7186468 (= e!4315801 (isEmptyLang!2154 lt!2571069))))

(declare-fun b!7186469 () Bool)

(assert (=> b!7186469 (= e!4315801 e!4315796)))

(declare-fun c!1337931 () Bool)

(declare-fun tail!14076 (List!69805) List!69805)

(assert (=> b!7186469 (= c!1337931 (isEmpty!40222 (tail!14076 (unfocusZipperList!2332 (toList!11302 z!3530)))))))

(declare-fun b!7186470 () Bool)

(declare-fun isUnion!1582 (Regex!18359) Bool)

(assert (=> b!7186470 (= e!4315796 (isUnion!1582 lt!2571069))))

(declare-fun b!7186471 () Bool)

(assert (=> b!7186471 (= e!4315797 (Union!18359 (h!76129 (unfocusZipperList!2332 (toList!11302 z!3530))) (generalisedUnion!2776 (t!383828 (unfocusZipperList!2332 (toList!11302 z!3530))))))))

(declare-fun b!7186472 () Bool)

(assert (=> b!7186472 (= e!4315798 e!4315797)))

(declare-fun c!1337933 () Bool)

(assert (=> b!7186472 (= c!1337933 ((_ is Cons!69681) (unfocusZipperList!2332 (toList!11302 z!3530))))))

(declare-fun b!7186473 () Bool)

(assert (=> b!7186473 (= e!4315799 e!4315801)))

(declare-fun c!1337934 () Bool)

(assert (=> b!7186473 (= c!1337934 (isEmpty!40222 (unfocusZipperList!2332 (toList!11302 z!3530))))))

(assert (= (and d!2238538 res!2926512) b!7186465))

(assert (= (and d!2238538 c!1337932) b!7186464))

(assert (= (and d!2238538 (not c!1337932)) b!7186472))

(assert (= (and b!7186472 c!1337933) b!7186471))

(assert (= (and b!7186472 (not c!1337933)) b!7186467))

(assert (= (and d!2238538 res!2926511) b!7186473))

(assert (= (and b!7186473 c!1337934) b!7186468))

(assert (= (and b!7186473 (not c!1337934)) b!7186469))

(assert (= (and b!7186469 c!1337931) b!7186466))

(assert (= (and b!7186469 (not c!1337931)) b!7186470))

(declare-fun m!7883184 () Bool)

(assert (=> b!7186470 m!7883184))

(declare-fun m!7883186 () Bool)

(assert (=> d!2238538 m!7883186))

(assert (=> d!2238538 m!7883020))

(declare-fun m!7883188 () Bool)

(assert (=> d!2238538 m!7883188))

(assert (=> b!7186469 m!7883020))

(declare-fun m!7883190 () Bool)

(assert (=> b!7186469 m!7883190))

(assert (=> b!7186469 m!7883190))

(declare-fun m!7883192 () Bool)

(assert (=> b!7186469 m!7883192))

(declare-fun m!7883194 () Bool)

(assert (=> b!7186468 m!7883194))

(assert (=> b!7186466 m!7883020))

(declare-fun m!7883196 () Bool)

(assert (=> b!7186466 m!7883196))

(declare-fun m!7883198 () Bool)

(assert (=> b!7186465 m!7883198))

(assert (=> b!7186473 m!7883020))

(declare-fun m!7883200 () Bool)

(assert (=> b!7186473 m!7883200))

(declare-fun m!7883202 () Bool)

(assert (=> b!7186471 m!7883202))

(assert (=> d!2238468 d!2238538))

(declare-fun bs!1897987 () Bool)

(declare-fun d!2238540 () Bool)

(assert (= bs!1897987 (and d!2238540 d!2238476)))

(declare-fun lambda!437710 () Int)

(assert (=> bs!1897987 (= lambda!437710 lambda!437694)))

(declare-fun bs!1897988 () Bool)

(assert (= bs!1897988 (and d!2238540 d!2238488)))

(assert (=> bs!1897988 (not (= lambda!437710 lambda!437697))))

(declare-fun bs!1897989 () Bool)

(assert (= bs!1897989 (and d!2238540 d!2238538)))

(assert (=> bs!1897989 (= lambda!437710 lambda!437707)))

(declare-fun lt!2571072 () List!69805)

(assert (=> d!2238540 (forall!17185 lt!2571072 lambda!437710)))

(declare-fun e!4315804 () List!69805)

(assert (=> d!2238540 (= lt!2571072 e!4315804)))

(declare-fun c!1337937 () Bool)

(assert (=> d!2238540 (= c!1337937 ((_ is Cons!69683) (toList!11302 z!3530)))))

(assert (=> d!2238540 (= (unfocusZipperList!2332 (toList!11302 z!3530)) lt!2571072)))

(declare-fun b!7186478 () Bool)

(declare-fun generalisedConcat!2464 (List!69805) Regex!18359)

(assert (=> b!7186478 (= e!4315804 (Cons!69681 (generalisedConcat!2464 (exprs!7811 (h!76131 (toList!11302 z!3530)))) (unfocusZipperList!2332 (t!383830 (toList!11302 z!3530)))))))

(declare-fun b!7186479 () Bool)

(assert (=> b!7186479 (= e!4315804 Nil!69681)))

(assert (= (and d!2238540 c!1337937) b!7186478))

(assert (= (and d!2238540 (not c!1337937)) b!7186479))

(declare-fun m!7883204 () Bool)

(assert (=> d!2238540 m!7883204))

(declare-fun m!7883206 () Bool)

(assert (=> b!7186478 m!7883206))

(declare-fun m!7883208 () Bool)

(assert (=> b!7186478 m!7883208))

(assert (=> d!2238468 d!2238540))

(declare-fun bs!1897990 () Bool)

(declare-fun d!2238542 () Bool)

(assert (= bs!1897990 (and d!2238542 d!2238476)))

(declare-fun lambda!437711 () Int)

(assert (=> bs!1897990 (= lambda!437711 lambda!437694)))

(declare-fun bs!1897991 () Bool)

(assert (= bs!1897991 (and d!2238542 d!2238488)))

(assert (=> bs!1897991 (not (= lambda!437711 lambda!437697))))

(declare-fun bs!1897992 () Bool)

(assert (= bs!1897992 (and d!2238542 d!2238538)))

(assert (=> bs!1897992 (= lambda!437711 lambda!437707)))

(declare-fun bs!1897993 () Bool)

(assert (= bs!1897993 (and d!2238542 d!2238540)))

(assert (=> bs!1897993 (= lambda!437711 lambda!437710)))

(assert (=> d!2238542 (= (inv!88919 setElem!53207) (forall!17185 (exprs!7811 setElem!53207) lambda!437711))))

(declare-fun bs!1897994 () Bool)

(assert (= bs!1897994 d!2238542))

(declare-fun m!7883210 () Bool)

(assert (=> bs!1897994 m!7883210))

(assert (=> setNonEmpty!53207 d!2238542))

(declare-fun b!7186480 () Bool)

(declare-fun e!4315805 () Bool)

(declare-fun tp!1995644 () Bool)

(assert (=> b!7186480 (= e!4315805 (and tp_is_empty!46279 tp!1995644))))

(assert (=> b!7186265 (= tp!1995597 e!4315805)))

(assert (= (and b!7186265 ((_ is Cons!69682) (t!383829 (t!383829 s!7967)))) b!7186480))

(declare-fun b!7186492 () Bool)

(declare-fun e!4315808 () Bool)

(declare-fun tp!1995655 () Bool)

(declare-fun tp!1995656 () Bool)

(assert (=> b!7186492 (= e!4315808 (and tp!1995655 tp!1995656))))

(declare-fun b!7186493 () Bool)

(declare-fun tp!1995657 () Bool)

(assert (=> b!7186493 (= e!4315808 tp!1995657)))

(declare-fun b!7186494 () Bool)

(declare-fun tp!1995658 () Bool)

(declare-fun tp!1995659 () Bool)

(assert (=> b!7186494 (= e!4315808 (and tp!1995658 tp!1995659))))

(declare-fun b!7186491 () Bool)

(assert (=> b!7186491 (= e!4315808 tp_is_empty!46279)))

(assert (=> b!7186275 (= tp!1995608 e!4315808)))

(assert (= (and b!7186275 ((_ is ElementMatch!18359) (h!76129 (exprs!7811 setElem!53201)))) b!7186491))

(assert (= (and b!7186275 ((_ is Concat!27204) (h!76129 (exprs!7811 setElem!53201)))) b!7186492))

(assert (= (and b!7186275 ((_ is Star!18359) (h!76129 (exprs!7811 setElem!53201)))) b!7186493))

(assert (= (and b!7186275 ((_ is Union!18359) (h!76129 (exprs!7811 setElem!53201)))) b!7186494))

(declare-fun b!7186495 () Bool)

(declare-fun e!4315809 () Bool)

(declare-fun tp!1995660 () Bool)

(declare-fun tp!1995661 () Bool)

(assert (=> b!7186495 (= e!4315809 (and tp!1995660 tp!1995661))))

(assert (=> b!7186275 (= tp!1995609 e!4315809)))

(assert (= (and b!7186275 ((_ is Cons!69681) (t!383828 (exprs!7811 setElem!53201)))) b!7186495))

(declare-fun b!7186496 () Bool)

(declare-fun e!4315810 () Bool)

(declare-fun tp!1995662 () Bool)

(declare-fun tp!1995663 () Bool)

(assert (=> b!7186496 (= e!4315810 (and tp!1995662 tp!1995663))))

(assert (=> b!7186270 (= tp!1995602 e!4315810)))

(assert (= (and b!7186270 ((_ is Cons!69681) (exprs!7811 setElem!53207))) b!7186496))

(declare-fun condSetEmpty!53209 () Bool)

(assert (=> setNonEmpty!53207 (= condSetEmpty!53209 (= setRest!53207 ((as const (Array Context!14622 Bool)) false)))))

(declare-fun setRes!53209 () Bool)

(assert (=> setNonEmpty!53207 (= tp!1995603 setRes!53209)))

(declare-fun setIsEmpty!53209 () Bool)

(assert (=> setIsEmpty!53209 setRes!53209))

(declare-fun e!4315811 () Bool)

(declare-fun tp!1995665 () Bool)

(declare-fun setElem!53209 () Context!14622)

(declare-fun setNonEmpty!53209 () Bool)

(assert (=> setNonEmpty!53209 (= setRes!53209 (and tp!1995665 (inv!88919 setElem!53209) e!4315811))))

(declare-fun setRest!53209 () (InoxSet Context!14622))

(assert (=> setNonEmpty!53209 (= setRest!53207 ((_ map or) (store ((as const (Array Context!14622 Bool)) false) setElem!53209 true) setRest!53209))))

(declare-fun b!7186497 () Bool)

(declare-fun tp!1995664 () Bool)

(assert (=> b!7186497 (= e!4315811 tp!1995664)))

(assert (= (and setNonEmpty!53207 condSetEmpty!53209) setIsEmpty!53209))

(assert (= (and setNonEmpty!53207 (not condSetEmpty!53209)) setNonEmpty!53209))

(assert (= setNonEmpty!53209 b!7186497))

(declare-fun m!7883212 () Bool)

(assert (=> setNonEmpty!53209 m!7883212))

(declare-fun b_lambda!275225 () Bool)

(assert (= b_lambda!275213 (or d!2238476 b_lambda!275225)))

(declare-fun bs!1897995 () Bool)

(declare-fun d!2238544 () Bool)

(assert (= bs!1897995 (and d!2238544 d!2238476)))

(assert (=> bs!1897995 (= (dynLambda!28375 lambda!437694 (h!76129 (exprs!7811 setElem!53201))) (validRegex!9474 (h!76129 (exprs!7811 setElem!53201))))))

(declare-fun m!7883214 () Bool)

(assert (=> bs!1897995 m!7883214))

(assert (=> b!7186337 d!2238544))

(declare-fun b_lambda!275227 () Bool)

(assert (= b_lambda!275219 (or d!2238488 b_lambda!275227)))

(declare-fun bs!1897996 () Bool)

(declare-fun d!2238546 () Bool)

(assert (= bs!1897996 (and d!2238546 d!2238488)))

(assert (=> bs!1897996 (= (dynLambda!28375 lambda!437697 (h!76129 (exprs!7811 lt!2571044))) (nullable!7781 (h!76129 (exprs!7811 lt!2571044))))))

(declare-fun m!7883216 () Bool)

(assert (=> bs!1897996 m!7883216))

(assert (=> b!7186408 d!2238546))

(check-sat (not b!7186374) (not b!7186473) (not b!7186361) (not d!2238522) (not bs!1897996) (not b!7186350) (not b!7186362) (not b!7186478) (not bm!655120) (not setNonEmpty!53209) (not b!7186468) (not b!7186471) (not d!2238514) (not b!7186440) (not b!7186496) (not d!2238542) (not d!2238528) (not b!7186495) (not b!7186466) (not b!7186338) (not bm!655119) (not b_lambda!275225) (not b!7186493) (not b!7186470) (not b!7186480) (not b!7186409) (not bs!1897995) tp_is_empty!46279 (not b!7186492) (not b!7186397) (not b!7186497) (not b!7186372) (not b!7186465) (not b!7186469) (not d!2238540) (not d!2238538) (not b!7186373) (not b!7186494) (not b_lambda!275227))
(check-sat)

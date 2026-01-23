; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!728148 () Bool)

(assert start!728148)

(declare-fun res!3015314 () Bool)

(declare-fun e!4484297 () Bool)

(assert (=> start!728148 (=> (not res!3015314) (not e!4484297))))

(declare-datatypes ((C!39908 0))(
  ( (C!39909 (val!30394 Int)) )
))
(declare-datatypes ((Regex!19791 0))(
  ( (ElementMatch!19791 (c!1389820 C!39908)) (Concat!28636 (regOne!40094 Regex!19791) (regTwo!40094 Regex!19791)) (EmptyExpr!19791) (Star!19791 (reg!20120 Regex!19791)) (EmptyLang!19791) (Union!19791 (regOne!40095 Regex!19791) (regTwo!40095 Regex!19791)) )
))
(declare-fun expr!41 () Regex!19791)

(declare-fun validRegex!10219 (Regex!19791) Bool)

(assert (=> start!728148 (= res!3015314 (validRegex!10219 expr!41))))

(assert (=> start!728148 e!4484297))

(declare-fun e!4484299 () Bool)

(assert (=> start!728148 e!4484299))

(declare-fun tp_is_empty!49937 () Bool)

(assert (=> start!728148 tp_is_empty!49937))

(declare-datatypes ((List!72686 0))(
  ( (Nil!72562) (Cons!72562 (h!79010 Regex!19791) (t!387387 List!72686)) )
))
(declare-datatypes ((Context!17054 0))(
  ( (Context!17055 (exprs!9027 List!72686)) )
))
(declare-fun context!49 () Context!17054)

(declare-fun e!4484298 () Bool)

(declare-fun inv!92754 (Context!17054) Bool)

(assert (=> start!728148 (and (inv!92754 context!49) e!4484298)))

(declare-fun b!7522659 () Bool)

(declare-fun tp!2185341 () Bool)

(declare-fun tp!2185340 () Bool)

(assert (=> b!7522659 (= e!4484299 (and tp!2185341 tp!2185340))))

(declare-fun b!7522660 () Bool)

(declare-fun $colon$colon!3359 (List!72686 Regex!19791) List!72686)

(assert (=> b!7522660 (= e!4484297 (not (inv!92754 (Context!17055 ($colon$colon!3359 (exprs!9027 context!49) (regTwo!40094 expr!41))))))))

(declare-fun b!7522661 () Bool)

(declare-fun res!3015311 () Bool)

(assert (=> b!7522661 (=> (not res!3015311) (not e!4484297))))

(declare-fun a!1106 () C!39908)

(get-info :version)

(assert (=> b!7522661 (= res!3015311 (and (or (not ((_ is ElementMatch!19791) expr!41)) (not (= (c!1389820 expr!41) a!1106))) (not ((_ is Union!19791) expr!41)) ((_ is Concat!28636) expr!41)))))

(declare-fun b!7522662 () Bool)

(assert (=> b!7522662 (= e!4484299 tp_is_empty!49937)))

(declare-fun b!7522663 () Bool)

(declare-fun tp!2185342 () Bool)

(declare-fun tp!2185345 () Bool)

(assert (=> b!7522663 (= e!4484299 (and tp!2185342 tp!2185345))))

(declare-fun b!7522664 () Bool)

(declare-fun tp!2185343 () Bool)

(assert (=> b!7522664 (= e!4484298 tp!2185343)))

(declare-fun b!7522665 () Bool)

(declare-fun tp!2185344 () Bool)

(assert (=> b!7522665 (= e!4484299 tp!2185344)))

(declare-fun b!7522666 () Bool)

(declare-fun res!3015312 () Bool)

(assert (=> b!7522666 (=> (not res!3015312) (not e!4484297))))

(declare-fun nullable!8625 (Regex!19791) Bool)

(assert (=> b!7522666 (= res!3015312 (nullable!8625 (regOne!40094 expr!41)))))

(declare-fun b!7522667 () Bool)

(declare-fun res!3015313 () Bool)

(assert (=> b!7522667 (=> (not res!3015313) (not e!4484297))))

(assert (=> b!7522667 (= res!3015313 (validRegex!10219 (regTwo!40094 expr!41)))))

(assert (= (and start!728148 res!3015314) b!7522661))

(assert (= (and b!7522661 res!3015311) b!7522666))

(assert (= (and b!7522666 res!3015312) b!7522667))

(assert (= (and b!7522667 res!3015313) b!7522660))

(assert (= (and start!728148 ((_ is ElementMatch!19791) expr!41)) b!7522662))

(assert (= (and start!728148 ((_ is Concat!28636) expr!41)) b!7522659))

(assert (= (and start!728148 ((_ is Star!19791) expr!41)) b!7522665))

(assert (= (and start!728148 ((_ is Union!19791) expr!41)) b!7522663))

(assert (= start!728148 b!7522664))

(declare-fun m!8100642 () Bool)

(assert (=> start!728148 m!8100642))

(declare-fun m!8100644 () Bool)

(assert (=> start!728148 m!8100644))

(declare-fun m!8100646 () Bool)

(assert (=> b!7522660 m!8100646))

(declare-fun m!8100648 () Bool)

(assert (=> b!7522660 m!8100648))

(declare-fun m!8100650 () Bool)

(assert (=> b!7522666 m!8100650))

(declare-fun m!8100652 () Bool)

(assert (=> b!7522667 m!8100652))

(check-sat (not b!7522663) tp_is_empty!49937 (not b!7522665) (not start!728148) (not b!7522667) (not b!7522660) (not b!7522664) (not b!7522666) (not b!7522659))
(check-sat)
(get-model)

(declare-fun bm!689948 () Bool)

(declare-fun call!689955 () Bool)

(declare-fun call!689953 () Bool)

(assert (=> bm!689948 (= call!689955 call!689953)))

(declare-fun b!7522704 () Bool)

(declare-fun res!3015339 () Bool)

(declare-fun e!4484331 () Bool)

(assert (=> b!7522704 (=> res!3015339 e!4484331)))

(assert (=> b!7522704 (= res!3015339 (not ((_ is Concat!28636) (regTwo!40094 expr!41))))))

(declare-fun e!4484332 () Bool)

(assert (=> b!7522704 (= e!4484332 e!4484331)))

(declare-fun b!7522705 () Bool)

(declare-fun e!4484333 () Bool)

(assert (=> b!7522705 (= e!4484333 call!689953)))

(declare-fun b!7522706 () Bool)

(declare-fun e!4484330 () Bool)

(assert (=> b!7522706 (= e!4484330 e!4484332)))

(declare-fun c!1389829 () Bool)

(assert (=> b!7522706 (= c!1389829 ((_ is Union!19791) (regTwo!40094 expr!41)))))

(declare-fun bm!689949 () Bool)

(declare-fun call!689954 () Bool)

(assert (=> bm!689949 (= call!689954 (validRegex!10219 (ite c!1389829 (regTwo!40095 (regTwo!40094 expr!41)) (regOne!40094 (regTwo!40094 expr!41)))))))

(declare-fun b!7522707 () Bool)

(declare-fun e!4484328 () Bool)

(assert (=> b!7522707 (= e!4484328 call!689954)))

(declare-fun b!7522708 () Bool)

(declare-fun e!4484329 () Bool)

(assert (=> b!7522708 (= e!4484329 e!4484330)))

(declare-fun c!1389830 () Bool)

(assert (=> b!7522708 (= c!1389830 ((_ is Star!19791) (regTwo!40094 expr!41)))))

(declare-fun b!7522709 () Bool)

(declare-fun res!3015335 () Bool)

(assert (=> b!7522709 (=> (not res!3015335) (not e!4484328))))

(assert (=> b!7522709 (= res!3015335 call!689955)))

(assert (=> b!7522709 (= e!4484332 e!4484328)))

(declare-fun b!7522710 () Bool)

(assert (=> b!7522710 (= e!4484330 e!4484333)))

(declare-fun res!3015336 () Bool)

(assert (=> b!7522710 (= res!3015336 (not (nullable!8625 (reg!20120 (regTwo!40094 expr!41)))))))

(assert (=> b!7522710 (=> (not res!3015336) (not e!4484333))))

(declare-fun b!7522712 () Bool)

(declare-fun e!4484334 () Bool)

(assert (=> b!7522712 (= e!4484334 call!689955)))

(declare-fun bm!689950 () Bool)

(assert (=> bm!689950 (= call!689953 (validRegex!10219 (ite c!1389830 (reg!20120 (regTwo!40094 expr!41)) (ite c!1389829 (regOne!40095 (regTwo!40094 expr!41)) (regTwo!40094 (regTwo!40094 expr!41))))))))

(declare-fun d!2309115 () Bool)

(declare-fun res!3015337 () Bool)

(assert (=> d!2309115 (=> res!3015337 e!4484329)))

(assert (=> d!2309115 (= res!3015337 ((_ is ElementMatch!19791) (regTwo!40094 expr!41)))))

(assert (=> d!2309115 (= (validRegex!10219 (regTwo!40094 expr!41)) e!4484329)))

(declare-fun b!7522711 () Bool)

(assert (=> b!7522711 (= e!4484331 e!4484334)))

(declare-fun res!3015338 () Bool)

(assert (=> b!7522711 (=> (not res!3015338) (not e!4484334))))

(assert (=> b!7522711 (= res!3015338 call!689954)))

(assert (= (and d!2309115 (not res!3015337)) b!7522708))

(assert (= (and b!7522708 c!1389830) b!7522710))

(assert (= (and b!7522708 (not c!1389830)) b!7522706))

(assert (= (and b!7522710 res!3015336) b!7522705))

(assert (= (and b!7522706 c!1389829) b!7522709))

(assert (= (and b!7522706 (not c!1389829)) b!7522704))

(assert (= (and b!7522709 res!3015335) b!7522707))

(assert (= (and b!7522704 (not res!3015339)) b!7522711))

(assert (= (and b!7522711 res!3015338) b!7522712))

(assert (= (or b!7522707 b!7522711) bm!689949))

(assert (= (or b!7522709 b!7522712) bm!689948))

(assert (= (or b!7522705 bm!689948) bm!689950))

(declare-fun m!8100654 () Bool)

(assert (=> bm!689949 m!8100654))

(declare-fun m!8100656 () Bool)

(assert (=> b!7522710 m!8100656))

(declare-fun m!8100658 () Bool)

(assert (=> bm!689950 m!8100658))

(assert (=> b!7522667 d!2309115))

(declare-fun bm!689951 () Bool)

(declare-fun call!689960 () Bool)

(declare-fun call!689956 () Bool)

(assert (=> bm!689951 (= call!689960 call!689956)))

(declare-fun b!7522713 () Bool)

(declare-fun res!3015344 () Bool)

(declare-fun e!4484340 () Bool)

(assert (=> b!7522713 (=> res!3015344 e!4484340)))

(assert (=> b!7522713 (= res!3015344 (not ((_ is Concat!28636) expr!41)))))

(declare-fun e!4484343 () Bool)

(assert (=> b!7522713 (= e!4484343 e!4484340)))

(declare-fun b!7522714 () Bool)

(declare-fun e!4484344 () Bool)

(assert (=> b!7522714 (= e!4484344 call!689956)))

(declare-fun b!7522715 () Bool)

(declare-fun e!4484337 () Bool)

(assert (=> b!7522715 (= e!4484337 e!4484343)))

(declare-fun c!1389831 () Bool)

(assert (=> b!7522715 (= c!1389831 ((_ is Union!19791) expr!41))))

(declare-fun bm!689952 () Bool)

(declare-fun call!689957 () Bool)

(assert (=> bm!689952 (= call!689957 (validRegex!10219 (ite c!1389831 (regTwo!40095 expr!41) (regOne!40094 expr!41))))))

(declare-fun b!7522716 () Bool)

(declare-fun e!4484335 () Bool)

(assert (=> b!7522716 (= e!4484335 call!689957)))

(declare-fun b!7522717 () Bool)

(declare-fun e!4484336 () Bool)

(assert (=> b!7522717 (= e!4484336 e!4484337)))

(declare-fun c!1389833 () Bool)

(assert (=> b!7522717 (= c!1389833 ((_ is Star!19791) expr!41))))

(declare-fun b!7522718 () Bool)

(declare-fun res!3015340 () Bool)

(assert (=> b!7522718 (=> (not res!3015340) (not e!4484335))))

(assert (=> b!7522718 (= res!3015340 call!689960)))

(assert (=> b!7522718 (= e!4484343 e!4484335)))

(declare-fun b!7522719 () Bool)

(assert (=> b!7522719 (= e!4484337 e!4484344)))

(declare-fun res!3015341 () Bool)

(assert (=> b!7522719 (= res!3015341 (not (nullable!8625 (reg!20120 expr!41))))))

(assert (=> b!7522719 (=> (not res!3015341) (not e!4484344))))

(declare-fun b!7522723 () Bool)

(declare-fun e!4484345 () Bool)

(assert (=> b!7522723 (= e!4484345 call!689960)))

(declare-fun bm!689954 () Bool)

(assert (=> bm!689954 (= call!689956 (validRegex!10219 (ite c!1389833 (reg!20120 expr!41) (ite c!1389831 (regOne!40095 expr!41) (regTwo!40094 expr!41)))))))

(declare-fun d!2309119 () Bool)

(declare-fun res!3015342 () Bool)

(assert (=> d!2309119 (=> res!3015342 e!4484336)))

(assert (=> d!2309119 (= res!3015342 ((_ is ElementMatch!19791) expr!41))))

(assert (=> d!2309119 (= (validRegex!10219 expr!41) e!4484336)))

(declare-fun b!7522721 () Bool)

(assert (=> b!7522721 (= e!4484340 e!4484345)))

(declare-fun res!3015343 () Bool)

(assert (=> b!7522721 (=> (not res!3015343) (not e!4484345))))

(assert (=> b!7522721 (= res!3015343 call!689957)))

(assert (= (and d!2309119 (not res!3015342)) b!7522717))

(assert (= (and b!7522717 c!1389833) b!7522719))

(assert (= (and b!7522717 (not c!1389833)) b!7522715))

(assert (= (and b!7522719 res!3015341) b!7522714))

(assert (= (and b!7522715 c!1389831) b!7522718))

(assert (= (and b!7522715 (not c!1389831)) b!7522713))

(assert (= (and b!7522718 res!3015340) b!7522716))

(assert (= (and b!7522713 (not res!3015344)) b!7522721))

(assert (= (and b!7522721 res!3015343) b!7522723))

(assert (= (or b!7522716 b!7522721) bm!689952))

(assert (= (or b!7522718 b!7522723) bm!689951))

(assert (= (or b!7522714 bm!689951) bm!689954))

(declare-fun m!8100660 () Bool)

(assert (=> bm!689952 m!8100660))

(declare-fun m!8100662 () Bool)

(assert (=> b!7522719 m!8100662))

(declare-fun m!8100664 () Bool)

(assert (=> bm!689954 m!8100664))

(assert (=> start!728148 d!2309119))

(declare-fun d!2309121 () Bool)

(declare-fun lambda!466432 () Int)

(declare-fun forall!18412 (List!72686 Int) Bool)

(assert (=> d!2309121 (= (inv!92754 context!49) (forall!18412 (exprs!9027 context!49) lambda!466432))))

(declare-fun bs!1939689 () Bool)

(assert (= bs!1939689 d!2309121))

(declare-fun m!8100684 () Bool)

(assert (=> bs!1939689 m!8100684))

(assert (=> start!728148 d!2309121))

(declare-fun bs!1939690 () Bool)

(declare-fun d!2309133 () Bool)

(assert (= bs!1939690 (and d!2309133 d!2309121)))

(declare-fun lambda!466433 () Int)

(assert (=> bs!1939690 (= lambda!466433 lambda!466432)))

(assert (=> d!2309133 (= (inv!92754 (Context!17055 ($colon$colon!3359 (exprs!9027 context!49) (regTwo!40094 expr!41)))) (forall!18412 (exprs!9027 (Context!17055 ($colon$colon!3359 (exprs!9027 context!49) (regTwo!40094 expr!41)))) lambda!466433))))

(declare-fun bs!1939691 () Bool)

(assert (= bs!1939691 d!2309133))

(declare-fun m!8100686 () Bool)

(assert (=> bs!1939691 m!8100686))

(assert (=> b!7522660 d!2309133))

(declare-fun d!2309135 () Bool)

(assert (=> d!2309135 (= ($colon$colon!3359 (exprs!9027 context!49) (regTwo!40094 expr!41)) (Cons!72562 (regTwo!40094 expr!41) (exprs!9027 context!49)))))

(assert (=> b!7522660 d!2309135))

(declare-fun d!2309137 () Bool)

(declare-fun nullableFct!3452 (Regex!19791) Bool)

(assert (=> d!2309137 (= (nullable!8625 (regOne!40094 expr!41)) (nullableFct!3452 (regOne!40094 expr!41)))))

(declare-fun bs!1939692 () Bool)

(assert (= bs!1939692 d!2309137))

(declare-fun m!8100688 () Bool)

(assert (=> bs!1939692 m!8100688))

(assert (=> b!7522666 d!2309137))

(declare-fun b!7522786 () Bool)

(declare-fun e!4484368 () Bool)

(declare-fun tp!2185398 () Bool)

(declare-fun tp!2185401 () Bool)

(assert (=> b!7522786 (= e!4484368 (and tp!2185398 tp!2185401))))

(declare-fun b!7522787 () Bool)

(declare-fun tp!2185400 () Bool)

(assert (=> b!7522787 (= e!4484368 tp!2185400)))

(assert (=> b!7522663 (= tp!2185342 e!4484368)))

(declare-fun b!7522785 () Bool)

(assert (=> b!7522785 (= e!4484368 tp_is_empty!49937)))

(declare-fun b!7522788 () Bool)

(declare-fun tp!2185397 () Bool)

(declare-fun tp!2185399 () Bool)

(assert (=> b!7522788 (= e!4484368 (and tp!2185397 tp!2185399))))

(assert (= (and b!7522663 ((_ is ElementMatch!19791) (regOne!40095 expr!41))) b!7522785))

(assert (= (and b!7522663 ((_ is Concat!28636) (regOne!40095 expr!41))) b!7522786))

(assert (= (and b!7522663 ((_ is Star!19791) (regOne!40095 expr!41))) b!7522787))

(assert (= (and b!7522663 ((_ is Union!19791) (regOne!40095 expr!41))) b!7522788))

(declare-fun b!7522790 () Bool)

(declare-fun e!4484369 () Bool)

(declare-fun tp!2185403 () Bool)

(declare-fun tp!2185406 () Bool)

(assert (=> b!7522790 (= e!4484369 (and tp!2185403 tp!2185406))))

(declare-fun b!7522791 () Bool)

(declare-fun tp!2185405 () Bool)

(assert (=> b!7522791 (= e!4484369 tp!2185405)))

(assert (=> b!7522663 (= tp!2185345 e!4484369)))

(declare-fun b!7522789 () Bool)

(assert (=> b!7522789 (= e!4484369 tp_is_empty!49937)))

(declare-fun b!7522792 () Bool)

(declare-fun tp!2185402 () Bool)

(declare-fun tp!2185404 () Bool)

(assert (=> b!7522792 (= e!4484369 (and tp!2185402 tp!2185404))))

(assert (= (and b!7522663 ((_ is ElementMatch!19791) (regTwo!40095 expr!41))) b!7522789))

(assert (= (and b!7522663 ((_ is Concat!28636) (regTwo!40095 expr!41))) b!7522790))

(assert (= (and b!7522663 ((_ is Star!19791) (regTwo!40095 expr!41))) b!7522791))

(assert (= (and b!7522663 ((_ is Union!19791) (regTwo!40095 expr!41))) b!7522792))

(declare-fun b!7522794 () Bool)

(declare-fun e!4484370 () Bool)

(declare-fun tp!2185408 () Bool)

(declare-fun tp!2185411 () Bool)

(assert (=> b!7522794 (= e!4484370 (and tp!2185408 tp!2185411))))

(declare-fun b!7522795 () Bool)

(declare-fun tp!2185410 () Bool)

(assert (=> b!7522795 (= e!4484370 tp!2185410)))

(assert (=> b!7522659 (= tp!2185341 e!4484370)))

(declare-fun b!7522793 () Bool)

(assert (=> b!7522793 (= e!4484370 tp_is_empty!49937)))

(declare-fun b!7522796 () Bool)

(declare-fun tp!2185407 () Bool)

(declare-fun tp!2185409 () Bool)

(assert (=> b!7522796 (= e!4484370 (and tp!2185407 tp!2185409))))

(assert (= (and b!7522659 ((_ is ElementMatch!19791) (regOne!40094 expr!41))) b!7522793))

(assert (= (and b!7522659 ((_ is Concat!28636) (regOne!40094 expr!41))) b!7522794))

(assert (= (and b!7522659 ((_ is Star!19791) (regOne!40094 expr!41))) b!7522795))

(assert (= (and b!7522659 ((_ is Union!19791) (regOne!40094 expr!41))) b!7522796))

(declare-fun b!7522798 () Bool)

(declare-fun e!4484371 () Bool)

(declare-fun tp!2185413 () Bool)

(declare-fun tp!2185416 () Bool)

(assert (=> b!7522798 (= e!4484371 (and tp!2185413 tp!2185416))))

(declare-fun b!7522799 () Bool)

(declare-fun tp!2185415 () Bool)

(assert (=> b!7522799 (= e!4484371 tp!2185415)))

(assert (=> b!7522659 (= tp!2185340 e!4484371)))

(declare-fun b!7522797 () Bool)

(assert (=> b!7522797 (= e!4484371 tp_is_empty!49937)))

(declare-fun b!7522800 () Bool)

(declare-fun tp!2185412 () Bool)

(declare-fun tp!2185414 () Bool)

(assert (=> b!7522800 (= e!4484371 (and tp!2185412 tp!2185414))))

(assert (= (and b!7522659 ((_ is ElementMatch!19791) (regTwo!40094 expr!41))) b!7522797))

(assert (= (and b!7522659 ((_ is Concat!28636) (regTwo!40094 expr!41))) b!7522798))

(assert (= (and b!7522659 ((_ is Star!19791) (regTwo!40094 expr!41))) b!7522799))

(assert (= (and b!7522659 ((_ is Union!19791) (regTwo!40094 expr!41))) b!7522800))

(declare-fun b!7522805 () Bool)

(declare-fun e!4484374 () Bool)

(declare-fun tp!2185421 () Bool)

(declare-fun tp!2185422 () Bool)

(assert (=> b!7522805 (= e!4484374 (and tp!2185421 tp!2185422))))

(assert (=> b!7522664 (= tp!2185343 e!4484374)))

(assert (= (and b!7522664 ((_ is Cons!72562) (exprs!9027 context!49))) b!7522805))

(declare-fun b!7522807 () Bool)

(declare-fun e!4484375 () Bool)

(declare-fun tp!2185424 () Bool)

(declare-fun tp!2185427 () Bool)

(assert (=> b!7522807 (= e!4484375 (and tp!2185424 tp!2185427))))

(declare-fun b!7522808 () Bool)

(declare-fun tp!2185426 () Bool)

(assert (=> b!7522808 (= e!4484375 tp!2185426)))

(assert (=> b!7522665 (= tp!2185344 e!4484375)))

(declare-fun b!7522806 () Bool)

(assert (=> b!7522806 (= e!4484375 tp_is_empty!49937)))

(declare-fun b!7522809 () Bool)

(declare-fun tp!2185423 () Bool)

(declare-fun tp!2185425 () Bool)

(assert (=> b!7522809 (= e!4484375 (and tp!2185423 tp!2185425))))

(assert (= (and b!7522665 ((_ is ElementMatch!19791) (reg!20120 expr!41))) b!7522806))

(assert (= (and b!7522665 ((_ is Concat!28636) (reg!20120 expr!41))) b!7522807))

(assert (= (and b!7522665 ((_ is Star!19791) (reg!20120 expr!41))) b!7522808))

(assert (= (and b!7522665 ((_ is Union!19791) (reg!20120 expr!41))) b!7522809))

(check-sat (not bm!689950) (not b!7522786) (not b!7522792) tp_is_empty!49937 (not b!7522794) (not b!7522710) (not d!2309133) (not b!7522787) (not b!7522799) (not b!7522795) (not b!7522790) (not b!7522719) (not b!7522798) (not b!7522791) (not b!7522808) (not b!7522805) (not bm!689952) (not b!7522788) (not d!2309121) (not b!7522800) (not bm!689949) (not b!7522796) (not bm!689954) (not b!7522807) (not d!2309137) (not b!7522809))
(check-sat)
(get-model)

(declare-fun d!2309139 () Bool)

(assert (=> d!2309139 (= (nullable!8625 (reg!20120 (regTwo!40094 expr!41))) (nullableFct!3452 (reg!20120 (regTwo!40094 expr!41))))))

(declare-fun bs!1939693 () Bool)

(assert (= bs!1939693 d!2309139))

(declare-fun m!8100690 () Bool)

(assert (=> bs!1939693 m!8100690))

(assert (=> b!7522710 d!2309139))

(declare-fun d!2309141 () Bool)

(assert (=> d!2309141 (= (nullable!8625 (reg!20120 expr!41)) (nullableFct!3452 (reg!20120 expr!41)))))

(declare-fun bs!1939694 () Bool)

(assert (= bs!1939694 d!2309141))

(declare-fun m!8100692 () Bool)

(assert (=> bs!1939694 m!8100692))

(assert (=> b!7522719 d!2309141))

(declare-fun bm!689960 () Bool)

(declare-fun call!689967 () Bool)

(declare-fun call!689965 () Bool)

(assert (=> bm!689960 (= call!689967 call!689965)))

(declare-fun b!7522810 () Bool)

(declare-fun res!3015359 () Bool)

(declare-fun e!4484379 () Bool)

(assert (=> b!7522810 (=> res!3015359 e!4484379)))

(assert (=> b!7522810 (= res!3015359 (not ((_ is Concat!28636) (ite c!1389829 (regTwo!40095 (regTwo!40094 expr!41)) (regOne!40094 (regTwo!40094 expr!41))))))))

(declare-fun e!4484380 () Bool)

(assert (=> b!7522810 (= e!4484380 e!4484379)))

(declare-fun b!7522811 () Bool)

(declare-fun e!4484381 () Bool)

(assert (=> b!7522811 (= e!4484381 call!689965)))

(declare-fun b!7522812 () Bool)

(declare-fun e!4484378 () Bool)

(assert (=> b!7522812 (= e!4484378 e!4484380)))

(declare-fun c!1389837 () Bool)

(assert (=> b!7522812 (= c!1389837 ((_ is Union!19791) (ite c!1389829 (regTwo!40095 (regTwo!40094 expr!41)) (regOne!40094 (regTwo!40094 expr!41)))))))

(declare-fun bm!689961 () Bool)

(declare-fun call!689966 () Bool)

(assert (=> bm!689961 (= call!689966 (validRegex!10219 (ite c!1389837 (regTwo!40095 (ite c!1389829 (regTwo!40095 (regTwo!40094 expr!41)) (regOne!40094 (regTwo!40094 expr!41)))) (regOne!40094 (ite c!1389829 (regTwo!40095 (regTwo!40094 expr!41)) (regOne!40094 (regTwo!40094 expr!41)))))))))

(declare-fun b!7522813 () Bool)

(declare-fun e!4484376 () Bool)

(assert (=> b!7522813 (= e!4484376 call!689966)))

(declare-fun b!7522814 () Bool)

(declare-fun e!4484377 () Bool)

(assert (=> b!7522814 (= e!4484377 e!4484378)))

(declare-fun c!1389838 () Bool)

(assert (=> b!7522814 (= c!1389838 ((_ is Star!19791) (ite c!1389829 (regTwo!40095 (regTwo!40094 expr!41)) (regOne!40094 (regTwo!40094 expr!41)))))))

(declare-fun b!7522815 () Bool)

(declare-fun res!3015355 () Bool)

(assert (=> b!7522815 (=> (not res!3015355) (not e!4484376))))

(assert (=> b!7522815 (= res!3015355 call!689967)))

(assert (=> b!7522815 (= e!4484380 e!4484376)))

(declare-fun b!7522816 () Bool)

(assert (=> b!7522816 (= e!4484378 e!4484381)))

(declare-fun res!3015356 () Bool)

(assert (=> b!7522816 (= res!3015356 (not (nullable!8625 (reg!20120 (ite c!1389829 (regTwo!40095 (regTwo!40094 expr!41)) (regOne!40094 (regTwo!40094 expr!41)))))))))

(assert (=> b!7522816 (=> (not res!3015356) (not e!4484381))))

(declare-fun b!7522818 () Bool)

(declare-fun e!4484382 () Bool)

(assert (=> b!7522818 (= e!4484382 call!689967)))

(declare-fun bm!689962 () Bool)

(assert (=> bm!689962 (= call!689965 (validRegex!10219 (ite c!1389838 (reg!20120 (ite c!1389829 (regTwo!40095 (regTwo!40094 expr!41)) (regOne!40094 (regTwo!40094 expr!41)))) (ite c!1389837 (regOne!40095 (ite c!1389829 (regTwo!40095 (regTwo!40094 expr!41)) (regOne!40094 (regTwo!40094 expr!41)))) (regTwo!40094 (ite c!1389829 (regTwo!40095 (regTwo!40094 expr!41)) (regOne!40094 (regTwo!40094 expr!41))))))))))

(declare-fun d!2309143 () Bool)

(declare-fun res!3015357 () Bool)

(assert (=> d!2309143 (=> res!3015357 e!4484377)))

(assert (=> d!2309143 (= res!3015357 ((_ is ElementMatch!19791) (ite c!1389829 (regTwo!40095 (regTwo!40094 expr!41)) (regOne!40094 (regTwo!40094 expr!41)))))))

(assert (=> d!2309143 (= (validRegex!10219 (ite c!1389829 (regTwo!40095 (regTwo!40094 expr!41)) (regOne!40094 (regTwo!40094 expr!41)))) e!4484377)))

(declare-fun b!7522817 () Bool)

(assert (=> b!7522817 (= e!4484379 e!4484382)))

(declare-fun res!3015358 () Bool)

(assert (=> b!7522817 (=> (not res!3015358) (not e!4484382))))

(assert (=> b!7522817 (= res!3015358 call!689966)))

(assert (= (and d!2309143 (not res!3015357)) b!7522814))

(assert (= (and b!7522814 c!1389838) b!7522816))

(assert (= (and b!7522814 (not c!1389838)) b!7522812))

(assert (= (and b!7522816 res!3015356) b!7522811))

(assert (= (and b!7522812 c!1389837) b!7522815))

(assert (= (and b!7522812 (not c!1389837)) b!7522810))

(assert (= (and b!7522815 res!3015355) b!7522813))

(assert (= (and b!7522810 (not res!3015359)) b!7522817))

(assert (= (and b!7522817 res!3015358) b!7522818))

(assert (= (or b!7522813 b!7522817) bm!689961))

(assert (= (or b!7522815 b!7522818) bm!689960))

(assert (= (or b!7522811 bm!689960) bm!689962))

(declare-fun m!8100694 () Bool)

(assert (=> bm!689961 m!8100694))

(declare-fun m!8100696 () Bool)

(assert (=> b!7522816 m!8100696))

(declare-fun m!8100698 () Bool)

(assert (=> bm!689962 m!8100698))

(assert (=> bm!689949 d!2309143))

(declare-fun bm!689963 () Bool)

(declare-fun call!689970 () Bool)

(declare-fun call!689968 () Bool)

(assert (=> bm!689963 (= call!689970 call!689968)))

(declare-fun b!7522819 () Bool)

(declare-fun res!3015364 () Bool)

(declare-fun e!4484386 () Bool)

(assert (=> b!7522819 (=> res!3015364 e!4484386)))

(assert (=> b!7522819 (= res!3015364 (not ((_ is Concat!28636) (ite c!1389833 (reg!20120 expr!41) (ite c!1389831 (regOne!40095 expr!41) (regTwo!40094 expr!41))))))))

(declare-fun e!4484387 () Bool)

(assert (=> b!7522819 (= e!4484387 e!4484386)))

(declare-fun b!7522820 () Bool)

(declare-fun e!4484388 () Bool)

(assert (=> b!7522820 (= e!4484388 call!689968)))

(declare-fun b!7522821 () Bool)

(declare-fun e!4484385 () Bool)

(assert (=> b!7522821 (= e!4484385 e!4484387)))

(declare-fun c!1389839 () Bool)

(assert (=> b!7522821 (= c!1389839 ((_ is Union!19791) (ite c!1389833 (reg!20120 expr!41) (ite c!1389831 (regOne!40095 expr!41) (regTwo!40094 expr!41)))))))

(declare-fun call!689969 () Bool)

(declare-fun bm!689964 () Bool)

(assert (=> bm!689964 (= call!689969 (validRegex!10219 (ite c!1389839 (regTwo!40095 (ite c!1389833 (reg!20120 expr!41) (ite c!1389831 (regOne!40095 expr!41) (regTwo!40094 expr!41)))) (regOne!40094 (ite c!1389833 (reg!20120 expr!41) (ite c!1389831 (regOne!40095 expr!41) (regTwo!40094 expr!41)))))))))

(declare-fun b!7522822 () Bool)

(declare-fun e!4484383 () Bool)

(assert (=> b!7522822 (= e!4484383 call!689969)))

(declare-fun b!7522823 () Bool)

(declare-fun e!4484384 () Bool)

(assert (=> b!7522823 (= e!4484384 e!4484385)))

(declare-fun c!1389840 () Bool)

(assert (=> b!7522823 (= c!1389840 ((_ is Star!19791) (ite c!1389833 (reg!20120 expr!41) (ite c!1389831 (regOne!40095 expr!41) (regTwo!40094 expr!41)))))))

(declare-fun b!7522824 () Bool)

(declare-fun res!3015360 () Bool)

(assert (=> b!7522824 (=> (not res!3015360) (not e!4484383))))

(assert (=> b!7522824 (= res!3015360 call!689970)))

(assert (=> b!7522824 (= e!4484387 e!4484383)))

(declare-fun b!7522825 () Bool)

(assert (=> b!7522825 (= e!4484385 e!4484388)))

(declare-fun res!3015361 () Bool)

(assert (=> b!7522825 (= res!3015361 (not (nullable!8625 (reg!20120 (ite c!1389833 (reg!20120 expr!41) (ite c!1389831 (regOne!40095 expr!41) (regTwo!40094 expr!41)))))))))

(assert (=> b!7522825 (=> (not res!3015361) (not e!4484388))))

(declare-fun b!7522827 () Bool)

(declare-fun e!4484389 () Bool)

(assert (=> b!7522827 (= e!4484389 call!689970)))

(declare-fun bm!689965 () Bool)

(assert (=> bm!689965 (= call!689968 (validRegex!10219 (ite c!1389840 (reg!20120 (ite c!1389833 (reg!20120 expr!41) (ite c!1389831 (regOne!40095 expr!41) (regTwo!40094 expr!41)))) (ite c!1389839 (regOne!40095 (ite c!1389833 (reg!20120 expr!41) (ite c!1389831 (regOne!40095 expr!41) (regTwo!40094 expr!41)))) (regTwo!40094 (ite c!1389833 (reg!20120 expr!41) (ite c!1389831 (regOne!40095 expr!41) (regTwo!40094 expr!41))))))))))

(declare-fun d!2309145 () Bool)

(declare-fun res!3015362 () Bool)

(assert (=> d!2309145 (=> res!3015362 e!4484384)))

(assert (=> d!2309145 (= res!3015362 ((_ is ElementMatch!19791) (ite c!1389833 (reg!20120 expr!41) (ite c!1389831 (regOne!40095 expr!41) (regTwo!40094 expr!41)))))))

(assert (=> d!2309145 (= (validRegex!10219 (ite c!1389833 (reg!20120 expr!41) (ite c!1389831 (regOne!40095 expr!41) (regTwo!40094 expr!41)))) e!4484384)))

(declare-fun b!7522826 () Bool)

(assert (=> b!7522826 (= e!4484386 e!4484389)))

(declare-fun res!3015363 () Bool)

(assert (=> b!7522826 (=> (not res!3015363) (not e!4484389))))

(assert (=> b!7522826 (= res!3015363 call!689969)))

(assert (= (and d!2309145 (not res!3015362)) b!7522823))

(assert (= (and b!7522823 c!1389840) b!7522825))

(assert (= (and b!7522823 (not c!1389840)) b!7522821))

(assert (= (and b!7522825 res!3015361) b!7522820))

(assert (= (and b!7522821 c!1389839) b!7522824))

(assert (= (and b!7522821 (not c!1389839)) b!7522819))

(assert (= (and b!7522824 res!3015360) b!7522822))

(assert (= (and b!7522819 (not res!3015364)) b!7522826))

(assert (= (and b!7522826 res!3015363) b!7522827))

(assert (= (or b!7522822 b!7522826) bm!689964))

(assert (= (or b!7522824 b!7522827) bm!689963))

(assert (= (or b!7522820 bm!689963) bm!689965))

(declare-fun m!8100700 () Bool)

(assert (=> bm!689964 m!8100700))

(declare-fun m!8100702 () Bool)

(assert (=> b!7522825 m!8100702))

(declare-fun m!8100704 () Bool)

(assert (=> bm!689965 m!8100704))

(assert (=> bm!689954 d!2309145))

(declare-fun d!2309147 () Bool)

(declare-fun res!3015369 () Bool)

(declare-fun e!4484394 () Bool)

(assert (=> d!2309147 (=> res!3015369 e!4484394)))

(assert (=> d!2309147 (= res!3015369 ((_ is Nil!72562) (exprs!9027 (Context!17055 ($colon$colon!3359 (exprs!9027 context!49) (regTwo!40094 expr!41))))))))

(assert (=> d!2309147 (= (forall!18412 (exprs!9027 (Context!17055 ($colon$colon!3359 (exprs!9027 context!49) (regTwo!40094 expr!41)))) lambda!466433) e!4484394)))

(declare-fun b!7522832 () Bool)

(declare-fun e!4484395 () Bool)

(assert (=> b!7522832 (= e!4484394 e!4484395)))

(declare-fun res!3015370 () Bool)

(assert (=> b!7522832 (=> (not res!3015370) (not e!4484395))))

(declare-fun dynLambda!29891 (Int Regex!19791) Bool)

(assert (=> b!7522832 (= res!3015370 (dynLambda!29891 lambda!466433 (h!79010 (exprs!9027 (Context!17055 ($colon$colon!3359 (exprs!9027 context!49) (regTwo!40094 expr!41)))))))))

(declare-fun b!7522833 () Bool)

(assert (=> b!7522833 (= e!4484395 (forall!18412 (t!387387 (exprs!9027 (Context!17055 ($colon$colon!3359 (exprs!9027 context!49) (regTwo!40094 expr!41))))) lambda!466433))))

(assert (= (and d!2309147 (not res!3015369)) b!7522832))

(assert (= (and b!7522832 res!3015370) b!7522833))

(declare-fun b_lambda!288859 () Bool)

(assert (=> (not b_lambda!288859) (not b!7522832)))

(declare-fun m!8100706 () Bool)

(assert (=> b!7522832 m!8100706))

(declare-fun m!8100708 () Bool)

(assert (=> b!7522833 m!8100708))

(assert (=> d!2309133 d!2309147))

(declare-fun d!2309149 () Bool)

(declare-fun res!3015371 () Bool)

(declare-fun e!4484396 () Bool)

(assert (=> d!2309149 (=> res!3015371 e!4484396)))

(assert (=> d!2309149 (= res!3015371 ((_ is Nil!72562) (exprs!9027 context!49)))))

(assert (=> d!2309149 (= (forall!18412 (exprs!9027 context!49) lambda!466432) e!4484396)))

(declare-fun b!7522834 () Bool)

(declare-fun e!4484397 () Bool)

(assert (=> b!7522834 (= e!4484396 e!4484397)))

(declare-fun res!3015372 () Bool)

(assert (=> b!7522834 (=> (not res!3015372) (not e!4484397))))

(assert (=> b!7522834 (= res!3015372 (dynLambda!29891 lambda!466432 (h!79010 (exprs!9027 context!49))))))

(declare-fun b!7522835 () Bool)

(assert (=> b!7522835 (= e!4484397 (forall!18412 (t!387387 (exprs!9027 context!49)) lambda!466432))))

(assert (= (and d!2309149 (not res!3015371)) b!7522834))

(assert (= (and b!7522834 res!3015372) b!7522835))

(declare-fun b_lambda!288861 () Bool)

(assert (=> (not b_lambda!288861) (not b!7522834)))

(declare-fun m!8100710 () Bool)

(assert (=> b!7522834 m!8100710))

(declare-fun m!8100712 () Bool)

(assert (=> b!7522835 m!8100712))

(assert (=> d!2309121 d!2309149))

(declare-fun bm!689966 () Bool)

(declare-fun call!689973 () Bool)

(declare-fun call!689971 () Bool)

(assert (=> bm!689966 (= call!689973 call!689971)))

(declare-fun b!7522836 () Bool)

(declare-fun res!3015377 () Bool)

(declare-fun e!4484401 () Bool)

(assert (=> b!7522836 (=> res!3015377 e!4484401)))

(assert (=> b!7522836 (= res!3015377 (not ((_ is Concat!28636) (ite c!1389831 (regTwo!40095 expr!41) (regOne!40094 expr!41)))))))

(declare-fun e!4484402 () Bool)

(assert (=> b!7522836 (= e!4484402 e!4484401)))

(declare-fun b!7522837 () Bool)

(declare-fun e!4484403 () Bool)

(assert (=> b!7522837 (= e!4484403 call!689971)))

(declare-fun b!7522838 () Bool)

(declare-fun e!4484400 () Bool)

(assert (=> b!7522838 (= e!4484400 e!4484402)))

(declare-fun c!1389841 () Bool)

(assert (=> b!7522838 (= c!1389841 ((_ is Union!19791) (ite c!1389831 (regTwo!40095 expr!41) (regOne!40094 expr!41))))))

(declare-fun call!689972 () Bool)

(declare-fun bm!689967 () Bool)

(assert (=> bm!689967 (= call!689972 (validRegex!10219 (ite c!1389841 (regTwo!40095 (ite c!1389831 (regTwo!40095 expr!41) (regOne!40094 expr!41))) (regOne!40094 (ite c!1389831 (regTwo!40095 expr!41) (regOne!40094 expr!41))))))))

(declare-fun b!7522839 () Bool)

(declare-fun e!4484398 () Bool)

(assert (=> b!7522839 (= e!4484398 call!689972)))

(declare-fun b!7522840 () Bool)

(declare-fun e!4484399 () Bool)

(assert (=> b!7522840 (= e!4484399 e!4484400)))

(declare-fun c!1389842 () Bool)

(assert (=> b!7522840 (= c!1389842 ((_ is Star!19791) (ite c!1389831 (regTwo!40095 expr!41) (regOne!40094 expr!41))))))

(declare-fun b!7522841 () Bool)

(declare-fun res!3015373 () Bool)

(assert (=> b!7522841 (=> (not res!3015373) (not e!4484398))))

(assert (=> b!7522841 (= res!3015373 call!689973)))

(assert (=> b!7522841 (= e!4484402 e!4484398)))

(declare-fun b!7522842 () Bool)

(assert (=> b!7522842 (= e!4484400 e!4484403)))

(declare-fun res!3015374 () Bool)

(assert (=> b!7522842 (= res!3015374 (not (nullable!8625 (reg!20120 (ite c!1389831 (regTwo!40095 expr!41) (regOne!40094 expr!41))))))))

(assert (=> b!7522842 (=> (not res!3015374) (not e!4484403))))

(declare-fun b!7522844 () Bool)

(declare-fun e!4484404 () Bool)

(assert (=> b!7522844 (= e!4484404 call!689973)))

(declare-fun bm!689968 () Bool)

(assert (=> bm!689968 (= call!689971 (validRegex!10219 (ite c!1389842 (reg!20120 (ite c!1389831 (regTwo!40095 expr!41) (regOne!40094 expr!41))) (ite c!1389841 (regOne!40095 (ite c!1389831 (regTwo!40095 expr!41) (regOne!40094 expr!41))) (regTwo!40094 (ite c!1389831 (regTwo!40095 expr!41) (regOne!40094 expr!41)))))))))

(declare-fun d!2309151 () Bool)

(declare-fun res!3015375 () Bool)

(assert (=> d!2309151 (=> res!3015375 e!4484399)))

(assert (=> d!2309151 (= res!3015375 ((_ is ElementMatch!19791) (ite c!1389831 (regTwo!40095 expr!41) (regOne!40094 expr!41))))))

(assert (=> d!2309151 (= (validRegex!10219 (ite c!1389831 (regTwo!40095 expr!41) (regOne!40094 expr!41))) e!4484399)))

(declare-fun b!7522843 () Bool)

(assert (=> b!7522843 (= e!4484401 e!4484404)))

(declare-fun res!3015376 () Bool)

(assert (=> b!7522843 (=> (not res!3015376) (not e!4484404))))

(assert (=> b!7522843 (= res!3015376 call!689972)))

(assert (= (and d!2309151 (not res!3015375)) b!7522840))

(assert (= (and b!7522840 c!1389842) b!7522842))

(assert (= (and b!7522840 (not c!1389842)) b!7522838))

(assert (= (and b!7522842 res!3015374) b!7522837))

(assert (= (and b!7522838 c!1389841) b!7522841))

(assert (= (and b!7522838 (not c!1389841)) b!7522836))

(assert (= (and b!7522841 res!3015373) b!7522839))

(assert (= (and b!7522836 (not res!3015377)) b!7522843))

(assert (= (and b!7522843 res!3015376) b!7522844))

(assert (= (or b!7522839 b!7522843) bm!689967))

(assert (= (or b!7522841 b!7522844) bm!689966))

(assert (= (or b!7522837 bm!689966) bm!689968))

(declare-fun m!8100714 () Bool)

(assert (=> bm!689967 m!8100714))

(declare-fun m!8100716 () Bool)

(assert (=> b!7522842 m!8100716))

(declare-fun m!8100718 () Bool)

(assert (=> bm!689968 m!8100718))

(assert (=> bm!689952 d!2309151))

(declare-fun bm!689969 () Bool)

(declare-fun call!689976 () Bool)

(declare-fun call!689974 () Bool)

(assert (=> bm!689969 (= call!689976 call!689974)))

(declare-fun b!7522845 () Bool)

(declare-fun res!3015382 () Bool)

(declare-fun e!4484408 () Bool)

(assert (=> b!7522845 (=> res!3015382 e!4484408)))

(assert (=> b!7522845 (= res!3015382 (not ((_ is Concat!28636) (ite c!1389830 (reg!20120 (regTwo!40094 expr!41)) (ite c!1389829 (regOne!40095 (regTwo!40094 expr!41)) (regTwo!40094 (regTwo!40094 expr!41)))))))))

(declare-fun e!4484409 () Bool)

(assert (=> b!7522845 (= e!4484409 e!4484408)))

(declare-fun b!7522846 () Bool)

(declare-fun e!4484410 () Bool)

(assert (=> b!7522846 (= e!4484410 call!689974)))

(declare-fun b!7522847 () Bool)

(declare-fun e!4484407 () Bool)

(assert (=> b!7522847 (= e!4484407 e!4484409)))

(declare-fun c!1389843 () Bool)

(assert (=> b!7522847 (= c!1389843 ((_ is Union!19791) (ite c!1389830 (reg!20120 (regTwo!40094 expr!41)) (ite c!1389829 (regOne!40095 (regTwo!40094 expr!41)) (regTwo!40094 (regTwo!40094 expr!41))))))))

(declare-fun call!689975 () Bool)

(declare-fun bm!689970 () Bool)

(assert (=> bm!689970 (= call!689975 (validRegex!10219 (ite c!1389843 (regTwo!40095 (ite c!1389830 (reg!20120 (regTwo!40094 expr!41)) (ite c!1389829 (regOne!40095 (regTwo!40094 expr!41)) (regTwo!40094 (regTwo!40094 expr!41))))) (regOne!40094 (ite c!1389830 (reg!20120 (regTwo!40094 expr!41)) (ite c!1389829 (regOne!40095 (regTwo!40094 expr!41)) (regTwo!40094 (regTwo!40094 expr!41))))))))))

(declare-fun b!7522848 () Bool)

(declare-fun e!4484405 () Bool)

(assert (=> b!7522848 (= e!4484405 call!689975)))

(declare-fun b!7522849 () Bool)

(declare-fun e!4484406 () Bool)

(assert (=> b!7522849 (= e!4484406 e!4484407)))

(declare-fun c!1389844 () Bool)

(assert (=> b!7522849 (= c!1389844 ((_ is Star!19791) (ite c!1389830 (reg!20120 (regTwo!40094 expr!41)) (ite c!1389829 (regOne!40095 (regTwo!40094 expr!41)) (regTwo!40094 (regTwo!40094 expr!41))))))))

(declare-fun b!7522850 () Bool)

(declare-fun res!3015378 () Bool)

(assert (=> b!7522850 (=> (not res!3015378) (not e!4484405))))

(assert (=> b!7522850 (= res!3015378 call!689976)))

(assert (=> b!7522850 (= e!4484409 e!4484405)))

(declare-fun b!7522851 () Bool)

(assert (=> b!7522851 (= e!4484407 e!4484410)))

(declare-fun res!3015379 () Bool)

(assert (=> b!7522851 (= res!3015379 (not (nullable!8625 (reg!20120 (ite c!1389830 (reg!20120 (regTwo!40094 expr!41)) (ite c!1389829 (regOne!40095 (regTwo!40094 expr!41)) (regTwo!40094 (regTwo!40094 expr!41))))))))))

(assert (=> b!7522851 (=> (not res!3015379) (not e!4484410))))

(declare-fun b!7522853 () Bool)

(declare-fun e!4484411 () Bool)

(assert (=> b!7522853 (= e!4484411 call!689976)))

(declare-fun bm!689971 () Bool)

(assert (=> bm!689971 (= call!689974 (validRegex!10219 (ite c!1389844 (reg!20120 (ite c!1389830 (reg!20120 (regTwo!40094 expr!41)) (ite c!1389829 (regOne!40095 (regTwo!40094 expr!41)) (regTwo!40094 (regTwo!40094 expr!41))))) (ite c!1389843 (regOne!40095 (ite c!1389830 (reg!20120 (regTwo!40094 expr!41)) (ite c!1389829 (regOne!40095 (regTwo!40094 expr!41)) (regTwo!40094 (regTwo!40094 expr!41))))) (regTwo!40094 (ite c!1389830 (reg!20120 (regTwo!40094 expr!41)) (ite c!1389829 (regOne!40095 (regTwo!40094 expr!41)) (regTwo!40094 (regTwo!40094 expr!41)))))))))))

(declare-fun d!2309153 () Bool)

(declare-fun res!3015380 () Bool)

(assert (=> d!2309153 (=> res!3015380 e!4484406)))

(assert (=> d!2309153 (= res!3015380 ((_ is ElementMatch!19791) (ite c!1389830 (reg!20120 (regTwo!40094 expr!41)) (ite c!1389829 (regOne!40095 (regTwo!40094 expr!41)) (regTwo!40094 (regTwo!40094 expr!41))))))))

(assert (=> d!2309153 (= (validRegex!10219 (ite c!1389830 (reg!20120 (regTwo!40094 expr!41)) (ite c!1389829 (regOne!40095 (regTwo!40094 expr!41)) (regTwo!40094 (regTwo!40094 expr!41))))) e!4484406)))

(declare-fun b!7522852 () Bool)

(assert (=> b!7522852 (= e!4484408 e!4484411)))

(declare-fun res!3015381 () Bool)

(assert (=> b!7522852 (=> (not res!3015381) (not e!4484411))))

(assert (=> b!7522852 (= res!3015381 call!689975)))

(assert (= (and d!2309153 (not res!3015380)) b!7522849))

(assert (= (and b!7522849 c!1389844) b!7522851))

(assert (= (and b!7522849 (not c!1389844)) b!7522847))

(assert (= (and b!7522851 res!3015379) b!7522846))

(assert (= (and b!7522847 c!1389843) b!7522850))

(assert (= (and b!7522847 (not c!1389843)) b!7522845))

(assert (= (and b!7522850 res!3015378) b!7522848))

(assert (= (and b!7522845 (not res!3015382)) b!7522852))

(assert (= (and b!7522852 res!3015381) b!7522853))

(assert (= (or b!7522848 b!7522852) bm!689970))

(assert (= (or b!7522850 b!7522853) bm!689969))

(assert (= (or b!7522846 bm!689969) bm!689971))

(declare-fun m!8100720 () Bool)

(assert (=> bm!689970 m!8100720))

(declare-fun m!8100722 () Bool)

(assert (=> b!7522851 m!8100722))

(declare-fun m!8100724 () Bool)

(assert (=> bm!689971 m!8100724))

(assert (=> bm!689950 d!2309153))

(declare-fun b!7522881 () Bool)

(declare-fun e!4484436 () Bool)

(declare-fun e!4484440 () Bool)

(assert (=> b!7522881 (= e!4484436 e!4484440)))

(declare-fun res!3015403 () Bool)

(declare-fun call!689985 () Bool)

(assert (=> b!7522881 (= res!3015403 call!689985)))

(assert (=> b!7522881 (=> (not res!3015403) (not e!4484440))))

(declare-fun b!7522882 () Bool)

(declare-fun e!4484435 () Bool)

(declare-fun call!689984 () Bool)

(assert (=> b!7522882 (= e!4484435 call!689984)))

(declare-fun b!7522883 () Bool)

(assert (=> b!7522883 (= e!4484440 call!689984)))

(declare-fun bm!689979 () Bool)

(declare-fun c!1389849 () Bool)

(assert (=> bm!689979 (= call!689984 (nullable!8625 (ite c!1389849 (regTwo!40095 (regOne!40094 expr!41)) (regTwo!40094 (regOne!40094 expr!41)))))))

(declare-fun b!7522884 () Bool)

(assert (=> b!7522884 (= e!4484436 e!4484435)))

(declare-fun res!3015402 () Bool)

(assert (=> b!7522884 (= res!3015402 call!689985)))

(assert (=> b!7522884 (=> res!3015402 e!4484435)))

(declare-fun d!2309155 () Bool)

(declare-fun res!3015404 () Bool)

(declare-fun e!4484437 () Bool)

(assert (=> d!2309155 (=> res!3015404 e!4484437)))

(assert (=> d!2309155 (= res!3015404 ((_ is EmptyExpr!19791) (regOne!40094 expr!41)))))

(assert (=> d!2309155 (= (nullableFct!3452 (regOne!40094 expr!41)) e!4484437)))

(declare-fun b!7522885 () Bool)

(declare-fun e!4484438 () Bool)

(assert (=> b!7522885 (= e!4484437 e!4484438)))

(declare-fun res!3015405 () Bool)

(assert (=> b!7522885 (=> (not res!3015405) (not e!4484438))))

(assert (=> b!7522885 (= res!3015405 (and (not ((_ is EmptyLang!19791) (regOne!40094 expr!41))) (not ((_ is ElementMatch!19791) (regOne!40094 expr!41)))))))

(declare-fun b!7522886 () Bool)

(declare-fun e!4484439 () Bool)

(assert (=> b!7522886 (= e!4484438 e!4484439)))

(declare-fun res!3015406 () Bool)

(assert (=> b!7522886 (=> res!3015406 e!4484439)))

(assert (=> b!7522886 (= res!3015406 ((_ is Star!19791) (regOne!40094 expr!41)))))

(declare-fun bm!689980 () Bool)

(assert (=> bm!689980 (= call!689985 (nullable!8625 (ite c!1389849 (regOne!40095 (regOne!40094 expr!41)) (regOne!40094 (regOne!40094 expr!41)))))))

(declare-fun b!7522887 () Bool)

(assert (=> b!7522887 (= e!4484439 e!4484436)))

(assert (=> b!7522887 (= c!1389849 ((_ is Union!19791) (regOne!40094 expr!41)))))

(assert (= (and d!2309155 (not res!3015404)) b!7522885))

(assert (= (and b!7522885 res!3015405) b!7522886))

(assert (= (and b!7522886 (not res!3015406)) b!7522887))

(assert (= (and b!7522887 c!1389849) b!7522884))

(assert (= (and b!7522887 (not c!1389849)) b!7522881))

(assert (= (and b!7522884 (not res!3015402)) b!7522882))

(assert (= (and b!7522881 res!3015403) b!7522883))

(assert (= (or b!7522884 b!7522881) bm!689980))

(assert (= (or b!7522882 b!7522883) bm!689979))

(declare-fun m!8100732 () Bool)

(assert (=> bm!689979 m!8100732))

(declare-fun m!8100734 () Bool)

(assert (=> bm!689980 m!8100734))

(assert (=> d!2309137 d!2309155))

(declare-fun b!7522889 () Bool)

(declare-fun e!4484441 () Bool)

(declare-fun tp!2185429 () Bool)

(declare-fun tp!2185432 () Bool)

(assert (=> b!7522889 (= e!4484441 (and tp!2185429 tp!2185432))))

(declare-fun b!7522890 () Bool)

(declare-fun tp!2185431 () Bool)

(assert (=> b!7522890 (= e!4484441 tp!2185431)))

(assert (=> b!7522807 (= tp!2185424 e!4484441)))

(declare-fun b!7522888 () Bool)

(assert (=> b!7522888 (= e!4484441 tp_is_empty!49937)))

(declare-fun b!7522891 () Bool)

(declare-fun tp!2185428 () Bool)

(declare-fun tp!2185430 () Bool)

(assert (=> b!7522891 (= e!4484441 (and tp!2185428 tp!2185430))))

(assert (= (and b!7522807 ((_ is ElementMatch!19791) (regOne!40094 (reg!20120 expr!41)))) b!7522888))

(assert (= (and b!7522807 ((_ is Concat!28636) (regOne!40094 (reg!20120 expr!41)))) b!7522889))

(assert (= (and b!7522807 ((_ is Star!19791) (regOne!40094 (reg!20120 expr!41)))) b!7522890))

(assert (= (and b!7522807 ((_ is Union!19791) (regOne!40094 (reg!20120 expr!41)))) b!7522891))

(declare-fun b!7522895 () Bool)

(declare-fun e!4484444 () Bool)

(declare-fun tp!2185434 () Bool)

(declare-fun tp!2185437 () Bool)

(assert (=> b!7522895 (= e!4484444 (and tp!2185434 tp!2185437))))

(declare-fun b!7522896 () Bool)

(declare-fun tp!2185436 () Bool)

(assert (=> b!7522896 (= e!4484444 tp!2185436)))

(assert (=> b!7522807 (= tp!2185427 e!4484444)))

(declare-fun b!7522894 () Bool)

(assert (=> b!7522894 (= e!4484444 tp_is_empty!49937)))

(declare-fun b!7522897 () Bool)

(declare-fun tp!2185433 () Bool)

(declare-fun tp!2185435 () Bool)

(assert (=> b!7522897 (= e!4484444 (and tp!2185433 tp!2185435))))

(assert (= (and b!7522807 ((_ is ElementMatch!19791) (regTwo!40094 (reg!20120 expr!41)))) b!7522894))

(assert (= (and b!7522807 ((_ is Concat!28636) (regTwo!40094 (reg!20120 expr!41)))) b!7522895))

(assert (= (and b!7522807 ((_ is Star!19791) (regTwo!40094 (reg!20120 expr!41)))) b!7522896))

(assert (= (and b!7522807 ((_ is Union!19791) (regTwo!40094 (reg!20120 expr!41)))) b!7522897))

(declare-fun b!7522899 () Bool)

(declare-fun e!4484445 () Bool)

(declare-fun tp!2185439 () Bool)

(declare-fun tp!2185442 () Bool)

(assert (=> b!7522899 (= e!4484445 (and tp!2185439 tp!2185442))))

(declare-fun b!7522900 () Bool)

(declare-fun tp!2185441 () Bool)

(assert (=> b!7522900 (= e!4484445 tp!2185441)))

(assert (=> b!7522791 (= tp!2185405 e!4484445)))

(declare-fun b!7522898 () Bool)

(assert (=> b!7522898 (= e!4484445 tp_is_empty!49937)))

(declare-fun b!7522901 () Bool)

(declare-fun tp!2185438 () Bool)

(declare-fun tp!2185440 () Bool)

(assert (=> b!7522901 (= e!4484445 (and tp!2185438 tp!2185440))))

(assert (= (and b!7522791 ((_ is ElementMatch!19791) (reg!20120 (regTwo!40095 expr!41)))) b!7522898))

(assert (= (and b!7522791 ((_ is Concat!28636) (reg!20120 (regTwo!40095 expr!41)))) b!7522899))

(assert (= (and b!7522791 ((_ is Star!19791) (reg!20120 (regTwo!40095 expr!41)))) b!7522900))

(assert (= (and b!7522791 ((_ is Union!19791) (reg!20120 (regTwo!40095 expr!41)))) b!7522901))

(declare-fun b!7522903 () Bool)

(declare-fun e!4484446 () Bool)

(declare-fun tp!2185444 () Bool)

(declare-fun tp!2185447 () Bool)

(assert (=> b!7522903 (= e!4484446 (and tp!2185444 tp!2185447))))

(declare-fun b!7522904 () Bool)

(declare-fun tp!2185446 () Bool)

(assert (=> b!7522904 (= e!4484446 tp!2185446)))

(assert (=> b!7522796 (= tp!2185407 e!4484446)))

(declare-fun b!7522902 () Bool)

(assert (=> b!7522902 (= e!4484446 tp_is_empty!49937)))

(declare-fun b!7522905 () Bool)

(declare-fun tp!2185443 () Bool)

(declare-fun tp!2185445 () Bool)

(assert (=> b!7522905 (= e!4484446 (and tp!2185443 tp!2185445))))

(assert (= (and b!7522796 ((_ is ElementMatch!19791) (regOne!40095 (regOne!40094 expr!41)))) b!7522902))

(assert (= (and b!7522796 ((_ is Concat!28636) (regOne!40095 (regOne!40094 expr!41)))) b!7522903))

(assert (= (and b!7522796 ((_ is Star!19791) (regOne!40095 (regOne!40094 expr!41)))) b!7522904))

(assert (= (and b!7522796 ((_ is Union!19791) (regOne!40095 (regOne!40094 expr!41)))) b!7522905))

(declare-fun b!7522907 () Bool)

(declare-fun e!4484447 () Bool)

(declare-fun tp!2185449 () Bool)

(declare-fun tp!2185452 () Bool)

(assert (=> b!7522907 (= e!4484447 (and tp!2185449 tp!2185452))))

(declare-fun b!7522908 () Bool)

(declare-fun tp!2185451 () Bool)

(assert (=> b!7522908 (= e!4484447 tp!2185451)))

(assert (=> b!7522796 (= tp!2185409 e!4484447)))

(declare-fun b!7522906 () Bool)

(assert (=> b!7522906 (= e!4484447 tp_is_empty!49937)))

(declare-fun b!7522909 () Bool)

(declare-fun tp!2185448 () Bool)

(declare-fun tp!2185450 () Bool)

(assert (=> b!7522909 (= e!4484447 (and tp!2185448 tp!2185450))))

(assert (= (and b!7522796 ((_ is ElementMatch!19791) (regTwo!40095 (regOne!40094 expr!41)))) b!7522906))

(assert (= (and b!7522796 ((_ is Concat!28636) (regTwo!40095 (regOne!40094 expr!41)))) b!7522907))

(assert (= (and b!7522796 ((_ is Star!19791) (regTwo!40095 (regOne!40094 expr!41)))) b!7522908))

(assert (= (and b!7522796 ((_ is Union!19791) (regTwo!40095 (regOne!40094 expr!41)))) b!7522909))

(declare-fun b!7522911 () Bool)

(declare-fun e!4484450 () Bool)

(declare-fun tp!2185454 () Bool)

(declare-fun tp!2185457 () Bool)

(assert (=> b!7522911 (= e!4484450 (and tp!2185454 tp!2185457))))

(declare-fun b!7522913 () Bool)

(declare-fun tp!2185456 () Bool)

(assert (=> b!7522913 (= e!4484450 tp!2185456)))

(assert (=> b!7522787 (= tp!2185400 e!4484450)))

(declare-fun b!7522910 () Bool)

(assert (=> b!7522910 (= e!4484450 tp_is_empty!49937)))

(declare-fun b!7522915 () Bool)

(declare-fun tp!2185453 () Bool)

(declare-fun tp!2185455 () Bool)

(assert (=> b!7522915 (= e!4484450 (and tp!2185453 tp!2185455))))

(assert (= (and b!7522787 ((_ is ElementMatch!19791) (reg!20120 (regOne!40095 expr!41)))) b!7522910))

(assert (= (and b!7522787 ((_ is Concat!28636) (reg!20120 (regOne!40095 expr!41)))) b!7522911))

(assert (= (and b!7522787 ((_ is Star!19791) (reg!20120 (regOne!40095 expr!41)))) b!7522913))

(assert (= (and b!7522787 ((_ is Union!19791) (reg!20120 (regOne!40095 expr!41)))) b!7522915))

(declare-fun b!7522917 () Bool)

(declare-fun e!4484451 () Bool)

(declare-fun tp!2185459 () Bool)

(declare-fun tp!2185462 () Bool)

(assert (=> b!7522917 (= e!4484451 (and tp!2185459 tp!2185462))))

(declare-fun b!7522918 () Bool)

(declare-fun tp!2185461 () Bool)

(assert (=> b!7522918 (= e!4484451 tp!2185461)))

(assert (=> b!7522792 (= tp!2185402 e!4484451)))

(declare-fun b!7522916 () Bool)

(assert (=> b!7522916 (= e!4484451 tp_is_empty!49937)))

(declare-fun b!7522919 () Bool)

(declare-fun tp!2185458 () Bool)

(declare-fun tp!2185460 () Bool)

(assert (=> b!7522919 (= e!4484451 (and tp!2185458 tp!2185460))))

(assert (= (and b!7522792 ((_ is ElementMatch!19791) (regOne!40095 (regTwo!40095 expr!41)))) b!7522916))

(assert (= (and b!7522792 ((_ is Concat!28636) (regOne!40095 (regTwo!40095 expr!41)))) b!7522917))

(assert (= (and b!7522792 ((_ is Star!19791) (regOne!40095 (regTwo!40095 expr!41)))) b!7522918))

(assert (= (and b!7522792 ((_ is Union!19791) (regOne!40095 (regTwo!40095 expr!41)))) b!7522919))

(declare-fun b!7522921 () Bool)

(declare-fun e!4484452 () Bool)

(declare-fun tp!2185464 () Bool)

(declare-fun tp!2185467 () Bool)

(assert (=> b!7522921 (= e!4484452 (and tp!2185464 tp!2185467))))

(declare-fun b!7522922 () Bool)

(declare-fun tp!2185466 () Bool)

(assert (=> b!7522922 (= e!4484452 tp!2185466)))

(assert (=> b!7522792 (= tp!2185404 e!4484452)))

(declare-fun b!7522920 () Bool)

(assert (=> b!7522920 (= e!4484452 tp_is_empty!49937)))

(declare-fun b!7522923 () Bool)

(declare-fun tp!2185463 () Bool)

(declare-fun tp!2185465 () Bool)

(assert (=> b!7522923 (= e!4484452 (and tp!2185463 tp!2185465))))

(assert (= (and b!7522792 ((_ is ElementMatch!19791) (regTwo!40095 (regTwo!40095 expr!41)))) b!7522920))

(assert (= (and b!7522792 ((_ is Concat!28636) (regTwo!40095 (regTwo!40095 expr!41)))) b!7522921))

(assert (= (and b!7522792 ((_ is Star!19791) (regTwo!40095 (regTwo!40095 expr!41)))) b!7522922))

(assert (= (and b!7522792 ((_ is Union!19791) (regTwo!40095 (regTwo!40095 expr!41)))) b!7522923))

(declare-fun b!7522925 () Bool)

(declare-fun e!4484453 () Bool)

(declare-fun tp!2185469 () Bool)

(declare-fun tp!2185472 () Bool)

(assert (=> b!7522925 (= e!4484453 (and tp!2185469 tp!2185472))))

(declare-fun b!7522926 () Bool)

(declare-fun tp!2185471 () Bool)

(assert (=> b!7522926 (= e!4484453 tp!2185471)))

(assert (=> b!7522788 (= tp!2185397 e!4484453)))

(declare-fun b!7522924 () Bool)

(assert (=> b!7522924 (= e!4484453 tp_is_empty!49937)))

(declare-fun b!7522927 () Bool)

(declare-fun tp!2185468 () Bool)

(declare-fun tp!2185470 () Bool)

(assert (=> b!7522927 (= e!4484453 (and tp!2185468 tp!2185470))))

(assert (= (and b!7522788 ((_ is ElementMatch!19791) (regOne!40095 (regOne!40095 expr!41)))) b!7522924))

(assert (= (and b!7522788 ((_ is Concat!28636) (regOne!40095 (regOne!40095 expr!41)))) b!7522925))

(assert (= (and b!7522788 ((_ is Star!19791) (regOne!40095 (regOne!40095 expr!41)))) b!7522926))

(assert (= (and b!7522788 ((_ is Union!19791) (regOne!40095 (regOne!40095 expr!41)))) b!7522927))

(declare-fun b!7522938 () Bool)

(declare-fun e!4484461 () Bool)

(declare-fun tp!2185474 () Bool)

(declare-fun tp!2185477 () Bool)

(assert (=> b!7522938 (= e!4484461 (and tp!2185474 tp!2185477))))

(declare-fun b!7522939 () Bool)

(declare-fun tp!2185476 () Bool)

(assert (=> b!7522939 (= e!4484461 tp!2185476)))

(assert (=> b!7522788 (= tp!2185399 e!4484461)))

(declare-fun b!7522937 () Bool)

(assert (=> b!7522937 (= e!4484461 tp_is_empty!49937)))

(declare-fun b!7522940 () Bool)

(declare-fun tp!2185473 () Bool)

(declare-fun tp!2185475 () Bool)

(assert (=> b!7522940 (= e!4484461 (and tp!2185473 tp!2185475))))

(assert (= (and b!7522788 ((_ is ElementMatch!19791) (regTwo!40095 (regOne!40095 expr!41)))) b!7522937))

(assert (= (and b!7522788 ((_ is Concat!28636) (regTwo!40095 (regOne!40095 expr!41)))) b!7522938))

(assert (= (and b!7522788 ((_ is Star!19791) (regTwo!40095 (regOne!40095 expr!41)))) b!7522939))

(assert (= (and b!7522788 ((_ is Union!19791) (regTwo!40095 (regOne!40095 expr!41)))) b!7522940))

(declare-fun b!7522942 () Bool)

(declare-fun e!4484462 () Bool)

(declare-fun tp!2185479 () Bool)

(declare-fun tp!2185482 () Bool)

(assert (=> b!7522942 (= e!4484462 (and tp!2185479 tp!2185482))))

(declare-fun b!7522943 () Bool)

(declare-fun tp!2185481 () Bool)

(assert (=> b!7522943 (= e!4484462 tp!2185481)))

(assert (=> b!7522798 (= tp!2185413 e!4484462)))

(declare-fun b!7522941 () Bool)

(assert (=> b!7522941 (= e!4484462 tp_is_empty!49937)))

(declare-fun b!7522944 () Bool)

(declare-fun tp!2185478 () Bool)

(declare-fun tp!2185480 () Bool)

(assert (=> b!7522944 (= e!4484462 (and tp!2185478 tp!2185480))))

(assert (= (and b!7522798 ((_ is ElementMatch!19791) (regOne!40094 (regTwo!40094 expr!41)))) b!7522941))

(assert (= (and b!7522798 ((_ is Concat!28636) (regOne!40094 (regTwo!40094 expr!41)))) b!7522942))

(assert (= (and b!7522798 ((_ is Star!19791) (regOne!40094 (regTwo!40094 expr!41)))) b!7522943))

(assert (= (and b!7522798 ((_ is Union!19791) (regOne!40094 (regTwo!40094 expr!41)))) b!7522944))

(declare-fun b!7522946 () Bool)

(declare-fun e!4484463 () Bool)

(declare-fun tp!2185484 () Bool)

(declare-fun tp!2185487 () Bool)

(assert (=> b!7522946 (= e!4484463 (and tp!2185484 tp!2185487))))

(declare-fun b!7522947 () Bool)

(declare-fun tp!2185486 () Bool)

(assert (=> b!7522947 (= e!4484463 tp!2185486)))

(assert (=> b!7522798 (= tp!2185416 e!4484463)))

(declare-fun b!7522945 () Bool)

(assert (=> b!7522945 (= e!4484463 tp_is_empty!49937)))

(declare-fun b!7522948 () Bool)

(declare-fun tp!2185483 () Bool)

(declare-fun tp!2185485 () Bool)

(assert (=> b!7522948 (= e!4484463 (and tp!2185483 tp!2185485))))

(assert (= (and b!7522798 ((_ is ElementMatch!19791) (regTwo!40094 (regTwo!40094 expr!41)))) b!7522945))

(assert (= (and b!7522798 ((_ is Concat!28636) (regTwo!40094 (regTwo!40094 expr!41)))) b!7522946))

(assert (= (and b!7522798 ((_ is Star!19791) (regTwo!40094 (regTwo!40094 expr!41)))) b!7522947))

(assert (= (and b!7522798 ((_ is Union!19791) (regTwo!40094 (regTwo!40094 expr!41)))) b!7522948))

(declare-fun b!7522950 () Bool)

(declare-fun e!4484464 () Bool)

(declare-fun tp!2185489 () Bool)

(declare-fun tp!2185492 () Bool)

(assert (=> b!7522950 (= e!4484464 (and tp!2185489 tp!2185492))))

(declare-fun b!7522951 () Bool)

(declare-fun tp!2185491 () Bool)

(assert (=> b!7522951 (= e!4484464 tp!2185491)))

(assert (=> b!7522794 (= tp!2185408 e!4484464)))

(declare-fun b!7522949 () Bool)

(assert (=> b!7522949 (= e!4484464 tp_is_empty!49937)))

(declare-fun b!7522952 () Bool)

(declare-fun tp!2185488 () Bool)

(declare-fun tp!2185490 () Bool)

(assert (=> b!7522952 (= e!4484464 (and tp!2185488 tp!2185490))))

(assert (= (and b!7522794 ((_ is ElementMatch!19791) (regOne!40094 (regOne!40094 expr!41)))) b!7522949))

(assert (= (and b!7522794 ((_ is Concat!28636) (regOne!40094 (regOne!40094 expr!41)))) b!7522950))

(assert (= (and b!7522794 ((_ is Star!19791) (regOne!40094 (regOne!40094 expr!41)))) b!7522951))

(assert (= (and b!7522794 ((_ is Union!19791) (regOne!40094 (regOne!40094 expr!41)))) b!7522952))

(declare-fun b!7522954 () Bool)

(declare-fun e!4484465 () Bool)

(declare-fun tp!2185494 () Bool)

(declare-fun tp!2185497 () Bool)

(assert (=> b!7522954 (= e!4484465 (and tp!2185494 tp!2185497))))

(declare-fun b!7522955 () Bool)

(declare-fun tp!2185496 () Bool)

(assert (=> b!7522955 (= e!4484465 tp!2185496)))

(assert (=> b!7522794 (= tp!2185411 e!4484465)))

(declare-fun b!7522953 () Bool)

(assert (=> b!7522953 (= e!4484465 tp_is_empty!49937)))

(declare-fun b!7522956 () Bool)

(declare-fun tp!2185493 () Bool)

(declare-fun tp!2185495 () Bool)

(assert (=> b!7522956 (= e!4484465 (and tp!2185493 tp!2185495))))

(assert (= (and b!7522794 ((_ is ElementMatch!19791) (regTwo!40094 (regOne!40094 expr!41)))) b!7522953))

(assert (= (and b!7522794 ((_ is Concat!28636) (regTwo!40094 (regOne!40094 expr!41)))) b!7522954))

(assert (= (and b!7522794 ((_ is Star!19791) (regTwo!40094 (regOne!40094 expr!41)))) b!7522955))

(assert (= (and b!7522794 ((_ is Union!19791) (regTwo!40094 (regOne!40094 expr!41)))) b!7522956))

(declare-fun b!7522958 () Bool)

(declare-fun e!4484466 () Bool)

(declare-fun tp!2185499 () Bool)

(declare-fun tp!2185502 () Bool)

(assert (=> b!7522958 (= e!4484466 (and tp!2185499 tp!2185502))))

(declare-fun b!7522959 () Bool)

(declare-fun tp!2185501 () Bool)

(assert (=> b!7522959 (= e!4484466 tp!2185501)))

(assert (=> b!7522799 (= tp!2185415 e!4484466)))

(declare-fun b!7522957 () Bool)

(assert (=> b!7522957 (= e!4484466 tp_is_empty!49937)))

(declare-fun b!7522960 () Bool)

(declare-fun tp!2185498 () Bool)

(declare-fun tp!2185500 () Bool)

(assert (=> b!7522960 (= e!4484466 (and tp!2185498 tp!2185500))))

(assert (= (and b!7522799 ((_ is ElementMatch!19791) (reg!20120 (regTwo!40094 expr!41)))) b!7522957))

(assert (= (and b!7522799 ((_ is Concat!28636) (reg!20120 (regTwo!40094 expr!41)))) b!7522958))

(assert (= (and b!7522799 ((_ is Star!19791) (reg!20120 (regTwo!40094 expr!41)))) b!7522959))

(assert (= (and b!7522799 ((_ is Union!19791) (reg!20120 (regTwo!40094 expr!41)))) b!7522960))

(declare-fun b!7522962 () Bool)

(declare-fun e!4484467 () Bool)

(declare-fun tp!2185504 () Bool)

(declare-fun tp!2185507 () Bool)

(assert (=> b!7522962 (= e!4484467 (and tp!2185504 tp!2185507))))

(declare-fun b!7522963 () Bool)

(declare-fun tp!2185506 () Bool)

(assert (=> b!7522963 (= e!4484467 tp!2185506)))

(assert (=> b!7522790 (= tp!2185403 e!4484467)))

(declare-fun b!7522961 () Bool)

(assert (=> b!7522961 (= e!4484467 tp_is_empty!49937)))

(declare-fun b!7522964 () Bool)

(declare-fun tp!2185503 () Bool)

(declare-fun tp!2185505 () Bool)

(assert (=> b!7522964 (= e!4484467 (and tp!2185503 tp!2185505))))

(assert (= (and b!7522790 ((_ is ElementMatch!19791) (regOne!40094 (regTwo!40095 expr!41)))) b!7522961))

(assert (= (and b!7522790 ((_ is Concat!28636) (regOne!40094 (regTwo!40095 expr!41)))) b!7522962))

(assert (= (and b!7522790 ((_ is Star!19791) (regOne!40094 (regTwo!40095 expr!41)))) b!7522963))

(assert (= (and b!7522790 ((_ is Union!19791) (regOne!40094 (regTwo!40095 expr!41)))) b!7522964))

(declare-fun b!7522966 () Bool)

(declare-fun e!4484468 () Bool)

(declare-fun tp!2185509 () Bool)

(declare-fun tp!2185512 () Bool)

(assert (=> b!7522966 (= e!4484468 (and tp!2185509 tp!2185512))))

(declare-fun b!7522967 () Bool)

(declare-fun tp!2185511 () Bool)

(assert (=> b!7522967 (= e!4484468 tp!2185511)))

(assert (=> b!7522790 (= tp!2185406 e!4484468)))

(declare-fun b!7522965 () Bool)

(assert (=> b!7522965 (= e!4484468 tp_is_empty!49937)))

(declare-fun b!7522968 () Bool)

(declare-fun tp!2185508 () Bool)

(declare-fun tp!2185510 () Bool)

(assert (=> b!7522968 (= e!4484468 (and tp!2185508 tp!2185510))))

(assert (= (and b!7522790 ((_ is ElementMatch!19791) (regTwo!40094 (regTwo!40095 expr!41)))) b!7522965))

(assert (= (and b!7522790 ((_ is Concat!28636) (regTwo!40094 (regTwo!40095 expr!41)))) b!7522966))

(assert (= (and b!7522790 ((_ is Star!19791) (regTwo!40094 (regTwo!40095 expr!41)))) b!7522967))

(assert (= (and b!7522790 ((_ is Union!19791) (regTwo!40094 (regTwo!40095 expr!41)))) b!7522968))

(declare-fun b!7522977 () Bool)

(declare-fun e!4484476 () Bool)

(declare-fun tp!2185514 () Bool)

(declare-fun tp!2185517 () Bool)

(assert (=> b!7522977 (= e!4484476 (and tp!2185514 tp!2185517))))

(declare-fun b!7522979 () Bool)

(declare-fun tp!2185516 () Bool)

(assert (=> b!7522979 (= e!4484476 tp!2185516)))

(assert (=> b!7522795 (= tp!2185410 e!4484476)))

(declare-fun b!7522976 () Bool)

(assert (=> b!7522976 (= e!4484476 tp_is_empty!49937)))

(declare-fun b!7522980 () Bool)

(declare-fun tp!2185513 () Bool)

(declare-fun tp!2185515 () Bool)

(assert (=> b!7522980 (= e!4484476 (and tp!2185513 tp!2185515))))

(assert (= (and b!7522795 ((_ is ElementMatch!19791) (reg!20120 (regOne!40094 expr!41)))) b!7522976))

(assert (= (and b!7522795 ((_ is Concat!28636) (reg!20120 (regOne!40094 expr!41)))) b!7522977))

(assert (= (and b!7522795 ((_ is Star!19791) (reg!20120 (regOne!40094 expr!41)))) b!7522979))

(assert (= (and b!7522795 ((_ is Union!19791) (reg!20120 (regOne!40094 expr!41)))) b!7522980))

(declare-fun b!7522983 () Bool)

(declare-fun e!4484477 () Bool)

(declare-fun tp!2185519 () Bool)

(declare-fun tp!2185522 () Bool)

(assert (=> b!7522983 (= e!4484477 (and tp!2185519 tp!2185522))))

(declare-fun b!7522984 () Bool)

(declare-fun tp!2185521 () Bool)

(assert (=> b!7522984 (= e!4484477 tp!2185521)))

(assert (=> b!7522786 (= tp!2185398 e!4484477)))

(declare-fun b!7522982 () Bool)

(assert (=> b!7522982 (= e!4484477 tp_is_empty!49937)))

(declare-fun b!7522985 () Bool)

(declare-fun tp!2185518 () Bool)

(declare-fun tp!2185520 () Bool)

(assert (=> b!7522985 (= e!4484477 (and tp!2185518 tp!2185520))))

(assert (= (and b!7522786 ((_ is ElementMatch!19791) (regOne!40094 (regOne!40095 expr!41)))) b!7522982))

(assert (= (and b!7522786 ((_ is Concat!28636) (regOne!40094 (regOne!40095 expr!41)))) b!7522983))

(assert (= (and b!7522786 ((_ is Star!19791) (regOne!40094 (regOne!40095 expr!41)))) b!7522984))

(assert (= (and b!7522786 ((_ is Union!19791) (regOne!40094 (regOne!40095 expr!41)))) b!7522985))

(declare-fun b!7522987 () Bool)

(declare-fun e!4484478 () Bool)

(declare-fun tp!2185524 () Bool)

(declare-fun tp!2185527 () Bool)

(assert (=> b!7522987 (= e!4484478 (and tp!2185524 tp!2185527))))

(declare-fun b!7522988 () Bool)

(declare-fun tp!2185526 () Bool)

(assert (=> b!7522988 (= e!4484478 tp!2185526)))

(assert (=> b!7522786 (= tp!2185401 e!4484478)))

(declare-fun b!7522986 () Bool)

(assert (=> b!7522986 (= e!4484478 tp_is_empty!49937)))

(declare-fun b!7522989 () Bool)

(declare-fun tp!2185523 () Bool)

(declare-fun tp!2185525 () Bool)

(assert (=> b!7522989 (= e!4484478 (and tp!2185523 tp!2185525))))

(assert (= (and b!7522786 ((_ is ElementMatch!19791) (regTwo!40094 (regOne!40095 expr!41)))) b!7522986))

(assert (= (and b!7522786 ((_ is Concat!28636) (regTwo!40094 (regOne!40095 expr!41)))) b!7522987))

(assert (= (and b!7522786 ((_ is Star!19791) (regTwo!40094 (regOne!40095 expr!41)))) b!7522988))

(assert (= (and b!7522786 ((_ is Union!19791) (regTwo!40094 (regOne!40095 expr!41)))) b!7522989))

(declare-fun b!7522991 () Bool)

(declare-fun e!4484479 () Bool)

(declare-fun tp!2185529 () Bool)

(declare-fun tp!2185532 () Bool)

(assert (=> b!7522991 (= e!4484479 (and tp!2185529 tp!2185532))))

(declare-fun b!7522992 () Bool)

(declare-fun tp!2185531 () Bool)

(assert (=> b!7522992 (= e!4484479 tp!2185531)))

(assert (=> b!7522800 (= tp!2185412 e!4484479)))

(declare-fun b!7522990 () Bool)

(assert (=> b!7522990 (= e!4484479 tp_is_empty!49937)))

(declare-fun b!7522993 () Bool)

(declare-fun tp!2185528 () Bool)

(declare-fun tp!2185530 () Bool)

(assert (=> b!7522993 (= e!4484479 (and tp!2185528 tp!2185530))))

(assert (= (and b!7522800 ((_ is ElementMatch!19791) (regOne!40095 (regTwo!40094 expr!41)))) b!7522990))

(assert (= (and b!7522800 ((_ is Concat!28636) (regOne!40095 (regTwo!40094 expr!41)))) b!7522991))

(assert (= (and b!7522800 ((_ is Star!19791) (regOne!40095 (regTwo!40094 expr!41)))) b!7522992))

(assert (= (and b!7522800 ((_ is Union!19791) (regOne!40095 (regTwo!40094 expr!41)))) b!7522993))

(declare-fun b!7522995 () Bool)

(declare-fun e!4484480 () Bool)

(declare-fun tp!2185534 () Bool)

(declare-fun tp!2185537 () Bool)

(assert (=> b!7522995 (= e!4484480 (and tp!2185534 tp!2185537))))

(declare-fun b!7522996 () Bool)

(declare-fun tp!2185536 () Bool)

(assert (=> b!7522996 (= e!4484480 tp!2185536)))

(assert (=> b!7522800 (= tp!2185414 e!4484480)))

(declare-fun b!7522994 () Bool)

(assert (=> b!7522994 (= e!4484480 tp_is_empty!49937)))

(declare-fun b!7522997 () Bool)

(declare-fun tp!2185533 () Bool)

(declare-fun tp!2185535 () Bool)

(assert (=> b!7522997 (= e!4484480 (and tp!2185533 tp!2185535))))

(assert (= (and b!7522800 ((_ is ElementMatch!19791) (regTwo!40095 (regTwo!40094 expr!41)))) b!7522994))

(assert (= (and b!7522800 ((_ is Concat!28636) (regTwo!40095 (regTwo!40094 expr!41)))) b!7522995))

(assert (= (and b!7522800 ((_ is Star!19791) (regTwo!40095 (regTwo!40094 expr!41)))) b!7522996))

(assert (= (and b!7522800 ((_ is Union!19791) (regTwo!40095 (regTwo!40094 expr!41)))) b!7522997))

(declare-fun b!7522999 () Bool)

(declare-fun e!4484481 () Bool)

(declare-fun tp!2185539 () Bool)

(declare-fun tp!2185542 () Bool)

(assert (=> b!7522999 (= e!4484481 (and tp!2185539 tp!2185542))))

(declare-fun b!7523000 () Bool)

(declare-fun tp!2185541 () Bool)

(assert (=> b!7523000 (= e!4484481 tp!2185541)))

(assert (=> b!7522808 (= tp!2185426 e!4484481)))

(declare-fun b!7522998 () Bool)

(assert (=> b!7522998 (= e!4484481 tp_is_empty!49937)))

(declare-fun b!7523001 () Bool)

(declare-fun tp!2185538 () Bool)

(declare-fun tp!2185540 () Bool)

(assert (=> b!7523001 (= e!4484481 (and tp!2185538 tp!2185540))))

(assert (= (and b!7522808 ((_ is ElementMatch!19791) (reg!20120 (reg!20120 expr!41)))) b!7522998))

(assert (= (and b!7522808 ((_ is Concat!28636) (reg!20120 (reg!20120 expr!41)))) b!7522999))

(assert (= (and b!7522808 ((_ is Star!19791) (reg!20120 (reg!20120 expr!41)))) b!7523000))

(assert (= (and b!7522808 ((_ is Union!19791) (reg!20120 (reg!20120 expr!41)))) b!7523001))

(declare-fun b!7523003 () Bool)

(declare-fun e!4484482 () Bool)

(declare-fun tp!2185544 () Bool)

(declare-fun tp!2185547 () Bool)

(assert (=> b!7523003 (= e!4484482 (and tp!2185544 tp!2185547))))

(declare-fun b!7523004 () Bool)

(declare-fun tp!2185546 () Bool)

(assert (=> b!7523004 (= e!4484482 tp!2185546)))

(assert (=> b!7522809 (= tp!2185423 e!4484482)))

(declare-fun b!7523002 () Bool)

(assert (=> b!7523002 (= e!4484482 tp_is_empty!49937)))

(declare-fun b!7523005 () Bool)

(declare-fun tp!2185543 () Bool)

(declare-fun tp!2185545 () Bool)

(assert (=> b!7523005 (= e!4484482 (and tp!2185543 tp!2185545))))

(assert (= (and b!7522809 ((_ is ElementMatch!19791) (regOne!40095 (reg!20120 expr!41)))) b!7523002))

(assert (= (and b!7522809 ((_ is Concat!28636) (regOne!40095 (reg!20120 expr!41)))) b!7523003))

(assert (= (and b!7522809 ((_ is Star!19791) (regOne!40095 (reg!20120 expr!41)))) b!7523004))

(assert (= (and b!7522809 ((_ is Union!19791) (regOne!40095 (reg!20120 expr!41)))) b!7523005))

(declare-fun b!7523007 () Bool)

(declare-fun e!4484483 () Bool)

(declare-fun tp!2185549 () Bool)

(declare-fun tp!2185552 () Bool)

(assert (=> b!7523007 (= e!4484483 (and tp!2185549 tp!2185552))))

(declare-fun b!7523008 () Bool)

(declare-fun tp!2185551 () Bool)

(assert (=> b!7523008 (= e!4484483 tp!2185551)))

(assert (=> b!7522809 (= tp!2185425 e!4484483)))

(declare-fun b!7523006 () Bool)

(assert (=> b!7523006 (= e!4484483 tp_is_empty!49937)))

(declare-fun b!7523009 () Bool)

(declare-fun tp!2185548 () Bool)

(declare-fun tp!2185550 () Bool)

(assert (=> b!7523009 (= e!4484483 (and tp!2185548 tp!2185550))))

(assert (= (and b!7522809 ((_ is ElementMatch!19791) (regTwo!40095 (reg!20120 expr!41)))) b!7523006))

(assert (= (and b!7522809 ((_ is Concat!28636) (regTwo!40095 (reg!20120 expr!41)))) b!7523007))

(assert (= (and b!7522809 ((_ is Star!19791) (regTwo!40095 (reg!20120 expr!41)))) b!7523008))

(assert (= (and b!7522809 ((_ is Union!19791) (regTwo!40095 (reg!20120 expr!41)))) b!7523009))

(declare-fun b!7523011 () Bool)

(declare-fun e!4484484 () Bool)

(declare-fun tp!2185554 () Bool)

(declare-fun tp!2185557 () Bool)

(assert (=> b!7523011 (= e!4484484 (and tp!2185554 tp!2185557))))

(declare-fun b!7523012 () Bool)

(declare-fun tp!2185556 () Bool)

(assert (=> b!7523012 (= e!4484484 tp!2185556)))

(assert (=> b!7522805 (= tp!2185421 e!4484484)))

(declare-fun b!7523010 () Bool)

(assert (=> b!7523010 (= e!4484484 tp_is_empty!49937)))

(declare-fun b!7523013 () Bool)

(declare-fun tp!2185553 () Bool)

(declare-fun tp!2185555 () Bool)

(assert (=> b!7523013 (= e!4484484 (and tp!2185553 tp!2185555))))

(assert (= (and b!7522805 ((_ is ElementMatch!19791) (h!79010 (exprs!9027 context!49)))) b!7523010))

(assert (= (and b!7522805 ((_ is Concat!28636) (h!79010 (exprs!9027 context!49)))) b!7523011))

(assert (= (and b!7522805 ((_ is Star!19791) (h!79010 (exprs!9027 context!49)))) b!7523012))

(assert (= (and b!7522805 ((_ is Union!19791) (h!79010 (exprs!9027 context!49)))) b!7523013))

(declare-fun b!7523014 () Bool)

(declare-fun e!4484485 () Bool)

(declare-fun tp!2185558 () Bool)

(declare-fun tp!2185559 () Bool)

(assert (=> b!7523014 (= e!4484485 (and tp!2185558 tp!2185559))))

(assert (=> b!7522805 (= tp!2185422 e!4484485)))

(assert (= (and b!7522805 ((_ is Cons!72562) (t!387387 (exprs!9027 context!49)))) b!7523014))

(declare-fun b_lambda!288867 () Bool)

(assert (= b_lambda!288861 (or d!2309121 b_lambda!288867)))

(declare-fun bs!1939695 () Bool)

(declare-fun d!2309169 () Bool)

(assert (= bs!1939695 (and d!2309169 d!2309121)))

(assert (=> bs!1939695 (= (dynLambda!29891 lambda!466432 (h!79010 (exprs!9027 context!49))) (validRegex!10219 (h!79010 (exprs!9027 context!49))))))

(declare-fun m!8100756 () Bool)

(assert (=> bs!1939695 m!8100756))

(assert (=> b!7522834 d!2309169))

(declare-fun b_lambda!288869 () Bool)

(assert (= b_lambda!288859 (or d!2309133 b_lambda!288869)))

(declare-fun bs!1939696 () Bool)

(declare-fun d!2309171 () Bool)

(assert (= bs!1939696 (and d!2309171 d!2309133)))

(assert (=> bs!1939696 (= (dynLambda!29891 lambda!466433 (h!79010 (exprs!9027 (Context!17055 ($colon$colon!3359 (exprs!9027 context!49) (regTwo!40094 expr!41)))))) (validRegex!10219 (h!79010 (exprs!9027 (Context!17055 ($colon$colon!3359 (exprs!9027 context!49) (regTwo!40094 expr!41)))))))))

(declare-fun m!8100758 () Bool)

(assert (=> bs!1939696 m!8100758))

(assert (=> b!7522832 d!2309171))

(check-sat (not b!7523014) (not b!7522926) (not bm!689964) (not b!7522909) (not b!7522927) (not bm!689980) (not b!7522944) (not b!7522988) (not bm!689970) (not b!7522904) (not b!7522993) (not b!7522979) (not bm!689961) (not b!7522940) (not bm!689968) (not b!7522895) (not b!7522851) (not b!7522955) (not b!7522942) (not b!7522923) (not b!7522825) (not b!7522911) tp_is_empty!49937 (not b!7523011) (not b!7522833) (not b!7522992) (not b!7522983) (not b!7522966) (not d!2309139) (not b!7522980) (not b!7522908) (not bm!689962) (not b!7522901) (not bm!689971) (not b!7522960) (not b!7522952) (not b!7522948) (not b!7522947) (not b!7522968) (not b!7523008) (not b!7522985) (not b!7522905) (not b_lambda!288869) (not b!7522956) (not b!7522842) (not b!7523004) (not b!7522835) (not bm!689965) (not b!7522907) (not b!7522950) (not b!7522918) (not b!7522991) (not b!7522995) (not b!7522922) (not b!7522999) (not b!7522939) (not b!7522977) (not bm!689979) (not b!7522919) (not b!7523003) (not b!7522816) (not d!2309141) (not b!7522967) (not b!7523013) (not b!7522897) (not b!7522903) (not b!7522954) (not b_lambda!288867) (not b!7522913) (not b!7522917) (not b!7522959) (not b!7523000) (not bs!1939696) (not b!7522997) (not b!7522987) (not b!7522896) (not b!7522946) (not b!7522958) (not b!7522989) (not b!7522964) (not bm!689967) (not b!7522925) (not b!7523005) (not b!7523007) (not b!7523009) (not b!7522943) (not b!7522889) (not bs!1939695) (not b!7522921) (not b!7522891) (not b!7522962) (not b!7522951) (not b!7523012) (not b!7523001) (not b!7522938) (not b!7522915) (not b!7522900) (not b!7522984) (not b!7522963) (not b!7522996) (not b!7522899) (not b!7522890))
(check-sat)

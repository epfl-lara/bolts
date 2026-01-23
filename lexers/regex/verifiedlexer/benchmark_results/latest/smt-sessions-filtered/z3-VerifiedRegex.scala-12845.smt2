; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!709542 () Bool)

(assert start!709542)

(declare-fun b!7270767 () Bool)

(assert (=> b!7270767 true))

(declare-fun b!7270759 () Bool)

(declare-fun res!2947479 () Bool)

(declare-fun e!4360016 () Bool)

(assert (=> b!7270759 (=> res!2947479 e!4360016)))

(declare-datatypes ((C!37872 0))(
  ( (C!37873 (val!28884 Int)) )
))
(declare-datatypes ((Regex!18799 0))(
  ( (ElementMatch!18799 (c!1353435 C!37872)) (Concat!27644 (regOne!38110 Regex!18799) (regTwo!38110 Regex!18799)) (EmptyExpr!18799) (Star!18799 (reg!19128 Regex!18799)) (EmptyLang!18799) (Union!18799 (regOne!38111 Regex!18799) (regTwo!38111 Regex!18799)) )
))
(declare-datatypes ((List!70913 0))(
  ( (Nil!70789) (Cons!70789 (h!77237 Regex!18799) (t!384983 List!70913)) )
))
(declare-datatypes ((Context!15478 0))(
  ( (Context!15479 (exprs!8239 List!70913)) )
))
(declare-fun ct1!250 () Context!15478)

(declare-fun isEmpty!40713 (List!70913) Bool)

(assert (=> b!7270759 (= res!2947479 (isEmpty!40713 (exprs!8239 ct1!250)))))

(declare-fun b!7270760 () Bool)

(declare-fun e!4360019 () Bool)

(declare-fun tp!2041094 () Bool)

(assert (=> b!7270760 (= e!4360019 tp!2041094)))

(declare-fun b!7270762 () Bool)

(declare-fun e!4360018 () Bool)

(declare-fun tp!2041092 () Bool)

(assert (=> b!7270762 (= e!4360018 tp!2041092)))

(declare-fun b!7270763 () Bool)

(declare-fun res!2947476 () Bool)

(declare-fun e!4360014 () Bool)

(assert (=> b!7270763 (=> res!2947476 e!4360014)))

(declare-fun lt!2594922 () Context!15478)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun lt!2594933 () (InoxSet Context!15478))

(declare-datatypes ((List!70914 0))(
  ( (Nil!70790) (Cons!70790 (h!77238 C!37872) (t!384984 List!70914)) )
))
(declare-fun s!7854 () List!70914)

(declare-fun derivationStepZipperDown!2733 (Regex!18799 Context!15478 C!37872) (InoxSet Context!15478))

(declare-fun derivationStepZipperUp!2569 (Context!15478 C!37872) (InoxSet Context!15478))

(assert (=> b!7270763 (= res!2947476 (not (= lt!2594933 ((_ map or) (derivationStepZipperDown!2733 (h!77237 (exprs!8239 ct1!250)) lt!2594922 (h!77238 s!7854)) (derivationStepZipperUp!2569 lt!2594922 (h!77238 s!7854))))))))

(declare-fun b!7270764 () Bool)

(assert (=> b!7270764 (= e!4360016 e!4360014)))

(declare-fun res!2947482 () Bool)

(assert (=> b!7270764 (=> res!2947482 e!4360014)))

(declare-fun nullable!7999 (Regex!18799) Bool)

(assert (=> b!7270764 (= res!2947482 (not (nullable!7999 (h!77237 (exprs!8239 ct1!250)))))))

(assert (=> b!7270764 (= lt!2594933 (derivationStepZipperUp!2569 ct1!250 (h!77238 s!7854)))))

(declare-fun lt!2594939 () List!70913)

(assert (=> b!7270764 (= lt!2594922 (Context!15479 lt!2594939))))

(declare-fun tail!14500 (List!70913) List!70913)

(assert (=> b!7270764 (= lt!2594939 (tail!14500 (exprs!8239 ct1!250)))))

(declare-fun b!7270765 () Bool)

(declare-fun res!2947483 () Bool)

(declare-fun e!4360013 () Bool)

(assert (=> b!7270765 (=> (not res!2947483) (not e!4360013))))

(declare-fun nullableContext!289 (Context!15478) Bool)

(assert (=> b!7270765 (= res!2947483 (nullableContext!289 ct1!250))))

(declare-fun b!7270766 () Bool)

(declare-fun e!4360017 () Bool)

(assert (=> b!7270766 (= e!4360014 e!4360017)))

(declare-fun res!2947485 () Bool)

(assert (=> b!7270766 (=> res!2947485 e!4360017)))

(declare-fun lt!2594937 () (InoxSet Context!15478))

(declare-fun lt!2594931 () (InoxSet Context!15478))

(declare-fun lt!2594924 () (InoxSet Context!15478))

(assert (=> b!7270766 (= res!2947485 (not (= lt!2594931 ((_ map or) lt!2594937 lt!2594924))))))

(declare-fun lt!2594948 () Context!15478)

(assert (=> b!7270766 (= lt!2594924 (derivationStepZipperUp!2569 lt!2594948 (h!77238 s!7854)))))

(assert (=> b!7270766 (= lt!2594937 (derivationStepZipperDown!2733 (h!77237 (exprs!8239 ct1!250)) lt!2594948 (h!77238 s!7854)))))

(declare-fun ct2!346 () Context!15478)

(declare-fun ++!16699 (List!70913 List!70913) List!70913)

(assert (=> b!7270766 (= lt!2594948 (Context!15479 (++!16699 lt!2594939 (exprs!8239 ct2!346))))))

(declare-datatypes ((Unit!164216 0))(
  ( (Unit!164217) )
))
(declare-fun lt!2594936 () Unit!164216)

(declare-fun lambda!448656 () Int)

(declare-fun lemmaConcatPreservesForall!1556 (List!70913 List!70913 Int) Unit!164216)

(assert (=> b!7270766 (= lt!2594936 (lemmaConcatPreservesForall!1556 lt!2594939 (exprs!8239 ct2!346) lambda!448656))))

(declare-fun lt!2594932 () Unit!164216)

(assert (=> b!7270766 (= lt!2594932 (lemmaConcatPreservesForall!1556 lt!2594939 (exprs!8239 ct2!346) lambda!448656))))

(assert (=> b!7270767 (= e!4360013 (not e!4360016))))

(declare-fun res!2947480 () Bool)

(assert (=> b!7270767 (=> res!2947480 e!4360016)))

(declare-fun lt!2594942 () (InoxSet Context!15478))

(declare-fun derivationStepZipper!3539 ((InoxSet Context!15478) C!37872) (InoxSet Context!15478))

(assert (=> b!7270767 (= res!2947480 (not (= lt!2594931 (derivationStepZipper!3539 lt!2594942 (h!77238 s!7854)))))))

(declare-fun lt!2594949 () Unit!164216)

(assert (=> b!7270767 (= lt!2594949 (lemmaConcatPreservesForall!1556 (exprs!8239 ct1!250) (exprs!8239 ct2!346) lambda!448656))))

(declare-fun lt!2594935 () Context!15478)

(declare-fun lambda!448657 () Int)

(declare-fun flatMap!2912 ((InoxSet Context!15478) Int) (InoxSet Context!15478))

(assert (=> b!7270767 (= (flatMap!2912 lt!2594942 lambda!448657) (derivationStepZipperUp!2569 lt!2594935 (h!77238 s!7854)))))

(declare-fun lt!2594946 () Unit!164216)

(declare-fun lemmaFlatMapOnSingletonSet!2312 ((InoxSet Context!15478) Context!15478 Int) Unit!164216)

(assert (=> b!7270767 (= lt!2594946 (lemmaFlatMapOnSingletonSet!2312 lt!2594942 lt!2594935 lambda!448657))))

(assert (=> b!7270767 (= lt!2594942 (store ((as const (Array Context!15478 Bool)) false) lt!2594935 true))))

(declare-fun lt!2594934 () Unit!164216)

(assert (=> b!7270767 (= lt!2594934 (lemmaConcatPreservesForall!1556 (exprs!8239 ct1!250) (exprs!8239 ct2!346) lambda!448656))))

(declare-fun lt!2594929 () Unit!164216)

(assert (=> b!7270767 (= lt!2594929 (lemmaConcatPreservesForall!1556 (exprs!8239 ct1!250) (exprs!8239 ct2!346) lambda!448656))))

(declare-fun lt!2594938 () (InoxSet Context!15478))

(assert (=> b!7270767 (= (flatMap!2912 lt!2594938 lambda!448657) (derivationStepZipperUp!2569 ct1!250 (h!77238 s!7854)))))

(declare-fun lt!2594943 () Unit!164216)

(assert (=> b!7270767 (= lt!2594943 (lemmaFlatMapOnSingletonSet!2312 lt!2594938 ct1!250 lambda!448657))))

(assert (=> b!7270767 (= lt!2594938 (store ((as const (Array Context!15478 Bool)) false) ct1!250 true))))

(assert (=> b!7270767 (= lt!2594931 (derivationStepZipperUp!2569 lt!2594935 (h!77238 s!7854)))))

(assert (=> b!7270767 (= lt!2594935 (Context!15479 (++!16699 (exprs!8239 ct1!250) (exprs!8239 ct2!346))))))

(declare-fun lt!2594926 () Unit!164216)

(assert (=> b!7270767 (= lt!2594926 (lemmaConcatPreservesForall!1556 (exprs!8239 ct1!250) (exprs!8239 ct2!346) lambda!448656))))

(declare-fun b!7270768 () Bool)

(declare-fun e!4360015 () Bool)

(declare-fun tp_is_empty!47063 () Bool)

(declare-fun tp!2041093 () Bool)

(assert (=> b!7270768 (= e!4360015 (and tp_is_empty!47063 tp!2041093))))

(declare-fun b!7270769 () Bool)

(declare-fun e!4360012 () Bool)

(assert (=> b!7270769 (= e!4360017 e!4360012)))

(declare-fun res!2947477 () Bool)

(assert (=> b!7270769 (=> res!2947477 e!4360012)))

(declare-fun matchZipper!3703 ((InoxSet Context!15478) List!70914) Bool)

(assert (=> b!7270769 (= res!2947477 (not (matchZipper!3703 lt!2594924 (t!384984 s!7854))))))

(declare-fun lt!2594928 () Unit!164216)

(assert (=> b!7270769 (= lt!2594928 (lemmaConcatPreservesForall!1556 lt!2594939 (exprs!8239 ct2!346) lambda!448656))))

(declare-fun lt!2594923 () (InoxSet Context!15478))

(assert (=> b!7270769 (= (flatMap!2912 lt!2594923 lambda!448657) (derivationStepZipperUp!2569 lt!2594948 (h!77238 s!7854)))))

(declare-fun lt!2594940 () Unit!164216)

(assert (=> b!7270769 (= lt!2594940 (lemmaFlatMapOnSingletonSet!2312 lt!2594923 lt!2594948 lambda!448657))))

(declare-fun lt!2594945 () Unit!164216)

(assert (=> b!7270769 (= lt!2594945 (lemmaConcatPreservesForall!1556 lt!2594939 (exprs!8239 ct2!346) lambda!448656))))

(declare-fun lt!2594927 () Unit!164216)

(assert (=> b!7270769 (= lt!2594927 (lemmaConcatPreservesForall!1556 lt!2594939 (exprs!8239 ct2!346) lambda!448656))))

(declare-fun lt!2594947 () Unit!164216)

(assert (=> b!7270769 (= lt!2594947 (lemmaConcatPreservesForall!1556 lt!2594939 (exprs!8239 ct2!346) lambda!448656))))

(assert (=> b!7270769 (matchZipper!3703 lt!2594923 s!7854)))

(assert (=> b!7270769 (= lt!2594923 (store ((as const (Array Context!15478 Bool)) false) lt!2594948 true))))

(declare-fun lt!2594925 () Unit!164216)

(assert (=> b!7270769 (= lt!2594925 (lemmaConcatPreservesForall!1556 lt!2594939 (exprs!8239 ct2!346) lambda!448656))))

(declare-fun lt!2594941 () Unit!164216)

(declare-fun lemmaPrependingNullableCtxStillMatches!36 (Context!15478 Context!15478 List!70914) Unit!164216)

(assert (=> b!7270769 (= lt!2594941 (lemmaPrependingNullableCtxStillMatches!36 lt!2594922 ct2!346 s!7854))))

(declare-fun b!7270770 () Bool)

(declare-fun validRegex!9586 (Regex!18799) Bool)

(assert (=> b!7270770 (= e!4360012 (validRegex!9586 (h!77237 (exprs!8239 ct1!250))))))

(declare-fun lt!2594944 () Unit!164216)

(assert (=> b!7270770 (= lt!2594944 (lemmaConcatPreservesForall!1556 lt!2594939 (exprs!8239 ct2!346) lambda!448656))))

(declare-fun lt!2594930 () Unit!164216)

(assert (=> b!7270770 (= lt!2594930 (lemmaConcatPreservesForall!1556 lt!2594939 (exprs!8239 ct2!346) lambda!448656))))

(declare-fun b!7270771 () Bool)

(declare-fun res!2947484 () Bool)

(assert (=> b!7270771 (=> (not res!2947484) (not e!4360013))))

(get-info :version)

(assert (=> b!7270771 (= res!2947484 ((_ is Cons!70790) s!7854))))

(declare-fun res!2947481 () Bool)

(assert (=> start!709542 (=> (not res!2947481) (not e!4360013))))

(assert (=> start!709542 (= res!2947481 (matchZipper!3703 (store ((as const (Array Context!15478 Bool)) false) ct2!346 true) s!7854))))

(assert (=> start!709542 e!4360013))

(declare-fun inv!90007 (Context!15478) Bool)

(assert (=> start!709542 (and (inv!90007 ct2!346) e!4360018)))

(assert (=> start!709542 e!4360015))

(assert (=> start!709542 (and (inv!90007 ct1!250) e!4360019)))

(declare-fun b!7270761 () Bool)

(declare-fun res!2947478 () Bool)

(assert (=> b!7270761 (=> res!2947478 e!4360016)))

(assert (=> b!7270761 (= res!2947478 (not ((_ is Cons!70789) (exprs!8239 ct1!250))))))

(assert (= (and start!709542 res!2947481) b!7270765))

(assert (= (and b!7270765 res!2947483) b!7270771))

(assert (= (and b!7270771 res!2947484) b!7270767))

(assert (= (and b!7270767 (not res!2947480)) b!7270761))

(assert (= (and b!7270761 (not res!2947478)) b!7270759))

(assert (= (and b!7270759 (not res!2947479)) b!7270764))

(assert (= (and b!7270764 (not res!2947482)) b!7270763))

(assert (= (and b!7270763 (not res!2947476)) b!7270766))

(assert (= (and b!7270766 (not res!2947485)) b!7270769))

(assert (= (and b!7270769 (not res!2947477)) b!7270770))

(assert (= start!709542 b!7270762))

(assert (= (and start!709542 ((_ is Cons!70790) s!7854)) b!7270768))

(assert (= start!709542 b!7270760))

(declare-fun m!7956478 () Bool)

(assert (=> start!709542 m!7956478))

(assert (=> start!709542 m!7956478))

(declare-fun m!7956480 () Bool)

(assert (=> start!709542 m!7956480))

(declare-fun m!7956482 () Bool)

(assert (=> start!709542 m!7956482))

(declare-fun m!7956484 () Bool)

(assert (=> start!709542 m!7956484))

(declare-fun m!7956486 () Bool)

(assert (=> b!7270763 m!7956486))

(declare-fun m!7956488 () Bool)

(assert (=> b!7270763 m!7956488))

(declare-fun m!7956490 () Bool)

(assert (=> b!7270759 m!7956490))

(declare-fun m!7956492 () Bool)

(assert (=> b!7270764 m!7956492))

(declare-fun m!7956494 () Bool)

(assert (=> b!7270764 m!7956494))

(declare-fun m!7956496 () Bool)

(assert (=> b!7270764 m!7956496))

(declare-fun m!7956498 () Bool)

(assert (=> b!7270767 m!7956498))

(declare-fun m!7956500 () Bool)

(assert (=> b!7270767 m!7956500))

(declare-fun m!7956502 () Bool)

(assert (=> b!7270767 m!7956502))

(assert (=> b!7270767 m!7956494))

(declare-fun m!7956504 () Bool)

(assert (=> b!7270767 m!7956504))

(assert (=> b!7270767 m!7956498))

(assert (=> b!7270767 m!7956498))

(declare-fun m!7956506 () Bool)

(assert (=> b!7270767 m!7956506))

(assert (=> b!7270767 m!7956498))

(declare-fun m!7956508 () Bool)

(assert (=> b!7270767 m!7956508))

(declare-fun m!7956510 () Bool)

(assert (=> b!7270767 m!7956510))

(declare-fun m!7956512 () Bool)

(assert (=> b!7270767 m!7956512))

(declare-fun m!7956514 () Bool)

(assert (=> b!7270767 m!7956514))

(declare-fun m!7956516 () Bool)

(assert (=> b!7270767 m!7956516))

(declare-fun m!7956518 () Bool)

(assert (=> b!7270769 m!7956518))

(assert (=> b!7270769 m!7956518))

(declare-fun m!7956520 () Bool)

(assert (=> b!7270769 m!7956520))

(declare-fun m!7956522 () Bool)

(assert (=> b!7270769 m!7956522))

(declare-fun m!7956524 () Bool)

(assert (=> b!7270769 m!7956524))

(declare-fun m!7956526 () Bool)

(assert (=> b!7270769 m!7956526))

(assert (=> b!7270769 m!7956518))

(assert (=> b!7270769 m!7956518))

(declare-fun m!7956528 () Bool)

(assert (=> b!7270769 m!7956528))

(assert (=> b!7270769 m!7956518))

(declare-fun m!7956530 () Bool)

(assert (=> b!7270769 m!7956530))

(declare-fun m!7956532 () Bool)

(assert (=> b!7270769 m!7956532))

(declare-fun m!7956534 () Bool)

(assert (=> b!7270770 m!7956534))

(assert (=> b!7270770 m!7956518))

(assert (=> b!7270770 m!7956518))

(assert (=> b!7270766 m!7956520))

(declare-fun m!7956536 () Bool)

(assert (=> b!7270766 m!7956536))

(assert (=> b!7270766 m!7956518))

(assert (=> b!7270766 m!7956518))

(declare-fun m!7956538 () Bool)

(assert (=> b!7270766 m!7956538))

(declare-fun m!7956540 () Bool)

(assert (=> b!7270765 m!7956540))

(check-sat (not b!7270765) (not b!7270763) (not b!7270764) (not b!7270760) (not b!7270770) (not b!7270768) (not b!7270766) (not b!7270762) (not start!709542) tp_is_empty!47063 (not b!7270769) (not b!7270767) (not b!7270759))
(check-sat)
(get-model)

(declare-fun d!2262558 () Bool)

(declare-fun dynLambda!28935 (Int Context!15478) (InoxSet Context!15478))

(assert (=> d!2262558 (= (flatMap!2912 lt!2594938 lambda!448657) (dynLambda!28935 lambda!448657 ct1!250))))

(declare-fun lt!2594962 () Unit!164216)

(declare-fun choose!56409 ((InoxSet Context!15478) Context!15478 Int) Unit!164216)

(assert (=> d!2262558 (= lt!2594962 (choose!56409 lt!2594938 ct1!250 lambda!448657))))

(assert (=> d!2262558 (= lt!2594938 (store ((as const (Array Context!15478 Bool)) false) ct1!250 true))))

(assert (=> d!2262558 (= (lemmaFlatMapOnSingletonSet!2312 lt!2594938 ct1!250 lambda!448657) lt!2594962)))

(declare-fun b_lambda!280265 () Bool)

(assert (=> (not b_lambda!280265) (not d!2262558)))

(declare-fun bs!1911060 () Bool)

(assert (= bs!1911060 d!2262558))

(assert (=> bs!1911060 m!7956500))

(declare-fun m!7956602 () Bool)

(assert (=> bs!1911060 m!7956602))

(declare-fun m!7956604 () Bool)

(assert (=> bs!1911060 m!7956604))

(assert (=> bs!1911060 m!7956506))

(assert (=> b!7270767 d!2262558))

(declare-fun b!7270856 () Bool)

(declare-fun e!4360067 () Bool)

(assert (=> b!7270856 (= e!4360067 (nullable!7999 (h!77237 (exprs!8239 ct1!250))))))

(declare-fun d!2262564 () Bool)

(declare-fun c!1353471 () Bool)

(assert (=> d!2262564 (= c!1353471 e!4360067)))

(declare-fun res!2947502 () Bool)

(assert (=> d!2262564 (=> (not res!2947502) (not e!4360067))))

(assert (=> d!2262564 (= res!2947502 ((_ is Cons!70789) (exprs!8239 ct1!250)))))

(declare-fun e!4360065 () (InoxSet Context!15478))

(assert (=> d!2262564 (= (derivationStepZipperUp!2569 ct1!250 (h!77238 s!7854)) e!4360065)))

(declare-fun b!7270857 () Bool)

(declare-fun call!663127 () (InoxSet Context!15478))

(assert (=> b!7270857 (= e!4360065 ((_ map or) call!663127 (derivationStepZipperUp!2569 (Context!15479 (t!384983 (exprs!8239 ct1!250))) (h!77238 s!7854))))))

(declare-fun b!7270858 () Bool)

(declare-fun e!4360066 () (InoxSet Context!15478))

(assert (=> b!7270858 (= e!4360066 call!663127)))

(declare-fun b!7270859 () Bool)

(assert (=> b!7270859 (= e!4360065 e!4360066)))

(declare-fun c!1353472 () Bool)

(assert (=> b!7270859 (= c!1353472 ((_ is Cons!70789) (exprs!8239 ct1!250)))))

(declare-fun bm!663122 () Bool)

(assert (=> bm!663122 (= call!663127 (derivationStepZipperDown!2733 (h!77237 (exprs!8239 ct1!250)) (Context!15479 (t!384983 (exprs!8239 ct1!250))) (h!77238 s!7854)))))

(declare-fun b!7270860 () Bool)

(assert (=> b!7270860 (= e!4360066 ((as const (Array Context!15478 Bool)) false))))

(assert (= (and d!2262564 res!2947502) b!7270856))

(assert (= (and d!2262564 c!1353471) b!7270857))

(assert (= (and d!2262564 (not c!1353471)) b!7270859))

(assert (= (and b!7270859 c!1353472) b!7270858))

(assert (= (and b!7270859 (not c!1353472)) b!7270860))

(assert (= (or b!7270857 b!7270858) bm!663122))

(assert (=> b!7270856 m!7956492))

(declare-fun m!7956618 () Bool)

(assert (=> b!7270857 m!7956618))

(declare-fun m!7956620 () Bool)

(assert (=> bm!663122 m!7956620))

(assert (=> b!7270767 d!2262564))

(declare-fun d!2262570 () Bool)

(declare-fun forall!17628 (List!70913 Int) Bool)

(assert (=> d!2262570 (forall!17628 (++!16699 (exprs!8239 ct1!250) (exprs!8239 ct2!346)) lambda!448656)))

(declare-fun lt!2594973 () Unit!164216)

(declare-fun choose!56410 (List!70913 List!70913 Int) Unit!164216)

(assert (=> d!2262570 (= lt!2594973 (choose!56410 (exprs!8239 ct1!250) (exprs!8239 ct2!346) lambda!448656))))

(assert (=> d!2262570 (forall!17628 (exprs!8239 ct1!250) lambda!448656)))

(assert (=> d!2262570 (= (lemmaConcatPreservesForall!1556 (exprs!8239 ct1!250) (exprs!8239 ct2!346) lambda!448656) lt!2594973)))

(declare-fun bs!1911078 () Bool)

(assert (= bs!1911078 d!2262570))

(assert (=> bs!1911078 m!7956516))

(assert (=> bs!1911078 m!7956516))

(declare-fun m!7956674 () Bool)

(assert (=> bs!1911078 m!7956674))

(declare-fun m!7956676 () Bool)

(assert (=> bs!1911078 m!7956676))

(declare-fun m!7956678 () Bool)

(assert (=> bs!1911078 m!7956678))

(assert (=> b!7270767 d!2262570))

(declare-fun b!7270880 () Bool)

(declare-fun e!4360080 () Bool)

(assert (=> b!7270880 (= e!4360080 (nullable!7999 (h!77237 (exprs!8239 lt!2594935))))))

(declare-fun d!2262592 () Bool)

(declare-fun c!1353481 () Bool)

(assert (=> d!2262592 (= c!1353481 e!4360080)))

(declare-fun res!2947506 () Bool)

(assert (=> d!2262592 (=> (not res!2947506) (not e!4360080))))

(assert (=> d!2262592 (= res!2947506 ((_ is Cons!70789) (exprs!8239 lt!2594935)))))

(declare-fun e!4360078 () (InoxSet Context!15478))

(assert (=> d!2262592 (= (derivationStepZipperUp!2569 lt!2594935 (h!77238 s!7854)) e!4360078)))

(declare-fun b!7270881 () Bool)

(declare-fun call!663129 () (InoxSet Context!15478))

(assert (=> b!7270881 (= e!4360078 ((_ map or) call!663129 (derivationStepZipperUp!2569 (Context!15479 (t!384983 (exprs!8239 lt!2594935))) (h!77238 s!7854))))))

(declare-fun b!7270882 () Bool)

(declare-fun e!4360079 () (InoxSet Context!15478))

(assert (=> b!7270882 (= e!4360079 call!663129)))

(declare-fun b!7270883 () Bool)

(assert (=> b!7270883 (= e!4360078 e!4360079)))

(declare-fun c!1353482 () Bool)

(assert (=> b!7270883 (= c!1353482 ((_ is Cons!70789) (exprs!8239 lt!2594935)))))

(declare-fun bm!663124 () Bool)

(assert (=> bm!663124 (= call!663129 (derivationStepZipperDown!2733 (h!77237 (exprs!8239 lt!2594935)) (Context!15479 (t!384983 (exprs!8239 lt!2594935))) (h!77238 s!7854)))))

(declare-fun b!7270884 () Bool)

(assert (=> b!7270884 (= e!4360079 ((as const (Array Context!15478 Bool)) false))))

(assert (= (and d!2262592 res!2947506) b!7270880))

(assert (= (and d!2262592 c!1353481) b!7270881))

(assert (= (and d!2262592 (not c!1353481)) b!7270883))

(assert (= (and b!7270883 c!1353482) b!7270882))

(assert (= (and b!7270883 (not c!1353482)) b!7270884))

(assert (= (or b!7270881 b!7270882) bm!663124))

(declare-fun m!7956690 () Bool)

(assert (=> b!7270880 m!7956690))

(declare-fun m!7956692 () Bool)

(assert (=> b!7270881 m!7956692))

(declare-fun m!7956694 () Bool)

(assert (=> bm!663124 m!7956694))

(assert (=> b!7270767 d!2262592))

(declare-fun d!2262596 () Bool)

(declare-fun choose!56411 ((InoxSet Context!15478) Int) (InoxSet Context!15478))

(assert (=> d!2262596 (= (flatMap!2912 lt!2594942 lambda!448657) (choose!56411 lt!2594942 lambda!448657))))

(declare-fun bs!1911079 () Bool)

(assert (= bs!1911079 d!2262596))

(declare-fun m!7956702 () Bool)

(assert (=> bs!1911079 m!7956702))

(assert (=> b!7270767 d!2262596))

(declare-fun d!2262600 () Bool)

(assert (=> d!2262600 (= (flatMap!2912 lt!2594938 lambda!448657) (choose!56411 lt!2594938 lambda!448657))))

(declare-fun bs!1911080 () Bool)

(assert (= bs!1911080 d!2262600))

(declare-fun m!7956704 () Bool)

(assert (=> bs!1911080 m!7956704))

(assert (=> b!7270767 d!2262600))

(declare-fun bs!1911081 () Bool)

(declare-fun d!2262602 () Bool)

(assert (= bs!1911081 (and d!2262602 b!7270767)))

(declare-fun lambda!448673 () Int)

(assert (=> bs!1911081 (= lambda!448673 lambda!448657)))

(assert (=> d!2262602 true))

(assert (=> d!2262602 (= (derivationStepZipper!3539 lt!2594942 (h!77238 s!7854)) (flatMap!2912 lt!2594942 lambda!448673))))

(declare-fun bs!1911082 () Bool)

(assert (= bs!1911082 d!2262602))

(declare-fun m!7956706 () Bool)

(assert (=> bs!1911082 m!7956706))

(assert (=> b!7270767 d!2262602))

(declare-fun d!2262604 () Bool)

(assert (=> d!2262604 (= (flatMap!2912 lt!2594942 lambda!448657) (dynLambda!28935 lambda!448657 lt!2594935))))

(declare-fun lt!2594975 () Unit!164216)

(assert (=> d!2262604 (= lt!2594975 (choose!56409 lt!2594942 lt!2594935 lambda!448657))))

(assert (=> d!2262604 (= lt!2594942 (store ((as const (Array Context!15478 Bool)) false) lt!2594935 true))))

(assert (=> d!2262604 (= (lemmaFlatMapOnSingletonSet!2312 lt!2594942 lt!2594935 lambda!448657) lt!2594975)))

(declare-fun b_lambda!280269 () Bool)

(assert (=> (not b_lambda!280269) (not d!2262604)))

(declare-fun bs!1911083 () Bool)

(assert (= bs!1911083 d!2262604))

(assert (=> bs!1911083 m!7956508))

(declare-fun m!7956714 () Bool)

(assert (=> bs!1911083 m!7956714))

(declare-fun m!7956716 () Bool)

(assert (=> bs!1911083 m!7956716))

(assert (=> bs!1911083 m!7956514))

(assert (=> b!7270767 d!2262604))

(declare-fun b!7270945 () Bool)

(declare-fun e!4360119 () List!70913)

(assert (=> b!7270945 (= e!4360119 (Cons!70789 (h!77237 (exprs!8239 ct1!250)) (++!16699 (t!384983 (exprs!8239 ct1!250)) (exprs!8239 ct2!346))))))

(declare-fun b!7270946 () Bool)

(declare-fun res!2947527 () Bool)

(declare-fun e!4360120 () Bool)

(assert (=> b!7270946 (=> (not res!2947527) (not e!4360120))))

(declare-fun lt!2594978 () List!70913)

(declare-fun size!41825 (List!70913) Int)

(assert (=> b!7270946 (= res!2947527 (= (size!41825 lt!2594978) (+ (size!41825 (exprs!8239 ct1!250)) (size!41825 (exprs!8239 ct2!346)))))))

(declare-fun b!7270947 () Bool)

(assert (=> b!7270947 (= e!4360120 (or (not (= (exprs!8239 ct2!346) Nil!70789)) (= lt!2594978 (exprs!8239 ct1!250))))))

(declare-fun b!7270944 () Bool)

(assert (=> b!7270944 (= e!4360119 (exprs!8239 ct2!346))))

(declare-fun d!2262608 () Bool)

(assert (=> d!2262608 e!4360120))

(declare-fun res!2947528 () Bool)

(assert (=> d!2262608 (=> (not res!2947528) (not e!4360120))))

(declare-fun content!14777 (List!70913) (InoxSet Regex!18799))

(assert (=> d!2262608 (= res!2947528 (= (content!14777 lt!2594978) ((_ map or) (content!14777 (exprs!8239 ct1!250)) (content!14777 (exprs!8239 ct2!346)))))))

(assert (=> d!2262608 (= lt!2594978 e!4360119)))

(declare-fun c!1353498 () Bool)

(assert (=> d!2262608 (= c!1353498 ((_ is Nil!70789) (exprs!8239 ct1!250)))))

(assert (=> d!2262608 (= (++!16699 (exprs!8239 ct1!250) (exprs!8239 ct2!346)) lt!2594978)))

(assert (= (and d!2262608 c!1353498) b!7270944))

(assert (= (and d!2262608 (not c!1353498)) b!7270945))

(assert (= (and d!2262608 res!2947528) b!7270946))

(assert (= (and b!7270946 res!2947527) b!7270947))

(declare-fun m!7956720 () Bool)

(assert (=> b!7270945 m!7956720))

(declare-fun m!7956722 () Bool)

(assert (=> b!7270946 m!7956722))

(declare-fun m!7956724 () Bool)

(assert (=> b!7270946 m!7956724))

(declare-fun m!7956726 () Bool)

(assert (=> b!7270946 m!7956726))

(declare-fun m!7956728 () Bool)

(assert (=> d!2262608 m!7956728))

(declare-fun m!7956730 () Bool)

(assert (=> d!2262608 m!7956730))

(declare-fun m!7956732 () Bool)

(assert (=> d!2262608 m!7956732))

(assert (=> b!7270767 d!2262608))

(declare-fun b!7270948 () Bool)

(declare-fun e!4360123 () Bool)

(assert (=> b!7270948 (= e!4360123 (nullable!7999 (h!77237 (exprs!8239 lt!2594948))))))

(declare-fun d!2262618 () Bool)

(declare-fun c!1353499 () Bool)

(assert (=> d!2262618 (= c!1353499 e!4360123)))

(declare-fun res!2947529 () Bool)

(assert (=> d!2262618 (=> (not res!2947529) (not e!4360123))))

(assert (=> d!2262618 (= res!2947529 ((_ is Cons!70789) (exprs!8239 lt!2594948)))))

(declare-fun e!4360121 () (InoxSet Context!15478))

(assert (=> d!2262618 (= (derivationStepZipperUp!2569 lt!2594948 (h!77238 s!7854)) e!4360121)))

(declare-fun b!7270949 () Bool)

(declare-fun call!663145 () (InoxSet Context!15478))

(assert (=> b!7270949 (= e!4360121 ((_ map or) call!663145 (derivationStepZipperUp!2569 (Context!15479 (t!384983 (exprs!8239 lt!2594948))) (h!77238 s!7854))))))

(declare-fun b!7270950 () Bool)

(declare-fun e!4360122 () (InoxSet Context!15478))

(assert (=> b!7270950 (= e!4360122 call!663145)))

(declare-fun b!7270951 () Bool)

(assert (=> b!7270951 (= e!4360121 e!4360122)))

(declare-fun c!1353500 () Bool)

(assert (=> b!7270951 (= c!1353500 ((_ is Cons!70789) (exprs!8239 lt!2594948)))))

(declare-fun bm!663140 () Bool)

(assert (=> bm!663140 (= call!663145 (derivationStepZipperDown!2733 (h!77237 (exprs!8239 lt!2594948)) (Context!15479 (t!384983 (exprs!8239 lt!2594948))) (h!77238 s!7854)))))

(declare-fun b!7270952 () Bool)

(assert (=> b!7270952 (= e!4360122 ((as const (Array Context!15478 Bool)) false))))

(assert (= (and d!2262618 res!2947529) b!7270948))

(assert (= (and d!2262618 c!1353499) b!7270949))

(assert (= (and d!2262618 (not c!1353499)) b!7270951))

(assert (= (and b!7270951 c!1353500) b!7270950))

(assert (= (and b!7270951 (not c!1353500)) b!7270952))

(assert (= (or b!7270949 b!7270950) bm!663140))

(declare-fun m!7956734 () Bool)

(assert (=> b!7270948 m!7956734))

(declare-fun m!7956736 () Bool)

(assert (=> b!7270949 m!7956736))

(declare-fun m!7956738 () Bool)

(assert (=> bm!663140 m!7956738))

(assert (=> b!7270766 d!2262618))

(declare-fun bm!663153 () Bool)

(declare-fun call!663163 () List!70913)

(declare-fun call!663161 () List!70913)

(assert (=> bm!663153 (= call!663163 call!663161)))

(declare-fun c!1353511 () Bool)

(declare-fun c!1353513 () Bool)

(declare-fun c!1353512 () Bool)

(declare-fun bm!663154 () Bool)

(declare-fun call!663160 () (InoxSet Context!15478))

(assert (=> bm!663154 (= call!663160 (derivationStepZipperDown!2733 (ite c!1353512 (regTwo!38111 (h!77237 (exprs!8239 ct1!250))) (ite c!1353511 (regTwo!38110 (h!77237 (exprs!8239 ct1!250))) (ite c!1353513 (regOne!38110 (h!77237 (exprs!8239 ct1!250))) (reg!19128 (h!77237 (exprs!8239 ct1!250)))))) (ite (or c!1353512 c!1353511) lt!2594948 (Context!15479 call!663163)) (h!77238 s!7854)))))

(declare-fun bm!663155 () Bool)

(declare-fun call!663158 () (InoxSet Context!15478))

(assert (=> bm!663155 (= call!663158 call!663160)))

(declare-fun b!7270976 () Bool)

(declare-fun c!1353515 () Bool)

(assert (=> b!7270976 (= c!1353515 ((_ is Star!18799) (h!77237 (exprs!8239 ct1!250))))))

(declare-fun e!4360140 () (InoxSet Context!15478))

(declare-fun e!4360137 () (InoxSet Context!15478))

(assert (=> b!7270976 (= e!4360140 e!4360137)))

(declare-fun bm!663156 () Bool)

(declare-fun $colon$colon!2973 (List!70913 Regex!18799) List!70913)

(assert (=> bm!663156 (= call!663161 ($colon$colon!2973 (exprs!8239 lt!2594948) (ite (or c!1353511 c!1353513) (regTwo!38110 (h!77237 (exprs!8239 ct1!250))) (h!77237 (exprs!8239 ct1!250)))))))

(declare-fun b!7270977 () Bool)

(declare-fun e!4360139 () (InoxSet Context!15478))

(assert (=> b!7270977 (= e!4360139 e!4360140)))

(assert (=> b!7270977 (= c!1353513 ((_ is Concat!27644) (h!77237 (exprs!8239 ct1!250))))))

(declare-fun bm!663157 () Bool)

(declare-fun call!663159 () (InoxSet Context!15478))

(assert (=> bm!663157 (= call!663159 call!663158)))

(declare-fun b!7270978 () Bool)

(declare-fun e!4360138 () (InoxSet Context!15478))

(declare-fun call!663162 () (InoxSet Context!15478))

(assert (=> b!7270978 (= e!4360138 ((_ map or) call!663162 call!663160))))

(declare-fun bm!663158 () Bool)

(assert (=> bm!663158 (= call!663162 (derivationStepZipperDown!2733 (ite c!1353512 (regOne!38111 (h!77237 (exprs!8239 ct1!250))) (regOne!38110 (h!77237 (exprs!8239 ct1!250)))) (ite c!1353512 lt!2594948 (Context!15479 call!663161)) (h!77238 s!7854)))))

(declare-fun b!7270979 () Bool)

(declare-fun e!4360141 () Bool)

(assert (=> b!7270979 (= c!1353511 e!4360141)))

(declare-fun res!2947532 () Bool)

(assert (=> b!7270979 (=> (not res!2947532) (not e!4360141))))

(assert (=> b!7270979 (= res!2947532 ((_ is Concat!27644) (h!77237 (exprs!8239 ct1!250))))))

(assert (=> b!7270979 (= e!4360138 e!4360139)))

(declare-fun b!7270980 () Bool)

(assert (=> b!7270980 (= e!4360137 call!663159)))

(declare-fun b!7270981 () Bool)

(assert (=> b!7270981 (= e!4360137 ((as const (Array Context!15478 Bool)) false))))

(declare-fun b!7270975 () Bool)

(declare-fun e!4360136 () (InoxSet Context!15478))

(assert (=> b!7270975 (= e!4360136 (store ((as const (Array Context!15478 Bool)) false) lt!2594948 true))))

(declare-fun d!2262620 () Bool)

(declare-fun c!1353514 () Bool)

(assert (=> d!2262620 (= c!1353514 (and ((_ is ElementMatch!18799) (h!77237 (exprs!8239 ct1!250))) (= (c!1353435 (h!77237 (exprs!8239 ct1!250))) (h!77238 s!7854))))))

(assert (=> d!2262620 (= (derivationStepZipperDown!2733 (h!77237 (exprs!8239 ct1!250)) lt!2594948 (h!77238 s!7854)) e!4360136)))

(declare-fun b!7270982 () Bool)

(assert (=> b!7270982 (= e!4360140 call!663159)))

(declare-fun b!7270983 () Bool)

(assert (=> b!7270983 (= e!4360141 (nullable!7999 (regOne!38110 (h!77237 (exprs!8239 ct1!250)))))))

(declare-fun b!7270984 () Bool)

(assert (=> b!7270984 (= e!4360136 e!4360138)))

(assert (=> b!7270984 (= c!1353512 ((_ is Union!18799) (h!77237 (exprs!8239 ct1!250))))))

(declare-fun b!7270985 () Bool)

(assert (=> b!7270985 (= e!4360139 ((_ map or) call!663162 call!663158))))

(assert (= (and d!2262620 c!1353514) b!7270975))

(assert (= (and d!2262620 (not c!1353514)) b!7270984))

(assert (= (and b!7270984 c!1353512) b!7270978))

(assert (= (and b!7270984 (not c!1353512)) b!7270979))

(assert (= (and b!7270979 res!2947532) b!7270983))

(assert (= (and b!7270979 c!1353511) b!7270985))

(assert (= (and b!7270979 (not c!1353511)) b!7270977))

(assert (= (and b!7270977 c!1353513) b!7270982))

(assert (= (and b!7270977 (not c!1353513)) b!7270976))

(assert (= (and b!7270976 c!1353515) b!7270980))

(assert (= (and b!7270976 (not c!1353515)) b!7270981))

(assert (= (or b!7270982 b!7270980) bm!663153))

(assert (= (or b!7270982 b!7270980) bm!663157))

(assert (= (or b!7270985 bm!663153) bm!663156))

(assert (= (or b!7270985 bm!663157) bm!663155))

(assert (= (or b!7270978 b!7270985) bm!663158))

(assert (= (or b!7270978 bm!663155) bm!663154))

(declare-fun m!7956740 () Bool)

(assert (=> b!7270983 m!7956740))

(assert (=> b!7270975 m!7956522))

(declare-fun m!7956742 () Bool)

(assert (=> bm!663158 m!7956742))

(declare-fun m!7956744 () Bool)

(assert (=> bm!663156 m!7956744))

(declare-fun m!7956746 () Bool)

(assert (=> bm!663154 m!7956746))

(assert (=> b!7270766 d!2262620))

(declare-fun b!7270987 () Bool)

(declare-fun e!4360142 () List!70913)

(assert (=> b!7270987 (= e!4360142 (Cons!70789 (h!77237 lt!2594939) (++!16699 (t!384983 lt!2594939) (exprs!8239 ct2!346))))))

(declare-fun b!7270988 () Bool)

(declare-fun res!2947533 () Bool)

(declare-fun e!4360143 () Bool)

(assert (=> b!7270988 (=> (not res!2947533) (not e!4360143))))

(declare-fun lt!2594979 () List!70913)

(assert (=> b!7270988 (= res!2947533 (= (size!41825 lt!2594979) (+ (size!41825 lt!2594939) (size!41825 (exprs!8239 ct2!346)))))))

(declare-fun b!7270989 () Bool)

(assert (=> b!7270989 (= e!4360143 (or (not (= (exprs!8239 ct2!346) Nil!70789)) (= lt!2594979 lt!2594939)))))

(declare-fun b!7270986 () Bool)

(assert (=> b!7270986 (= e!4360142 (exprs!8239 ct2!346))))

(declare-fun d!2262622 () Bool)

(assert (=> d!2262622 e!4360143))

(declare-fun res!2947534 () Bool)

(assert (=> d!2262622 (=> (not res!2947534) (not e!4360143))))

(assert (=> d!2262622 (= res!2947534 (= (content!14777 lt!2594979) ((_ map or) (content!14777 lt!2594939) (content!14777 (exprs!8239 ct2!346)))))))

(assert (=> d!2262622 (= lt!2594979 e!4360142)))

(declare-fun c!1353516 () Bool)

(assert (=> d!2262622 (= c!1353516 ((_ is Nil!70789) lt!2594939))))

(assert (=> d!2262622 (= (++!16699 lt!2594939 (exprs!8239 ct2!346)) lt!2594979)))

(assert (= (and d!2262622 c!1353516) b!7270986))

(assert (= (and d!2262622 (not c!1353516)) b!7270987))

(assert (= (and d!2262622 res!2947534) b!7270988))

(assert (= (and b!7270988 res!2947533) b!7270989))

(declare-fun m!7956748 () Bool)

(assert (=> b!7270987 m!7956748))

(declare-fun m!7956750 () Bool)

(assert (=> b!7270988 m!7956750))

(declare-fun m!7956752 () Bool)

(assert (=> b!7270988 m!7956752))

(assert (=> b!7270988 m!7956726))

(declare-fun m!7956754 () Bool)

(assert (=> d!2262622 m!7956754))

(declare-fun m!7956756 () Bool)

(assert (=> d!2262622 m!7956756))

(assert (=> d!2262622 m!7956732))

(assert (=> b!7270766 d!2262622))

(declare-fun d!2262624 () Bool)

(assert (=> d!2262624 (forall!17628 (++!16699 lt!2594939 (exprs!8239 ct2!346)) lambda!448656)))

(declare-fun lt!2594980 () Unit!164216)

(assert (=> d!2262624 (= lt!2594980 (choose!56410 lt!2594939 (exprs!8239 ct2!346) lambda!448656))))

(assert (=> d!2262624 (forall!17628 lt!2594939 lambda!448656)))

(assert (=> d!2262624 (= (lemmaConcatPreservesForall!1556 lt!2594939 (exprs!8239 ct2!346) lambda!448656) lt!2594980)))

(declare-fun bs!1911088 () Bool)

(assert (= bs!1911088 d!2262624))

(assert (=> bs!1911088 m!7956536))

(assert (=> bs!1911088 m!7956536))

(declare-fun m!7956758 () Bool)

(assert (=> bs!1911088 m!7956758))

(declare-fun m!7956760 () Bool)

(assert (=> bs!1911088 m!7956760))

(declare-fun m!7956762 () Bool)

(assert (=> bs!1911088 m!7956762))

(assert (=> b!7270766 d!2262624))

(declare-fun d!2262626 () Bool)

(assert (=> d!2262626 (= (isEmpty!40713 (exprs!8239 ct1!250)) ((_ is Nil!70789) (exprs!8239 ct1!250)))))

(assert (=> b!7270759 d!2262626))

(declare-fun d!2262628 () Bool)

(declare-fun c!1353519 () Bool)

(declare-fun isEmpty!40715 (List!70914) Bool)

(assert (=> d!2262628 (= c!1353519 (isEmpty!40715 s!7854))))

(declare-fun e!4360146 () Bool)

(assert (=> d!2262628 (= (matchZipper!3703 (store ((as const (Array Context!15478 Bool)) false) ct2!346 true) s!7854) e!4360146)))

(declare-fun b!7270994 () Bool)

(declare-fun nullableZipper!3005 ((InoxSet Context!15478)) Bool)

(assert (=> b!7270994 (= e!4360146 (nullableZipper!3005 (store ((as const (Array Context!15478 Bool)) false) ct2!346 true)))))

(declare-fun b!7270995 () Bool)

(declare-fun head!15003 (List!70914) C!37872)

(declare-fun tail!14502 (List!70914) List!70914)

(assert (=> b!7270995 (= e!4360146 (matchZipper!3703 (derivationStepZipper!3539 (store ((as const (Array Context!15478 Bool)) false) ct2!346 true) (head!15003 s!7854)) (tail!14502 s!7854)))))

(assert (= (and d!2262628 c!1353519) b!7270994))

(assert (= (and d!2262628 (not c!1353519)) b!7270995))

(declare-fun m!7956764 () Bool)

(assert (=> d!2262628 m!7956764))

(assert (=> b!7270994 m!7956478))

(declare-fun m!7956766 () Bool)

(assert (=> b!7270994 m!7956766))

(declare-fun m!7956768 () Bool)

(assert (=> b!7270995 m!7956768))

(assert (=> b!7270995 m!7956478))

(assert (=> b!7270995 m!7956768))

(declare-fun m!7956770 () Bool)

(assert (=> b!7270995 m!7956770))

(declare-fun m!7956772 () Bool)

(assert (=> b!7270995 m!7956772))

(assert (=> b!7270995 m!7956770))

(assert (=> b!7270995 m!7956772))

(declare-fun m!7956774 () Bool)

(assert (=> b!7270995 m!7956774))

(assert (=> start!709542 d!2262628))

(declare-fun bs!1911089 () Bool)

(declare-fun d!2262630 () Bool)

(assert (= bs!1911089 (and d!2262630 b!7270767)))

(declare-fun lambda!448676 () Int)

(assert (=> bs!1911089 (= lambda!448676 lambda!448656)))

(assert (=> d!2262630 (= (inv!90007 ct2!346) (forall!17628 (exprs!8239 ct2!346) lambda!448676))))

(declare-fun bs!1911090 () Bool)

(assert (= bs!1911090 d!2262630))

(declare-fun m!7956776 () Bool)

(assert (=> bs!1911090 m!7956776))

(assert (=> start!709542 d!2262630))

(declare-fun bs!1911091 () Bool)

(declare-fun d!2262632 () Bool)

(assert (= bs!1911091 (and d!2262632 b!7270767)))

(declare-fun lambda!448677 () Int)

(assert (=> bs!1911091 (= lambda!448677 lambda!448656)))

(declare-fun bs!1911092 () Bool)

(assert (= bs!1911092 (and d!2262632 d!2262630)))

(assert (=> bs!1911092 (= lambda!448677 lambda!448676)))

(assert (=> d!2262632 (= (inv!90007 ct1!250) (forall!17628 (exprs!8239 ct1!250) lambda!448677))))

(declare-fun bs!1911093 () Bool)

(assert (= bs!1911093 d!2262632))

(declare-fun m!7956778 () Bool)

(assert (=> bs!1911093 m!7956778))

(assert (=> start!709542 d!2262632))

(declare-fun d!2262634 () Bool)

(declare-fun nullableFct!3158 (Regex!18799) Bool)

(assert (=> d!2262634 (= (nullable!7999 (h!77237 (exprs!8239 ct1!250))) (nullableFct!3158 (h!77237 (exprs!8239 ct1!250))))))

(declare-fun bs!1911094 () Bool)

(assert (= bs!1911094 d!2262634))

(declare-fun m!7956780 () Bool)

(assert (=> bs!1911094 m!7956780))

(assert (=> b!7270764 d!2262634))

(assert (=> b!7270764 d!2262564))

(declare-fun d!2262636 () Bool)

(assert (=> d!2262636 (= (tail!14500 (exprs!8239 ct1!250)) (t!384983 (exprs!8239 ct1!250)))))

(assert (=> b!7270764 d!2262636))

(declare-fun bs!1911095 () Bool)

(declare-fun d!2262638 () Bool)

(assert (= bs!1911095 (and d!2262638 b!7270767)))

(declare-fun lambda!448680 () Int)

(assert (=> bs!1911095 (not (= lambda!448680 lambda!448656))))

(declare-fun bs!1911096 () Bool)

(assert (= bs!1911096 (and d!2262638 d!2262630)))

(assert (=> bs!1911096 (not (= lambda!448680 lambda!448676))))

(declare-fun bs!1911097 () Bool)

(assert (= bs!1911097 (and d!2262638 d!2262632)))

(assert (=> bs!1911097 (not (= lambda!448680 lambda!448677))))

(assert (=> d!2262638 (= (nullableContext!289 ct1!250) (forall!17628 (exprs!8239 ct1!250) lambda!448680))))

(declare-fun bs!1911098 () Bool)

(assert (= bs!1911098 d!2262638))

(declare-fun m!7956782 () Bool)

(assert (=> bs!1911098 m!7956782))

(assert (=> b!7270765 d!2262638))

(declare-fun b!7271014 () Bool)

(declare-fun e!4360164 () Bool)

(declare-fun call!663170 () Bool)

(assert (=> b!7271014 (= e!4360164 call!663170)))

(declare-fun c!1353525 () Bool)

(declare-fun c!1353526 () Bool)

(declare-fun bm!663165 () Bool)

(assert (=> bm!663165 (= call!663170 (validRegex!9586 (ite c!1353526 (reg!19128 (h!77237 (exprs!8239 ct1!250))) (ite c!1353525 (regOne!38111 (h!77237 (exprs!8239 ct1!250))) (regOne!38110 (h!77237 (exprs!8239 ct1!250)))))))))

(declare-fun b!7271015 () Bool)

(declare-fun res!2947549 () Bool)

(declare-fun e!4360162 () Bool)

(assert (=> b!7271015 (=> res!2947549 e!4360162)))

(assert (=> b!7271015 (= res!2947549 (not ((_ is Concat!27644) (h!77237 (exprs!8239 ct1!250)))))))

(declare-fun e!4360163 () Bool)

(assert (=> b!7271015 (= e!4360163 e!4360162)))

(declare-fun bm!663166 () Bool)

(declare-fun call!663172 () Bool)

(assert (=> bm!663166 (= call!663172 (validRegex!9586 (ite c!1353525 (regTwo!38111 (h!77237 (exprs!8239 ct1!250))) (regTwo!38110 (h!77237 (exprs!8239 ct1!250))))))))

(declare-fun b!7271017 () Bool)

(declare-fun res!2947546 () Bool)

(declare-fun e!4360167 () Bool)

(assert (=> b!7271017 (=> (not res!2947546) (not e!4360167))))

(declare-fun call!663171 () Bool)

(assert (=> b!7271017 (= res!2947546 call!663171)))

(assert (=> b!7271017 (= e!4360163 e!4360167)))

(declare-fun b!7271018 () Bool)

(assert (=> b!7271018 (= e!4360167 call!663172)))

(declare-fun bm!663167 () Bool)

(assert (=> bm!663167 (= call!663171 call!663170)))

(declare-fun b!7271019 () Bool)

(declare-fun e!4360166 () Bool)

(assert (=> b!7271019 (= e!4360166 e!4360164)))

(declare-fun res!2947545 () Bool)

(assert (=> b!7271019 (= res!2947545 (not (nullable!7999 (reg!19128 (h!77237 (exprs!8239 ct1!250))))))))

(assert (=> b!7271019 (=> (not res!2947545) (not e!4360164))))

(declare-fun b!7271020 () Bool)

(declare-fun e!4360161 () Bool)

(assert (=> b!7271020 (= e!4360162 e!4360161)))

(declare-fun res!2947548 () Bool)

(assert (=> b!7271020 (=> (not res!2947548) (not e!4360161))))

(assert (=> b!7271020 (= res!2947548 call!663171)))

(declare-fun b!7271016 () Bool)

(declare-fun e!4360165 () Bool)

(assert (=> b!7271016 (= e!4360165 e!4360166)))

(assert (=> b!7271016 (= c!1353526 ((_ is Star!18799) (h!77237 (exprs!8239 ct1!250))))))

(declare-fun d!2262640 () Bool)

(declare-fun res!2947547 () Bool)

(assert (=> d!2262640 (=> res!2947547 e!4360165)))

(assert (=> d!2262640 (= res!2947547 ((_ is ElementMatch!18799) (h!77237 (exprs!8239 ct1!250))))))

(assert (=> d!2262640 (= (validRegex!9586 (h!77237 (exprs!8239 ct1!250))) e!4360165)))

(declare-fun b!7271021 () Bool)

(assert (=> b!7271021 (= e!4360166 e!4360163)))

(assert (=> b!7271021 (= c!1353525 ((_ is Union!18799) (h!77237 (exprs!8239 ct1!250))))))

(declare-fun b!7271022 () Bool)

(assert (=> b!7271022 (= e!4360161 call!663172)))

(assert (= (and d!2262640 (not res!2947547)) b!7271016))

(assert (= (and b!7271016 c!1353526) b!7271019))

(assert (= (and b!7271016 (not c!1353526)) b!7271021))

(assert (= (and b!7271019 res!2947545) b!7271014))

(assert (= (and b!7271021 c!1353525) b!7271017))

(assert (= (and b!7271021 (not c!1353525)) b!7271015))

(assert (= (and b!7271017 res!2947546) b!7271018))

(assert (= (and b!7271015 (not res!2947549)) b!7271020))

(assert (= (and b!7271020 res!2947548) b!7271022))

(assert (= (or b!7271017 b!7271020) bm!663167))

(assert (= (or b!7271018 b!7271022) bm!663166))

(assert (= (or b!7271014 bm!663167) bm!663165))

(declare-fun m!7956784 () Bool)

(assert (=> bm!663165 m!7956784))

(declare-fun m!7956786 () Bool)

(assert (=> bm!663166 m!7956786))

(declare-fun m!7956788 () Bool)

(assert (=> b!7271019 m!7956788))

(assert (=> b!7270770 d!2262640))

(assert (=> b!7270770 d!2262624))

(declare-fun bm!663168 () Bool)

(declare-fun call!663178 () List!70913)

(declare-fun call!663176 () List!70913)

(assert (=> bm!663168 (= call!663178 call!663176)))

(declare-fun c!1353528 () Bool)

(declare-fun bm!663169 () Bool)

(declare-fun call!663175 () (InoxSet Context!15478))

(declare-fun c!1353527 () Bool)

(declare-fun c!1353529 () Bool)

(assert (=> bm!663169 (= call!663175 (derivationStepZipperDown!2733 (ite c!1353528 (regTwo!38111 (h!77237 (exprs!8239 ct1!250))) (ite c!1353527 (regTwo!38110 (h!77237 (exprs!8239 ct1!250))) (ite c!1353529 (regOne!38110 (h!77237 (exprs!8239 ct1!250))) (reg!19128 (h!77237 (exprs!8239 ct1!250)))))) (ite (or c!1353528 c!1353527) lt!2594922 (Context!15479 call!663178)) (h!77238 s!7854)))))

(declare-fun bm!663170 () Bool)

(declare-fun call!663173 () (InoxSet Context!15478))

(assert (=> bm!663170 (= call!663173 call!663175)))

(declare-fun b!7271024 () Bool)

(declare-fun c!1353531 () Bool)

(assert (=> b!7271024 (= c!1353531 ((_ is Star!18799) (h!77237 (exprs!8239 ct1!250))))))

(declare-fun e!4360172 () (InoxSet Context!15478))

(declare-fun e!4360169 () (InoxSet Context!15478))

(assert (=> b!7271024 (= e!4360172 e!4360169)))

(declare-fun bm!663171 () Bool)

(assert (=> bm!663171 (= call!663176 ($colon$colon!2973 (exprs!8239 lt!2594922) (ite (or c!1353527 c!1353529) (regTwo!38110 (h!77237 (exprs!8239 ct1!250))) (h!77237 (exprs!8239 ct1!250)))))))

(declare-fun b!7271025 () Bool)

(declare-fun e!4360171 () (InoxSet Context!15478))

(assert (=> b!7271025 (= e!4360171 e!4360172)))

(assert (=> b!7271025 (= c!1353529 ((_ is Concat!27644) (h!77237 (exprs!8239 ct1!250))))))

(declare-fun bm!663172 () Bool)

(declare-fun call!663174 () (InoxSet Context!15478))

(assert (=> bm!663172 (= call!663174 call!663173)))

(declare-fun b!7271026 () Bool)

(declare-fun e!4360170 () (InoxSet Context!15478))

(declare-fun call!663177 () (InoxSet Context!15478))

(assert (=> b!7271026 (= e!4360170 ((_ map or) call!663177 call!663175))))

(declare-fun bm!663173 () Bool)

(assert (=> bm!663173 (= call!663177 (derivationStepZipperDown!2733 (ite c!1353528 (regOne!38111 (h!77237 (exprs!8239 ct1!250))) (regOne!38110 (h!77237 (exprs!8239 ct1!250)))) (ite c!1353528 lt!2594922 (Context!15479 call!663176)) (h!77238 s!7854)))))

(declare-fun b!7271027 () Bool)

(declare-fun e!4360173 () Bool)

(assert (=> b!7271027 (= c!1353527 e!4360173)))

(declare-fun res!2947550 () Bool)

(assert (=> b!7271027 (=> (not res!2947550) (not e!4360173))))

(assert (=> b!7271027 (= res!2947550 ((_ is Concat!27644) (h!77237 (exprs!8239 ct1!250))))))

(assert (=> b!7271027 (= e!4360170 e!4360171)))

(declare-fun b!7271028 () Bool)

(assert (=> b!7271028 (= e!4360169 call!663174)))

(declare-fun b!7271029 () Bool)

(assert (=> b!7271029 (= e!4360169 ((as const (Array Context!15478 Bool)) false))))

(declare-fun b!7271023 () Bool)

(declare-fun e!4360168 () (InoxSet Context!15478))

(assert (=> b!7271023 (= e!4360168 (store ((as const (Array Context!15478 Bool)) false) lt!2594922 true))))

(declare-fun d!2262642 () Bool)

(declare-fun c!1353530 () Bool)

(assert (=> d!2262642 (= c!1353530 (and ((_ is ElementMatch!18799) (h!77237 (exprs!8239 ct1!250))) (= (c!1353435 (h!77237 (exprs!8239 ct1!250))) (h!77238 s!7854))))))

(assert (=> d!2262642 (= (derivationStepZipperDown!2733 (h!77237 (exprs!8239 ct1!250)) lt!2594922 (h!77238 s!7854)) e!4360168)))

(declare-fun b!7271030 () Bool)

(assert (=> b!7271030 (= e!4360172 call!663174)))

(declare-fun b!7271031 () Bool)

(assert (=> b!7271031 (= e!4360173 (nullable!7999 (regOne!38110 (h!77237 (exprs!8239 ct1!250)))))))

(declare-fun b!7271032 () Bool)

(assert (=> b!7271032 (= e!4360168 e!4360170)))

(assert (=> b!7271032 (= c!1353528 ((_ is Union!18799) (h!77237 (exprs!8239 ct1!250))))))

(declare-fun b!7271033 () Bool)

(assert (=> b!7271033 (= e!4360171 ((_ map or) call!663177 call!663173))))

(assert (= (and d!2262642 c!1353530) b!7271023))

(assert (= (and d!2262642 (not c!1353530)) b!7271032))

(assert (= (and b!7271032 c!1353528) b!7271026))

(assert (= (and b!7271032 (not c!1353528)) b!7271027))

(assert (= (and b!7271027 res!2947550) b!7271031))

(assert (= (and b!7271027 c!1353527) b!7271033))

(assert (= (and b!7271027 (not c!1353527)) b!7271025))

(assert (= (and b!7271025 c!1353529) b!7271030))

(assert (= (and b!7271025 (not c!1353529)) b!7271024))

(assert (= (and b!7271024 c!1353531) b!7271028))

(assert (= (and b!7271024 (not c!1353531)) b!7271029))

(assert (= (or b!7271030 b!7271028) bm!663168))

(assert (= (or b!7271030 b!7271028) bm!663172))

(assert (= (or b!7271033 bm!663168) bm!663171))

(assert (= (or b!7271033 bm!663172) bm!663170))

(assert (= (or b!7271026 b!7271033) bm!663173))

(assert (= (or b!7271026 bm!663170) bm!663169))

(assert (=> b!7271031 m!7956740))

(declare-fun m!7956790 () Bool)

(assert (=> b!7271023 m!7956790))

(declare-fun m!7956792 () Bool)

(assert (=> bm!663173 m!7956792))

(declare-fun m!7956794 () Bool)

(assert (=> bm!663171 m!7956794))

(declare-fun m!7956796 () Bool)

(assert (=> bm!663169 m!7956796))

(assert (=> b!7270763 d!2262642))

(declare-fun b!7271034 () Bool)

(declare-fun e!4360176 () Bool)

(assert (=> b!7271034 (= e!4360176 (nullable!7999 (h!77237 (exprs!8239 lt!2594922))))))

(declare-fun d!2262644 () Bool)

(declare-fun c!1353532 () Bool)

(assert (=> d!2262644 (= c!1353532 e!4360176)))

(declare-fun res!2947551 () Bool)

(assert (=> d!2262644 (=> (not res!2947551) (not e!4360176))))

(assert (=> d!2262644 (= res!2947551 ((_ is Cons!70789) (exprs!8239 lt!2594922)))))

(declare-fun e!4360174 () (InoxSet Context!15478))

(assert (=> d!2262644 (= (derivationStepZipperUp!2569 lt!2594922 (h!77238 s!7854)) e!4360174)))

(declare-fun b!7271035 () Bool)

(declare-fun call!663179 () (InoxSet Context!15478))

(assert (=> b!7271035 (= e!4360174 ((_ map or) call!663179 (derivationStepZipperUp!2569 (Context!15479 (t!384983 (exprs!8239 lt!2594922))) (h!77238 s!7854))))))

(declare-fun b!7271036 () Bool)

(declare-fun e!4360175 () (InoxSet Context!15478))

(assert (=> b!7271036 (= e!4360175 call!663179)))

(declare-fun b!7271037 () Bool)

(assert (=> b!7271037 (= e!4360174 e!4360175)))

(declare-fun c!1353533 () Bool)

(assert (=> b!7271037 (= c!1353533 ((_ is Cons!70789) (exprs!8239 lt!2594922)))))

(declare-fun bm!663174 () Bool)

(assert (=> bm!663174 (= call!663179 (derivationStepZipperDown!2733 (h!77237 (exprs!8239 lt!2594922)) (Context!15479 (t!384983 (exprs!8239 lt!2594922))) (h!77238 s!7854)))))

(declare-fun b!7271038 () Bool)

(assert (=> b!7271038 (= e!4360175 ((as const (Array Context!15478 Bool)) false))))

(assert (= (and d!2262644 res!2947551) b!7271034))

(assert (= (and d!2262644 c!1353532) b!7271035))

(assert (= (and d!2262644 (not c!1353532)) b!7271037))

(assert (= (and b!7271037 c!1353533) b!7271036))

(assert (= (and b!7271037 (not c!1353533)) b!7271038))

(assert (= (or b!7271035 b!7271036) bm!663174))

(declare-fun m!7956798 () Bool)

(assert (=> b!7271034 m!7956798))

(declare-fun m!7956800 () Bool)

(assert (=> b!7271035 m!7956800))

(declare-fun m!7956802 () Bool)

(assert (=> bm!663174 m!7956802))

(assert (=> b!7270763 d!2262644))

(declare-fun d!2262646 () Bool)

(declare-fun c!1353534 () Bool)

(assert (=> d!2262646 (= c!1353534 (isEmpty!40715 s!7854))))

(declare-fun e!4360177 () Bool)

(assert (=> d!2262646 (= (matchZipper!3703 lt!2594923 s!7854) e!4360177)))

(declare-fun b!7271039 () Bool)

(assert (=> b!7271039 (= e!4360177 (nullableZipper!3005 lt!2594923))))

(declare-fun b!7271040 () Bool)

(assert (=> b!7271040 (= e!4360177 (matchZipper!3703 (derivationStepZipper!3539 lt!2594923 (head!15003 s!7854)) (tail!14502 s!7854)))))

(assert (= (and d!2262646 c!1353534) b!7271039))

(assert (= (and d!2262646 (not c!1353534)) b!7271040))

(assert (=> d!2262646 m!7956764))

(declare-fun m!7956804 () Bool)

(assert (=> b!7271039 m!7956804))

(assert (=> b!7271040 m!7956768))

(assert (=> b!7271040 m!7956768))

(declare-fun m!7956806 () Bool)

(assert (=> b!7271040 m!7956806))

(assert (=> b!7271040 m!7956772))

(assert (=> b!7271040 m!7956806))

(assert (=> b!7271040 m!7956772))

(declare-fun m!7956808 () Bool)

(assert (=> b!7271040 m!7956808))

(assert (=> b!7270769 d!2262646))

(assert (=> b!7270769 d!2262618))

(declare-fun d!2262648 () Bool)

(declare-fun c!1353535 () Bool)

(assert (=> d!2262648 (= c!1353535 (isEmpty!40715 (t!384984 s!7854)))))

(declare-fun e!4360178 () Bool)

(assert (=> d!2262648 (= (matchZipper!3703 lt!2594924 (t!384984 s!7854)) e!4360178)))

(declare-fun b!7271041 () Bool)

(assert (=> b!7271041 (= e!4360178 (nullableZipper!3005 lt!2594924))))

(declare-fun b!7271042 () Bool)

(assert (=> b!7271042 (= e!4360178 (matchZipper!3703 (derivationStepZipper!3539 lt!2594924 (head!15003 (t!384984 s!7854))) (tail!14502 (t!384984 s!7854))))))

(assert (= (and d!2262648 c!1353535) b!7271041))

(assert (= (and d!2262648 (not c!1353535)) b!7271042))

(declare-fun m!7956810 () Bool)

(assert (=> d!2262648 m!7956810))

(declare-fun m!7956812 () Bool)

(assert (=> b!7271041 m!7956812))

(declare-fun m!7956814 () Bool)

(assert (=> b!7271042 m!7956814))

(assert (=> b!7271042 m!7956814))

(declare-fun m!7956816 () Bool)

(assert (=> b!7271042 m!7956816))

(declare-fun m!7956818 () Bool)

(assert (=> b!7271042 m!7956818))

(assert (=> b!7271042 m!7956816))

(assert (=> b!7271042 m!7956818))

(declare-fun m!7956820 () Bool)

(assert (=> b!7271042 m!7956820))

(assert (=> b!7270769 d!2262648))

(declare-fun d!2262650 () Bool)

(assert (=> d!2262650 (= (flatMap!2912 lt!2594923 lambda!448657) (dynLambda!28935 lambda!448657 lt!2594948))))

(declare-fun lt!2594981 () Unit!164216)

(assert (=> d!2262650 (= lt!2594981 (choose!56409 lt!2594923 lt!2594948 lambda!448657))))

(assert (=> d!2262650 (= lt!2594923 (store ((as const (Array Context!15478 Bool)) false) lt!2594948 true))))

(assert (=> d!2262650 (= (lemmaFlatMapOnSingletonSet!2312 lt!2594923 lt!2594948 lambda!448657) lt!2594981)))

(declare-fun b_lambda!280277 () Bool)

(assert (=> (not b_lambda!280277) (not d!2262650)))

(declare-fun bs!1911099 () Bool)

(assert (= bs!1911099 d!2262650))

(assert (=> bs!1911099 m!7956524))

(declare-fun m!7956822 () Bool)

(assert (=> bs!1911099 m!7956822))

(declare-fun m!7956824 () Bool)

(assert (=> bs!1911099 m!7956824))

(assert (=> bs!1911099 m!7956522))

(assert (=> b!7270769 d!2262650))

(declare-fun d!2262652 () Bool)

(assert (=> d!2262652 (= (flatMap!2912 lt!2594923 lambda!448657) (choose!56411 lt!2594923 lambda!448657))))

(declare-fun bs!1911100 () Bool)

(assert (= bs!1911100 d!2262652))

(declare-fun m!7956826 () Bool)

(assert (=> bs!1911100 m!7956826))

(assert (=> b!7270769 d!2262652))

(assert (=> b!7270769 d!2262624))

(declare-fun bs!1911101 () Bool)

(declare-fun d!2262654 () Bool)

(assert (= bs!1911101 (and d!2262654 b!7270767)))

(declare-fun lambda!448683 () Int)

(assert (=> bs!1911101 (= lambda!448683 lambda!448656)))

(declare-fun bs!1911102 () Bool)

(assert (= bs!1911102 (and d!2262654 d!2262630)))

(assert (=> bs!1911102 (= lambda!448683 lambda!448676)))

(declare-fun bs!1911103 () Bool)

(assert (= bs!1911103 (and d!2262654 d!2262632)))

(assert (=> bs!1911103 (= lambda!448683 lambda!448677)))

(declare-fun bs!1911104 () Bool)

(assert (= bs!1911104 (and d!2262654 d!2262638)))

(assert (=> bs!1911104 (not (= lambda!448683 lambda!448680))))

(assert (=> d!2262654 (matchZipper!3703 (store ((as const (Array Context!15478 Bool)) false) (Context!15479 (++!16699 (exprs!8239 lt!2594922) (exprs!8239 ct2!346))) true) s!7854)))

(declare-fun lt!2594987 () Unit!164216)

(assert (=> d!2262654 (= lt!2594987 (lemmaConcatPreservesForall!1556 (exprs!8239 lt!2594922) (exprs!8239 ct2!346) lambda!448683))))

(declare-fun lt!2594986 () Unit!164216)

(declare-fun choose!56412 (Context!15478 Context!15478 List!70914) Unit!164216)

(assert (=> d!2262654 (= lt!2594986 (choose!56412 lt!2594922 ct2!346 s!7854))))

(assert (=> d!2262654 (matchZipper!3703 (store ((as const (Array Context!15478 Bool)) false) ct2!346 true) s!7854)))

(assert (=> d!2262654 (= (lemmaPrependingNullableCtxStillMatches!36 lt!2594922 ct2!346 s!7854) lt!2594986)))

(declare-fun bs!1911105 () Bool)

(assert (= bs!1911105 d!2262654))

(declare-fun m!7956828 () Bool)

(assert (=> bs!1911105 m!7956828))

(declare-fun m!7956830 () Bool)

(assert (=> bs!1911105 m!7956830))

(declare-fun m!7956832 () Bool)

(assert (=> bs!1911105 m!7956832))

(assert (=> bs!1911105 m!7956828))

(assert (=> bs!1911105 m!7956478))

(assert (=> bs!1911105 m!7956480))

(declare-fun m!7956834 () Bool)

(assert (=> bs!1911105 m!7956834))

(assert (=> bs!1911105 m!7956478))

(declare-fun m!7956836 () Bool)

(assert (=> bs!1911105 m!7956836))

(assert (=> b!7270769 d!2262654))

(declare-fun b!7271047 () Bool)

(declare-fun e!4360181 () Bool)

(declare-fun tp!2041110 () Bool)

(declare-fun tp!2041111 () Bool)

(assert (=> b!7271047 (= e!4360181 (and tp!2041110 tp!2041111))))

(assert (=> b!7270762 (= tp!2041092 e!4360181)))

(assert (= (and b!7270762 ((_ is Cons!70789) (exprs!8239 ct2!346))) b!7271047))

(declare-fun b!7271048 () Bool)

(declare-fun e!4360182 () Bool)

(declare-fun tp!2041112 () Bool)

(declare-fun tp!2041113 () Bool)

(assert (=> b!7271048 (= e!4360182 (and tp!2041112 tp!2041113))))

(assert (=> b!7270760 (= tp!2041094 e!4360182)))

(assert (= (and b!7270760 ((_ is Cons!70789) (exprs!8239 ct1!250))) b!7271048))

(declare-fun b!7271053 () Bool)

(declare-fun e!4360185 () Bool)

(declare-fun tp!2041116 () Bool)

(assert (=> b!7271053 (= e!4360185 (and tp_is_empty!47063 tp!2041116))))

(assert (=> b!7270768 (= tp!2041093 e!4360185)))

(assert (= (and b!7270768 ((_ is Cons!70790) (t!384984 s!7854))) b!7271053))

(declare-fun b_lambda!280279 () Bool)

(assert (= b_lambda!280277 (or b!7270767 b_lambda!280279)))

(declare-fun bs!1911106 () Bool)

(declare-fun d!2262656 () Bool)

(assert (= bs!1911106 (and d!2262656 b!7270767)))

(assert (=> bs!1911106 (= (dynLambda!28935 lambda!448657 lt!2594948) (derivationStepZipperUp!2569 lt!2594948 (h!77238 s!7854)))))

(assert (=> bs!1911106 m!7956520))

(assert (=> d!2262650 d!2262656))

(declare-fun b_lambda!280281 () Bool)

(assert (= b_lambda!280265 (or b!7270767 b_lambda!280281)))

(declare-fun bs!1911107 () Bool)

(declare-fun d!2262658 () Bool)

(assert (= bs!1911107 (and d!2262658 b!7270767)))

(assert (=> bs!1911107 (= (dynLambda!28935 lambda!448657 ct1!250) (derivationStepZipperUp!2569 ct1!250 (h!77238 s!7854)))))

(assert (=> bs!1911107 m!7956494))

(assert (=> d!2262558 d!2262658))

(declare-fun b_lambda!280283 () Bool)

(assert (= b_lambda!280269 (or b!7270767 b_lambda!280283)))

(declare-fun bs!1911108 () Bool)

(declare-fun d!2262660 () Bool)

(assert (= bs!1911108 (and d!2262660 b!7270767)))

(assert (=> bs!1911108 (= (dynLambda!28935 lambda!448657 lt!2594935) (derivationStepZipperUp!2569 lt!2594935 (h!77238 s!7854)))))

(assert (=> bs!1911108 m!7956504))

(assert (=> d!2262604 d!2262660))

(check-sat (not d!2262630) (not b_lambda!280281) (not b!7270988) (not bm!663122) (not b!7271035) (not d!2262602) (not d!2262608) (not bm!663173) (not d!2262596) (not b!7270994) (not b!7271053) (not bm!663124) (not d!2262648) (not b!7270983) (not d!2262646) (not b_lambda!280279) (not b!7270995) (not bm!663171) (not d!2262600) (not b!7270857) (not bs!1911106) (not b!7270880) (not d!2262622) (not bm!663156) (not d!2262652) (not b!7271048) (not b!7270856) (not d!2262634) (not d!2262558) (not d!2262632) (not bm!663165) (not b!7271031) (not d!2262628) (not b!7270987) (not d!2262638) (not bs!1911107) (not b!7270945) (not d!2262654) (not b!7270948) (not b!7271039) (not bm!663158) (not b!7270946) (not d!2262604) (not d!2262624) (not b!7271047) (not bm!663169) (not d!2262650) (not b!7270881) (not b!7271041) (not bm!663140) (not bs!1911108) (not b_lambda!280283) tp_is_empty!47063 (not b!7271034) (not b!7271042) (not b!7271019) (not d!2262570) (not bm!663166) (not b!7271040) (not b!7270949) (not bm!663174) (not bm!663154))
(check-sat)
(get-model)

(assert (=> b!7270856 d!2262634))

(assert (=> bs!1911106 d!2262618))

(declare-fun d!2262814 () Bool)

(declare-fun lambda!448697 () Int)

(declare-fun exists!4490 ((InoxSet Context!15478) Int) Bool)

(assert (=> d!2262814 (= (nullableZipper!3005 lt!2594924) (exists!4490 lt!2594924 lambda!448697))))

(declare-fun bs!1911152 () Bool)

(assert (= bs!1911152 d!2262814))

(declare-fun m!7957118 () Bool)

(assert (=> bs!1911152 m!7957118))

(assert (=> b!7271041 d!2262814))

(declare-fun bm!663239 () Bool)

(declare-fun call!663249 () List!70913)

(declare-fun call!663247 () List!70913)

(assert (=> bm!663239 (= call!663249 call!663247)))

(declare-fun c!1353616 () Bool)

(declare-fun c!1353617 () Bool)

(declare-fun call!663246 () (InoxSet Context!15478))

(declare-fun bm!663240 () Bool)

(declare-fun c!1353618 () Bool)

(assert (=> bm!663240 (= call!663246 (derivationStepZipperDown!2733 (ite c!1353617 (regTwo!38111 (h!77237 (exprs!8239 lt!2594935))) (ite c!1353616 (regTwo!38110 (h!77237 (exprs!8239 lt!2594935))) (ite c!1353618 (regOne!38110 (h!77237 (exprs!8239 lt!2594935))) (reg!19128 (h!77237 (exprs!8239 lt!2594935)))))) (ite (or c!1353617 c!1353616) (Context!15479 (t!384983 (exprs!8239 lt!2594935))) (Context!15479 call!663249)) (h!77238 s!7854)))))

(declare-fun bm!663241 () Bool)

(declare-fun call!663244 () (InoxSet Context!15478))

(assert (=> bm!663241 (= call!663244 call!663246)))

(declare-fun b!7271294 () Bool)

(declare-fun c!1353620 () Bool)

(assert (=> b!7271294 (= c!1353620 ((_ is Star!18799) (h!77237 (exprs!8239 lt!2594935))))))

(declare-fun e!4360336 () (InoxSet Context!15478))

(declare-fun e!4360333 () (InoxSet Context!15478))

(assert (=> b!7271294 (= e!4360336 e!4360333)))

(declare-fun bm!663242 () Bool)

(assert (=> bm!663242 (= call!663247 ($colon$colon!2973 (exprs!8239 (Context!15479 (t!384983 (exprs!8239 lt!2594935)))) (ite (or c!1353616 c!1353618) (regTwo!38110 (h!77237 (exprs!8239 lt!2594935))) (h!77237 (exprs!8239 lt!2594935)))))))

(declare-fun b!7271295 () Bool)

(declare-fun e!4360335 () (InoxSet Context!15478))

(assert (=> b!7271295 (= e!4360335 e!4360336)))

(assert (=> b!7271295 (= c!1353618 ((_ is Concat!27644) (h!77237 (exprs!8239 lt!2594935))))))

(declare-fun bm!663243 () Bool)

(declare-fun call!663245 () (InoxSet Context!15478))

(assert (=> bm!663243 (= call!663245 call!663244)))

(declare-fun b!7271296 () Bool)

(declare-fun e!4360334 () (InoxSet Context!15478))

(declare-fun call!663248 () (InoxSet Context!15478))

(assert (=> b!7271296 (= e!4360334 ((_ map or) call!663248 call!663246))))

(declare-fun bm!663244 () Bool)

(assert (=> bm!663244 (= call!663248 (derivationStepZipperDown!2733 (ite c!1353617 (regOne!38111 (h!77237 (exprs!8239 lt!2594935))) (regOne!38110 (h!77237 (exprs!8239 lt!2594935)))) (ite c!1353617 (Context!15479 (t!384983 (exprs!8239 lt!2594935))) (Context!15479 call!663247)) (h!77238 s!7854)))))

(declare-fun b!7271297 () Bool)

(declare-fun e!4360337 () Bool)

(assert (=> b!7271297 (= c!1353616 e!4360337)))

(declare-fun res!2947618 () Bool)

(assert (=> b!7271297 (=> (not res!2947618) (not e!4360337))))

(assert (=> b!7271297 (= res!2947618 ((_ is Concat!27644) (h!77237 (exprs!8239 lt!2594935))))))

(assert (=> b!7271297 (= e!4360334 e!4360335)))

(declare-fun b!7271298 () Bool)

(assert (=> b!7271298 (= e!4360333 call!663245)))

(declare-fun b!7271299 () Bool)

(assert (=> b!7271299 (= e!4360333 ((as const (Array Context!15478 Bool)) false))))

(declare-fun b!7271293 () Bool)

(declare-fun e!4360332 () (InoxSet Context!15478))

(assert (=> b!7271293 (= e!4360332 (store ((as const (Array Context!15478 Bool)) false) (Context!15479 (t!384983 (exprs!8239 lt!2594935))) true))))

(declare-fun d!2262816 () Bool)

(declare-fun c!1353619 () Bool)

(assert (=> d!2262816 (= c!1353619 (and ((_ is ElementMatch!18799) (h!77237 (exprs!8239 lt!2594935))) (= (c!1353435 (h!77237 (exprs!8239 lt!2594935))) (h!77238 s!7854))))))

(assert (=> d!2262816 (= (derivationStepZipperDown!2733 (h!77237 (exprs!8239 lt!2594935)) (Context!15479 (t!384983 (exprs!8239 lt!2594935))) (h!77238 s!7854)) e!4360332)))

(declare-fun b!7271300 () Bool)

(assert (=> b!7271300 (= e!4360336 call!663245)))

(declare-fun b!7271301 () Bool)

(assert (=> b!7271301 (= e!4360337 (nullable!7999 (regOne!38110 (h!77237 (exprs!8239 lt!2594935)))))))

(declare-fun b!7271302 () Bool)

(assert (=> b!7271302 (= e!4360332 e!4360334)))

(assert (=> b!7271302 (= c!1353617 ((_ is Union!18799) (h!77237 (exprs!8239 lt!2594935))))))

(declare-fun b!7271303 () Bool)

(assert (=> b!7271303 (= e!4360335 ((_ map or) call!663248 call!663244))))

(assert (= (and d!2262816 c!1353619) b!7271293))

(assert (= (and d!2262816 (not c!1353619)) b!7271302))

(assert (= (and b!7271302 c!1353617) b!7271296))

(assert (= (and b!7271302 (not c!1353617)) b!7271297))

(assert (= (and b!7271297 res!2947618) b!7271301))

(assert (= (and b!7271297 c!1353616) b!7271303))

(assert (= (and b!7271297 (not c!1353616)) b!7271295))

(assert (= (and b!7271295 c!1353618) b!7271300))

(assert (= (and b!7271295 (not c!1353618)) b!7271294))

(assert (= (and b!7271294 c!1353620) b!7271298))

(assert (= (and b!7271294 (not c!1353620)) b!7271299))

(assert (= (or b!7271300 b!7271298) bm!663239))

(assert (= (or b!7271300 b!7271298) bm!663243))

(assert (= (or b!7271303 bm!663239) bm!663242))

(assert (= (or b!7271303 bm!663243) bm!663241))

(assert (= (or b!7271296 b!7271303) bm!663244))

(assert (= (or b!7271296 bm!663241) bm!663240))

(declare-fun m!7957120 () Bool)

(assert (=> b!7271301 m!7957120))

(declare-fun m!7957122 () Bool)

(assert (=> b!7271293 m!7957122))

(declare-fun m!7957124 () Bool)

(assert (=> bm!663244 m!7957124))

(declare-fun m!7957126 () Bool)

(assert (=> bm!663242 m!7957126))

(declare-fun m!7957128 () Bool)

(assert (=> bm!663240 m!7957128))

(assert (=> bm!663124 d!2262816))

(declare-fun bm!663245 () Bool)

(declare-fun call!663255 () List!70913)

(declare-fun call!663253 () List!70913)

(assert (=> bm!663245 (= call!663255 call!663253)))

(declare-fun call!663252 () (InoxSet Context!15478))

(declare-fun c!1353622 () Bool)

(declare-fun bm!663246 () Bool)

(declare-fun c!1353621 () Bool)

(declare-fun c!1353623 () Bool)

(assert (=> bm!663246 (= call!663252 (derivationStepZipperDown!2733 (ite c!1353622 (regTwo!38111 (ite c!1353512 (regOne!38111 (h!77237 (exprs!8239 ct1!250))) (regOne!38110 (h!77237 (exprs!8239 ct1!250))))) (ite c!1353621 (regTwo!38110 (ite c!1353512 (regOne!38111 (h!77237 (exprs!8239 ct1!250))) (regOne!38110 (h!77237 (exprs!8239 ct1!250))))) (ite c!1353623 (regOne!38110 (ite c!1353512 (regOne!38111 (h!77237 (exprs!8239 ct1!250))) (regOne!38110 (h!77237 (exprs!8239 ct1!250))))) (reg!19128 (ite c!1353512 (regOne!38111 (h!77237 (exprs!8239 ct1!250))) (regOne!38110 (h!77237 (exprs!8239 ct1!250)))))))) (ite (or c!1353622 c!1353621) (ite c!1353512 lt!2594948 (Context!15479 call!663161)) (Context!15479 call!663255)) (h!77238 s!7854)))))

(declare-fun bm!663247 () Bool)

(declare-fun call!663250 () (InoxSet Context!15478))

(assert (=> bm!663247 (= call!663250 call!663252)))

(declare-fun b!7271305 () Bool)

(declare-fun c!1353625 () Bool)

(assert (=> b!7271305 (= c!1353625 ((_ is Star!18799) (ite c!1353512 (regOne!38111 (h!77237 (exprs!8239 ct1!250))) (regOne!38110 (h!77237 (exprs!8239 ct1!250))))))))

(declare-fun e!4360342 () (InoxSet Context!15478))

(declare-fun e!4360339 () (InoxSet Context!15478))

(assert (=> b!7271305 (= e!4360342 e!4360339)))

(declare-fun bm!663248 () Bool)

(assert (=> bm!663248 (= call!663253 ($colon$colon!2973 (exprs!8239 (ite c!1353512 lt!2594948 (Context!15479 call!663161))) (ite (or c!1353621 c!1353623) (regTwo!38110 (ite c!1353512 (regOne!38111 (h!77237 (exprs!8239 ct1!250))) (regOne!38110 (h!77237 (exprs!8239 ct1!250))))) (ite c!1353512 (regOne!38111 (h!77237 (exprs!8239 ct1!250))) (regOne!38110 (h!77237 (exprs!8239 ct1!250)))))))))

(declare-fun b!7271306 () Bool)

(declare-fun e!4360341 () (InoxSet Context!15478))

(assert (=> b!7271306 (= e!4360341 e!4360342)))

(assert (=> b!7271306 (= c!1353623 ((_ is Concat!27644) (ite c!1353512 (regOne!38111 (h!77237 (exprs!8239 ct1!250))) (regOne!38110 (h!77237 (exprs!8239 ct1!250))))))))

(declare-fun bm!663249 () Bool)

(declare-fun call!663251 () (InoxSet Context!15478))

(assert (=> bm!663249 (= call!663251 call!663250)))

(declare-fun b!7271307 () Bool)

(declare-fun e!4360340 () (InoxSet Context!15478))

(declare-fun call!663254 () (InoxSet Context!15478))

(assert (=> b!7271307 (= e!4360340 ((_ map or) call!663254 call!663252))))

(declare-fun bm!663250 () Bool)

(assert (=> bm!663250 (= call!663254 (derivationStepZipperDown!2733 (ite c!1353622 (regOne!38111 (ite c!1353512 (regOne!38111 (h!77237 (exprs!8239 ct1!250))) (regOne!38110 (h!77237 (exprs!8239 ct1!250))))) (regOne!38110 (ite c!1353512 (regOne!38111 (h!77237 (exprs!8239 ct1!250))) (regOne!38110 (h!77237 (exprs!8239 ct1!250)))))) (ite c!1353622 (ite c!1353512 lt!2594948 (Context!15479 call!663161)) (Context!15479 call!663253)) (h!77238 s!7854)))))

(declare-fun b!7271308 () Bool)

(declare-fun e!4360343 () Bool)

(assert (=> b!7271308 (= c!1353621 e!4360343)))

(declare-fun res!2947619 () Bool)

(assert (=> b!7271308 (=> (not res!2947619) (not e!4360343))))

(assert (=> b!7271308 (= res!2947619 ((_ is Concat!27644) (ite c!1353512 (regOne!38111 (h!77237 (exprs!8239 ct1!250))) (regOne!38110 (h!77237 (exprs!8239 ct1!250))))))))

(assert (=> b!7271308 (= e!4360340 e!4360341)))

(declare-fun b!7271309 () Bool)

(assert (=> b!7271309 (= e!4360339 call!663251)))

(declare-fun b!7271310 () Bool)

(assert (=> b!7271310 (= e!4360339 ((as const (Array Context!15478 Bool)) false))))

(declare-fun b!7271304 () Bool)

(declare-fun e!4360338 () (InoxSet Context!15478))

(assert (=> b!7271304 (= e!4360338 (store ((as const (Array Context!15478 Bool)) false) (ite c!1353512 lt!2594948 (Context!15479 call!663161)) true))))

(declare-fun d!2262818 () Bool)

(declare-fun c!1353624 () Bool)

(assert (=> d!2262818 (= c!1353624 (and ((_ is ElementMatch!18799) (ite c!1353512 (regOne!38111 (h!77237 (exprs!8239 ct1!250))) (regOne!38110 (h!77237 (exprs!8239 ct1!250))))) (= (c!1353435 (ite c!1353512 (regOne!38111 (h!77237 (exprs!8239 ct1!250))) (regOne!38110 (h!77237 (exprs!8239 ct1!250))))) (h!77238 s!7854))))))

(assert (=> d!2262818 (= (derivationStepZipperDown!2733 (ite c!1353512 (regOne!38111 (h!77237 (exprs!8239 ct1!250))) (regOne!38110 (h!77237 (exprs!8239 ct1!250)))) (ite c!1353512 lt!2594948 (Context!15479 call!663161)) (h!77238 s!7854)) e!4360338)))

(declare-fun b!7271311 () Bool)

(assert (=> b!7271311 (= e!4360342 call!663251)))

(declare-fun b!7271312 () Bool)

(assert (=> b!7271312 (= e!4360343 (nullable!7999 (regOne!38110 (ite c!1353512 (regOne!38111 (h!77237 (exprs!8239 ct1!250))) (regOne!38110 (h!77237 (exprs!8239 ct1!250)))))))))

(declare-fun b!7271313 () Bool)

(assert (=> b!7271313 (= e!4360338 e!4360340)))

(assert (=> b!7271313 (= c!1353622 ((_ is Union!18799) (ite c!1353512 (regOne!38111 (h!77237 (exprs!8239 ct1!250))) (regOne!38110 (h!77237 (exprs!8239 ct1!250))))))))

(declare-fun b!7271314 () Bool)

(assert (=> b!7271314 (= e!4360341 ((_ map or) call!663254 call!663250))))

(assert (= (and d!2262818 c!1353624) b!7271304))

(assert (= (and d!2262818 (not c!1353624)) b!7271313))

(assert (= (and b!7271313 c!1353622) b!7271307))

(assert (= (and b!7271313 (not c!1353622)) b!7271308))

(assert (= (and b!7271308 res!2947619) b!7271312))

(assert (= (and b!7271308 c!1353621) b!7271314))

(assert (= (and b!7271308 (not c!1353621)) b!7271306))

(assert (= (and b!7271306 c!1353623) b!7271311))

(assert (= (and b!7271306 (not c!1353623)) b!7271305))

(assert (= (and b!7271305 c!1353625) b!7271309))

(assert (= (and b!7271305 (not c!1353625)) b!7271310))

(assert (= (or b!7271311 b!7271309) bm!663245))

(assert (= (or b!7271311 b!7271309) bm!663249))

(assert (= (or b!7271314 bm!663245) bm!663248))

(assert (= (or b!7271314 bm!663249) bm!663247))

(assert (= (or b!7271307 b!7271314) bm!663250))

(assert (= (or b!7271307 bm!663247) bm!663246))

(declare-fun m!7957130 () Bool)

(assert (=> b!7271312 m!7957130))

(declare-fun m!7957132 () Bool)

(assert (=> b!7271304 m!7957132))

(declare-fun m!7957134 () Bool)

(assert (=> bm!663250 m!7957134))

(declare-fun m!7957136 () Bool)

(assert (=> bm!663248 m!7957136))

(declare-fun m!7957138 () Bool)

(assert (=> bm!663246 m!7957138))

(assert (=> bm!663158 d!2262818))

(declare-fun d!2262820 () Bool)

(declare-fun res!2947624 () Bool)

(declare-fun e!4360348 () Bool)

(assert (=> d!2262820 (=> res!2947624 e!4360348)))

(assert (=> d!2262820 (= res!2947624 ((_ is Nil!70789) (exprs!8239 ct1!250)))))

(assert (=> d!2262820 (= (forall!17628 (exprs!8239 ct1!250) lambda!448677) e!4360348)))

(declare-fun b!7271319 () Bool)

(declare-fun e!4360349 () Bool)

(assert (=> b!7271319 (= e!4360348 e!4360349)))

(declare-fun res!2947625 () Bool)

(assert (=> b!7271319 (=> (not res!2947625) (not e!4360349))))

(declare-fun dynLambda!28937 (Int Regex!18799) Bool)

(assert (=> b!7271319 (= res!2947625 (dynLambda!28937 lambda!448677 (h!77237 (exprs!8239 ct1!250))))))

(declare-fun b!7271320 () Bool)

(assert (=> b!7271320 (= e!4360349 (forall!17628 (t!384983 (exprs!8239 ct1!250)) lambda!448677))))

(assert (= (and d!2262820 (not res!2947624)) b!7271319))

(assert (= (and b!7271319 res!2947625) b!7271320))

(declare-fun b_lambda!280325 () Bool)

(assert (=> (not b_lambda!280325) (not b!7271319)))

(declare-fun m!7957140 () Bool)

(assert (=> b!7271319 m!7957140))

(declare-fun m!7957142 () Bool)

(assert (=> b!7271320 m!7957142))

(assert (=> d!2262632 d!2262820))

(declare-fun d!2262822 () Bool)

(assert (=> d!2262822 (= ($colon$colon!2973 (exprs!8239 lt!2594948) (ite (or c!1353511 c!1353513) (regTwo!38110 (h!77237 (exprs!8239 ct1!250))) (h!77237 (exprs!8239 ct1!250)))) (Cons!70789 (ite (or c!1353511 c!1353513) (regTwo!38110 (h!77237 (exprs!8239 ct1!250))) (h!77237 (exprs!8239 ct1!250))) (exprs!8239 lt!2594948)))))

(assert (=> bm!663156 d!2262822))

(declare-fun d!2262824 () Bool)

(declare-fun res!2947626 () Bool)

(declare-fun e!4360350 () Bool)

(assert (=> d!2262824 (=> res!2947626 e!4360350)))

(assert (=> d!2262824 (= res!2947626 ((_ is Nil!70789) (exprs!8239 ct1!250)))))

(assert (=> d!2262824 (= (forall!17628 (exprs!8239 ct1!250) lambda!448680) e!4360350)))

(declare-fun b!7271321 () Bool)

(declare-fun e!4360351 () Bool)

(assert (=> b!7271321 (= e!4360350 e!4360351)))

(declare-fun res!2947627 () Bool)

(assert (=> b!7271321 (=> (not res!2947627) (not e!4360351))))

(assert (=> b!7271321 (= res!2947627 (dynLambda!28937 lambda!448680 (h!77237 (exprs!8239 ct1!250))))))

(declare-fun b!7271322 () Bool)

(assert (=> b!7271322 (= e!4360351 (forall!17628 (t!384983 (exprs!8239 ct1!250)) lambda!448680))))

(assert (= (and d!2262824 (not res!2947626)) b!7271321))

(assert (= (and b!7271321 res!2947627) b!7271322))

(declare-fun b_lambda!280327 () Bool)

(assert (=> (not b_lambda!280327) (not b!7271321)))

(declare-fun m!7957144 () Bool)

(assert (=> b!7271321 m!7957144))

(declare-fun m!7957146 () Bool)

(assert (=> b!7271322 m!7957146))

(assert (=> d!2262638 d!2262824))

(assert (=> d!2262558 d!2262600))

(declare-fun d!2262826 () Bool)

(assert (=> d!2262826 (= (flatMap!2912 lt!2594938 lambda!448657) (dynLambda!28935 lambda!448657 ct1!250))))

(assert (=> d!2262826 true))

(declare-fun _$13!4641 () Unit!164216)

(assert (=> d!2262826 (= (choose!56409 lt!2594938 ct1!250 lambda!448657) _$13!4641)))

(declare-fun b_lambda!280329 () Bool)

(assert (=> (not b_lambda!280329) (not d!2262826)))

(declare-fun bs!1911153 () Bool)

(assert (= bs!1911153 d!2262826))

(assert (=> bs!1911153 m!7956500))

(assert (=> bs!1911153 m!7956602))

(assert (=> d!2262558 d!2262826))

(declare-fun bs!1911154 () Bool)

(declare-fun d!2262828 () Bool)

(assert (= bs!1911154 (and d!2262828 d!2262814)))

(declare-fun lambda!448698 () Int)

(assert (=> bs!1911154 (= lambda!448698 lambda!448697)))

(assert (=> d!2262828 (= (nullableZipper!3005 (store ((as const (Array Context!15478 Bool)) false) ct2!346 true)) (exists!4490 (store ((as const (Array Context!15478 Bool)) false) ct2!346 true) lambda!448698))))

(declare-fun bs!1911155 () Bool)

(assert (= bs!1911155 d!2262828))

(assert (=> bs!1911155 m!7956478))

(declare-fun m!7957148 () Bool)

(assert (=> bs!1911155 m!7957148))

(assert (=> b!7270994 d!2262828))

(declare-fun d!2262830 () Bool)

(assert (=> d!2262830 (= (nullable!7999 (h!77237 (exprs!8239 lt!2594948))) (nullableFct!3158 (h!77237 (exprs!8239 lt!2594948))))))

(declare-fun bs!1911156 () Bool)

(assert (= bs!1911156 d!2262830))

(declare-fun m!7957150 () Bool)

(assert (=> bs!1911156 m!7957150))

(assert (=> b!7270948 d!2262830))

(declare-fun b!7271337 () Bool)

(declare-fun e!4360368 () Bool)

(declare-fun e!4360369 () Bool)

(assert (=> b!7271337 (= e!4360368 e!4360369)))

(declare-fun res!2947640 () Bool)

(assert (=> b!7271337 (=> (not res!2947640) (not e!4360369))))

(assert (=> b!7271337 (= res!2947640 (and (not ((_ is EmptyLang!18799) (h!77237 (exprs!8239 ct1!250)))) (not ((_ is ElementMatch!18799) (h!77237 (exprs!8239 ct1!250))))))))

(declare-fun b!7271338 () Bool)

(declare-fun e!4360365 () Bool)

(declare-fun e!4360367 () Bool)

(assert (=> b!7271338 (= e!4360365 e!4360367)))

(declare-fun res!2947639 () Bool)

(declare-fun call!663261 () Bool)

(assert (=> b!7271338 (= res!2947639 call!663261)))

(assert (=> b!7271338 (=> res!2947639 e!4360367)))

(declare-fun b!7271339 () Bool)

(declare-fun call!663260 () Bool)

(assert (=> b!7271339 (= e!4360367 call!663260)))

(declare-fun bm!663255 () Bool)

(declare-fun c!1353628 () Bool)

(assert (=> bm!663255 (= call!663260 (nullable!7999 (ite c!1353628 (regTwo!38111 (h!77237 (exprs!8239 ct1!250))) (regOne!38110 (h!77237 (exprs!8239 ct1!250))))))))

(declare-fun b!7271340 () Bool)

(declare-fun e!4360364 () Bool)

(assert (=> b!7271340 (= e!4360364 e!4360365)))

(assert (=> b!7271340 (= c!1353628 ((_ is Union!18799) (h!77237 (exprs!8239 ct1!250))))))

(declare-fun d!2262832 () Bool)

(declare-fun res!2947641 () Bool)

(assert (=> d!2262832 (=> res!2947641 e!4360368)))

(assert (=> d!2262832 (= res!2947641 ((_ is EmptyExpr!18799) (h!77237 (exprs!8239 ct1!250))))))

(assert (=> d!2262832 (= (nullableFct!3158 (h!77237 (exprs!8239 ct1!250))) e!4360368)))

(declare-fun b!7271341 () Bool)

(assert (=> b!7271341 (= e!4360369 e!4360364)))

(declare-fun res!2947638 () Bool)

(assert (=> b!7271341 (=> res!2947638 e!4360364)))

(assert (=> b!7271341 (= res!2947638 ((_ is Star!18799) (h!77237 (exprs!8239 ct1!250))))))

(declare-fun b!7271342 () Bool)

(declare-fun e!4360366 () Bool)

(assert (=> b!7271342 (= e!4360366 call!663261)))

(declare-fun bm!663256 () Bool)

(assert (=> bm!663256 (= call!663261 (nullable!7999 (ite c!1353628 (regOne!38111 (h!77237 (exprs!8239 ct1!250))) (regTwo!38110 (h!77237 (exprs!8239 ct1!250))))))))

(declare-fun b!7271343 () Bool)

(assert (=> b!7271343 (= e!4360365 e!4360366)))

(declare-fun res!2947642 () Bool)

(assert (=> b!7271343 (= res!2947642 call!663260)))

(assert (=> b!7271343 (=> (not res!2947642) (not e!4360366))))

(assert (= (and d!2262832 (not res!2947641)) b!7271337))

(assert (= (and b!7271337 res!2947640) b!7271341))

(assert (= (and b!7271341 (not res!2947638)) b!7271340))

(assert (= (and b!7271340 c!1353628) b!7271338))

(assert (= (and b!7271340 (not c!1353628)) b!7271343))

(assert (= (and b!7271338 (not res!2947639)) b!7271339))

(assert (= (and b!7271343 res!2947642) b!7271342))

(assert (= (or b!7271338 b!7271342) bm!663256))

(assert (= (or b!7271339 b!7271343) bm!663255))

(declare-fun m!7957152 () Bool)

(assert (=> bm!663255 m!7957152))

(declare-fun m!7957154 () Bool)

(assert (=> bm!663256 m!7957154))

(assert (=> d!2262634 d!2262832))

(declare-fun d!2262834 () Bool)

(assert (=> d!2262834 true))

(declare-fun setRes!53643 () Bool)

(assert (=> d!2262834 setRes!53643))

(declare-fun condSetEmpty!53643 () Bool)

(declare-fun res!2947645 () (InoxSet Context!15478))

(assert (=> d!2262834 (= condSetEmpty!53643 (= res!2947645 ((as const (Array Context!15478 Bool)) false)))))

(assert (=> d!2262834 (= (choose!56411 lt!2594938 lambda!448657) res!2947645)))

(declare-fun setIsEmpty!53643 () Bool)

(assert (=> setIsEmpty!53643 setRes!53643))

(declare-fun setNonEmpty!53643 () Bool)

(declare-fun setElem!53643 () Context!15478)

(declare-fun tp!2041157 () Bool)

(declare-fun e!4360372 () Bool)

(assert (=> setNonEmpty!53643 (= setRes!53643 (and tp!2041157 (inv!90007 setElem!53643) e!4360372))))

(declare-fun setRest!53643 () (InoxSet Context!15478))

(assert (=> setNonEmpty!53643 (= res!2947645 ((_ map or) (store ((as const (Array Context!15478 Bool)) false) setElem!53643 true) setRest!53643))))

(declare-fun b!7271346 () Bool)

(declare-fun tp!2041156 () Bool)

(assert (=> b!7271346 (= e!4360372 tp!2041156)))

(assert (= (and d!2262834 condSetEmpty!53643) setIsEmpty!53643))

(assert (= (and d!2262834 (not condSetEmpty!53643)) setNonEmpty!53643))

(assert (= setNonEmpty!53643 b!7271346))

(declare-fun m!7957156 () Bool)

(assert (=> setNonEmpty!53643 m!7957156))

(assert (=> d!2262600 d!2262834))

(declare-fun bm!663257 () Bool)

(declare-fun call!663267 () List!70913)

(declare-fun call!663265 () List!70913)

(assert (=> bm!663257 (= call!663267 call!663265)))

(declare-fun c!1353631 () Bool)

(declare-fun bm!663258 () Bool)

(declare-fun c!1353629 () Bool)

(declare-fun c!1353630 () Bool)

(declare-fun call!663264 () (InoxSet Context!15478))

(assert (=> bm!663258 (= call!663264 (derivationStepZipperDown!2733 (ite c!1353630 (regTwo!38111 (h!77237 (exprs!8239 ct1!250))) (ite c!1353629 (regTwo!38110 (h!77237 (exprs!8239 ct1!250))) (ite c!1353631 (regOne!38110 (h!77237 (exprs!8239 ct1!250))) (reg!19128 (h!77237 (exprs!8239 ct1!250)))))) (ite (or c!1353630 c!1353629) (Context!15479 (t!384983 (exprs!8239 ct1!250))) (Context!15479 call!663267)) (h!77238 s!7854)))))

(declare-fun bm!663259 () Bool)

(declare-fun call!663262 () (InoxSet Context!15478))

(assert (=> bm!663259 (= call!663262 call!663264)))

(declare-fun b!7271348 () Bool)

(declare-fun c!1353633 () Bool)

(assert (=> b!7271348 (= c!1353633 ((_ is Star!18799) (h!77237 (exprs!8239 ct1!250))))))

(declare-fun e!4360377 () (InoxSet Context!15478))

(declare-fun e!4360374 () (InoxSet Context!15478))

(assert (=> b!7271348 (= e!4360377 e!4360374)))

(declare-fun bm!663260 () Bool)

(assert (=> bm!663260 (= call!663265 ($colon$colon!2973 (exprs!8239 (Context!15479 (t!384983 (exprs!8239 ct1!250)))) (ite (or c!1353629 c!1353631) (regTwo!38110 (h!77237 (exprs!8239 ct1!250))) (h!77237 (exprs!8239 ct1!250)))))))

(declare-fun b!7271349 () Bool)

(declare-fun e!4360376 () (InoxSet Context!15478))

(assert (=> b!7271349 (= e!4360376 e!4360377)))

(assert (=> b!7271349 (= c!1353631 ((_ is Concat!27644) (h!77237 (exprs!8239 ct1!250))))))

(declare-fun bm!663261 () Bool)

(declare-fun call!663263 () (InoxSet Context!15478))

(assert (=> bm!663261 (= call!663263 call!663262)))

(declare-fun b!7271350 () Bool)

(declare-fun e!4360375 () (InoxSet Context!15478))

(declare-fun call!663266 () (InoxSet Context!15478))

(assert (=> b!7271350 (= e!4360375 ((_ map or) call!663266 call!663264))))

(declare-fun bm!663262 () Bool)

(assert (=> bm!663262 (= call!663266 (derivationStepZipperDown!2733 (ite c!1353630 (regOne!38111 (h!77237 (exprs!8239 ct1!250))) (regOne!38110 (h!77237 (exprs!8239 ct1!250)))) (ite c!1353630 (Context!15479 (t!384983 (exprs!8239 ct1!250))) (Context!15479 call!663265)) (h!77238 s!7854)))))

(declare-fun b!7271351 () Bool)

(declare-fun e!4360378 () Bool)

(assert (=> b!7271351 (= c!1353629 e!4360378)))

(declare-fun res!2947646 () Bool)

(assert (=> b!7271351 (=> (not res!2947646) (not e!4360378))))

(assert (=> b!7271351 (= res!2947646 ((_ is Concat!27644) (h!77237 (exprs!8239 ct1!250))))))

(assert (=> b!7271351 (= e!4360375 e!4360376)))

(declare-fun b!7271352 () Bool)

(assert (=> b!7271352 (= e!4360374 call!663263)))

(declare-fun b!7271353 () Bool)

(assert (=> b!7271353 (= e!4360374 ((as const (Array Context!15478 Bool)) false))))

(declare-fun b!7271347 () Bool)

(declare-fun e!4360373 () (InoxSet Context!15478))

(assert (=> b!7271347 (= e!4360373 (store ((as const (Array Context!15478 Bool)) false) (Context!15479 (t!384983 (exprs!8239 ct1!250))) true))))

(declare-fun d!2262836 () Bool)

(declare-fun c!1353632 () Bool)

(assert (=> d!2262836 (= c!1353632 (and ((_ is ElementMatch!18799) (h!77237 (exprs!8239 ct1!250))) (= (c!1353435 (h!77237 (exprs!8239 ct1!250))) (h!77238 s!7854))))))

(assert (=> d!2262836 (= (derivationStepZipperDown!2733 (h!77237 (exprs!8239 ct1!250)) (Context!15479 (t!384983 (exprs!8239 ct1!250))) (h!77238 s!7854)) e!4360373)))

(declare-fun b!7271354 () Bool)

(assert (=> b!7271354 (= e!4360377 call!663263)))

(declare-fun b!7271355 () Bool)

(assert (=> b!7271355 (= e!4360378 (nullable!7999 (regOne!38110 (h!77237 (exprs!8239 ct1!250)))))))

(declare-fun b!7271356 () Bool)

(assert (=> b!7271356 (= e!4360373 e!4360375)))

(assert (=> b!7271356 (= c!1353630 ((_ is Union!18799) (h!77237 (exprs!8239 ct1!250))))))

(declare-fun b!7271357 () Bool)

(assert (=> b!7271357 (= e!4360376 ((_ map or) call!663266 call!663262))))

(assert (= (and d!2262836 c!1353632) b!7271347))

(assert (= (and d!2262836 (not c!1353632)) b!7271356))

(assert (= (and b!7271356 c!1353630) b!7271350))

(assert (= (and b!7271356 (not c!1353630)) b!7271351))

(assert (= (and b!7271351 res!2947646) b!7271355))

(assert (= (and b!7271351 c!1353629) b!7271357))

(assert (= (and b!7271351 (not c!1353629)) b!7271349))

(assert (= (and b!7271349 c!1353631) b!7271354))

(assert (= (and b!7271349 (not c!1353631)) b!7271348))

(assert (= (and b!7271348 c!1353633) b!7271352))

(assert (= (and b!7271348 (not c!1353633)) b!7271353))

(assert (= (or b!7271354 b!7271352) bm!663257))

(assert (= (or b!7271354 b!7271352) bm!663261))

(assert (= (or b!7271357 bm!663257) bm!663260))

(assert (= (or b!7271357 bm!663261) bm!663259))

(assert (= (or b!7271350 b!7271357) bm!663262))

(assert (= (or b!7271350 bm!663259) bm!663258))

(assert (=> b!7271355 m!7956740))

(declare-fun m!7957158 () Bool)

(assert (=> b!7271347 m!7957158))

(declare-fun m!7957160 () Bool)

(assert (=> bm!663262 m!7957160))

(declare-fun m!7957162 () Bool)

(assert (=> bm!663260 m!7957162))

(declare-fun m!7957164 () Bool)

(assert (=> bm!663258 m!7957164))

(assert (=> bm!663122 d!2262836))

(declare-fun d!2262838 () Bool)

(assert (=> d!2262838 (= ($colon$colon!2973 (exprs!8239 lt!2594922) (ite (or c!1353527 c!1353529) (regTwo!38110 (h!77237 (exprs!8239 ct1!250))) (h!77237 (exprs!8239 ct1!250)))) (Cons!70789 (ite (or c!1353527 c!1353529) (regTwo!38110 (h!77237 (exprs!8239 ct1!250))) (h!77237 (exprs!8239 ct1!250))) (exprs!8239 lt!2594922)))))

(assert (=> bm!663171 d!2262838))

(declare-fun d!2262840 () Bool)

(assert (=> d!2262840 (= (isEmpty!40715 s!7854) ((_ is Nil!70790) s!7854))))

(assert (=> d!2262646 d!2262840))

(assert (=> bs!1911108 d!2262592))

(declare-fun b!7271359 () Bool)

(declare-fun e!4360379 () List!70913)

(assert (=> b!7271359 (= e!4360379 (Cons!70789 (h!77237 (t!384983 lt!2594939)) (++!16699 (t!384983 (t!384983 lt!2594939)) (exprs!8239 ct2!346))))))

(declare-fun b!7271360 () Bool)

(declare-fun res!2947647 () Bool)

(declare-fun e!4360380 () Bool)

(assert (=> b!7271360 (=> (not res!2947647) (not e!4360380))))

(declare-fun lt!2595002 () List!70913)

(assert (=> b!7271360 (= res!2947647 (= (size!41825 lt!2595002) (+ (size!41825 (t!384983 lt!2594939)) (size!41825 (exprs!8239 ct2!346)))))))

(declare-fun b!7271361 () Bool)

(assert (=> b!7271361 (= e!4360380 (or (not (= (exprs!8239 ct2!346) Nil!70789)) (= lt!2595002 (t!384983 lt!2594939))))))

(declare-fun b!7271358 () Bool)

(assert (=> b!7271358 (= e!4360379 (exprs!8239 ct2!346))))

(declare-fun d!2262842 () Bool)

(assert (=> d!2262842 e!4360380))

(declare-fun res!2947648 () Bool)

(assert (=> d!2262842 (=> (not res!2947648) (not e!4360380))))

(assert (=> d!2262842 (= res!2947648 (= (content!14777 lt!2595002) ((_ map or) (content!14777 (t!384983 lt!2594939)) (content!14777 (exprs!8239 ct2!346)))))))

(assert (=> d!2262842 (= lt!2595002 e!4360379)))

(declare-fun c!1353634 () Bool)

(assert (=> d!2262842 (= c!1353634 ((_ is Nil!70789) (t!384983 lt!2594939)))))

(assert (=> d!2262842 (= (++!16699 (t!384983 lt!2594939) (exprs!8239 ct2!346)) lt!2595002)))

(assert (= (and d!2262842 c!1353634) b!7271358))

(assert (= (and d!2262842 (not c!1353634)) b!7271359))

(assert (= (and d!2262842 res!2947648) b!7271360))

(assert (= (and b!7271360 res!2947647) b!7271361))

(declare-fun m!7957166 () Bool)

(assert (=> b!7271359 m!7957166))

(declare-fun m!7957168 () Bool)

(assert (=> b!7271360 m!7957168))

(declare-fun m!7957170 () Bool)

(assert (=> b!7271360 m!7957170))

(assert (=> b!7271360 m!7956726))

(declare-fun m!7957172 () Bool)

(assert (=> d!2262842 m!7957172))

(declare-fun m!7957174 () Bool)

(assert (=> d!2262842 m!7957174))

(assert (=> d!2262842 m!7956732))

(assert (=> b!7270987 d!2262842))

(declare-fun d!2262844 () Bool)

(declare-fun res!2947649 () Bool)

(declare-fun e!4360381 () Bool)

(assert (=> d!2262844 (=> res!2947649 e!4360381)))

(assert (=> d!2262844 (= res!2947649 ((_ is Nil!70789) (++!16699 (exprs!8239 ct1!250) (exprs!8239 ct2!346))))))

(assert (=> d!2262844 (= (forall!17628 (++!16699 (exprs!8239 ct1!250) (exprs!8239 ct2!346)) lambda!448656) e!4360381)))

(declare-fun b!7271362 () Bool)

(declare-fun e!4360382 () Bool)

(assert (=> b!7271362 (= e!4360381 e!4360382)))

(declare-fun res!2947650 () Bool)

(assert (=> b!7271362 (=> (not res!2947650) (not e!4360382))))

(assert (=> b!7271362 (= res!2947650 (dynLambda!28937 lambda!448656 (h!77237 (++!16699 (exprs!8239 ct1!250) (exprs!8239 ct2!346)))))))

(declare-fun b!7271363 () Bool)

(assert (=> b!7271363 (= e!4360382 (forall!17628 (t!384983 (++!16699 (exprs!8239 ct1!250) (exprs!8239 ct2!346))) lambda!448656))))

(assert (= (and d!2262844 (not res!2947649)) b!7271362))

(assert (= (and b!7271362 res!2947650) b!7271363))

(declare-fun b_lambda!280331 () Bool)

(assert (=> (not b_lambda!280331) (not b!7271362)))

(declare-fun m!7957176 () Bool)

(assert (=> b!7271362 m!7957176))

(declare-fun m!7957178 () Bool)

(assert (=> b!7271363 m!7957178))

(assert (=> d!2262570 d!2262844))

(assert (=> d!2262570 d!2262608))

(declare-fun d!2262846 () Bool)

(assert (=> d!2262846 (forall!17628 (++!16699 (exprs!8239 ct1!250) (exprs!8239 ct2!346)) lambda!448656)))

(assert (=> d!2262846 true))

(declare-fun _$78!828 () Unit!164216)

(assert (=> d!2262846 (= (choose!56410 (exprs!8239 ct1!250) (exprs!8239 ct2!346) lambda!448656) _$78!828)))

(declare-fun bs!1911157 () Bool)

(assert (= bs!1911157 d!2262846))

(assert (=> bs!1911157 m!7956516))

(assert (=> bs!1911157 m!7956516))

(assert (=> bs!1911157 m!7956674))

(assert (=> d!2262570 d!2262846))

(declare-fun d!2262848 () Bool)

(declare-fun res!2947651 () Bool)

(declare-fun e!4360383 () Bool)

(assert (=> d!2262848 (=> res!2947651 e!4360383)))

(assert (=> d!2262848 (= res!2947651 ((_ is Nil!70789) (exprs!8239 ct1!250)))))

(assert (=> d!2262848 (= (forall!17628 (exprs!8239 ct1!250) lambda!448656) e!4360383)))

(declare-fun b!7271364 () Bool)

(declare-fun e!4360384 () Bool)

(assert (=> b!7271364 (= e!4360383 e!4360384)))

(declare-fun res!2947652 () Bool)

(assert (=> b!7271364 (=> (not res!2947652) (not e!4360384))))

(assert (=> b!7271364 (= res!2947652 (dynLambda!28937 lambda!448656 (h!77237 (exprs!8239 ct1!250))))))

(declare-fun b!7271365 () Bool)

(assert (=> b!7271365 (= e!4360384 (forall!17628 (t!384983 (exprs!8239 ct1!250)) lambda!448656))))

(assert (= (and d!2262848 (not res!2947651)) b!7271364))

(assert (= (and b!7271364 res!2947652) b!7271365))

(declare-fun b_lambda!280333 () Bool)

(assert (=> (not b_lambda!280333) (not b!7271364)))

(declare-fun m!7957180 () Bool)

(assert (=> b!7271364 m!7957180))

(declare-fun m!7957182 () Bool)

(assert (=> b!7271365 m!7957182))

(assert (=> d!2262570 d!2262848))

(declare-fun d!2262850 () Bool)

(declare-fun lt!2595005 () Int)

(assert (=> d!2262850 (>= lt!2595005 0)))

(declare-fun e!4360387 () Int)

(assert (=> d!2262850 (= lt!2595005 e!4360387)))

(declare-fun c!1353637 () Bool)

(assert (=> d!2262850 (= c!1353637 ((_ is Nil!70789) lt!2594978))))

(assert (=> d!2262850 (= (size!41825 lt!2594978) lt!2595005)))

(declare-fun b!7271370 () Bool)

(assert (=> b!7271370 (= e!4360387 0)))

(declare-fun b!7271371 () Bool)

(assert (=> b!7271371 (= e!4360387 (+ 1 (size!41825 (t!384983 lt!2594978))))))

(assert (= (and d!2262850 c!1353637) b!7271370))

(assert (= (and d!2262850 (not c!1353637)) b!7271371))

(declare-fun m!7957184 () Bool)

(assert (=> b!7271371 m!7957184))

(assert (=> b!7270946 d!2262850))

(declare-fun d!2262852 () Bool)

(declare-fun lt!2595006 () Int)

(assert (=> d!2262852 (>= lt!2595006 0)))

(declare-fun e!4360388 () Int)

(assert (=> d!2262852 (= lt!2595006 e!4360388)))

(declare-fun c!1353638 () Bool)

(assert (=> d!2262852 (= c!1353638 ((_ is Nil!70789) (exprs!8239 ct1!250)))))

(assert (=> d!2262852 (= (size!41825 (exprs!8239 ct1!250)) lt!2595006)))

(declare-fun b!7271372 () Bool)

(assert (=> b!7271372 (= e!4360388 0)))

(declare-fun b!7271373 () Bool)

(assert (=> b!7271373 (= e!4360388 (+ 1 (size!41825 (t!384983 (exprs!8239 ct1!250)))))))

(assert (= (and d!2262852 c!1353638) b!7271372))

(assert (= (and d!2262852 (not c!1353638)) b!7271373))

(declare-fun m!7957186 () Bool)

(assert (=> b!7271373 m!7957186))

(assert (=> b!7270946 d!2262852))

(declare-fun d!2262854 () Bool)

(declare-fun lt!2595007 () Int)

(assert (=> d!2262854 (>= lt!2595007 0)))

(declare-fun e!4360389 () Int)

(assert (=> d!2262854 (= lt!2595007 e!4360389)))

(declare-fun c!1353639 () Bool)

(assert (=> d!2262854 (= c!1353639 ((_ is Nil!70789) (exprs!8239 ct2!346)))))

(assert (=> d!2262854 (= (size!41825 (exprs!8239 ct2!346)) lt!2595007)))

(declare-fun b!7271374 () Bool)

(assert (=> b!7271374 (= e!4360389 0)))

(declare-fun b!7271375 () Bool)

(assert (=> b!7271375 (= e!4360389 (+ 1 (size!41825 (t!384983 (exprs!8239 ct2!346)))))))

(assert (= (and d!2262854 c!1353639) b!7271374))

(assert (= (and d!2262854 (not c!1353639)) b!7271375))

(declare-fun m!7957188 () Bool)

(assert (=> b!7271375 m!7957188))

(assert (=> b!7270946 d!2262854))

(declare-fun d!2262856 () Bool)

(assert (=> d!2262856 true))

(declare-fun setRes!53644 () Bool)

(assert (=> d!2262856 setRes!53644))

(declare-fun condSetEmpty!53644 () Bool)

(declare-fun res!2947653 () (InoxSet Context!15478))

(assert (=> d!2262856 (= condSetEmpty!53644 (= res!2947653 ((as const (Array Context!15478 Bool)) false)))))

(assert (=> d!2262856 (= (choose!56411 lt!2594923 lambda!448657) res!2947653)))

(declare-fun setIsEmpty!53644 () Bool)

(assert (=> setIsEmpty!53644 setRes!53644))

(declare-fun setElem!53644 () Context!15478)

(declare-fun setNonEmpty!53644 () Bool)

(declare-fun e!4360390 () Bool)

(declare-fun tp!2041159 () Bool)

(assert (=> setNonEmpty!53644 (= setRes!53644 (and tp!2041159 (inv!90007 setElem!53644) e!4360390))))

(declare-fun setRest!53644 () (InoxSet Context!15478))

(assert (=> setNonEmpty!53644 (= res!2947653 ((_ map or) (store ((as const (Array Context!15478 Bool)) false) setElem!53644 true) setRest!53644))))

(declare-fun b!7271376 () Bool)

(declare-fun tp!2041158 () Bool)

(assert (=> b!7271376 (= e!4360390 tp!2041158)))

(assert (= (and d!2262856 condSetEmpty!53644) setIsEmpty!53644))

(assert (= (and d!2262856 (not condSetEmpty!53644)) setNonEmpty!53644))

(assert (= setNonEmpty!53644 b!7271376))

(declare-fun m!7957190 () Bool)

(assert (=> setNonEmpty!53644 m!7957190))

(assert (=> d!2262652 d!2262856))

(declare-fun b!7271377 () Bool)

(declare-fun e!4360394 () Bool)

(declare-fun call!663268 () Bool)

(assert (=> b!7271377 (= e!4360394 call!663268)))

(declare-fun c!1353641 () Bool)

(declare-fun bm!663263 () Bool)

(declare-fun c!1353640 () Bool)

(assert (=> bm!663263 (= call!663268 (validRegex!9586 (ite c!1353641 (reg!19128 (ite c!1353525 (regTwo!38111 (h!77237 (exprs!8239 ct1!250))) (regTwo!38110 (h!77237 (exprs!8239 ct1!250))))) (ite c!1353640 (regOne!38111 (ite c!1353525 (regTwo!38111 (h!77237 (exprs!8239 ct1!250))) (regTwo!38110 (h!77237 (exprs!8239 ct1!250))))) (regOne!38110 (ite c!1353525 (regTwo!38111 (h!77237 (exprs!8239 ct1!250))) (regTwo!38110 (h!77237 (exprs!8239 ct1!250)))))))))))

(declare-fun b!7271378 () Bool)

(declare-fun res!2947658 () Bool)

(declare-fun e!4360392 () Bool)

(assert (=> b!7271378 (=> res!2947658 e!4360392)))

(assert (=> b!7271378 (= res!2947658 (not ((_ is Concat!27644) (ite c!1353525 (regTwo!38111 (h!77237 (exprs!8239 ct1!250))) (regTwo!38110 (h!77237 (exprs!8239 ct1!250)))))))))

(declare-fun e!4360393 () Bool)

(assert (=> b!7271378 (= e!4360393 e!4360392)))

(declare-fun bm!663264 () Bool)

(declare-fun call!663270 () Bool)

(assert (=> bm!663264 (= call!663270 (validRegex!9586 (ite c!1353640 (regTwo!38111 (ite c!1353525 (regTwo!38111 (h!77237 (exprs!8239 ct1!250))) (regTwo!38110 (h!77237 (exprs!8239 ct1!250))))) (regTwo!38110 (ite c!1353525 (regTwo!38111 (h!77237 (exprs!8239 ct1!250))) (regTwo!38110 (h!77237 (exprs!8239 ct1!250))))))))))

(declare-fun b!7271380 () Bool)

(declare-fun res!2947655 () Bool)

(declare-fun e!4360397 () Bool)

(assert (=> b!7271380 (=> (not res!2947655) (not e!4360397))))

(declare-fun call!663269 () Bool)

(assert (=> b!7271380 (= res!2947655 call!663269)))

(assert (=> b!7271380 (= e!4360393 e!4360397)))

(declare-fun b!7271381 () Bool)

(assert (=> b!7271381 (= e!4360397 call!663270)))

(declare-fun bm!663265 () Bool)

(assert (=> bm!663265 (= call!663269 call!663268)))

(declare-fun b!7271382 () Bool)

(declare-fun e!4360396 () Bool)

(assert (=> b!7271382 (= e!4360396 e!4360394)))

(declare-fun res!2947654 () Bool)

(assert (=> b!7271382 (= res!2947654 (not (nullable!7999 (reg!19128 (ite c!1353525 (regTwo!38111 (h!77237 (exprs!8239 ct1!250))) (regTwo!38110 (h!77237 (exprs!8239 ct1!250))))))))))

(assert (=> b!7271382 (=> (not res!2947654) (not e!4360394))))

(declare-fun b!7271383 () Bool)

(declare-fun e!4360391 () Bool)

(assert (=> b!7271383 (= e!4360392 e!4360391)))

(declare-fun res!2947657 () Bool)

(assert (=> b!7271383 (=> (not res!2947657) (not e!4360391))))

(assert (=> b!7271383 (= res!2947657 call!663269)))

(declare-fun b!7271379 () Bool)

(declare-fun e!4360395 () Bool)

(assert (=> b!7271379 (= e!4360395 e!4360396)))

(assert (=> b!7271379 (= c!1353641 ((_ is Star!18799) (ite c!1353525 (regTwo!38111 (h!77237 (exprs!8239 ct1!250))) (regTwo!38110 (h!77237 (exprs!8239 ct1!250))))))))

(declare-fun d!2262858 () Bool)

(declare-fun res!2947656 () Bool)

(assert (=> d!2262858 (=> res!2947656 e!4360395)))

(assert (=> d!2262858 (= res!2947656 ((_ is ElementMatch!18799) (ite c!1353525 (regTwo!38111 (h!77237 (exprs!8239 ct1!250))) (regTwo!38110 (h!77237 (exprs!8239 ct1!250))))))))

(assert (=> d!2262858 (= (validRegex!9586 (ite c!1353525 (regTwo!38111 (h!77237 (exprs!8239 ct1!250))) (regTwo!38110 (h!77237 (exprs!8239 ct1!250))))) e!4360395)))

(declare-fun b!7271384 () Bool)

(assert (=> b!7271384 (= e!4360396 e!4360393)))

(assert (=> b!7271384 (= c!1353640 ((_ is Union!18799) (ite c!1353525 (regTwo!38111 (h!77237 (exprs!8239 ct1!250))) (regTwo!38110 (h!77237 (exprs!8239 ct1!250))))))))

(declare-fun b!7271385 () Bool)

(assert (=> b!7271385 (= e!4360391 call!663270)))

(assert (= (and d!2262858 (not res!2947656)) b!7271379))

(assert (= (and b!7271379 c!1353641) b!7271382))

(assert (= (and b!7271379 (not c!1353641)) b!7271384))

(assert (= (and b!7271382 res!2947654) b!7271377))

(assert (= (and b!7271384 c!1353640) b!7271380))

(assert (= (and b!7271384 (not c!1353640)) b!7271378))

(assert (= (and b!7271380 res!2947655) b!7271381))

(assert (= (and b!7271378 (not res!2947658)) b!7271383))

(assert (= (and b!7271383 res!2947657) b!7271385))

(assert (= (or b!7271380 b!7271383) bm!663265))

(assert (= (or b!7271381 b!7271385) bm!663264))

(assert (= (or b!7271377 bm!663265) bm!663263))

(declare-fun m!7957192 () Bool)

(assert (=> bm!663263 m!7957192))

(declare-fun m!7957194 () Bool)

(assert (=> bm!663264 m!7957194))

(declare-fun m!7957196 () Bool)

(assert (=> b!7271382 m!7957196))

(assert (=> bm!663166 d!2262858))

(declare-fun d!2262860 () Bool)

(assert (=> d!2262860 (forall!17628 (++!16699 (exprs!8239 lt!2594922) (exprs!8239 ct2!346)) lambda!448683)))

(declare-fun lt!2595008 () Unit!164216)

(assert (=> d!2262860 (= lt!2595008 (choose!56410 (exprs!8239 lt!2594922) (exprs!8239 ct2!346) lambda!448683))))

(assert (=> d!2262860 (forall!17628 (exprs!8239 lt!2594922) lambda!448683)))

(assert (=> d!2262860 (= (lemmaConcatPreservesForall!1556 (exprs!8239 lt!2594922) (exprs!8239 ct2!346) lambda!448683) lt!2595008)))

(declare-fun bs!1911158 () Bool)

(assert (= bs!1911158 d!2262860))

(assert (=> bs!1911158 m!7956832))

(assert (=> bs!1911158 m!7956832))

(declare-fun m!7957198 () Bool)

(assert (=> bs!1911158 m!7957198))

(declare-fun m!7957200 () Bool)

(assert (=> bs!1911158 m!7957200))

(declare-fun m!7957202 () Bool)

(assert (=> bs!1911158 m!7957202))

(assert (=> d!2262654 d!2262860))

(declare-fun d!2262862 () Bool)

(declare-fun c!1353642 () Bool)

(assert (=> d!2262862 (= c!1353642 (isEmpty!40715 s!7854))))

(declare-fun e!4360398 () Bool)

(assert (=> d!2262862 (= (matchZipper!3703 (store ((as const (Array Context!15478 Bool)) false) (Context!15479 (++!16699 (exprs!8239 lt!2594922) (exprs!8239 ct2!346))) true) s!7854) e!4360398)))

(declare-fun b!7271386 () Bool)

(assert (=> b!7271386 (= e!4360398 (nullableZipper!3005 (store ((as const (Array Context!15478 Bool)) false) (Context!15479 (++!16699 (exprs!8239 lt!2594922) (exprs!8239 ct2!346))) true)))))

(declare-fun b!7271387 () Bool)

(assert (=> b!7271387 (= e!4360398 (matchZipper!3703 (derivationStepZipper!3539 (store ((as const (Array Context!15478 Bool)) false) (Context!15479 (++!16699 (exprs!8239 lt!2594922) (exprs!8239 ct2!346))) true) (head!15003 s!7854)) (tail!14502 s!7854)))))

(assert (= (and d!2262862 c!1353642) b!7271386))

(assert (= (and d!2262862 (not c!1353642)) b!7271387))

(assert (=> d!2262862 m!7956764))

(assert (=> b!7271386 m!7956828))

(declare-fun m!7957204 () Bool)

(assert (=> b!7271386 m!7957204))

(assert (=> b!7271387 m!7956768))

(assert (=> b!7271387 m!7956828))

(assert (=> b!7271387 m!7956768))

(declare-fun m!7957206 () Bool)

(assert (=> b!7271387 m!7957206))

(assert (=> b!7271387 m!7956772))

(assert (=> b!7271387 m!7957206))

(assert (=> b!7271387 m!7956772))

(declare-fun m!7957208 () Bool)

(assert (=> b!7271387 m!7957208))

(assert (=> d!2262654 d!2262862))

(declare-fun b!7271389 () Bool)

(declare-fun e!4360399 () List!70913)

(assert (=> b!7271389 (= e!4360399 (Cons!70789 (h!77237 (exprs!8239 lt!2594922)) (++!16699 (t!384983 (exprs!8239 lt!2594922)) (exprs!8239 ct2!346))))))

(declare-fun b!7271390 () Bool)

(declare-fun res!2947659 () Bool)

(declare-fun e!4360400 () Bool)

(assert (=> b!7271390 (=> (not res!2947659) (not e!4360400))))

(declare-fun lt!2595009 () List!70913)

(assert (=> b!7271390 (= res!2947659 (= (size!41825 lt!2595009) (+ (size!41825 (exprs!8239 lt!2594922)) (size!41825 (exprs!8239 ct2!346)))))))

(declare-fun b!7271391 () Bool)

(assert (=> b!7271391 (= e!4360400 (or (not (= (exprs!8239 ct2!346) Nil!70789)) (= lt!2595009 (exprs!8239 lt!2594922))))))

(declare-fun b!7271388 () Bool)

(assert (=> b!7271388 (= e!4360399 (exprs!8239 ct2!346))))

(declare-fun d!2262864 () Bool)

(assert (=> d!2262864 e!4360400))

(declare-fun res!2947660 () Bool)

(assert (=> d!2262864 (=> (not res!2947660) (not e!4360400))))

(assert (=> d!2262864 (= res!2947660 (= (content!14777 lt!2595009) ((_ map or) (content!14777 (exprs!8239 lt!2594922)) (content!14777 (exprs!8239 ct2!346)))))))

(assert (=> d!2262864 (= lt!2595009 e!4360399)))

(declare-fun c!1353643 () Bool)

(assert (=> d!2262864 (= c!1353643 ((_ is Nil!70789) (exprs!8239 lt!2594922)))))

(assert (=> d!2262864 (= (++!16699 (exprs!8239 lt!2594922) (exprs!8239 ct2!346)) lt!2595009)))

(assert (= (and d!2262864 c!1353643) b!7271388))

(assert (= (and d!2262864 (not c!1353643)) b!7271389))

(assert (= (and d!2262864 res!2947660) b!7271390))

(assert (= (and b!7271390 res!2947659) b!7271391))

(declare-fun m!7957210 () Bool)

(assert (=> b!7271389 m!7957210))

(declare-fun m!7957212 () Bool)

(assert (=> b!7271390 m!7957212))

(declare-fun m!7957214 () Bool)

(assert (=> b!7271390 m!7957214))

(assert (=> b!7271390 m!7956726))

(declare-fun m!7957216 () Bool)

(assert (=> d!2262864 m!7957216))

(declare-fun m!7957218 () Bool)

(assert (=> d!2262864 m!7957218))

(assert (=> d!2262864 m!7956732))

(assert (=> d!2262654 d!2262864))

(assert (=> d!2262654 d!2262628))

(declare-fun bs!1911159 () Bool)

(declare-fun d!2262866 () Bool)

(assert (= bs!1911159 (and d!2262866 d!2262630)))

(declare-fun lambda!448701 () Int)

(assert (=> bs!1911159 (= lambda!448701 lambda!448676)))

(declare-fun bs!1911160 () Bool)

(assert (= bs!1911160 (and d!2262866 d!2262638)))

(assert (=> bs!1911160 (not (= lambda!448701 lambda!448680))))

(declare-fun bs!1911161 () Bool)

(assert (= bs!1911161 (and d!2262866 d!2262654)))

(assert (=> bs!1911161 (= lambda!448701 lambda!448683)))

(declare-fun bs!1911162 () Bool)

(assert (= bs!1911162 (and d!2262866 b!7270767)))

(assert (=> bs!1911162 (= lambda!448701 lambda!448656)))

(declare-fun bs!1911163 () Bool)

(assert (= bs!1911163 (and d!2262866 d!2262632)))

(assert (=> bs!1911163 (= lambda!448701 lambda!448677)))

(assert (=> d!2262866 (matchZipper!3703 (store ((as const (Array Context!15478 Bool)) false) (Context!15479 (++!16699 (exprs!8239 lt!2594922) (exprs!8239 ct2!346))) true) s!7854)))

(declare-fun lt!2595012 () Unit!164216)

(assert (=> d!2262866 (= lt!2595012 (lemmaConcatPreservesForall!1556 (exprs!8239 lt!2594922) (exprs!8239 ct2!346) lambda!448701))))

(assert (=> d!2262866 true))

(declare-fun _$57!143 () Unit!164216)

(assert (=> d!2262866 (= (choose!56412 lt!2594922 ct2!346 s!7854) _$57!143)))

(declare-fun bs!1911164 () Bool)

(assert (= bs!1911164 d!2262866))

(assert (=> bs!1911164 m!7956832))

(assert (=> bs!1911164 m!7956828))

(assert (=> bs!1911164 m!7956828))

(assert (=> bs!1911164 m!7956830))

(declare-fun m!7957220 () Bool)

(assert (=> bs!1911164 m!7957220))

(assert (=> d!2262654 d!2262866))

(declare-fun d!2262868 () Bool)

(assert (=> d!2262868 (= (flatMap!2912 lt!2594942 lambda!448673) (choose!56411 lt!2594942 lambda!448673))))

(declare-fun bs!1911165 () Bool)

(assert (= bs!1911165 d!2262868))

(declare-fun m!7957222 () Bool)

(assert (=> bs!1911165 m!7957222))

(assert (=> d!2262602 d!2262868))

(declare-fun b!7271392 () Bool)

(declare-fun e!4360403 () Bool)

(assert (=> b!7271392 (= e!4360403 (nullable!7999 (h!77237 (exprs!8239 (Context!15479 (t!384983 (exprs!8239 lt!2594948)))))))))

(declare-fun d!2262870 () Bool)

(declare-fun c!1353644 () Bool)

(assert (=> d!2262870 (= c!1353644 e!4360403)))

(declare-fun res!2947661 () Bool)

(assert (=> d!2262870 (=> (not res!2947661) (not e!4360403))))

(assert (=> d!2262870 (= res!2947661 ((_ is Cons!70789) (exprs!8239 (Context!15479 (t!384983 (exprs!8239 lt!2594948))))))))

(declare-fun e!4360401 () (InoxSet Context!15478))

(assert (=> d!2262870 (= (derivationStepZipperUp!2569 (Context!15479 (t!384983 (exprs!8239 lt!2594948))) (h!77238 s!7854)) e!4360401)))

(declare-fun call!663271 () (InoxSet Context!15478))

(declare-fun b!7271393 () Bool)

(assert (=> b!7271393 (= e!4360401 ((_ map or) call!663271 (derivationStepZipperUp!2569 (Context!15479 (t!384983 (exprs!8239 (Context!15479 (t!384983 (exprs!8239 lt!2594948)))))) (h!77238 s!7854))))))

(declare-fun b!7271394 () Bool)

(declare-fun e!4360402 () (InoxSet Context!15478))

(assert (=> b!7271394 (= e!4360402 call!663271)))

(declare-fun b!7271395 () Bool)

(assert (=> b!7271395 (= e!4360401 e!4360402)))

(declare-fun c!1353645 () Bool)

(assert (=> b!7271395 (= c!1353645 ((_ is Cons!70789) (exprs!8239 (Context!15479 (t!384983 (exprs!8239 lt!2594948))))))))

(declare-fun bm!663266 () Bool)

(assert (=> bm!663266 (= call!663271 (derivationStepZipperDown!2733 (h!77237 (exprs!8239 (Context!15479 (t!384983 (exprs!8239 lt!2594948))))) (Context!15479 (t!384983 (exprs!8239 (Context!15479 (t!384983 (exprs!8239 lt!2594948)))))) (h!77238 s!7854)))))

(declare-fun b!7271396 () Bool)

(assert (=> b!7271396 (= e!4360402 ((as const (Array Context!15478 Bool)) false))))

(assert (= (and d!2262870 res!2947661) b!7271392))

(assert (= (and d!2262870 c!1353644) b!7271393))

(assert (= (and d!2262870 (not c!1353644)) b!7271395))

(assert (= (and b!7271395 c!1353645) b!7271394))

(assert (= (and b!7271395 (not c!1353645)) b!7271396))

(assert (= (or b!7271393 b!7271394) bm!663266))

(declare-fun m!7957224 () Bool)

(assert (=> b!7271392 m!7957224))

(declare-fun m!7957226 () Bool)

(assert (=> b!7271393 m!7957226))

(declare-fun m!7957228 () Bool)

(assert (=> bm!663266 m!7957228))

(assert (=> b!7270949 d!2262870))

(declare-fun bs!1911166 () Bool)

(declare-fun d!2262872 () Bool)

(assert (= bs!1911166 (and d!2262872 d!2262814)))

(declare-fun lambda!448702 () Int)

(assert (=> bs!1911166 (= lambda!448702 lambda!448697)))

(declare-fun bs!1911167 () Bool)

(assert (= bs!1911167 (and d!2262872 d!2262828)))

(assert (=> bs!1911167 (= lambda!448702 lambda!448698)))

(assert (=> d!2262872 (= (nullableZipper!3005 lt!2594923) (exists!4490 lt!2594923 lambda!448702))))

(declare-fun bs!1911168 () Bool)

(assert (= bs!1911168 d!2262872))

(declare-fun m!7957230 () Bool)

(assert (=> bs!1911168 m!7957230))

(assert (=> b!7271039 d!2262872))

(declare-fun b!7271397 () Bool)

(declare-fun e!4360406 () Bool)

(assert (=> b!7271397 (= e!4360406 (nullable!7999 (h!77237 (exprs!8239 (Context!15479 (t!384983 (exprs!8239 lt!2594935)))))))))

(declare-fun d!2262874 () Bool)

(declare-fun c!1353646 () Bool)

(assert (=> d!2262874 (= c!1353646 e!4360406)))

(declare-fun res!2947662 () Bool)

(assert (=> d!2262874 (=> (not res!2947662) (not e!4360406))))

(assert (=> d!2262874 (= res!2947662 ((_ is Cons!70789) (exprs!8239 (Context!15479 (t!384983 (exprs!8239 lt!2594935))))))))

(declare-fun e!4360404 () (InoxSet Context!15478))

(assert (=> d!2262874 (= (derivationStepZipperUp!2569 (Context!15479 (t!384983 (exprs!8239 lt!2594935))) (h!77238 s!7854)) e!4360404)))

(declare-fun b!7271398 () Bool)

(declare-fun call!663272 () (InoxSet Context!15478))

(assert (=> b!7271398 (= e!4360404 ((_ map or) call!663272 (derivationStepZipperUp!2569 (Context!15479 (t!384983 (exprs!8239 (Context!15479 (t!384983 (exprs!8239 lt!2594935)))))) (h!77238 s!7854))))))

(declare-fun b!7271399 () Bool)

(declare-fun e!4360405 () (InoxSet Context!15478))

(assert (=> b!7271399 (= e!4360405 call!663272)))

(declare-fun b!7271400 () Bool)

(assert (=> b!7271400 (= e!4360404 e!4360405)))

(declare-fun c!1353647 () Bool)

(assert (=> b!7271400 (= c!1353647 ((_ is Cons!70789) (exprs!8239 (Context!15479 (t!384983 (exprs!8239 lt!2594935))))))))

(declare-fun bm!663267 () Bool)

(assert (=> bm!663267 (= call!663272 (derivationStepZipperDown!2733 (h!77237 (exprs!8239 (Context!15479 (t!384983 (exprs!8239 lt!2594935))))) (Context!15479 (t!384983 (exprs!8239 (Context!15479 (t!384983 (exprs!8239 lt!2594935)))))) (h!77238 s!7854)))))

(declare-fun b!7271401 () Bool)

(assert (=> b!7271401 (= e!4360405 ((as const (Array Context!15478 Bool)) false))))

(assert (= (and d!2262874 res!2947662) b!7271397))

(assert (= (and d!2262874 c!1353646) b!7271398))

(assert (= (and d!2262874 (not c!1353646)) b!7271400))

(assert (= (and b!7271400 c!1353647) b!7271399))

(assert (= (and b!7271400 (not c!1353647)) b!7271401))

(assert (= (or b!7271398 b!7271399) bm!663267))

(declare-fun m!7957232 () Bool)

(assert (=> b!7271397 m!7957232))

(declare-fun m!7957234 () Bool)

(assert (=> b!7271398 m!7957234))

(declare-fun m!7957236 () Bool)

(assert (=> bm!663267 m!7957236))

(assert (=> b!7270881 d!2262874))

(declare-fun d!2262876 () Bool)

(assert (=> d!2262876 (= (nullable!7999 (regOne!38110 (h!77237 (exprs!8239 ct1!250)))) (nullableFct!3158 (regOne!38110 (h!77237 (exprs!8239 ct1!250)))))))

(declare-fun bs!1911169 () Bool)

(assert (= bs!1911169 d!2262876))

(declare-fun m!7957238 () Bool)

(assert (=> bs!1911169 m!7957238))

(assert (=> b!7271031 d!2262876))

(declare-fun b!7271402 () Bool)

(declare-fun e!4360409 () Bool)

(assert (=> b!7271402 (= e!4360409 (nullable!7999 (h!77237 (exprs!8239 (Context!15479 (t!384983 (exprs!8239 lt!2594922)))))))))

(declare-fun d!2262878 () Bool)

(declare-fun c!1353648 () Bool)

(assert (=> d!2262878 (= c!1353648 e!4360409)))

(declare-fun res!2947663 () Bool)

(assert (=> d!2262878 (=> (not res!2947663) (not e!4360409))))

(assert (=> d!2262878 (= res!2947663 ((_ is Cons!70789) (exprs!8239 (Context!15479 (t!384983 (exprs!8239 lt!2594922))))))))

(declare-fun e!4360407 () (InoxSet Context!15478))

(assert (=> d!2262878 (= (derivationStepZipperUp!2569 (Context!15479 (t!384983 (exprs!8239 lt!2594922))) (h!77238 s!7854)) e!4360407)))

(declare-fun call!663273 () (InoxSet Context!15478))

(declare-fun b!7271403 () Bool)

(assert (=> b!7271403 (= e!4360407 ((_ map or) call!663273 (derivationStepZipperUp!2569 (Context!15479 (t!384983 (exprs!8239 (Context!15479 (t!384983 (exprs!8239 lt!2594922)))))) (h!77238 s!7854))))))

(declare-fun b!7271404 () Bool)

(declare-fun e!4360408 () (InoxSet Context!15478))

(assert (=> b!7271404 (= e!4360408 call!663273)))

(declare-fun b!7271405 () Bool)

(assert (=> b!7271405 (= e!4360407 e!4360408)))

(declare-fun c!1353649 () Bool)

(assert (=> b!7271405 (= c!1353649 ((_ is Cons!70789) (exprs!8239 (Context!15479 (t!384983 (exprs!8239 lt!2594922))))))))

(declare-fun bm!663268 () Bool)

(assert (=> bm!663268 (= call!663273 (derivationStepZipperDown!2733 (h!77237 (exprs!8239 (Context!15479 (t!384983 (exprs!8239 lt!2594922))))) (Context!15479 (t!384983 (exprs!8239 (Context!15479 (t!384983 (exprs!8239 lt!2594922)))))) (h!77238 s!7854)))))

(declare-fun b!7271406 () Bool)

(assert (=> b!7271406 (= e!4360408 ((as const (Array Context!15478 Bool)) false))))

(assert (= (and d!2262878 res!2947663) b!7271402))

(assert (= (and d!2262878 c!1353648) b!7271403))

(assert (= (and d!2262878 (not c!1353648)) b!7271405))

(assert (= (and b!7271405 c!1353649) b!7271404))

(assert (= (and b!7271405 (not c!1353649)) b!7271406))

(assert (= (or b!7271403 b!7271404) bm!663268))

(declare-fun m!7957240 () Bool)

(assert (=> b!7271402 m!7957240))

(declare-fun m!7957242 () Bool)

(assert (=> b!7271403 m!7957242))

(declare-fun m!7957244 () Bool)

(assert (=> bm!663268 m!7957244))

(assert (=> b!7271035 d!2262878))

(declare-fun d!2262880 () Bool)

(declare-fun c!1353652 () Bool)

(assert (=> d!2262880 (= c!1353652 ((_ is Nil!70789) lt!2594979))))

(declare-fun e!4360412 () (InoxSet Regex!18799))

(assert (=> d!2262880 (= (content!14777 lt!2594979) e!4360412)))

(declare-fun b!7271411 () Bool)

(assert (=> b!7271411 (= e!4360412 ((as const (Array Regex!18799 Bool)) false))))

(declare-fun b!7271412 () Bool)

(assert (=> b!7271412 (= e!4360412 ((_ map or) (store ((as const (Array Regex!18799 Bool)) false) (h!77237 lt!2594979) true) (content!14777 (t!384983 lt!2594979))))))

(assert (= (and d!2262880 c!1353652) b!7271411))

(assert (= (and d!2262880 (not c!1353652)) b!7271412))

(declare-fun m!7957246 () Bool)

(assert (=> b!7271412 m!7957246))

(declare-fun m!7957248 () Bool)

(assert (=> b!7271412 m!7957248))

(assert (=> d!2262622 d!2262880))

(declare-fun d!2262882 () Bool)

(declare-fun c!1353653 () Bool)

(assert (=> d!2262882 (= c!1353653 ((_ is Nil!70789) lt!2594939))))

(declare-fun e!4360413 () (InoxSet Regex!18799))

(assert (=> d!2262882 (= (content!14777 lt!2594939) e!4360413)))

(declare-fun b!7271413 () Bool)

(assert (=> b!7271413 (= e!4360413 ((as const (Array Regex!18799 Bool)) false))))

(declare-fun b!7271414 () Bool)

(assert (=> b!7271414 (= e!4360413 ((_ map or) (store ((as const (Array Regex!18799 Bool)) false) (h!77237 lt!2594939) true) (content!14777 (t!384983 lt!2594939))))))

(assert (= (and d!2262882 c!1353653) b!7271413))

(assert (= (and d!2262882 (not c!1353653)) b!7271414))

(declare-fun m!7957250 () Bool)

(assert (=> b!7271414 m!7957250))

(assert (=> b!7271414 m!7957174))

(assert (=> d!2262622 d!2262882))

(declare-fun d!2262884 () Bool)

(declare-fun c!1353654 () Bool)

(assert (=> d!2262884 (= c!1353654 ((_ is Nil!70789) (exprs!8239 ct2!346)))))

(declare-fun e!4360414 () (InoxSet Regex!18799))

(assert (=> d!2262884 (= (content!14777 (exprs!8239 ct2!346)) e!4360414)))

(declare-fun b!7271415 () Bool)

(assert (=> b!7271415 (= e!4360414 ((as const (Array Regex!18799 Bool)) false))))

(declare-fun b!7271416 () Bool)

(assert (=> b!7271416 (= e!4360414 ((_ map or) (store ((as const (Array Regex!18799 Bool)) false) (h!77237 (exprs!8239 ct2!346)) true) (content!14777 (t!384983 (exprs!8239 ct2!346)))))))

(assert (= (and d!2262884 c!1353654) b!7271415))

(assert (= (and d!2262884 (not c!1353654)) b!7271416))

(declare-fun m!7957252 () Bool)

(assert (=> b!7271416 m!7957252))

(declare-fun m!7957254 () Bool)

(assert (=> b!7271416 m!7957254))

(assert (=> d!2262622 d!2262884))

(declare-fun d!2262886 () Bool)

(assert (=> d!2262886 (= (nullable!7999 (h!77237 (exprs!8239 lt!2594935))) (nullableFct!3158 (h!77237 (exprs!8239 lt!2594935))))))

(declare-fun bs!1911170 () Bool)

(assert (= bs!1911170 d!2262886))

(declare-fun m!7957256 () Bool)

(assert (=> bs!1911170 m!7957256))

(assert (=> b!7270880 d!2262886))

(assert (=> d!2262650 d!2262652))

(declare-fun d!2262888 () Bool)

(assert (=> d!2262888 (= (flatMap!2912 lt!2594923 lambda!448657) (dynLambda!28935 lambda!448657 lt!2594948))))

(assert (=> d!2262888 true))

(declare-fun _$13!4642 () Unit!164216)

(assert (=> d!2262888 (= (choose!56409 lt!2594923 lt!2594948 lambda!448657) _$13!4642)))

(declare-fun b_lambda!280335 () Bool)

(assert (=> (not b_lambda!280335) (not d!2262888)))

(declare-fun bs!1911171 () Bool)

(assert (= bs!1911171 d!2262888))

(assert (=> bs!1911171 m!7956524))

(assert (=> bs!1911171 m!7956822))

(assert (=> d!2262650 d!2262888))

(declare-fun d!2262890 () Bool)

(assert (=> d!2262890 (= (nullable!7999 (reg!19128 (h!77237 (exprs!8239 ct1!250)))) (nullableFct!3158 (reg!19128 (h!77237 (exprs!8239 ct1!250)))))))

(declare-fun bs!1911172 () Bool)

(assert (= bs!1911172 d!2262890))

(declare-fun m!7957258 () Bool)

(assert (=> bs!1911172 m!7957258))

(assert (=> b!7271019 d!2262890))

(declare-fun d!2262892 () Bool)

(declare-fun res!2947664 () Bool)

(declare-fun e!4360415 () Bool)

(assert (=> d!2262892 (=> res!2947664 e!4360415)))

(assert (=> d!2262892 (= res!2947664 ((_ is Nil!70789) (exprs!8239 ct2!346)))))

(assert (=> d!2262892 (= (forall!17628 (exprs!8239 ct2!346) lambda!448676) e!4360415)))

(declare-fun b!7271417 () Bool)

(declare-fun e!4360416 () Bool)

(assert (=> b!7271417 (= e!4360415 e!4360416)))

(declare-fun res!2947665 () Bool)

(assert (=> b!7271417 (=> (not res!2947665) (not e!4360416))))

(assert (=> b!7271417 (= res!2947665 (dynLambda!28937 lambda!448676 (h!77237 (exprs!8239 ct2!346))))))

(declare-fun b!7271418 () Bool)

(assert (=> b!7271418 (= e!4360416 (forall!17628 (t!384983 (exprs!8239 ct2!346)) lambda!448676))))

(assert (= (and d!2262892 (not res!2947664)) b!7271417))

(assert (= (and b!7271417 res!2947665) b!7271418))

(declare-fun b_lambda!280337 () Bool)

(assert (=> (not b_lambda!280337) (not b!7271417)))

(declare-fun m!7957260 () Bool)

(assert (=> b!7271417 m!7957260))

(declare-fun m!7957262 () Bool)

(assert (=> b!7271418 m!7957262))

(assert (=> d!2262630 d!2262892))

(declare-fun b!7271419 () Bool)

(declare-fun e!4360419 () Bool)

(assert (=> b!7271419 (= e!4360419 (nullable!7999 (h!77237 (exprs!8239 (Context!15479 (t!384983 (exprs!8239 ct1!250)))))))))

(declare-fun d!2262894 () Bool)

(declare-fun c!1353655 () Bool)

(assert (=> d!2262894 (= c!1353655 e!4360419)))

(declare-fun res!2947666 () Bool)

(assert (=> d!2262894 (=> (not res!2947666) (not e!4360419))))

(assert (=> d!2262894 (= res!2947666 ((_ is Cons!70789) (exprs!8239 (Context!15479 (t!384983 (exprs!8239 ct1!250))))))))

(declare-fun e!4360417 () (InoxSet Context!15478))

(assert (=> d!2262894 (= (derivationStepZipperUp!2569 (Context!15479 (t!384983 (exprs!8239 ct1!250))) (h!77238 s!7854)) e!4360417)))

(declare-fun b!7271420 () Bool)

(declare-fun call!663274 () (InoxSet Context!15478))

(assert (=> b!7271420 (= e!4360417 ((_ map or) call!663274 (derivationStepZipperUp!2569 (Context!15479 (t!384983 (exprs!8239 (Context!15479 (t!384983 (exprs!8239 ct1!250)))))) (h!77238 s!7854))))))

(declare-fun b!7271421 () Bool)

(declare-fun e!4360418 () (InoxSet Context!15478))

(assert (=> b!7271421 (= e!4360418 call!663274)))

(declare-fun b!7271422 () Bool)

(assert (=> b!7271422 (= e!4360417 e!4360418)))

(declare-fun c!1353656 () Bool)

(assert (=> b!7271422 (= c!1353656 ((_ is Cons!70789) (exprs!8239 (Context!15479 (t!384983 (exprs!8239 ct1!250))))))))

(declare-fun bm!663269 () Bool)

(assert (=> bm!663269 (= call!663274 (derivationStepZipperDown!2733 (h!77237 (exprs!8239 (Context!15479 (t!384983 (exprs!8239 ct1!250))))) (Context!15479 (t!384983 (exprs!8239 (Context!15479 (t!384983 (exprs!8239 ct1!250)))))) (h!77238 s!7854)))))

(declare-fun b!7271423 () Bool)

(assert (=> b!7271423 (= e!4360418 ((as const (Array Context!15478 Bool)) false))))

(assert (= (and d!2262894 res!2947666) b!7271419))

(assert (= (and d!2262894 c!1353655) b!7271420))

(assert (= (and d!2262894 (not c!1353655)) b!7271422))

(assert (= (and b!7271422 c!1353656) b!7271421))

(assert (= (and b!7271422 (not c!1353656)) b!7271423))

(assert (= (or b!7271420 b!7271421) bm!663269))

(declare-fun m!7957264 () Bool)

(assert (=> b!7271419 m!7957264))

(declare-fun m!7957266 () Bool)

(assert (=> b!7271420 m!7957266))

(declare-fun m!7957268 () Bool)

(assert (=> bm!663269 m!7957268))

(assert (=> b!7270857 d!2262894))

(declare-fun d!2262896 () Bool)

(declare-fun c!1353657 () Bool)

(assert (=> d!2262896 (= c!1353657 (isEmpty!40715 (tail!14502 (t!384984 s!7854))))))

(declare-fun e!4360420 () Bool)

(assert (=> d!2262896 (= (matchZipper!3703 (derivationStepZipper!3539 lt!2594924 (head!15003 (t!384984 s!7854))) (tail!14502 (t!384984 s!7854))) e!4360420)))

(declare-fun b!7271424 () Bool)

(assert (=> b!7271424 (= e!4360420 (nullableZipper!3005 (derivationStepZipper!3539 lt!2594924 (head!15003 (t!384984 s!7854)))))))

(declare-fun b!7271425 () Bool)

(assert (=> b!7271425 (= e!4360420 (matchZipper!3703 (derivationStepZipper!3539 (derivationStepZipper!3539 lt!2594924 (head!15003 (t!384984 s!7854))) (head!15003 (tail!14502 (t!384984 s!7854)))) (tail!14502 (tail!14502 (t!384984 s!7854)))))))

(assert (= (and d!2262896 c!1353657) b!7271424))

(assert (= (and d!2262896 (not c!1353657)) b!7271425))

(assert (=> d!2262896 m!7956818))

(declare-fun m!7957270 () Bool)

(assert (=> d!2262896 m!7957270))

(assert (=> b!7271424 m!7956816))

(declare-fun m!7957272 () Bool)

(assert (=> b!7271424 m!7957272))

(assert (=> b!7271425 m!7956818))

(declare-fun m!7957274 () Bool)

(assert (=> b!7271425 m!7957274))

(assert (=> b!7271425 m!7956816))

(assert (=> b!7271425 m!7957274))

(declare-fun m!7957276 () Bool)

(assert (=> b!7271425 m!7957276))

(assert (=> b!7271425 m!7956818))

(declare-fun m!7957278 () Bool)

(assert (=> b!7271425 m!7957278))

(assert (=> b!7271425 m!7957276))

(assert (=> b!7271425 m!7957278))

(declare-fun m!7957280 () Bool)

(assert (=> b!7271425 m!7957280))

(assert (=> b!7271042 d!2262896))

(declare-fun bs!1911173 () Bool)

(declare-fun d!2262898 () Bool)

(assert (= bs!1911173 (and d!2262898 b!7270767)))

(declare-fun lambda!448703 () Int)

(assert (=> bs!1911173 (= (= (head!15003 (t!384984 s!7854)) (h!77238 s!7854)) (= lambda!448703 lambda!448657))))

(declare-fun bs!1911174 () Bool)

(assert (= bs!1911174 (and d!2262898 d!2262602)))

(assert (=> bs!1911174 (= (= (head!15003 (t!384984 s!7854)) (h!77238 s!7854)) (= lambda!448703 lambda!448673))))

(assert (=> d!2262898 true))

(assert (=> d!2262898 (= (derivationStepZipper!3539 lt!2594924 (head!15003 (t!384984 s!7854))) (flatMap!2912 lt!2594924 lambda!448703))))

(declare-fun bs!1911175 () Bool)

(assert (= bs!1911175 d!2262898))

(declare-fun m!7957282 () Bool)

(assert (=> bs!1911175 m!7957282))

(assert (=> b!7271042 d!2262898))

(declare-fun d!2262900 () Bool)

(assert (=> d!2262900 (= (head!15003 (t!384984 s!7854)) (h!77238 (t!384984 s!7854)))))

(assert (=> b!7271042 d!2262900))

(declare-fun d!2262902 () Bool)

(assert (=> d!2262902 (= (tail!14502 (t!384984 s!7854)) (t!384984 (t!384984 s!7854)))))

(assert (=> b!7271042 d!2262902))

(declare-fun d!2262904 () Bool)

(declare-fun res!2947667 () Bool)

(declare-fun e!4360421 () Bool)

(assert (=> d!2262904 (=> res!2947667 e!4360421)))

(assert (=> d!2262904 (= res!2947667 ((_ is Nil!70789) (++!16699 lt!2594939 (exprs!8239 ct2!346))))))

(assert (=> d!2262904 (= (forall!17628 (++!16699 lt!2594939 (exprs!8239 ct2!346)) lambda!448656) e!4360421)))

(declare-fun b!7271426 () Bool)

(declare-fun e!4360422 () Bool)

(assert (=> b!7271426 (= e!4360421 e!4360422)))

(declare-fun res!2947668 () Bool)

(assert (=> b!7271426 (=> (not res!2947668) (not e!4360422))))

(assert (=> b!7271426 (= res!2947668 (dynLambda!28937 lambda!448656 (h!77237 (++!16699 lt!2594939 (exprs!8239 ct2!346)))))))

(declare-fun b!7271427 () Bool)

(assert (=> b!7271427 (= e!4360422 (forall!17628 (t!384983 (++!16699 lt!2594939 (exprs!8239 ct2!346))) lambda!448656))))

(assert (= (and d!2262904 (not res!2947667)) b!7271426))

(assert (= (and b!7271426 res!2947668) b!7271427))

(declare-fun b_lambda!280339 () Bool)

(assert (=> (not b_lambda!280339) (not b!7271426)))

(declare-fun m!7957284 () Bool)

(assert (=> b!7271426 m!7957284))

(declare-fun m!7957286 () Bool)

(assert (=> b!7271427 m!7957286))

(assert (=> d!2262624 d!2262904))

(assert (=> d!2262624 d!2262622))

(declare-fun d!2262906 () Bool)

(assert (=> d!2262906 (forall!17628 (++!16699 lt!2594939 (exprs!8239 ct2!346)) lambda!448656)))

(assert (=> d!2262906 true))

(declare-fun _$78!829 () Unit!164216)

(assert (=> d!2262906 (= (choose!56410 lt!2594939 (exprs!8239 ct2!346) lambda!448656) _$78!829)))

(declare-fun bs!1911176 () Bool)

(assert (= bs!1911176 d!2262906))

(assert (=> bs!1911176 m!7956536))

(assert (=> bs!1911176 m!7956536))

(assert (=> bs!1911176 m!7956758))

(assert (=> d!2262624 d!2262906))

(declare-fun d!2262908 () Bool)

(declare-fun res!2947669 () Bool)

(declare-fun e!4360423 () Bool)

(assert (=> d!2262908 (=> res!2947669 e!4360423)))

(assert (=> d!2262908 (= res!2947669 ((_ is Nil!70789) lt!2594939))))

(assert (=> d!2262908 (= (forall!17628 lt!2594939 lambda!448656) e!4360423)))

(declare-fun b!7271428 () Bool)

(declare-fun e!4360424 () Bool)

(assert (=> b!7271428 (= e!4360423 e!4360424)))

(declare-fun res!2947670 () Bool)

(assert (=> b!7271428 (=> (not res!2947670) (not e!4360424))))

(assert (=> b!7271428 (= res!2947670 (dynLambda!28937 lambda!448656 (h!77237 lt!2594939)))))

(declare-fun b!7271429 () Bool)

(assert (=> b!7271429 (= e!4360424 (forall!17628 (t!384983 lt!2594939) lambda!448656))))

(assert (= (and d!2262908 (not res!2947669)) b!7271428))

(assert (= (and b!7271428 res!2947670) b!7271429))

(declare-fun b_lambda!280341 () Bool)

(assert (=> (not b_lambda!280341) (not b!7271428)))

(declare-fun m!7957288 () Bool)

(assert (=> b!7271428 m!7957288))

(declare-fun m!7957290 () Bool)

(assert (=> b!7271429 m!7957290))

(assert (=> d!2262624 d!2262908))

(declare-fun bm!663270 () Bool)

(declare-fun call!663280 () List!70913)

(declare-fun call!663278 () List!70913)

(assert (=> bm!663270 (= call!663280 call!663278)))

(declare-fun c!1353660 () Bool)

(declare-fun call!663277 () (InoxSet Context!15478))

(declare-fun c!1353659 () Bool)

(declare-fun c!1353658 () Bool)

(declare-fun bm!663271 () Bool)

(assert (=> bm!663271 (= call!663277 (derivationStepZipperDown!2733 (ite c!1353659 (regTwo!38111 (h!77237 (exprs!8239 lt!2594922))) (ite c!1353658 (regTwo!38110 (h!77237 (exprs!8239 lt!2594922))) (ite c!1353660 (regOne!38110 (h!77237 (exprs!8239 lt!2594922))) (reg!19128 (h!77237 (exprs!8239 lt!2594922)))))) (ite (or c!1353659 c!1353658) (Context!15479 (t!384983 (exprs!8239 lt!2594922))) (Context!15479 call!663280)) (h!77238 s!7854)))))

(declare-fun bm!663272 () Bool)

(declare-fun call!663275 () (InoxSet Context!15478))

(assert (=> bm!663272 (= call!663275 call!663277)))

(declare-fun b!7271431 () Bool)

(declare-fun c!1353662 () Bool)

(assert (=> b!7271431 (= c!1353662 ((_ is Star!18799) (h!77237 (exprs!8239 lt!2594922))))))

(declare-fun e!4360429 () (InoxSet Context!15478))

(declare-fun e!4360426 () (InoxSet Context!15478))

(assert (=> b!7271431 (= e!4360429 e!4360426)))

(declare-fun bm!663273 () Bool)

(assert (=> bm!663273 (= call!663278 ($colon$colon!2973 (exprs!8239 (Context!15479 (t!384983 (exprs!8239 lt!2594922)))) (ite (or c!1353658 c!1353660) (regTwo!38110 (h!77237 (exprs!8239 lt!2594922))) (h!77237 (exprs!8239 lt!2594922)))))))

(declare-fun b!7271432 () Bool)

(declare-fun e!4360428 () (InoxSet Context!15478))

(assert (=> b!7271432 (= e!4360428 e!4360429)))

(assert (=> b!7271432 (= c!1353660 ((_ is Concat!27644) (h!77237 (exprs!8239 lt!2594922))))))

(declare-fun bm!663274 () Bool)

(declare-fun call!663276 () (InoxSet Context!15478))

(assert (=> bm!663274 (= call!663276 call!663275)))

(declare-fun b!7271433 () Bool)

(declare-fun e!4360427 () (InoxSet Context!15478))

(declare-fun call!663279 () (InoxSet Context!15478))

(assert (=> b!7271433 (= e!4360427 ((_ map or) call!663279 call!663277))))

(declare-fun bm!663275 () Bool)

(assert (=> bm!663275 (= call!663279 (derivationStepZipperDown!2733 (ite c!1353659 (regOne!38111 (h!77237 (exprs!8239 lt!2594922))) (regOne!38110 (h!77237 (exprs!8239 lt!2594922)))) (ite c!1353659 (Context!15479 (t!384983 (exprs!8239 lt!2594922))) (Context!15479 call!663278)) (h!77238 s!7854)))))

(declare-fun b!7271434 () Bool)

(declare-fun e!4360430 () Bool)

(assert (=> b!7271434 (= c!1353658 e!4360430)))

(declare-fun res!2947671 () Bool)

(assert (=> b!7271434 (=> (not res!2947671) (not e!4360430))))

(assert (=> b!7271434 (= res!2947671 ((_ is Concat!27644) (h!77237 (exprs!8239 lt!2594922))))))

(assert (=> b!7271434 (= e!4360427 e!4360428)))

(declare-fun b!7271435 () Bool)

(assert (=> b!7271435 (= e!4360426 call!663276)))

(declare-fun b!7271436 () Bool)

(assert (=> b!7271436 (= e!4360426 ((as const (Array Context!15478 Bool)) false))))

(declare-fun b!7271430 () Bool)

(declare-fun e!4360425 () (InoxSet Context!15478))

(assert (=> b!7271430 (= e!4360425 (store ((as const (Array Context!15478 Bool)) false) (Context!15479 (t!384983 (exprs!8239 lt!2594922))) true))))

(declare-fun d!2262910 () Bool)

(declare-fun c!1353661 () Bool)

(assert (=> d!2262910 (= c!1353661 (and ((_ is ElementMatch!18799) (h!77237 (exprs!8239 lt!2594922))) (= (c!1353435 (h!77237 (exprs!8239 lt!2594922))) (h!77238 s!7854))))))

(assert (=> d!2262910 (= (derivationStepZipperDown!2733 (h!77237 (exprs!8239 lt!2594922)) (Context!15479 (t!384983 (exprs!8239 lt!2594922))) (h!77238 s!7854)) e!4360425)))

(declare-fun b!7271437 () Bool)

(assert (=> b!7271437 (= e!4360429 call!663276)))

(declare-fun b!7271438 () Bool)

(assert (=> b!7271438 (= e!4360430 (nullable!7999 (regOne!38110 (h!77237 (exprs!8239 lt!2594922)))))))

(declare-fun b!7271439 () Bool)

(assert (=> b!7271439 (= e!4360425 e!4360427)))

(assert (=> b!7271439 (= c!1353659 ((_ is Union!18799) (h!77237 (exprs!8239 lt!2594922))))))

(declare-fun b!7271440 () Bool)

(assert (=> b!7271440 (= e!4360428 ((_ map or) call!663279 call!663275))))

(assert (= (and d!2262910 c!1353661) b!7271430))

(assert (= (and d!2262910 (not c!1353661)) b!7271439))

(assert (= (and b!7271439 c!1353659) b!7271433))

(assert (= (and b!7271439 (not c!1353659)) b!7271434))

(assert (= (and b!7271434 res!2947671) b!7271438))

(assert (= (and b!7271434 c!1353658) b!7271440))

(assert (= (and b!7271434 (not c!1353658)) b!7271432))

(assert (= (and b!7271432 c!1353660) b!7271437))

(assert (= (and b!7271432 (not c!1353660)) b!7271431))

(assert (= (and b!7271431 c!1353662) b!7271435))

(assert (= (and b!7271431 (not c!1353662)) b!7271436))

(assert (= (or b!7271437 b!7271435) bm!663270))

(assert (= (or b!7271437 b!7271435) bm!663274))

(assert (= (or b!7271440 bm!663270) bm!663273))

(assert (= (or b!7271440 bm!663274) bm!663272))

(assert (= (or b!7271433 b!7271440) bm!663275))

(assert (= (or b!7271433 bm!663272) bm!663271))

(declare-fun m!7957292 () Bool)

(assert (=> b!7271438 m!7957292))

(declare-fun m!7957294 () Bool)

(assert (=> b!7271430 m!7957294))

(declare-fun m!7957296 () Bool)

(assert (=> bm!663275 m!7957296))

(declare-fun m!7957298 () Bool)

(assert (=> bm!663273 m!7957298))

(declare-fun m!7957300 () Bool)

(assert (=> bm!663271 m!7957300))

(assert (=> bm!663174 d!2262910))

(declare-fun d!2262912 () Bool)

(assert (=> d!2262912 (= (isEmpty!40715 (t!384984 s!7854)) ((_ is Nil!70790) (t!384984 s!7854)))))

(assert (=> d!2262648 d!2262912))

(assert (=> b!7270983 d!2262876))

(declare-fun d!2262914 () Bool)

(declare-fun lt!2595013 () Int)

(assert (=> d!2262914 (>= lt!2595013 0)))

(declare-fun e!4360431 () Int)

(assert (=> d!2262914 (= lt!2595013 e!4360431)))

(declare-fun c!1353663 () Bool)

(assert (=> d!2262914 (= c!1353663 ((_ is Nil!70789) lt!2594979))))

(assert (=> d!2262914 (= (size!41825 lt!2594979) lt!2595013)))

(declare-fun b!7271441 () Bool)

(assert (=> b!7271441 (= e!4360431 0)))

(declare-fun b!7271442 () Bool)

(assert (=> b!7271442 (= e!4360431 (+ 1 (size!41825 (t!384983 lt!2594979))))))

(assert (= (and d!2262914 c!1353663) b!7271441))

(assert (= (and d!2262914 (not c!1353663)) b!7271442))

(declare-fun m!7957302 () Bool)

(assert (=> b!7271442 m!7957302))

(assert (=> b!7270988 d!2262914))

(declare-fun d!2262916 () Bool)

(declare-fun lt!2595014 () Int)

(assert (=> d!2262916 (>= lt!2595014 0)))

(declare-fun e!4360432 () Int)

(assert (=> d!2262916 (= lt!2595014 e!4360432)))

(declare-fun c!1353664 () Bool)

(assert (=> d!2262916 (= c!1353664 ((_ is Nil!70789) lt!2594939))))

(assert (=> d!2262916 (= (size!41825 lt!2594939) lt!2595014)))

(declare-fun b!7271443 () Bool)

(assert (=> b!7271443 (= e!4360432 0)))

(declare-fun b!7271444 () Bool)

(assert (=> b!7271444 (= e!4360432 (+ 1 (size!41825 (t!384983 lt!2594939))))))

(assert (= (and d!2262916 c!1353664) b!7271443))

(assert (= (and d!2262916 (not c!1353664)) b!7271444))

(assert (=> b!7271444 m!7957170))

(assert (=> b!7270988 d!2262916))

(assert (=> b!7270988 d!2262854))

(declare-fun d!2262918 () Bool)

(declare-fun c!1353665 () Bool)

(assert (=> d!2262918 (= c!1353665 (isEmpty!40715 (tail!14502 s!7854)))))

(declare-fun e!4360433 () Bool)

(assert (=> d!2262918 (= (matchZipper!3703 (derivationStepZipper!3539 (store ((as const (Array Context!15478 Bool)) false) ct2!346 true) (head!15003 s!7854)) (tail!14502 s!7854)) e!4360433)))

(declare-fun b!7271445 () Bool)

(assert (=> b!7271445 (= e!4360433 (nullableZipper!3005 (derivationStepZipper!3539 (store ((as const (Array Context!15478 Bool)) false) ct2!346 true) (head!15003 s!7854))))))

(declare-fun b!7271446 () Bool)

(assert (=> b!7271446 (= e!4360433 (matchZipper!3703 (derivationStepZipper!3539 (derivationStepZipper!3539 (store ((as const (Array Context!15478 Bool)) false) ct2!346 true) (head!15003 s!7854)) (head!15003 (tail!14502 s!7854))) (tail!14502 (tail!14502 s!7854))))))

(assert (= (and d!2262918 c!1353665) b!7271445))

(assert (= (and d!2262918 (not c!1353665)) b!7271446))

(assert (=> d!2262918 m!7956772))

(declare-fun m!7957304 () Bool)

(assert (=> d!2262918 m!7957304))

(assert (=> b!7271445 m!7956770))

(declare-fun m!7957306 () Bool)

(assert (=> b!7271445 m!7957306))

(assert (=> b!7271446 m!7956772))

(declare-fun m!7957308 () Bool)

(assert (=> b!7271446 m!7957308))

(assert (=> b!7271446 m!7956770))

(assert (=> b!7271446 m!7957308))

(declare-fun m!7957310 () Bool)

(assert (=> b!7271446 m!7957310))

(assert (=> b!7271446 m!7956772))

(declare-fun m!7957312 () Bool)

(assert (=> b!7271446 m!7957312))

(assert (=> b!7271446 m!7957310))

(assert (=> b!7271446 m!7957312))

(declare-fun m!7957314 () Bool)

(assert (=> b!7271446 m!7957314))

(assert (=> b!7270995 d!2262918))

(declare-fun bs!1911177 () Bool)

(declare-fun d!2262920 () Bool)

(assert (= bs!1911177 (and d!2262920 b!7270767)))

(declare-fun lambda!448704 () Int)

(assert (=> bs!1911177 (= (= (head!15003 s!7854) (h!77238 s!7854)) (= lambda!448704 lambda!448657))))

(declare-fun bs!1911178 () Bool)

(assert (= bs!1911178 (and d!2262920 d!2262602)))

(assert (=> bs!1911178 (= (= (head!15003 s!7854) (h!77238 s!7854)) (= lambda!448704 lambda!448673))))

(declare-fun bs!1911179 () Bool)

(assert (= bs!1911179 (and d!2262920 d!2262898)))

(assert (=> bs!1911179 (= (= (head!15003 s!7854) (head!15003 (t!384984 s!7854))) (= lambda!448704 lambda!448703))))

(assert (=> d!2262920 true))

(assert (=> d!2262920 (= (derivationStepZipper!3539 (store ((as const (Array Context!15478 Bool)) false) ct2!346 true) (head!15003 s!7854)) (flatMap!2912 (store ((as const (Array Context!15478 Bool)) false) ct2!346 true) lambda!448704))))

(declare-fun bs!1911180 () Bool)

(assert (= bs!1911180 d!2262920))

(assert (=> bs!1911180 m!7956478))

(declare-fun m!7957316 () Bool)

(assert (=> bs!1911180 m!7957316))

(assert (=> b!7270995 d!2262920))

(declare-fun d!2262922 () Bool)

(assert (=> d!2262922 (= (head!15003 s!7854) (h!77238 s!7854))))

(assert (=> b!7270995 d!2262922))

(declare-fun d!2262924 () Bool)

(assert (=> d!2262924 (= (tail!14502 s!7854) (t!384984 s!7854))))

(assert (=> b!7270995 d!2262924))

(assert (=> bs!1911107 d!2262564))

(declare-fun b!7271448 () Bool)

(declare-fun e!4360434 () List!70913)

(assert (=> b!7271448 (= e!4360434 (Cons!70789 (h!77237 (t!384983 (exprs!8239 ct1!250))) (++!16699 (t!384983 (t!384983 (exprs!8239 ct1!250))) (exprs!8239 ct2!346))))))

(declare-fun b!7271449 () Bool)

(declare-fun res!2947672 () Bool)

(declare-fun e!4360435 () Bool)

(assert (=> b!7271449 (=> (not res!2947672) (not e!4360435))))

(declare-fun lt!2595015 () List!70913)

(assert (=> b!7271449 (= res!2947672 (= (size!41825 lt!2595015) (+ (size!41825 (t!384983 (exprs!8239 ct1!250))) (size!41825 (exprs!8239 ct2!346)))))))

(declare-fun b!7271450 () Bool)

(assert (=> b!7271450 (= e!4360435 (or (not (= (exprs!8239 ct2!346) Nil!70789)) (= lt!2595015 (t!384983 (exprs!8239 ct1!250)))))))

(declare-fun b!7271447 () Bool)

(assert (=> b!7271447 (= e!4360434 (exprs!8239 ct2!346))))

(declare-fun d!2262926 () Bool)

(assert (=> d!2262926 e!4360435))

(declare-fun res!2947673 () Bool)

(assert (=> d!2262926 (=> (not res!2947673) (not e!4360435))))

(assert (=> d!2262926 (= res!2947673 (= (content!14777 lt!2595015) ((_ map or) (content!14777 (t!384983 (exprs!8239 ct1!250))) (content!14777 (exprs!8239 ct2!346)))))))

(assert (=> d!2262926 (= lt!2595015 e!4360434)))

(declare-fun c!1353666 () Bool)

(assert (=> d!2262926 (= c!1353666 ((_ is Nil!70789) (t!384983 (exprs!8239 ct1!250))))))

(assert (=> d!2262926 (= (++!16699 (t!384983 (exprs!8239 ct1!250)) (exprs!8239 ct2!346)) lt!2595015)))

(assert (= (and d!2262926 c!1353666) b!7271447))

(assert (= (and d!2262926 (not c!1353666)) b!7271448))

(assert (= (and d!2262926 res!2947673) b!7271449))

(assert (= (and b!7271449 res!2947672) b!7271450))

(declare-fun m!7957318 () Bool)

(assert (=> b!7271448 m!7957318))

(declare-fun m!7957320 () Bool)

(assert (=> b!7271449 m!7957320))

(assert (=> b!7271449 m!7957186))

(assert (=> b!7271449 m!7956726))

(declare-fun m!7957322 () Bool)

(assert (=> d!2262926 m!7957322))

(declare-fun m!7957324 () Bool)

(assert (=> d!2262926 m!7957324))

(assert (=> d!2262926 m!7956732))

(assert (=> b!7270945 d!2262926))

(declare-fun bm!663276 () Bool)

(declare-fun call!663286 () List!70913)

(declare-fun call!663284 () List!70913)

(assert (=> bm!663276 (= call!663286 call!663284)))

(declare-fun c!1353667 () Bool)

(declare-fun call!663283 () (InoxSet Context!15478))

(declare-fun bm!663277 () Bool)

(declare-fun c!1353668 () Bool)

(declare-fun c!1353669 () Bool)

(assert (=> bm!663277 (= call!663283 (derivationStepZipperDown!2733 (ite c!1353668 (regTwo!38111 (ite c!1353528 (regTwo!38111 (h!77237 (exprs!8239 ct1!250))) (ite c!1353527 (regTwo!38110 (h!77237 (exprs!8239 ct1!250))) (ite c!1353529 (regOne!38110 (h!77237 (exprs!8239 ct1!250))) (reg!19128 (h!77237 (exprs!8239 ct1!250))))))) (ite c!1353667 (regTwo!38110 (ite c!1353528 (regTwo!38111 (h!77237 (exprs!8239 ct1!250))) (ite c!1353527 (regTwo!38110 (h!77237 (exprs!8239 ct1!250))) (ite c!1353529 (regOne!38110 (h!77237 (exprs!8239 ct1!250))) (reg!19128 (h!77237 (exprs!8239 ct1!250))))))) (ite c!1353669 (regOne!38110 (ite c!1353528 (regTwo!38111 (h!77237 (exprs!8239 ct1!250))) (ite c!1353527 (regTwo!38110 (h!77237 (exprs!8239 ct1!250))) (ite c!1353529 (regOne!38110 (h!77237 (exprs!8239 ct1!250))) (reg!19128 (h!77237 (exprs!8239 ct1!250))))))) (reg!19128 (ite c!1353528 (regTwo!38111 (h!77237 (exprs!8239 ct1!250))) (ite c!1353527 (regTwo!38110 (h!77237 (exprs!8239 ct1!250))) (ite c!1353529 (regOne!38110 (h!77237 (exprs!8239 ct1!250))) (reg!19128 (h!77237 (exprs!8239 ct1!250)))))))))) (ite (or c!1353668 c!1353667) (ite (or c!1353528 c!1353527) lt!2594922 (Context!15479 call!663178)) (Context!15479 call!663286)) (h!77238 s!7854)))))

(declare-fun bm!663278 () Bool)

(declare-fun call!663281 () (InoxSet Context!15478))

(assert (=> bm!663278 (= call!663281 call!663283)))

(declare-fun b!7271452 () Bool)

(declare-fun c!1353671 () Bool)

(assert (=> b!7271452 (= c!1353671 ((_ is Star!18799) (ite c!1353528 (regTwo!38111 (h!77237 (exprs!8239 ct1!250))) (ite c!1353527 (regTwo!38110 (h!77237 (exprs!8239 ct1!250))) (ite c!1353529 (regOne!38110 (h!77237 (exprs!8239 ct1!250))) (reg!19128 (h!77237 (exprs!8239 ct1!250))))))))))

(declare-fun e!4360440 () (InoxSet Context!15478))

(declare-fun e!4360437 () (InoxSet Context!15478))

(assert (=> b!7271452 (= e!4360440 e!4360437)))

(declare-fun bm!663279 () Bool)

(assert (=> bm!663279 (= call!663284 ($colon$colon!2973 (exprs!8239 (ite (or c!1353528 c!1353527) lt!2594922 (Context!15479 call!663178))) (ite (or c!1353667 c!1353669) (regTwo!38110 (ite c!1353528 (regTwo!38111 (h!77237 (exprs!8239 ct1!250))) (ite c!1353527 (regTwo!38110 (h!77237 (exprs!8239 ct1!250))) (ite c!1353529 (regOne!38110 (h!77237 (exprs!8239 ct1!250))) (reg!19128 (h!77237 (exprs!8239 ct1!250))))))) (ite c!1353528 (regTwo!38111 (h!77237 (exprs!8239 ct1!250))) (ite c!1353527 (regTwo!38110 (h!77237 (exprs!8239 ct1!250))) (ite c!1353529 (regOne!38110 (h!77237 (exprs!8239 ct1!250))) (reg!19128 (h!77237 (exprs!8239 ct1!250)))))))))))

(declare-fun b!7271453 () Bool)

(declare-fun e!4360439 () (InoxSet Context!15478))

(assert (=> b!7271453 (= e!4360439 e!4360440)))

(assert (=> b!7271453 (= c!1353669 ((_ is Concat!27644) (ite c!1353528 (regTwo!38111 (h!77237 (exprs!8239 ct1!250))) (ite c!1353527 (regTwo!38110 (h!77237 (exprs!8239 ct1!250))) (ite c!1353529 (regOne!38110 (h!77237 (exprs!8239 ct1!250))) (reg!19128 (h!77237 (exprs!8239 ct1!250))))))))))

(declare-fun bm!663280 () Bool)

(declare-fun call!663282 () (InoxSet Context!15478))

(assert (=> bm!663280 (= call!663282 call!663281)))

(declare-fun b!7271454 () Bool)

(declare-fun e!4360438 () (InoxSet Context!15478))

(declare-fun call!663285 () (InoxSet Context!15478))

(assert (=> b!7271454 (= e!4360438 ((_ map or) call!663285 call!663283))))

(declare-fun bm!663281 () Bool)

(assert (=> bm!663281 (= call!663285 (derivationStepZipperDown!2733 (ite c!1353668 (regOne!38111 (ite c!1353528 (regTwo!38111 (h!77237 (exprs!8239 ct1!250))) (ite c!1353527 (regTwo!38110 (h!77237 (exprs!8239 ct1!250))) (ite c!1353529 (regOne!38110 (h!77237 (exprs!8239 ct1!250))) (reg!19128 (h!77237 (exprs!8239 ct1!250))))))) (regOne!38110 (ite c!1353528 (regTwo!38111 (h!77237 (exprs!8239 ct1!250))) (ite c!1353527 (regTwo!38110 (h!77237 (exprs!8239 ct1!250))) (ite c!1353529 (regOne!38110 (h!77237 (exprs!8239 ct1!250))) (reg!19128 (h!77237 (exprs!8239 ct1!250)))))))) (ite c!1353668 (ite (or c!1353528 c!1353527) lt!2594922 (Context!15479 call!663178)) (Context!15479 call!663284)) (h!77238 s!7854)))))

(declare-fun b!7271455 () Bool)

(declare-fun e!4360441 () Bool)

(assert (=> b!7271455 (= c!1353667 e!4360441)))

(declare-fun res!2947674 () Bool)

(assert (=> b!7271455 (=> (not res!2947674) (not e!4360441))))

(assert (=> b!7271455 (= res!2947674 ((_ is Concat!27644) (ite c!1353528 (regTwo!38111 (h!77237 (exprs!8239 ct1!250))) (ite c!1353527 (regTwo!38110 (h!77237 (exprs!8239 ct1!250))) (ite c!1353529 (regOne!38110 (h!77237 (exprs!8239 ct1!250))) (reg!19128 (h!77237 (exprs!8239 ct1!250))))))))))

(assert (=> b!7271455 (= e!4360438 e!4360439)))

(declare-fun b!7271456 () Bool)

(assert (=> b!7271456 (= e!4360437 call!663282)))

(declare-fun b!7271457 () Bool)

(assert (=> b!7271457 (= e!4360437 ((as const (Array Context!15478 Bool)) false))))

(declare-fun e!4360436 () (InoxSet Context!15478))

(declare-fun b!7271451 () Bool)

(assert (=> b!7271451 (= e!4360436 (store ((as const (Array Context!15478 Bool)) false) (ite (or c!1353528 c!1353527) lt!2594922 (Context!15479 call!663178)) true))))

(declare-fun c!1353670 () Bool)

(declare-fun d!2262928 () Bool)

(assert (=> d!2262928 (= c!1353670 (and ((_ is ElementMatch!18799) (ite c!1353528 (regTwo!38111 (h!77237 (exprs!8239 ct1!250))) (ite c!1353527 (regTwo!38110 (h!77237 (exprs!8239 ct1!250))) (ite c!1353529 (regOne!38110 (h!77237 (exprs!8239 ct1!250))) (reg!19128 (h!77237 (exprs!8239 ct1!250))))))) (= (c!1353435 (ite c!1353528 (regTwo!38111 (h!77237 (exprs!8239 ct1!250))) (ite c!1353527 (regTwo!38110 (h!77237 (exprs!8239 ct1!250))) (ite c!1353529 (regOne!38110 (h!77237 (exprs!8239 ct1!250))) (reg!19128 (h!77237 (exprs!8239 ct1!250))))))) (h!77238 s!7854))))))

(assert (=> d!2262928 (= (derivationStepZipperDown!2733 (ite c!1353528 (regTwo!38111 (h!77237 (exprs!8239 ct1!250))) (ite c!1353527 (regTwo!38110 (h!77237 (exprs!8239 ct1!250))) (ite c!1353529 (regOne!38110 (h!77237 (exprs!8239 ct1!250))) (reg!19128 (h!77237 (exprs!8239 ct1!250)))))) (ite (or c!1353528 c!1353527) lt!2594922 (Context!15479 call!663178)) (h!77238 s!7854)) e!4360436)))

(declare-fun b!7271458 () Bool)

(assert (=> b!7271458 (= e!4360440 call!663282)))

(declare-fun b!7271459 () Bool)

(assert (=> b!7271459 (= e!4360441 (nullable!7999 (regOne!38110 (ite c!1353528 (regTwo!38111 (h!77237 (exprs!8239 ct1!250))) (ite c!1353527 (regTwo!38110 (h!77237 (exprs!8239 ct1!250))) (ite c!1353529 (regOne!38110 (h!77237 (exprs!8239 ct1!250))) (reg!19128 (h!77237 (exprs!8239 ct1!250)))))))))))

(declare-fun b!7271460 () Bool)

(assert (=> b!7271460 (= e!4360436 e!4360438)))

(assert (=> b!7271460 (= c!1353668 ((_ is Union!18799) (ite c!1353528 (regTwo!38111 (h!77237 (exprs!8239 ct1!250))) (ite c!1353527 (regTwo!38110 (h!77237 (exprs!8239 ct1!250))) (ite c!1353529 (regOne!38110 (h!77237 (exprs!8239 ct1!250))) (reg!19128 (h!77237 (exprs!8239 ct1!250))))))))))

(declare-fun b!7271461 () Bool)

(assert (=> b!7271461 (= e!4360439 ((_ map or) call!663285 call!663281))))

(assert (= (and d!2262928 c!1353670) b!7271451))

(assert (= (and d!2262928 (not c!1353670)) b!7271460))

(assert (= (and b!7271460 c!1353668) b!7271454))

(assert (= (and b!7271460 (not c!1353668)) b!7271455))

(assert (= (and b!7271455 res!2947674) b!7271459))

(assert (= (and b!7271455 c!1353667) b!7271461))

(assert (= (and b!7271455 (not c!1353667)) b!7271453))

(assert (= (and b!7271453 c!1353669) b!7271458))

(assert (= (and b!7271453 (not c!1353669)) b!7271452))

(assert (= (and b!7271452 c!1353671) b!7271456))

(assert (= (and b!7271452 (not c!1353671)) b!7271457))

(assert (= (or b!7271458 b!7271456) bm!663276))

(assert (= (or b!7271458 b!7271456) bm!663280))

(assert (= (or b!7271461 bm!663276) bm!663279))

(assert (= (or b!7271461 bm!663280) bm!663278))

(assert (= (or b!7271454 b!7271461) bm!663281))

(assert (= (or b!7271454 bm!663278) bm!663277))

(declare-fun m!7957326 () Bool)

(assert (=> b!7271459 m!7957326))

(declare-fun m!7957328 () Bool)

(assert (=> b!7271451 m!7957328))

(declare-fun m!7957330 () Bool)

(assert (=> bm!663281 m!7957330))

(declare-fun m!7957332 () Bool)

(assert (=> bm!663279 m!7957332))

(declare-fun m!7957334 () Bool)

(assert (=> bm!663277 m!7957334))

(assert (=> bm!663169 d!2262928))

(declare-fun bm!663282 () Bool)

(declare-fun call!663292 () List!70913)

(declare-fun call!663290 () List!70913)

(assert (=> bm!663282 (= call!663292 call!663290)))

(declare-fun c!1353673 () Bool)

(declare-fun c!1353672 () Bool)

(declare-fun bm!663283 () Bool)

(declare-fun c!1353674 () Bool)

(declare-fun call!663289 () (InoxSet Context!15478))

(assert (=> bm!663283 (= call!663289 (derivationStepZipperDown!2733 (ite c!1353673 (regTwo!38111 (ite c!1353528 (regOne!38111 (h!77237 (exprs!8239 ct1!250))) (regOne!38110 (h!77237 (exprs!8239 ct1!250))))) (ite c!1353672 (regTwo!38110 (ite c!1353528 (regOne!38111 (h!77237 (exprs!8239 ct1!250))) (regOne!38110 (h!77237 (exprs!8239 ct1!250))))) (ite c!1353674 (regOne!38110 (ite c!1353528 (regOne!38111 (h!77237 (exprs!8239 ct1!250))) (regOne!38110 (h!77237 (exprs!8239 ct1!250))))) (reg!19128 (ite c!1353528 (regOne!38111 (h!77237 (exprs!8239 ct1!250))) (regOne!38110 (h!77237 (exprs!8239 ct1!250)))))))) (ite (or c!1353673 c!1353672) (ite c!1353528 lt!2594922 (Context!15479 call!663176)) (Context!15479 call!663292)) (h!77238 s!7854)))))

(declare-fun bm!663284 () Bool)

(declare-fun call!663287 () (InoxSet Context!15478))

(assert (=> bm!663284 (= call!663287 call!663289)))

(declare-fun b!7271463 () Bool)

(declare-fun c!1353676 () Bool)

(assert (=> b!7271463 (= c!1353676 ((_ is Star!18799) (ite c!1353528 (regOne!38111 (h!77237 (exprs!8239 ct1!250))) (regOne!38110 (h!77237 (exprs!8239 ct1!250))))))))

(declare-fun e!4360446 () (InoxSet Context!15478))

(declare-fun e!4360443 () (InoxSet Context!15478))

(assert (=> b!7271463 (= e!4360446 e!4360443)))

(declare-fun bm!663285 () Bool)

(assert (=> bm!663285 (= call!663290 ($colon$colon!2973 (exprs!8239 (ite c!1353528 lt!2594922 (Context!15479 call!663176))) (ite (or c!1353672 c!1353674) (regTwo!38110 (ite c!1353528 (regOne!38111 (h!77237 (exprs!8239 ct1!250))) (regOne!38110 (h!77237 (exprs!8239 ct1!250))))) (ite c!1353528 (regOne!38111 (h!77237 (exprs!8239 ct1!250))) (regOne!38110 (h!77237 (exprs!8239 ct1!250)))))))))

(declare-fun b!7271464 () Bool)

(declare-fun e!4360445 () (InoxSet Context!15478))

(assert (=> b!7271464 (= e!4360445 e!4360446)))

(assert (=> b!7271464 (= c!1353674 ((_ is Concat!27644) (ite c!1353528 (regOne!38111 (h!77237 (exprs!8239 ct1!250))) (regOne!38110 (h!77237 (exprs!8239 ct1!250))))))))

(declare-fun bm!663286 () Bool)

(declare-fun call!663288 () (InoxSet Context!15478))

(assert (=> bm!663286 (= call!663288 call!663287)))

(declare-fun b!7271465 () Bool)

(declare-fun e!4360444 () (InoxSet Context!15478))

(declare-fun call!663291 () (InoxSet Context!15478))

(assert (=> b!7271465 (= e!4360444 ((_ map or) call!663291 call!663289))))

(declare-fun bm!663287 () Bool)

(assert (=> bm!663287 (= call!663291 (derivationStepZipperDown!2733 (ite c!1353673 (regOne!38111 (ite c!1353528 (regOne!38111 (h!77237 (exprs!8239 ct1!250))) (regOne!38110 (h!77237 (exprs!8239 ct1!250))))) (regOne!38110 (ite c!1353528 (regOne!38111 (h!77237 (exprs!8239 ct1!250))) (regOne!38110 (h!77237 (exprs!8239 ct1!250)))))) (ite c!1353673 (ite c!1353528 lt!2594922 (Context!15479 call!663176)) (Context!15479 call!663290)) (h!77238 s!7854)))))

(declare-fun b!7271466 () Bool)

(declare-fun e!4360447 () Bool)

(assert (=> b!7271466 (= c!1353672 e!4360447)))

(declare-fun res!2947675 () Bool)

(assert (=> b!7271466 (=> (not res!2947675) (not e!4360447))))

(assert (=> b!7271466 (= res!2947675 ((_ is Concat!27644) (ite c!1353528 (regOne!38111 (h!77237 (exprs!8239 ct1!250))) (regOne!38110 (h!77237 (exprs!8239 ct1!250))))))))

(assert (=> b!7271466 (= e!4360444 e!4360445)))

(declare-fun b!7271467 () Bool)

(assert (=> b!7271467 (= e!4360443 call!663288)))

(declare-fun b!7271468 () Bool)

(assert (=> b!7271468 (= e!4360443 ((as const (Array Context!15478 Bool)) false))))

(declare-fun e!4360442 () (InoxSet Context!15478))

(declare-fun b!7271462 () Bool)

(assert (=> b!7271462 (= e!4360442 (store ((as const (Array Context!15478 Bool)) false) (ite c!1353528 lt!2594922 (Context!15479 call!663176)) true))))

(declare-fun c!1353675 () Bool)

(declare-fun d!2262930 () Bool)

(assert (=> d!2262930 (= c!1353675 (and ((_ is ElementMatch!18799) (ite c!1353528 (regOne!38111 (h!77237 (exprs!8239 ct1!250))) (regOne!38110 (h!77237 (exprs!8239 ct1!250))))) (= (c!1353435 (ite c!1353528 (regOne!38111 (h!77237 (exprs!8239 ct1!250))) (regOne!38110 (h!77237 (exprs!8239 ct1!250))))) (h!77238 s!7854))))))

(assert (=> d!2262930 (= (derivationStepZipperDown!2733 (ite c!1353528 (regOne!38111 (h!77237 (exprs!8239 ct1!250))) (regOne!38110 (h!77237 (exprs!8239 ct1!250)))) (ite c!1353528 lt!2594922 (Context!15479 call!663176)) (h!77238 s!7854)) e!4360442)))

(declare-fun b!7271469 () Bool)

(assert (=> b!7271469 (= e!4360446 call!663288)))

(declare-fun b!7271470 () Bool)

(assert (=> b!7271470 (= e!4360447 (nullable!7999 (regOne!38110 (ite c!1353528 (regOne!38111 (h!77237 (exprs!8239 ct1!250))) (regOne!38110 (h!77237 (exprs!8239 ct1!250)))))))))

(declare-fun b!7271471 () Bool)

(assert (=> b!7271471 (= e!4360442 e!4360444)))

(assert (=> b!7271471 (= c!1353673 ((_ is Union!18799) (ite c!1353528 (regOne!38111 (h!77237 (exprs!8239 ct1!250))) (regOne!38110 (h!77237 (exprs!8239 ct1!250))))))))

(declare-fun b!7271472 () Bool)

(assert (=> b!7271472 (= e!4360445 ((_ map or) call!663291 call!663287))))

(assert (= (and d!2262930 c!1353675) b!7271462))

(assert (= (and d!2262930 (not c!1353675)) b!7271471))

(assert (= (and b!7271471 c!1353673) b!7271465))

(assert (= (and b!7271471 (not c!1353673)) b!7271466))

(assert (= (and b!7271466 res!2947675) b!7271470))

(assert (= (and b!7271466 c!1353672) b!7271472))

(assert (= (and b!7271466 (not c!1353672)) b!7271464))

(assert (= (and b!7271464 c!1353674) b!7271469))

(assert (= (and b!7271464 (not c!1353674)) b!7271463))

(assert (= (and b!7271463 c!1353676) b!7271467))

(assert (= (and b!7271463 (not c!1353676)) b!7271468))

(assert (= (or b!7271469 b!7271467) bm!663282))

(assert (= (or b!7271469 b!7271467) bm!663286))

(assert (= (or b!7271472 bm!663282) bm!663285))

(assert (= (or b!7271472 bm!663286) bm!663284))

(assert (= (or b!7271465 b!7271472) bm!663287))

(assert (= (or b!7271465 bm!663284) bm!663283))

(declare-fun m!7957336 () Bool)

(assert (=> b!7271470 m!7957336))

(declare-fun m!7957338 () Bool)

(assert (=> b!7271462 m!7957338))

(declare-fun m!7957340 () Bool)

(assert (=> bm!663287 m!7957340))

(declare-fun m!7957342 () Bool)

(assert (=> bm!663285 m!7957342))

(declare-fun m!7957344 () Bool)

(assert (=> bm!663283 m!7957344))

(assert (=> bm!663173 d!2262930))

(declare-fun d!2262932 () Bool)

(declare-fun c!1353677 () Bool)

(assert (=> d!2262932 (= c!1353677 (isEmpty!40715 (tail!14502 s!7854)))))

(declare-fun e!4360448 () Bool)

(assert (=> d!2262932 (= (matchZipper!3703 (derivationStepZipper!3539 lt!2594923 (head!15003 s!7854)) (tail!14502 s!7854)) e!4360448)))

(declare-fun b!7271473 () Bool)

(assert (=> b!7271473 (= e!4360448 (nullableZipper!3005 (derivationStepZipper!3539 lt!2594923 (head!15003 s!7854))))))

(declare-fun b!7271474 () Bool)

(assert (=> b!7271474 (= e!4360448 (matchZipper!3703 (derivationStepZipper!3539 (derivationStepZipper!3539 lt!2594923 (head!15003 s!7854)) (head!15003 (tail!14502 s!7854))) (tail!14502 (tail!14502 s!7854))))))

(assert (= (and d!2262932 c!1353677) b!7271473))

(assert (= (and d!2262932 (not c!1353677)) b!7271474))

(assert (=> d!2262932 m!7956772))

(assert (=> d!2262932 m!7957304))

(assert (=> b!7271473 m!7956806))

(declare-fun m!7957346 () Bool)

(assert (=> b!7271473 m!7957346))

(assert (=> b!7271474 m!7956772))

(assert (=> b!7271474 m!7957308))

(assert (=> b!7271474 m!7956806))

(assert (=> b!7271474 m!7957308))

(declare-fun m!7957348 () Bool)

(assert (=> b!7271474 m!7957348))

(assert (=> b!7271474 m!7956772))

(assert (=> b!7271474 m!7957312))

(assert (=> b!7271474 m!7957348))

(assert (=> b!7271474 m!7957312))

(declare-fun m!7957350 () Bool)

(assert (=> b!7271474 m!7957350))

(assert (=> b!7271040 d!2262932))

(declare-fun bs!1911181 () Bool)

(declare-fun d!2262934 () Bool)

(assert (= bs!1911181 (and d!2262934 b!7270767)))

(declare-fun lambda!448705 () Int)

(assert (=> bs!1911181 (= (= (head!15003 s!7854) (h!77238 s!7854)) (= lambda!448705 lambda!448657))))

(declare-fun bs!1911182 () Bool)

(assert (= bs!1911182 (and d!2262934 d!2262602)))

(assert (=> bs!1911182 (= (= (head!15003 s!7854) (h!77238 s!7854)) (= lambda!448705 lambda!448673))))

(declare-fun bs!1911183 () Bool)

(assert (= bs!1911183 (and d!2262934 d!2262898)))

(assert (=> bs!1911183 (= (= (head!15003 s!7854) (head!15003 (t!384984 s!7854))) (= lambda!448705 lambda!448703))))

(declare-fun bs!1911184 () Bool)

(assert (= bs!1911184 (and d!2262934 d!2262920)))

(assert (=> bs!1911184 (= lambda!448705 lambda!448704)))

(assert (=> d!2262934 true))

(assert (=> d!2262934 (= (derivationStepZipper!3539 lt!2594923 (head!15003 s!7854)) (flatMap!2912 lt!2594923 lambda!448705))))

(declare-fun bs!1911185 () Bool)

(assert (= bs!1911185 d!2262934))

(declare-fun m!7957352 () Bool)

(assert (=> bs!1911185 m!7957352))

(assert (=> b!7271040 d!2262934))

(assert (=> b!7271040 d!2262922))

(assert (=> b!7271040 d!2262924))

(assert (=> d!2262628 d!2262840))

(declare-fun bm!663288 () Bool)

(declare-fun call!663298 () List!70913)

(declare-fun call!663296 () List!70913)

(assert (=> bm!663288 (= call!663298 call!663296)))

(declare-fun c!1353678 () Bool)

(declare-fun c!1353679 () Bool)

(declare-fun call!663295 () (InoxSet Context!15478))

(declare-fun c!1353680 () Bool)

(declare-fun bm!663289 () Bool)

(assert (=> bm!663289 (= call!663295 (derivationStepZipperDown!2733 (ite c!1353679 (regTwo!38111 (h!77237 (exprs!8239 lt!2594948))) (ite c!1353678 (regTwo!38110 (h!77237 (exprs!8239 lt!2594948))) (ite c!1353680 (regOne!38110 (h!77237 (exprs!8239 lt!2594948))) (reg!19128 (h!77237 (exprs!8239 lt!2594948)))))) (ite (or c!1353679 c!1353678) (Context!15479 (t!384983 (exprs!8239 lt!2594948))) (Context!15479 call!663298)) (h!77238 s!7854)))))

(declare-fun bm!663290 () Bool)

(declare-fun call!663293 () (InoxSet Context!15478))

(assert (=> bm!663290 (= call!663293 call!663295)))

(declare-fun b!7271476 () Bool)

(declare-fun c!1353682 () Bool)

(assert (=> b!7271476 (= c!1353682 ((_ is Star!18799) (h!77237 (exprs!8239 lt!2594948))))))

(declare-fun e!4360453 () (InoxSet Context!15478))

(declare-fun e!4360450 () (InoxSet Context!15478))

(assert (=> b!7271476 (= e!4360453 e!4360450)))

(declare-fun bm!663291 () Bool)

(assert (=> bm!663291 (= call!663296 ($colon$colon!2973 (exprs!8239 (Context!15479 (t!384983 (exprs!8239 lt!2594948)))) (ite (or c!1353678 c!1353680) (regTwo!38110 (h!77237 (exprs!8239 lt!2594948))) (h!77237 (exprs!8239 lt!2594948)))))))

(declare-fun b!7271477 () Bool)

(declare-fun e!4360452 () (InoxSet Context!15478))

(assert (=> b!7271477 (= e!4360452 e!4360453)))

(assert (=> b!7271477 (= c!1353680 ((_ is Concat!27644) (h!77237 (exprs!8239 lt!2594948))))))

(declare-fun bm!663292 () Bool)

(declare-fun call!663294 () (InoxSet Context!15478))

(assert (=> bm!663292 (= call!663294 call!663293)))

(declare-fun b!7271478 () Bool)

(declare-fun e!4360451 () (InoxSet Context!15478))

(declare-fun call!663297 () (InoxSet Context!15478))

(assert (=> b!7271478 (= e!4360451 ((_ map or) call!663297 call!663295))))

(declare-fun bm!663293 () Bool)

(assert (=> bm!663293 (= call!663297 (derivationStepZipperDown!2733 (ite c!1353679 (regOne!38111 (h!77237 (exprs!8239 lt!2594948))) (regOne!38110 (h!77237 (exprs!8239 lt!2594948)))) (ite c!1353679 (Context!15479 (t!384983 (exprs!8239 lt!2594948))) (Context!15479 call!663296)) (h!77238 s!7854)))))

(declare-fun b!7271479 () Bool)

(declare-fun e!4360454 () Bool)

(assert (=> b!7271479 (= c!1353678 e!4360454)))

(declare-fun res!2947676 () Bool)

(assert (=> b!7271479 (=> (not res!2947676) (not e!4360454))))

(assert (=> b!7271479 (= res!2947676 ((_ is Concat!27644) (h!77237 (exprs!8239 lt!2594948))))))

(assert (=> b!7271479 (= e!4360451 e!4360452)))

(declare-fun b!7271480 () Bool)

(assert (=> b!7271480 (= e!4360450 call!663294)))

(declare-fun b!7271481 () Bool)

(assert (=> b!7271481 (= e!4360450 ((as const (Array Context!15478 Bool)) false))))

(declare-fun b!7271475 () Bool)

(declare-fun e!4360449 () (InoxSet Context!15478))

(assert (=> b!7271475 (= e!4360449 (store ((as const (Array Context!15478 Bool)) false) (Context!15479 (t!384983 (exprs!8239 lt!2594948))) true))))

(declare-fun d!2262936 () Bool)

(declare-fun c!1353681 () Bool)

(assert (=> d!2262936 (= c!1353681 (and ((_ is ElementMatch!18799) (h!77237 (exprs!8239 lt!2594948))) (= (c!1353435 (h!77237 (exprs!8239 lt!2594948))) (h!77238 s!7854))))))

(assert (=> d!2262936 (= (derivationStepZipperDown!2733 (h!77237 (exprs!8239 lt!2594948)) (Context!15479 (t!384983 (exprs!8239 lt!2594948))) (h!77238 s!7854)) e!4360449)))

(declare-fun b!7271482 () Bool)

(assert (=> b!7271482 (= e!4360453 call!663294)))

(declare-fun b!7271483 () Bool)

(assert (=> b!7271483 (= e!4360454 (nullable!7999 (regOne!38110 (h!77237 (exprs!8239 lt!2594948)))))))

(declare-fun b!7271484 () Bool)

(assert (=> b!7271484 (= e!4360449 e!4360451)))

(assert (=> b!7271484 (= c!1353679 ((_ is Union!18799) (h!77237 (exprs!8239 lt!2594948))))))

(declare-fun b!7271485 () Bool)

(assert (=> b!7271485 (= e!4360452 ((_ map or) call!663297 call!663293))))

(assert (= (and d!2262936 c!1353681) b!7271475))

(assert (= (and d!2262936 (not c!1353681)) b!7271484))

(assert (= (and b!7271484 c!1353679) b!7271478))

(assert (= (and b!7271484 (not c!1353679)) b!7271479))

(assert (= (and b!7271479 res!2947676) b!7271483))

(assert (= (and b!7271479 c!1353678) b!7271485))

(assert (= (and b!7271479 (not c!1353678)) b!7271477))

(assert (= (and b!7271477 c!1353680) b!7271482))

(assert (= (and b!7271477 (not c!1353680)) b!7271476))

(assert (= (and b!7271476 c!1353682) b!7271480))

(assert (= (and b!7271476 (not c!1353682)) b!7271481))

(assert (= (or b!7271482 b!7271480) bm!663288))

(assert (= (or b!7271482 b!7271480) bm!663292))

(assert (= (or b!7271485 bm!663288) bm!663291))

(assert (= (or b!7271485 bm!663292) bm!663290))

(assert (= (or b!7271478 b!7271485) bm!663293))

(assert (= (or b!7271478 bm!663290) bm!663289))

(declare-fun m!7957354 () Bool)

(assert (=> b!7271483 m!7957354))

(declare-fun m!7957356 () Bool)

(assert (=> b!7271475 m!7957356))

(declare-fun m!7957358 () Bool)

(assert (=> bm!663293 m!7957358))

(declare-fun m!7957360 () Bool)

(assert (=> bm!663291 m!7957360))

(declare-fun m!7957362 () Bool)

(assert (=> bm!663289 m!7957362))

(assert (=> bm!663140 d!2262936))

(declare-fun d!2262938 () Bool)

(assert (=> d!2262938 true))

(declare-fun setRes!53645 () Bool)

(assert (=> d!2262938 setRes!53645))

(declare-fun condSetEmpty!53645 () Bool)

(declare-fun res!2947677 () (InoxSet Context!15478))

(assert (=> d!2262938 (= condSetEmpty!53645 (= res!2947677 ((as const (Array Context!15478 Bool)) false)))))

(assert (=> d!2262938 (= (choose!56411 lt!2594942 lambda!448657) res!2947677)))

(declare-fun setIsEmpty!53645 () Bool)

(assert (=> setIsEmpty!53645 setRes!53645))

(declare-fun tp!2041161 () Bool)

(declare-fun setElem!53645 () Context!15478)

(declare-fun setNonEmpty!53645 () Bool)

(declare-fun e!4360455 () Bool)

(assert (=> setNonEmpty!53645 (= setRes!53645 (and tp!2041161 (inv!90007 setElem!53645) e!4360455))))

(declare-fun setRest!53645 () (InoxSet Context!15478))

(assert (=> setNonEmpty!53645 (= res!2947677 ((_ map or) (store ((as const (Array Context!15478 Bool)) false) setElem!53645 true) setRest!53645))))

(declare-fun b!7271486 () Bool)

(declare-fun tp!2041160 () Bool)

(assert (=> b!7271486 (= e!4360455 tp!2041160)))

(assert (= (and d!2262938 condSetEmpty!53645) setIsEmpty!53645))

(assert (= (and d!2262938 (not condSetEmpty!53645)) setNonEmpty!53645))

(assert (= setNonEmpty!53645 b!7271486))

(declare-fun m!7957364 () Bool)

(assert (=> setNonEmpty!53645 m!7957364))

(assert (=> d!2262596 d!2262938))

(declare-fun b!7271487 () Bool)

(declare-fun e!4360459 () Bool)

(declare-fun call!663299 () Bool)

(assert (=> b!7271487 (= e!4360459 call!663299)))

(declare-fun c!1353683 () Bool)

(declare-fun c!1353684 () Bool)

(declare-fun bm!663294 () Bool)

(assert (=> bm!663294 (= call!663299 (validRegex!9586 (ite c!1353684 (reg!19128 (ite c!1353526 (reg!19128 (h!77237 (exprs!8239 ct1!250))) (ite c!1353525 (regOne!38111 (h!77237 (exprs!8239 ct1!250))) (regOne!38110 (h!77237 (exprs!8239 ct1!250)))))) (ite c!1353683 (regOne!38111 (ite c!1353526 (reg!19128 (h!77237 (exprs!8239 ct1!250))) (ite c!1353525 (regOne!38111 (h!77237 (exprs!8239 ct1!250))) (regOne!38110 (h!77237 (exprs!8239 ct1!250)))))) (regOne!38110 (ite c!1353526 (reg!19128 (h!77237 (exprs!8239 ct1!250))) (ite c!1353525 (regOne!38111 (h!77237 (exprs!8239 ct1!250))) (regOne!38110 (h!77237 (exprs!8239 ct1!250))))))))))))

(declare-fun b!7271488 () Bool)

(declare-fun res!2947682 () Bool)

(declare-fun e!4360457 () Bool)

(assert (=> b!7271488 (=> res!2947682 e!4360457)))

(assert (=> b!7271488 (= res!2947682 (not ((_ is Concat!27644) (ite c!1353526 (reg!19128 (h!77237 (exprs!8239 ct1!250))) (ite c!1353525 (regOne!38111 (h!77237 (exprs!8239 ct1!250))) (regOne!38110 (h!77237 (exprs!8239 ct1!250))))))))))

(declare-fun e!4360458 () Bool)

(assert (=> b!7271488 (= e!4360458 e!4360457)))

(declare-fun call!663301 () Bool)

(declare-fun bm!663295 () Bool)

(assert (=> bm!663295 (= call!663301 (validRegex!9586 (ite c!1353683 (regTwo!38111 (ite c!1353526 (reg!19128 (h!77237 (exprs!8239 ct1!250))) (ite c!1353525 (regOne!38111 (h!77237 (exprs!8239 ct1!250))) (regOne!38110 (h!77237 (exprs!8239 ct1!250)))))) (regTwo!38110 (ite c!1353526 (reg!19128 (h!77237 (exprs!8239 ct1!250))) (ite c!1353525 (regOne!38111 (h!77237 (exprs!8239 ct1!250))) (regOne!38110 (h!77237 (exprs!8239 ct1!250)))))))))))

(declare-fun b!7271490 () Bool)

(declare-fun res!2947679 () Bool)

(declare-fun e!4360462 () Bool)

(assert (=> b!7271490 (=> (not res!2947679) (not e!4360462))))

(declare-fun call!663300 () Bool)

(assert (=> b!7271490 (= res!2947679 call!663300)))

(assert (=> b!7271490 (= e!4360458 e!4360462)))

(declare-fun b!7271491 () Bool)

(assert (=> b!7271491 (= e!4360462 call!663301)))

(declare-fun bm!663296 () Bool)

(assert (=> bm!663296 (= call!663300 call!663299)))

(declare-fun b!7271492 () Bool)

(declare-fun e!4360461 () Bool)

(assert (=> b!7271492 (= e!4360461 e!4360459)))

(declare-fun res!2947678 () Bool)

(assert (=> b!7271492 (= res!2947678 (not (nullable!7999 (reg!19128 (ite c!1353526 (reg!19128 (h!77237 (exprs!8239 ct1!250))) (ite c!1353525 (regOne!38111 (h!77237 (exprs!8239 ct1!250))) (regOne!38110 (h!77237 (exprs!8239 ct1!250)))))))))))

(assert (=> b!7271492 (=> (not res!2947678) (not e!4360459))))

(declare-fun b!7271493 () Bool)

(declare-fun e!4360456 () Bool)

(assert (=> b!7271493 (= e!4360457 e!4360456)))

(declare-fun res!2947681 () Bool)

(assert (=> b!7271493 (=> (not res!2947681) (not e!4360456))))

(assert (=> b!7271493 (= res!2947681 call!663300)))

(declare-fun b!7271489 () Bool)

(declare-fun e!4360460 () Bool)

(assert (=> b!7271489 (= e!4360460 e!4360461)))

(assert (=> b!7271489 (= c!1353684 ((_ is Star!18799) (ite c!1353526 (reg!19128 (h!77237 (exprs!8239 ct1!250))) (ite c!1353525 (regOne!38111 (h!77237 (exprs!8239 ct1!250))) (regOne!38110 (h!77237 (exprs!8239 ct1!250)))))))))

(declare-fun d!2262940 () Bool)

(declare-fun res!2947680 () Bool)

(assert (=> d!2262940 (=> res!2947680 e!4360460)))

(assert (=> d!2262940 (= res!2947680 ((_ is ElementMatch!18799) (ite c!1353526 (reg!19128 (h!77237 (exprs!8239 ct1!250))) (ite c!1353525 (regOne!38111 (h!77237 (exprs!8239 ct1!250))) (regOne!38110 (h!77237 (exprs!8239 ct1!250)))))))))

(assert (=> d!2262940 (= (validRegex!9586 (ite c!1353526 (reg!19128 (h!77237 (exprs!8239 ct1!250))) (ite c!1353525 (regOne!38111 (h!77237 (exprs!8239 ct1!250))) (regOne!38110 (h!77237 (exprs!8239 ct1!250)))))) e!4360460)))

(declare-fun b!7271494 () Bool)

(assert (=> b!7271494 (= e!4360461 e!4360458)))

(assert (=> b!7271494 (= c!1353683 ((_ is Union!18799) (ite c!1353526 (reg!19128 (h!77237 (exprs!8239 ct1!250))) (ite c!1353525 (regOne!38111 (h!77237 (exprs!8239 ct1!250))) (regOne!38110 (h!77237 (exprs!8239 ct1!250)))))))))

(declare-fun b!7271495 () Bool)

(assert (=> b!7271495 (= e!4360456 call!663301)))

(assert (= (and d!2262940 (not res!2947680)) b!7271489))

(assert (= (and b!7271489 c!1353684) b!7271492))

(assert (= (and b!7271489 (not c!1353684)) b!7271494))

(assert (= (and b!7271492 res!2947678) b!7271487))

(assert (= (and b!7271494 c!1353683) b!7271490))

(assert (= (and b!7271494 (not c!1353683)) b!7271488))

(assert (= (and b!7271490 res!2947679) b!7271491))

(assert (= (and b!7271488 (not res!2947682)) b!7271493))

(assert (= (and b!7271493 res!2947681) b!7271495))

(assert (= (or b!7271490 b!7271493) bm!663296))

(assert (= (or b!7271491 b!7271495) bm!663295))

(assert (= (or b!7271487 bm!663296) bm!663294))

(declare-fun m!7957366 () Bool)

(assert (=> bm!663294 m!7957366))

(declare-fun m!7957368 () Bool)

(assert (=> bm!663295 m!7957368))

(declare-fun m!7957370 () Bool)

(assert (=> b!7271492 m!7957370))

(assert (=> bm!663165 d!2262940))

(declare-fun d!2262942 () Bool)

(declare-fun c!1353685 () Bool)

(assert (=> d!2262942 (= c!1353685 ((_ is Nil!70789) lt!2594978))))

(declare-fun e!4360463 () (InoxSet Regex!18799))

(assert (=> d!2262942 (= (content!14777 lt!2594978) e!4360463)))

(declare-fun b!7271496 () Bool)

(assert (=> b!7271496 (= e!4360463 ((as const (Array Regex!18799 Bool)) false))))

(declare-fun b!7271497 () Bool)

(assert (=> b!7271497 (= e!4360463 ((_ map or) (store ((as const (Array Regex!18799 Bool)) false) (h!77237 lt!2594978) true) (content!14777 (t!384983 lt!2594978))))))

(assert (= (and d!2262942 c!1353685) b!7271496))

(assert (= (and d!2262942 (not c!1353685)) b!7271497))

(declare-fun m!7957372 () Bool)

(assert (=> b!7271497 m!7957372))

(declare-fun m!7957374 () Bool)

(assert (=> b!7271497 m!7957374))

(assert (=> d!2262608 d!2262942))

(declare-fun d!2262944 () Bool)

(declare-fun c!1353686 () Bool)

(assert (=> d!2262944 (= c!1353686 ((_ is Nil!70789) (exprs!8239 ct1!250)))))

(declare-fun e!4360464 () (InoxSet Regex!18799))

(assert (=> d!2262944 (= (content!14777 (exprs!8239 ct1!250)) e!4360464)))

(declare-fun b!7271498 () Bool)

(assert (=> b!7271498 (= e!4360464 ((as const (Array Regex!18799 Bool)) false))))

(declare-fun b!7271499 () Bool)

(assert (=> b!7271499 (= e!4360464 ((_ map or) (store ((as const (Array Regex!18799 Bool)) false) (h!77237 (exprs!8239 ct1!250)) true) (content!14777 (t!384983 (exprs!8239 ct1!250)))))))

(assert (= (and d!2262944 c!1353686) b!7271498))

(assert (= (and d!2262944 (not c!1353686)) b!7271499))

(declare-fun m!7957376 () Bool)

(assert (=> b!7271499 m!7957376))

(assert (=> b!7271499 m!7957324))

(assert (=> d!2262608 d!2262944))

(assert (=> d!2262608 d!2262884))

(assert (=> d!2262604 d!2262596))

(declare-fun d!2262946 () Bool)

(assert (=> d!2262946 (= (flatMap!2912 lt!2594942 lambda!448657) (dynLambda!28935 lambda!448657 lt!2594935))))

(assert (=> d!2262946 true))

(declare-fun _$13!4643 () Unit!164216)

(assert (=> d!2262946 (= (choose!56409 lt!2594942 lt!2594935 lambda!448657) _$13!4643)))

(declare-fun b_lambda!280343 () Bool)

(assert (=> (not b_lambda!280343) (not d!2262946)))

(declare-fun bs!1911186 () Bool)

(assert (= bs!1911186 d!2262946))

(assert (=> bs!1911186 m!7956508))

(assert (=> bs!1911186 m!7956714))

(assert (=> d!2262604 d!2262946))

(declare-fun bm!663297 () Bool)

(declare-fun call!663307 () List!70913)

(declare-fun call!663305 () List!70913)

(assert (=> bm!663297 (= call!663307 call!663305)))

(declare-fun c!1353689 () Bool)

(declare-fun call!663304 () (InoxSet Context!15478))

(declare-fun c!1353688 () Bool)

(declare-fun c!1353687 () Bool)

(declare-fun bm!663298 () Bool)

(assert (=> bm!663298 (= call!663304 (derivationStepZipperDown!2733 (ite c!1353688 (regTwo!38111 (ite c!1353512 (regTwo!38111 (h!77237 (exprs!8239 ct1!250))) (ite c!1353511 (regTwo!38110 (h!77237 (exprs!8239 ct1!250))) (ite c!1353513 (regOne!38110 (h!77237 (exprs!8239 ct1!250))) (reg!19128 (h!77237 (exprs!8239 ct1!250))))))) (ite c!1353687 (regTwo!38110 (ite c!1353512 (regTwo!38111 (h!77237 (exprs!8239 ct1!250))) (ite c!1353511 (regTwo!38110 (h!77237 (exprs!8239 ct1!250))) (ite c!1353513 (regOne!38110 (h!77237 (exprs!8239 ct1!250))) (reg!19128 (h!77237 (exprs!8239 ct1!250))))))) (ite c!1353689 (regOne!38110 (ite c!1353512 (regTwo!38111 (h!77237 (exprs!8239 ct1!250))) (ite c!1353511 (regTwo!38110 (h!77237 (exprs!8239 ct1!250))) (ite c!1353513 (regOne!38110 (h!77237 (exprs!8239 ct1!250))) (reg!19128 (h!77237 (exprs!8239 ct1!250))))))) (reg!19128 (ite c!1353512 (regTwo!38111 (h!77237 (exprs!8239 ct1!250))) (ite c!1353511 (regTwo!38110 (h!77237 (exprs!8239 ct1!250))) (ite c!1353513 (regOne!38110 (h!77237 (exprs!8239 ct1!250))) (reg!19128 (h!77237 (exprs!8239 ct1!250)))))))))) (ite (or c!1353688 c!1353687) (ite (or c!1353512 c!1353511) lt!2594948 (Context!15479 call!663163)) (Context!15479 call!663307)) (h!77238 s!7854)))))

(declare-fun bm!663299 () Bool)

(declare-fun call!663302 () (InoxSet Context!15478))

(assert (=> bm!663299 (= call!663302 call!663304)))

(declare-fun c!1353691 () Bool)

(declare-fun b!7271501 () Bool)

(assert (=> b!7271501 (= c!1353691 ((_ is Star!18799) (ite c!1353512 (regTwo!38111 (h!77237 (exprs!8239 ct1!250))) (ite c!1353511 (regTwo!38110 (h!77237 (exprs!8239 ct1!250))) (ite c!1353513 (regOne!38110 (h!77237 (exprs!8239 ct1!250))) (reg!19128 (h!77237 (exprs!8239 ct1!250))))))))))

(declare-fun e!4360469 () (InoxSet Context!15478))

(declare-fun e!4360466 () (InoxSet Context!15478))

(assert (=> b!7271501 (= e!4360469 e!4360466)))

(declare-fun bm!663300 () Bool)

(assert (=> bm!663300 (= call!663305 ($colon$colon!2973 (exprs!8239 (ite (or c!1353512 c!1353511) lt!2594948 (Context!15479 call!663163))) (ite (or c!1353687 c!1353689) (regTwo!38110 (ite c!1353512 (regTwo!38111 (h!77237 (exprs!8239 ct1!250))) (ite c!1353511 (regTwo!38110 (h!77237 (exprs!8239 ct1!250))) (ite c!1353513 (regOne!38110 (h!77237 (exprs!8239 ct1!250))) (reg!19128 (h!77237 (exprs!8239 ct1!250))))))) (ite c!1353512 (regTwo!38111 (h!77237 (exprs!8239 ct1!250))) (ite c!1353511 (regTwo!38110 (h!77237 (exprs!8239 ct1!250))) (ite c!1353513 (regOne!38110 (h!77237 (exprs!8239 ct1!250))) (reg!19128 (h!77237 (exprs!8239 ct1!250)))))))))))

(declare-fun b!7271502 () Bool)

(declare-fun e!4360468 () (InoxSet Context!15478))

(assert (=> b!7271502 (= e!4360468 e!4360469)))

(assert (=> b!7271502 (= c!1353689 ((_ is Concat!27644) (ite c!1353512 (regTwo!38111 (h!77237 (exprs!8239 ct1!250))) (ite c!1353511 (regTwo!38110 (h!77237 (exprs!8239 ct1!250))) (ite c!1353513 (regOne!38110 (h!77237 (exprs!8239 ct1!250))) (reg!19128 (h!77237 (exprs!8239 ct1!250))))))))))

(declare-fun bm!663301 () Bool)

(declare-fun call!663303 () (InoxSet Context!15478))

(assert (=> bm!663301 (= call!663303 call!663302)))

(declare-fun b!7271503 () Bool)

(declare-fun e!4360467 () (InoxSet Context!15478))

(declare-fun call!663306 () (InoxSet Context!15478))

(assert (=> b!7271503 (= e!4360467 ((_ map or) call!663306 call!663304))))

(declare-fun bm!663302 () Bool)

(assert (=> bm!663302 (= call!663306 (derivationStepZipperDown!2733 (ite c!1353688 (regOne!38111 (ite c!1353512 (regTwo!38111 (h!77237 (exprs!8239 ct1!250))) (ite c!1353511 (regTwo!38110 (h!77237 (exprs!8239 ct1!250))) (ite c!1353513 (regOne!38110 (h!77237 (exprs!8239 ct1!250))) (reg!19128 (h!77237 (exprs!8239 ct1!250))))))) (regOne!38110 (ite c!1353512 (regTwo!38111 (h!77237 (exprs!8239 ct1!250))) (ite c!1353511 (regTwo!38110 (h!77237 (exprs!8239 ct1!250))) (ite c!1353513 (regOne!38110 (h!77237 (exprs!8239 ct1!250))) (reg!19128 (h!77237 (exprs!8239 ct1!250)))))))) (ite c!1353688 (ite (or c!1353512 c!1353511) lt!2594948 (Context!15479 call!663163)) (Context!15479 call!663305)) (h!77238 s!7854)))))

(declare-fun b!7271504 () Bool)

(declare-fun e!4360470 () Bool)

(assert (=> b!7271504 (= c!1353687 e!4360470)))

(declare-fun res!2947683 () Bool)

(assert (=> b!7271504 (=> (not res!2947683) (not e!4360470))))

(assert (=> b!7271504 (= res!2947683 ((_ is Concat!27644) (ite c!1353512 (regTwo!38111 (h!77237 (exprs!8239 ct1!250))) (ite c!1353511 (regTwo!38110 (h!77237 (exprs!8239 ct1!250))) (ite c!1353513 (regOne!38110 (h!77237 (exprs!8239 ct1!250))) (reg!19128 (h!77237 (exprs!8239 ct1!250))))))))))

(assert (=> b!7271504 (= e!4360467 e!4360468)))

(declare-fun b!7271505 () Bool)

(assert (=> b!7271505 (= e!4360466 call!663303)))

(declare-fun b!7271506 () Bool)

(assert (=> b!7271506 (= e!4360466 ((as const (Array Context!15478 Bool)) false))))

(declare-fun b!7271500 () Bool)

(declare-fun e!4360465 () (InoxSet Context!15478))

(assert (=> b!7271500 (= e!4360465 (store ((as const (Array Context!15478 Bool)) false) (ite (or c!1353512 c!1353511) lt!2594948 (Context!15479 call!663163)) true))))

(declare-fun d!2262948 () Bool)

(declare-fun c!1353690 () Bool)

(assert (=> d!2262948 (= c!1353690 (and ((_ is ElementMatch!18799) (ite c!1353512 (regTwo!38111 (h!77237 (exprs!8239 ct1!250))) (ite c!1353511 (regTwo!38110 (h!77237 (exprs!8239 ct1!250))) (ite c!1353513 (regOne!38110 (h!77237 (exprs!8239 ct1!250))) (reg!19128 (h!77237 (exprs!8239 ct1!250))))))) (= (c!1353435 (ite c!1353512 (regTwo!38111 (h!77237 (exprs!8239 ct1!250))) (ite c!1353511 (regTwo!38110 (h!77237 (exprs!8239 ct1!250))) (ite c!1353513 (regOne!38110 (h!77237 (exprs!8239 ct1!250))) (reg!19128 (h!77237 (exprs!8239 ct1!250))))))) (h!77238 s!7854))))))

(assert (=> d!2262948 (= (derivationStepZipperDown!2733 (ite c!1353512 (regTwo!38111 (h!77237 (exprs!8239 ct1!250))) (ite c!1353511 (regTwo!38110 (h!77237 (exprs!8239 ct1!250))) (ite c!1353513 (regOne!38110 (h!77237 (exprs!8239 ct1!250))) (reg!19128 (h!77237 (exprs!8239 ct1!250)))))) (ite (or c!1353512 c!1353511) lt!2594948 (Context!15479 call!663163)) (h!77238 s!7854)) e!4360465)))

(declare-fun b!7271507 () Bool)

(assert (=> b!7271507 (= e!4360469 call!663303)))

(declare-fun b!7271508 () Bool)

(assert (=> b!7271508 (= e!4360470 (nullable!7999 (regOne!38110 (ite c!1353512 (regTwo!38111 (h!77237 (exprs!8239 ct1!250))) (ite c!1353511 (regTwo!38110 (h!77237 (exprs!8239 ct1!250))) (ite c!1353513 (regOne!38110 (h!77237 (exprs!8239 ct1!250))) (reg!19128 (h!77237 (exprs!8239 ct1!250)))))))))))

(declare-fun b!7271509 () Bool)

(assert (=> b!7271509 (= e!4360465 e!4360467)))

(assert (=> b!7271509 (= c!1353688 ((_ is Union!18799) (ite c!1353512 (regTwo!38111 (h!77237 (exprs!8239 ct1!250))) (ite c!1353511 (regTwo!38110 (h!77237 (exprs!8239 ct1!250))) (ite c!1353513 (regOne!38110 (h!77237 (exprs!8239 ct1!250))) (reg!19128 (h!77237 (exprs!8239 ct1!250))))))))))

(declare-fun b!7271510 () Bool)

(assert (=> b!7271510 (= e!4360468 ((_ map or) call!663306 call!663302))))

(assert (= (and d!2262948 c!1353690) b!7271500))

(assert (= (and d!2262948 (not c!1353690)) b!7271509))

(assert (= (and b!7271509 c!1353688) b!7271503))

(assert (= (and b!7271509 (not c!1353688)) b!7271504))

(assert (= (and b!7271504 res!2947683) b!7271508))

(assert (= (and b!7271504 c!1353687) b!7271510))

(assert (= (and b!7271504 (not c!1353687)) b!7271502))

(assert (= (and b!7271502 c!1353689) b!7271507))

(assert (= (and b!7271502 (not c!1353689)) b!7271501))

(assert (= (and b!7271501 c!1353691) b!7271505))

(assert (= (and b!7271501 (not c!1353691)) b!7271506))

(assert (= (or b!7271507 b!7271505) bm!663297))

(assert (= (or b!7271507 b!7271505) bm!663301))

(assert (= (or b!7271510 bm!663297) bm!663300))

(assert (= (or b!7271510 bm!663301) bm!663299))

(assert (= (or b!7271503 b!7271510) bm!663302))

(assert (= (or b!7271503 bm!663299) bm!663298))

(declare-fun m!7957378 () Bool)

(assert (=> b!7271508 m!7957378))

(declare-fun m!7957380 () Bool)

(assert (=> b!7271500 m!7957380))

(declare-fun m!7957382 () Bool)

(assert (=> bm!663302 m!7957382))

(declare-fun m!7957384 () Bool)

(assert (=> bm!663300 m!7957384))

(declare-fun m!7957386 () Bool)

(assert (=> bm!663298 m!7957386))

(assert (=> bm!663154 d!2262948))

(declare-fun d!2262950 () Bool)

(assert (=> d!2262950 (= (nullable!7999 (h!77237 (exprs!8239 lt!2594922))) (nullableFct!3158 (h!77237 (exprs!8239 lt!2594922))))))

(declare-fun bs!1911187 () Bool)

(assert (= bs!1911187 d!2262950))

(declare-fun m!7957388 () Bool)

(assert (=> bs!1911187 m!7957388))

(assert (=> b!7271034 d!2262950))

(declare-fun b!7271511 () Bool)

(declare-fun e!4360471 () Bool)

(declare-fun tp!2041162 () Bool)

(assert (=> b!7271511 (= e!4360471 (and tp_is_empty!47063 tp!2041162))))

(assert (=> b!7271053 (= tp!2041116 e!4360471)))

(assert (= (and b!7271053 ((_ is Cons!70790) (t!384984 (t!384984 s!7854)))) b!7271511))

(declare-fun b!7271523 () Bool)

(declare-fun e!4360474 () Bool)

(declare-fun tp!2041174 () Bool)

(declare-fun tp!2041176 () Bool)

(assert (=> b!7271523 (= e!4360474 (and tp!2041174 tp!2041176))))

(declare-fun b!7271525 () Bool)

(declare-fun tp!2041177 () Bool)

(declare-fun tp!2041175 () Bool)

(assert (=> b!7271525 (= e!4360474 (and tp!2041177 tp!2041175))))

(declare-fun b!7271522 () Bool)

(assert (=> b!7271522 (= e!4360474 tp_is_empty!47063)))

(assert (=> b!7271048 (= tp!2041112 e!4360474)))

(declare-fun b!7271524 () Bool)

(declare-fun tp!2041173 () Bool)

(assert (=> b!7271524 (= e!4360474 tp!2041173)))

(assert (= (and b!7271048 ((_ is ElementMatch!18799) (h!77237 (exprs!8239 ct1!250)))) b!7271522))

(assert (= (and b!7271048 ((_ is Concat!27644) (h!77237 (exprs!8239 ct1!250)))) b!7271523))

(assert (= (and b!7271048 ((_ is Star!18799) (h!77237 (exprs!8239 ct1!250)))) b!7271524))

(assert (= (and b!7271048 ((_ is Union!18799) (h!77237 (exprs!8239 ct1!250)))) b!7271525))

(declare-fun b!7271526 () Bool)

(declare-fun e!4360475 () Bool)

(declare-fun tp!2041178 () Bool)

(declare-fun tp!2041179 () Bool)

(assert (=> b!7271526 (= e!4360475 (and tp!2041178 tp!2041179))))

(assert (=> b!7271048 (= tp!2041113 e!4360475)))

(assert (= (and b!7271048 ((_ is Cons!70789) (t!384983 (exprs!8239 ct1!250)))) b!7271526))

(declare-fun b!7271528 () Bool)

(declare-fun e!4360476 () Bool)

(declare-fun tp!2041181 () Bool)

(declare-fun tp!2041183 () Bool)

(assert (=> b!7271528 (= e!4360476 (and tp!2041181 tp!2041183))))

(declare-fun b!7271530 () Bool)

(declare-fun tp!2041184 () Bool)

(declare-fun tp!2041182 () Bool)

(assert (=> b!7271530 (= e!4360476 (and tp!2041184 tp!2041182))))

(declare-fun b!7271527 () Bool)

(assert (=> b!7271527 (= e!4360476 tp_is_empty!47063)))

(assert (=> b!7271047 (= tp!2041110 e!4360476)))

(declare-fun b!7271529 () Bool)

(declare-fun tp!2041180 () Bool)

(assert (=> b!7271529 (= e!4360476 tp!2041180)))

(assert (= (and b!7271047 ((_ is ElementMatch!18799) (h!77237 (exprs!8239 ct2!346)))) b!7271527))

(assert (= (and b!7271047 ((_ is Concat!27644) (h!77237 (exprs!8239 ct2!346)))) b!7271528))

(assert (= (and b!7271047 ((_ is Star!18799) (h!77237 (exprs!8239 ct2!346)))) b!7271529))

(assert (= (and b!7271047 ((_ is Union!18799) (h!77237 (exprs!8239 ct2!346)))) b!7271530))

(declare-fun b!7271531 () Bool)

(declare-fun e!4360477 () Bool)

(declare-fun tp!2041185 () Bool)

(declare-fun tp!2041186 () Bool)

(assert (=> b!7271531 (= e!4360477 (and tp!2041185 tp!2041186))))

(assert (=> b!7271047 (= tp!2041111 e!4360477)))

(assert (= (and b!7271047 ((_ is Cons!70789) (t!384983 (exprs!8239 ct2!346)))) b!7271531))

(declare-fun b_lambda!280345 () Bool)

(assert (= b_lambda!280333 (or b!7270767 b_lambda!280345)))

(declare-fun bs!1911188 () Bool)

(declare-fun d!2262952 () Bool)

(assert (= bs!1911188 (and d!2262952 b!7270767)))

(assert (=> bs!1911188 (= (dynLambda!28937 lambda!448656 (h!77237 (exprs!8239 ct1!250))) (validRegex!9586 (h!77237 (exprs!8239 ct1!250))))))

(assert (=> bs!1911188 m!7956534))

(assert (=> b!7271364 d!2262952))

(declare-fun b_lambda!280347 () Bool)

(assert (= b_lambda!280335 (or b!7270767 b_lambda!280347)))

(assert (=> d!2262888 d!2262656))

(declare-fun b_lambda!280349 () Bool)

(assert (= b_lambda!280339 (or b!7270767 b_lambda!280349)))

(declare-fun bs!1911189 () Bool)

(declare-fun d!2262954 () Bool)

(assert (= bs!1911189 (and d!2262954 b!7270767)))

(assert (=> bs!1911189 (= (dynLambda!28937 lambda!448656 (h!77237 (++!16699 lt!2594939 (exprs!8239 ct2!346)))) (validRegex!9586 (h!77237 (++!16699 lt!2594939 (exprs!8239 ct2!346)))))))

(declare-fun m!7957390 () Bool)

(assert (=> bs!1911189 m!7957390))

(assert (=> b!7271426 d!2262954))

(declare-fun b_lambda!280351 () Bool)

(assert (= b_lambda!280329 (or b!7270767 b_lambda!280351)))

(assert (=> d!2262826 d!2262658))

(declare-fun b_lambda!280353 () Bool)

(assert (= b_lambda!280343 (or b!7270767 b_lambda!280353)))

(assert (=> d!2262946 d!2262660))

(declare-fun b_lambda!280355 () Bool)

(assert (= b_lambda!280327 (or d!2262638 b_lambda!280355)))

(declare-fun bs!1911190 () Bool)

(declare-fun d!2262956 () Bool)

(assert (= bs!1911190 (and d!2262956 d!2262638)))

(assert (=> bs!1911190 (= (dynLambda!28937 lambda!448680 (h!77237 (exprs!8239 ct1!250))) (nullable!7999 (h!77237 (exprs!8239 ct1!250))))))

(assert (=> bs!1911190 m!7956492))

(assert (=> b!7271321 d!2262956))

(declare-fun b_lambda!280357 () Bool)

(assert (= b_lambda!280337 (or d!2262630 b_lambda!280357)))

(declare-fun bs!1911191 () Bool)

(declare-fun d!2262958 () Bool)

(assert (= bs!1911191 (and d!2262958 d!2262630)))

(assert (=> bs!1911191 (= (dynLambda!28937 lambda!448676 (h!77237 (exprs!8239 ct2!346))) (validRegex!9586 (h!77237 (exprs!8239 ct2!346))))))

(declare-fun m!7957392 () Bool)

(assert (=> bs!1911191 m!7957392))

(assert (=> b!7271417 d!2262958))

(declare-fun b_lambda!280359 () Bool)

(assert (= b_lambda!280331 (or b!7270767 b_lambda!280359)))

(declare-fun bs!1911192 () Bool)

(declare-fun d!2262960 () Bool)

(assert (= bs!1911192 (and d!2262960 b!7270767)))

(assert (=> bs!1911192 (= (dynLambda!28937 lambda!448656 (h!77237 (++!16699 (exprs!8239 ct1!250) (exprs!8239 ct2!346)))) (validRegex!9586 (h!77237 (++!16699 (exprs!8239 ct1!250) (exprs!8239 ct2!346)))))))

(declare-fun m!7957394 () Bool)

(assert (=> bs!1911192 m!7957394))

(assert (=> b!7271362 d!2262960))

(declare-fun b_lambda!280361 () Bool)

(assert (= b_lambda!280325 (or d!2262632 b_lambda!280361)))

(declare-fun bs!1911193 () Bool)

(declare-fun d!2262962 () Bool)

(assert (= bs!1911193 (and d!2262962 d!2262632)))

(assert (=> bs!1911193 (= (dynLambda!28937 lambda!448677 (h!77237 (exprs!8239 ct1!250))) (validRegex!9586 (h!77237 (exprs!8239 ct1!250))))))

(assert (=> bs!1911193 m!7956534))

(assert (=> b!7271319 d!2262962))

(declare-fun b_lambda!280363 () Bool)

(assert (= b_lambda!280341 (or b!7270767 b_lambda!280363)))

(declare-fun bs!1911194 () Bool)

(declare-fun d!2262964 () Bool)

(assert (= bs!1911194 (and d!2262964 b!7270767)))

(assert (=> bs!1911194 (= (dynLambda!28937 lambda!448656 (h!77237 lt!2594939)) (validRegex!9586 (h!77237 lt!2594939)))))

(declare-fun m!7957396 () Bool)

(assert (=> bs!1911194 m!7957396))

(assert (=> b!7271428 d!2262964))

(check-sat (not bm!663269) (not b_lambda!280353) (not b_lambda!280347) (not d!2262920) (not bm!663263) (not d!2262862) (not b!7271397) (not b!7271301) (not b!7271365) (not b!7271429) (not b!7271424) (not d!2262830) (not b!7271526) (not d!2262898) (not b_lambda!280281) (not b!7271531) (not b!7271412) (not b_lambda!280349) (not bm!663295) (not b!7271375) (not b!7271402) (not bs!1911189) (not bm!663264) (not bs!1911188) (not b_lambda!280359) (not b_lambda!280279) (not d!2262828) (not bm!663262) (not b!7271363) (not bm!663242) (not bm!663244) (not bm!663273) (not b!7271425) (not b!7271420) (not b!7271492) (not b!7271386) (not bm!663248) (not bs!1911191) (not b!7271418) (not b!7271387) (not b!7271346) (not bm!663291) (not bm!663294) (not b_lambda!280345) (not b!7271419) (not d!2262906) (not b!7271312) (not b!7271448) (not b!7271416) (not b!7271486) (not b!7271373) (not bm!663255) (not bm!663258) (not b!7271371) (not b!7271442) (not b!7271382) (not bm!663283) (not b!7271528) (not bm!663267) (not b!7271393) (not bm!663250) (not b!7271459) (not d!2262888) (not b!7271523) (not b!7271322) (not bm!663281) (not d!2262860) (not bs!1911192) (not b!7271389) (not bm!663289) (not b!7271376) (not d!2262846) (not bm!663277) (not bm!663293) (not b_lambda!280351) (not d!2262842) (not setNonEmpty!53645) (not b!7271499) (not bm!663246) (not b!7271360) (not b!7271359) (not bm!663240) (not b_lambda!280355) (not b!7271524) (not b!7271470) (not d!2262950) (not d!2262864) (not bm!663275) (not d!2262868) (not d!2262866) (not bs!1911190) (not b!7271473) (not b!7271445) (not bm!663268) (not b!7271438) (not bm!663260) (not bm!663285) (not b!7271390) (not bm!663271) (not b_lambda!280357) (not b!7271392) (not b!7271497) (not d!2262872) (not b!7271427) (not bm!663256) (not b!7271446) (not bs!1911193) (not setNonEmpty!53643) (not d!2262946) (not b!7271474) (not b_lambda!280361) (not b_lambda!280283) (not b!7271320) (not b!7271403) (not bm!663298) tp_is_empty!47063 (not d!2262814) (not bs!1911194) (not d!2262886) (not b!7271529) (not bm!663279) (not b!7271444) (not b!7271530) (not d!2262896) (not d!2262918) (not d!2262890) (not b!7271483) (not d!2262926) (not d!2262826) (not d!2262934) (not b!7271508) (not b!7271414) (not b!7271449) (not b!7271355) (not bm!663302) (not b!7271398) (not b!7271511) (not bm!663300) (not setNonEmpty!53644) (not bm!663266) (not d!2262876) (not d!2262932) (not b_lambda!280363) (not bm!663287) (not b!7271525))
(check-sat)

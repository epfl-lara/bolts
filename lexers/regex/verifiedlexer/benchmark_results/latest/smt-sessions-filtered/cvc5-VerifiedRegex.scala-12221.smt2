; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!688746 () Bool)

(assert start!688746)

(declare-fun b!7080733 () Bool)

(assert (=> b!7080733 true))

(declare-fun b!7080731 () Bool)

(assert (=> b!7080731 true))

(declare-fun b!7080734 () Bool)

(assert (=> b!7080734 true))

(declare-fun b!7080729 () Bool)

(declare-fun e!4256894 () Bool)

(declare-fun tp!1943442 () Bool)

(assert (=> b!7080729 (= e!4256894 tp!1943442)))

(declare-fun b!7080730 () Bool)

(declare-fun res!2892382 () Bool)

(declare-fun e!4256892 () Bool)

(assert (=> b!7080730 (=> (not res!2892382) (not e!4256892))))

(declare-datatypes ((C!35646 0))(
  ( (C!35647 (val!27525 Int)) )
))
(declare-datatypes ((List!68590 0))(
  ( (Nil!68466) (Cons!68466 (h!74914 C!35646) (t!382375 List!68590)) )
))
(declare-fun s!7408 () List!68590)

(assert (=> b!7080730 (= res!2892382 (is-Cons!68466 s!7408))))

(declare-fun e!4256888 () Bool)

(declare-fun e!4256889 () Bool)

(assert (=> b!7080731 (= e!4256888 e!4256889)))

(declare-fun res!2892384 () Bool)

(assert (=> b!7080731 (=> res!2892384 e!4256889)))

(declare-datatypes ((Regex!17688 0))(
  ( (ElementMatch!17688 (c!1321553 C!35646)) (Concat!26533 (regOne!35888 Regex!17688) (regTwo!35888 Regex!17688)) (EmptyExpr!17688) (Star!17688 (reg!18017 Regex!17688)) (EmptyLang!17688) (Union!17688 (regOne!35889 Regex!17688) (regTwo!35889 Regex!17688)) )
))
(declare-datatypes ((List!68591 0))(
  ( (Nil!68467) (Cons!68467 (h!74915 Regex!17688) (t!382376 List!68591)) )
))
(declare-datatypes ((Context!13368 0))(
  ( (Context!13369 (exprs!7184 List!68591)) )
))
(declare-fun lt!2552262 () Context!13368)

(declare-fun lt!2552265 () Context!13368)

(declare-fun z1!570 () (Set Context!13368))

(declare-fun lt!2552267 () Context!13368)

(assert (=> b!7080731 (= res!2892384 (or (not (= lt!2552262 lt!2552267)) (not (set.member lt!2552265 z1!570))))))

(declare-fun ct2!306 () Context!13368)

(declare-fun ++!15851 (List!68591 List!68591) List!68591)

(assert (=> b!7080731 (= lt!2552262 (Context!13369 (++!15851 (exprs!7184 lt!2552265) (exprs!7184 ct2!306))))))

(declare-datatypes ((Unit!162087 0))(
  ( (Unit!162088) )
))
(declare-fun lt!2552272 () Unit!162087)

(declare-fun lambda!427752 () Int)

(declare-fun lemmaConcatPreservesForall!999 (List!68591 List!68591 Int) Unit!162087)

(assert (=> b!7080731 (= lt!2552272 (lemmaConcatPreservesForall!999 (exprs!7184 lt!2552265) (exprs!7184 ct2!306) lambda!427752))))

(declare-fun lambda!427751 () Int)

(declare-fun mapPost2!517 ((Set Context!13368) Int Context!13368) Context!13368)

(assert (=> b!7080731 (= lt!2552265 (mapPost2!517 z1!570 lambda!427751 lt!2552267))))

(declare-fun setElem!50488 () Context!13368)

(declare-fun setNonEmpty!50488 () Bool)

(declare-fun setRes!50488 () Bool)

(declare-fun tp!1943441 () Bool)

(declare-fun inv!87080 (Context!13368) Bool)

(assert (=> setNonEmpty!50488 (= setRes!50488 (and tp!1943441 (inv!87080 setElem!50488) e!4256894))))

(declare-fun setRest!50488 () (Set Context!13368))

(assert (=> setNonEmpty!50488 (= z1!570 (set.union (set.insert setElem!50488 (as set.empty (Set Context!13368))) setRest!50488))))

(declare-fun b!7080732 () Bool)

(declare-fun e!4256893 () Bool)

(declare-fun tp!1943439 () Bool)

(assert (=> b!7080732 (= e!4256893 tp!1943439)))

(assert (=> b!7080733 (= e!4256892 (not e!4256888))))

(declare-fun res!2892388 () Bool)

(assert (=> b!7080733 (=> res!2892388 e!4256888)))

(declare-fun lt!2552273 () (Set Context!13368))

(declare-fun matchZipper!3228 ((Set Context!13368) List!68590) Bool)

(assert (=> b!7080733 (= res!2892388 (not (matchZipper!3228 lt!2552273 s!7408)))))

(assert (=> b!7080733 (= lt!2552273 (set.insert lt!2552267 (as set.empty (Set Context!13368))))))

(declare-fun lt!2552270 () (Set Context!13368))

(declare-fun lambda!427750 () Int)

(declare-fun getWitness!1816 ((Set Context!13368) Int) Context!13368)

(assert (=> b!7080733 (= lt!2552267 (getWitness!1816 lt!2552270 lambda!427750))))

(declare-datatypes ((List!68592 0))(
  ( (Nil!68468) (Cons!68468 (h!74916 Context!13368) (t!382377 List!68592)) )
))
(declare-fun lt!2552269 () List!68592)

(declare-fun exists!3771 (List!68592 Int) Bool)

(assert (=> b!7080733 (exists!3771 lt!2552269 lambda!427750)))

(declare-fun lt!2552268 () Unit!162087)

(declare-fun lemmaZipperMatchesExistsMatchingContext!609 (List!68592 List!68590) Unit!162087)

(assert (=> b!7080733 (= lt!2552268 (lemmaZipperMatchesExistsMatchingContext!609 lt!2552269 s!7408))))

(declare-fun toList!11029 ((Set Context!13368)) List!68592)

(assert (=> b!7080733 (= lt!2552269 (toList!11029 lt!2552270))))

(declare-fun e!4256891 () Bool)

(declare-fun e!4256890 () Bool)

(assert (=> b!7080734 (= e!4256891 e!4256890)))

(declare-fun res!2892385 () Bool)

(assert (=> b!7080734 (=> res!2892385 e!4256890)))

(declare-fun lt!2552271 () (Set Context!13368))

(declare-fun lt!2552263 () (Set Context!13368))

(declare-fun derivationStepZipper!3138 ((Set Context!13368) C!35646) (Set Context!13368))

(assert (=> b!7080734 (= res!2892385 (not (= (derivationStepZipper!3138 lt!2552263 (h!74914 s!7408)) lt!2552271)))))

(declare-fun lambda!427753 () Int)

(declare-fun flatMap!2614 ((Set Context!13368) Int) (Set Context!13368))

(declare-fun derivationStepZipperUp!2272 (Context!13368 C!35646) (Set Context!13368))

(assert (=> b!7080734 (= (flatMap!2614 lt!2552263 lambda!427753) (derivationStepZipperUp!2272 lt!2552262 (h!74914 s!7408)))))

(declare-fun lt!2552264 () Unit!162087)

(declare-fun lemmaFlatMapOnSingletonSet!2123 ((Set Context!13368) Context!13368 Int) Unit!162087)

(assert (=> b!7080734 (= lt!2552264 (lemmaFlatMapOnSingletonSet!2123 lt!2552263 lt!2552262 lambda!427753))))

(assert (=> b!7080734 (= lt!2552271 (derivationStepZipperUp!2272 lt!2552262 (h!74914 s!7408)))))

(declare-fun lt!2552274 () Unit!162087)

(assert (=> b!7080734 (= lt!2552274 (lemmaConcatPreservesForall!999 (exprs!7184 lt!2552265) (exprs!7184 ct2!306) lambda!427752))))

(declare-fun b!7080735 () Bool)

(declare-fun res!2892386 () Bool)

(assert (=> b!7080735 (=> res!2892386 e!4256888)))

(assert (=> b!7080735 (= res!2892386 (not (set.member lt!2552267 lt!2552270)))))

(declare-fun res!2892381 () Bool)

(assert (=> start!688746 (=> (not res!2892381) (not e!4256892))))

(assert (=> start!688746 (= res!2892381 (matchZipper!3228 lt!2552270 s!7408))))

(declare-fun appendTo!809 ((Set Context!13368) Context!13368) (Set Context!13368))

(assert (=> start!688746 (= lt!2552270 (appendTo!809 z1!570 ct2!306))))

(assert (=> start!688746 e!4256892))

(declare-fun condSetEmpty!50488 () Bool)

(assert (=> start!688746 (= condSetEmpty!50488 (= z1!570 (as set.empty (Set Context!13368))))))

(assert (=> start!688746 setRes!50488))

(assert (=> start!688746 (and (inv!87080 ct2!306) e!4256893)))

(declare-fun e!4256887 () Bool)

(assert (=> start!688746 e!4256887))

(declare-fun b!7080736 () Bool)

(declare-fun tp_is_empty!44601 () Bool)

(declare-fun tp!1943440 () Bool)

(assert (=> b!7080736 (= e!4256887 (and tp_is_empty!44601 tp!1943440))))

(declare-fun setIsEmpty!50488 () Bool)

(assert (=> setIsEmpty!50488 setRes!50488))

(declare-fun b!7080737 () Bool)

(assert (=> b!7080737 (= e!4256889 e!4256891)))

(declare-fun res!2892383 () Bool)

(assert (=> b!7080737 (=> res!2892383 e!4256891)))

(assert (=> b!7080737 (= res!2892383 (not (= lt!2552263 lt!2552273)))))

(assert (=> b!7080737 (= lt!2552263 (set.insert lt!2552262 (as set.empty (Set Context!13368))))))

(declare-fun lt!2552261 () Unit!162087)

(assert (=> b!7080737 (= lt!2552261 (lemmaConcatPreservesForall!999 (exprs!7184 lt!2552265) (exprs!7184 ct2!306) lambda!427752))))

(declare-fun b!7080738 () Bool)

(declare-fun res!2892387 () Bool)

(assert (=> b!7080738 (=> res!2892387 e!4256890)))

(assert (=> b!7080738 (= res!2892387 (is-Cons!68467 (exprs!7184 lt!2552265)))))

(declare-fun b!7080739 () Bool)

(assert (=> b!7080739 (= e!4256890 (inv!87080 lt!2552262))))

(declare-fun lt!2552266 () Unit!162087)

(assert (=> b!7080739 (= lt!2552266 (lemmaConcatPreservesForall!999 (exprs!7184 lt!2552265) (exprs!7184 ct2!306) lambda!427752))))

(assert (= (and start!688746 res!2892381) b!7080730))

(assert (= (and b!7080730 res!2892382) b!7080733))

(assert (= (and b!7080733 (not res!2892388)) b!7080735))

(assert (= (and b!7080735 (not res!2892386)) b!7080731))

(assert (= (and b!7080731 (not res!2892384)) b!7080737))

(assert (= (and b!7080737 (not res!2892383)) b!7080734))

(assert (= (and b!7080734 (not res!2892385)) b!7080738))

(assert (= (and b!7080738 (not res!2892387)) b!7080739))

(assert (= (and start!688746 condSetEmpty!50488) setIsEmpty!50488))

(assert (= (and start!688746 (not condSetEmpty!50488)) setNonEmpty!50488))

(assert (= setNonEmpty!50488 b!7080729))

(assert (= start!688746 b!7080732))

(assert (= (and start!688746 (is-Cons!68466 s!7408)) b!7080736))

(declare-fun m!7811596 () Bool)

(assert (=> b!7080737 m!7811596))

(declare-fun m!7811598 () Bool)

(assert (=> b!7080737 m!7811598))

(declare-fun m!7811600 () Bool)

(assert (=> start!688746 m!7811600))

(declare-fun m!7811602 () Bool)

(assert (=> start!688746 m!7811602))

(declare-fun m!7811604 () Bool)

(assert (=> start!688746 m!7811604))

(assert (=> b!7080734 m!7811598))

(declare-fun m!7811606 () Bool)

(assert (=> b!7080734 m!7811606))

(declare-fun m!7811608 () Bool)

(assert (=> b!7080734 m!7811608))

(declare-fun m!7811610 () Bool)

(assert (=> b!7080734 m!7811610))

(declare-fun m!7811612 () Bool)

(assert (=> b!7080734 m!7811612))

(declare-fun m!7811614 () Bool)

(assert (=> setNonEmpty!50488 m!7811614))

(declare-fun m!7811616 () Bool)

(assert (=> b!7080739 m!7811616))

(assert (=> b!7080739 m!7811598))

(declare-fun m!7811618 () Bool)

(assert (=> b!7080733 m!7811618))

(declare-fun m!7811620 () Bool)

(assert (=> b!7080733 m!7811620))

(declare-fun m!7811622 () Bool)

(assert (=> b!7080733 m!7811622))

(declare-fun m!7811624 () Bool)

(assert (=> b!7080733 m!7811624))

(declare-fun m!7811626 () Bool)

(assert (=> b!7080733 m!7811626))

(declare-fun m!7811628 () Bool)

(assert (=> b!7080733 m!7811628))

(declare-fun m!7811630 () Bool)

(assert (=> b!7080735 m!7811630))

(declare-fun m!7811632 () Bool)

(assert (=> b!7080731 m!7811632))

(declare-fun m!7811634 () Bool)

(assert (=> b!7080731 m!7811634))

(assert (=> b!7080731 m!7811598))

(declare-fun m!7811636 () Bool)

(assert (=> b!7080731 m!7811636))

(push 1)

(assert (not b!7080736))

(assert (not b!7080731))

(assert (not b!7080732))

(assert (not b!7080729))

(assert (not setNonEmpty!50488))

(assert (not b!7080737))

(assert (not b!7080739))

(assert (not b!7080734))

(assert (not b!7080733))

(assert (not start!688746))

(assert tp_is_empty!44601)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2214716 () Bool)

(declare-fun e!4256921 () Bool)

(assert (=> d!2214716 e!4256921))

(declare-fun res!2892416 () Bool)

(assert (=> d!2214716 (=> (not res!2892416) (not e!4256921))))

(declare-fun lt!2552321 () Context!13368)

(declare-fun dynLambda!27906 (Int Context!13368) Bool)

(assert (=> d!2214716 (= res!2892416 (dynLambda!27906 lambda!427750 lt!2552321))))

(declare-fun getWitness!1818 (List!68592 Int) Context!13368)

(assert (=> d!2214716 (= lt!2552321 (getWitness!1818 (toList!11029 lt!2552270) lambda!427750))))

(declare-fun exists!3773 ((Set Context!13368) Int) Bool)

(assert (=> d!2214716 (exists!3773 lt!2552270 lambda!427750)))

(assert (=> d!2214716 (= (getWitness!1816 lt!2552270 lambda!427750) lt!2552321)))

(declare-fun b!7080787 () Bool)

(assert (=> b!7080787 (= e!4256921 (set.member lt!2552321 lt!2552270))))

(assert (= (and d!2214716 res!2892416) b!7080787))

(declare-fun b_lambda!270537 () Bool)

(assert (=> (not b_lambda!270537) (not d!2214716)))

(declare-fun m!7811680 () Bool)

(assert (=> d!2214716 m!7811680))

(assert (=> d!2214716 m!7811622))

(assert (=> d!2214716 m!7811622))

(declare-fun m!7811682 () Bool)

(assert (=> d!2214716 m!7811682))

(declare-fun m!7811684 () Bool)

(assert (=> d!2214716 m!7811684))

(declare-fun m!7811686 () Bool)

(assert (=> b!7080787 m!7811686))

(assert (=> b!7080733 d!2214716))

(declare-fun bs!1882093 () Bool)

(declare-fun d!2214718 () Bool)

(assert (= bs!1882093 (and d!2214718 b!7080733)))

(declare-fun lambda!427778 () Int)

(assert (=> bs!1882093 (not (= lambda!427778 lambda!427750))))

(assert (=> d!2214718 true))

(declare-fun order!28467 () Int)

(declare-fun dynLambda!27907 (Int Int) Int)

(assert (=> d!2214718 (< (dynLambda!27907 order!28467 lambda!427750) (dynLambda!27907 order!28467 lambda!427778))))

(declare-fun forall!16651 (List!68592 Int) Bool)

(assert (=> d!2214718 (= (exists!3771 lt!2552269 lambda!427750) (not (forall!16651 lt!2552269 lambda!427778)))))

(declare-fun bs!1882094 () Bool)

(assert (= bs!1882094 d!2214718))

(declare-fun m!7811688 () Bool)

(assert (=> bs!1882094 m!7811688))

(assert (=> b!7080733 d!2214718))

(declare-fun d!2214720 () Bool)

(declare-fun c!1321565 () Bool)

(declare-fun isEmpty!39973 (List!68590) Bool)

(assert (=> d!2214720 (= c!1321565 (isEmpty!39973 s!7408))))

(declare-fun e!4256924 () Bool)

(assert (=> d!2214720 (= (matchZipper!3228 lt!2552273 s!7408) e!4256924)))

(declare-fun b!7080794 () Bool)

(declare-fun nullableZipper!2727 ((Set Context!13368)) Bool)

(assert (=> b!7080794 (= e!4256924 (nullableZipper!2727 lt!2552273))))

(declare-fun b!7080795 () Bool)

(declare-fun head!14436 (List!68590) C!35646)

(declare-fun tail!13899 (List!68590) List!68590)

(assert (=> b!7080795 (= e!4256924 (matchZipper!3228 (derivationStepZipper!3138 lt!2552273 (head!14436 s!7408)) (tail!13899 s!7408)))))

(assert (= (and d!2214720 c!1321565) b!7080794))

(assert (= (and d!2214720 (not c!1321565)) b!7080795))

(declare-fun m!7811690 () Bool)

(assert (=> d!2214720 m!7811690))

(declare-fun m!7811692 () Bool)

(assert (=> b!7080794 m!7811692))

(declare-fun m!7811694 () Bool)

(assert (=> b!7080795 m!7811694))

(assert (=> b!7080795 m!7811694))

(declare-fun m!7811696 () Bool)

(assert (=> b!7080795 m!7811696))

(declare-fun m!7811698 () Bool)

(assert (=> b!7080795 m!7811698))

(assert (=> b!7080795 m!7811696))

(assert (=> b!7080795 m!7811698))

(declare-fun m!7811700 () Bool)

(assert (=> b!7080795 m!7811700))

(assert (=> b!7080733 d!2214720))

(declare-fun bs!1882095 () Bool)

(declare-fun d!2214722 () Bool)

(assert (= bs!1882095 (and d!2214722 b!7080733)))

(declare-fun lambda!427781 () Int)

(assert (=> bs!1882095 (= lambda!427781 lambda!427750)))

(declare-fun bs!1882096 () Bool)

(assert (= bs!1882096 (and d!2214722 d!2214718)))

(assert (=> bs!1882096 (not (= lambda!427781 lambda!427778))))

(assert (=> d!2214722 true))

(assert (=> d!2214722 (exists!3771 lt!2552269 lambda!427781)))

(declare-fun lt!2552324 () Unit!162087)

(declare-fun choose!54474 (List!68592 List!68590) Unit!162087)

(assert (=> d!2214722 (= lt!2552324 (choose!54474 lt!2552269 s!7408))))

(declare-fun content!13876 (List!68592) (Set Context!13368))

(assert (=> d!2214722 (matchZipper!3228 (content!13876 lt!2552269) s!7408)))

(assert (=> d!2214722 (= (lemmaZipperMatchesExistsMatchingContext!609 lt!2552269 s!7408) lt!2552324)))

(declare-fun bs!1882097 () Bool)

(assert (= bs!1882097 d!2214722))

(declare-fun m!7811702 () Bool)

(assert (=> bs!1882097 m!7811702))

(declare-fun m!7811704 () Bool)

(assert (=> bs!1882097 m!7811704))

(declare-fun m!7811706 () Bool)

(assert (=> bs!1882097 m!7811706))

(assert (=> bs!1882097 m!7811706))

(declare-fun m!7811708 () Bool)

(assert (=> bs!1882097 m!7811708))

(assert (=> b!7080733 d!2214722))

(declare-fun d!2214724 () Bool)

(declare-fun e!4256927 () Bool)

(assert (=> d!2214724 e!4256927))

(declare-fun res!2892420 () Bool)

(assert (=> d!2214724 (=> (not res!2892420) (not e!4256927))))

(declare-fun lt!2552327 () List!68592)

(declare-fun noDuplicate!2755 (List!68592) Bool)

(assert (=> d!2214724 (= res!2892420 (noDuplicate!2755 lt!2552327))))

(declare-fun choose!54475 ((Set Context!13368)) List!68592)

(assert (=> d!2214724 (= lt!2552327 (choose!54475 lt!2552270))))

(assert (=> d!2214724 (= (toList!11029 lt!2552270) lt!2552327)))

(declare-fun b!7080798 () Bool)

(assert (=> b!7080798 (= e!4256927 (= (content!13876 lt!2552327) lt!2552270))))

(assert (= (and d!2214724 res!2892420) b!7080798))

(declare-fun m!7811710 () Bool)

(assert (=> d!2214724 m!7811710))

(declare-fun m!7811712 () Bool)

(assert (=> d!2214724 m!7811712))

(declare-fun m!7811714 () Bool)

(assert (=> b!7080798 m!7811714))

(assert (=> b!7080733 d!2214724))

(declare-fun d!2214726 () Bool)

(declare-fun forall!16652 (List!68591 Int) Bool)

(assert (=> d!2214726 (forall!16652 (++!15851 (exprs!7184 lt!2552265) (exprs!7184 ct2!306)) lambda!427752)))

(declare-fun lt!2552330 () Unit!162087)

(declare-fun choose!54476 (List!68591 List!68591 Int) Unit!162087)

(assert (=> d!2214726 (= lt!2552330 (choose!54476 (exprs!7184 lt!2552265) (exprs!7184 ct2!306) lambda!427752))))

(assert (=> d!2214726 (forall!16652 (exprs!7184 lt!2552265) lambda!427752)))

(assert (=> d!2214726 (= (lemmaConcatPreservesForall!999 (exprs!7184 lt!2552265) (exprs!7184 ct2!306) lambda!427752) lt!2552330)))

(declare-fun bs!1882098 () Bool)

(assert (= bs!1882098 d!2214726))

(assert (=> bs!1882098 m!7811634))

(assert (=> bs!1882098 m!7811634))

(declare-fun m!7811716 () Bool)

(assert (=> bs!1882098 m!7811716))

(declare-fun m!7811718 () Bool)

(assert (=> bs!1882098 m!7811718))

(declare-fun m!7811720 () Bool)

(assert (=> bs!1882098 m!7811720))

(assert (=> b!7080737 d!2214726))

(declare-fun e!4256934 () (Set Context!13368))

(declare-fun b!7080809 () Bool)

(declare-fun call!643592 () (Set Context!13368))

(assert (=> b!7080809 (= e!4256934 (set.union call!643592 (derivationStepZipperUp!2272 (Context!13369 (t!382376 (exprs!7184 lt!2552262))) (h!74914 s!7408))))))

(declare-fun b!7080810 () Bool)

(declare-fun e!4256936 () (Set Context!13368))

(assert (=> b!7080810 (= e!4256936 call!643592)))

(declare-fun d!2214728 () Bool)

(declare-fun c!1321573 () Bool)

(declare-fun e!4256935 () Bool)

(assert (=> d!2214728 (= c!1321573 e!4256935)))

(declare-fun res!2892423 () Bool)

(assert (=> d!2214728 (=> (not res!2892423) (not e!4256935))))

(assert (=> d!2214728 (= res!2892423 (is-Cons!68467 (exprs!7184 lt!2552262)))))

(assert (=> d!2214728 (= (derivationStepZipperUp!2272 lt!2552262 (h!74914 s!7408)) e!4256934)))

(declare-fun b!7080811 () Bool)

(assert (=> b!7080811 (= e!4256936 (as set.empty (Set Context!13368)))))

(declare-fun b!7080812 () Bool)

(assert (=> b!7080812 (= e!4256934 e!4256936)))

(declare-fun c!1321572 () Bool)

(assert (=> b!7080812 (= c!1321572 (is-Cons!68467 (exprs!7184 lt!2552262)))))

(declare-fun bm!643587 () Bool)

(declare-fun derivationStepZipperDown!2322 (Regex!17688 Context!13368 C!35646) (Set Context!13368))

(assert (=> bm!643587 (= call!643592 (derivationStepZipperDown!2322 (h!74915 (exprs!7184 lt!2552262)) (Context!13369 (t!382376 (exprs!7184 lt!2552262))) (h!74914 s!7408)))))

(declare-fun b!7080813 () Bool)

(declare-fun nullable!7371 (Regex!17688) Bool)

(assert (=> b!7080813 (= e!4256935 (nullable!7371 (h!74915 (exprs!7184 lt!2552262))))))

(assert (= (and d!2214728 res!2892423) b!7080813))

(assert (= (and d!2214728 c!1321573) b!7080809))

(assert (= (and d!2214728 (not c!1321573)) b!7080812))

(assert (= (and b!7080812 c!1321572) b!7080810))

(assert (= (and b!7080812 (not c!1321572)) b!7080811))

(assert (= (or b!7080809 b!7080810) bm!643587))

(declare-fun m!7811722 () Bool)

(assert (=> b!7080809 m!7811722))

(declare-fun m!7811724 () Bool)

(assert (=> bm!643587 m!7811724))

(declare-fun m!7811726 () Bool)

(assert (=> b!7080813 m!7811726))

(assert (=> b!7080734 d!2214728))

(declare-fun bs!1882099 () Bool)

(declare-fun d!2214730 () Bool)

(assert (= bs!1882099 (and d!2214730 b!7080734)))

(declare-fun lambda!427784 () Int)

(assert (=> bs!1882099 (= lambda!427784 lambda!427753)))

(assert (=> d!2214730 true))

(assert (=> d!2214730 (= (derivationStepZipper!3138 lt!2552263 (h!74914 s!7408)) (flatMap!2614 lt!2552263 lambda!427784))))

(declare-fun bs!1882100 () Bool)

(assert (= bs!1882100 d!2214730))

(declare-fun m!7811728 () Bool)

(assert (=> bs!1882100 m!7811728))

(assert (=> b!7080734 d!2214730))

(declare-fun d!2214732 () Bool)

(declare-fun choose!54477 ((Set Context!13368) Int) (Set Context!13368))

(assert (=> d!2214732 (= (flatMap!2614 lt!2552263 lambda!427753) (choose!54477 lt!2552263 lambda!427753))))

(declare-fun bs!1882101 () Bool)

(assert (= bs!1882101 d!2214732))

(declare-fun m!7811730 () Bool)

(assert (=> bs!1882101 m!7811730))

(assert (=> b!7080734 d!2214732))

(declare-fun d!2214734 () Bool)

(declare-fun dynLambda!27908 (Int Context!13368) (Set Context!13368))

(assert (=> d!2214734 (= (flatMap!2614 lt!2552263 lambda!427753) (dynLambda!27908 lambda!427753 lt!2552262))))

(declare-fun lt!2552333 () Unit!162087)

(declare-fun choose!54478 ((Set Context!13368) Context!13368 Int) Unit!162087)

(assert (=> d!2214734 (= lt!2552333 (choose!54478 lt!2552263 lt!2552262 lambda!427753))))

(assert (=> d!2214734 (= lt!2552263 (set.insert lt!2552262 (as set.empty (Set Context!13368))))))

(assert (=> d!2214734 (= (lemmaFlatMapOnSingletonSet!2123 lt!2552263 lt!2552262 lambda!427753) lt!2552333)))

(declare-fun b_lambda!270539 () Bool)

(assert (=> (not b_lambda!270539) (not d!2214734)))

(declare-fun bs!1882102 () Bool)

(assert (= bs!1882102 d!2214734))

(assert (=> bs!1882102 m!7811606))

(declare-fun m!7811732 () Bool)

(assert (=> bs!1882102 m!7811732))

(declare-fun m!7811734 () Bool)

(assert (=> bs!1882102 m!7811734))

(assert (=> bs!1882102 m!7811596))

(assert (=> b!7080734 d!2214734))

(assert (=> b!7080734 d!2214726))

(declare-fun bs!1882103 () Bool)

(declare-fun d!2214736 () Bool)

(assert (= bs!1882103 (and d!2214736 b!7080731)))

(declare-fun lambda!427787 () Int)

(assert (=> bs!1882103 (= lambda!427787 lambda!427752)))

(assert (=> d!2214736 (= (inv!87080 lt!2552262) (forall!16652 (exprs!7184 lt!2552262) lambda!427787))))

(declare-fun bs!1882104 () Bool)

(assert (= bs!1882104 d!2214736))

(declare-fun m!7811736 () Bool)

(assert (=> bs!1882104 m!7811736))

(assert (=> b!7080739 d!2214736))

(assert (=> b!7080739 d!2214726))

(declare-fun d!2214740 () Bool)

(declare-fun c!1321576 () Bool)

(assert (=> d!2214740 (= c!1321576 (isEmpty!39973 s!7408))))

(declare-fun e!4256937 () Bool)

(assert (=> d!2214740 (= (matchZipper!3228 lt!2552270 s!7408) e!4256937)))

(declare-fun b!7080816 () Bool)

(assert (=> b!7080816 (= e!4256937 (nullableZipper!2727 lt!2552270))))

(declare-fun b!7080817 () Bool)

(assert (=> b!7080817 (= e!4256937 (matchZipper!3228 (derivationStepZipper!3138 lt!2552270 (head!14436 s!7408)) (tail!13899 s!7408)))))

(assert (= (and d!2214740 c!1321576) b!7080816))

(assert (= (and d!2214740 (not c!1321576)) b!7080817))

(assert (=> d!2214740 m!7811690))

(declare-fun m!7811738 () Bool)

(assert (=> b!7080816 m!7811738))

(assert (=> b!7080817 m!7811694))

(assert (=> b!7080817 m!7811694))

(declare-fun m!7811740 () Bool)

(assert (=> b!7080817 m!7811740))

(assert (=> b!7080817 m!7811698))

(assert (=> b!7080817 m!7811740))

(assert (=> b!7080817 m!7811698))

(declare-fun m!7811742 () Bool)

(assert (=> b!7080817 m!7811742))

(assert (=> start!688746 d!2214740))

(declare-fun bs!1882105 () Bool)

(declare-fun d!2214742 () Bool)

(assert (= bs!1882105 (and d!2214742 b!7080731)))

(declare-fun lambda!427792 () Int)

(assert (=> bs!1882105 (= lambda!427792 lambda!427751)))

(assert (=> d!2214742 true))

(declare-fun map!16040 ((Set Context!13368) Int) (Set Context!13368))

(assert (=> d!2214742 (= (appendTo!809 z1!570 ct2!306) (map!16040 z1!570 lambda!427792))))

(declare-fun bs!1882106 () Bool)

(assert (= bs!1882106 d!2214742))

(declare-fun m!7811744 () Bool)

(assert (=> bs!1882106 m!7811744))

(assert (=> start!688746 d!2214742))

(declare-fun bs!1882107 () Bool)

(declare-fun d!2214744 () Bool)

(assert (= bs!1882107 (and d!2214744 b!7080731)))

(declare-fun lambda!427793 () Int)

(assert (=> bs!1882107 (= lambda!427793 lambda!427752)))

(declare-fun bs!1882108 () Bool)

(assert (= bs!1882108 (and d!2214744 d!2214736)))

(assert (=> bs!1882108 (= lambda!427793 lambda!427787)))

(assert (=> d!2214744 (= (inv!87080 ct2!306) (forall!16652 (exprs!7184 ct2!306) lambda!427793))))

(declare-fun bs!1882109 () Bool)

(assert (= bs!1882109 d!2214744))

(declare-fun m!7811746 () Bool)

(assert (=> bs!1882109 m!7811746))

(assert (=> start!688746 d!2214744))

(declare-fun b!7080832 () Bool)

(declare-fun e!4256946 () List!68591)

(assert (=> b!7080832 (= e!4256946 (exprs!7184 ct2!306))))

(declare-fun b!7080833 () Bool)

(assert (=> b!7080833 (= e!4256946 (Cons!68467 (h!74915 (exprs!7184 lt!2552265)) (++!15851 (t!382376 (exprs!7184 lt!2552265)) (exprs!7184 ct2!306))))))

(declare-fun b!7080834 () Bool)

(declare-fun res!2892429 () Bool)

(declare-fun e!4256945 () Bool)

(assert (=> b!7080834 (=> (not res!2892429) (not e!4256945))))

(declare-fun lt!2552338 () List!68591)

(declare-fun size!41260 (List!68591) Int)

(assert (=> b!7080834 (= res!2892429 (= (size!41260 lt!2552338) (+ (size!41260 (exprs!7184 lt!2552265)) (size!41260 (exprs!7184 ct2!306)))))))

(declare-fun d!2214746 () Bool)

(assert (=> d!2214746 e!4256945))

(declare-fun res!2892428 () Bool)

(assert (=> d!2214746 (=> (not res!2892428) (not e!4256945))))

(declare-fun content!13877 (List!68591) (Set Regex!17688))

(assert (=> d!2214746 (= res!2892428 (= (content!13877 lt!2552338) (set.union (content!13877 (exprs!7184 lt!2552265)) (content!13877 (exprs!7184 ct2!306)))))))

(assert (=> d!2214746 (= lt!2552338 e!4256946)))

(declare-fun c!1321583 () Bool)

(assert (=> d!2214746 (= c!1321583 (is-Nil!68467 (exprs!7184 lt!2552265)))))

(assert (=> d!2214746 (= (++!15851 (exprs!7184 lt!2552265) (exprs!7184 ct2!306)) lt!2552338)))

(declare-fun b!7080835 () Bool)

(assert (=> b!7080835 (= e!4256945 (or (not (= (exprs!7184 ct2!306) Nil!68467)) (= lt!2552338 (exprs!7184 lt!2552265))))))

(assert (= (and d!2214746 c!1321583) b!7080832))

(assert (= (and d!2214746 (not c!1321583)) b!7080833))

(assert (= (and d!2214746 res!2892428) b!7080834))

(assert (= (and b!7080834 res!2892429) b!7080835))

(declare-fun m!7811760 () Bool)

(assert (=> b!7080833 m!7811760))

(declare-fun m!7811762 () Bool)

(assert (=> b!7080834 m!7811762))

(declare-fun m!7811764 () Bool)

(assert (=> b!7080834 m!7811764))

(declare-fun m!7811766 () Bool)

(assert (=> b!7080834 m!7811766))

(declare-fun m!7811768 () Bool)

(assert (=> d!2214746 m!7811768))

(declare-fun m!7811770 () Bool)

(assert (=> d!2214746 m!7811770))

(declare-fun m!7811772 () Bool)

(assert (=> d!2214746 m!7811772))

(assert (=> b!7080731 d!2214746))

(assert (=> b!7080731 d!2214726))

(declare-fun d!2214750 () Bool)

(declare-fun e!4256949 () Bool)

(assert (=> d!2214750 e!4256949))

(declare-fun res!2892432 () Bool)

(assert (=> d!2214750 (=> (not res!2892432) (not e!4256949))))

(declare-fun lt!2552341 () Context!13368)

(declare-fun dynLambda!27909 (Int Context!13368) Context!13368)

(assert (=> d!2214750 (= res!2892432 (= lt!2552267 (dynLambda!27909 lambda!427751 lt!2552341)))))

(declare-fun choose!54479 ((Set Context!13368) Int Context!13368) Context!13368)

(assert (=> d!2214750 (= lt!2552341 (choose!54479 z1!570 lambda!427751 lt!2552267))))

(assert (=> d!2214750 (set.member lt!2552267 (map!16040 z1!570 lambda!427751))))

(assert (=> d!2214750 (= (mapPost2!517 z1!570 lambda!427751 lt!2552267) lt!2552341)))

(declare-fun b!7080839 () Bool)

(assert (=> b!7080839 (= e!4256949 (set.member lt!2552341 z1!570))))

(assert (= (and d!2214750 res!2892432) b!7080839))

(declare-fun b_lambda!270541 () Bool)

(assert (=> (not b_lambda!270541) (not d!2214750)))

(declare-fun m!7811774 () Bool)

(assert (=> d!2214750 m!7811774))

(declare-fun m!7811776 () Bool)

(assert (=> d!2214750 m!7811776))

(declare-fun m!7811778 () Bool)

(assert (=> d!2214750 m!7811778))

(declare-fun m!7811780 () Bool)

(assert (=> d!2214750 m!7811780))

(declare-fun m!7811782 () Bool)

(assert (=> b!7080839 m!7811782))

(assert (=> b!7080731 d!2214750))

(declare-fun bs!1882110 () Bool)

(declare-fun d!2214752 () Bool)

(assert (= bs!1882110 (and d!2214752 b!7080731)))

(declare-fun lambda!427794 () Int)

(assert (=> bs!1882110 (= lambda!427794 lambda!427752)))

(declare-fun bs!1882111 () Bool)

(assert (= bs!1882111 (and d!2214752 d!2214736)))

(assert (=> bs!1882111 (= lambda!427794 lambda!427787)))

(declare-fun bs!1882112 () Bool)

(assert (= bs!1882112 (and d!2214752 d!2214744)))

(assert (=> bs!1882112 (= lambda!427794 lambda!427793)))

(assert (=> d!2214752 (= (inv!87080 setElem!50488) (forall!16652 (exprs!7184 setElem!50488) lambda!427794))))

(declare-fun bs!1882113 () Bool)

(assert (= bs!1882113 d!2214752))

(declare-fun m!7811784 () Bool)

(assert (=> bs!1882113 m!7811784))

(assert (=> setNonEmpty!50488 d!2214752))

(declare-fun b!7080844 () Bool)

(declare-fun e!4256952 () Bool)

(declare-fun tp!1943459 () Bool)

(declare-fun tp!1943460 () Bool)

(assert (=> b!7080844 (= e!4256952 (and tp!1943459 tp!1943460))))

(assert (=> b!7080732 (= tp!1943439 e!4256952)))

(assert (= (and b!7080732 (is-Cons!68467 (exprs!7184 ct2!306))) b!7080844))

(declare-fun b!7080845 () Bool)

(declare-fun e!4256953 () Bool)

(declare-fun tp!1943461 () Bool)

(declare-fun tp!1943462 () Bool)

(assert (=> b!7080845 (= e!4256953 (and tp!1943461 tp!1943462))))

(assert (=> b!7080729 (= tp!1943442 e!4256953)))

(assert (= (and b!7080729 (is-Cons!68467 (exprs!7184 setElem!50488))) b!7080845))

(declare-fun condSetEmpty!50494 () Bool)

(assert (=> setNonEmpty!50488 (= condSetEmpty!50494 (= setRest!50488 (as set.empty (Set Context!13368))))))

(declare-fun setRes!50494 () Bool)

(assert (=> setNonEmpty!50488 (= tp!1943441 setRes!50494)))

(declare-fun setIsEmpty!50494 () Bool)

(assert (=> setIsEmpty!50494 setRes!50494))

(declare-fun setElem!50494 () Context!13368)

(declare-fun e!4256956 () Bool)

(declare-fun setNonEmpty!50494 () Bool)

(declare-fun tp!1943468 () Bool)

(assert (=> setNonEmpty!50494 (= setRes!50494 (and tp!1943468 (inv!87080 setElem!50494) e!4256956))))

(declare-fun setRest!50494 () (Set Context!13368))

(assert (=> setNonEmpty!50494 (= setRest!50488 (set.union (set.insert setElem!50494 (as set.empty (Set Context!13368))) setRest!50494))))

(declare-fun b!7080850 () Bool)

(declare-fun tp!1943467 () Bool)

(assert (=> b!7080850 (= e!4256956 tp!1943467)))

(assert (= (and setNonEmpty!50488 condSetEmpty!50494) setIsEmpty!50494))

(assert (= (and setNonEmpty!50488 (not condSetEmpty!50494)) setNonEmpty!50494))

(assert (= setNonEmpty!50494 b!7080850))

(declare-fun m!7811786 () Bool)

(assert (=> setNonEmpty!50494 m!7811786))

(declare-fun b!7080855 () Bool)

(declare-fun e!4256959 () Bool)

(declare-fun tp!1943471 () Bool)

(assert (=> b!7080855 (= e!4256959 (and tp_is_empty!44601 tp!1943471))))

(assert (=> b!7080736 (= tp!1943440 e!4256959)))

(assert (= (and b!7080736 (is-Cons!68466 (t!382375 s!7408))) b!7080855))

(declare-fun b_lambda!270543 () Bool)

(assert (= b_lambda!270537 (or b!7080733 b_lambda!270543)))

(declare-fun bs!1882114 () Bool)

(declare-fun d!2214754 () Bool)

(assert (= bs!1882114 (and d!2214754 b!7080733)))

(assert (=> bs!1882114 (= (dynLambda!27906 lambda!427750 lt!2552321) (matchZipper!3228 (set.insert lt!2552321 (as set.empty (Set Context!13368))) s!7408))))

(declare-fun m!7811788 () Bool)

(assert (=> bs!1882114 m!7811788))

(assert (=> bs!1882114 m!7811788))

(declare-fun m!7811790 () Bool)

(assert (=> bs!1882114 m!7811790))

(assert (=> d!2214716 d!2214754))

(declare-fun b_lambda!270545 () Bool)

(assert (= b_lambda!270541 (or b!7080731 b_lambda!270545)))

(declare-fun bs!1882115 () Bool)

(declare-fun d!2214756 () Bool)

(assert (= bs!1882115 (and d!2214756 b!7080731)))

(declare-fun lt!2552342 () Unit!162087)

(assert (=> bs!1882115 (= lt!2552342 (lemmaConcatPreservesForall!999 (exprs!7184 lt!2552341) (exprs!7184 ct2!306) lambda!427752))))

(assert (=> bs!1882115 (= (dynLambda!27909 lambda!427751 lt!2552341) (Context!13369 (++!15851 (exprs!7184 lt!2552341) (exprs!7184 ct2!306))))))

(declare-fun m!7811792 () Bool)

(assert (=> bs!1882115 m!7811792))

(declare-fun m!7811794 () Bool)

(assert (=> bs!1882115 m!7811794))

(assert (=> d!2214750 d!2214756))

(declare-fun b_lambda!270547 () Bool)

(assert (= b_lambda!270539 (or b!7080734 b_lambda!270547)))

(declare-fun bs!1882116 () Bool)

(declare-fun d!2214758 () Bool)

(assert (= bs!1882116 (and d!2214758 b!7080734)))

(assert (=> bs!1882116 (= (dynLambda!27908 lambda!427753 lt!2552262) (derivationStepZipperUp!2272 lt!2552262 (h!74914 s!7408)))))

(assert (=> bs!1882116 m!7811610))

(assert (=> d!2214734 d!2214758))

(push 1)

(assert (not b!7080795))

(assert (not b!7080834))

(assert (not d!2214750))

(assert (not d!2214726))

(assert (not d!2214730))

(assert (not b!7080813))

(assert (not b!7080794))

(assert (not d!2214724))

(assert (not d!2214732))

(assert (not b!7080798))

(assert (not b!7080845))

(assert (not bm!643587))

(assert (not b!7080855))

(assert (not b!7080844))

(assert (not b!7080816))

(assert (not d!2214716))

(assert (not d!2214740))

(assert (not b!7080850))

(assert (not b_lambda!270547))

(assert (not b_lambda!270545))

(assert (not d!2214734))

(assert (not d!2214718))

(assert (not bs!1882116))

(assert (not b!7080809))

(assert (not bs!1882114))

(assert (not b!7080817))

(assert (not d!2214752))

(assert tp_is_empty!44601)

(assert (not d!2214736))

(assert (not d!2214742))

(assert (not bs!1882115))

(assert (not setNonEmpty!50494))

(assert (not b!7080833))

(assert (not d!2214744))

(assert (not d!2214722))

(assert (not b_lambda!270543))

(assert (not d!2214720))

(assert (not d!2214746))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


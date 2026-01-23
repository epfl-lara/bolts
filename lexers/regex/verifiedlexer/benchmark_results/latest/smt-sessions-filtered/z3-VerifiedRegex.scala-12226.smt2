; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!688956 () Bool)

(assert start!688956)

(declare-fun b!7081724 () Bool)

(assert (=> b!7081724 true))

(declare-fun b!7081726 () Bool)

(assert (=> b!7081726 true))

(declare-fun b!7081729 () Bool)

(assert (=> b!7081729 true))

(declare-fun bs!1882236 () Bool)

(declare-fun b!7081718 () Bool)

(assert (= bs!1882236 (and b!7081718 b!7081724)))

(declare-datatypes ((C!35668 0))(
  ( (C!35669 (val!27536 Int)) )
))
(declare-datatypes ((List!68623 0))(
  ( (Nil!68499) (Cons!68499 (h!74947 C!35668) (t!382408 List!68623)) )
))
(declare-fun s!7408 () List!68623)

(declare-fun lambda!428115 () Int)

(declare-fun lambda!428111 () Int)

(assert (=> bs!1882236 (= (= Nil!68499 s!7408) (= lambda!428115 lambda!428111))))

(declare-fun b!7081717 () Bool)

(declare-fun e!4257486 () Bool)

(declare-fun e!4257488 () Bool)

(assert (=> b!7081717 (= e!4257486 e!4257488)))

(declare-fun res!2892893 () Bool)

(assert (=> b!7081717 (=> res!2892893 e!4257488)))

(declare-datatypes ((Regex!17699 0))(
  ( (ElementMatch!17699 (c!1321788 C!35668)) (Concat!26544 (regOne!35910 Regex!17699) (regTwo!35910 Regex!17699)) (EmptyExpr!17699) (Star!17699 (reg!18028 Regex!17699)) (EmptyLang!17699) (Union!17699 (regOne!35911 Regex!17699) (regTwo!35911 Regex!17699)) )
))
(declare-datatypes ((List!68624 0))(
  ( (Nil!68500) (Cons!68500 (h!74948 Regex!17699) (t!382409 List!68624)) )
))
(declare-datatypes ((Context!13390 0))(
  ( (Context!13391 (exprs!7195 List!68624)) )
))
(declare-fun lt!2553005 () Context!13390)

(declare-fun ct2!306 () Context!13390)

(assert (=> b!7081717 (= res!2892893 (not (= lt!2553005 ct2!306)))))

(declare-fun lt!2553016 () Context!13390)

(declare-fun lambda!428113 () Int)

(declare-datatypes ((Unit!162109 0))(
  ( (Unit!162110) )
))
(declare-fun lt!2553004 () Unit!162109)

(declare-fun lemmaConcatPreservesForall!1010 (List!68624 List!68624 Int) Unit!162109)

(assert (=> b!7081717 (= lt!2553004 (lemmaConcatPreservesForall!1010 (exprs!7195 lt!2553016) (exprs!7195 ct2!306) lambda!428113))))

(declare-fun e!4257480 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun z1!570 () (InoxSet Context!13390))

(declare-datatypes ((List!68625 0))(
  ( (Nil!68501) (Cons!68501 (h!74949 Context!13390) (t!382410 List!68625)) )
))
(declare-fun exists!3787 (List!68625 Int) Bool)

(declare-fun toList!11040 ((InoxSet Context!13390)) List!68625)

(assert (=> b!7081718 (= e!4257480 (exists!3787 (toList!11040 z1!570) lambda!428115))))

(declare-fun exists!3788 ((InoxSet Context!13390) Int) Bool)

(assert (=> b!7081718 (exists!3788 z1!570 lambda!428115)))

(declare-fun lt!2553011 () Unit!162109)

(declare-fun lemmaContainsThenExists!181 ((InoxSet Context!13390) Context!13390 Int) Unit!162109)

(assert (=> b!7081718 (= lt!2553011 (lemmaContainsThenExists!181 z1!570 lt!2553016 lambda!428115))))

(declare-fun lt!2553006 () (InoxSet Context!13390))

(declare-fun lt!2553000 () (InoxSet Context!13390))

(declare-datatypes ((tuple2!68336 0))(
  ( (tuple2!68337 (_1!37471 List!68623) (_2!37471 List!68623)) )
))
(declare-datatypes ((Option!17000 0))(
  ( (None!16999) (Some!16999 (v!53293 tuple2!68336)) )
))
(declare-fun isDefined!13701 (Option!17000) Bool)

(declare-fun findConcatSeparationZippers!516 ((InoxSet Context!13390) (InoxSet Context!13390) List!68623 List!68623 List!68623) Option!17000)

(assert (=> b!7081718 (isDefined!13701 (findConcatSeparationZippers!516 lt!2553006 lt!2553000 Nil!68499 s!7408 s!7408))))

(declare-fun lt!2553015 () Unit!162109)

(declare-fun lemmaZ1MatchesS1AndZ2MatchesS2ThenFindSeparationZipperFindsAtLeastThem!102 ((InoxSet Context!13390) (InoxSet Context!13390) List!68623 List!68623 List!68623 List!68623 List!68623) Unit!162109)

(assert (=> b!7081718 (= lt!2553015 (lemmaZ1MatchesS1AndZ2MatchesS2ThenFindSeparationZipperFindsAtLeastThem!102 lt!2553006 lt!2553000 Nil!68499 s!7408 s!7408 Nil!68499 s!7408))))

(declare-fun b!7081719 () Bool)

(declare-fun res!2892890 () Bool)

(declare-fun e!4257484 () Bool)

(assert (=> b!7081719 (=> res!2892890 e!4257484)))

(declare-fun lt!2553003 () Context!13390)

(declare-fun lt!2553009 () (InoxSet Context!13390))

(assert (=> b!7081719 (= res!2892890 (not (select lt!2553009 lt!2553003)))))

(declare-fun setRes!50539 () Bool)

(declare-fun e!4257490 () Bool)

(declare-fun setNonEmpty!50539 () Bool)

(declare-fun tp!1943674 () Bool)

(declare-fun setElem!50539 () Context!13390)

(declare-fun inv!87106 (Context!13390) Bool)

(assert (=> setNonEmpty!50539 (= setRes!50539 (and tp!1943674 (inv!87106 setElem!50539) e!4257490))))

(declare-fun setRest!50539 () (InoxSet Context!13390))

(assert (=> setNonEmpty!50539 (= z1!570 ((_ map or) (store ((as const (Array Context!13390 Bool)) false) setElem!50539 true) setRest!50539))))

(declare-fun b!7081720 () Bool)

(declare-fun tp!1943676 () Bool)

(assert (=> b!7081720 (= e!4257490 tp!1943676)))

(declare-fun b!7081721 () Bool)

(declare-fun e!4257489 () Bool)

(declare-fun tp_is_empty!44623 () Bool)

(declare-fun tp!1943673 () Bool)

(assert (=> b!7081721 (= e!4257489 (and tp_is_empty!44623 tp!1943673))))

(declare-fun b!7081722 () Bool)

(declare-fun e!4257482 () Bool)

(declare-fun tp!1943675 () Bool)

(assert (=> b!7081722 (= e!4257482 tp!1943675)))

(declare-fun b!7081723 () Bool)

(declare-fun e!4257483 () Bool)

(assert (=> b!7081723 (= e!4257483 e!4257480)))

(declare-fun res!2892889 () Bool)

(assert (=> b!7081723 (=> res!2892889 e!4257480)))

(declare-fun lt!2553001 () Bool)

(assert (=> b!7081723 (= res!2892889 (not lt!2553001))))

(assert (=> b!7081723 (= lt!2553001 true)))

(declare-fun matchZipper!3239 ((InoxSet Context!13390) List!68623) Bool)

(assert (=> b!7081723 (= lt!2553001 (matchZipper!3239 lt!2553006 Nil!68499))))

(declare-fun lt!2553002 () Unit!162109)

(declare-fun lemmaZipperOfEmptyContextMatchesEmptyString!30 ((InoxSet Context!13390) List!68623) Unit!162109)

(assert (=> b!7081723 (= lt!2553002 (lemmaZipperOfEmptyContextMatchesEmptyString!30 lt!2553006 Nil!68499))))

(assert (=> b!7081723 (= lt!2553006 (store ((as const (Array Context!13390 Bool)) false) lt!2553016 true))))

(declare-fun res!2892896 () Bool)

(declare-fun e!4257487 () Bool)

(assert (=> start!688956 (=> (not res!2892896) (not e!4257487))))

(assert (=> start!688956 (= res!2892896 (matchZipper!3239 lt!2553009 s!7408))))

(declare-fun appendTo!820 ((InoxSet Context!13390) Context!13390) (InoxSet Context!13390))

(assert (=> start!688956 (= lt!2553009 (appendTo!820 z1!570 ct2!306))))

(assert (=> start!688956 e!4257487))

(declare-fun condSetEmpty!50539 () Bool)

(assert (=> start!688956 (= condSetEmpty!50539 (= z1!570 ((as const (Array Context!13390 Bool)) false)))))

(assert (=> start!688956 setRes!50539))

(assert (=> start!688956 (and (inv!87106 ct2!306) e!4257482)))

(assert (=> start!688956 e!4257489))

(assert (=> b!7081724 (= e!4257487 (not e!4257484))))

(declare-fun res!2892892 () Bool)

(assert (=> b!7081724 (=> res!2892892 e!4257484)))

(declare-fun lt!2553014 () (InoxSet Context!13390))

(assert (=> b!7081724 (= res!2892892 (not (matchZipper!3239 lt!2553014 s!7408)))))

(assert (=> b!7081724 (= lt!2553014 (store ((as const (Array Context!13390 Bool)) false) lt!2553003 true))))

(declare-fun getWitness!1831 ((InoxSet Context!13390) Int) Context!13390)

(assert (=> b!7081724 (= lt!2553003 (getWitness!1831 lt!2553009 lambda!428111))))

(declare-fun lt!2552997 () List!68625)

(assert (=> b!7081724 (exists!3787 lt!2552997 lambda!428111)))

(declare-fun lt!2553007 () Unit!162109)

(declare-fun lemmaZipperMatchesExistsMatchingContext!620 (List!68625 List!68623) Unit!162109)

(assert (=> b!7081724 (= lt!2553007 (lemmaZipperMatchesExistsMatchingContext!620 lt!2552997 s!7408))))

(assert (=> b!7081724 (= lt!2552997 (toList!11040 lt!2553009))))

(declare-fun b!7081725 () Bool)

(declare-fun res!2892888 () Bool)

(assert (=> b!7081725 (=> res!2892888 e!4257486)))

(get-info :version)

(assert (=> b!7081725 (= res!2892888 ((_ is Cons!68500) (exprs!7195 lt!2553016)))))

(declare-fun setIsEmpty!50539 () Bool)

(assert (=> setIsEmpty!50539 setRes!50539))

(declare-fun e!4257485 () Bool)

(assert (=> b!7081726 (= e!4257484 e!4257485)))

(declare-fun res!2892894 () Bool)

(assert (=> b!7081726 (=> res!2892894 e!4257485)))

(assert (=> b!7081726 (= res!2892894 (or (not (= lt!2553005 lt!2553003)) (not (select z1!570 lt!2553016))))))

(declare-fun ++!15866 (List!68624 List!68624) List!68624)

(assert (=> b!7081726 (= lt!2553005 (Context!13391 (++!15866 (exprs!7195 lt!2553016) (exprs!7195 ct2!306))))))

(declare-fun lt!2553008 () Unit!162109)

(assert (=> b!7081726 (= lt!2553008 (lemmaConcatPreservesForall!1010 (exprs!7195 lt!2553016) (exprs!7195 ct2!306) lambda!428113))))

(declare-fun lambda!428112 () Int)

(declare-fun mapPost2!528 ((InoxSet Context!13390) Int Context!13390) Context!13390)

(assert (=> b!7081726 (= lt!2553016 (mapPost2!528 z1!570 lambda!428112 lt!2553003))))

(declare-fun b!7081727 () Bool)

(declare-fun res!2892898 () Bool)

(assert (=> b!7081727 (=> (not res!2892898) (not e!4257487))))

(assert (=> b!7081727 (= res!2892898 ((_ is Cons!68499) s!7408))))

(declare-fun b!7081728 () Bool)

(declare-fun e!4257481 () Bool)

(assert (=> b!7081728 (= e!4257485 e!4257481)))

(declare-fun res!2892897 () Bool)

(assert (=> b!7081728 (=> res!2892897 e!4257481)))

(declare-fun lt!2552998 () (InoxSet Context!13390))

(assert (=> b!7081728 (= res!2892897 (not (= lt!2552998 lt!2553014)))))

(assert (=> b!7081728 (= lt!2552998 (store ((as const (Array Context!13390 Bool)) false) lt!2553005 true))))

(declare-fun lt!2552999 () Unit!162109)

(assert (=> b!7081728 (= lt!2552999 (lemmaConcatPreservesForall!1010 (exprs!7195 lt!2553016) (exprs!7195 ct2!306) lambda!428113))))

(assert (=> b!7081729 (= e!4257481 e!4257486)))

(declare-fun res!2892895 () Bool)

(assert (=> b!7081729 (=> res!2892895 e!4257486)))

(declare-fun lt!2553012 () (InoxSet Context!13390))

(declare-fun derivationStepZipper!3149 ((InoxSet Context!13390) C!35668) (InoxSet Context!13390))

(assert (=> b!7081729 (= res!2892895 (not (= (derivationStepZipper!3149 lt!2552998 (h!74947 s!7408)) lt!2553012)))))

(declare-fun lambda!428114 () Int)

(declare-fun flatMap!2625 ((InoxSet Context!13390) Int) (InoxSet Context!13390))

(declare-fun derivationStepZipperUp!2283 (Context!13390 C!35668) (InoxSet Context!13390))

(assert (=> b!7081729 (= (flatMap!2625 lt!2552998 lambda!428114) (derivationStepZipperUp!2283 lt!2553005 (h!74947 s!7408)))))

(declare-fun lt!2553013 () Unit!162109)

(declare-fun lemmaFlatMapOnSingletonSet!2134 ((InoxSet Context!13390) Context!13390 Int) Unit!162109)

(assert (=> b!7081729 (= lt!2553013 (lemmaFlatMapOnSingletonSet!2134 lt!2552998 lt!2553005 lambda!428114))))

(assert (=> b!7081729 (= lt!2553012 (derivationStepZipperUp!2283 lt!2553005 (h!74947 s!7408)))))

(declare-fun lt!2553010 () Unit!162109)

(assert (=> b!7081729 (= lt!2553010 (lemmaConcatPreservesForall!1010 (exprs!7195 lt!2553016) (exprs!7195 ct2!306) lambda!428113))))

(declare-fun b!7081730 () Bool)

(assert (=> b!7081730 (= e!4257488 e!4257483)))

(declare-fun res!2892891 () Bool)

(assert (=> b!7081730 (=> res!2892891 e!4257483)))

(assert (=> b!7081730 (= res!2892891 (not (matchZipper!3239 lt!2553000 s!7408)))))

(assert (=> b!7081730 (= lt!2553000 (store ((as const (Array Context!13390 Bool)) false) ct2!306 true))))

(assert (= (and start!688956 res!2892896) b!7081727))

(assert (= (and b!7081727 res!2892898) b!7081724))

(assert (= (and b!7081724 (not res!2892892)) b!7081719))

(assert (= (and b!7081719 (not res!2892890)) b!7081726))

(assert (= (and b!7081726 (not res!2892894)) b!7081728))

(assert (= (and b!7081728 (not res!2892897)) b!7081729))

(assert (= (and b!7081729 (not res!2892895)) b!7081725))

(assert (= (and b!7081725 (not res!2892888)) b!7081717))

(assert (= (and b!7081717 (not res!2892893)) b!7081730))

(assert (= (and b!7081730 (not res!2892891)) b!7081723))

(assert (= (and b!7081723 (not res!2892889)) b!7081718))

(assert (= (and start!688956 condSetEmpty!50539) setIsEmpty!50539))

(assert (= (and start!688956 (not condSetEmpty!50539)) setNonEmpty!50539))

(assert (= setNonEmpty!50539 b!7081720))

(assert (= start!688956 b!7081722))

(assert (= (and start!688956 ((_ is Cons!68499) s!7408)) b!7081721))

(declare-fun m!7812904 () Bool)

(assert (=> b!7081723 m!7812904))

(declare-fun m!7812906 () Bool)

(assert (=> b!7081723 m!7812906))

(declare-fun m!7812908 () Bool)

(assert (=> b!7081723 m!7812908))

(declare-fun m!7812910 () Bool)

(assert (=> b!7081717 m!7812910))

(declare-fun m!7812912 () Bool)

(assert (=> b!7081728 m!7812912))

(assert (=> b!7081728 m!7812910))

(declare-fun m!7812914 () Bool)

(assert (=> b!7081719 m!7812914))

(declare-fun m!7812916 () Bool)

(assert (=> b!7081729 m!7812916))

(assert (=> b!7081729 m!7812910))

(declare-fun m!7812918 () Bool)

(assert (=> b!7081729 m!7812918))

(declare-fun m!7812920 () Bool)

(assert (=> b!7081729 m!7812920))

(declare-fun m!7812922 () Bool)

(assert (=> b!7081729 m!7812922))

(declare-fun m!7812924 () Bool)

(assert (=> b!7081730 m!7812924))

(declare-fun m!7812926 () Bool)

(assert (=> b!7081730 m!7812926))

(declare-fun m!7812928 () Bool)

(assert (=> start!688956 m!7812928))

(declare-fun m!7812930 () Bool)

(assert (=> start!688956 m!7812930))

(declare-fun m!7812932 () Bool)

(assert (=> start!688956 m!7812932))

(declare-fun m!7812934 () Bool)

(assert (=> b!7081726 m!7812934))

(declare-fun m!7812936 () Bool)

(assert (=> b!7081726 m!7812936))

(assert (=> b!7081726 m!7812910))

(declare-fun m!7812938 () Bool)

(assert (=> b!7081726 m!7812938))

(declare-fun m!7812940 () Bool)

(assert (=> b!7081718 m!7812940))

(declare-fun m!7812942 () Bool)

(assert (=> b!7081718 m!7812942))

(assert (=> b!7081718 m!7812940))

(declare-fun m!7812944 () Bool)

(assert (=> b!7081718 m!7812944))

(declare-fun m!7812946 () Bool)

(assert (=> b!7081718 m!7812946))

(declare-fun m!7812948 () Bool)

(assert (=> b!7081718 m!7812948))

(assert (=> b!7081718 m!7812944))

(declare-fun m!7812950 () Bool)

(assert (=> b!7081718 m!7812950))

(declare-fun m!7812952 () Bool)

(assert (=> b!7081718 m!7812952))

(declare-fun m!7812954 () Bool)

(assert (=> setNonEmpty!50539 m!7812954))

(declare-fun m!7812956 () Bool)

(assert (=> b!7081724 m!7812956))

(declare-fun m!7812958 () Bool)

(assert (=> b!7081724 m!7812958))

(declare-fun m!7812960 () Bool)

(assert (=> b!7081724 m!7812960))

(declare-fun m!7812962 () Bool)

(assert (=> b!7081724 m!7812962))

(declare-fun m!7812964 () Bool)

(assert (=> b!7081724 m!7812964))

(declare-fun m!7812966 () Bool)

(assert (=> b!7081724 m!7812966))

(check-sat (not b!7081730) (not b!7081729) (not b!7081721) (not b!7081720) (not b!7081718) (not setNonEmpty!50539) (not b!7081723) (not start!688956) tp_is_empty!44623 (not b!7081724) (not b!7081722) (not b!7081728) (not b!7081726) (not b!7081717))
(check-sat)
(get-model)

(declare-fun d!2214989 () Bool)

(declare-fun forall!16658 (List!68624 Int) Bool)

(assert (=> d!2214989 (forall!16658 (++!15866 (exprs!7195 lt!2553016) (exprs!7195 ct2!306)) lambda!428113)))

(declare-fun lt!2553019 () Unit!162109)

(declare-fun choose!54497 (List!68624 List!68624 Int) Unit!162109)

(assert (=> d!2214989 (= lt!2553019 (choose!54497 (exprs!7195 lt!2553016) (exprs!7195 ct2!306) lambda!428113))))

(assert (=> d!2214989 (forall!16658 (exprs!7195 lt!2553016) lambda!428113)))

(assert (=> d!2214989 (= (lemmaConcatPreservesForall!1010 (exprs!7195 lt!2553016) (exprs!7195 ct2!306) lambda!428113) lt!2553019)))

(declare-fun bs!1882237 () Bool)

(assert (= bs!1882237 d!2214989))

(assert (=> bs!1882237 m!7812936))

(assert (=> bs!1882237 m!7812936))

(declare-fun m!7812968 () Bool)

(assert (=> bs!1882237 m!7812968))

(declare-fun m!7812970 () Bool)

(assert (=> bs!1882237 m!7812970))

(declare-fun m!7812972 () Bool)

(assert (=> bs!1882237 m!7812972))

(assert (=> b!7081729 d!2214989))

(declare-fun bs!1882238 () Bool)

(declare-fun d!2214991 () Bool)

(assert (= bs!1882238 (and d!2214991 b!7081729)))

(declare-fun lambda!428118 () Int)

(assert (=> bs!1882238 (= lambda!428118 lambda!428114)))

(assert (=> d!2214991 true))

(assert (=> d!2214991 (= (derivationStepZipper!3149 lt!2552998 (h!74947 s!7408)) (flatMap!2625 lt!2552998 lambda!428118))))

(declare-fun bs!1882239 () Bool)

(assert (= bs!1882239 d!2214991))

(declare-fun m!7812974 () Bool)

(assert (=> bs!1882239 m!7812974))

(assert (=> b!7081729 d!2214991))

(declare-fun d!2214993 () Bool)

(declare-fun dynLambda!27920 (Int Context!13390) (InoxSet Context!13390))

(assert (=> d!2214993 (= (flatMap!2625 lt!2552998 lambda!428114) (dynLambda!27920 lambda!428114 lt!2553005))))

(declare-fun lt!2553022 () Unit!162109)

(declare-fun choose!54498 ((InoxSet Context!13390) Context!13390 Int) Unit!162109)

(assert (=> d!2214993 (= lt!2553022 (choose!54498 lt!2552998 lt!2553005 lambda!428114))))

(assert (=> d!2214993 (= lt!2552998 (store ((as const (Array Context!13390 Bool)) false) lt!2553005 true))))

(assert (=> d!2214993 (= (lemmaFlatMapOnSingletonSet!2134 lt!2552998 lt!2553005 lambda!428114) lt!2553022)))

(declare-fun b_lambda!270609 () Bool)

(assert (=> (not b_lambda!270609) (not d!2214993)))

(declare-fun bs!1882240 () Bool)

(assert (= bs!1882240 d!2214993))

(assert (=> bs!1882240 m!7812918))

(declare-fun m!7812976 () Bool)

(assert (=> bs!1882240 m!7812976))

(declare-fun m!7812978 () Bool)

(assert (=> bs!1882240 m!7812978))

(assert (=> bs!1882240 m!7812912))

(assert (=> b!7081729 d!2214993))

(declare-fun b!7081749 () Bool)

(declare-fun e!4257499 () (InoxSet Context!13390))

(declare-fun e!4257500 () (InoxSet Context!13390))

(assert (=> b!7081749 (= e!4257499 e!4257500)))

(declare-fun c!1321795 () Bool)

(assert (=> b!7081749 (= c!1321795 ((_ is Cons!68500) (exprs!7195 lt!2553005)))))

(declare-fun call!643610 () (InoxSet Context!13390))

(declare-fun b!7081750 () Bool)

(assert (=> b!7081750 (= e!4257499 ((_ map or) call!643610 (derivationStepZipperUp!2283 (Context!13391 (t!382409 (exprs!7195 lt!2553005))) (h!74947 s!7408))))))

(declare-fun bm!643605 () Bool)

(declare-fun derivationStepZipperDown!2326 (Regex!17699 Context!13390 C!35668) (InoxSet Context!13390))

(assert (=> bm!643605 (= call!643610 (derivationStepZipperDown!2326 (h!74948 (exprs!7195 lt!2553005)) (Context!13391 (t!382409 (exprs!7195 lt!2553005))) (h!74947 s!7408)))))

(declare-fun b!7081751 () Bool)

(assert (=> b!7081751 (= e!4257500 call!643610)))

(declare-fun b!7081752 () Bool)

(declare-fun e!4257498 () Bool)

(declare-fun nullable!7375 (Regex!17699) Bool)

(assert (=> b!7081752 (= e!4257498 (nullable!7375 (h!74948 (exprs!7195 lt!2553005))))))

(declare-fun b!7081753 () Bool)

(assert (=> b!7081753 (= e!4257500 ((as const (Array Context!13390 Bool)) false))))

(declare-fun d!2214997 () Bool)

(declare-fun c!1321796 () Bool)

(assert (=> d!2214997 (= c!1321796 e!4257498)))

(declare-fun res!2892903 () Bool)

(assert (=> d!2214997 (=> (not res!2892903) (not e!4257498))))

(assert (=> d!2214997 (= res!2892903 ((_ is Cons!68500) (exprs!7195 lt!2553005)))))

(assert (=> d!2214997 (= (derivationStepZipperUp!2283 lt!2553005 (h!74947 s!7408)) e!4257499)))

(assert (= (and d!2214997 res!2892903) b!7081752))

(assert (= (and d!2214997 c!1321796) b!7081750))

(assert (= (and d!2214997 (not c!1321796)) b!7081749))

(assert (= (and b!7081749 c!1321795) b!7081751))

(assert (= (and b!7081749 (not c!1321795)) b!7081753))

(assert (= (or b!7081750 b!7081751) bm!643605))

(declare-fun m!7812988 () Bool)

(assert (=> b!7081750 m!7812988))

(declare-fun m!7812990 () Bool)

(assert (=> bm!643605 m!7812990))

(declare-fun m!7812992 () Bool)

(assert (=> b!7081752 m!7812992))

(assert (=> b!7081729 d!2214997))

(declare-fun d!2215003 () Bool)

(declare-fun choose!54500 ((InoxSet Context!13390) Int) (InoxSet Context!13390))

(assert (=> d!2215003 (= (flatMap!2625 lt!2552998 lambda!428114) (choose!54500 lt!2552998 lambda!428114))))

(declare-fun bs!1882243 () Bool)

(assert (= bs!1882243 d!2215003))

(declare-fun m!7812994 () Bool)

(assert (=> bs!1882243 m!7812994))

(assert (=> b!7081729 d!2215003))

(declare-fun d!2215005 () Bool)

(declare-fun c!1321799 () Bool)

(declare-fun isEmpty!39979 (List!68623) Bool)

(assert (=> d!2215005 (= c!1321799 (isEmpty!39979 s!7408))))

(declare-fun e!4257503 () Bool)

(assert (=> d!2215005 (= (matchZipper!3239 lt!2553000 s!7408) e!4257503)))

(declare-fun b!7081758 () Bool)

(declare-fun nullableZipper!2731 ((InoxSet Context!13390)) Bool)

(assert (=> b!7081758 (= e!4257503 (nullableZipper!2731 lt!2553000))))

(declare-fun b!7081759 () Bool)

(declare-fun head!14440 (List!68623) C!35668)

(declare-fun tail!13903 (List!68623) List!68623)

(assert (=> b!7081759 (= e!4257503 (matchZipper!3239 (derivationStepZipper!3149 lt!2553000 (head!14440 s!7408)) (tail!13903 s!7408)))))

(assert (= (and d!2215005 c!1321799) b!7081758))

(assert (= (and d!2215005 (not c!1321799)) b!7081759))

(declare-fun m!7812998 () Bool)

(assert (=> d!2215005 m!7812998))

(declare-fun m!7813000 () Bool)

(assert (=> b!7081758 m!7813000))

(declare-fun m!7813002 () Bool)

(assert (=> b!7081759 m!7813002))

(assert (=> b!7081759 m!7813002))

(declare-fun m!7813004 () Bool)

(assert (=> b!7081759 m!7813004))

(declare-fun m!7813006 () Bool)

(assert (=> b!7081759 m!7813006))

(assert (=> b!7081759 m!7813004))

(assert (=> b!7081759 m!7813006))

(declare-fun m!7813008 () Bool)

(assert (=> b!7081759 m!7813008))

(assert (=> b!7081730 d!2215005))

(declare-fun b!7081771 () Bool)

(declare-fun e!4257511 () List!68624)

(assert (=> b!7081771 (= e!4257511 (Cons!68500 (h!74948 (exprs!7195 lt!2553016)) (++!15866 (t!382409 (exprs!7195 lt!2553016)) (exprs!7195 ct2!306))))))

(declare-fun e!4257510 () Bool)

(declare-fun lt!2553039 () List!68624)

(declare-fun b!7081773 () Bool)

(assert (=> b!7081773 (= e!4257510 (or (not (= (exprs!7195 ct2!306) Nil!68500)) (= lt!2553039 (exprs!7195 lt!2553016))))))

(declare-fun b!7081772 () Bool)

(declare-fun res!2892910 () Bool)

(assert (=> b!7081772 (=> (not res!2892910) (not e!4257510))))

(declare-fun size!41265 (List!68624) Int)

(assert (=> b!7081772 (= res!2892910 (= (size!41265 lt!2553039) (+ (size!41265 (exprs!7195 lt!2553016)) (size!41265 (exprs!7195 ct2!306)))))))

(declare-fun b!7081770 () Bool)

(assert (=> b!7081770 (= e!4257511 (exprs!7195 ct2!306))))

(declare-fun d!2215009 () Bool)

(assert (=> d!2215009 e!4257510))

(declare-fun res!2892911 () Bool)

(assert (=> d!2215009 (=> (not res!2892911) (not e!4257510))))

(declare-fun content!13884 (List!68624) (InoxSet Regex!17699))

(assert (=> d!2215009 (= res!2892911 (= (content!13884 lt!2553039) ((_ map or) (content!13884 (exprs!7195 lt!2553016)) (content!13884 (exprs!7195 ct2!306)))))))

(assert (=> d!2215009 (= lt!2553039 e!4257511)))

(declare-fun c!1321802 () Bool)

(assert (=> d!2215009 (= c!1321802 ((_ is Nil!68500) (exprs!7195 lt!2553016)))))

(assert (=> d!2215009 (= (++!15866 (exprs!7195 lt!2553016) (exprs!7195 ct2!306)) lt!2553039)))

(assert (= (and d!2215009 c!1321802) b!7081770))

(assert (= (and d!2215009 (not c!1321802)) b!7081771))

(assert (= (and d!2215009 res!2892911) b!7081772))

(assert (= (and b!7081772 res!2892910) b!7081773))

(declare-fun m!7813018 () Bool)

(assert (=> b!7081771 m!7813018))

(declare-fun m!7813020 () Bool)

(assert (=> b!7081772 m!7813020))

(declare-fun m!7813022 () Bool)

(assert (=> b!7081772 m!7813022))

(declare-fun m!7813024 () Bool)

(assert (=> b!7081772 m!7813024))

(declare-fun m!7813026 () Bool)

(assert (=> d!2215009 m!7813026))

(declare-fun m!7813028 () Bool)

(assert (=> d!2215009 m!7813028))

(declare-fun m!7813030 () Bool)

(assert (=> d!2215009 m!7813030))

(assert (=> b!7081726 d!2215009))

(assert (=> b!7081726 d!2214989))

(declare-fun d!2215015 () Bool)

(declare-fun e!4257515 () Bool)

(assert (=> d!2215015 e!4257515))

(declare-fun res!2892915 () Bool)

(assert (=> d!2215015 (=> (not res!2892915) (not e!4257515))))

(declare-fun lt!2553043 () Context!13390)

(declare-fun dynLambda!27921 (Int Context!13390) Context!13390)

(assert (=> d!2215015 (= res!2892915 (= lt!2553003 (dynLambda!27921 lambda!428112 lt!2553043)))))

(declare-fun choose!54505 ((InoxSet Context!13390) Int Context!13390) Context!13390)

(assert (=> d!2215015 (= lt!2553043 (choose!54505 z1!570 lambda!428112 lt!2553003))))

(declare-fun map!16048 ((InoxSet Context!13390) Int) (InoxSet Context!13390))

(assert (=> d!2215015 (select (map!16048 z1!570 lambda!428112) lt!2553003)))

(assert (=> d!2215015 (= (mapPost2!528 z1!570 lambda!428112 lt!2553003) lt!2553043)))

(declare-fun b!7081780 () Bool)

(assert (=> b!7081780 (= e!4257515 (select z1!570 lt!2553043))))

(assert (= (and d!2215015 res!2892915) b!7081780))

(declare-fun b_lambda!270611 () Bool)

(assert (=> (not b_lambda!270611) (not d!2215015)))

(declare-fun m!7813036 () Bool)

(assert (=> d!2215015 m!7813036))

(declare-fun m!7813038 () Bool)

(assert (=> d!2215015 m!7813038))

(declare-fun m!7813040 () Bool)

(assert (=> d!2215015 m!7813040))

(declare-fun m!7813042 () Bool)

(assert (=> d!2215015 m!7813042))

(declare-fun m!7813044 () Bool)

(assert (=> b!7081780 m!7813044))

(assert (=> b!7081726 d!2215015))

(assert (=> b!7081717 d!2214989))

(declare-fun d!2215021 () Bool)

(assert (=> d!2215021 (exists!3788 z1!570 lambda!428115)))

(declare-fun lt!2553046 () Unit!162109)

(declare-fun choose!54506 ((InoxSet Context!13390) Context!13390 Int) Unit!162109)

(assert (=> d!2215021 (= lt!2553046 (choose!54506 z1!570 lt!2553016 lambda!428115))))

(assert (=> d!2215021 (select z1!570 lt!2553016)))

(assert (=> d!2215021 (= (lemmaContainsThenExists!181 z1!570 lt!2553016 lambda!428115) lt!2553046)))

(declare-fun bs!1882250 () Bool)

(assert (= bs!1882250 d!2215021))

(assert (=> bs!1882250 m!7812948))

(declare-fun m!7813046 () Bool)

(assert (=> bs!1882250 m!7813046))

(assert (=> bs!1882250 m!7812934))

(assert (=> b!7081718 d!2215021))

(declare-fun bs!1882251 () Bool)

(declare-fun d!2215023 () Bool)

(assert (= bs!1882251 (and d!2215023 b!7081724)))

(declare-fun lambda!428124 () Int)

(assert (=> bs!1882251 (not (= lambda!428124 lambda!428111))))

(declare-fun bs!1882252 () Bool)

(assert (= bs!1882252 (and d!2215023 b!7081718)))

(assert (=> bs!1882252 (not (= lambda!428124 lambda!428115))))

(assert (=> d!2215023 true))

(declare-fun order!28481 () Int)

(declare-fun dynLambda!27923 (Int Int) Int)

(assert (=> d!2215023 (< (dynLambda!27923 order!28481 lambda!428115) (dynLambda!27923 order!28481 lambda!428124))))

(declare-fun forall!16661 (List!68625 Int) Bool)

(assert (=> d!2215023 (= (exists!3787 (toList!11040 z1!570) lambda!428115) (not (forall!16661 (toList!11040 z1!570) lambda!428124)))))

(declare-fun bs!1882253 () Bool)

(assert (= bs!1882253 d!2215023))

(assert (=> bs!1882253 m!7812940))

(declare-fun m!7813048 () Bool)

(assert (=> bs!1882253 m!7813048))

(assert (=> b!7081718 d!2215023))

(declare-fun d!2215025 () Bool)

(declare-fun lt!2553049 () Bool)

(assert (=> d!2215025 (= lt!2553049 (exists!3787 (toList!11040 z1!570) lambda!428115))))

(declare-fun choose!54507 ((InoxSet Context!13390) Int) Bool)

(assert (=> d!2215025 (= lt!2553049 (choose!54507 z1!570 lambda!428115))))

(assert (=> d!2215025 (= (exists!3788 z1!570 lambda!428115) lt!2553049)))

(declare-fun bs!1882254 () Bool)

(assert (= bs!1882254 d!2215025))

(assert (=> bs!1882254 m!7812940))

(assert (=> bs!1882254 m!7812940))

(assert (=> bs!1882254 m!7812942))

(declare-fun m!7813050 () Bool)

(assert (=> bs!1882254 m!7813050))

(assert (=> b!7081718 d!2215025))

(declare-fun d!2215027 () Bool)

(declare-fun isEmpty!39981 (Option!17000) Bool)

(assert (=> d!2215027 (= (isDefined!13701 (findConcatSeparationZippers!516 lt!2553006 lt!2553000 Nil!68499 s!7408 s!7408)) (not (isEmpty!39981 (findConcatSeparationZippers!516 lt!2553006 lt!2553000 Nil!68499 s!7408 s!7408))))))

(declare-fun bs!1882255 () Bool)

(assert (= bs!1882255 d!2215027))

(assert (=> bs!1882255 m!7812944))

(declare-fun m!7813052 () Bool)

(assert (=> bs!1882255 m!7813052))

(assert (=> b!7081718 d!2215027))

(declare-fun d!2215029 () Bool)

(assert (=> d!2215029 (isDefined!13701 (findConcatSeparationZippers!516 lt!2553006 lt!2553000 Nil!68499 s!7408 s!7408))))

(declare-fun lt!2553058 () Unit!162109)

(declare-fun choose!54508 ((InoxSet Context!13390) (InoxSet Context!13390) List!68623 List!68623 List!68623 List!68623 List!68623) Unit!162109)

(assert (=> d!2215029 (= lt!2553058 (choose!54508 lt!2553006 lt!2553000 Nil!68499 s!7408 s!7408 Nil!68499 s!7408))))

(assert (=> d!2215029 (matchZipper!3239 lt!2553006 Nil!68499)))

(assert (=> d!2215029 (= (lemmaZ1MatchesS1AndZ2MatchesS2ThenFindSeparationZipperFindsAtLeastThem!102 lt!2553006 lt!2553000 Nil!68499 s!7408 s!7408 Nil!68499 s!7408) lt!2553058)))

(declare-fun bs!1882256 () Bool)

(assert (= bs!1882256 d!2215029))

(assert (=> bs!1882256 m!7812944))

(assert (=> bs!1882256 m!7812944))

(assert (=> bs!1882256 m!7812950))

(declare-fun m!7813054 () Bool)

(assert (=> bs!1882256 m!7813054))

(assert (=> bs!1882256 m!7812904))

(assert (=> b!7081718 d!2215029))

(declare-fun b!7081834 () Bool)

(declare-fun e!4257548 () Option!17000)

(assert (=> b!7081834 (= e!4257548 (Some!16999 (tuple2!68337 Nil!68499 s!7408)))))

(declare-fun d!2215031 () Bool)

(declare-fun e!4257545 () Bool)

(assert (=> d!2215031 e!4257545))

(declare-fun res!2892945 () Bool)

(assert (=> d!2215031 (=> res!2892945 e!4257545)))

(declare-fun e!4257546 () Bool)

(assert (=> d!2215031 (= res!2892945 e!4257546)))

(declare-fun res!2892944 () Bool)

(assert (=> d!2215031 (=> (not res!2892944) (not e!4257546))))

(declare-fun lt!2553070 () Option!17000)

(assert (=> d!2215031 (= res!2892944 (isDefined!13701 lt!2553070))))

(assert (=> d!2215031 (= lt!2553070 e!4257548)))

(declare-fun c!1321818 () Bool)

(declare-fun e!4257549 () Bool)

(assert (=> d!2215031 (= c!1321818 e!4257549)))

(declare-fun res!2892942 () Bool)

(assert (=> d!2215031 (=> (not res!2892942) (not e!4257549))))

(assert (=> d!2215031 (= res!2892942 (matchZipper!3239 lt!2553006 Nil!68499))))

(declare-fun ++!15868 (List!68623 List!68623) List!68623)

(assert (=> d!2215031 (= (++!15868 Nil!68499 s!7408) s!7408)))

(assert (=> d!2215031 (= (findConcatSeparationZippers!516 lt!2553006 lt!2553000 Nil!68499 s!7408 s!7408) lt!2553070)))

(declare-fun b!7081835 () Bool)

(declare-fun res!2892941 () Bool)

(assert (=> b!7081835 (=> (not res!2892941) (not e!4257546))))

(declare-fun get!24000 (Option!17000) tuple2!68336)

(assert (=> b!7081835 (= res!2892941 (matchZipper!3239 lt!2553000 (_2!37471 (get!24000 lt!2553070))))))

(declare-fun b!7081836 () Bool)

(declare-fun lt!2553072 () Unit!162109)

(declare-fun lt!2553071 () Unit!162109)

(assert (=> b!7081836 (= lt!2553072 lt!2553071)))

(assert (=> b!7081836 (= (++!15868 (++!15868 Nil!68499 (Cons!68499 (h!74947 s!7408) Nil!68499)) (t!382408 s!7408)) s!7408)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!2997 (List!68623 C!35668 List!68623 List!68623) Unit!162109)

(assert (=> b!7081836 (= lt!2553071 (lemmaMoveElementToOtherListKeepsConcatEq!2997 Nil!68499 (h!74947 s!7408) (t!382408 s!7408) s!7408))))

(declare-fun e!4257547 () Option!17000)

(assert (=> b!7081836 (= e!4257547 (findConcatSeparationZippers!516 lt!2553006 lt!2553000 (++!15868 Nil!68499 (Cons!68499 (h!74947 s!7408) Nil!68499)) (t!382408 s!7408) s!7408))))

(declare-fun b!7081837 () Bool)

(assert (=> b!7081837 (= e!4257545 (not (isDefined!13701 lt!2553070)))))

(declare-fun b!7081838 () Bool)

(assert (=> b!7081838 (= e!4257549 (matchZipper!3239 lt!2553000 s!7408))))

(declare-fun b!7081839 () Bool)

(assert (=> b!7081839 (= e!4257547 None!16999)))

(declare-fun b!7081840 () Bool)

(declare-fun res!2892943 () Bool)

(assert (=> b!7081840 (=> (not res!2892943) (not e!4257546))))

(assert (=> b!7081840 (= res!2892943 (matchZipper!3239 lt!2553006 (_1!37471 (get!24000 lt!2553070))))))

(declare-fun b!7081841 () Bool)

(assert (=> b!7081841 (= e!4257548 e!4257547)))

(declare-fun c!1321817 () Bool)

(assert (=> b!7081841 (= c!1321817 ((_ is Nil!68499) s!7408))))

(declare-fun b!7081842 () Bool)

(assert (=> b!7081842 (= e!4257546 (= (++!15868 (_1!37471 (get!24000 lt!2553070)) (_2!37471 (get!24000 lt!2553070))) s!7408))))

(assert (= (and d!2215031 res!2892942) b!7081838))

(assert (= (and d!2215031 c!1321818) b!7081834))

(assert (= (and d!2215031 (not c!1321818)) b!7081841))

(assert (= (and b!7081841 c!1321817) b!7081839))

(assert (= (and b!7081841 (not c!1321817)) b!7081836))

(assert (= (and d!2215031 res!2892944) b!7081840))

(assert (= (and b!7081840 res!2892943) b!7081835))

(assert (= (and b!7081835 res!2892941) b!7081842))

(assert (= (and d!2215031 (not res!2892945)) b!7081837))

(declare-fun m!7813094 () Bool)

(assert (=> b!7081840 m!7813094))

(declare-fun m!7813096 () Bool)

(assert (=> b!7081840 m!7813096))

(assert (=> b!7081835 m!7813094))

(declare-fun m!7813098 () Bool)

(assert (=> b!7081835 m!7813098))

(declare-fun m!7813100 () Bool)

(assert (=> d!2215031 m!7813100))

(assert (=> d!2215031 m!7812904))

(declare-fun m!7813102 () Bool)

(assert (=> d!2215031 m!7813102))

(declare-fun m!7813104 () Bool)

(assert (=> b!7081836 m!7813104))

(assert (=> b!7081836 m!7813104))

(declare-fun m!7813106 () Bool)

(assert (=> b!7081836 m!7813106))

(declare-fun m!7813108 () Bool)

(assert (=> b!7081836 m!7813108))

(assert (=> b!7081836 m!7813104))

(declare-fun m!7813112 () Bool)

(assert (=> b!7081836 m!7813112))

(assert (=> b!7081838 m!7812924))

(assert (=> b!7081842 m!7813094))

(declare-fun m!7813114 () Bool)

(assert (=> b!7081842 m!7813114))

(assert (=> b!7081837 m!7813100))

(assert (=> b!7081718 d!2215031))

(declare-fun d!2215045 () Bool)

(declare-fun e!4257552 () Bool)

(assert (=> d!2215045 e!4257552))

(declare-fun res!2892948 () Bool)

(assert (=> d!2215045 (=> (not res!2892948) (not e!4257552))))

(declare-fun lt!2553075 () List!68625)

(declare-fun noDuplicate!2759 (List!68625) Bool)

(assert (=> d!2215045 (= res!2892948 (noDuplicate!2759 lt!2553075))))

(declare-fun choose!54509 ((InoxSet Context!13390)) List!68625)

(assert (=> d!2215045 (= lt!2553075 (choose!54509 z1!570))))

(assert (=> d!2215045 (= (toList!11040 z1!570) lt!2553075)))

(declare-fun b!7081847 () Bool)

(declare-fun content!13886 (List!68625) (InoxSet Context!13390))

(assert (=> b!7081847 (= e!4257552 (= (content!13886 lt!2553075) z1!570))))

(assert (= (and d!2215045 res!2892948) b!7081847))

(declare-fun m!7813116 () Bool)

(assert (=> d!2215045 m!7813116))

(declare-fun m!7813118 () Bool)

(assert (=> d!2215045 m!7813118))

(declare-fun m!7813120 () Bool)

(assert (=> b!7081847 m!7813120))

(assert (=> b!7081718 d!2215045))

(declare-fun d!2215047 () Bool)

(declare-fun c!1321823 () Bool)

(assert (=> d!2215047 (= c!1321823 (isEmpty!39979 Nil!68499))))

(declare-fun e!4257557 () Bool)

(assert (=> d!2215047 (= (matchZipper!3239 lt!2553006 Nil!68499) e!4257557)))

(declare-fun b!7081852 () Bool)

(assert (=> b!7081852 (= e!4257557 (nullableZipper!2731 lt!2553006))))

(declare-fun b!7081853 () Bool)

(assert (=> b!7081853 (= e!4257557 (matchZipper!3239 (derivationStepZipper!3149 lt!2553006 (head!14440 Nil!68499)) (tail!13903 Nil!68499)))))

(assert (= (and d!2215047 c!1321823) b!7081852))

(assert (= (and d!2215047 (not c!1321823)) b!7081853))

(declare-fun m!7813122 () Bool)

(assert (=> d!2215047 m!7813122))

(declare-fun m!7813124 () Bool)

(assert (=> b!7081852 m!7813124))

(declare-fun m!7813126 () Bool)

(assert (=> b!7081853 m!7813126))

(assert (=> b!7081853 m!7813126))

(declare-fun m!7813128 () Bool)

(assert (=> b!7081853 m!7813128))

(declare-fun m!7813130 () Bool)

(assert (=> b!7081853 m!7813130))

(assert (=> b!7081853 m!7813128))

(assert (=> b!7081853 m!7813130))

(declare-fun m!7813132 () Bool)

(assert (=> b!7081853 m!7813132))

(assert (=> b!7081723 d!2215047))

(declare-fun d!2215049 () Bool)

(assert (=> d!2215049 (= (matchZipper!3239 lt!2553006 Nil!68499) (isEmpty!39979 Nil!68499))))

(declare-fun lt!2553078 () Unit!162109)

(declare-fun choose!54510 ((InoxSet Context!13390) List!68623) Unit!162109)

(assert (=> d!2215049 (= lt!2553078 (choose!54510 lt!2553006 Nil!68499))))

(assert (=> d!2215049 (= lt!2553006 (store ((as const (Array Context!13390 Bool)) false) (Context!13391 Nil!68500) true))))

(assert (=> d!2215049 (= (lemmaZipperOfEmptyContextMatchesEmptyString!30 lt!2553006 Nil!68499) lt!2553078)))

(declare-fun bs!1882267 () Bool)

(assert (= bs!1882267 d!2215049))

(assert (=> bs!1882267 m!7812904))

(assert (=> bs!1882267 m!7813122))

(declare-fun m!7813142 () Bool)

(assert (=> bs!1882267 m!7813142))

(assert (=> b!7081723 d!2215049))

(declare-fun d!2215055 () Bool)

(declare-fun c!1321828 () Bool)

(assert (=> d!2215055 (= c!1321828 (isEmpty!39979 s!7408))))

(declare-fun e!4257563 () Bool)

(assert (=> d!2215055 (= (matchZipper!3239 lt!2553009 s!7408) e!4257563)))

(declare-fun b!7081865 () Bool)

(assert (=> b!7081865 (= e!4257563 (nullableZipper!2731 lt!2553009))))

(declare-fun b!7081866 () Bool)

(assert (=> b!7081866 (= e!4257563 (matchZipper!3239 (derivationStepZipper!3149 lt!2553009 (head!14440 s!7408)) (tail!13903 s!7408)))))

(assert (= (and d!2215055 c!1321828) b!7081865))

(assert (= (and d!2215055 (not c!1321828)) b!7081866))

(assert (=> d!2215055 m!7812998))

(declare-fun m!7813144 () Bool)

(assert (=> b!7081865 m!7813144))

(assert (=> b!7081866 m!7813002))

(assert (=> b!7081866 m!7813002))

(declare-fun m!7813146 () Bool)

(assert (=> b!7081866 m!7813146))

(assert (=> b!7081866 m!7813006))

(assert (=> b!7081866 m!7813146))

(assert (=> b!7081866 m!7813006))

(declare-fun m!7813148 () Bool)

(assert (=> b!7081866 m!7813148))

(assert (=> start!688956 d!2215055))

(declare-fun bs!1882269 () Bool)

(declare-fun d!2215057 () Bool)

(assert (= bs!1882269 (and d!2215057 b!7081726)))

(declare-fun lambda!428141 () Int)

(assert (=> bs!1882269 (= lambda!428141 lambda!428112)))

(assert (=> d!2215057 true))

(assert (=> d!2215057 (= (appendTo!820 z1!570 ct2!306) (map!16048 z1!570 lambda!428141))))

(declare-fun bs!1882270 () Bool)

(assert (= bs!1882270 d!2215057))

(declare-fun m!7813160 () Bool)

(assert (=> bs!1882270 m!7813160))

(assert (=> start!688956 d!2215057))

(declare-fun bs!1882271 () Bool)

(declare-fun d!2215063 () Bool)

(assert (= bs!1882271 (and d!2215063 b!7081726)))

(declare-fun lambda!428144 () Int)

(assert (=> bs!1882271 (= lambda!428144 lambda!428113)))

(assert (=> d!2215063 (= (inv!87106 ct2!306) (forall!16658 (exprs!7195 ct2!306) lambda!428144))))

(declare-fun bs!1882272 () Bool)

(assert (= bs!1882272 d!2215063))

(declare-fun m!7813168 () Bool)

(assert (=> bs!1882272 m!7813168))

(assert (=> start!688956 d!2215063))

(assert (=> b!7081728 d!2214989))

(declare-fun bs!1882273 () Bool)

(declare-fun d!2215065 () Bool)

(assert (= bs!1882273 (and d!2215065 b!7081726)))

(declare-fun lambda!428145 () Int)

(assert (=> bs!1882273 (= lambda!428145 lambda!428113)))

(declare-fun bs!1882274 () Bool)

(assert (= bs!1882274 (and d!2215065 d!2215063)))

(assert (=> bs!1882274 (= lambda!428145 lambda!428144)))

(assert (=> d!2215065 (= (inv!87106 setElem!50539) (forall!16658 (exprs!7195 setElem!50539) lambda!428145))))

(declare-fun bs!1882275 () Bool)

(assert (= bs!1882275 d!2215065))

(declare-fun m!7813178 () Bool)

(assert (=> bs!1882275 m!7813178))

(assert (=> setNonEmpty!50539 d!2215065))

(declare-fun d!2215069 () Bool)

(declare-fun c!1321834 () Bool)

(assert (=> d!2215069 (= c!1321834 (isEmpty!39979 s!7408))))

(declare-fun e!4257571 () Bool)

(assert (=> d!2215069 (= (matchZipper!3239 lt!2553014 s!7408) e!4257571)))

(declare-fun b!7081881 () Bool)

(assert (=> b!7081881 (= e!4257571 (nullableZipper!2731 lt!2553014))))

(declare-fun b!7081882 () Bool)

(assert (=> b!7081882 (= e!4257571 (matchZipper!3239 (derivationStepZipper!3149 lt!2553014 (head!14440 s!7408)) (tail!13903 s!7408)))))

(assert (= (and d!2215069 c!1321834) b!7081881))

(assert (= (and d!2215069 (not c!1321834)) b!7081882))

(assert (=> d!2215069 m!7812998))

(declare-fun m!7813180 () Bool)

(assert (=> b!7081881 m!7813180))

(assert (=> b!7081882 m!7813002))

(assert (=> b!7081882 m!7813002))

(declare-fun m!7813182 () Bool)

(assert (=> b!7081882 m!7813182))

(assert (=> b!7081882 m!7813006))

(assert (=> b!7081882 m!7813182))

(assert (=> b!7081882 m!7813006))

(declare-fun m!7813184 () Bool)

(assert (=> b!7081882 m!7813184))

(assert (=> b!7081724 d!2215069))

(declare-fun d!2215071 () Bool)

(declare-fun e!4257578 () Bool)

(assert (=> d!2215071 e!4257578))

(declare-fun res!2892963 () Bool)

(assert (=> d!2215071 (=> (not res!2892963) (not e!4257578))))

(declare-fun lt!2553092 () Context!13390)

(declare-fun dynLambda!27925 (Int Context!13390) Bool)

(assert (=> d!2215071 (= res!2892963 (dynLambda!27925 lambda!428111 lt!2553092))))

(declare-fun getWitness!1832 (List!68625 Int) Context!13390)

(assert (=> d!2215071 (= lt!2553092 (getWitness!1832 (toList!11040 lt!2553009) lambda!428111))))

(assert (=> d!2215071 (exists!3788 lt!2553009 lambda!428111)))

(assert (=> d!2215071 (= (getWitness!1831 lt!2553009 lambda!428111) lt!2553092)))

(declare-fun b!7081891 () Bool)

(assert (=> b!7081891 (= e!4257578 (select lt!2553009 lt!2553092))))

(assert (= (and d!2215071 res!2892963) b!7081891))

(declare-fun b_lambda!270617 () Bool)

(assert (=> (not b_lambda!270617) (not d!2215071)))

(declare-fun m!7813208 () Bool)

(assert (=> d!2215071 m!7813208))

(assert (=> d!2215071 m!7812960))

(assert (=> d!2215071 m!7812960))

(declare-fun m!7813210 () Bool)

(assert (=> d!2215071 m!7813210))

(declare-fun m!7813212 () Bool)

(assert (=> d!2215071 m!7813212))

(declare-fun m!7813214 () Bool)

(assert (=> b!7081891 m!7813214))

(assert (=> b!7081724 d!2215071))

(declare-fun d!2215077 () Bool)

(declare-fun e!4257579 () Bool)

(assert (=> d!2215077 e!4257579))

(declare-fun res!2892964 () Bool)

(assert (=> d!2215077 (=> (not res!2892964) (not e!4257579))))

(declare-fun lt!2553093 () List!68625)

(assert (=> d!2215077 (= res!2892964 (noDuplicate!2759 lt!2553093))))

(assert (=> d!2215077 (= lt!2553093 (choose!54509 lt!2553009))))

(assert (=> d!2215077 (= (toList!11040 lt!2553009) lt!2553093)))

(declare-fun b!7081892 () Bool)

(assert (=> b!7081892 (= e!4257579 (= (content!13886 lt!2553093) lt!2553009))))

(assert (= (and d!2215077 res!2892964) b!7081892))

(declare-fun m!7813216 () Bool)

(assert (=> d!2215077 m!7813216))

(declare-fun m!7813218 () Bool)

(assert (=> d!2215077 m!7813218))

(declare-fun m!7813220 () Bool)

(assert (=> b!7081892 m!7813220))

(assert (=> b!7081724 d!2215077))

(declare-fun bs!1882276 () Bool)

(declare-fun d!2215079 () Bool)

(assert (= bs!1882276 (and d!2215079 b!7081724)))

(declare-fun lambda!428146 () Int)

(assert (=> bs!1882276 (not (= lambda!428146 lambda!428111))))

(declare-fun bs!1882277 () Bool)

(assert (= bs!1882277 (and d!2215079 b!7081718)))

(assert (=> bs!1882277 (not (= lambda!428146 lambda!428115))))

(declare-fun bs!1882278 () Bool)

(assert (= bs!1882278 (and d!2215079 d!2215023)))

(assert (=> bs!1882278 (= (= lambda!428111 lambda!428115) (= lambda!428146 lambda!428124))))

(assert (=> d!2215079 true))

(assert (=> d!2215079 (< (dynLambda!27923 order!28481 lambda!428111) (dynLambda!27923 order!28481 lambda!428146))))

(assert (=> d!2215079 (= (exists!3787 lt!2552997 lambda!428111) (not (forall!16661 lt!2552997 lambda!428146)))))

(declare-fun bs!1882279 () Bool)

(assert (= bs!1882279 d!2215079))

(declare-fun m!7813222 () Bool)

(assert (=> bs!1882279 m!7813222))

(assert (=> b!7081724 d!2215079))

(declare-fun bs!1882281 () Bool)

(declare-fun d!2215081 () Bool)

(assert (= bs!1882281 (and d!2215081 b!7081724)))

(declare-fun lambda!428149 () Int)

(assert (=> bs!1882281 (= lambda!428149 lambda!428111)))

(declare-fun bs!1882282 () Bool)

(assert (= bs!1882282 (and d!2215081 b!7081718)))

(assert (=> bs!1882282 (= (= s!7408 Nil!68499) (= lambda!428149 lambda!428115))))

(declare-fun bs!1882283 () Bool)

(assert (= bs!1882283 (and d!2215081 d!2215023)))

(assert (=> bs!1882283 (not (= lambda!428149 lambda!428124))))

(declare-fun bs!1882284 () Bool)

(assert (= bs!1882284 (and d!2215081 d!2215079)))

(assert (=> bs!1882284 (not (= lambda!428149 lambda!428146))))

(assert (=> d!2215081 true))

(assert (=> d!2215081 (exists!3787 lt!2552997 lambda!428149)))

(declare-fun lt!2553099 () Unit!162109)

(declare-fun choose!54514 (List!68625 List!68623) Unit!162109)

(assert (=> d!2215081 (= lt!2553099 (choose!54514 lt!2552997 s!7408))))

(assert (=> d!2215081 (matchZipper!3239 (content!13886 lt!2552997) s!7408)))

(assert (=> d!2215081 (= (lemmaZipperMatchesExistsMatchingContext!620 lt!2552997 s!7408) lt!2553099)))

(declare-fun bs!1882285 () Bool)

(assert (= bs!1882285 d!2215081))

(declare-fun m!7813226 () Bool)

(assert (=> bs!1882285 m!7813226))

(declare-fun m!7813228 () Bool)

(assert (=> bs!1882285 m!7813228))

(declare-fun m!7813230 () Bool)

(assert (=> bs!1882285 m!7813230))

(assert (=> bs!1882285 m!7813230))

(declare-fun m!7813232 () Bool)

(assert (=> bs!1882285 m!7813232))

(assert (=> b!7081724 d!2215081))

(declare-fun b!7081900 () Bool)

(declare-fun e!4257585 () Bool)

(declare-fun tp!1943681 () Bool)

(declare-fun tp!1943682 () Bool)

(assert (=> b!7081900 (= e!4257585 (and tp!1943681 tp!1943682))))

(assert (=> b!7081720 (= tp!1943676 e!4257585)))

(assert (= (and b!7081720 ((_ is Cons!68500) (exprs!7195 setElem!50539))) b!7081900))

(declare-fun b!7081907 () Bool)

(declare-fun e!4257589 () Bool)

(declare-fun tp!1943685 () Bool)

(assert (=> b!7081907 (= e!4257589 (and tp_is_empty!44623 tp!1943685))))

(assert (=> b!7081721 (= tp!1943673 e!4257589)))

(assert (= (and b!7081721 ((_ is Cons!68499) (t!382408 s!7408))) b!7081907))

(declare-fun b!7081908 () Bool)

(declare-fun e!4257590 () Bool)

(declare-fun tp!1943686 () Bool)

(declare-fun tp!1943687 () Bool)

(assert (=> b!7081908 (= e!4257590 (and tp!1943686 tp!1943687))))

(assert (=> b!7081722 (= tp!1943675 e!4257590)))

(assert (= (and b!7081722 ((_ is Cons!68500) (exprs!7195 ct2!306))) b!7081908))

(declare-fun condSetEmpty!50542 () Bool)

(assert (=> setNonEmpty!50539 (= condSetEmpty!50542 (= setRest!50539 ((as const (Array Context!13390 Bool)) false)))))

(declare-fun setRes!50542 () Bool)

(assert (=> setNonEmpty!50539 (= tp!1943674 setRes!50542)))

(declare-fun setIsEmpty!50542 () Bool)

(assert (=> setIsEmpty!50542 setRes!50542))

(declare-fun e!4257593 () Bool)

(declare-fun setElem!50542 () Context!13390)

(declare-fun tp!1943692 () Bool)

(declare-fun setNonEmpty!50542 () Bool)

(assert (=> setNonEmpty!50542 (= setRes!50542 (and tp!1943692 (inv!87106 setElem!50542) e!4257593))))

(declare-fun setRest!50542 () (InoxSet Context!13390))

(assert (=> setNonEmpty!50542 (= setRest!50539 ((_ map or) (store ((as const (Array Context!13390 Bool)) false) setElem!50542 true) setRest!50542))))

(declare-fun b!7081913 () Bool)

(declare-fun tp!1943693 () Bool)

(assert (=> b!7081913 (= e!4257593 tp!1943693)))

(assert (= (and setNonEmpty!50539 condSetEmpty!50542) setIsEmpty!50542))

(assert (= (and setNonEmpty!50539 (not condSetEmpty!50542)) setNonEmpty!50542))

(assert (= setNonEmpty!50542 b!7081913))

(declare-fun m!7813248 () Bool)

(assert (=> setNonEmpty!50542 m!7813248))

(declare-fun b_lambda!270621 () Bool)

(assert (= b_lambda!270617 (or b!7081724 b_lambda!270621)))

(declare-fun bs!1882286 () Bool)

(declare-fun d!2215089 () Bool)

(assert (= bs!1882286 (and d!2215089 b!7081724)))

(assert (=> bs!1882286 (= (dynLambda!27925 lambda!428111 lt!2553092) (matchZipper!3239 (store ((as const (Array Context!13390 Bool)) false) lt!2553092 true) s!7408))))

(declare-fun m!7813250 () Bool)

(assert (=> bs!1882286 m!7813250))

(assert (=> bs!1882286 m!7813250))

(declare-fun m!7813252 () Bool)

(assert (=> bs!1882286 m!7813252))

(assert (=> d!2215071 d!2215089))

(declare-fun b_lambda!270623 () Bool)

(assert (= b_lambda!270611 (or b!7081726 b_lambda!270623)))

(declare-fun bs!1882287 () Bool)

(declare-fun d!2215091 () Bool)

(assert (= bs!1882287 (and d!2215091 b!7081726)))

(declare-fun lt!2553103 () Unit!162109)

(assert (=> bs!1882287 (= lt!2553103 (lemmaConcatPreservesForall!1010 (exprs!7195 lt!2553043) (exprs!7195 ct2!306) lambda!428113))))

(assert (=> bs!1882287 (= (dynLambda!27921 lambda!428112 lt!2553043) (Context!13391 (++!15866 (exprs!7195 lt!2553043) (exprs!7195 ct2!306))))))

(declare-fun m!7813254 () Bool)

(assert (=> bs!1882287 m!7813254))

(declare-fun m!7813256 () Bool)

(assert (=> bs!1882287 m!7813256))

(assert (=> d!2215015 d!2215091))

(declare-fun b_lambda!270625 () Bool)

(assert (= b_lambda!270609 (or b!7081729 b_lambda!270625)))

(declare-fun bs!1882288 () Bool)

(declare-fun d!2215093 () Bool)

(assert (= bs!1882288 (and d!2215093 b!7081729)))

(assert (=> bs!1882288 (= (dynLambda!27920 lambda!428114 lt!2553005) (derivationStepZipperUp!2283 lt!2553005 (h!74947 s!7408)))))

(assert (=> bs!1882288 m!7812920))

(assert (=> d!2214993 d!2215093))

(check-sat (not b!7081840) (not b!7081847) (not b!7081836) (not b!7081908) (not b!7081838) (not d!2215045) (not b!7081882) (not b!7081752) (not b!7081837) (not bs!1882288) (not b!7081758) (not d!2214989) (not b!7081881) (not d!2215015) (not d!2215047) (not d!2214993) tp_is_empty!44623 (not b!7081842) (not b_lambda!270621) (not d!2215069) (not d!2215029) (not d!2215049) (not d!2215005) (not b_lambda!270625) (not b!7081900) (not d!2215027) (not bs!1882287) (not bm!643605) (not b!7081835) (not b_lambda!270623) (not d!2215023) (not b!7081771) (not d!2215063) (not d!2215071) (not b!7081866) (not b!7081892) (not b!7081759) (not b!7081913) (not b!7081865) (not d!2215079) (not d!2215009) (not d!2215003) (not d!2215025) (not b!7081853) (not d!2215031) (not b!7081852) (not bs!1882286) (not d!2215057) (not b!7081907) (not d!2215021) (not b!7081772) (not setNonEmpty!50542) (not d!2215081) (not d!2215077) (not b!7081750) (not d!2215065) (not d!2215055) (not d!2214991))
(check-sat)

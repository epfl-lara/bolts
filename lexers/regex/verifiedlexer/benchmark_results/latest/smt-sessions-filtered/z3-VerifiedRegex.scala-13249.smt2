; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!720898 () Bool)

(assert start!720898)

(declare-fun b!7397662 () Bool)

(assert (=> b!7397662 true))

(declare-fun b!7397658 () Bool)

(assert (=> b!7397658 true))

(declare-fun bs!1923113 () Bool)

(declare-fun b!7397661 () Bool)

(assert (= bs!1923113 (and b!7397661 b!7397658)))

(declare-fun lambda!459204 () Int)

(declare-fun lambda!459203 () Int)

(assert (=> bs!1923113 (not (= lambda!459204 lambda!459203))))

(assert (=> b!7397661 true))

(assert (=> b!7397661 true))

(declare-fun b!7397653 () Bool)

(declare-fun e!4426070 () Bool)

(declare-fun tp!2111198 () Bool)

(assert (=> b!7397653 (= e!4426070 tp!2111198)))

(declare-fun b!7397654 () Bool)

(declare-fun res!2980557 () Bool)

(declare-fun e!4426066 () Bool)

(assert (=> b!7397654 (=> (not res!2980557) (not e!4426066))))

(declare-datatypes ((C!39020 0))(
  ( (C!39021 (val!29884 Int)) )
))
(declare-datatypes ((Regex!19373 0))(
  ( (ElementMatch!19373 (c!1373963 C!39020)) (Concat!28218 (regOne!39258 Regex!19373) (regTwo!39258 Regex!19373)) (EmptyExpr!19373) (Star!19373 (reg!19702 Regex!19373)) (EmptyLang!19373) (Union!19373 (regOne!39259 Regex!19373) (regTwo!39259 Regex!19373)) )
))
(declare-datatypes ((List!71918 0))(
  ( (Nil!71794) (Cons!71794 (h!78242 Regex!19373) (t!386475 List!71918)) )
))
(declare-datatypes ((Context!16626 0))(
  ( (Context!16627 (exprs!8813 List!71918)) )
))
(declare-fun c!10532 () Context!16626)

(declare-fun isEmpty!41013 (List!71918) Bool)

(declare-fun tail!14780 (List!71918) List!71918)

(assert (=> b!7397654 (= res!2980557 (isEmpty!41013 (tail!14780 (exprs!8813 c!10532))))))

(declare-fun b!7397655 () Bool)

(declare-fun e!4426069 () Bool)

(declare-fun e!4426063 () Bool)

(assert (=> b!7397655 (= e!4426069 e!4426063)))

(declare-fun res!2980554 () Bool)

(assert (=> b!7397655 (=> res!2980554 e!4426063)))

(declare-fun lt!2617989 () Context!16626)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun lt!2617991 () (InoxSet Context!16626))

(assert (=> b!7397655 (= res!2980554 (not (select lt!2617991 lt!2617989)))))

(declare-fun z!3451 () (InoxSet Context!16626))

(declare-fun lambda!459202 () Int)

(declare-fun lt!2617990 () Context!16626)

(declare-fun flatMapPost!192 ((InoxSet Context!16626) Int Context!16626) Context!16626)

(assert (=> b!7397655 (= (flatMapPost!192 z!3451 lambda!459202 lt!2617989) lt!2617990)))

(declare-fun getWitness!2432 ((InoxSet Context!16626) Int) Context!16626)

(assert (=> b!7397655 (= lt!2617989 (getWitness!2432 lt!2617991 lambda!459203))))

(declare-fun b!7397656 () Bool)

(declare-fun e!4426065 () Bool)

(declare-fun tp_is_empty!49009 () Bool)

(declare-fun tp!2111197 () Bool)

(assert (=> b!7397656 (= e!4426065 (and tp_is_empty!49009 tp!2111197))))

(declare-fun b!7397657 () Bool)

(declare-fun res!2980551 () Bool)

(assert (=> b!7397657 (=> (not res!2980551) (not e!4426066))))

(declare-datatypes ((List!71919 0))(
  ( (Nil!71795) (Cons!71795 (h!78243 C!39020) (t!386476 List!71919)) )
))
(declare-fun s!7927 () List!71919)

(declare-fun a!2228 () C!39020)

(get-info :version)

(assert (=> b!7397657 (= res!2980551 (and ((_ is Cons!71795) s!7927) (= (h!78243 s!7927) a!2228)))))

(declare-fun res!2980560 () Bool)

(assert (=> b!7397658 (=> res!2980560 e!4426069)))

(declare-fun exists!4739 ((InoxSet Context!16626) Int) Bool)

(assert (=> b!7397658 (= res!2980560 (not (exists!4739 lt!2617991 lambda!459203)))))

(declare-fun setIsEmpty!56006 () Bool)

(declare-fun setRes!56006 () Bool)

(assert (=> setIsEmpty!56006 setRes!56006))

(declare-fun b!7397659 () Bool)

(declare-fun res!2980552 () Bool)

(assert (=> b!7397659 (=> (not res!2980552) (not e!4426066))))

(assert (=> b!7397659 (= res!2980552 (not (isEmpty!41013 (exprs!8813 c!10532))))))

(declare-fun b!7397660 () Bool)

(declare-fun e!4426064 () Bool)

(assert (=> b!7397660 (= e!4426066 e!4426064)))

(declare-fun res!2980556 () Bool)

(assert (=> b!7397660 (=> (not res!2980556) (not e!4426064))))

(declare-fun lt!2617988 () C!39020)

(declare-fun lt!2617987 () (InoxSet Context!16626))

(declare-fun derivationStepZipperUp!2779 (Context!16626 C!39020) (InoxSet Context!16626))

(assert (=> b!7397660 (= res!2980556 (= (derivationStepZipperUp!2779 c!10532 lt!2617988) lt!2617987))))

(declare-fun lt!2617986 () Context!16626)

(assert (=> b!7397660 (= lt!2617987 (store ((as const (Array Context!16626 Bool)) false) lt!2617986 true))))

(assert (=> b!7397660 (= lt!2617986 (Context!16627 Nil!71794))))

(declare-fun derivationStepZipper!3657 ((InoxSet Context!16626) C!39020) (InoxSet Context!16626))

(assert (=> b!7397660 (= lt!2617991 (derivationStepZipper!3657 z!3451 lt!2617988))))

(declare-fun head!15132 (List!71919) C!39020)

(assert (=> b!7397660 (= lt!2617988 (head!15132 s!7927))))

(declare-fun res!2980559 () Bool)

(assert (=> start!720898 (=> (not res!2980559) (not e!4426066))))

(assert (=> start!720898 (= res!2980559 (= z!3451 (store ((as const (Array Context!16626 Bool)) false) c!10532 true)))))

(assert (=> start!720898 e!4426066))

(declare-fun condSetEmpty!56006 () Bool)

(assert (=> start!720898 (= condSetEmpty!56006 (= z!3451 ((as const (Array Context!16626 Bool)) false)))))

(assert (=> start!720898 setRes!56006))

(declare-fun inv!91793 (Context!16626) Bool)

(assert (=> start!720898 (and (inv!91793 c!10532) e!4426070)))

(assert (=> start!720898 tp_is_empty!49009))

(assert (=> start!720898 e!4426065))

(declare-fun res!2980553 () Bool)

(assert (=> b!7397661 (=> res!2980553 e!4426063)))

(assert (=> b!7397661 (= res!2980553 (not (exists!4739 z!3451 lambda!459204)))))

(assert (=> b!7397662 (= e!4426064 (not e!4426069))))

(declare-fun res!2980555 () Bool)

(assert (=> b!7397662 (=> res!2980555 e!4426069)))

(assert (=> b!7397662 (= res!2980555 (or (not (select lt!2617991 lt!2617986)) (= lt!2617991 lt!2617987)))))

(assert (=> b!7397662 (= (flatMapPost!192 z!3451 lambda!459202 lt!2617986) lt!2617990)))

(declare-fun empty!3487 () Context!16626)

(assert (=> b!7397662 (= lt!2617990 empty!3487)))

(assert (=> b!7397662 true))

(declare-fun e!4426067 () Bool)

(assert (=> b!7397662 (and (inv!91793 empty!3487) e!4426067)))

(declare-fun b!7397663 () Bool)

(declare-fun res!2980558 () Bool)

(assert (=> b!7397663 (=> (not res!2980558) (not e!4426066))))

(declare-fun head!15133 (List!71918) Regex!19373)

(assert (=> b!7397663 (= res!2980558 (= (head!15133 (exprs!8813 c!10532)) (ElementMatch!19373 a!2228)))))

(declare-fun b!7397664 () Bool)

(assert (=> b!7397664 (= e!4426063 (select z!3451 (getWitness!2432 z!3451 lambda!459204)))))

(declare-fun b!7397665 () Bool)

(declare-fun tp!2111195 () Bool)

(assert (=> b!7397665 (= e!4426067 tp!2111195)))

(declare-fun b!7397666 () Bool)

(declare-fun e!4426068 () Bool)

(declare-fun tp!2111196 () Bool)

(assert (=> b!7397666 (= e!4426068 tp!2111196)))

(declare-fun setElem!56006 () Context!16626)

(declare-fun setNonEmpty!56006 () Bool)

(declare-fun tp!2111199 () Bool)

(assert (=> setNonEmpty!56006 (= setRes!56006 (and tp!2111199 (inv!91793 setElem!56006) e!4426068))))

(declare-fun setRest!56006 () (InoxSet Context!16626))

(assert (=> setNonEmpty!56006 (= z!3451 ((_ map or) (store ((as const (Array Context!16626 Bool)) false) setElem!56006 true) setRest!56006))))

(assert (= (and start!720898 res!2980559) b!7397659))

(assert (= (and b!7397659 res!2980552) b!7397663))

(assert (= (and b!7397663 res!2980558) b!7397654))

(assert (= (and b!7397654 res!2980557) b!7397657))

(assert (= (and b!7397657 res!2980551) b!7397660))

(assert (= (and b!7397660 res!2980556) b!7397662))

(assert (= b!7397662 b!7397665))

(assert (= (and b!7397662 (not res!2980555)) b!7397658))

(assert (= (and b!7397658 (not res!2980560)) b!7397655))

(assert (= (and b!7397655 (not res!2980554)) b!7397661))

(assert (= (and b!7397661 (not res!2980553)) b!7397664))

(assert (= (and start!720898 condSetEmpty!56006) setIsEmpty!56006))

(assert (= (and start!720898 (not condSetEmpty!56006)) setNonEmpty!56006))

(assert (= setNonEmpty!56006 b!7397666))

(assert (= start!720898 b!7397653))

(assert (= (and start!720898 ((_ is Cons!71795) s!7927)) b!7397656))

(declare-fun m!8038862 () Bool)

(assert (=> b!7397662 m!8038862))

(declare-fun m!8038864 () Bool)

(assert (=> b!7397662 m!8038864))

(declare-fun m!8038866 () Bool)

(assert (=> b!7397662 m!8038866))

(declare-fun m!8038868 () Bool)

(assert (=> b!7397660 m!8038868))

(declare-fun m!8038870 () Bool)

(assert (=> b!7397660 m!8038870))

(declare-fun m!8038872 () Bool)

(assert (=> b!7397660 m!8038872))

(declare-fun m!8038874 () Bool)

(assert (=> b!7397660 m!8038874))

(declare-fun m!8038876 () Bool)

(assert (=> start!720898 m!8038876))

(declare-fun m!8038878 () Bool)

(assert (=> start!720898 m!8038878))

(declare-fun m!8038880 () Bool)

(assert (=> b!7397663 m!8038880))

(declare-fun m!8038882 () Bool)

(assert (=> b!7397664 m!8038882))

(assert (=> b!7397664 m!8038882))

(declare-fun m!8038884 () Bool)

(assert (=> b!7397664 m!8038884))

(declare-fun m!8038886 () Bool)

(assert (=> b!7397655 m!8038886))

(declare-fun m!8038888 () Bool)

(assert (=> b!7397655 m!8038888))

(declare-fun m!8038890 () Bool)

(assert (=> b!7397655 m!8038890))

(declare-fun m!8038892 () Bool)

(assert (=> b!7397661 m!8038892))

(declare-fun m!8038894 () Bool)

(assert (=> setNonEmpty!56006 m!8038894))

(declare-fun m!8038896 () Bool)

(assert (=> b!7397659 m!8038896))

(declare-fun m!8038898 () Bool)

(assert (=> b!7397658 m!8038898))

(declare-fun m!8038900 () Bool)

(assert (=> b!7397654 m!8038900))

(assert (=> b!7397654 m!8038900))

(declare-fun m!8038902 () Bool)

(assert (=> b!7397654 m!8038902))

(check-sat (not b!7397662) (not b!7397653) (not b!7397658) (not b!7397659) (not b!7397654) (not b!7397664) (not setNonEmpty!56006) (not b!7397656) (not start!720898) (not b!7397665) (not b!7397660) tp_is_empty!49009 (not b!7397661) (not b!7397655) (not b!7397666) (not b!7397663))
(check-sat)
(get-model)

(declare-fun b!7397683 () Bool)

(declare-fun e!4426077 () (InoxSet Context!16626))

(declare-fun e!4426078 () (InoxSet Context!16626))

(assert (=> b!7397683 (= e!4426077 e!4426078)))

(declare-fun c!1373969 () Bool)

(assert (=> b!7397683 (= c!1373969 ((_ is Cons!71794) (exprs!8813 c!10532)))))

(declare-fun call!681079 () (InoxSet Context!16626))

(declare-fun b!7397684 () Bool)

(assert (=> b!7397684 (= e!4426077 ((_ map or) call!681079 (derivationStepZipperUp!2779 (Context!16627 (t!386475 (exprs!8813 c!10532))) lt!2617988)))))

(declare-fun b!7397685 () Bool)

(assert (=> b!7397685 (= e!4426078 call!681079)))

(declare-fun b!7397686 () Bool)

(assert (=> b!7397686 (= e!4426078 ((as const (Array Context!16626 Bool)) false))))

(declare-fun d!2288816 () Bool)

(declare-fun c!1373968 () Bool)

(declare-fun e!4426079 () Bool)

(assert (=> d!2288816 (= c!1373968 e!4426079)))

(declare-fun res!2980563 () Bool)

(assert (=> d!2288816 (=> (not res!2980563) (not e!4426079))))

(assert (=> d!2288816 (= res!2980563 ((_ is Cons!71794) (exprs!8813 c!10532)))))

(assert (=> d!2288816 (= (derivationStepZipperUp!2779 c!10532 lt!2617988) e!4426077)))

(declare-fun b!7397687 () Bool)

(declare-fun nullable!8425 (Regex!19373) Bool)

(assert (=> b!7397687 (= e!4426079 (nullable!8425 (h!78242 (exprs!8813 c!10532))))))

(declare-fun bm!681074 () Bool)

(declare-fun derivationStepZipperDown!3177 (Regex!19373 Context!16626 C!39020) (InoxSet Context!16626))

(assert (=> bm!681074 (= call!681079 (derivationStepZipperDown!3177 (h!78242 (exprs!8813 c!10532)) (Context!16627 (t!386475 (exprs!8813 c!10532))) lt!2617988))))

(assert (= (and d!2288816 res!2980563) b!7397687))

(assert (= (and d!2288816 c!1373968) b!7397684))

(assert (= (and d!2288816 (not c!1373968)) b!7397683))

(assert (= (and b!7397683 c!1373969) b!7397685))

(assert (= (and b!7397683 (not c!1373969)) b!7397686))

(assert (= (or b!7397684 b!7397685) bm!681074))

(declare-fun m!8038904 () Bool)

(assert (=> b!7397684 m!8038904))

(declare-fun m!8038906 () Bool)

(assert (=> b!7397687 m!8038906))

(declare-fun m!8038908 () Bool)

(assert (=> bm!681074 m!8038908))

(assert (=> b!7397660 d!2288816))

(declare-fun bs!1923114 () Bool)

(declare-fun d!2288818 () Bool)

(assert (= bs!1923114 (and d!2288818 b!7397662)))

(declare-fun lambda!459207 () Int)

(assert (=> bs!1923114 (= (= lt!2617988 a!2228) (= lambda!459207 lambda!459202))))

(assert (=> d!2288818 true))

(declare-fun flatMap!3184 ((InoxSet Context!16626) Int) (InoxSet Context!16626))

(assert (=> d!2288818 (= (derivationStepZipper!3657 z!3451 lt!2617988) (flatMap!3184 z!3451 lambda!459207))))

(declare-fun bs!1923115 () Bool)

(assert (= bs!1923115 d!2288818))

(declare-fun m!8038910 () Bool)

(assert (=> bs!1923115 m!8038910))

(assert (=> b!7397660 d!2288818))

(declare-fun d!2288820 () Bool)

(assert (=> d!2288820 (= (head!15132 s!7927) (h!78243 s!7927))))

(assert (=> b!7397660 d!2288820))

(declare-fun bs!1923116 () Bool)

(declare-fun d!2288822 () Bool)

(assert (= bs!1923116 (and d!2288822 b!7397658)))

(declare-fun lambda!459210 () Int)

(assert (=> bs!1923116 (not (= lambda!459210 lambda!459203))))

(declare-fun bs!1923117 () Bool)

(assert (= bs!1923117 (and d!2288822 b!7397661)))

(assert (=> bs!1923117 (not (= lambda!459210 lambda!459204))))

(assert (=> d!2288822 true))

(assert (=> d!2288822 true))

(declare-fun order!29451 () Int)

(declare-fun order!29449 () Int)

(declare-fun dynLambda!29589 (Int Int) Int)

(declare-fun dynLambda!29590 (Int Int) Int)

(assert (=> d!2288822 (< (dynLambda!29589 order!29449 lambda!459202) (dynLambda!29590 order!29451 lambda!459210))))

(assert (=> d!2288822 (= (select (flatMap!3184 z!3451 lambda!459202) lt!2617989) (exists!4739 z!3451 lambda!459210))))

(declare-fun lt!2617994 () Context!16626)

(declare-fun choose!57394 ((InoxSet Context!16626) Int Context!16626) Context!16626)

(assert (=> d!2288822 (= lt!2617994 (choose!57394 z!3451 lambda!459202 lt!2617989))))

(assert (=> d!2288822 (= (flatMapPost!192 z!3451 lambda!459202 lt!2617989) lt!2617994)))

(declare-fun bs!1923118 () Bool)

(assert (= bs!1923118 d!2288822))

(declare-fun m!8038912 () Bool)

(assert (=> bs!1923118 m!8038912))

(declare-fun m!8038914 () Bool)

(assert (=> bs!1923118 m!8038914))

(declare-fun m!8038916 () Bool)

(assert (=> bs!1923118 m!8038916))

(declare-fun m!8038918 () Bool)

(assert (=> bs!1923118 m!8038918))

(assert (=> b!7397655 d!2288822))

(declare-fun d!2288824 () Bool)

(declare-fun e!4426082 () Bool)

(assert (=> d!2288824 e!4426082))

(declare-fun res!2980566 () Bool)

(assert (=> d!2288824 (=> (not res!2980566) (not e!4426082))))

(declare-fun lt!2617997 () Context!16626)

(declare-fun dynLambda!29591 (Int Context!16626) Bool)

(assert (=> d!2288824 (= res!2980566 (dynLambda!29591 lambda!459203 lt!2617997))))

(declare-datatypes ((List!71920 0))(
  ( (Nil!71796) (Cons!71796 (h!78244 Context!16626) (t!386477 List!71920)) )
))
(declare-fun getWitness!2433 (List!71920 Int) Context!16626)

(declare-fun toList!11735 ((InoxSet Context!16626)) List!71920)

(assert (=> d!2288824 (= lt!2617997 (getWitness!2433 (toList!11735 lt!2617991) lambda!459203))))

(assert (=> d!2288824 (exists!4739 lt!2617991 lambda!459203)))

(assert (=> d!2288824 (= (getWitness!2432 lt!2617991 lambda!459203) lt!2617997)))

(declare-fun b!7397693 () Bool)

(assert (=> b!7397693 (= e!4426082 (select lt!2617991 lt!2617997))))

(assert (= (and d!2288824 res!2980566) b!7397693))

(declare-fun b_lambda!285723 () Bool)

(assert (=> (not b_lambda!285723) (not d!2288824)))

(declare-fun m!8038920 () Bool)

(assert (=> d!2288824 m!8038920))

(declare-fun m!8038922 () Bool)

(assert (=> d!2288824 m!8038922))

(assert (=> d!2288824 m!8038922))

(declare-fun m!8038924 () Bool)

(assert (=> d!2288824 m!8038924))

(assert (=> d!2288824 m!8038898))

(declare-fun m!8038926 () Bool)

(assert (=> b!7397693 m!8038926))

(assert (=> b!7397655 d!2288824))

(declare-fun d!2288826 () Bool)

(assert (=> d!2288826 (= (isEmpty!41013 (exprs!8813 c!10532)) ((_ is Nil!71794) (exprs!8813 c!10532)))))

(assert (=> b!7397659 d!2288826))

(declare-fun d!2288828 () Bool)

(declare-fun e!4426083 () Bool)

(assert (=> d!2288828 e!4426083))

(declare-fun res!2980567 () Bool)

(assert (=> d!2288828 (=> (not res!2980567) (not e!4426083))))

(declare-fun lt!2617998 () Context!16626)

(assert (=> d!2288828 (= res!2980567 (dynLambda!29591 lambda!459204 lt!2617998))))

(assert (=> d!2288828 (= lt!2617998 (getWitness!2433 (toList!11735 z!3451) lambda!459204))))

(assert (=> d!2288828 (exists!4739 z!3451 lambda!459204)))

(assert (=> d!2288828 (= (getWitness!2432 z!3451 lambda!459204) lt!2617998)))

(declare-fun b!7397694 () Bool)

(assert (=> b!7397694 (= e!4426083 (select z!3451 lt!2617998))))

(assert (= (and d!2288828 res!2980567) b!7397694))

(declare-fun b_lambda!285725 () Bool)

(assert (=> (not b_lambda!285725) (not d!2288828)))

(declare-fun m!8038928 () Bool)

(assert (=> d!2288828 m!8038928))

(declare-fun m!8038930 () Bool)

(assert (=> d!2288828 m!8038930))

(assert (=> d!2288828 m!8038930))

(declare-fun m!8038932 () Bool)

(assert (=> d!2288828 m!8038932))

(assert (=> d!2288828 m!8038892))

(declare-fun m!8038934 () Bool)

(assert (=> b!7397694 m!8038934))

(assert (=> b!7397664 d!2288828))

(declare-fun d!2288830 () Bool)

(assert (=> d!2288830 (= (isEmpty!41013 (tail!14780 (exprs!8813 c!10532))) ((_ is Nil!71794) (tail!14780 (exprs!8813 c!10532))))))

(assert (=> b!7397654 d!2288830))

(declare-fun d!2288832 () Bool)

(assert (=> d!2288832 (= (tail!14780 (exprs!8813 c!10532)) (t!386475 (exprs!8813 c!10532)))))

(assert (=> b!7397654 d!2288832))

(declare-fun d!2288834 () Bool)

(assert (=> d!2288834 (= (head!15133 (exprs!8813 c!10532)) (h!78242 (exprs!8813 c!10532)))))

(assert (=> b!7397663 d!2288834))

(declare-fun d!2288838 () Bool)

(declare-fun lt!2618001 () Bool)

(declare-fun exists!4741 (List!71920 Int) Bool)

(assert (=> d!2288838 (= lt!2618001 (exists!4741 (toList!11735 lt!2617991) lambda!459203))))

(declare-fun choose!57397 ((InoxSet Context!16626) Int) Bool)

(assert (=> d!2288838 (= lt!2618001 (choose!57397 lt!2617991 lambda!459203))))

(assert (=> d!2288838 (= (exists!4739 lt!2617991 lambda!459203) lt!2618001)))

(declare-fun bs!1923119 () Bool)

(assert (= bs!1923119 d!2288838))

(assert (=> bs!1923119 m!8038922))

(assert (=> bs!1923119 m!8038922))

(declare-fun m!8038936 () Bool)

(assert (=> bs!1923119 m!8038936))

(declare-fun m!8038938 () Bool)

(assert (=> bs!1923119 m!8038938))

(assert (=> b!7397658 d!2288838))

(declare-fun bs!1923120 () Bool)

(declare-fun d!2288840 () Bool)

(assert (= bs!1923120 (and d!2288840 b!7397658)))

(declare-fun lambda!459211 () Int)

(assert (=> bs!1923120 (not (= lambda!459211 lambda!459203))))

(declare-fun bs!1923121 () Bool)

(assert (= bs!1923121 (and d!2288840 b!7397661)))

(assert (=> bs!1923121 (not (= lambda!459211 lambda!459204))))

(declare-fun bs!1923122 () Bool)

(assert (= bs!1923122 (and d!2288840 d!2288822)))

(assert (=> bs!1923122 (= (= lt!2617986 lt!2617989) (= lambda!459211 lambda!459210))))

(assert (=> d!2288840 true))

(assert (=> d!2288840 true))

(assert (=> d!2288840 (< (dynLambda!29589 order!29449 lambda!459202) (dynLambda!29590 order!29451 lambda!459211))))

(assert (=> d!2288840 (= (select (flatMap!3184 z!3451 lambda!459202) lt!2617986) (exists!4739 z!3451 lambda!459211))))

(declare-fun lt!2618002 () Context!16626)

(assert (=> d!2288840 (= lt!2618002 (choose!57394 z!3451 lambda!459202 lt!2617986))))

(assert (=> d!2288840 (= (flatMapPost!192 z!3451 lambda!459202 lt!2617986) lt!2618002)))

(declare-fun bs!1923123 () Bool)

(assert (= bs!1923123 d!2288840))

(assert (=> bs!1923123 m!8038912))

(declare-fun m!8038940 () Bool)

(assert (=> bs!1923123 m!8038940))

(declare-fun m!8038942 () Bool)

(assert (=> bs!1923123 m!8038942))

(declare-fun m!8038944 () Bool)

(assert (=> bs!1923123 m!8038944))

(assert (=> b!7397662 d!2288840))

(declare-fun d!2288842 () Bool)

(declare-fun lambda!459217 () Int)

(declare-fun forall!18161 (List!71918 Int) Bool)

(assert (=> d!2288842 (= (inv!91793 empty!3487) (forall!18161 (exprs!8813 empty!3487) lambda!459217))))

(declare-fun bs!1923127 () Bool)

(assert (= bs!1923127 d!2288842))

(declare-fun m!8038954 () Bool)

(assert (=> bs!1923127 m!8038954))

(assert (=> b!7397662 d!2288842))

(declare-fun bs!1923128 () Bool)

(declare-fun d!2288846 () Bool)

(assert (= bs!1923128 (and d!2288846 d!2288842)))

(declare-fun lambda!459218 () Int)

(assert (=> bs!1923128 (= lambda!459218 lambda!459217)))

(assert (=> d!2288846 (= (inv!91793 c!10532) (forall!18161 (exprs!8813 c!10532) lambda!459218))))

(declare-fun bs!1923129 () Bool)

(assert (= bs!1923129 d!2288846))

(declare-fun m!8038956 () Bool)

(assert (=> bs!1923129 m!8038956))

(assert (=> start!720898 d!2288846))

(declare-fun bs!1923130 () Bool)

(declare-fun d!2288848 () Bool)

(assert (= bs!1923130 (and d!2288848 d!2288842)))

(declare-fun lambda!459219 () Int)

(assert (=> bs!1923130 (= lambda!459219 lambda!459217)))

(declare-fun bs!1923131 () Bool)

(assert (= bs!1923131 (and d!2288848 d!2288846)))

(assert (=> bs!1923131 (= lambda!459219 lambda!459218)))

(assert (=> d!2288848 (= (inv!91793 setElem!56006) (forall!18161 (exprs!8813 setElem!56006) lambda!459219))))

(declare-fun bs!1923132 () Bool)

(assert (= bs!1923132 d!2288848))

(declare-fun m!8038958 () Bool)

(assert (=> bs!1923132 m!8038958))

(assert (=> setNonEmpty!56006 d!2288848))

(declare-fun d!2288850 () Bool)

(declare-fun lt!2618006 () Bool)

(assert (=> d!2288850 (= lt!2618006 (exists!4741 (toList!11735 z!3451) lambda!459204))))

(assert (=> d!2288850 (= lt!2618006 (choose!57397 z!3451 lambda!459204))))

(assert (=> d!2288850 (= (exists!4739 z!3451 lambda!459204) lt!2618006)))

(declare-fun bs!1923133 () Bool)

(assert (= bs!1923133 d!2288850))

(assert (=> bs!1923133 m!8038930))

(assert (=> bs!1923133 m!8038930))

(declare-fun m!8038960 () Bool)

(assert (=> bs!1923133 m!8038960))

(declare-fun m!8038962 () Bool)

(assert (=> bs!1923133 m!8038962))

(assert (=> b!7397661 d!2288850))

(declare-fun b!7397702 () Bool)

(declare-fun e!4426087 () Bool)

(declare-fun tp!2111204 () Bool)

(declare-fun tp!2111205 () Bool)

(assert (=> b!7397702 (= e!4426087 (and tp!2111204 tp!2111205))))

(assert (=> b!7397665 (= tp!2111195 e!4426087)))

(assert (= (and b!7397665 ((_ is Cons!71794) (exprs!8813 empty!3487))) b!7397702))

(declare-fun b!7397705 () Bool)

(declare-fun e!4426089 () Bool)

(declare-fun tp!2111206 () Bool)

(declare-fun tp!2111207 () Bool)

(assert (=> b!7397705 (= e!4426089 (and tp!2111206 tp!2111207))))

(assert (=> b!7397653 (= tp!2111198 e!4426089)))

(assert (= (and b!7397653 ((_ is Cons!71794) (exprs!8813 c!10532))) b!7397705))

(declare-fun condSetEmpty!56009 () Bool)

(assert (=> setNonEmpty!56006 (= condSetEmpty!56009 (= setRest!56006 ((as const (Array Context!16626 Bool)) false)))))

(declare-fun setRes!56009 () Bool)

(assert (=> setNonEmpty!56006 (= tp!2111199 setRes!56009)))

(declare-fun setIsEmpty!56009 () Bool)

(assert (=> setIsEmpty!56009 setRes!56009))

(declare-fun e!4426093 () Bool)

(declare-fun setElem!56009 () Context!16626)

(declare-fun setNonEmpty!56009 () Bool)

(declare-fun tp!2111212 () Bool)

(assert (=> setNonEmpty!56009 (= setRes!56009 (and tp!2111212 (inv!91793 setElem!56009) e!4426093))))

(declare-fun setRest!56009 () (InoxSet Context!16626))

(assert (=> setNonEmpty!56009 (= setRest!56006 ((_ map or) (store ((as const (Array Context!16626 Bool)) false) setElem!56009 true) setRest!56009))))

(declare-fun b!7397711 () Bool)

(declare-fun tp!2111213 () Bool)

(assert (=> b!7397711 (= e!4426093 tp!2111213)))

(assert (= (and setNonEmpty!56006 condSetEmpty!56009) setIsEmpty!56009))

(assert (= (and setNonEmpty!56006 (not condSetEmpty!56009)) setNonEmpty!56009))

(assert (= setNonEmpty!56009 b!7397711))

(declare-fun m!8038972 () Bool)

(assert (=> setNonEmpty!56009 m!8038972))

(declare-fun b!7397712 () Bool)

(declare-fun e!4426094 () Bool)

(declare-fun tp!2111214 () Bool)

(declare-fun tp!2111215 () Bool)

(assert (=> b!7397712 (= e!4426094 (and tp!2111214 tp!2111215))))

(assert (=> b!7397666 (= tp!2111196 e!4426094)))

(assert (= (and b!7397666 ((_ is Cons!71794) (exprs!8813 setElem!56006))) b!7397712))

(declare-fun b!7397717 () Bool)

(declare-fun e!4426097 () Bool)

(declare-fun tp!2111218 () Bool)

(assert (=> b!7397717 (= e!4426097 (and tp_is_empty!49009 tp!2111218))))

(assert (=> b!7397656 (= tp!2111197 e!4426097)))

(assert (= (and b!7397656 ((_ is Cons!71795) (t!386476 s!7927))) b!7397717))

(declare-fun b_lambda!285729 () Bool)

(assert (= b_lambda!285725 (or b!7397661 b_lambda!285729)))

(declare-fun bs!1923134 () Bool)

(declare-fun d!2288856 () Bool)

(assert (= bs!1923134 (and d!2288856 b!7397661)))

(assert (=> bs!1923134 (= (dynLambda!29591 lambda!459204 lt!2617998) (select (derivationStepZipperUp!2779 lt!2617998 lt!2617988) lt!2617989))))

(declare-fun m!8038974 () Bool)

(assert (=> bs!1923134 m!8038974))

(declare-fun m!8038976 () Bool)

(assert (=> bs!1923134 m!8038976))

(assert (=> d!2288828 d!2288856))

(declare-fun b_lambda!285731 () Bool)

(assert (= b_lambda!285723 (or b!7397658 b_lambda!285731)))

(declare-fun bs!1923135 () Bool)

(declare-fun d!2288858 () Bool)

(assert (= bs!1923135 (and d!2288858 b!7397658)))

(assert (=> bs!1923135 (= (dynLambda!29591 lambda!459203 lt!2617997) (not (= lt!2617997 lt!2617986)))))

(assert (=> d!2288824 d!2288858))

(check-sat (not d!2288818) (not b!7397705) (not b!7397702) (not b_lambda!285729) (not bs!1923134) (not d!2288842) (not d!2288824) (not b!7397717) (not d!2288848) (not bm!681074) (not b!7397687) (not b!7397711) (not b_lambda!285731) (not d!2288838) (not d!2288828) (not d!2288840) (not d!2288846) (not b!7397684) (not b!7397712) (not d!2288822) tp_is_empty!49009 (not setNonEmpty!56009) (not d!2288850))
(check-sat)

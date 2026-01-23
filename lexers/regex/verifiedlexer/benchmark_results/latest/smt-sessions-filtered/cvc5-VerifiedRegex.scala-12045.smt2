; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!675636 () Bool)

(assert start!675636)

(declare-fun b!7013571 () Bool)

(assert (=> b!7013571 true))

(declare-fun b!7013570 () Bool)

(assert (=> b!7013570 true))

(declare-fun b!7013564 () Bool)

(assert (=> b!7013564 true))

(declare-fun b!7013560 () Bool)

(declare-fun e!4215936 () Bool)

(declare-fun tp!1932723 () Bool)

(assert (=> b!7013560 (= e!4215936 tp!1932723)))

(declare-fun b!7013561 () Bool)

(declare-fun res!2862341 () Bool)

(declare-fun e!4215938 () Bool)

(assert (=> b!7013561 (=> res!2862341 e!4215938)))

(declare-datatypes ((C!34942 0))(
  ( (C!34943 (val!27173 Int)) )
))
(declare-datatypes ((Regex!17336 0))(
  ( (ElementMatch!17336 (c!1302899 C!34942)) (Concat!26181 (regOne!35184 Regex!17336) (regTwo!35184 Regex!17336)) (EmptyExpr!17336) (Star!17336 (reg!17665 Regex!17336)) (EmptyLang!17336) (Union!17336 (regOne!35185 Regex!17336) (regTwo!35185 Regex!17336)) )
))
(declare-datatypes ((List!67553 0))(
  ( (Nil!67429) (Cons!67429 (h!73877 Regex!17336) (t!381308 List!67553)) )
))
(declare-datatypes ((Context!12664 0))(
  ( (Context!12665 (exprs!6832 List!67553)) )
))
(declare-fun lt!2507101 () Context!12664)

(declare-fun isEmpty!39380 (List!67553) Bool)

(assert (=> b!7013561 (= res!2862341 (isEmpty!39380 (exprs!6832 lt!2507101)))))

(declare-fun setRes!48437 () Bool)

(declare-fun setNonEmpty!48437 () Bool)

(declare-fun tp!1932724 () Bool)

(declare-fun setElem!48437 () Context!12664)

(declare-fun inv!86200 (Context!12664) Bool)

(assert (=> setNonEmpty!48437 (= setRes!48437 (and tp!1932724 (inv!86200 setElem!48437) e!4215936))))

(declare-fun z1!570 () (Set Context!12664))

(declare-fun setRest!48437 () (Set Context!12664))

(assert (=> setNonEmpty!48437 (= z1!570 (set.union (set.insert setElem!48437 (as set.empty (Set Context!12664))) setRest!48437))))

(declare-fun b!7013562 () Bool)

(declare-fun res!2862343 () Bool)

(declare-fun e!4215934 () Bool)

(assert (=> b!7013562 (=> (not res!2862343) (not e!4215934))))

(declare-datatypes ((List!67554 0))(
  ( (Nil!67430) (Cons!67430 (h!73878 C!34942) (t!381309 List!67554)) )
))
(declare-fun s!7408 () List!67554)

(assert (=> b!7013562 (= res!2862343 (is-Cons!67430 s!7408))))

(declare-fun b!7013563 () Bool)

(declare-fun e!4215935 () Bool)

(declare-fun tp!1932725 () Bool)

(assert (=> b!7013563 (= e!4215935 tp!1932725)))

(declare-fun e!4215933 () Bool)

(assert (=> b!7013564 (= e!4215933 e!4215938)))

(declare-fun res!2862340 () Bool)

(assert (=> b!7013564 (=> res!2862340 e!4215938)))

(declare-fun lt!2507097 () (Set Context!12664))

(declare-fun lt!2507099 () (Set Context!12664))

(declare-fun derivationStepZipper!2816 ((Set Context!12664) C!34942) (Set Context!12664))

(assert (=> b!7013564 (= res!2862340 (not (= (derivationStepZipper!2816 lt!2507099 (h!73878 s!7408)) lt!2507097)))))

(declare-fun lambda!409427 () Int)

(declare-fun lt!2507100 () Context!12664)

(declare-fun flatMap!2322 ((Set Context!12664) Int) (Set Context!12664))

(declare-fun derivationStepZipperUp!1986 (Context!12664 C!34942) (Set Context!12664))

(assert (=> b!7013564 (= (flatMap!2322 lt!2507099 lambda!409427) (derivationStepZipperUp!1986 lt!2507100 (h!73878 s!7408)))))

(declare-datatypes ((Unit!161350 0))(
  ( (Unit!161351) )
))
(declare-fun lt!2507095 () Unit!161350)

(declare-fun lemmaFlatMapOnSingletonSet!1837 ((Set Context!12664) Context!12664 Int) Unit!161350)

(assert (=> b!7013564 (= lt!2507095 (lemmaFlatMapOnSingletonSet!1837 lt!2507099 lt!2507100 lambda!409427))))

(assert (=> b!7013564 (= lt!2507097 (derivationStepZipperUp!1986 lt!2507100 (h!73878 s!7408)))))

(declare-fun lambda!409426 () Int)

(declare-fun lt!2507104 () Unit!161350)

(declare-fun ct2!306 () Context!12664)

(declare-fun lemmaConcatPreservesForall!672 (List!67553 List!67553 Int) Unit!161350)

(assert (=> b!7013564 (= lt!2507104 (lemmaConcatPreservesForall!672 (exprs!6832 lt!2507101) (exprs!6832 ct2!306) lambda!409426))))

(declare-fun b!7013565 () Bool)

(declare-fun e!4215939 () Bool)

(assert (=> b!7013565 (= e!4215939 e!4215933)))

(declare-fun res!2862347 () Bool)

(assert (=> b!7013565 (=> res!2862347 e!4215933)))

(declare-fun lt!2507096 () (Set Context!12664))

(assert (=> b!7013565 (= res!2862347 (not (= lt!2507099 lt!2507096)))))

(assert (=> b!7013565 (= lt!2507099 (set.insert lt!2507100 (as set.empty (Set Context!12664))))))

(declare-fun lt!2507102 () Unit!161350)

(assert (=> b!7013565 (= lt!2507102 (lemmaConcatPreservesForall!672 (exprs!6832 lt!2507101) (exprs!6832 ct2!306) lambda!409426))))

(declare-fun b!7013566 () Bool)

(declare-fun res!2862345 () Bool)

(declare-fun e!4215937 () Bool)

(assert (=> b!7013566 (=> res!2862345 e!4215937)))

(declare-fun lt!2507103 () Context!12664)

(declare-fun lt!2507094 () (Set Context!12664))

(assert (=> b!7013566 (= res!2862345 (not (set.member lt!2507103 lt!2507094)))))

(declare-fun b!7013567 () Bool)

(declare-fun forall!16247 (List!67553 Int) Bool)

(declare-fun tail!13417 (List!67553) List!67553)

(assert (=> b!7013567 (= e!4215938 (forall!16247 (tail!13417 (exprs!6832 lt!2507101)) lambda!409426))))

(declare-fun setIsEmpty!48437 () Bool)

(assert (=> setIsEmpty!48437 setRes!48437))

(declare-fun b!7013568 () Bool)

(declare-fun e!4215940 () Bool)

(declare-fun tp_is_empty!43897 () Bool)

(declare-fun tp!1932722 () Bool)

(assert (=> b!7013568 (= e!4215940 (and tp_is_empty!43897 tp!1932722))))

(assert (=> b!7013570 (= e!4215937 e!4215939)))

(declare-fun res!2862338 () Bool)

(assert (=> b!7013570 (=> res!2862338 e!4215939)))

(assert (=> b!7013570 (= res!2862338 (or (not (= lt!2507100 lt!2507103)) (not (set.member lt!2507101 z1!570))))))

(declare-fun ++!15351 (List!67553 List!67553) List!67553)

(assert (=> b!7013570 (= lt!2507100 (Context!12665 (++!15351 (exprs!6832 lt!2507101) (exprs!6832 ct2!306))))))

(declare-fun lt!2507098 () Unit!161350)

(assert (=> b!7013570 (= lt!2507098 (lemmaConcatPreservesForall!672 (exprs!6832 lt!2507101) (exprs!6832 ct2!306) lambda!409426))))

(declare-fun lambda!409425 () Int)

(declare-fun mapPost2!191 ((Set Context!12664) Int Context!12664) Context!12664)

(assert (=> b!7013570 (= lt!2507101 (mapPost2!191 z1!570 lambda!409425 lt!2507103))))

(assert (=> b!7013571 (= e!4215934 (not e!4215937))))

(declare-fun res!2862342 () Bool)

(assert (=> b!7013571 (=> res!2862342 e!4215937)))

(declare-fun matchZipper!2876 ((Set Context!12664) List!67554) Bool)

(assert (=> b!7013571 (= res!2862342 (not (matchZipper!2876 lt!2507096 s!7408)))))

(assert (=> b!7013571 (= lt!2507096 (set.insert lt!2507103 (as set.empty (Set Context!12664))))))

(declare-fun lambda!409424 () Int)

(declare-fun getWitness!1284 ((Set Context!12664) Int) Context!12664)

(assert (=> b!7013571 (= lt!2507103 (getWitness!1284 lt!2507094 lambda!409424))))

(declare-datatypes ((List!67555 0))(
  ( (Nil!67431) (Cons!67431 (h!73879 Context!12664) (t!381310 List!67555)) )
))
(declare-fun lt!2507105 () List!67555)

(declare-fun exists!3191 (List!67555 Int) Bool)

(assert (=> b!7013571 (exists!3191 lt!2507105 lambda!409424)))

(declare-fun lt!2507093 () Unit!161350)

(declare-fun lemmaZipperMatchesExistsMatchingContext!305 (List!67555 List!67554) Unit!161350)

(assert (=> b!7013571 (= lt!2507093 (lemmaZipperMatchesExistsMatchingContext!305 lt!2507105 s!7408))))

(declare-fun toList!10696 ((Set Context!12664)) List!67555)

(assert (=> b!7013571 (= lt!2507105 (toList!10696 lt!2507094))))

(declare-fun b!7013572 () Bool)

(declare-fun res!2862344 () Bool)

(assert (=> b!7013572 (=> res!2862344 e!4215938)))

(assert (=> b!7013572 (= res!2862344 (not (is-Cons!67429 (exprs!6832 lt!2507101))))))

(declare-fun b!7013569 () Bool)

(declare-fun res!2862346 () Bool)

(assert (=> b!7013569 (=> res!2862346 e!4215938)))

(declare-fun nullable!7096 (Regex!17336) Bool)

(assert (=> b!7013569 (= res!2862346 (nullable!7096 (h!73877 (exprs!6832 lt!2507101))))))

(declare-fun res!2862339 () Bool)

(assert (=> start!675636 (=> (not res!2862339) (not e!4215934))))

(assert (=> start!675636 (= res!2862339 (matchZipper!2876 lt!2507094 s!7408))))

(declare-fun appendTo!457 ((Set Context!12664) Context!12664) (Set Context!12664))

(assert (=> start!675636 (= lt!2507094 (appendTo!457 z1!570 ct2!306))))

(assert (=> start!675636 e!4215934))

(declare-fun condSetEmpty!48437 () Bool)

(assert (=> start!675636 (= condSetEmpty!48437 (= z1!570 (as set.empty (Set Context!12664))))))

(assert (=> start!675636 setRes!48437))

(assert (=> start!675636 (and (inv!86200 ct2!306) e!4215935)))

(assert (=> start!675636 e!4215940))

(assert (= (and start!675636 res!2862339) b!7013562))

(assert (= (and b!7013562 res!2862343) b!7013571))

(assert (= (and b!7013571 (not res!2862342)) b!7013566))

(assert (= (and b!7013566 (not res!2862345)) b!7013570))

(assert (= (and b!7013570 (not res!2862338)) b!7013565))

(assert (= (and b!7013565 (not res!2862347)) b!7013564))

(assert (= (and b!7013564 (not res!2862340)) b!7013572))

(assert (= (and b!7013572 (not res!2862344)) b!7013561))

(assert (= (and b!7013561 (not res!2862341)) b!7013569))

(assert (= (and b!7013569 (not res!2862346)) b!7013567))

(assert (= (and start!675636 condSetEmpty!48437) setIsEmpty!48437))

(assert (= (and start!675636 (not condSetEmpty!48437)) setNonEmpty!48437))

(assert (= setNonEmpty!48437 b!7013560))

(assert (= start!675636 b!7013563))

(assert (= (and start!675636 (is-Cons!67430 s!7408)) b!7013568))

(declare-fun m!7712680 () Bool)

(assert (=> b!7013564 m!7712680))

(declare-fun m!7712682 () Bool)

(assert (=> b!7013564 m!7712682))

(declare-fun m!7712684 () Bool)

(assert (=> b!7013564 m!7712684))

(declare-fun m!7712686 () Bool)

(assert (=> b!7013564 m!7712686))

(declare-fun m!7712688 () Bool)

(assert (=> b!7013564 m!7712688))

(declare-fun m!7712690 () Bool)

(assert (=> b!7013569 m!7712690))

(declare-fun m!7712692 () Bool)

(assert (=> b!7013570 m!7712692))

(declare-fun m!7712694 () Bool)

(assert (=> b!7013570 m!7712694))

(assert (=> b!7013570 m!7712684))

(declare-fun m!7712696 () Bool)

(assert (=> b!7013570 m!7712696))

(declare-fun m!7712698 () Bool)

(assert (=> b!7013565 m!7712698))

(assert (=> b!7013565 m!7712684))

(declare-fun m!7712700 () Bool)

(assert (=> b!7013561 m!7712700))

(declare-fun m!7712702 () Bool)

(assert (=> setNonEmpty!48437 m!7712702))

(declare-fun m!7712704 () Bool)

(assert (=> b!7013571 m!7712704))

(declare-fun m!7712706 () Bool)

(assert (=> b!7013571 m!7712706))

(declare-fun m!7712708 () Bool)

(assert (=> b!7013571 m!7712708))

(declare-fun m!7712710 () Bool)

(assert (=> b!7013571 m!7712710))

(declare-fun m!7712712 () Bool)

(assert (=> b!7013571 m!7712712))

(declare-fun m!7712714 () Bool)

(assert (=> b!7013571 m!7712714))

(declare-fun m!7712716 () Bool)

(assert (=> b!7013567 m!7712716))

(assert (=> b!7013567 m!7712716))

(declare-fun m!7712718 () Bool)

(assert (=> b!7013567 m!7712718))

(declare-fun m!7712720 () Bool)

(assert (=> start!675636 m!7712720))

(declare-fun m!7712722 () Bool)

(assert (=> start!675636 m!7712722))

(declare-fun m!7712724 () Bool)

(assert (=> start!675636 m!7712724))

(declare-fun m!7712726 () Bool)

(assert (=> b!7013566 m!7712726))

(push 1)

(assert (not b!7013567))

(assert (not b!7013564))

(assert tp_is_empty!43897)

(assert (not b!7013568))

(assert (not setNonEmpty!48437))

(assert (not b!7013571))

(assert (not b!7013565))

(assert (not b!7013560))

(assert (not b!7013563))

(assert (not b!7013569))

(assert (not b!7013561))

(assert (not start!675636))

(assert (not b!7013570))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!7013634 () Bool)

(declare-fun res!2862384 () Bool)

(declare-fun e!4215969 () Bool)

(assert (=> b!7013634 (=> (not res!2862384) (not e!4215969))))

(declare-fun lt!2507149 () List!67553)

(declare-fun size!40985 (List!67553) Int)

(assert (=> b!7013634 (= res!2862384 (= (size!40985 lt!2507149) (+ (size!40985 (exprs!6832 lt!2507101)) (size!40985 (exprs!6832 ct2!306)))))))

(declare-fun d!2186090 () Bool)

(assert (=> d!2186090 e!4215969))

(declare-fun res!2862383 () Bool)

(assert (=> d!2186090 (=> (not res!2862383) (not e!4215969))))

(declare-fun content!13394 (List!67553) (Set Regex!17336))

(assert (=> d!2186090 (= res!2862383 (= (content!13394 lt!2507149) (set.union (content!13394 (exprs!6832 lt!2507101)) (content!13394 (exprs!6832 ct2!306)))))))

(declare-fun e!4215970 () List!67553)

(assert (=> d!2186090 (= lt!2507149 e!4215970)))

(declare-fun c!1302911 () Bool)

(assert (=> d!2186090 (= c!1302911 (is-Nil!67429 (exprs!6832 lt!2507101)))))

(assert (=> d!2186090 (= (++!15351 (exprs!6832 lt!2507101) (exprs!6832 ct2!306)) lt!2507149)))

(declare-fun b!7013633 () Bool)

(assert (=> b!7013633 (= e!4215970 (Cons!67429 (h!73877 (exprs!6832 lt!2507101)) (++!15351 (t!381308 (exprs!6832 lt!2507101)) (exprs!6832 ct2!306))))))

(declare-fun b!7013632 () Bool)

(assert (=> b!7013632 (= e!4215970 (exprs!6832 ct2!306))))

(declare-fun b!7013635 () Bool)

(assert (=> b!7013635 (= e!4215969 (or (not (= (exprs!6832 ct2!306) Nil!67429)) (= lt!2507149 (exprs!6832 lt!2507101))))))

(assert (= (and d!2186090 c!1302911) b!7013632))

(assert (= (and d!2186090 (not c!1302911)) b!7013633))

(assert (= (and d!2186090 res!2862383) b!7013634))

(assert (= (and b!7013634 res!2862384) b!7013635))

(declare-fun m!7712776 () Bool)

(assert (=> b!7013634 m!7712776))

(declare-fun m!7712778 () Bool)

(assert (=> b!7013634 m!7712778))

(declare-fun m!7712780 () Bool)

(assert (=> b!7013634 m!7712780))

(declare-fun m!7712782 () Bool)

(assert (=> d!2186090 m!7712782))

(declare-fun m!7712784 () Bool)

(assert (=> d!2186090 m!7712784))

(declare-fun m!7712786 () Bool)

(assert (=> d!2186090 m!7712786))

(declare-fun m!7712788 () Bool)

(assert (=> b!7013633 m!7712788))

(assert (=> b!7013570 d!2186090))

(declare-fun d!2186092 () Bool)

(assert (=> d!2186092 (forall!16247 (++!15351 (exprs!6832 lt!2507101) (exprs!6832 ct2!306)) lambda!409426)))

(declare-fun lt!2507152 () Unit!161350)

(declare-fun choose!52761 (List!67553 List!67553 Int) Unit!161350)

(assert (=> d!2186092 (= lt!2507152 (choose!52761 (exprs!6832 lt!2507101) (exprs!6832 ct2!306) lambda!409426))))

(assert (=> d!2186092 (forall!16247 (exprs!6832 lt!2507101) lambda!409426)))

(assert (=> d!2186092 (= (lemmaConcatPreservesForall!672 (exprs!6832 lt!2507101) (exprs!6832 ct2!306) lambda!409426) lt!2507152)))

(declare-fun bs!1866411 () Bool)

(assert (= bs!1866411 d!2186092))

(assert (=> bs!1866411 m!7712694))

(assert (=> bs!1866411 m!7712694))

(declare-fun m!7712790 () Bool)

(assert (=> bs!1866411 m!7712790))

(declare-fun m!7712792 () Bool)

(assert (=> bs!1866411 m!7712792))

(declare-fun m!7712794 () Bool)

(assert (=> bs!1866411 m!7712794))

(assert (=> b!7013570 d!2186092))

(declare-fun d!2186094 () Bool)

(declare-fun e!4215973 () Bool)

(assert (=> d!2186094 e!4215973))

(declare-fun res!2862387 () Bool)

(assert (=> d!2186094 (=> (not res!2862387) (not e!4215973))))

(declare-fun lt!2507155 () Context!12664)

(declare-fun dynLambda!27126 (Int Context!12664) Context!12664)

(assert (=> d!2186094 (= res!2862387 (= lt!2507103 (dynLambda!27126 lambda!409425 lt!2507155)))))

(declare-fun choose!52762 ((Set Context!12664) Int Context!12664) Context!12664)

(assert (=> d!2186094 (= lt!2507155 (choose!52762 z1!570 lambda!409425 lt!2507103))))

(declare-fun map!15626 ((Set Context!12664) Int) (Set Context!12664))

(assert (=> d!2186094 (set.member lt!2507103 (map!15626 z1!570 lambda!409425))))

(assert (=> d!2186094 (= (mapPost2!191 z1!570 lambda!409425 lt!2507103) lt!2507155)))

(declare-fun b!7013639 () Bool)

(assert (=> b!7013639 (= e!4215973 (set.member lt!2507155 z1!570))))

(assert (= (and d!2186094 res!2862387) b!7013639))

(declare-fun b_lambda!264475 () Bool)

(assert (=> (not b_lambda!264475) (not d!2186094)))

(declare-fun m!7712796 () Bool)

(assert (=> d!2186094 m!7712796))

(declare-fun m!7712798 () Bool)

(assert (=> d!2186094 m!7712798))

(declare-fun m!7712800 () Bool)

(assert (=> d!2186094 m!7712800))

(declare-fun m!7712802 () Bool)

(assert (=> d!2186094 m!7712802))

(declare-fun m!7712804 () Bool)

(assert (=> b!7013639 m!7712804))

(assert (=> b!7013570 d!2186094))

(declare-fun bs!1866412 () Bool)

(declare-fun d!2186096 () Bool)

(assert (= bs!1866412 (and d!2186096 b!7013571)))

(declare-fun lambda!409452 () Int)

(assert (=> bs!1866412 (not (= lambda!409452 lambda!409424))))

(assert (=> d!2186096 true))

(declare-fun order!28045 () Int)

(declare-fun dynLambda!27127 (Int Int) Int)

(assert (=> d!2186096 (< (dynLambda!27127 order!28045 lambda!409424) (dynLambda!27127 order!28045 lambda!409452))))

(declare-fun forall!16249 (List!67555 Int) Bool)

(assert (=> d!2186096 (= (exists!3191 lt!2507105 lambda!409424) (not (forall!16249 lt!2507105 lambda!409452)))))

(declare-fun bs!1866413 () Bool)

(assert (= bs!1866413 d!2186096))

(declare-fun m!7712806 () Bool)

(assert (=> bs!1866413 m!7712806))

(assert (=> b!7013571 d!2186096))

(declare-fun bs!1866414 () Bool)

(declare-fun d!2186098 () Bool)

(assert (= bs!1866414 (and d!2186098 b!7013571)))

(declare-fun lambda!409455 () Int)

(assert (=> bs!1866414 (= lambda!409455 lambda!409424)))

(declare-fun bs!1866415 () Bool)

(assert (= bs!1866415 (and d!2186098 d!2186096)))

(assert (=> bs!1866415 (not (= lambda!409455 lambda!409452))))

(assert (=> d!2186098 true))

(assert (=> d!2186098 (exists!3191 lt!2507105 lambda!409455)))

(declare-fun lt!2507158 () Unit!161350)

(declare-fun choose!52763 (List!67555 List!67554) Unit!161350)

(assert (=> d!2186098 (= lt!2507158 (choose!52763 lt!2507105 s!7408))))

(declare-fun content!13395 (List!67555) (Set Context!12664))

(assert (=> d!2186098 (matchZipper!2876 (content!13395 lt!2507105) s!7408)))

(assert (=> d!2186098 (= (lemmaZipperMatchesExistsMatchingContext!305 lt!2507105 s!7408) lt!2507158)))

(declare-fun bs!1866416 () Bool)

(assert (= bs!1866416 d!2186098))

(declare-fun m!7712808 () Bool)

(assert (=> bs!1866416 m!7712808))

(declare-fun m!7712810 () Bool)

(assert (=> bs!1866416 m!7712810))

(declare-fun m!7712812 () Bool)

(assert (=> bs!1866416 m!7712812))

(assert (=> bs!1866416 m!7712812))

(declare-fun m!7712814 () Bool)

(assert (=> bs!1866416 m!7712814))

(assert (=> b!7013571 d!2186098))

(declare-fun d!2186100 () Bool)

(declare-fun e!4215976 () Bool)

(assert (=> d!2186100 e!4215976))

(declare-fun res!2862391 () Bool)

(assert (=> d!2186100 (=> (not res!2862391) (not e!4215976))))

(declare-fun lt!2507161 () Context!12664)

(declare-fun dynLambda!27128 (Int Context!12664) Bool)

(assert (=> d!2186100 (= res!2862391 (dynLambda!27128 lambda!409424 lt!2507161))))

(declare-fun getWitness!1286 (List!67555 Int) Context!12664)

(assert (=> d!2186100 (= lt!2507161 (getWitness!1286 (toList!10696 lt!2507094) lambda!409424))))

(declare-fun exists!3193 ((Set Context!12664) Int) Bool)

(assert (=> d!2186100 (exists!3193 lt!2507094 lambda!409424)))

(assert (=> d!2186100 (= (getWitness!1284 lt!2507094 lambda!409424) lt!2507161)))

(declare-fun b!7013644 () Bool)

(assert (=> b!7013644 (= e!4215976 (set.member lt!2507161 lt!2507094))))

(assert (= (and d!2186100 res!2862391) b!7013644))

(declare-fun b_lambda!264477 () Bool)

(assert (=> (not b_lambda!264477) (not d!2186100)))

(declare-fun m!7712816 () Bool)

(assert (=> d!2186100 m!7712816))

(assert (=> d!2186100 m!7712704))

(assert (=> d!2186100 m!7712704))

(declare-fun m!7712818 () Bool)

(assert (=> d!2186100 m!7712818))

(declare-fun m!7712820 () Bool)

(assert (=> d!2186100 m!7712820))

(declare-fun m!7712822 () Bool)

(assert (=> b!7013644 m!7712822))

(assert (=> b!7013571 d!2186100))

(declare-fun d!2186102 () Bool)

(declare-fun e!4215979 () Bool)

(assert (=> d!2186102 e!4215979))

(declare-fun res!2862394 () Bool)

(assert (=> d!2186102 (=> (not res!2862394) (not e!4215979))))

(declare-fun lt!2507164 () List!67555)

(declare-fun noDuplicate!2572 (List!67555) Bool)

(assert (=> d!2186102 (= res!2862394 (noDuplicate!2572 lt!2507164))))

(declare-fun choose!52764 ((Set Context!12664)) List!67555)

(assert (=> d!2186102 (= lt!2507164 (choose!52764 lt!2507094))))

(assert (=> d!2186102 (= (toList!10696 lt!2507094) lt!2507164)))

(declare-fun b!7013647 () Bool)

(assert (=> b!7013647 (= e!4215979 (= (content!13395 lt!2507164) lt!2507094))))

(assert (= (and d!2186102 res!2862394) b!7013647))

(declare-fun m!7712824 () Bool)

(assert (=> d!2186102 m!7712824))

(declare-fun m!7712826 () Bool)

(assert (=> d!2186102 m!7712826))

(declare-fun m!7712828 () Bool)

(assert (=> b!7013647 m!7712828))

(assert (=> b!7013571 d!2186102))

(declare-fun d!2186104 () Bool)

(declare-fun c!1302916 () Bool)

(declare-fun isEmpty!39382 (List!67554) Bool)

(assert (=> d!2186104 (= c!1302916 (isEmpty!39382 s!7408))))

(declare-fun e!4215982 () Bool)

(assert (=> d!2186104 (= (matchZipper!2876 lt!2507096 s!7408) e!4215982)))

(declare-fun b!7013652 () Bool)

(declare-fun nullableZipper!2494 ((Set Context!12664)) Bool)

(assert (=> b!7013652 (= e!4215982 (nullableZipper!2494 lt!2507096))))

(declare-fun b!7013653 () Bool)

(declare-fun head!14180 (List!67554) C!34942)

(declare-fun tail!13419 (List!67554) List!67554)

(assert (=> b!7013653 (= e!4215982 (matchZipper!2876 (derivationStepZipper!2816 lt!2507096 (head!14180 s!7408)) (tail!13419 s!7408)))))

(assert (= (and d!2186104 c!1302916) b!7013652))

(assert (= (and d!2186104 (not c!1302916)) b!7013653))

(declare-fun m!7712830 () Bool)

(assert (=> d!2186104 m!7712830))

(declare-fun m!7712832 () Bool)

(assert (=> b!7013652 m!7712832))

(declare-fun m!7712834 () Bool)

(assert (=> b!7013653 m!7712834))

(assert (=> b!7013653 m!7712834))

(declare-fun m!7712836 () Bool)

(assert (=> b!7013653 m!7712836))

(declare-fun m!7712838 () Bool)

(assert (=> b!7013653 m!7712838))

(assert (=> b!7013653 m!7712836))

(assert (=> b!7013653 m!7712838))

(declare-fun m!7712840 () Bool)

(assert (=> b!7013653 m!7712840))

(assert (=> b!7013571 d!2186104))

(declare-fun bs!1866417 () Bool)

(declare-fun d!2186106 () Bool)

(assert (= bs!1866417 (and d!2186106 b!7013570)))

(declare-fun lambda!409458 () Int)

(assert (=> bs!1866417 (= lambda!409458 lambda!409426)))

(assert (=> d!2186106 (= (inv!86200 setElem!48437) (forall!16247 (exprs!6832 setElem!48437) lambda!409458))))

(declare-fun bs!1866418 () Bool)

(assert (= bs!1866418 d!2186106))

(declare-fun m!7712842 () Bool)

(assert (=> bs!1866418 m!7712842))

(assert (=> setNonEmpty!48437 d!2186106))

(declare-fun d!2186108 () Bool)

(declare-fun nullableFct!2688 (Regex!17336) Bool)

(assert (=> d!2186108 (= (nullable!7096 (h!73877 (exprs!6832 lt!2507101))) (nullableFct!2688 (h!73877 (exprs!6832 lt!2507101))))))

(declare-fun bs!1866419 () Bool)

(assert (= bs!1866419 d!2186108))

(declare-fun m!7712844 () Bool)

(assert (=> bs!1866419 m!7712844))

(assert (=> b!7013569 d!2186108))

(declare-fun d!2186110 () Bool)

(declare-fun c!1302917 () Bool)

(assert (=> d!2186110 (= c!1302917 (isEmpty!39382 s!7408))))

(declare-fun e!4215983 () Bool)

(assert (=> d!2186110 (= (matchZipper!2876 lt!2507094 s!7408) e!4215983)))

(declare-fun b!7013654 () Bool)

(assert (=> b!7013654 (= e!4215983 (nullableZipper!2494 lt!2507094))))

(declare-fun b!7013655 () Bool)

(assert (=> b!7013655 (= e!4215983 (matchZipper!2876 (derivationStepZipper!2816 lt!2507094 (head!14180 s!7408)) (tail!13419 s!7408)))))

(assert (= (and d!2186110 c!1302917) b!7013654))

(assert (= (and d!2186110 (not c!1302917)) b!7013655))

(assert (=> d!2186110 m!7712830))

(declare-fun m!7712846 () Bool)

(assert (=> b!7013654 m!7712846))

(assert (=> b!7013655 m!7712834))

(assert (=> b!7013655 m!7712834))

(declare-fun m!7712848 () Bool)

(assert (=> b!7013655 m!7712848))

(assert (=> b!7013655 m!7712838))

(assert (=> b!7013655 m!7712848))

(assert (=> b!7013655 m!7712838))

(declare-fun m!7712850 () Bool)

(assert (=> b!7013655 m!7712850))

(assert (=> start!675636 d!2186110))

(declare-fun bs!1866420 () Bool)

(declare-fun d!2186112 () Bool)

(assert (= bs!1866420 (and d!2186112 b!7013570)))

(declare-fun lambda!409463 () Int)

(assert (=> bs!1866420 (= lambda!409463 lambda!409425)))

(assert (=> d!2186112 true))

(assert (=> d!2186112 (= (appendTo!457 z1!570 ct2!306) (map!15626 z1!570 lambda!409463))))

(declare-fun bs!1866421 () Bool)

(assert (= bs!1866421 d!2186112))

(declare-fun m!7712852 () Bool)

(assert (=> bs!1866421 m!7712852))

(assert (=> start!675636 d!2186112))

(declare-fun bs!1866422 () Bool)

(declare-fun d!2186114 () Bool)

(assert (= bs!1866422 (and d!2186114 b!7013570)))

(declare-fun lambda!409464 () Int)

(assert (=> bs!1866422 (= lambda!409464 lambda!409426)))

(declare-fun bs!1866423 () Bool)

(assert (= bs!1866423 (and d!2186114 d!2186106)))

(assert (=> bs!1866423 (= lambda!409464 lambda!409458)))

(assert (=> d!2186114 (= (inv!86200 ct2!306) (forall!16247 (exprs!6832 ct2!306) lambda!409464))))

(declare-fun bs!1866424 () Bool)

(assert (= bs!1866424 d!2186114))

(declare-fun m!7712854 () Bool)

(assert (=> bs!1866424 m!7712854))

(assert (=> start!675636 d!2186114))

(declare-fun d!2186116 () Bool)

(assert (=> d!2186116 (= (isEmpty!39380 (exprs!6832 lt!2507101)) (is-Nil!67429 (exprs!6832 lt!2507101)))))

(assert (=> b!7013561 d!2186116))

(assert (=> b!7013565 d!2186092))

(declare-fun bs!1866425 () Bool)

(declare-fun d!2186118 () Bool)

(assert (= bs!1866425 (and d!2186118 b!7013564)))

(declare-fun lambda!409467 () Int)

(assert (=> bs!1866425 (= lambda!409467 lambda!409427)))

(assert (=> d!2186118 true))

(assert (=> d!2186118 (= (derivationStepZipper!2816 lt!2507099 (h!73878 s!7408)) (flatMap!2322 lt!2507099 lambda!409467))))

(declare-fun bs!1866426 () Bool)

(assert (= bs!1866426 d!2186118))

(declare-fun m!7712856 () Bool)

(assert (=> bs!1866426 m!7712856))

(assert (=> b!7013564 d!2186118))

(assert (=> b!7013564 d!2186092))

(declare-fun d!2186122 () Bool)

(declare-fun dynLambda!27129 (Int Context!12664) (Set Context!12664))

(assert (=> d!2186122 (= (flatMap!2322 lt!2507099 lambda!409427) (dynLambda!27129 lambda!409427 lt!2507100))))

(declare-fun lt!2507169 () Unit!161350)

(declare-fun choose!52765 ((Set Context!12664) Context!12664 Int) Unit!161350)

(assert (=> d!2186122 (= lt!2507169 (choose!52765 lt!2507099 lt!2507100 lambda!409427))))

(assert (=> d!2186122 (= lt!2507099 (set.insert lt!2507100 (as set.empty (Set Context!12664))))))

(assert (=> d!2186122 (= (lemmaFlatMapOnSingletonSet!1837 lt!2507099 lt!2507100 lambda!409427) lt!2507169)))

(declare-fun b_lambda!264479 () Bool)

(assert (=> (not b_lambda!264479) (not d!2186122)))

(declare-fun bs!1866427 () Bool)

(assert (= bs!1866427 d!2186122))

(assert (=> bs!1866427 m!7712680))

(declare-fun m!7712858 () Bool)

(assert (=> bs!1866427 m!7712858))

(declare-fun m!7712860 () Bool)

(assert (=> bs!1866427 m!7712860))

(assert (=> bs!1866427 m!7712698))

(assert (=> b!7013564 d!2186122))

(declare-fun d!2186124 () Bool)

(declare-fun c!1302925 () Bool)

(declare-fun e!4215991 () Bool)

(assert (=> d!2186124 (= c!1302925 e!4215991)))

(declare-fun res!2862397 () Bool)

(assert (=> d!2186124 (=> (not res!2862397) (not e!4215991))))

(assert (=> d!2186124 (= res!2862397 (is-Cons!67429 (exprs!6832 lt!2507100)))))

(declare-fun e!4215990 () (Set Context!12664))

(assert (=> d!2186124 (= (derivationStepZipperUp!1986 lt!2507100 (h!73878 s!7408)) e!4215990)))

(declare-fun bm!636972 () Bool)

(declare-fun call!636977 () (Set Context!12664))

(declare-fun derivationStepZipperDown!2054 (Regex!17336 Context!12664 C!34942) (Set Context!12664))

(assert (=> bm!636972 (= call!636977 (derivationStepZipperDown!2054 (h!73877 (exprs!6832 lt!2507100)) (Context!12665 (t!381308 (exprs!6832 lt!2507100))) (h!73878 s!7408)))))

(declare-fun b!7013668 () Bool)

(declare-fun e!4215992 () (Set Context!12664))

(assert (=> b!7013668 (= e!4215990 e!4215992)))

(declare-fun c!1302926 () Bool)

(assert (=> b!7013668 (= c!1302926 (is-Cons!67429 (exprs!6832 lt!2507100)))))

(declare-fun b!7013669 () Bool)

(assert (=> b!7013669 (= e!4215990 (set.union call!636977 (derivationStepZipperUp!1986 (Context!12665 (t!381308 (exprs!6832 lt!2507100))) (h!73878 s!7408))))))

(declare-fun b!7013670 () Bool)

(assert (=> b!7013670 (= e!4215992 (as set.empty (Set Context!12664)))))

(declare-fun b!7013671 () Bool)

(assert (=> b!7013671 (= e!4215992 call!636977)))

(declare-fun b!7013672 () Bool)

(assert (=> b!7013672 (= e!4215991 (nullable!7096 (h!73877 (exprs!6832 lt!2507100))))))

(assert (= (and d!2186124 res!2862397) b!7013672))

(assert (= (and d!2186124 c!1302925) b!7013669))

(assert (= (and d!2186124 (not c!1302925)) b!7013668))

(assert (= (and b!7013668 c!1302926) b!7013671))

(assert (= (and b!7013668 (not c!1302926)) b!7013670))

(assert (= (or b!7013669 b!7013671) bm!636972))

(declare-fun m!7712868 () Bool)

(assert (=> bm!636972 m!7712868))

(declare-fun m!7712870 () Bool)

(assert (=> b!7013669 m!7712870))

(declare-fun m!7712872 () Bool)

(assert (=> b!7013672 m!7712872))

(assert (=> b!7013564 d!2186124))

(declare-fun d!2186128 () Bool)

(declare-fun choose!52766 ((Set Context!12664) Int) (Set Context!12664))

(assert (=> d!2186128 (= (flatMap!2322 lt!2507099 lambda!409427) (choose!52766 lt!2507099 lambda!409427))))

(declare-fun bs!1866429 () Bool)

(assert (= bs!1866429 d!2186128))

(declare-fun m!7712874 () Bool)

(assert (=> bs!1866429 m!7712874))

(assert (=> b!7013564 d!2186128))

(declare-fun d!2186130 () Bool)

(declare-fun res!2862402 () Bool)

(declare-fun e!4215997 () Bool)

(assert (=> d!2186130 (=> res!2862402 e!4215997)))

(assert (=> d!2186130 (= res!2862402 (is-Nil!67429 (tail!13417 (exprs!6832 lt!2507101))))))

(assert (=> d!2186130 (= (forall!16247 (tail!13417 (exprs!6832 lt!2507101)) lambda!409426) e!4215997)))

(declare-fun b!7013677 () Bool)

(declare-fun e!4215998 () Bool)

(assert (=> b!7013677 (= e!4215997 e!4215998)))

(declare-fun res!2862403 () Bool)

(assert (=> b!7013677 (=> (not res!2862403) (not e!4215998))))

(declare-fun dynLambda!27130 (Int Regex!17336) Bool)

(assert (=> b!7013677 (= res!2862403 (dynLambda!27130 lambda!409426 (h!73877 (tail!13417 (exprs!6832 lt!2507101)))))))

(declare-fun b!7013678 () Bool)

(assert (=> b!7013678 (= e!4215998 (forall!16247 (t!381308 (tail!13417 (exprs!6832 lt!2507101))) lambda!409426))))

(assert (= (and d!2186130 (not res!2862402)) b!7013677))

(assert (= (and b!7013677 res!2862403) b!7013678))

(declare-fun b_lambda!264481 () Bool)

(assert (=> (not b_lambda!264481) (not b!7013677)))

(declare-fun m!7712876 () Bool)

(assert (=> b!7013677 m!7712876))

(declare-fun m!7712878 () Bool)

(assert (=> b!7013678 m!7712878))

(assert (=> b!7013567 d!2186130))

(declare-fun d!2186132 () Bool)

(assert (=> d!2186132 (= (tail!13417 (exprs!6832 lt!2507101)) (t!381308 (exprs!6832 lt!2507101)))))

(assert (=> b!7013567 d!2186132))

(declare-fun condSetEmpty!48443 () Bool)

(assert (=> setNonEmpty!48437 (= condSetEmpty!48443 (= setRest!48437 (as set.empty (Set Context!12664))))))

(declare-fun setRes!48443 () Bool)

(assert (=> setNonEmpty!48437 (= tp!1932724 setRes!48443)))

(declare-fun setIsEmpty!48443 () Bool)

(assert (=> setIsEmpty!48443 setRes!48443))

(declare-fun e!4216005 () Bool)

(declare-fun tp!1932743 () Bool)

(declare-fun setElem!48443 () Context!12664)

(declare-fun setNonEmpty!48443 () Bool)

(assert (=> setNonEmpty!48443 (= setRes!48443 (and tp!1932743 (inv!86200 setElem!48443) e!4216005))))

(declare-fun setRest!48443 () (Set Context!12664))

(assert (=> setNonEmpty!48443 (= setRest!48437 (set.union (set.insert setElem!48443 (as set.empty (Set Context!12664))) setRest!48443))))

(declare-fun b!7013691 () Bool)

(declare-fun tp!1932742 () Bool)

(assert (=> b!7013691 (= e!4216005 tp!1932742)))

(assert (= (and setNonEmpty!48437 condSetEmpty!48443) setIsEmpty!48443))

(assert (= (and setNonEmpty!48437 (not condSetEmpty!48443)) setNonEmpty!48443))

(assert (= setNonEmpty!48443 b!7013691))

(declare-fun m!7712880 () Bool)

(assert (=> setNonEmpty!48443 m!7712880))

(declare-fun b!7013696 () Bool)

(declare-fun e!4216008 () Bool)

(declare-fun tp!1932748 () Bool)

(declare-fun tp!1932749 () Bool)

(assert (=> b!7013696 (= e!4216008 (and tp!1932748 tp!1932749))))

(assert (=> b!7013560 (= tp!1932723 e!4216008)))

(assert (= (and b!7013560 (is-Cons!67429 (exprs!6832 setElem!48437))) b!7013696))

(declare-fun b!7013697 () Bool)

(declare-fun e!4216009 () Bool)

(declare-fun tp!1932750 () Bool)

(declare-fun tp!1932751 () Bool)

(assert (=> b!7013697 (= e!4216009 (and tp!1932750 tp!1932751))))

(assert (=> b!7013563 (= tp!1932725 e!4216009)))

(assert (= (and b!7013563 (is-Cons!67429 (exprs!6832 ct2!306))) b!7013697))

(declare-fun b!7013702 () Bool)

(declare-fun e!4216012 () Bool)

(declare-fun tp!1932754 () Bool)

(assert (=> b!7013702 (= e!4216012 (and tp_is_empty!43897 tp!1932754))))

(assert (=> b!7013568 (= tp!1932722 e!4216012)))

(assert (= (and b!7013568 (is-Cons!67430 (t!381309 s!7408))) b!7013702))

(declare-fun b_lambda!264483 () Bool)

(assert (= b_lambda!264481 (or b!7013570 b_lambda!264483)))

(declare-fun bs!1866430 () Bool)

(declare-fun d!2186134 () Bool)

(assert (= bs!1866430 (and d!2186134 b!7013570)))

(declare-fun validRegex!8896 (Regex!17336) Bool)

(assert (=> bs!1866430 (= (dynLambda!27130 lambda!409426 (h!73877 (tail!13417 (exprs!6832 lt!2507101)))) (validRegex!8896 (h!73877 (tail!13417 (exprs!6832 lt!2507101)))))))

(declare-fun m!7712882 () Bool)

(assert (=> bs!1866430 m!7712882))

(assert (=> b!7013677 d!2186134))

(declare-fun b_lambda!264485 () Bool)

(assert (= b_lambda!264475 (or b!7013570 b_lambda!264485)))

(declare-fun bs!1866431 () Bool)

(declare-fun d!2186136 () Bool)

(assert (= bs!1866431 (and d!2186136 b!7013570)))

(declare-fun lt!2507175 () Unit!161350)

(assert (=> bs!1866431 (= lt!2507175 (lemmaConcatPreservesForall!672 (exprs!6832 lt!2507155) (exprs!6832 ct2!306) lambda!409426))))

(assert (=> bs!1866431 (= (dynLambda!27126 lambda!409425 lt!2507155) (Context!12665 (++!15351 (exprs!6832 lt!2507155) (exprs!6832 ct2!306))))))

(declare-fun m!7712884 () Bool)

(assert (=> bs!1866431 m!7712884))

(declare-fun m!7712886 () Bool)

(assert (=> bs!1866431 m!7712886))

(assert (=> d!2186094 d!2186136))

(declare-fun b_lambda!264487 () Bool)

(assert (= b_lambda!264479 (or b!7013564 b_lambda!264487)))

(declare-fun bs!1866432 () Bool)

(declare-fun d!2186138 () Bool)

(assert (= bs!1866432 (and d!2186138 b!7013564)))

(assert (=> bs!1866432 (= (dynLambda!27129 lambda!409427 lt!2507100) (derivationStepZipperUp!1986 lt!2507100 (h!73878 s!7408)))))

(assert (=> bs!1866432 m!7712686))

(assert (=> d!2186122 d!2186138))

(declare-fun b_lambda!264489 () Bool)

(assert (= b_lambda!264477 (or b!7013571 b_lambda!264489)))

(declare-fun bs!1866433 () Bool)

(declare-fun d!2186140 () Bool)

(assert (= bs!1866433 (and d!2186140 b!7013571)))

(assert (=> bs!1866433 (= (dynLambda!27128 lambda!409424 lt!2507161) (matchZipper!2876 (set.insert lt!2507161 (as set.empty (Set Context!12664))) s!7408))))

(declare-fun m!7712888 () Bool)

(assert (=> bs!1866433 m!7712888))

(assert (=> bs!1866433 m!7712888))

(declare-fun m!7712890 () Bool)

(assert (=> bs!1866433 m!7712890))

(assert (=> d!2186100 d!2186140))

(push 1)

(assert (not b_lambda!264485))

(assert (not b!7013702))

(assert (not b!7013647))

(assert (not bm!636972))

(assert (not b!7013696))

(assert (not b_lambda!264489))

(assert (not b!7013654))

(assert (not b!7013652))

(assert (not b!7013672))

(assert (not b_lambda!264483))

(assert (not d!2186108))

(assert (not bs!1866430))

(assert (not b!7013697))

(assert (not d!2186096))

(assert tp_is_empty!43897)

(assert (not d!2186104))

(assert (not d!2186098))

(assert (not b!7013655))

(assert (not d!2186090))

(assert (not d!2186092))

(assert (not d!2186106))

(assert (not d!2186102))

(assert (not d!2186118))

(assert (not b!7013691))

(assert (not b!7013633))

(assert (not setNonEmpty!48443))

(assert (not b!7013634))

(assert (not b!7013678))

(assert (not d!2186100))

(assert (not d!2186094))

(assert (not d!2186110))

(assert (not bs!1866431))

(assert (not d!2186122))

(assert (not d!2186114))

(assert (not d!2186128))

(assert (not bs!1866432))

(assert (not b_lambda!264487))

(assert (not b!7013669))

(assert (not b!7013653))

(assert (not d!2186112))

(assert (not bs!1866433))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2186186 () Bool)

(declare-fun res!2862432 () Bool)

(declare-fun e!4216057 () Bool)

(assert (=> d!2186186 (=> res!2862432 e!4216057)))

(assert (=> d!2186186 (= res!2862432 (is-Nil!67431 lt!2507164))))

(assert (=> d!2186186 (= (noDuplicate!2572 lt!2507164) e!4216057)))

(declare-fun b!7013770 () Bool)

(declare-fun e!4216058 () Bool)

(assert (=> b!7013770 (= e!4216057 e!4216058)))

(declare-fun res!2862433 () Bool)

(assert (=> b!7013770 (=> (not res!2862433) (not e!4216058))))

(declare-fun contains!20433 (List!67555 Context!12664) Bool)

(assert (=> b!7013770 (= res!2862433 (not (contains!20433 (t!381310 lt!2507164) (h!73879 lt!2507164))))))

(declare-fun b!7013771 () Bool)

(assert (=> b!7013771 (= e!4216058 (noDuplicate!2572 (t!381310 lt!2507164)))))

(assert (= (and d!2186186 (not res!2862432)) b!7013770))

(assert (= (and b!7013770 res!2862433) b!7013771))

(declare-fun m!7712996 () Bool)

(assert (=> b!7013770 m!7712996))

(declare-fun m!7712998 () Bool)

(assert (=> b!7013771 m!7712998))

(assert (=> d!2186102 d!2186186))

(declare-fun d!2186188 () Bool)

(declare-fun e!4216066 () Bool)

(assert (=> d!2186188 e!4216066))

(declare-fun res!2862438 () Bool)

(assert (=> d!2186188 (=> (not res!2862438) (not e!4216066))))

(declare-fun res!2862439 () List!67555)

(assert (=> d!2186188 (= res!2862438 (noDuplicate!2572 res!2862439))))

(declare-fun e!4216067 () Bool)

(assert (=> d!2186188 e!4216067))

(assert (=> d!2186188 (= (choose!52764 lt!2507094) res!2862439)))

(declare-fun b!7013779 () Bool)

(declare-fun e!4216065 () Bool)

(declare-fun tp!1932777 () Bool)

(assert (=> b!7013779 (= e!4216065 tp!1932777)))

(declare-fun b!7013778 () Bool)

(declare-fun tp!1932776 () Bool)

(assert (=> b!7013778 (= e!4216067 (and (inv!86200 (h!73879 res!2862439)) e!4216065 tp!1932776))))

(declare-fun b!7013780 () Bool)

(assert (=> b!7013780 (= e!4216066 (= (content!13395 res!2862439) lt!2507094))))

(assert (= b!7013778 b!7013779))

(assert (= (and d!2186188 (is-Cons!67431 res!2862439)) b!7013778))

(assert (= (and d!2186188 res!2862438) b!7013780))

(declare-fun m!7713000 () Bool)

(assert (=> d!2186188 m!7713000))

(declare-fun m!7713002 () Bool)

(assert (=> b!7013778 m!7713002))

(declare-fun m!7713004 () Bool)

(assert (=> b!7013780 m!7713004))

(assert (=> d!2186102 d!2186188))

(declare-fun d!2186190 () Bool)

(declare-fun res!2862440 () Bool)

(declare-fun e!4216068 () Bool)

(assert (=> d!2186190 (=> res!2862440 e!4216068)))

(assert (=> d!2186190 (= res!2862440 (is-Nil!67429 (exprs!6832 ct2!306)))))

(assert (=> d!2186190 (= (forall!16247 (exprs!6832 ct2!306) lambda!409464) e!4216068)))

(declare-fun b!7013781 () Bool)

(declare-fun e!4216069 () Bool)

(assert (=> b!7013781 (= e!4216068 e!4216069)))

(declare-fun res!2862441 () Bool)

(assert (=> b!7013781 (=> (not res!2862441) (not e!4216069))))

(assert (=> b!7013781 (= res!2862441 (dynLambda!27130 lambda!409464 (h!73877 (exprs!6832 ct2!306))))))

(declare-fun b!7013782 () Bool)

(assert (=> b!7013782 (= e!4216069 (forall!16247 (t!381308 (exprs!6832 ct2!306)) lambda!409464))))

(assert (= (and d!2186190 (not res!2862440)) b!7013781))

(assert (= (and b!7013781 res!2862441) b!7013782))

(declare-fun b_lambda!264507 () Bool)

(assert (=> (not b_lambda!264507) (not b!7013781)))

(declare-fun m!7713006 () Bool)

(assert (=> b!7013781 m!7713006))

(declare-fun m!7713008 () Bool)

(assert (=> b!7013782 m!7713008))

(assert (=> d!2186114 d!2186190))

(declare-fun d!2186192 () Bool)

(declare-fun c!1302945 () Bool)

(assert (=> d!2186192 (= c!1302945 (isEmpty!39382 (tail!13419 s!7408)))))

(declare-fun e!4216070 () Bool)

(assert (=> d!2186192 (= (matchZipper!2876 (derivationStepZipper!2816 lt!2507096 (head!14180 s!7408)) (tail!13419 s!7408)) e!4216070)))

(declare-fun b!7013783 () Bool)

(assert (=> b!7013783 (= e!4216070 (nullableZipper!2494 (derivationStepZipper!2816 lt!2507096 (head!14180 s!7408))))))

(declare-fun b!7013784 () Bool)

(assert (=> b!7013784 (= e!4216070 (matchZipper!2876 (derivationStepZipper!2816 (derivationStepZipper!2816 lt!2507096 (head!14180 s!7408)) (head!14180 (tail!13419 s!7408))) (tail!13419 (tail!13419 s!7408))))))

(assert (= (and d!2186192 c!1302945) b!7013783))

(assert (= (and d!2186192 (not c!1302945)) b!7013784))

(assert (=> d!2186192 m!7712838))

(declare-fun m!7713010 () Bool)

(assert (=> d!2186192 m!7713010))

(assert (=> b!7013783 m!7712836))

(declare-fun m!7713012 () Bool)

(assert (=> b!7013783 m!7713012))

(assert (=> b!7013784 m!7712838))

(declare-fun m!7713014 () Bool)

(assert (=> b!7013784 m!7713014))

(assert (=> b!7013784 m!7712836))

(assert (=> b!7013784 m!7713014))

(declare-fun m!7713016 () Bool)

(assert (=> b!7013784 m!7713016))

(assert (=> b!7013784 m!7712838))

(declare-fun m!7713018 () Bool)

(assert (=> b!7013784 m!7713018))

(assert (=> b!7013784 m!7713016))

(assert (=> b!7013784 m!7713018))

(declare-fun m!7713020 () Bool)

(assert (=> b!7013784 m!7713020))

(assert (=> b!7013653 d!2186192))

(declare-fun bs!1866455 () Bool)

(declare-fun d!2186194 () Bool)

(assert (= bs!1866455 (and d!2186194 b!7013564)))

(declare-fun lambda!409486 () Int)

(assert (=> bs!1866455 (= (= (head!14180 s!7408) (h!73878 s!7408)) (= lambda!409486 lambda!409427))))

(declare-fun bs!1866456 () Bool)

(assert (= bs!1866456 (and d!2186194 d!2186118)))

(assert (=> bs!1866456 (= (= (head!14180 s!7408) (h!73878 s!7408)) (= lambda!409486 lambda!409467))))

(assert (=> d!2186194 true))

(assert (=> d!2186194 (= (derivationStepZipper!2816 lt!2507096 (head!14180 s!7408)) (flatMap!2322 lt!2507096 lambda!409486))))

(declare-fun bs!1866457 () Bool)

(assert (= bs!1866457 d!2186194))

(declare-fun m!7713022 () Bool)

(assert (=> bs!1866457 m!7713022))

(assert (=> b!7013653 d!2186194))

(declare-fun d!2186196 () Bool)

(assert (=> d!2186196 (= (head!14180 s!7408) (h!73878 s!7408))))

(assert (=> b!7013653 d!2186196))

(declare-fun d!2186198 () Bool)

(assert (=> d!2186198 (= (tail!13419 s!7408) (t!381309 s!7408))))

(assert (=> b!7013653 d!2186198))

(declare-fun bs!1866458 () Bool)

(declare-fun d!2186200 () Bool)

(assert (= bs!1866458 (and d!2186200 b!7013571)))

(declare-fun lambda!409489 () Int)

(assert (=> bs!1866458 (not (= lambda!409489 lambda!409424))))

(declare-fun bs!1866459 () Bool)

(assert (= bs!1866459 (and d!2186200 d!2186096)))

(assert (=> bs!1866459 (not (= lambda!409489 lambda!409452))))

(declare-fun bs!1866460 () Bool)

(assert (= bs!1866460 (and d!2186200 d!2186098)))

(assert (=> bs!1866460 (not (= lambda!409489 lambda!409455))))

(assert (=> d!2186200 (= (nullableZipper!2494 lt!2507094) (exists!3193 lt!2507094 lambda!409489))))

(declare-fun bs!1866461 () Bool)

(assert (= bs!1866461 d!2186200))

(declare-fun m!7713024 () Bool)

(assert (=> bs!1866461 m!7713024))

(assert (=> b!7013654 d!2186200))

(declare-fun bs!1866462 () Bool)

(declare-fun d!2186202 () Bool)

(assert (= bs!1866462 (and d!2186202 b!7013571)))

(declare-fun lambda!409490 () Int)

(assert (=> bs!1866462 (not (= lambda!409490 lambda!409424))))

(declare-fun bs!1866463 () Bool)

(assert (= bs!1866463 (and d!2186202 d!2186096)))

(assert (=> bs!1866463 (not (= lambda!409490 lambda!409452))))

(declare-fun bs!1866464 () Bool)

(assert (= bs!1866464 (and d!2186202 d!2186098)))

(assert (=> bs!1866464 (not (= lambda!409490 lambda!409455))))

(declare-fun bs!1866465 () Bool)

(assert (= bs!1866465 (and d!2186202 d!2186200)))

(assert (=> bs!1866465 (= lambda!409490 lambda!409489)))

(assert (=> d!2186202 (= (nullableZipper!2494 lt!2507096) (exists!3193 lt!2507096 lambda!409490))))

(declare-fun bs!1866466 () Bool)

(assert (= bs!1866466 d!2186202))

(declare-fun m!7713026 () Bool)

(assert (=> bs!1866466 m!7713026))

(assert (=> b!7013652 d!2186202))

(declare-fun d!2186204 () Bool)

(declare-fun c!1302948 () Bool)

(assert (=> d!2186204 (= c!1302948 (isEmpty!39382 (tail!13419 s!7408)))))

(declare-fun e!4216071 () Bool)

(assert (=> d!2186204 (= (matchZipper!2876 (derivationStepZipper!2816 lt!2507094 (head!14180 s!7408)) (tail!13419 s!7408)) e!4216071)))

(declare-fun b!7013785 () Bool)

(assert (=> b!7013785 (= e!4216071 (nullableZipper!2494 (derivationStepZipper!2816 lt!2507094 (head!14180 s!7408))))))

(declare-fun b!7013786 () Bool)

(assert (=> b!7013786 (= e!4216071 (matchZipper!2876 (derivationStepZipper!2816 (derivationStepZipper!2816 lt!2507094 (head!14180 s!7408)) (head!14180 (tail!13419 s!7408))) (tail!13419 (tail!13419 s!7408))))))

(assert (= (and d!2186204 c!1302948) b!7013785))

(assert (= (and d!2186204 (not c!1302948)) b!7013786))

(assert (=> d!2186204 m!7712838))

(assert (=> d!2186204 m!7713010))

(assert (=> b!7013785 m!7712848))

(declare-fun m!7713028 () Bool)

(assert (=> b!7013785 m!7713028))

(assert (=> b!7013786 m!7712838))

(assert (=> b!7013786 m!7713014))

(assert (=> b!7013786 m!7712848))

(assert (=> b!7013786 m!7713014))

(declare-fun m!7713030 () Bool)

(assert (=> b!7013786 m!7713030))

(assert (=> b!7013786 m!7712838))

(assert (=> b!7013786 m!7713018))

(assert (=> b!7013786 m!7713030))

(assert (=> b!7013786 m!7713018))

(declare-fun m!7713032 () Bool)

(assert (=> b!7013786 m!7713032))

(assert (=> b!7013655 d!2186204))

(declare-fun bs!1866467 () Bool)

(declare-fun d!2186206 () Bool)

(assert (= bs!1866467 (and d!2186206 b!7013564)))

(declare-fun lambda!409491 () Int)

(assert (=> bs!1866467 (= (= (head!14180 s!7408) (h!73878 s!7408)) (= lambda!409491 lambda!409427))))

(declare-fun bs!1866468 () Bool)

(assert (= bs!1866468 (and d!2186206 d!2186118)))

(assert (=> bs!1866468 (= (= (head!14180 s!7408) (h!73878 s!7408)) (= lambda!409491 lambda!409467))))

(declare-fun bs!1866469 () Bool)

(assert (= bs!1866469 (and d!2186206 d!2186194)))

(assert (=> bs!1866469 (= lambda!409491 lambda!409486)))

(assert (=> d!2186206 true))

(assert (=> d!2186206 (= (derivationStepZipper!2816 lt!2507094 (head!14180 s!7408)) (flatMap!2322 lt!2507094 lambda!409491))))

(declare-fun bs!1866470 () Bool)

(assert (= bs!1866470 d!2186206))

(declare-fun m!7713034 () Bool)

(assert (=> bs!1866470 m!7713034))

(assert (=> b!7013655 d!2186206))

(assert (=> b!7013655 d!2186196))

(assert (=> b!7013655 d!2186198))

(declare-fun d!2186208 () Bool)

(assert (=> d!2186208 (= (isEmpty!39382 s!7408) (is-Nil!67430 s!7408))))

(assert (=> d!2186104 d!2186208))

(declare-fun d!2186210 () Bool)

(declare-fun res!2862442 () Bool)

(declare-fun e!4216072 () Bool)

(assert (=> d!2186210 (=> res!2862442 e!4216072)))

(assert (=> d!2186210 (= res!2862442 (is-Nil!67429 (t!381308 (tail!13417 (exprs!6832 lt!2507101)))))))

(assert (=> d!2186210 (= (forall!16247 (t!381308 (tail!13417 (exprs!6832 lt!2507101))) lambda!409426) e!4216072)))

(declare-fun b!7013787 () Bool)

(declare-fun e!4216073 () Bool)

(assert (=> b!7013787 (= e!4216072 e!4216073)))

(declare-fun res!2862443 () Bool)

(assert (=> b!7013787 (=> (not res!2862443) (not e!4216073))))

(assert (=> b!7013787 (= res!2862443 (dynLambda!27130 lambda!409426 (h!73877 (t!381308 (tail!13417 (exprs!6832 lt!2507101))))))))

(declare-fun b!7013788 () Bool)

(assert (=> b!7013788 (= e!4216073 (forall!16247 (t!381308 (t!381308 (tail!13417 (exprs!6832 lt!2507101)))) lambda!409426))))

(assert (= (and d!2186210 (not res!2862442)) b!7013787))

(assert (= (and b!7013787 res!2862443) b!7013788))

(declare-fun b_lambda!264509 () Bool)

(assert (=> (not b_lambda!264509) (not b!7013787)))

(declare-fun m!7713036 () Bool)

(assert (=> b!7013787 m!7713036))

(declare-fun m!7713038 () Bool)

(assert (=> b!7013788 m!7713038))

(assert (=> b!7013678 d!2186210))

(declare-fun d!2186212 () Bool)

(assert (=> d!2186212 (forall!16247 (++!15351 (exprs!6832 lt!2507155) (exprs!6832 ct2!306)) lambda!409426)))

(declare-fun lt!2507195 () Unit!161350)

(assert (=> d!2186212 (= lt!2507195 (choose!52761 (exprs!6832 lt!2507155) (exprs!6832 ct2!306) lambda!409426))))

(assert (=> d!2186212 (forall!16247 (exprs!6832 lt!2507155) lambda!409426)))

(assert (=> d!2186212 (= (lemmaConcatPreservesForall!672 (exprs!6832 lt!2507155) (exprs!6832 ct2!306) lambda!409426) lt!2507195)))

(declare-fun bs!1866471 () Bool)

(assert (= bs!1866471 d!2186212))

(assert (=> bs!1866471 m!7712886))

(assert (=> bs!1866471 m!7712886))

(declare-fun m!7713040 () Bool)

(assert (=> bs!1866471 m!7713040))

(declare-fun m!7713042 () Bool)

(assert (=> bs!1866471 m!7713042))

(declare-fun m!7713044 () Bool)

(assert (=> bs!1866471 m!7713044))

(assert (=> bs!1866431 d!2186212))

(declare-fun b!7013791 () Bool)

(declare-fun res!2862445 () Bool)

(declare-fun e!4216074 () Bool)

(assert (=> b!7013791 (=> (not res!2862445) (not e!4216074))))

(declare-fun lt!2507196 () List!67553)

(assert (=> b!7013791 (= res!2862445 (= (size!40985 lt!2507196) (+ (size!40985 (exprs!6832 lt!2507155)) (size!40985 (exprs!6832 ct2!306)))))))

(declare-fun d!2186214 () Bool)

(assert (=> d!2186214 e!4216074))

(declare-fun res!2862444 () Bool)

(assert (=> d!2186214 (=> (not res!2862444) (not e!4216074))))

(assert (=> d!2186214 (= res!2862444 (= (content!13394 lt!2507196) (set.union (content!13394 (exprs!6832 lt!2507155)) (content!13394 (exprs!6832 ct2!306)))))))

(declare-fun e!4216075 () List!67553)

(assert (=> d!2186214 (= lt!2507196 e!4216075)))

(declare-fun c!1302949 () Bool)

(assert (=> d!2186214 (= c!1302949 (is-Nil!67429 (exprs!6832 lt!2507155)))))

(assert (=> d!2186214 (= (++!15351 (exprs!6832 lt!2507155) (exprs!6832 ct2!306)) lt!2507196)))

(declare-fun b!7013790 () Bool)

(assert (=> b!7013790 (= e!4216075 (Cons!67429 (h!73877 (exprs!6832 lt!2507155)) (++!15351 (t!381308 (exprs!6832 lt!2507155)) (exprs!6832 ct2!306))))))

(declare-fun b!7013789 () Bool)

(assert (=> b!7013789 (= e!4216075 (exprs!6832 ct2!306))))

(declare-fun b!7013792 () Bool)

(assert (=> b!7013792 (= e!4216074 (or (not (= (exprs!6832 ct2!306) Nil!67429)) (= lt!2507196 (exprs!6832 lt!2507155))))))

(assert (= (and d!2186214 c!1302949) b!7013789))

(assert (= (and d!2186214 (not c!1302949)) b!7013790))

(assert (= (and d!2186214 res!2862444) b!7013791))

(assert (= (and b!7013791 res!2862445) b!7013792))

(declare-fun m!7713046 () Bool)

(assert (=> b!7013791 m!7713046))

(declare-fun m!7713048 () Bool)

(assert (=> b!7013791 m!7713048))

(assert (=> b!7013791 m!7712780))

(declare-fun m!7713050 () Bool)

(assert (=> d!2186214 m!7713050))

(declare-fun m!7713052 () Bool)

(assert (=> d!2186214 m!7713052))

(assert (=> d!2186214 m!7712786))

(declare-fun m!7713054 () Bool)

(assert (=> b!7013790 m!7713054))

(assert (=> bs!1866431 d!2186214))

(declare-fun d!2186216 () Bool)

(declare-fun res!2862446 () Bool)

(declare-fun e!4216076 () Bool)

(assert (=> d!2186216 (=> res!2862446 e!4216076)))

(assert (=> d!2186216 (= res!2862446 (is-Nil!67429 (++!15351 (exprs!6832 lt!2507101) (exprs!6832 ct2!306))))))

(assert (=> d!2186216 (= (forall!16247 (++!15351 (exprs!6832 lt!2507101) (exprs!6832 ct2!306)) lambda!409426) e!4216076)))

(declare-fun b!7013793 () Bool)

(declare-fun e!4216077 () Bool)

(assert (=> b!7013793 (= e!4216076 e!4216077)))

(declare-fun res!2862447 () Bool)

(assert (=> b!7013793 (=> (not res!2862447) (not e!4216077))))

(assert (=> b!7013793 (= res!2862447 (dynLambda!27130 lambda!409426 (h!73877 (++!15351 (exprs!6832 lt!2507101) (exprs!6832 ct2!306)))))))

(declare-fun b!7013794 () Bool)

(assert (=> b!7013794 (= e!4216077 (forall!16247 (t!381308 (++!15351 (exprs!6832 lt!2507101) (exprs!6832 ct2!306))) lambda!409426))))

(assert (= (and d!2186216 (not res!2862446)) b!7013793))

(assert (= (and b!7013793 res!2862447) b!7013794))

(declare-fun b_lambda!264511 () Bool)

(assert (=> (not b_lambda!264511) (not b!7013793)))

(declare-fun m!7713056 () Bool)

(assert (=> b!7013793 m!7713056))

(declare-fun m!7713058 () Bool)

(assert (=> b!7013794 m!7713058))

(assert (=> d!2186092 d!2186216))

(assert (=> d!2186092 d!2186090))

(declare-fun d!2186218 () Bool)

(assert (=> d!2186218 (forall!16247 (++!15351 (exprs!6832 lt!2507101) (exprs!6832 ct2!306)) lambda!409426)))

(assert (=> d!2186218 true))

(declare-fun _$78!527 () Unit!161350)

(assert (=> d!2186218 (= (choose!52761 (exprs!6832 lt!2507101) (exprs!6832 ct2!306) lambda!409426) _$78!527)))

(declare-fun bs!1866472 () Bool)

(assert (= bs!1866472 d!2186218))

(assert (=> bs!1866472 m!7712694))

(assert (=> bs!1866472 m!7712694))

(assert (=> bs!1866472 m!7712790))

(assert (=> d!2186092 d!2186218))

(declare-fun d!2186220 () Bool)

(declare-fun res!2862448 () Bool)

(declare-fun e!4216078 () Bool)

(assert (=> d!2186220 (=> res!2862448 e!4216078)))

(assert (=> d!2186220 (= res!2862448 (is-Nil!67429 (exprs!6832 lt!2507101)))))

(assert (=> d!2186220 (= (forall!16247 (exprs!6832 lt!2507101) lambda!409426) e!4216078)))

(declare-fun b!7013795 () Bool)

(declare-fun e!4216079 () Bool)

(assert (=> b!7013795 (= e!4216078 e!4216079)))

(declare-fun res!2862449 () Bool)

(assert (=> b!7013795 (=> (not res!2862449) (not e!4216079))))

(assert (=> b!7013795 (= res!2862449 (dynLambda!27130 lambda!409426 (h!73877 (exprs!6832 lt!2507101))))))

(declare-fun b!7013796 () Bool)

(assert (=> b!7013796 (= e!4216079 (forall!16247 (t!381308 (exprs!6832 lt!2507101)) lambda!409426))))

(assert (= (and d!2186220 (not res!2862448)) b!7013795))

(assert (= (and b!7013795 res!2862449) b!7013796))

(declare-fun b_lambda!264513 () Bool)

(assert (=> (not b_lambda!264513) (not b!7013795)))

(declare-fun m!7713060 () Bool)

(assert (=> b!7013795 m!7713060))

(declare-fun m!7713062 () Bool)

(assert (=> b!7013796 m!7713062))

(assert (=> d!2186092 d!2186220))

(declare-fun b!7013819 () Bool)

(declare-fun e!4216093 () Bool)

(assert (=> b!7013819 (= e!4216093 (nullable!7096 (regOne!35184 (h!73877 (exprs!6832 lt!2507100)))))))

(declare-fun d!2186222 () Bool)

(declare-fun c!1302962 () Bool)

(assert (=> d!2186222 (= c!1302962 (and (is-ElementMatch!17336 (h!73877 (exprs!6832 lt!2507100))) (= (c!1302899 (h!73877 (exprs!6832 lt!2507100))) (h!73878 s!7408))))))

(declare-fun e!4216096 () (Set Context!12664))

(assert (=> d!2186222 (= (derivationStepZipperDown!2054 (h!73877 (exprs!6832 lt!2507100)) (Context!12665 (t!381308 (exprs!6832 lt!2507100))) (h!73878 s!7408)) e!4216096)))

(declare-fun b!7013820 () Bool)

(declare-fun e!4216092 () (Set Context!12664))

(declare-fun e!4216095 () (Set Context!12664))

(assert (=> b!7013820 (= e!4216092 e!4216095)))

(declare-fun c!1302964 () Bool)

(assert (=> b!7013820 (= c!1302964 (is-Concat!26181 (h!73877 (exprs!6832 lt!2507100))))))

(declare-fun b!7013821 () Bool)

(assert (=> b!7013821 (= e!4216096 (set.insert (Context!12665 (t!381308 (exprs!6832 lt!2507100))) (as set.empty (Set Context!12664))))))

(declare-fun b!7013822 () Bool)

(declare-fun e!4216097 () (Set Context!12664))

(declare-fun call!636997 () (Set Context!12664))

(declare-fun call!636996 () (Set Context!12664))

(assert (=> b!7013822 (= e!4216097 (set.union call!636997 call!636996))))

(declare-fun b!7013823 () Bool)

(declare-fun e!4216094 () (Set Context!12664))

(assert (=> b!7013823 (= e!4216094 (as set.empty (Set Context!12664)))))

(declare-fun b!7013824 () Bool)

(declare-fun c!1302963 () Bool)

(assert (=> b!7013824 (= c!1302963 (is-Star!17336 (h!73877 (exprs!6832 lt!2507100))))))

(assert (=> b!7013824 (= e!4216095 e!4216094)))

(declare-fun b!7013825 () Bool)

(declare-fun call!636995 () (Set Context!12664))

(assert (=> b!7013825 (= e!4216095 call!636995)))

(declare-fun b!7013826 () Bool)

(declare-fun call!636993 () (Set Context!12664))

(assert (=> b!7013826 (= e!4216092 (set.union call!636997 call!636993))))

(declare-fun bm!636988 () Bool)

(assert (=> bm!636988 (= call!636995 call!636993)))

(declare-fun b!7013827 () Bool)

(assert (=> b!7013827 (= e!4216096 e!4216097)))

(declare-fun c!1302960 () Bool)

(assert (=> b!7013827 (= c!1302960 (is-Union!17336 (h!73877 (exprs!6832 lt!2507100))))))

(declare-fun bm!636989 () Bool)

(assert (=> bm!636989 (= call!636993 call!636996)))

(declare-fun bm!636990 () Bool)

(declare-fun call!636998 () List!67553)

(declare-fun call!636994 () List!67553)

(assert (=> bm!636990 (= call!636998 call!636994)))

(declare-fun c!1302961 () Bool)

(declare-fun bm!636991 () Bool)

(assert (=> bm!636991 (= call!636996 (derivationStepZipperDown!2054 (ite c!1302960 (regTwo!35185 (h!73877 (exprs!6832 lt!2507100))) (ite c!1302961 (regTwo!35184 (h!73877 (exprs!6832 lt!2507100))) (ite c!1302964 (regOne!35184 (h!73877 (exprs!6832 lt!2507100))) (reg!17665 (h!73877 (exprs!6832 lt!2507100)))))) (ite (or c!1302960 c!1302961) (Context!12665 (t!381308 (exprs!6832 lt!2507100))) (Context!12665 call!636998)) (h!73878 s!7408)))))

(declare-fun b!7013828 () Bool)

(assert (=> b!7013828 (= c!1302961 e!4216093)))

(declare-fun res!2862452 () Bool)

(assert (=> b!7013828 (=> (not res!2862452) (not e!4216093))))

(assert (=> b!7013828 (= res!2862452 (is-Concat!26181 (h!73877 (exprs!6832 lt!2507100))))))

(assert (=> b!7013828 (= e!4216097 e!4216092)))

(declare-fun b!7013829 () Bool)

(assert (=> b!7013829 (= e!4216094 call!636995)))

(declare-fun bm!636992 () Bool)

(declare-fun $colon$colon!2535 (List!67553 Regex!17336) List!67553)

(assert (=> bm!636992 (= call!636994 ($colon$colon!2535 (exprs!6832 (Context!12665 (t!381308 (exprs!6832 lt!2507100)))) (ite (or c!1302961 c!1302964) (regTwo!35184 (h!73877 (exprs!6832 lt!2507100))) (h!73877 (exprs!6832 lt!2507100)))))))

(declare-fun bm!636993 () Bool)

(assert (=> bm!636993 (= call!636997 (derivationStepZipperDown!2054 (ite c!1302960 (regOne!35185 (h!73877 (exprs!6832 lt!2507100))) (regOne!35184 (h!73877 (exprs!6832 lt!2507100)))) (ite c!1302960 (Context!12665 (t!381308 (exprs!6832 lt!2507100))) (Context!12665 call!636994)) (h!73878 s!7408)))))

(assert (= (and d!2186222 c!1302962) b!7013821))

(assert (= (and d!2186222 (not c!1302962)) b!7013827))

(assert (= (and b!7013827 c!1302960) b!7013822))

(assert (= (and b!7013827 (not c!1302960)) b!7013828))

(assert (= (and b!7013828 res!2862452) b!7013819))

(assert (= (and b!7013828 c!1302961) b!7013826))

(assert (= (and b!7013828 (not c!1302961)) b!7013820))

(assert (= (and b!7013820 c!1302964) b!7013825))

(assert (= (and b!7013820 (not c!1302964)) b!7013824))

(assert (= (and b!7013824 c!1302963) b!7013829))

(assert (= (and b!7013824 (not c!1302963)) b!7013823))

(assert (= (or b!7013825 b!7013829) bm!636990))

(assert (= (or b!7013825 b!7013829) bm!636988))

(assert (= (or b!7013826 bm!636988) bm!636989))

(assert (= (or b!7013826 bm!636990) bm!636992))

(assert (= (or b!7013822 b!7013826) bm!636993))

(assert (= (or b!7013822 bm!636989) bm!636991))

(declare-fun m!7713064 () Bool)

(assert (=> b!7013821 m!7713064))

(declare-fun m!7713066 () Bool)

(assert (=> bm!636993 m!7713066))

(declare-fun m!7713068 () Bool)

(assert (=> bm!636991 m!7713068))

(declare-fun m!7713070 () Bool)

(assert (=> b!7013819 m!7713070))

(declare-fun m!7713072 () Bool)

(assert (=> bm!636992 m!7713072))

(assert (=> bm!636972 d!2186222))

(declare-fun d!2186224 () Bool)

(declare-fun c!1302967 () Bool)

(assert (=> d!2186224 (= c!1302967 (is-Nil!67429 lt!2507149))))

(declare-fun e!4216100 () (Set Regex!17336))

(assert (=> d!2186224 (= (content!13394 lt!2507149) e!4216100)))

(declare-fun b!7013834 () Bool)

(assert (=> b!7013834 (= e!4216100 (as set.empty (Set Regex!17336)))))

(declare-fun b!7013835 () Bool)

(assert (=> b!7013835 (= e!4216100 (set.union (set.insert (h!73877 lt!2507149) (as set.empty (Set Regex!17336))) (content!13394 (t!381308 lt!2507149))))))

(assert (= (and d!2186224 c!1302967) b!7013834))

(assert (= (and d!2186224 (not c!1302967)) b!7013835))

(declare-fun m!7713074 () Bool)

(assert (=> b!7013835 m!7713074))

(declare-fun m!7713076 () Bool)

(assert (=> b!7013835 m!7713076))

(assert (=> d!2186090 d!2186224))

(declare-fun d!2186226 () Bool)

(declare-fun c!1302968 () Bool)

(assert (=> d!2186226 (= c!1302968 (is-Nil!67429 (exprs!6832 lt!2507101)))))

(declare-fun e!4216101 () (Set Regex!17336))

(assert (=> d!2186226 (= (content!13394 (exprs!6832 lt!2507101)) e!4216101)))

(declare-fun b!7013836 () Bool)

(assert (=> b!7013836 (= e!4216101 (as set.empty (Set Regex!17336)))))

(declare-fun b!7013837 () Bool)

(assert (=> b!7013837 (= e!4216101 (set.union (set.insert (h!73877 (exprs!6832 lt!2507101)) (as set.empty (Set Regex!17336))) (content!13394 (t!381308 (exprs!6832 lt!2507101)))))))

(assert (= (and d!2186226 c!1302968) b!7013836))

(assert (= (and d!2186226 (not c!1302968)) b!7013837))

(declare-fun m!7713078 () Bool)

(assert (=> b!7013837 m!7713078))

(declare-fun m!7713080 () Bool)

(assert (=> b!7013837 m!7713080))

(assert (=> d!2186090 d!2186226))

(declare-fun d!2186228 () Bool)

(declare-fun c!1302969 () Bool)

(assert (=> d!2186228 (= c!1302969 (is-Nil!67429 (exprs!6832 ct2!306)))))

(declare-fun e!4216102 () (Set Regex!17336))

(assert (=> d!2186228 (= (content!13394 (exprs!6832 ct2!306)) e!4216102)))

(declare-fun b!7013838 () Bool)

(assert (=> b!7013838 (= e!4216102 (as set.empty (Set Regex!17336)))))

(declare-fun b!7013839 () Bool)

(assert (=> b!7013839 (= e!4216102 (set.union (set.insert (h!73877 (exprs!6832 ct2!306)) (as set.empty (Set Regex!17336))) (content!13394 (t!381308 (exprs!6832 ct2!306)))))))

(assert (= (and d!2186228 c!1302969) b!7013838))

(assert (= (and d!2186228 (not c!1302969)) b!7013839))

(declare-fun m!7713082 () Bool)

(assert (=> b!7013839 m!7713082))

(declare-fun m!7713084 () Bool)

(assert (=> b!7013839 m!7713084))

(assert (=> d!2186090 d!2186228))

(declare-fun bs!1866473 () Bool)

(declare-fun d!2186230 () Bool)

(assert (= bs!1866473 (and d!2186230 d!2186200)))

(declare-fun lambda!409492 () Int)

(assert (=> bs!1866473 (not (= lambda!409492 lambda!409489))))

(declare-fun bs!1866474 () Bool)

(assert (= bs!1866474 (and d!2186230 d!2186202)))

(assert (=> bs!1866474 (not (= lambda!409492 lambda!409490))))

(declare-fun bs!1866475 () Bool)

(assert (= bs!1866475 (and d!2186230 d!2186098)))

(assert (=> bs!1866475 (not (= lambda!409492 lambda!409455))))

(declare-fun bs!1866476 () Bool)

(assert (= bs!1866476 (and d!2186230 d!2186096)))

(assert (=> bs!1866476 (= (= lambda!409455 lambda!409424) (= lambda!409492 lambda!409452))))

(declare-fun bs!1866477 () Bool)

(assert (= bs!1866477 (and d!2186230 b!7013571)))

(assert (=> bs!1866477 (not (= lambda!409492 lambda!409424))))

(assert (=> d!2186230 true))

(assert (=> d!2186230 (< (dynLambda!27127 order!28045 lambda!409455) (dynLambda!27127 order!28045 lambda!409492))))

(assert (=> d!2186230 (= (exists!3191 lt!2507105 lambda!409455) (not (forall!16249 lt!2507105 lambda!409492)))))

(declare-fun bs!1866478 () Bool)

(assert (= bs!1866478 d!2186230))

(declare-fun m!7713086 () Bool)

(assert (=> bs!1866478 m!7713086))

(assert (=> d!2186098 d!2186230))

(declare-fun bs!1866479 () Bool)

(declare-fun d!2186232 () Bool)

(assert (= bs!1866479 (and d!2186232 d!2186200)))

(declare-fun lambda!409495 () Int)

(assert (=> bs!1866479 (not (= lambda!409495 lambda!409489))))

(declare-fun bs!1866480 () Bool)

(assert (= bs!1866480 (and d!2186232 d!2186202)))

(assert (=> bs!1866480 (not (= lambda!409495 lambda!409490))))

(declare-fun bs!1866481 () Bool)

(assert (= bs!1866481 (and d!2186232 d!2186230)))

(assert (=> bs!1866481 (not (= lambda!409495 lambda!409492))))

(declare-fun bs!1866482 () Bool)

(assert (= bs!1866482 (and d!2186232 d!2186098)))

(assert (=> bs!1866482 (= lambda!409495 lambda!409455)))

(declare-fun bs!1866483 () Bool)

(assert (= bs!1866483 (and d!2186232 d!2186096)))

(assert (=> bs!1866483 (not (= lambda!409495 lambda!409452))))

(declare-fun bs!1866484 () Bool)

(assert (= bs!1866484 (and d!2186232 b!7013571)))

(assert (=> bs!1866484 (= lambda!409495 lambda!409424)))

(assert (=> d!2186232 true))

(assert (=> d!2186232 (exists!3191 lt!2507105 lambda!409495)))

(assert (=> d!2186232 true))

(declare-fun _$60!1081 () Unit!161350)

(assert (=> d!2186232 (= (choose!52763 lt!2507105 s!7408) _$60!1081)))

(declare-fun bs!1866485 () Bool)

(assert (= bs!1866485 d!2186232))

(declare-fun m!7713088 () Bool)

(assert (=> bs!1866485 m!7713088))

(assert (=> d!2186098 d!2186232))

(declare-fun d!2186234 () Bool)

(declare-fun c!1302972 () Bool)

(assert (=> d!2186234 (= c!1302972 (isEmpty!39382 s!7408))))

(declare-fun e!4216103 () Bool)

(assert (=> d!2186234 (= (matchZipper!2876 (content!13395 lt!2507105) s!7408) e!4216103)))

(declare-fun b!7013840 () Bool)

(assert (=> b!7013840 (= e!4216103 (nullableZipper!2494 (content!13395 lt!2507105)))))

(declare-fun b!7013841 () Bool)

(assert (=> b!7013841 (= e!4216103 (matchZipper!2876 (derivationStepZipper!2816 (content!13395 lt!2507105) (head!14180 s!7408)) (tail!13419 s!7408)))))

(assert (= (and d!2186234 c!1302972) b!7013840))

(assert (= (and d!2186234 (not c!1302972)) b!7013841))

(assert (=> d!2186234 m!7712830))

(assert (=> b!7013840 m!7712812))

(declare-fun m!7713090 () Bool)

(assert (=> b!7013840 m!7713090))

(assert (=> b!7013841 m!7712834))

(assert (=> b!7013841 m!7712812))

(assert (=> b!7013841 m!7712834))

(declare-fun m!7713092 () Bool)

(assert (=> b!7013841 m!7713092))

(assert (=> b!7013841 m!7712838))

(assert (=> b!7013841 m!7713092))

(assert (=> b!7013841 m!7712838))

(declare-fun m!7713094 () Bool)

(assert (=> b!7013841 m!7713094))

(assert (=> d!2186098 d!2186234))

(declare-fun d!2186236 () Bool)

(declare-fun c!1302975 () Bool)

(assert (=> d!2186236 (= c!1302975 (is-Nil!67431 lt!2507105))))

(declare-fun e!4216106 () (Set Context!12664))

(assert (=> d!2186236 (= (content!13395 lt!2507105) e!4216106)))

(declare-fun b!7013846 () Bool)

(assert (=> b!7013846 (= e!4216106 (as set.empty (Set Context!12664)))))

(declare-fun b!7013847 () Bool)

(assert (=> b!7013847 (= e!4216106 (set.union (set.insert (h!73879 lt!2507105) (as set.empty (Set Context!12664))) (content!13395 (t!381310 lt!2507105))))))

(assert (= (and d!2186236 c!1302975) b!7013846))

(assert (= (and d!2186236 (not c!1302975)) b!7013847))

(declare-fun m!7713096 () Bool)

(assert (=> b!7013847 m!7713096))

(declare-fun m!7713098 () Bool)

(assert (=> b!7013847 m!7713098))

(assert (=> d!2186098 d!2186236))

(declare-fun d!2186238 () Bool)

(declare-fun c!1302976 () Bool)

(assert (=> d!2186238 (= c!1302976 (is-Nil!67431 lt!2507164))))

(declare-fun e!4216107 () (Set Context!12664))

(assert (=> d!2186238 (= (content!13395 lt!2507164) e!4216107)))

(declare-fun b!7013848 () Bool)

(assert (=> b!7013848 (= e!4216107 (as set.empty (Set Context!12664)))))

(declare-fun b!7013849 () Bool)

(assert (=> b!7013849 (= e!4216107 (set.union (set.insert (h!73879 lt!2507164) (as set.empty (Set Context!12664))) (content!13395 (t!381310 lt!2507164))))))

(assert (= (and d!2186238 c!1302976) b!7013848))

(assert (= (and d!2186238 (not c!1302976)) b!7013849))

(declare-fun m!7713100 () Bool)

(assert (=> b!7013849 m!7713100))

(declare-fun m!7713102 () Bool)

(assert (=> b!7013849 m!7713102))

(assert (=> b!7013647 d!2186238))

(assert (=> d!2186110 d!2186208))

(declare-fun d!2186240 () Bool)

(assert (=> d!2186240 true))

(declare-fun setRes!48449 () Bool)

(assert (=> d!2186240 setRes!48449))

(declare-fun condSetEmpty!48449 () Bool)

(declare-fun res!2862455 () (Set Context!12664))

(assert (=> d!2186240 (= condSetEmpty!48449 (= res!2862455 (as set.empty (Set Context!12664))))))

(assert (=> d!2186240 (= (choose!52766 lt!2507099 lambda!409427) res!2862455)))

(declare-fun setIsEmpty!48449 () Bool)

(assert (=> setIsEmpty!48449 setRes!48449))

(declare-fun setElem!48449 () Context!12664)

(declare-fun tp!1932783 () Bool)

(declare-fun e!4216110 () Bool)

(declare-fun setNonEmpty!48449 () Bool)

(assert (=> setNonEmpty!48449 (= setRes!48449 (and tp!1932783 (inv!86200 setElem!48449) e!4216110))))

(declare-fun setRest!48449 () (Set Context!12664))

(assert (=> setNonEmpty!48449 (= res!2862455 (set.union (set.insert setElem!48449 (as set.empty (Set Context!12664))) setRest!48449))))

(declare-fun b!7013852 () Bool)

(declare-fun tp!1932782 () Bool)

(assert (=> b!7013852 (= e!4216110 tp!1932782)))

(assert (= (and d!2186240 condSetEmpty!48449) setIsEmpty!48449))

(assert (= (and d!2186240 (not condSetEmpty!48449)) setNonEmpty!48449))

(assert (= setNonEmpty!48449 b!7013852))

(declare-fun m!7713104 () Bool)

(assert (=> setNonEmpty!48449 m!7713104))

(assert (=> d!2186128 d!2186240))

(assert (=> d!2186122 d!2186128))

(declare-fun d!2186242 () Bool)

(assert (=> d!2186242 (= (flatMap!2322 lt!2507099 lambda!409427) (dynLambda!27129 lambda!409427 lt!2507100))))

(assert (=> d!2186242 true))

(declare-fun _$13!4418 () Unit!161350)

(assert (=> d!2186242 (= (choose!52765 lt!2507099 lt!2507100 lambda!409427) _$13!4418)))

(declare-fun b_lambda!264515 () Bool)

(assert (=> (not b_lambda!264515) (not d!2186242)))

(declare-fun bs!1866486 () Bool)

(assert (= bs!1866486 d!2186242))

(assert (=> bs!1866486 m!7712680))

(assert (=> bs!1866486 m!7712858))

(assert (=> d!2186122 d!2186242))

(declare-fun d!2186244 () Bool)

(declare-fun e!4216116 () Bool)

(assert (=> d!2186244 e!4216116))

(declare-fun res!2862458 () Bool)

(assert (=> d!2186244 (=> (not res!2862458) (not e!4216116))))

(declare-fun a!12990 () Context!12664)

(assert (=> d!2186244 (= res!2862458 (= lt!2507103 (dynLambda!27126 lambda!409425 a!12990)))))

(declare-fun e!4216115 () Bool)

(assert (=> d!2186244 (and (inv!86200 a!12990) e!4216115)))

(assert (=> d!2186244 (= (choose!52762 z1!570 lambda!409425 lt!2507103) a!12990)))

(declare-fun b!7013858 () Bool)

(declare-fun tp!1932786 () Bool)

(assert (=> b!7013858 (= e!4216115 tp!1932786)))

(declare-fun b!7013859 () Bool)

(assert (=> b!7013859 (= e!4216116 (set.member a!12990 z1!570))))

(assert (= d!2186244 b!7013858))

(assert (= (and d!2186244 res!2862458) b!7013859))

(declare-fun b_lambda!264517 () Bool)

(assert (=> (not b_lambda!264517) (not d!2186244)))

(declare-fun m!7713106 () Bool)

(assert (=> d!2186244 m!7713106))

(declare-fun m!7713108 () Bool)

(assert (=> d!2186244 m!7713108))

(declare-fun m!7713110 () Bool)

(assert (=> b!7013859 m!7713110))

(assert (=> d!2186094 d!2186244))

(declare-fun d!2186246 () Bool)

(declare-fun choose!52773 ((Set Context!12664) Int) (Set Context!12664))

(assert (=> d!2186246 (= (map!15626 z1!570 lambda!409425) (choose!52773 z1!570 lambda!409425))))

(declare-fun bs!1866487 () Bool)

(assert (= bs!1866487 d!2186246))

(declare-fun m!7713112 () Bool)

(assert (=> bs!1866487 m!7713112))

(assert (=> d!2186094 d!2186246))

(declare-fun b!7013878 () Bool)

(declare-fun e!4216135 () Bool)

(declare-fun e!4216134 () Bool)

(assert (=> b!7013878 (= e!4216135 e!4216134)))

(declare-fun res!2862471 () Bool)

(assert (=> b!7013878 (=> (not res!2862471) (not e!4216134))))

(declare-fun call!637006 () Bool)

(assert (=> b!7013878 (= res!2862471 call!637006)))

(declare-fun b!7013879 () Bool)

(declare-fun e!4216133 () Bool)

(declare-fun e!4216136 () Bool)

(assert (=> b!7013879 (= e!4216133 e!4216136)))

(declare-fun res!2862469 () Bool)

(assert (=> b!7013879 (= res!2862469 (not (nullable!7096 (reg!17665 (h!73877 (tail!13417 (exprs!6832 lt!2507101)))))))))

(assert (=> b!7013879 (=> (not res!2862469) (not e!4216136))))

(declare-fun b!7013880 () Bool)

(declare-fun call!637005 () Bool)

(assert (=> b!7013880 (= e!4216136 call!637005)))

(declare-fun c!1302982 () Bool)

(declare-fun c!1302981 () Bool)

(declare-fun bm!637000 () Bool)

(assert (=> bm!637000 (= call!637005 (validRegex!8896 (ite c!1302982 (reg!17665 (h!73877 (tail!13417 (exprs!6832 lt!2507101)))) (ite c!1302981 (regTwo!35185 (h!73877 (tail!13417 (exprs!6832 lt!2507101)))) (regTwo!35184 (h!73877 (tail!13417 (exprs!6832 lt!2507101))))))))))

(declare-fun b!7013881 () Bool)

(declare-fun e!4216131 () Bool)

(declare-fun call!637007 () Bool)

(assert (=> b!7013881 (= e!4216131 call!637007)))

(declare-fun b!7013882 () Bool)

(declare-fun res!2862473 () Bool)

(assert (=> b!7013882 (=> res!2862473 e!4216135)))

(assert (=> b!7013882 (= res!2862473 (not (is-Concat!26181 (h!73877 (tail!13417 (exprs!6832 lt!2507101))))))))

(declare-fun e!4216137 () Bool)

(assert (=> b!7013882 (= e!4216137 e!4216135)))

(declare-fun bm!637001 () Bool)

(assert (=> bm!637001 (= call!637006 (validRegex!8896 (ite c!1302981 (regOne!35185 (h!73877 (tail!13417 (exprs!6832 lt!2507101)))) (regOne!35184 (h!73877 (tail!13417 (exprs!6832 lt!2507101)))))))))

(declare-fun b!7013883 () Bool)

(declare-fun res!2862472 () Bool)

(assert (=> b!7013883 (=> (not res!2862472) (not e!4216131))))

(assert (=> b!7013883 (= res!2862472 call!637006)))

(assert (=> b!7013883 (= e!4216137 e!4216131)))

(declare-fun bm!637002 () Bool)

(assert (=> bm!637002 (= call!637007 call!637005)))

(declare-fun b!7013885 () Bool)

(declare-fun e!4216132 () Bool)

(assert (=> b!7013885 (= e!4216132 e!4216133)))

(assert (=> b!7013885 (= c!1302982 (is-Star!17336 (h!73877 (tail!13417 (exprs!6832 lt!2507101)))))))

(declare-fun b!7013886 () Bool)

(assert (=> b!7013886 (= e!4216133 e!4216137)))

(assert (=> b!7013886 (= c!1302981 (is-Union!17336 (h!73877 (tail!13417 (exprs!6832 lt!2507101)))))))

(declare-fun b!7013884 () Bool)

(assert (=> b!7013884 (= e!4216134 call!637007)))

(declare-fun d!2186248 () Bool)

(declare-fun res!2862470 () Bool)

(assert (=> d!2186248 (=> res!2862470 e!4216132)))

(assert (=> d!2186248 (= res!2862470 (is-ElementMatch!17336 (h!73877 (tail!13417 (exprs!6832 lt!2507101)))))))

(assert (=> d!2186248 (= (validRegex!8896 (h!73877 (tail!13417 (exprs!6832 lt!2507101)))) e!4216132)))

(assert (= (and d!2186248 (not res!2862470)) b!7013885))

(assert (= (and b!7013885 c!1302982) b!7013879))

(assert (= (and b!7013885 (not c!1302982)) b!7013886))

(assert (= (and b!7013879 res!2862469) b!7013880))

(assert (= (and b!7013886 c!1302981) b!7013883))

(assert (= (and b!7013886 (not c!1302981)) b!7013882))

(assert (= (and b!7013883 res!2862472) b!7013881))

(assert (= (and b!7013882 (not res!2862473)) b!7013878))

(assert (= (and b!7013878 res!2862471) b!7013884))

(assert (= (or b!7013881 b!7013884) bm!637002))

(assert (= (or b!7013883 b!7013878) bm!637001))

(assert (= (or b!7013880 bm!637002) bm!637000))

(declare-fun m!7713114 () Bool)

(assert (=> b!7013879 m!7713114))

(declare-fun m!7713116 () Bool)

(assert (=> bm!637000 m!7713116))

(declare-fun m!7713118 () Bool)

(assert (=> bm!637001 m!7713118))

(assert (=> bs!1866430 d!2186248))

(declare-fun bs!1866488 () Bool)

(declare-fun d!2186250 () Bool)

(assert (= bs!1866488 (and d!2186250 b!7013570)))

(declare-fun lambda!409496 () Int)

(assert (=> bs!1866488 (= lambda!409496 lambda!409426)))

(declare-fun bs!1866489 () Bool)

(assert (= bs!1866489 (and d!2186250 d!2186106)))

(assert (=> bs!1866489 (= lambda!409496 lambda!409458)))

(declare-fun bs!1866490 () Bool)

(assert (= bs!1866490 (and d!2186250 d!2186114)))

(assert (=> bs!1866490 (= lambda!409496 lambda!409464)))

(assert (=> d!2186250 (= (inv!86200 setElem!48443) (forall!16247 (exprs!6832 setElem!48443) lambda!409496))))

(declare-fun bs!1866491 () Bool)

(assert (= bs!1866491 d!2186250))

(declare-fun m!7713120 () Bool)

(assert (=> bs!1866491 m!7713120))

(assert (=> setNonEmpty!48443 d!2186250))

(assert (=> bs!1866432 d!2186124))

(declare-fun d!2186252 () Bool)

(declare-fun res!2862474 () Bool)

(declare-fun e!4216138 () Bool)

(assert (=> d!2186252 (=> res!2862474 e!4216138)))

(assert (=> d!2186252 (= res!2862474 (is-Nil!67429 (exprs!6832 setElem!48437)))))

(assert (=> d!2186252 (= (forall!16247 (exprs!6832 setElem!48437) lambda!409458) e!4216138)))

(declare-fun b!7013887 () Bool)

(declare-fun e!4216139 () Bool)

(assert (=> b!7013887 (= e!4216138 e!4216139)))

(declare-fun res!2862475 () Bool)

(assert (=> b!7013887 (=> (not res!2862475) (not e!4216139))))

(assert (=> b!7013887 (= res!2862475 (dynLambda!27130 lambda!409458 (h!73877 (exprs!6832 setElem!48437))))))

(declare-fun b!7013888 () Bool)

(assert (=> b!7013888 (= e!4216139 (forall!16247 (t!381308 (exprs!6832 setElem!48437)) lambda!409458))))

(assert (= (and d!2186252 (not res!2862474)) b!7013887))

(assert (= (and b!7013887 res!2862475) b!7013888))

(declare-fun b_lambda!264519 () Bool)

(assert (=> (not b_lambda!264519) (not b!7013887)))

(declare-fun m!7713122 () Bool)

(assert (=> b!7013887 m!7713122))

(declare-fun m!7713124 () Bool)

(assert (=> b!7013888 m!7713124))

(assert (=> d!2186106 d!2186252))

(declare-fun d!2186254 () Bool)

(declare-fun c!1302983 () Bool)

(assert (=> d!2186254 (= c!1302983 (isEmpty!39382 s!7408))))

(declare-fun e!4216140 () Bool)

(assert (=> d!2186254 (= (matchZipper!2876 (set.insert lt!2507161 (as set.empty (Set Context!12664))) s!7408) e!4216140)))

(declare-fun b!7013889 () Bool)

(assert (=> b!7013889 (= e!4216140 (nullableZipper!2494 (set.insert lt!2507161 (as set.empty (Set Context!12664)))))))

(declare-fun b!7013890 () Bool)

(assert (=> b!7013890 (= e!4216140 (matchZipper!2876 (derivationStepZipper!2816 (set.insert lt!2507161 (as set.empty (Set Context!12664))) (head!14180 s!7408)) (tail!13419 s!7408)))))

(assert (= (and d!2186254 c!1302983) b!7013889))

(assert (= (and d!2186254 (not c!1302983)) b!7013890))

(assert (=> d!2186254 m!7712830))

(assert (=> b!7013889 m!7712888))

(declare-fun m!7713126 () Bool)

(assert (=> b!7013889 m!7713126))

(assert (=> b!7013890 m!7712834))

(assert (=> b!7013890 m!7712888))

(assert (=> b!7013890 m!7712834))

(declare-fun m!7713128 () Bool)

(assert (=> b!7013890 m!7713128))

(assert (=> b!7013890 m!7712838))

(assert (=> b!7013890 m!7713128))

(assert (=> b!7013890 m!7712838))

(declare-fun m!7713130 () Bool)

(assert (=> b!7013890 m!7713130))

(assert (=> bs!1866433 d!2186254))

(declare-fun d!2186256 () Bool)

(assert (=> d!2186256 (= (flatMap!2322 lt!2507099 lambda!409467) (choose!52766 lt!2507099 lambda!409467))))

(declare-fun bs!1866492 () Bool)

(assert (= bs!1866492 d!2186256))

(declare-fun m!7713132 () Bool)

(assert (=> bs!1866492 m!7713132))

(assert (=> d!2186118 d!2186256))

(declare-fun b!7013893 () Bool)

(declare-fun res!2862477 () Bool)

(declare-fun e!4216141 () Bool)

(assert (=> b!7013893 (=> (not res!2862477) (not e!4216141))))

(declare-fun lt!2507197 () List!67553)

(assert (=> b!7013893 (= res!2862477 (= (size!40985 lt!2507197) (+ (size!40985 (t!381308 (exprs!6832 lt!2507101))) (size!40985 (exprs!6832 ct2!306)))))))

(declare-fun d!2186258 () Bool)

(assert (=> d!2186258 e!4216141))

(declare-fun res!2862476 () Bool)

(assert (=> d!2186258 (=> (not res!2862476) (not e!4216141))))

(assert (=> d!2186258 (= res!2862476 (= (content!13394 lt!2507197) (set.union (content!13394 (t!381308 (exprs!6832 lt!2507101))) (content!13394 (exprs!6832 ct2!306)))))))

(declare-fun e!4216142 () List!67553)

(assert (=> d!2186258 (= lt!2507197 e!4216142)))

(declare-fun c!1302984 () Bool)

(assert (=> d!2186258 (= c!1302984 (is-Nil!67429 (t!381308 (exprs!6832 lt!2507101))))))

(assert (=> d!2186258 (= (++!15351 (t!381308 (exprs!6832 lt!2507101)) (exprs!6832 ct2!306)) lt!2507197)))

(declare-fun b!7013892 () Bool)

(assert (=> b!7013892 (= e!4216142 (Cons!67429 (h!73877 (t!381308 (exprs!6832 lt!2507101))) (++!15351 (t!381308 (t!381308 (exprs!6832 lt!2507101))) (exprs!6832 ct2!306))))))

(declare-fun b!7013891 () Bool)

(assert (=> b!7013891 (= e!4216142 (exprs!6832 ct2!306))))

(declare-fun b!7013894 () Bool)

(assert (=> b!7013894 (= e!4216141 (or (not (= (exprs!6832 ct2!306) Nil!67429)) (= lt!2507197 (t!381308 (exprs!6832 lt!2507101)))))))

(assert (= (and d!2186258 c!1302984) b!7013891))

(assert (= (and d!2186258 (not c!1302984)) b!7013892))

(assert (= (and d!2186258 res!2862476) b!7013893))

(assert (= (and b!7013893 res!2862477) b!7013894))

(declare-fun m!7713134 () Bool)

(assert (=> b!7013893 m!7713134))

(declare-fun m!7713136 () Bool)

(assert (=> b!7013893 m!7713136))

(assert (=> b!7013893 m!7712780))

(declare-fun m!7713138 () Bool)

(assert (=> d!2186258 m!7713138))

(assert (=> d!2186258 m!7713080))

(assert (=> d!2186258 m!7712786))

(declare-fun m!7713140 () Bool)

(assert (=> b!7013892 m!7713140))

(assert (=> b!7013633 d!2186258))

(declare-fun d!2186260 () Bool)

(declare-fun c!1302985 () Bool)

(declare-fun e!4216144 () Bool)

(assert (=> d!2186260 (= c!1302985 e!4216144)))

(declare-fun res!2862478 () Bool)

(assert (=> d!2186260 (=> (not res!2862478) (not e!4216144))))

(assert (=> d!2186260 (= res!2862478 (is-Cons!67429 (exprs!6832 (Context!12665 (t!381308 (exprs!6832 lt!2507100))))))))

(declare-fun e!4216143 () (Set Context!12664))

(assert (=> d!2186260 (= (derivationStepZipperUp!1986 (Context!12665 (t!381308 (exprs!6832 lt!2507100))) (h!73878 s!7408)) e!4216143)))

(declare-fun bm!637003 () Bool)

(declare-fun call!637008 () (Set Context!12664))

(assert (=> bm!637003 (= call!637008 (derivationStepZipperDown!2054 (h!73877 (exprs!6832 (Context!12665 (t!381308 (exprs!6832 lt!2507100))))) (Context!12665 (t!381308 (exprs!6832 (Context!12665 (t!381308 (exprs!6832 lt!2507100)))))) (h!73878 s!7408)))))

(declare-fun b!7013895 () Bool)

(declare-fun e!4216145 () (Set Context!12664))

(assert (=> b!7013895 (= e!4216143 e!4216145)))

(declare-fun c!1302986 () Bool)

(assert (=> b!7013895 (= c!1302986 (is-Cons!67429 (exprs!6832 (Context!12665 (t!381308 (exprs!6832 lt!2507100))))))))

(declare-fun b!7013896 () Bool)

(assert (=> b!7013896 (= e!4216143 (set.union call!637008 (derivationStepZipperUp!1986 (Context!12665 (t!381308 (exprs!6832 (Context!12665 (t!381308 (exprs!6832 lt!2507100)))))) (h!73878 s!7408))))))

(declare-fun b!7013897 () Bool)

(assert (=> b!7013897 (= e!4216145 (as set.empty (Set Context!12664)))))

(declare-fun b!7013898 () Bool)

(assert (=> b!7013898 (= e!4216145 call!637008)))

(declare-fun b!7013899 () Bool)

(assert (=> b!7013899 (= e!4216144 (nullable!7096 (h!73877 (exprs!6832 (Context!12665 (t!381308 (exprs!6832 lt!2507100)))))))))

(assert (= (and d!2186260 res!2862478) b!7013899))

(assert (= (and d!2186260 c!1302985) b!7013896))

(assert (= (and d!2186260 (not c!1302985)) b!7013895))

(assert (= (and b!7013895 c!1302986) b!7013898))

(assert (= (and b!7013895 (not c!1302986)) b!7013897))

(assert (= (or b!7013896 b!7013898) bm!637003))

(declare-fun m!7713142 () Bool)

(assert (=> bm!637003 m!7713142))

(declare-fun m!7713144 () Bool)

(assert (=> b!7013896 m!7713144))

(declare-fun m!7713146 () Bool)

(assert (=> b!7013899 m!7713146))

(assert (=> b!7013669 d!2186260))

(declare-fun b!7013912 () Bool)

(declare-fun e!4216156 () Bool)

(declare-fun lt!2507202 () Context!12664)

(assert (=> b!7013912 (= e!4216156 (contains!20433 (toList!10696 lt!2507094) lt!2507202))))

(declare-fun b!7013913 () Bool)

(declare-fun e!4216157 () Context!12664)

(assert (=> b!7013913 (= e!4216157 (h!73879 (toList!10696 lt!2507094)))))

(declare-fun b!7013914 () Bool)

(declare-fun e!4216155 () Context!12664)

(assert (=> b!7013914 (= e!4216155 (getWitness!1286 (t!381310 (toList!10696 lt!2507094)) lambda!409424))))

(declare-fun d!2186262 () Bool)

(assert (=> d!2186262 e!4216156))

(declare-fun res!2862483 () Bool)

(assert (=> d!2186262 (=> (not res!2862483) (not e!4216156))))

(assert (=> d!2186262 (= res!2862483 (dynLambda!27128 lambda!409424 lt!2507202))))

(assert (=> d!2186262 (= lt!2507202 e!4216157)))

(declare-fun c!1302992 () Bool)

(declare-fun e!4216154 () Bool)

(assert (=> d!2186262 (= c!1302992 e!4216154)))

(declare-fun res!2862484 () Bool)

(assert (=> d!2186262 (=> (not res!2862484) (not e!4216154))))

(assert (=> d!2186262 (= res!2862484 (is-Cons!67431 (toList!10696 lt!2507094)))))

(assert (=> d!2186262 (exists!3191 (toList!10696 lt!2507094) lambda!409424)))

(assert (=> d!2186262 (= (getWitness!1286 (toList!10696 lt!2507094) lambda!409424) lt!2507202)))

(declare-fun b!7013915 () Bool)

(assert (=> b!7013915 (= e!4216157 e!4216155)))

(declare-fun c!1302991 () Bool)

(assert (=> b!7013915 (= c!1302991 (is-Cons!67431 (toList!10696 lt!2507094)))))

(declare-fun b!7013916 () Bool)

(declare-fun lt!2507203 () Unit!161350)

(declare-fun Unit!161354 () Unit!161350)

(assert (=> b!7013916 (= lt!2507203 Unit!161354)))

(assert (=> b!7013916 false))

(declare-fun head!14182 (List!67555) Context!12664)

(assert (=> b!7013916 (= e!4216155 (head!14182 (toList!10696 lt!2507094)))))

(declare-fun b!7013917 () Bool)

(assert (=> b!7013917 (= e!4216154 (dynLambda!27128 lambda!409424 (h!73879 (toList!10696 lt!2507094))))))

(assert (= (and d!2186262 res!2862484) b!7013917))

(assert (= (and d!2186262 c!1302992) b!7013913))

(assert (= (and d!2186262 (not c!1302992)) b!7013915))

(assert (= (and b!7013915 c!1302991) b!7013914))

(assert (= (and b!7013915 (not c!1302991)) b!7013916))

(assert (= (and d!2186262 res!2862483) b!7013912))

(declare-fun b_lambda!264521 () Bool)

(assert (=> (not b_lambda!264521) (not d!2186262)))

(declare-fun b_lambda!264523 () Bool)

(assert (=> (not b_lambda!264523) (not b!7013917)))

(assert (=> b!7013912 m!7712704))

(declare-fun m!7713148 () Bool)

(assert (=> b!7013912 m!7713148))

(declare-fun m!7713150 () Bool)

(assert (=> b!7013914 m!7713150))

(declare-fun m!7713152 () Bool)

(assert (=> d!2186262 m!7713152))

(assert (=> d!2186262 m!7712704))

(declare-fun m!7713154 () Bool)

(assert (=> d!2186262 m!7713154))

(assert (=> b!7013916 m!7712704))

(declare-fun m!7713156 () Bool)

(assert (=> b!7013916 m!7713156))

(declare-fun m!7713158 () Bool)

(assert (=> b!7013917 m!7713158))

(assert (=> d!2186100 d!2186262))

(assert (=> d!2186100 d!2186102))

(declare-fun d!2186264 () Bool)

(declare-fun lt!2507206 () Bool)

(assert (=> d!2186264 (= lt!2507206 (exists!3191 (toList!10696 lt!2507094) lambda!409424))))

(declare-fun choose!52774 ((Set Context!12664) Int) Bool)

(assert (=> d!2186264 (= lt!2507206 (choose!52774 lt!2507094 lambda!409424))))

(assert (=> d!2186264 (= (exists!3193 lt!2507094 lambda!409424) lt!2507206)))

(declare-fun bs!1866493 () Bool)

(assert (= bs!1866493 d!2186264))

(assert (=> bs!1866493 m!7712704))

(assert (=> bs!1866493 m!7712704))

(assert (=> bs!1866493 m!7713154))

(declare-fun m!7713160 () Bool)

(assert (=> bs!1866493 m!7713160))

(assert (=> d!2186100 d!2186264))

(declare-fun d!2186266 () Bool)

(declare-fun lt!2507209 () Int)

(assert (=> d!2186266 (>= lt!2507209 0)))

(declare-fun e!4216160 () Int)

(assert (=> d!2186266 (= lt!2507209 e!4216160)))

(declare-fun c!1302995 () Bool)

(assert (=> d!2186266 (= c!1302995 (is-Nil!67429 lt!2507149))))

(assert (=> d!2186266 (= (size!40985 lt!2507149) lt!2507209)))

(declare-fun b!7013922 () Bool)

(assert (=> b!7013922 (= e!4216160 0)))

(declare-fun b!7013923 () Bool)

(assert (=> b!7013923 (= e!4216160 (+ 1 (size!40985 (t!381308 lt!2507149))))))

(assert (= (and d!2186266 c!1302995) b!7013922))

(assert (= (and d!2186266 (not c!1302995)) b!7013923))

(declare-fun m!7713162 () Bool)

(assert (=> b!7013923 m!7713162))

(assert (=> b!7013634 d!2186266))

(declare-fun d!2186268 () Bool)

(declare-fun lt!2507210 () Int)

(assert (=> d!2186268 (>= lt!2507210 0)))

(declare-fun e!4216161 () Int)

(assert (=> d!2186268 (= lt!2507210 e!4216161)))

(declare-fun c!1302996 () Bool)

(assert (=> d!2186268 (= c!1302996 (is-Nil!67429 (exprs!6832 lt!2507101)))))

(assert (=> d!2186268 (= (size!40985 (exprs!6832 lt!2507101)) lt!2507210)))

(declare-fun b!7013924 () Bool)

(assert (=> b!7013924 (= e!4216161 0)))

(declare-fun b!7013925 () Bool)

(assert (=> b!7013925 (= e!4216161 (+ 1 (size!40985 (t!381308 (exprs!6832 lt!2507101)))))))

(assert (= (and d!2186268 c!1302996) b!7013924))

(assert (= (and d!2186268 (not c!1302996)) b!7013925))

(assert (=> b!7013925 m!7713136))

(assert (=> b!7013634 d!2186268))

(declare-fun d!2186270 () Bool)

(declare-fun lt!2507211 () Int)

(assert (=> d!2186270 (>= lt!2507211 0)))

(declare-fun e!4216162 () Int)

(assert (=> d!2186270 (= lt!2507211 e!4216162)))

(declare-fun c!1302997 () Bool)

(assert (=> d!2186270 (= c!1302997 (is-Nil!67429 (exprs!6832 ct2!306)))))

(assert (=> d!2186270 (= (size!40985 (exprs!6832 ct2!306)) lt!2507211)))

(declare-fun b!7013926 () Bool)

(assert (=> b!7013926 (= e!4216162 0)))

(declare-fun b!7013927 () Bool)

(assert (=> b!7013927 (= e!4216162 (+ 1 (size!40985 (t!381308 (exprs!6832 ct2!306)))))))

(assert (= (and d!2186270 c!1302997) b!7013926))

(assert (= (and d!2186270 (not c!1302997)) b!7013927))

(declare-fun m!7713164 () Bool)

(assert (=> b!7013927 m!7713164))

(assert (=> b!7013634 d!2186270))

(declare-fun b!7013942 () Bool)

(declare-fun e!4216175 () Bool)

(declare-fun e!4216180 () Bool)

(assert (=> b!7013942 (= e!4216175 e!4216180)))

(declare-fun res!2862495 () Bool)

(assert (=> b!7013942 (=> res!2862495 e!4216180)))

(assert (=> b!7013942 (= res!2862495 (is-Star!17336 (h!73877 (exprs!6832 lt!2507101))))))

(declare-fun b!7013943 () Bool)

(declare-fun e!4216177 () Bool)

(declare-fun e!4216179 () Bool)

(assert (=> b!7013943 (= e!4216177 e!4216179)))

(declare-fun res!2862496 () Bool)

(declare-fun call!637013 () Bool)

(assert (=> b!7013943 (= res!2862496 call!637013)))

(assert (=> b!7013943 (=> res!2862496 e!4216179)))

(declare-fun bm!637008 () Bool)

(declare-fun call!637014 () Bool)

(declare-fun c!1303000 () Bool)

(assert (=> bm!637008 (= call!637014 (nullable!7096 (ite c!1303000 (regTwo!35185 (h!73877 (exprs!6832 lt!2507101))) (regOne!35184 (h!73877 (exprs!6832 lt!2507101))))))))

(declare-fun b!7013944 () Bool)

(declare-fun e!4216178 () Bool)

(assert (=> b!7013944 (= e!4216177 e!4216178)))

(declare-fun res!2862498 () Bool)

(assert (=> b!7013944 (= res!2862498 call!637014)))

(assert (=> b!7013944 (=> (not res!2862498) (not e!4216178))))

(declare-fun bm!637009 () Bool)

(assert (=> bm!637009 (= call!637013 (nullable!7096 (ite c!1303000 (regOne!35185 (h!73877 (exprs!6832 lt!2507101))) (regTwo!35184 (h!73877 (exprs!6832 lt!2507101))))))))

(declare-fun d!2186272 () Bool)

(declare-fun res!2862497 () Bool)

(declare-fun e!4216176 () Bool)

(assert (=> d!2186272 (=> res!2862497 e!4216176)))

(assert (=> d!2186272 (= res!2862497 (is-EmptyExpr!17336 (h!73877 (exprs!6832 lt!2507101))))))

(assert (=> d!2186272 (= (nullableFct!2688 (h!73877 (exprs!6832 lt!2507101))) e!4216176)))

(declare-fun b!7013945 () Bool)

(assert (=> b!7013945 (= e!4216180 e!4216177)))

(assert (=> b!7013945 (= c!1303000 (is-Union!17336 (h!73877 (exprs!6832 lt!2507101))))))

(declare-fun b!7013946 () Bool)

(assert (=> b!7013946 (= e!4216179 call!637014)))

(declare-fun b!7013947 () Bool)

(assert (=> b!7013947 (= e!4216178 call!637013)))

(declare-fun b!7013948 () Bool)

(assert (=> b!7013948 (= e!4216176 e!4216175)))

(declare-fun res!2862499 () Bool)

(assert (=> b!7013948 (=> (not res!2862499) (not e!4216175))))

(assert (=> b!7013948 (= res!2862499 (and (not (is-EmptyLang!17336 (h!73877 (exprs!6832 lt!2507101)))) (not (is-ElementMatch!17336 (h!73877 (exprs!6832 lt!2507101))))))))

(assert (= (and d!2186272 (not res!2862497)) b!7013948))

(assert (= (and b!7013948 res!2862499) b!7013942))

(assert (= (and b!7013942 (not res!2862495)) b!7013945))

(assert (= (and b!7013945 c!1303000) b!7013943))

(assert (= (and b!7013945 (not c!1303000)) b!7013944))

(assert (= (and b!7013943 (not res!2862496)) b!7013946))

(assert (= (and b!7013944 res!2862498) b!7013947))

(assert (= (or b!7013946 b!7013944) bm!637008))

(assert (= (or b!7013943 b!7013947) bm!637009))

(declare-fun m!7713166 () Bool)

(assert (=> bm!637008 m!7713166))

(declare-fun m!7713168 () Bool)

(assert (=> bm!637009 m!7713168))

(assert (=> d!2186108 d!2186272))

(declare-fun d!2186274 () Bool)

(assert (=> d!2186274 (= (nullable!7096 (h!73877 (exprs!6832 lt!2507100))) (nullableFct!2688 (h!73877 (exprs!6832 lt!2507100))))))

(declare-fun bs!1866494 () Bool)

(assert (= bs!1866494 d!2186274))

(declare-fun m!7713170 () Bool)

(assert (=> bs!1866494 m!7713170))

(assert (=> b!7013672 d!2186274))

(declare-fun d!2186276 () Bool)

(declare-fun res!2862504 () Bool)

(declare-fun e!4216185 () Bool)

(assert (=> d!2186276 (=> res!2862504 e!4216185)))

(assert (=> d!2186276 (= res!2862504 (is-Nil!67431 lt!2507105))))

(assert (=> d!2186276 (= (forall!16249 lt!2507105 lambda!409452) e!4216185)))

(declare-fun b!7013953 () Bool)

(declare-fun e!4216186 () Bool)

(assert (=> b!7013953 (= e!4216185 e!4216186)))

(declare-fun res!2862505 () Bool)

(assert (=> b!7013953 (=> (not res!2862505) (not e!4216186))))

(assert (=> b!7013953 (= res!2862505 (dynLambda!27128 lambda!409452 (h!73879 lt!2507105)))))

(declare-fun b!7013954 () Bool)

(assert (=> b!7013954 (= e!4216186 (forall!16249 (t!381310 lt!2507105) lambda!409452))))

(assert (= (and d!2186276 (not res!2862504)) b!7013953))

(assert (= (and b!7013953 res!2862505) b!7013954))

(declare-fun b_lambda!264525 () Bool)

(assert (=> (not b_lambda!264525) (not b!7013953)))

(declare-fun m!7713172 () Bool)

(assert (=> b!7013953 m!7713172))

(declare-fun m!7713174 () Bool)

(assert (=> b!7013954 m!7713174))

(assert (=> d!2186096 d!2186276))

(declare-fun d!2186278 () Bool)

(assert (=> d!2186278 (= (map!15626 z1!570 lambda!409463) (choose!52773 z1!570 lambda!409463))))

(declare-fun bs!1866495 () Bool)

(assert (= bs!1866495 d!2186278))

(declare-fun m!7713176 () Bool)

(assert (=> bs!1866495 m!7713176))

(assert (=> d!2186112 d!2186278))

(declare-fun b!7013955 () Bool)

(declare-fun e!4216187 () Bool)

(declare-fun tp!1932787 () Bool)

(declare-fun tp!1932788 () Bool)

(assert (=> b!7013955 (= e!4216187 (and tp!1932787 tp!1932788))))

(assert (=> b!7013691 (= tp!1932742 e!4216187)))

(assert (= (and b!7013691 (is-Cons!67429 (exprs!6832 setElem!48443))) b!7013955))

(declare-fun b!7013969 () Bool)

(declare-fun e!4216190 () Bool)

(declare-fun tp!1932803 () Bool)

(declare-fun tp!1932802 () Bool)

(assert (=> b!7013969 (= e!4216190 (and tp!1932803 tp!1932802))))

(declare-fun b!7013968 () Bool)

(declare-fun tp!1932800 () Bool)

(assert (=> b!7013968 (= e!4216190 tp!1932800)))

(declare-fun b!7013966 () Bool)

(assert (=> b!7013966 (= e!4216190 tp_is_empty!43897)))

(declare-fun b!7013967 () Bool)

(declare-fun tp!1932801 () Bool)

(declare-fun tp!1932799 () Bool)

(assert (=> b!7013967 (= e!4216190 (and tp!1932801 tp!1932799))))

(assert (=> b!7013696 (= tp!1932748 e!4216190)))

(assert (= (and b!7013696 (is-ElementMatch!17336 (h!73877 (exprs!6832 setElem!48437)))) b!7013966))

(assert (= (and b!7013696 (is-Concat!26181 (h!73877 (exprs!6832 setElem!48437)))) b!7013967))

(assert (= (and b!7013696 (is-Star!17336 (h!73877 (exprs!6832 setElem!48437)))) b!7013968))

(assert (= (and b!7013696 (is-Union!17336 (h!73877 (exprs!6832 setElem!48437)))) b!7013969))

(declare-fun b!7013970 () Bool)

(declare-fun e!4216191 () Bool)

(declare-fun tp!1932804 () Bool)

(declare-fun tp!1932805 () Bool)

(assert (=> b!7013970 (= e!4216191 (and tp!1932804 tp!1932805))))

(assert (=> b!7013696 (= tp!1932749 e!4216191)))

(assert (= (and b!7013696 (is-Cons!67429 (t!381308 (exprs!6832 setElem!48437)))) b!7013970))

(declare-fun condSetEmpty!48450 () Bool)

(assert (=> setNonEmpty!48443 (= condSetEmpty!48450 (= setRest!48443 (as set.empty (Set Context!12664))))))

(declare-fun setRes!48450 () Bool)

(assert (=> setNonEmpty!48443 (= tp!1932743 setRes!48450)))

(declare-fun setIsEmpty!48450 () Bool)

(assert (=> setIsEmpty!48450 setRes!48450))

(declare-fun tp!1932807 () Bool)

(declare-fun e!4216192 () Bool)

(declare-fun setElem!48450 () Context!12664)

(declare-fun setNonEmpty!48450 () Bool)

(assert (=> setNonEmpty!48450 (= setRes!48450 (and tp!1932807 (inv!86200 setElem!48450) e!4216192))))

(declare-fun setRest!48450 () (Set Context!12664))

(assert (=> setNonEmpty!48450 (= setRest!48443 (set.union (set.insert setElem!48450 (as set.empty (Set Context!12664))) setRest!48450))))

(declare-fun b!7013971 () Bool)

(declare-fun tp!1932806 () Bool)

(assert (=> b!7013971 (= e!4216192 tp!1932806)))

(assert (= (and setNonEmpty!48443 condSetEmpty!48450) setIsEmpty!48450))

(assert (= (and setNonEmpty!48443 (not condSetEmpty!48450)) setNonEmpty!48450))

(assert (= setNonEmpty!48450 b!7013971))

(declare-fun m!7713178 () Bool)

(assert (=> setNonEmpty!48450 m!7713178))

(declare-fun b!7013975 () Bool)

(declare-fun e!4216193 () Bool)

(declare-fun tp!1932812 () Bool)

(declare-fun tp!1932811 () Bool)

(assert (=> b!7013975 (= e!4216193 (and tp!1932812 tp!1932811))))

(declare-fun b!7013974 () Bool)

(declare-fun tp!1932809 () Bool)

(assert (=> b!7013974 (= e!4216193 tp!1932809)))

(declare-fun b!7013972 () Bool)

(assert (=> b!7013972 (= e!4216193 tp_is_empty!43897)))

(declare-fun b!7013973 () Bool)

(declare-fun tp!1932810 () Bool)

(declare-fun tp!1932808 () Bool)

(assert (=> b!7013973 (= e!4216193 (and tp!1932810 tp!1932808))))

(assert (=> b!7013697 (= tp!1932750 e!4216193)))

(assert (= (and b!7013697 (is-ElementMatch!17336 (h!73877 (exprs!6832 ct2!306)))) b!7013972))

(assert (= (and b!7013697 (is-Concat!26181 (h!73877 (exprs!6832 ct2!306)))) b!7013973))

(assert (= (and b!7013697 (is-Star!17336 (h!73877 (exprs!6832 ct2!306)))) b!7013974))

(assert (= (and b!7013697 (is-Union!17336 (h!73877 (exprs!6832 ct2!306)))) b!7013975))

(declare-fun b!7013976 () Bool)

(declare-fun e!4216194 () Bool)

(declare-fun tp!1932813 () Bool)

(declare-fun tp!1932814 () Bool)

(assert (=> b!7013976 (= e!4216194 (and tp!1932813 tp!1932814))))

(assert (=> b!7013697 (= tp!1932751 e!4216194)))

(assert (= (and b!7013697 (is-Cons!67429 (t!381308 (exprs!6832 ct2!306)))) b!7013976))

(declare-fun b!7013977 () Bool)

(declare-fun e!4216195 () Bool)

(declare-fun tp!1932815 () Bool)

(assert (=> b!7013977 (= e!4216195 (and tp_is_empty!43897 tp!1932815))))

(assert (=> b!7013702 (= tp!1932754 e!4216195)))

(assert (= (and b!7013702 (is-Cons!67430 (t!381309 (t!381309 s!7408)))) b!7013977))

(declare-fun b_lambda!264527 () Bool)

(assert (= b_lambda!264509 (or b!7013570 b_lambda!264527)))

(declare-fun bs!1866496 () Bool)

(declare-fun d!2186280 () Bool)

(assert (= bs!1866496 (and d!2186280 b!7013570)))

(assert (=> bs!1866496 (= (dynLambda!27130 lambda!409426 (h!73877 (t!381308 (tail!13417 (exprs!6832 lt!2507101))))) (validRegex!8896 (h!73877 (t!381308 (tail!13417 (exprs!6832 lt!2507101))))))))

(declare-fun m!7713180 () Bool)

(assert (=> bs!1866496 m!7713180))

(assert (=> b!7013787 d!2186280))

(declare-fun b_lambda!264529 () Bool)

(assert (= b_lambda!264519 (or d!2186106 b_lambda!264529)))

(declare-fun bs!1866497 () Bool)

(declare-fun d!2186282 () Bool)

(assert (= bs!1866497 (and d!2186282 d!2186106)))

(assert (=> bs!1866497 (= (dynLambda!27130 lambda!409458 (h!73877 (exprs!6832 setElem!48437))) (validRegex!8896 (h!73877 (exprs!6832 setElem!48437))))))

(declare-fun m!7713182 () Bool)

(assert (=> bs!1866497 m!7713182))

(assert (=> b!7013887 d!2186282))

(declare-fun b_lambda!264531 () Bool)

(assert (= b_lambda!264515 (or b!7013564 b_lambda!264531)))

(assert (=> d!2186242 d!2186138))

(declare-fun b_lambda!264533 () Bool)

(assert (= b_lambda!264517 (or b!7013570 b_lambda!264533)))

(declare-fun bs!1866498 () Bool)

(declare-fun d!2186284 () Bool)

(assert (= bs!1866498 (and d!2186284 b!7013570)))

(declare-fun lt!2507212 () Unit!161350)

(assert (=> bs!1866498 (= lt!2507212 (lemmaConcatPreservesForall!672 (exprs!6832 a!12990) (exprs!6832 ct2!306) lambda!409426))))

(assert (=> bs!1866498 (= (dynLambda!27126 lambda!409425 a!12990) (Context!12665 (++!15351 (exprs!6832 a!12990) (exprs!6832 ct2!306))))))

(declare-fun m!7713184 () Bool)

(assert (=> bs!1866498 m!7713184))

(declare-fun m!7713186 () Bool)

(assert (=> bs!1866498 m!7713186))

(assert (=> d!2186244 d!2186284))

(declare-fun b_lambda!264535 () Bool)

(assert (= b_lambda!264507 (or d!2186114 b_lambda!264535)))

(declare-fun bs!1866499 () Bool)

(declare-fun d!2186286 () Bool)

(assert (= bs!1866499 (and d!2186286 d!2186114)))

(assert (=> bs!1866499 (= (dynLambda!27130 lambda!409464 (h!73877 (exprs!6832 ct2!306))) (validRegex!8896 (h!73877 (exprs!6832 ct2!306))))))

(declare-fun m!7713188 () Bool)

(assert (=> bs!1866499 m!7713188))

(assert (=> b!7013781 d!2186286))

(declare-fun b_lambda!264537 () Bool)

(assert (= b_lambda!264525 (or d!2186096 b_lambda!264537)))

(declare-fun bs!1866500 () Bool)

(declare-fun d!2186288 () Bool)

(assert (= bs!1866500 (and d!2186288 d!2186096)))

(assert (=> bs!1866500 (= (dynLambda!27128 lambda!409452 (h!73879 lt!2507105)) (not (dynLambda!27128 lambda!409424 (h!73879 lt!2507105))))))

(declare-fun b_lambda!264547 () Bool)

(assert (=> (not b_lambda!264547) (not bs!1866500)))

(declare-fun m!7713190 () Bool)

(assert (=> bs!1866500 m!7713190))

(assert (=> b!7013953 d!2186288))

(declare-fun b_lambda!264539 () Bool)

(assert (= b_lambda!264513 (or b!7013570 b_lambda!264539)))

(declare-fun bs!1866501 () Bool)

(declare-fun d!2186290 () Bool)

(assert (= bs!1866501 (and d!2186290 b!7013570)))

(assert (=> bs!1866501 (= (dynLambda!27130 lambda!409426 (h!73877 (exprs!6832 lt!2507101))) (validRegex!8896 (h!73877 (exprs!6832 lt!2507101))))))

(declare-fun m!7713192 () Bool)

(assert (=> bs!1866501 m!7713192))

(assert (=> b!7013795 d!2186290))

(declare-fun b_lambda!264541 () Bool)

(assert (= b_lambda!264523 (or b!7013571 b_lambda!264541)))

(declare-fun bs!1866502 () Bool)

(declare-fun d!2186292 () Bool)

(assert (= bs!1866502 (and d!2186292 b!7013571)))

(assert (=> bs!1866502 (= (dynLambda!27128 lambda!409424 (h!73879 (toList!10696 lt!2507094))) (matchZipper!2876 (set.insert (h!73879 (toList!10696 lt!2507094)) (as set.empty (Set Context!12664))) s!7408))))

(declare-fun m!7713194 () Bool)

(assert (=> bs!1866502 m!7713194))

(assert (=> bs!1866502 m!7713194))

(declare-fun m!7713196 () Bool)

(assert (=> bs!1866502 m!7713196))

(assert (=> b!7013917 d!2186292))

(declare-fun b_lambda!264543 () Bool)

(assert (= b_lambda!264521 (or b!7013571 b_lambda!264543)))

(declare-fun bs!1866503 () Bool)

(declare-fun d!2186294 () Bool)

(assert (= bs!1866503 (and d!2186294 b!7013571)))

(assert (=> bs!1866503 (= (dynLambda!27128 lambda!409424 lt!2507202) (matchZipper!2876 (set.insert lt!2507202 (as set.empty (Set Context!12664))) s!7408))))

(declare-fun m!7713198 () Bool)

(assert (=> bs!1866503 m!7713198))

(assert (=> bs!1866503 m!7713198))

(declare-fun m!7713200 () Bool)

(assert (=> bs!1866503 m!7713200))

(assert (=> d!2186262 d!2186294))

(declare-fun b_lambda!264545 () Bool)

(assert (= b_lambda!264511 (or b!7013570 b_lambda!264545)))

(declare-fun bs!1866504 () Bool)

(declare-fun d!2186296 () Bool)

(assert (= bs!1866504 (and d!2186296 b!7013570)))

(assert (=> bs!1866504 (= (dynLambda!27130 lambda!409426 (h!73877 (++!15351 (exprs!6832 lt!2507101) (exprs!6832 ct2!306)))) (validRegex!8896 (h!73877 (++!15351 (exprs!6832 lt!2507101) (exprs!6832 ct2!306)))))))

(declare-fun m!7713202 () Bool)

(assert (=> bs!1866504 m!7713202))

(assert (=> b!7013793 d!2186296))

(push 1)

(assert (not b!7013968))

(assert (not b!7013840))

(assert (not setNonEmpty!48450))

(assert (not b!7013890))

(assert (not bs!1866503))

(assert (not bs!1866496))

(assert (not b_lambda!264529))

(assert (not b_lambda!264483))

(assert (not b!7013927))

(assert (not bs!1866502))

(assert (not b!7013771))

(assert (not b!7013784))

(assert (not d!2186234))

(assert (not b!7013969))

(assert tp_is_empty!43897)

(assert (not b_lambda!264537))

(assert (not d!2186230))

(assert (not bm!637009))

(assert (not b!7013770))

(assert (not b!7013835))

(assert (not b!7013837))

(assert (not b!7013888))

(assert (not bm!637001))

(assert (not setNonEmpty!48449))

(assert (not bm!636992))

(assert (not b!7013976))

(assert (not bm!636991))

(assert (not bs!1866501))

(assert (not b_lambda!264539))

(assert (not b_lambda!264527))

(assert (not d!2186232))

(assert (not d!2186206))

(assert (not b_lambda!264541))

(assert (not b_lambda!264485))

(assert (not bs!1866499))

(assert (not b!7013970))

(assert (not b!7013893))

(assert (not d!2186214))

(assert (not b!7013791))

(assert (not d!2186250))

(assert (not b!7013786))

(assert (not b!7013977))

(assert (not b!7013954))

(assert (not d!2186194))

(assert (not b!7013780))

(assert (not d!2186262))

(assert (not d!2186274))

(assert (not b!7013899))

(assert (not b!7013975))

(assert (not b!7013783))

(assert (not b!7013896))

(assert (not d!2186246))

(assert (not b!7013794))

(assert (not bm!637008))

(assert (not b_lambda!264545))

(assert (not d!2186218))

(assert (not d!2186254))

(assert (not b!7013967))

(assert (not d!2186204))

(assert (not b!7013925))

(assert (not d!2186192))

(assert (not b_lambda!264535))

(assert (not b!7013879))

(assert (not d!2186258))

(assert (not b_lambda!264489))

(assert (not b!7013847))

(assert (not b!7013955))

(assert (not d!2186264))

(assert (not b!7013796))

(assert (not d!2186212))

(assert (not b!7013819))

(assert (not d!2186200))

(assert (not b!7013778))

(assert (not b!7013849))

(assert (not b_lambda!264531))

(assert (not b!7013892))

(assert (not b!7013974))

(assert (not bm!636993))

(assert (not d!2186188))

(assert (not b!7013782))

(assert (not b!7013973))

(assert (not b!7013785))

(assert (not b_lambda!264547))

(assert (not bm!637000))

(assert (not b!7013923))

(assert (not b!7013788))

(assert (not b!7013839))

(assert (not b_lambda!264543))

(assert (not b!7013971))

(assert (not b_lambda!264533))

(assert (not b!7013914))

(assert (not d!2186278))

(assert (not b!7013912))

(assert (not bs!1866497))

(assert (not d!2186202))

(assert (not b!7013889))

(assert (not b!7013790))

(assert (not d!2186242))

(assert (not b!7013852))

(assert (not bs!1866504))

(assert (not d!2186244))

(assert (not b_lambda!264487))

(assert (not b!7013916))

(assert (not b!7013779))

(assert (not d!2186256))

(assert (not bm!637003))

(assert (not b!7013841))

(assert (not bs!1866498))

(assert (not b!7013858))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!684014 () Bool)

(assert start!684014)

(declare-fun b!7054288 () Bool)

(assert (=> b!7054288 true))

(declare-fun b!7054284 () Bool)

(assert (=> b!7054284 true))

(declare-fun b!7054283 () Bool)

(assert (=> b!7054283 true))

(declare-fun b!7054282 () Bool)

(declare-fun e!4240884 () Bool)

(declare-datatypes ((C!35402 0))(
  ( (C!35403 (val!27403 Int)) )
))
(declare-datatypes ((Regex!17566 0))(
  ( (ElementMatch!17566 (c!1314118 C!35402)) (Concat!26411 (regOne!35644 Regex!17566) (regTwo!35644 Regex!17566)) (EmptyExpr!17566) (Star!17566 (reg!17895 Regex!17566)) (EmptyLang!17566) (Union!17566 (regOne!35645 Regex!17566) (regTwo!35645 Regex!17566)) )
))
(declare-datatypes ((List!68224 0))(
  ( (Nil!68100) (Cons!68100 (h!74548 Regex!17566) (t!382003 List!68224)) )
))
(declare-datatypes ((Context!13124 0))(
  ( (Context!13125 (exprs!7062 List!68224)) )
))
(declare-fun lt!2531226 () (Set Context!13124))

(declare-datatypes ((List!68225 0))(
  ( (Nil!68101) (Cons!68101 (h!74549 C!35402) (t!382004 List!68225)) )
))
(declare-fun s!7408 () List!68225)

(declare-fun matchZipper!3106 ((Set Context!13124) List!68225) Bool)

(assert (=> b!7054282 (= e!4240884 (not (matchZipper!3106 lt!2531226 (t!382004 s!7408))))))

(declare-fun lt!2531227 () List!68224)

(declare-fun lambda!419932 () Int)

(declare-datatypes ((Unit!161805 0))(
  ( (Unit!161806) )
))
(declare-fun lt!2531232 () Unit!161805)

(declare-fun ct2!306 () Context!13124)

(declare-fun lemmaConcatPreservesForall!877 (List!68224 List!68224 Int) Unit!161805)

(assert (=> b!7054282 (= lt!2531232 (lemmaConcatPreservesForall!877 lt!2531227 (exprs!7062 ct2!306) lambda!419932))))

(declare-fun e!4240889 () Bool)

(declare-fun e!4240888 () Bool)

(assert (=> b!7054283 (= e!4240889 e!4240888)))

(declare-fun res!2879888 () Bool)

(assert (=> b!7054283 (=> res!2879888 e!4240888)))

(declare-fun lt!2531230 () (Set Context!13124))

(declare-fun lt!2531234 () (Set Context!13124))

(declare-fun derivationStepZipper!3016 ((Set Context!13124) C!35402) (Set Context!13124))

(assert (=> b!7054283 (= res!2879888 (not (= (derivationStepZipper!3016 lt!2531230 (h!74549 s!7408)) lt!2531234)))))

(declare-fun lt!2531224 () Context!13124)

(declare-fun lambda!419933 () Int)

(declare-fun flatMap!2492 ((Set Context!13124) Int) (Set Context!13124))

(declare-fun derivationStepZipperUp!2150 (Context!13124 C!35402) (Set Context!13124))

(assert (=> b!7054283 (= (flatMap!2492 lt!2531230 lambda!419933) (derivationStepZipperUp!2150 lt!2531224 (h!74549 s!7408)))))

(declare-fun lt!2531214 () Unit!161805)

(declare-fun lemmaFlatMapOnSingletonSet!2001 ((Set Context!13124) Context!13124 Int) Unit!161805)

(assert (=> b!7054283 (= lt!2531214 (lemmaFlatMapOnSingletonSet!2001 lt!2531230 lt!2531224 lambda!419933))))

(assert (=> b!7054283 (= lt!2531234 (derivationStepZipperUp!2150 lt!2531224 (h!74549 s!7408)))))

(declare-fun lt!2531215 () Context!13124)

(declare-fun lt!2531238 () Unit!161805)

(assert (=> b!7054283 (= lt!2531238 (lemmaConcatPreservesForall!877 (exprs!7062 lt!2531215) (exprs!7062 ct2!306) lambda!419932))))

(declare-fun e!4240887 () Bool)

(declare-fun e!4240893 () Bool)

(assert (=> b!7054284 (= e!4240887 e!4240893)))

(declare-fun res!2879890 () Bool)

(assert (=> b!7054284 (=> res!2879890 e!4240893)))

(declare-fun lt!2531231 () Context!13124)

(declare-fun z1!570 () (Set Context!13124))

(assert (=> b!7054284 (= res!2879890 (or (not (= lt!2531224 lt!2531231)) (not (set.member lt!2531215 z1!570))))))

(declare-fun ++!15649 (List!68224 List!68224) List!68224)

(assert (=> b!7054284 (= lt!2531224 (Context!13125 (++!15649 (exprs!7062 lt!2531215) (exprs!7062 ct2!306))))))

(declare-fun lt!2531221 () Unit!161805)

(assert (=> b!7054284 (= lt!2531221 (lemmaConcatPreservesForall!877 (exprs!7062 lt!2531215) (exprs!7062 ct2!306) lambda!419932))))

(declare-fun lambda!419931 () Int)

(declare-fun mapPost2!395 ((Set Context!13124) Int Context!13124) Context!13124)

(assert (=> b!7054284 (= lt!2531215 (mapPost2!395 z1!570 lambda!419931 lt!2531231))))

(declare-fun b!7054285 () Bool)

(assert (=> b!7054285 (= e!4240893 e!4240889)))

(declare-fun res!2879891 () Bool)

(assert (=> b!7054285 (=> res!2879891 e!4240889)))

(declare-fun lt!2531235 () (Set Context!13124))

(assert (=> b!7054285 (= res!2879891 (not (= lt!2531230 lt!2531235)))))

(assert (=> b!7054285 (= lt!2531230 (set.insert lt!2531224 (as set.empty (Set Context!13124))))))

(declare-fun lt!2531212 () Unit!161805)

(assert (=> b!7054285 (= lt!2531212 (lemmaConcatPreservesForall!877 (exprs!7062 lt!2531215) (exprs!7062 ct2!306) lambda!419932))))

(declare-fun b!7054286 () Bool)

(declare-fun e!4240896 () Bool)

(assert (=> b!7054286 (= e!4240888 e!4240896)))

(declare-fun res!2879889 () Bool)

(assert (=> b!7054286 (=> res!2879889 e!4240896)))

(declare-fun nullable!7249 (Regex!17566) Bool)

(assert (=> b!7054286 (= res!2879889 (not (nullable!7249 (h!74548 (exprs!7062 lt!2531215)))))))

(declare-fun tail!13692 (List!68224) List!68224)

(assert (=> b!7054286 (= lt!2531227 (tail!13692 (exprs!7062 lt!2531215)))))

(declare-fun b!7054287 () Bool)

(declare-fun e!4240890 () Bool)

(assert (=> b!7054287 (= e!4240890 (matchZipper!3106 lt!2531226 (t!382004 s!7408)))))

(declare-fun e!4240891 () Bool)

(assert (=> b!7054288 (= e!4240891 (not e!4240887))))

(declare-fun res!2879893 () Bool)

(assert (=> b!7054288 (=> res!2879893 e!4240887)))

(assert (=> b!7054288 (= res!2879893 (not (matchZipper!3106 lt!2531235 s!7408)))))

(assert (=> b!7054288 (= lt!2531235 (set.insert lt!2531231 (as set.empty (Set Context!13124))))))

(declare-fun lt!2531213 () (Set Context!13124))

(declare-fun lambda!419930 () Int)

(declare-fun getWitness!1626 ((Set Context!13124) Int) Context!13124)

(assert (=> b!7054288 (= lt!2531231 (getWitness!1626 lt!2531213 lambda!419930))))

(declare-datatypes ((List!68226 0))(
  ( (Nil!68102) (Cons!68102 (h!74550 Context!13124) (t!382005 List!68226)) )
))
(declare-fun lt!2531220 () List!68226)

(declare-fun exists!3552 (List!68226 Int) Bool)

(assert (=> b!7054288 (exists!3552 lt!2531220 lambda!419930)))

(declare-fun lt!2531222 () Unit!161805)

(declare-fun lemmaZipperMatchesExistsMatchingContext!487 (List!68226 List!68225) Unit!161805)

(assert (=> b!7054288 (= lt!2531222 (lemmaZipperMatchesExistsMatchingContext!487 lt!2531220 s!7408))))

(declare-fun toList!10907 ((Set Context!13124)) List!68226)

(assert (=> b!7054288 (= lt!2531220 (toList!10907 lt!2531213))))

(declare-fun res!2879883 () Bool)

(assert (=> start!684014 (=> (not res!2879883) (not e!4240891))))

(assert (=> start!684014 (= res!2879883 (matchZipper!3106 lt!2531213 s!7408))))

(declare-fun appendTo!687 ((Set Context!13124) Context!13124) (Set Context!13124))

(assert (=> start!684014 (= lt!2531213 (appendTo!687 z1!570 ct2!306))))

(assert (=> start!684014 e!4240891))

(declare-fun condSetEmpty!49816 () Bool)

(assert (=> start!684014 (= condSetEmpty!49816 (= z1!570 (as set.empty (Set Context!13124))))))

(declare-fun setRes!49816 () Bool)

(assert (=> start!684014 setRes!49816))

(declare-fun e!4240885 () Bool)

(declare-fun inv!86775 (Context!13124) Bool)

(assert (=> start!684014 (and (inv!86775 ct2!306) e!4240885)))

(declare-fun e!4240894 () Bool)

(assert (=> start!684014 e!4240894))

(declare-fun b!7054289 () Bool)

(declare-fun e!4240892 () Bool)

(declare-fun lt!2531233 () Context!13124)

(assert (=> b!7054289 (= e!4240892 (inv!86775 lt!2531233))))

(declare-fun lt!2531225 () Unit!161805)

(assert (=> b!7054289 (= lt!2531225 (lemmaConcatPreservesForall!877 lt!2531227 (exprs!7062 ct2!306) lambda!419932))))

(declare-fun b!7054290 () Bool)

(declare-fun tp!1940006 () Bool)

(assert (=> b!7054290 (= e!4240885 tp!1940006)))

(declare-fun b!7054291 () Bool)

(declare-fun tp_is_empty!44357 () Bool)

(declare-fun tp!1940007 () Bool)

(assert (=> b!7054291 (= e!4240894 (and tp_is_empty!44357 tp!1940007))))

(declare-fun b!7054292 () Bool)

(declare-fun e!4240886 () Bool)

(assert (=> b!7054292 (= e!4240896 e!4240886)))

(declare-fun res!2879881 () Bool)

(assert (=> b!7054292 (=> res!2879881 e!4240886)))

(declare-fun lt!2531236 () (Set Context!13124))

(assert (=> b!7054292 (= res!2879881 (not (= lt!2531234 lt!2531236)))))

(declare-fun lt!2531218 () (Set Context!13124))

(assert (=> b!7054292 (= lt!2531236 (set.union lt!2531218 lt!2531226))))

(assert (=> b!7054292 (= lt!2531226 (derivationStepZipperUp!2150 lt!2531233 (h!74549 s!7408)))))

(declare-fun derivationStepZipperDown!2200 (Regex!17566 Context!13124 C!35402) (Set Context!13124))

(assert (=> b!7054292 (= lt!2531218 (derivationStepZipperDown!2200 (h!74548 (exprs!7062 lt!2531215)) lt!2531233 (h!74549 s!7408)))))

(assert (=> b!7054292 (= lt!2531233 (Context!13125 (++!15649 lt!2531227 (exprs!7062 ct2!306))))))

(declare-fun lt!2531228 () Unit!161805)

(assert (=> b!7054292 (= lt!2531228 (lemmaConcatPreservesForall!877 lt!2531227 (exprs!7062 ct2!306) lambda!419932))))

(declare-fun lt!2531216 () Unit!161805)

(assert (=> b!7054292 (= lt!2531216 (lemmaConcatPreservesForall!877 lt!2531227 (exprs!7062 ct2!306) lambda!419932))))

(declare-fun b!7054293 () Bool)

(declare-fun e!4240895 () Bool)

(declare-fun tp!1940008 () Bool)

(assert (=> b!7054293 (= e!4240895 tp!1940008)))

(declare-fun b!7054294 () Bool)

(declare-fun res!2879892 () Bool)

(assert (=> b!7054294 (=> res!2879892 e!4240888)))

(declare-fun isEmpty!39720 (List!68224) Bool)

(assert (=> b!7054294 (= res!2879892 (isEmpty!39720 (exprs!7062 lt!2531215)))))

(declare-fun b!7054295 () Bool)

(declare-fun res!2879880 () Bool)

(assert (=> b!7054295 (=> res!2879880 e!4240887)))

(assert (=> b!7054295 (= res!2879880 (not (set.member lt!2531231 lt!2531213)))))

(declare-fun b!7054296 () Bool)

(declare-fun res!2879894 () Bool)

(assert (=> b!7054296 (=> res!2879894 e!4240888)))

(assert (=> b!7054296 (= res!2879894 (not (is-Cons!68100 (exprs!7062 lt!2531215))))))

(declare-fun setElem!49816 () Context!13124)

(declare-fun setNonEmpty!49816 () Bool)

(declare-fun tp!1940005 () Bool)

(assert (=> setNonEmpty!49816 (= setRes!49816 (and tp!1940005 (inv!86775 setElem!49816) e!4240895))))

(declare-fun setRest!49816 () (Set Context!13124))

(assert (=> setNonEmpty!49816 (= z1!570 (set.union (set.insert setElem!49816 (as set.empty (Set Context!13124))) setRest!49816))))

(declare-fun b!7054297 () Bool)

(declare-fun res!2879882 () Bool)

(assert (=> b!7054297 (=> res!2879882 e!4240892)))

(declare-fun lt!2531219 () Bool)

(assert (=> b!7054297 (= res!2879882 (not lt!2531219))))

(declare-fun setIsEmpty!49816 () Bool)

(assert (=> setIsEmpty!49816 setRes!49816))

(declare-fun b!7054298 () Bool)

(assert (=> b!7054298 (= e!4240886 e!4240892)))

(declare-fun res!2879886 () Bool)

(assert (=> b!7054298 (=> res!2879886 e!4240892)))

(assert (=> b!7054298 (= res!2879886 e!4240884)))

(declare-fun res!2879885 () Bool)

(assert (=> b!7054298 (=> (not res!2879885) (not e!4240884))))

(declare-fun lt!2531239 () Bool)

(assert (=> b!7054298 (= res!2879885 (not (= lt!2531219 lt!2531239)))))

(assert (=> b!7054298 (= lt!2531219 (matchZipper!3106 lt!2531234 (t!382004 s!7408)))))

(declare-fun lt!2531217 () Unit!161805)

(assert (=> b!7054298 (= lt!2531217 (lemmaConcatPreservesForall!877 lt!2531227 (exprs!7062 ct2!306) lambda!419932))))

(assert (=> b!7054298 (= (matchZipper!3106 lt!2531236 (t!382004 s!7408)) e!4240890)))

(declare-fun res!2879884 () Bool)

(assert (=> b!7054298 (=> res!2879884 e!4240890)))

(assert (=> b!7054298 (= res!2879884 lt!2531239)))

(assert (=> b!7054298 (= lt!2531239 (matchZipper!3106 lt!2531218 (t!382004 s!7408)))))

(declare-fun lt!2531229 () Unit!161805)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!1579 ((Set Context!13124) (Set Context!13124) List!68225) Unit!161805)

(assert (=> b!7054298 (= lt!2531229 (lemmaZipperConcatMatchesSameAsBothZippers!1579 lt!2531218 lt!2531226 (t!382004 s!7408)))))

(declare-fun lt!2531237 () Unit!161805)

(assert (=> b!7054298 (= lt!2531237 (lemmaConcatPreservesForall!877 lt!2531227 (exprs!7062 ct2!306) lambda!419932))))

(declare-fun lt!2531223 () Unit!161805)

(assert (=> b!7054298 (= lt!2531223 (lemmaConcatPreservesForall!877 lt!2531227 (exprs!7062 ct2!306) lambda!419932))))

(declare-fun b!7054299 () Bool)

(declare-fun res!2879887 () Bool)

(assert (=> b!7054299 (=> (not res!2879887) (not e!4240891))))

(assert (=> b!7054299 (= res!2879887 (is-Cons!68101 s!7408))))

(assert (= (and start!684014 res!2879883) b!7054299))

(assert (= (and b!7054299 res!2879887) b!7054288))

(assert (= (and b!7054288 (not res!2879893)) b!7054295))

(assert (= (and b!7054295 (not res!2879880)) b!7054284))

(assert (= (and b!7054284 (not res!2879890)) b!7054285))

(assert (= (and b!7054285 (not res!2879891)) b!7054283))

(assert (= (and b!7054283 (not res!2879888)) b!7054296))

(assert (= (and b!7054296 (not res!2879894)) b!7054294))

(assert (= (and b!7054294 (not res!2879892)) b!7054286))

(assert (= (and b!7054286 (not res!2879889)) b!7054292))

(assert (= (and b!7054292 (not res!2879881)) b!7054298))

(assert (= (and b!7054298 (not res!2879884)) b!7054287))

(assert (= (and b!7054298 res!2879885) b!7054282))

(assert (= (and b!7054298 (not res!2879886)) b!7054297))

(assert (= (and b!7054297 (not res!2879882)) b!7054289))

(assert (= (and start!684014 condSetEmpty!49816) setIsEmpty!49816))

(assert (= (and start!684014 (not condSetEmpty!49816)) setNonEmpty!49816))

(assert (= setNonEmpty!49816 b!7054293))

(assert (= start!684014 b!7054290))

(assert (= (and start!684014 (is-Cons!68101 s!7408)) b!7054291))

(declare-fun m!7771570 () Bool)

(assert (=> b!7054287 m!7771570))

(declare-fun m!7771572 () Bool)

(assert (=> b!7054283 m!7771572))

(declare-fun m!7771574 () Bool)

(assert (=> b!7054283 m!7771574))

(declare-fun m!7771576 () Bool)

(assert (=> b!7054283 m!7771576))

(declare-fun m!7771578 () Bool)

(assert (=> b!7054283 m!7771578))

(declare-fun m!7771580 () Bool)

(assert (=> b!7054283 m!7771580))

(declare-fun m!7771582 () Bool)

(assert (=> b!7054295 m!7771582))

(declare-fun m!7771584 () Bool)

(assert (=> b!7054285 m!7771584))

(assert (=> b!7054285 m!7771572))

(declare-fun m!7771586 () Bool)

(assert (=> setNonEmpty!49816 m!7771586))

(declare-fun m!7771588 () Bool)

(assert (=> b!7054292 m!7771588))

(declare-fun m!7771590 () Bool)

(assert (=> b!7054292 m!7771590))

(assert (=> b!7054292 m!7771590))

(declare-fun m!7771592 () Bool)

(assert (=> b!7054292 m!7771592))

(declare-fun m!7771594 () Bool)

(assert (=> b!7054292 m!7771594))

(declare-fun m!7771596 () Bool)

(assert (=> b!7054294 m!7771596))

(declare-fun m!7771598 () Bool)

(assert (=> start!684014 m!7771598))

(declare-fun m!7771600 () Bool)

(assert (=> start!684014 m!7771600))

(declare-fun m!7771602 () Bool)

(assert (=> start!684014 m!7771602))

(declare-fun m!7771604 () Bool)

(assert (=> b!7054289 m!7771604))

(assert (=> b!7054289 m!7771590))

(assert (=> b!7054282 m!7771570))

(assert (=> b!7054282 m!7771590))

(declare-fun m!7771606 () Bool)

(assert (=> b!7054288 m!7771606))

(declare-fun m!7771608 () Bool)

(assert (=> b!7054288 m!7771608))

(declare-fun m!7771610 () Bool)

(assert (=> b!7054288 m!7771610))

(declare-fun m!7771612 () Bool)

(assert (=> b!7054288 m!7771612))

(declare-fun m!7771614 () Bool)

(assert (=> b!7054288 m!7771614))

(declare-fun m!7771616 () Bool)

(assert (=> b!7054288 m!7771616))

(declare-fun m!7771618 () Bool)

(assert (=> b!7054298 m!7771618))

(assert (=> b!7054298 m!7771590))

(assert (=> b!7054298 m!7771590))

(assert (=> b!7054298 m!7771590))

(declare-fun m!7771620 () Bool)

(assert (=> b!7054298 m!7771620))

(declare-fun m!7771622 () Bool)

(assert (=> b!7054298 m!7771622))

(declare-fun m!7771624 () Bool)

(assert (=> b!7054298 m!7771624))

(declare-fun m!7771626 () Bool)

(assert (=> b!7054286 m!7771626))

(declare-fun m!7771628 () Bool)

(assert (=> b!7054286 m!7771628))

(declare-fun m!7771630 () Bool)

(assert (=> b!7054284 m!7771630))

(declare-fun m!7771632 () Bool)

(assert (=> b!7054284 m!7771632))

(assert (=> b!7054284 m!7771572))

(declare-fun m!7771634 () Bool)

(assert (=> b!7054284 m!7771634))

(push 1)

(assert (not b!7054287))

(assert (not start!684014))

(assert (not b!7054290))

(assert (not b!7054293))

(assert (not b!7054285))

(assert (not b!7054282))

(assert (not b!7054289))

(assert tp_is_empty!44357)

(assert (not setNonEmpty!49816))

(assert (not b!7054284))

(assert (not b!7054283))

(assert (not b!7054286))

(assert (not b!7054294))

(assert (not b!7054288))

(assert (not b!7054292))

(assert (not b!7054298))

(assert (not b!7054291))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2204475 () Bool)

(declare-fun c!1314133 () Bool)

(declare-fun e!4240943 () Bool)

(assert (=> d!2204475 (= c!1314133 e!4240943)))

(declare-fun res!2879944 () Bool)

(assert (=> d!2204475 (=> (not res!2879944) (not e!4240943))))

(assert (=> d!2204475 (= res!2879944 (is-Cons!68100 (exprs!7062 lt!2531224)))))

(declare-fun e!4240942 () (Set Context!13124))

(assert (=> d!2204475 (= (derivationStepZipperUp!2150 lt!2531224 (h!74549 s!7408)) e!4240942)))

(declare-fun b!7054376 () Bool)

(assert (=> b!7054376 (= e!4240943 (nullable!7249 (h!74548 (exprs!7062 lt!2531224))))))

(declare-fun bm!640801 () Bool)

(declare-fun call!640806 () (Set Context!13124))

(assert (=> bm!640801 (= call!640806 (derivationStepZipperDown!2200 (h!74548 (exprs!7062 lt!2531224)) (Context!13125 (t!382003 (exprs!7062 lt!2531224))) (h!74549 s!7408)))))

(declare-fun b!7054377 () Bool)

(declare-fun e!4240944 () (Set Context!13124))

(assert (=> b!7054377 (= e!4240942 e!4240944)))

(declare-fun c!1314132 () Bool)

(assert (=> b!7054377 (= c!1314132 (is-Cons!68100 (exprs!7062 lt!2531224)))))

(declare-fun b!7054378 () Bool)

(assert (=> b!7054378 (= e!4240944 (as set.empty (Set Context!13124)))))

(declare-fun b!7054379 () Bool)

(assert (=> b!7054379 (= e!4240942 (set.union call!640806 (derivationStepZipperUp!2150 (Context!13125 (t!382003 (exprs!7062 lt!2531224))) (h!74549 s!7408))))))

(declare-fun b!7054380 () Bool)

(assert (=> b!7054380 (= e!4240944 call!640806)))

(assert (= (and d!2204475 res!2879944) b!7054376))

(assert (= (and d!2204475 c!1314133) b!7054379))

(assert (= (and d!2204475 (not c!1314133)) b!7054377))

(assert (= (and b!7054377 c!1314132) b!7054380))

(assert (= (and b!7054377 (not c!1314132)) b!7054378))

(assert (= (or b!7054379 b!7054380) bm!640801))

(declare-fun m!7771702 () Bool)

(assert (=> b!7054376 m!7771702))

(declare-fun m!7771704 () Bool)

(assert (=> bm!640801 m!7771704))

(declare-fun m!7771706 () Bool)

(assert (=> b!7054379 m!7771706))

(assert (=> b!7054283 d!2204475))

(declare-fun d!2204479 () Bool)

(declare-fun choose!53781 ((Set Context!13124) Int) (Set Context!13124))

(assert (=> d!2204479 (= (flatMap!2492 lt!2531230 lambda!419933) (choose!53781 lt!2531230 lambda!419933))))

(declare-fun bs!1876830 () Bool)

(assert (= bs!1876830 d!2204479))

(declare-fun m!7771708 () Bool)

(assert (=> bs!1876830 m!7771708))

(assert (=> b!7054283 d!2204479))

(declare-fun bs!1876831 () Bool)

(declare-fun d!2204481 () Bool)

(assert (= bs!1876831 (and d!2204481 b!7054283)))

(declare-fun lambda!419970 () Int)

(assert (=> bs!1876831 (= lambda!419970 lambda!419933)))

(assert (=> d!2204481 true))

(assert (=> d!2204481 (= (derivationStepZipper!3016 lt!2531230 (h!74549 s!7408)) (flatMap!2492 lt!2531230 lambda!419970))))

(declare-fun bs!1876832 () Bool)

(assert (= bs!1876832 d!2204481))

(declare-fun m!7771710 () Bool)

(assert (=> bs!1876832 m!7771710))

(assert (=> b!7054283 d!2204481))

(declare-fun d!2204483 () Bool)

(declare-fun forall!16509 (List!68224 Int) Bool)

(assert (=> d!2204483 (forall!16509 (++!15649 (exprs!7062 lt!2531215) (exprs!7062 ct2!306)) lambda!419932)))

(declare-fun lt!2531328 () Unit!161805)

(declare-fun choose!53782 (List!68224 List!68224 Int) Unit!161805)

(assert (=> d!2204483 (= lt!2531328 (choose!53782 (exprs!7062 lt!2531215) (exprs!7062 ct2!306) lambda!419932))))

(assert (=> d!2204483 (forall!16509 (exprs!7062 lt!2531215) lambda!419932)))

(assert (=> d!2204483 (= (lemmaConcatPreservesForall!877 (exprs!7062 lt!2531215) (exprs!7062 ct2!306) lambda!419932) lt!2531328)))

(declare-fun bs!1876833 () Bool)

(assert (= bs!1876833 d!2204483))

(assert (=> bs!1876833 m!7771632))

(assert (=> bs!1876833 m!7771632))

(declare-fun m!7771712 () Bool)

(assert (=> bs!1876833 m!7771712))

(declare-fun m!7771714 () Bool)

(assert (=> bs!1876833 m!7771714))

(declare-fun m!7771716 () Bool)

(assert (=> bs!1876833 m!7771716))

(assert (=> b!7054283 d!2204483))

(declare-fun d!2204485 () Bool)

(declare-fun dynLambda!27623 (Int Context!13124) (Set Context!13124))

(assert (=> d!2204485 (= (flatMap!2492 lt!2531230 lambda!419933) (dynLambda!27623 lambda!419933 lt!2531224))))

(declare-fun lt!2531331 () Unit!161805)

(declare-fun choose!53783 ((Set Context!13124) Context!13124 Int) Unit!161805)

(assert (=> d!2204485 (= lt!2531331 (choose!53783 lt!2531230 lt!2531224 lambda!419933))))

(assert (=> d!2204485 (= lt!2531230 (set.insert lt!2531224 (as set.empty (Set Context!13124))))))

(assert (=> d!2204485 (= (lemmaFlatMapOnSingletonSet!2001 lt!2531230 lt!2531224 lambda!419933) lt!2531331)))

(declare-fun b_lambda!268611 () Bool)

(assert (=> (not b_lambda!268611) (not d!2204485)))

(declare-fun bs!1876834 () Bool)

(assert (= bs!1876834 d!2204485))

(assert (=> bs!1876834 m!7771578))

(declare-fun m!7771730 () Bool)

(assert (=> bs!1876834 m!7771730))

(declare-fun m!7771732 () Bool)

(assert (=> bs!1876834 m!7771732))

(assert (=> bs!1876834 m!7771584))

(assert (=> b!7054283 d!2204485))

(declare-fun d!2204489 () Bool)

(assert (=> d!2204489 (= (isEmpty!39720 (exprs!7062 lt!2531215)) (is-Nil!68100 (exprs!7062 lt!2531215)))))

(assert (=> b!7054294 d!2204489))

(declare-fun b!7054399 () Bool)

(declare-fun res!2879949 () Bool)

(declare-fun e!4240952 () Bool)

(assert (=> b!7054399 (=> (not res!2879949) (not e!4240952))))

(declare-fun lt!2531337 () List!68224)

(declare-fun size!41148 (List!68224) Int)

(assert (=> b!7054399 (= res!2879949 (= (size!41148 lt!2531337) (+ (size!41148 (exprs!7062 lt!2531215)) (size!41148 (exprs!7062 ct2!306)))))))

(declare-fun b!7054400 () Bool)

(assert (=> b!7054400 (= e!4240952 (or (not (= (exprs!7062 ct2!306) Nil!68100)) (= lt!2531337 (exprs!7062 lt!2531215))))))

(declare-fun b!7054397 () Bool)

(declare-fun e!4240953 () List!68224)

(assert (=> b!7054397 (= e!4240953 (exprs!7062 ct2!306))))

(declare-fun b!7054398 () Bool)

(assert (=> b!7054398 (= e!4240953 (Cons!68100 (h!74548 (exprs!7062 lt!2531215)) (++!15649 (t!382003 (exprs!7062 lt!2531215)) (exprs!7062 ct2!306))))))

(declare-fun d!2204491 () Bool)

(assert (=> d!2204491 e!4240952))

(declare-fun res!2879950 () Bool)

(assert (=> d!2204491 (=> (not res!2879950) (not e!4240952))))

(declare-fun content!13678 (List!68224) (Set Regex!17566))

(assert (=> d!2204491 (= res!2879950 (= (content!13678 lt!2531337) (set.union (content!13678 (exprs!7062 lt!2531215)) (content!13678 (exprs!7062 ct2!306)))))))

(assert (=> d!2204491 (= lt!2531337 e!4240953)))

(declare-fun c!1314141 () Bool)

(assert (=> d!2204491 (= c!1314141 (is-Nil!68100 (exprs!7062 lt!2531215)))))

(assert (=> d!2204491 (= (++!15649 (exprs!7062 lt!2531215) (exprs!7062 ct2!306)) lt!2531337)))

(assert (= (and d!2204491 c!1314141) b!7054397))

(assert (= (and d!2204491 (not c!1314141)) b!7054398))

(assert (= (and d!2204491 res!2879950) b!7054399))

(assert (= (and b!7054399 res!2879949) b!7054400))

(declare-fun m!7771740 () Bool)

(assert (=> b!7054399 m!7771740))

(declare-fun m!7771742 () Bool)

(assert (=> b!7054399 m!7771742))

(declare-fun m!7771744 () Bool)

(assert (=> b!7054399 m!7771744))

(declare-fun m!7771746 () Bool)

(assert (=> b!7054398 m!7771746))

(declare-fun m!7771748 () Bool)

(assert (=> d!2204491 m!7771748))

(declare-fun m!7771750 () Bool)

(assert (=> d!2204491 m!7771750))

(declare-fun m!7771752 () Bool)

(assert (=> d!2204491 m!7771752))

(assert (=> b!7054284 d!2204491))

(assert (=> b!7054284 d!2204483))

(declare-fun d!2204495 () Bool)

(declare-fun e!4240956 () Bool)

(assert (=> d!2204495 e!4240956))

(declare-fun res!2879953 () Bool)

(assert (=> d!2204495 (=> (not res!2879953) (not e!4240956))))

(declare-fun lt!2531340 () Context!13124)

(declare-fun dynLambda!27624 (Int Context!13124) Context!13124)

(assert (=> d!2204495 (= res!2879953 (= lt!2531231 (dynLambda!27624 lambda!419931 lt!2531340)))))

(declare-fun choose!53784 ((Set Context!13124) Int Context!13124) Context!13124)

(assert (=> d!2204495 (= lt!2531340 (choose!53784 z1!570 lambda!419931 lt!2531231))))

(declare-fun map!15885 ((Set Context!13124) Int) (Set Context!13124))

(assert (=> d!2204495 (set.member lt!2531231 (map!15885 z1!570 lambda!419931))))

(assert (=> d!2204495 (= (mapPost2!395 z1!570 lambda!419931 lt!2531231) lt!2531340)))

(declare-fun b!7054404 () Bool)

(assert (=> b!7054404 (= e!4240956 (set.member lt!2531340 z1!570))))

(assert (= (and d!2204495 res!2879953) b!7054404))

(declare-fun b_lambda!268613 () Bool)

(assert (=> (not b_lambda!268613) (not d!2204495)))

(declare-fun m!7771754 () Bool)

(assert (=> d!2204495 m!7771754))

(declare-fun m!7771756 () Bool)

(assert (=> d!2204495 m!7771756))

(declare-fun m!7771758 () Bool)

(assert (=> d!2204495 m!7771758))

(declare-fun m!7771760 () Bool)

(assert (=> d!2204495 m!7771760))

(declare-fun m!7771762 () Bool)

(assert (=> b!7054404 m!7771762))

(assert (=> b!7054284 d!2204495))

(assert (=> b!7054285 d!2204483))

(declare-fun d!2204497 () Bool)

(declare-fun nullableFct!2771 (Regex!17566) Bool)

(assert (=> d!2204497 (= (nullable!7249 (h!74548 (exprs!7062 lt!2531215))) (nullableFct!2771 (h!74548 (exprs!7062 lt!2531215))))))

(declare-fun bs!1876836 () Bool)

(assert (= bs!1876836 d!2204497))

(declare-fun m!7771764 () Bool)

(assert (=> bs!1876836 m!7771764))

(assert (=> b!7054286 d!2204497))

(declare-fun d!2204499 () Bool)

(assert (=> d!2204499 (= (tail!13692 (exprs!7062 lt!2531215)) (t!382003 (exprs!7062 lt!2531215)))))

(assert (=> b!7054286 d!2204499))

(declare-fun bs!1876837 () Bool)

(declare-fun d!2204501 () Bool)

(assert (= bs!1876837 (and d!2204501 b!7054284)))

(declare-fun lambda!419973 () Int)

(assert (=> bs!1876837 (= lambda!419973 lambda!419932)))

(assert (=> d!2204501 (= (inv!86775 setElem!49816) (forall!16509 (exprs!7062 setElem!49816) lambda!419973))))

(declare-fun bs!1876838 () Bool)

(assert (= bs!1876838 d!2204501))

(declare-fun m!7771766 () Bool)

(assert (=> bs!1876838 m!7771766))

(assert (=> setNonEmpty!49816 d!2204501))

(declare-fun d!2204503 () Bool)

(declare-fun c!1314147 () Bool)

(declare-fun isEmpty!39722 (List!68225) Bool)

(assert (=> d!2204503 (= c!1314147 (isEmpty!39722 (t!382004 s!7408)))))

(declare-fun e!4240965 () Bool)

(assert (=> d!2204503 (= (matchZipper!3106 lt!2531226 (t!382004 s!7408)) e!4240965)))

(declare-fun b!7054418 () Bool)

(declare-fun nullableZipper!2653 ((Set Context!13124)) Bool)

(assert (=> b!7054418 (= e!4240965 (nullableZipper!2653 lt!2531226))))

(declare-fun b!7054419 () Bool)

(declare-fun head!14354 (List!68225) C!35402)

(declare-fun tail!13694 (List!68225) List!68225)

(assert (=> b!7054419 (= e!4240965 (matchZipper!3106 (derivationStepZipper!3016 lt!2531226 (head!14354 (t!382004 s!7408))) (tail!13694 (t!382004 s!7408))))))

(assert (= (and d!2204503 c!1314147) b!7054418))

(assert (= (and d!2204503 (not c!1314147)) b!7054419))

(declare-fun m!7771790 () Bool)

(assert (=> d!2204503 m!7771790))

(declare-fun m!7771792 () Bool)

(assert (=> b!7054418 m!7771792))

(declare-fun m!7771794 () Bool)

(assert (=> b!7054419 m!7771794))

(assert (=> b!7054419 m!7771794))

(declare-fun m!7771796 () Bool)

(assert (=> b!7054419 m!7771796))

(declare-fun m!7771798 () Bool)

(assert (=> b!7054419 m!7771798))

(assert (=> b!7054419 m!7771796))

(assert (=> b!7054419 m!7771798))

(declare-fun m!7771800 () Bool)

(assert (=> b!7054419 m!7771800))

(assert (=> b!7054287 d!2204503))

(declare-fun bs!1876842 () Bool)

(declare-fun d!2204513 () Bool)

(assert (= bs!1876842 (and d!2204513 b!7054288)))

(declare-fun lambda!419976 () Int)

(assert (=> bs!1876842 (= lambda!419976 lambda!419930)))

(assert (=> d!2204513 true))

(assert (=> d!2204513 (exists!3552 lt!2531220 lambda!419976)))

(declare-fun lt!2531347 () Unit!161805)

(declare-fun choose!53785 (List!68226 List!68225) Unit!161805)

(assert (=> d!2204513 (= lt!2531347 (choose!53785 lt!2531220 s!7408))))

(declare-fun content!13679 (List!68226) (Set Context!13124))

(assert (=> d!2204513 (matchZipper!3106 (content!13679 lt!2531220) s!7408)))

(assert (=> d!2204513 (= (lemmaZipperMatchesExistsMatchingContext!487 lt!2531220 s!7408) lt!2531347)))

(declare-fun bs!1876843 () Bool)

(assert (= bs!1876843 d!2204513))

(declare-fun m!7771812 () Bool)

(assert (=> bs!1876843 m!7771812))

(declare-fun m!7771814 () Bool)

(assert (=> bs!1876843 m!7771814))

(declare-fun m!7771816 () Bool)

(assert (=> bs!1876843 m!7771816))

(assert (=> bs!1876843 m!7771816))

(declare-fun m!7771818 () Bool)

(assert (=> bs!1876843 m!7771818))

(assert (=> b!7054288 d!2204513))

(declare-fun d!2204523 () Bool)

(declare-fun c!1314150 () Bool)

(assert (=> d!2204523 (= c!1314150 (isEmpty!39722 s!7408))))

(declare-fun e!4240966 () Bool)

(assert (=> d!2204523 (= (matchZipper!3106 lt!2531235 s!7408) e!4240966)))

(declare-fun b!7054420 () Bool)

(assert (=> b!7054420 (= e!4240966 (nullableZipper!2653 lt!2531235))))

(declare-fun b!7054421 () Bool)

(assert (=> b!7054421 (= e!4240966 (matchZipper!3106 (derivationStepZipper!3016 lt!2531235 (head!14354 s!7408)) (tail!13694 s!7408)))))

(assert (= (and d!2204523 c!1314150) b!7054420))

(assert (= (and d!2204523 (not c!1314150)) b!7054421))

(declare-fun m!7771820 () Bool)

(assert (=> d!2204523 m!7771820))

(declare-fun m!7771822 () Bool)

(assert (=> b!7054420 m!7771822))

(declare-fun m!7771824 () Bool)

(assert (=> b!7054421 m!7771824))

(assert (=> b!7054421 m!7771824))

(declare-fun m!7771826 () Bool)

(assert (=> b!7054421 m!7771826))

(declare-fun m!7771828 () Bool)

(assert (=> b!7054421 m!7771828))

(assert (=> b!7054421 m!7771826))

(assert (=> b!7054421 m!7771828))

(declare-fun m!7771830 () Bool)

(assert (=> b!7054421 m!7771830))

(assert (=> b!7054288 d!2204523))

(declare-fun d!2204525 () Bool)

(declare-fun e!4240975 () Bool)

(assert (=> d!2204525 e!4240975))

(declare-fun res!2879961 () Bool)

(assert (=> d!2204525 (=> (not res!2879961) (not e!4240975))))

(declare-fun lt!2531350 () Context!13124)

(declare-fun dynLambda!27625 (Int Context!13124) Bool)

(assert (=> d!2204525 (= res!2879961 (dynLambda!27625 lambda!419930 lt!2531350))))

(declare-fun getWitness!1628 (List!68226 Int) Context!13124)

(assert (=> d!2204525 (= lt!2531350 (getWitness!1628 (toList!10907 lt!2531213) lambda!419930))))

(declare-fun exists!3554 ((Set Context!13124) Int) Bool)

(assert (=> d!2204525 (exists!3554 lt!2531213 lambda!419930)))

(assert (=> d!2204525 (= (getWitness!1626 lt!2531213 lambda!419930) lt!2531350)))

(declare-fun b!7054434 () Bool)

(assert (=> b!7054434 (= e!4240975 (set.member lt!2531350 lt!2531213))))

(assert (= (and d!2204525 res!2879961) b!7054434))

(declare-fun b_lambda!268615 () Bool)

(assert (=> (not b_lambda!268615) (not d!2204525)))

(declare-fun m!7771832 () Bool)

(assert (=> d!2204525 m!7771832))

(assert (=> d!2204525 m!7771608))

(assert (=> d!2204525 m!7771608))

(declare-fun m!7771834 () Bool)

(assert (=> d!2204525 m!7771834))

(declare-fun m!7771836 () Bool)

(assert (=> d!2204525 m!7771836))

(declare-fun m!7771838 () Bool)

(assert (=> b!7054434 m!7771838))

(assert (=> b!7054288 d!2204525))

(declare-fun d!2204527 () Bool)

(declare-fun e!4240978 () Bool)

(assert (=> d!2204527 e!4240978))

(declare-fun res!2879964 () Bool)

(assert (=> d!2204527 (=> (not res!2879964) (not e!4240978))))

(declare-fun lt!2531353 () List!68226)

(declare-fun noDuplicate!2686 (List!68226) Bool)

(assert (=> d!2204527 (= res!2879964 (noDuplicate!2686 lt!2531353))))

(declare-fun choose!53786 ((Set Context!13124)) List!68226)

(assert (=> d!2204527 (= lt!2531353 (choose!53786 lt!2531213))))

(assert (=> d!2204527 (= (toList!10907 lt!2531213) lt!2531353)))

(declare-fun b!7054437 () Bool)

(assert (=> b!7054437 (= e!4240978 (= (content!13679 lt!2531353) lt!2531213))))

(assert (= (and d!2204527 res!2879964) b!7054437))

(declare-fun m!7771840 () Bool)

(assert (=> d!2204527 m!7771840))

(declare-fun m!7771842 () Bool)

(assert (=> d!2204527 m!7771842))

(declare-fun m!7771844 () Bool)

(assert (=> b!7054437 m!7771844))

(assert (=> b!7054288 d!2204527))

(declare-fun bs!1876844 () Bool)

(declare-fun d!2204529 () Bool)

(assert (= bs!1876844 (and d!2204529 b!7054288)))

(declare-fun lambda!419979 () Int)

(assert (=> bs!1876844 (not (= lambda!419979 lambda!419930))))

(declare-fun bs!1876845 () Bool)

(assert (= bs!1876845 (and d!2204529 d!2204513)))

(assert (=> bs!1876845 (not (= lambda!419979 lambda!419976))))

(assert (=> d!2204529 true))

(declare-fun order!28307 () Int)

(declare-fun dynLambda!27626 (Int Int) Int)

(assert (=> d!2204529 (< (dynLambda!27626 order!28307 lambda!419930) (dynLambda!27626 order!28307 lambda!419979))))

(declare-fun forall!16510 (List!68226 Int) Bool)

(assert (=> d!2204529 (= (exists!3552 lt!2531220 lambda!419930) (not (forall!16510 lt!2531220 lambda!419979)))))

(declare-fun bs!1876846 () Bool)

(assert (= bs!1876846 d!2204529))

(declare-fun m!7771852 () Bool)

(assert (=> bs!1876846 m!7771852))

(assert (=> b!7054288 d!2204529))

(declare-fun bs!1876847 () Bool)

(declare-fun d!2204533 () Bool)

(assert (= bs!1876847 (and d!2204533 b!7054284)))

(declare-fun lambda!419980 () Int)

(assert (=> bs!1876847 (= lambda!419980 lambda!419932)))

(declare-fun bs!1876848 () Bool)

(assert (= bs!1876848 (and d!2204533 d!2204501)))

(assert (=> bs!1876848 (= lambda!419980 lambda!419973)))

(assert (=> d!2204533 (= (inv!86775 lt!2531233) (forall!16509 (exprs!7062 lt!2531233) lambda!419980))))

(declare-fun bs!1876849 () Bool)

(assert (= bs!1876849 d!2204533))

(declare-fun m!7771854 () Bool)

(assert (=> bs!1876849 m!7771854))

(assert (=> b!7054289 d!2204533))

(declare-fun d!2204535 () Bool)

(assert (=> d!2204535 (forall!16509 (++!15649 lt!2531227 (exprs!7062 ct2!306)) lambda!419932)))

(declare-fun lt!2531354 () Unit!161805)

(assert (=> d!2204535 (= lt!2531354 (choose!53782 lt!2531227 (exprs!7062 ct2!306) lambda!419932))))

(assert (=> d!2204535 (forall!16509 lt!2531227 lambda!419932)))

(assert (=> d!2204535 (= (lemmaConcatPreservesForall!877 lt!2531227 (exprs!7062 ct2!306) lambda!419932) lt!2531354)))

(declare-fun bs!1876850 () Bool)

(assert (= bs!1876850 d!2204535))

(assert (=> bs!1876850 m!7771594))

(assert (=> bs!1876850 m!7771594))

(declare-fun m!7771856 () Bool)

(assert (=> bs!1876850 m!7771856))

(declare-fun m!7771858 () Bool)

(assert (=> bs!1876850 m!7771858))

(declare-fun m!7771860 () Bool)

(assert (=> bs!1876850 m!7771860))

(assert (=> b!7054289 d!2204535))

(declare-fun e!4240984 () Bool)

(declare-fun d!2204537 () Bool)

(assert (=> d!2204537 (= (matchZipper!3106 (set.union lt!2531218 lt!2531226) (t!382004 s!7408)) e!4240984)))

(declare-fun res!2879968 () Bool)

(assert (=> d!2204537 (=> res!2879968 e!4240984)))

(assert (=> d!2204537 (= res!2879968 (matchZipper!3106 lt!2531218 (t!382004 s!7408)))))

(declare-fun lt!2531357 () Unit!161805)

(declare-fun choose!53787 ((Set Context!13124) (Set Context!13124) List!68225) Unit!161805)

(assert (=> d!2204537 (= lt!2531357 (choose!53787 lt!2531218 lt!2531226 (t!382004 s!7408)))))

(assert (=> d!2204537 (= (lemmaZipperConcatMatchesSameAsBothZippers!1579 lt!2531218 lt!2531226 (t!382004 s!7408)) lt!2531357)))

(declare-fun b!7054449 () Bool)

(assert (=> b!7054449 (= e!4240984 (matchZipper!3106 lt!2531226 (t!382004 s!7408)))))

(assert (= (and d!2204537 (not res!2879968)) b!7054449))

(declare-fun m!7771864 () Bool)

(assert (=> d!2204537 m!7771864))

(assert (=> d!2204537 m!7771618))

(declare-fun m!7771866 () Bool)

(assert (=> d!2204537 m!7771866))

(assert (=> b!7054449 m!7771570))

(assert (=> b!7054298 d!2204537))

(declare-fun d!2204541 () Bool)

(declare-fun c!1314159 () Bool)

(assert (=> d!2204541 (= c!1314159 (isEmpty!39722 (t!382004 s!7408)))))

(declare-fun e!4240985 () Bool)

(assert (=> d!2204541 (= (matchZipper!3106 lt!2531218 (t!382004 s!7408)) e!4240985)))

(declare-fun b!7054450 () Bool)

(assert (=> b!7054450 (= e!4240985 (nullableZipper!2653 lt!2531218))))

(declare-fun b!7054451 () Bool)

(assert (=> b!7054451 (= e!4240985 (matchZipper!3106 (derivationStepZipper!3016 lt!2531218 (head!14354 (t!382004 s!7408))) (tail!13694 (t!382004 s!7408))))))

(assert (= (and d!2204541 c!1314159) b!7054450))

(assert (= (and d!2204541 (not c!1314159)) b!7054451))

(assert (=> d!2204541 m!7771790))

(declare-fun m!7771868 () Bool)

(assert (=> b!7054450 m!7771868))

(assert (=> b!7054451 m!7771794))

(assert (=> b!7054451 m!7771794))

(declare-fun m!7771870 () Bool)

(assert (=> b!7054451 m!7771870))

(assert (=> b!7054451 m!7771798))

(assert (=> b!7054451 m!7771870))

(assert (=> b!7054451 m!7771798))

(declare-fun m!7771872 () Bool)

(assert (=> b!7054451 m!7771872))

(assert (=> b!7054298 d!2204541))

(declare-fun d!2204543 () Bool)

(declare-fun c!1314160 () Bool)

(assert (=> d!2204543 (= c!1314160 (isEmpty!39722 (t!382004 s!7408)))))

(declare-fun e!4240986 () Bool)

(assert (=> d!2204543 (= (matchZipper!3106 lt!2531234 (t!382004 s!7408)) e!4240986)))

(declare-fun b!7054452 () Bool)

(assert (=> b!7054452 (= e!4240986 (nullableZipper!2653 lt!2531234))))

(declare-fun b!7054453 () Bool)

(assert (=> b!7054453 (= e!4240986 (matchZipper!3106 (derivationStepZipper!3016 lt!2531234 (head!14354 (t!382004 s!7408))) (tail!13694 (t!382004 s!7408))))))

(assert (= (and d!2204543 c!1314160) b!7054452))

(assert (= (and d!2204543 (not c!1314160)) b!7054453))

(assert (=> d!2204543 m!7771790))

(declare-fun m!7771874 () Bool)

(assert (=> b!7054452 m!7771874))

(assert (=> b!7054453 m!7771794))

(assert (=> b!7054453 m!7771794))

(declare-fun m!7771876 () Bool)

(assert (=> b!7054453 m!7771876))

(assert (=> b!7054453 m!7771798))

(assert (=> b!7054453 m!7771876))

(assert (=> b!7054453 m!7771798))

(declare-fun m!7771878 () Bool)

(assert (=> b!7054453 m!7771878))

(assert (=> b!7054298 d!2204543))

(assert (=> b!7054298 d!2204535))

(declare-fun d!2204545 () Bool)

(declare-fun c!1314161 () Bool)

(assert (=> d!2204545 (= c!1314161 (isEmpty!39722 (t!382004 s!7408)))))

(declare-fun e!4240987 () Bool)

(assert (=> d!2204545 (= (matchZipper!3106 lt!2531236 (t!382004 s!7408)) e!4240987)))

(declare-fun b!7054454 () Bool)

(assert (=> b!7054454 (= e!4240987 (nullableZipper!2653 lt!2531236))))

(declare-fun b!7054455 () Bool)

(assert (=> b!7054455 (= e!4240987 (matchZipper!3106 (derivationStepZipper!3016 lt!2531236 (head!14354 (t!382004 s!7408))) (tail!13694 (t!382004 s!7408))))))

(assert (= (and d!2204545 c!1314161) b!7054454))

(assert (= (and d!2204545 (not c!1314161)) b!7054455))

(assert (=> d!2204545 m!7771790))

(declare-fun m!7771880 () Bool)

(assert (=> b!7054454 m!7771880))

(assert (=> b!7054455 m!7771794))

(assert (=> b!7054455 m!7771794))

(declare-fun m!7771882 () Bool)

(assert (=> b!7054455 m!7771882))

(assert (=> b!7054455 m!7771798))

(assert (=> b!7054455 m!7771882))

(assert (=> b!7054455 m!7771798))

(declare-fun m!7771884 () Bool)

(assert (=> b!7054455 m!7771884))

(assert (=> b!7054298 d!2204545))

(declare-fun d!2204547 () Bool)

(declare-fun c!1314162 () Bool)

(assert (=> d!2204547 (= c!1314162 (isEmpty!39722 s!7408))))

(declare-fun e!4240988 () Bool)

(assert (=> d!2204547 (= (matchZipper!3106 lt!2531213 s!7408) e!4240988)))

(declare-fun b!7054456 () Bool)

(assert (=> b!7054456 (= e!4240988 (nullableZipper!2653 lt!2531213))))

(declare-fun b!7054457 () Bool)

(assert (=> b!7054457 (= e!4240988 (matchZipper!3106 (derivationStepZipper!3016 lt!2531213 (head!14354 s!7408)) (tail!13694 s!7408)))))

(assert (= (and d!2204547 c!1314162) b!7054456))

(assert (= (and d!2204547 (not c!1314162)) b!7054457))

(assert (=> d!2204547 m!7771820))

(declare-fun m!7771886 () Bool)

(assert (=> b!7054456 m!7771886))

(assert (=> b!7054457 m!7771824))

(assert (=> b!7054457 m!7771824))

(declare-fun m!7771888 () Bool)

(assert (=> b!7054457 m!7771888))

(assert (=> b!7054457 m!7771828))

(assert (=> b!7054457 m!7771888))

(assert (=> b!7054457 m!7771828))

(declare-fun m!7771890 () Bool)

(assert (=> b!7054457 m!7771890))

(assert (=> start!684014 d!2204547))

(declare-fun bs!1876855 () Bool)

(declare-fun d!2204549 () Bool)

(assert (= bs!1876855 (and d!2204549 b!7054284)))

(declare-fun lambda!419991 () Int)

(assert (=> bs!1876855 (= lambda!419991 lambda!419931)))

(assert (=> d!2204549 true))

(assert (=> d!2204549 (= (appendTo!687 z1!570 ct2!306) (map!15885 z1!570 lambda!419991))))

(declare-fun bs!1876856 () Bool)

(assert (= bs!1876856 d!2204549))

(declare-fun m!7771897 () Bool)

(assert (=> bs!1876856 m!7771897))

(assert (=> start!684014 d!2204549))

(declare-fun bs!1876858 () Bool)

(declare-fun d!2204553 () Bool)

(assert (= bs!1876858 (and d!2204553 b!7054284)))

(declare-fun lambda!419992 () Int)

(assert (=> bs!1876858 (= lambda!419992 lambda!419932)))

(declare-fun bs!1876859 () Bool)

(assert (= bs!1876859 (and d!2204553 d!2204501)))

(assert (=> bs!1876859 (= lambda!419992 lambda!419973)))

(declare-fun bs!1876860 () Bool)

(assert (= bs!1876860 (and d!2204553 d!2204533)))

(assert (=> bs!1876860 (= lambda!419992 lambda!419980)))

(assert (=> d!2204553 (= (inv!86775 ct2!306) (forall!16509 (exprs!7062 ct2!306) lambda!419992))))

(declare-fun bs!1876861 () Bool)

(assert (= bs!1876861 d!2204553))

(declare-fun m!7771900 () Bool)

(assert (=> bs!1876861 m!7771900))

(assert (=> start!684014 d!2204553))

(declare-fun b!7054460 () Bool)

(declare-fun res!2879969 () Bool)

(declare-fun e!4240989 () Bool)

(assert (=> b!7054460 (=> (not res!2879969) (not e!4240989))))

(declare-fun lt!2531363 () List!68224)

(assert (=> b!7054460 (= res!2879969 (= (size!41148 lt!2531363) (+ (size!41148 lt!2531227) (size!41148 (exprs!7062 ct2!306)))))))

(declare-fun b!7054461 () Bool)

(assert (=> b!7054461 (= e!4240989 (or (not (= (exprs!7062 ct2!306) Nil!68100)) (= lt!2531363 lt!2531227)))))

(declare-fun b!7054458 () Bool)

(declare-fun e!4240990 () List!68224)

(assert (=> b!7054458 (= e!4240990 (exprs!7062 ct2!306))))

(declare-fun b!7054459 () Bool)

(assert (=> b!7054459 (= e!4240990 (Cons!68100 (h!74548 lt!2531227) (++!15649 (t!382003 lt!2531227) (exprs!7062 ct2!306))))))

(declare-fun d!2204557 () Bool)

(assert (=> d!2204557 e!4240989))

(declare-fun res!2879970 () Bool)

(assert (=> d!2204557 (=> (not res!2879970) (not e!4240989))))

(assert (=> d!2204557 (= res!2879970 (= (content!13678 lt!2531363) (set.union (content!13678 lt!2531227) (content!13678 (exprs!7062 ct2!306)))))))

(assert (=> d!2204557 (= lt!2531363 e!4240990)))

(declare-fun c!1314164 () Bool)

(assert (=> d!2204557 (= c!1314164 (is-Nil!68100 lt!2531227))))

(assert (=> d!2204557 (= (++!15649 lt!2531227 (exprs!7062 ct2!306)) lt!2531363)))

(assert (= (and d!2204557 c!1314164) b!7054458))

(assert (= (and d!2204557 (not c!1314164)) b!7054459))

(assert (= (and d!2204557 res!2879970) b!7054460))

(assert (= (and b!7054460 res!2879969) b!7054461))

(declare-fun m!7771902 () Bool)

(assert (=> b!7054460 m!7771902))

(declare-fun m!7771904 () Bool)

(assert (=> b!7054460 m!7771904))

(assert (=> b!7054460 m!7771744))

(declare-fun m!7771906 () Bool)

(assert (=> b!7054459 m!7771906))

(declare-fun m!7771908 () Bool)

(assert (=> d!2204557 m!7771908))

(declare-fun m!7771910 () Bool)

(assert (=> d!2204557 m!7771910))

(assert (=> d!2204557 m!7771752))

(assert (=> b!7054292 d!2204557))

(declare-fun d!2204559 () Bool)

(declare-fun c!1314166 () Bool)

(declare-fun e!4240992 () Bool)

(assert (=> d!2204559 (= c!1314166 e!4240992)))

(declare-fun res!2879971 () Bool)

(assert (=> d!2204559 (=> (not res!2879971) (not e!4240992))))

(assert (=> d!2204559 (= res!2879971 (is-Cons!68100 (exprs!7062 lt!2531233)))))

(declare-fun e!4240991 () (Set Context!13124))

(assert (=> d!2204559 (= (derivationStepZipperUp!2150 lt!2531233 (h!74549 s!7408)) e!4240991)))

(declare-fun b!7054462 () Bool)

(assert (=> b!7054462 (= e!4240992 (nullable!7249 (h!74548 (exprs!7062 lt!2531233))))))

(declare-fun bm!640805 () Bool)

(declare-fun call!640810 () (Set Context!13124))

(assert (=> bm!640805 (= call!640810 (derivationStepZipperDown!2200 (h!74548 (exprs!7062 lt!2531233)) (Context!13125 (t!382003 (exprs!7062 lt!2531233))) (h!74549 s!7408)))))

(declare-fun b!7054463 () Bool)

(declare-fun e!4240993 () (Set Context!13124))

(assert (=> b!7054463 (= e!4240991 e!4240993)))

(declare-fun c!1314165 () Bool)

(assert (=> b!7054463 (= c!1314165 (is-Cons!68100 (exprs!7062 lt!2531233)))))

(declare-fun b!7054464 () Bool)

(assert (=> b!7054464 (= e!4240993 (as set.empty (Set Context!13124)))))

(declare-fun b!7054465 () Bool)

(assert (=> b!7054465 (= e!4240991 (set.union call!640810 (derivationStepZipperUp!2150 (Context!13125 (t!382003 (exprs!7062 lt!2531233))) (h!74549 s!7408))))))

(declare-fun b!7054466 () Bool)

(assert (=> b!7054466 (= e!4240993 call!640810)))

(assert (= (and d!2204559 res!2879971) b!7054462))

(assert (= (and d!2204559 c!1314166) b!7054465))

(assert (= (and d!2204559 (not c!1314166)) b!7054463))

(assert (= (and b!7054463 c!1314165) b!7054466))

(assert (= (and b!7054463 (not c!1314165)) b!7054464))

(assert (= (or b!7054465 b!7054466) bm!640805))

(declare-fun m!7771912 () Bool)

(assert (=> b!7054462 m!7771912))

(declare-fun m!7771914 () Bool)

(assert (=> bm!640805 m!7771914))

(declare-fun m!7771916 () Bool)

(assert (=> b!7054465 m!7771916))

(assert (=> b!7054292 d!2204559))

(declare-fun c!1314185 () Bool)

(declare-fun call!640826 () List!68224)

(declare-fun c!1314183 () Bool)

(declare-fun c!1314184 () Bool)

(declare-fun bm!640819 () Bool)

(declare-fun call!640829 () (Set Context!13124))

(assert (=> bm!640819 (= call!640829 (derivationStepZipperDown!2200 (ite c!1314184 (regOne!35645 (h!74548 (exprs!7062 lt!2531215))) (ite c!1314183 (regTwo!35644 (h!74548 (exprs!7062 lt!2531215))) (ite c!1314185 (regOne!35644 (h!74548 (exprs!7062 lt!2531215))) (reg!17895 (h!74548 (exprs!7062 lt!2531215)))))) (ite (or c!1314184 c!1314183) lt!2531233 (Context!13125 call!640826)) (h!74549 s!7408)))))

(declare-fun b!7054506 () Bool)

(declare-fun e!4241015 () (Set Context!13124))

(declare-fun call!640827 () (Set Context!13124))

(assert (=> b!7054506 (= e!4241015 (set.union call!640829 call!640827))))

(declare-fun b!7054507 () Bool)

(declare-fun e!4241019 () (Set Context!13124))

(assert (=> b!7054507 (= e!4241019 e!4241015)))

(assert (=> b!7054507 (= c!1314184 (is-Union!17566 (h!74548 (exprs!7062 lt!2531215))))))

(declare-fun b!7054508 () Bool)

(declare-fun c!1314182 () Bool)

(assert (=> b!7054508 (= c!1314182 (is-Star!17566 (h!74548 (exprs!7062 lt!2531215))))))

(declare-fun e!4241016 () (Set Context!13124))

(declare-fun e!4241017 () (Set Context!13124))

(assert (=> b!7054508 (= e!4241016 e!4241017)))

(declare-fun b!7054509 () Bool)

(declare-fun call!640824 () (Set Context!13124))

(assert (=> b!7054509 (= e!4241017 call!640824)))

(declare-fun b!7054510 () Bool)

(declare-fun e!4241018 () (Set Context!13124))

(assert (=> b!7054510 (= e!4241018 e!4241016)))

(assert (=> b!7054510 (= c!1314185 (is-Concat!26411 (h!74548 (exprs!7062 lt!2531215))))))

(declare-fun b!7054511 () Bool)

(assert (=> b!7054511 (= e!4241016 call!640824)))

(declare-fun b!7054512 () Bool)

(declare-fun call!640828 () (Set Context!13124))

(assert (=> b!7054512 (= e!4241018 (set.union call!640827 call!640828))))

(declare-fun d!2204561 () Bool)

(declare-fun c!1314186 () Bool)

(assert (=> d!2204561 (= c!1314186 (and (is-ElementMatch!17566 (h!74548 (exprs!7062 lt!2531215))) (= (c!1314118 (h!74548 (exprs!7062 lt!2531215))) (h!74549 s!7408))))))

(assert (=> d!2204561 (= (derivationStepZipperDown!2200 (h!74548 (exprs!7062 lt!2531215)) lt!2531233 (h!74549 s!7408)) e!4241019)))

(declare-fun bm!640820 () Bool)

(assert (=> bm!640820 (= call!640828 call!640829)))

(declare-fun bm!640821 () Bool)

(declare-fun call!640825 () List!68224)

(assert (=> bm!640821 (= call!640826 call!640825)))

(declare-fun b!7054513 () Bool)

(declare-fun e!4241020 () Bool)

(assert (=> b!7054513 (= e!4241020 (nullable!7249 (regOne!35644 (h!74548 (exprs!7062 lt!2531215)))))))

(declare-fun b!7054514 () Bool)

(assert (=> b!7054514 (= e!4241019 (set.insert lt!2531233 (as set.empty (Set Context!13124))))))

(declare-fun b!7054515 () Bool)

(assert (=> b!7054515 (= c!1314183 e!4241020)))

(declare-fun res!2879981 () Bool)

(assert (=> b!7054515 (=> (not res!2879981) (not e!4241020))))

(assert (=> b!7054515 (= res!2879981 (is-Concat!26411 (h!74548 (exprs!7062 lt!2531215))))))

(assert (=> b!7054515 (= e!4241015 e!4241018)))

(declare-fun b!7054516 () Bool)

(assert (=> b!7054516 (= e!4241017 (as set.empty (Set Context!13124)))))

(declare-fun bm!640822 () Bool)

(assert (=> bm!640822 (= call!640827 (derivationStepZipperDown!2200 (ite c!1314184 (regTwo!35645 (h!74548 (exprs!7062 lt!2531215))) (regOne!35644 (h!74548 (exprs!7062 lt!2531215)))) (ite c!1314184 lt!2531233 (Context!13125 call!640825)) (h!74549 s!7408)))))

(declare-fun bm!640823 () Bool)

(assert (=> bm!640823 (= call!640824 call!640828)))

(declare-fun bm!640824 () Bool)

(declare-fun $colon$colon!2618 (List!68224 Regex!17566) List!68224)

(assert (=> bm!640824 (= call!640825 ($colon$colon!2618 (exprs!7062 lt!2531233) (ite (or c!1314183 c!1314185) (regTwo!35644 (h!74548 (exprs!7062 lt!2531215))) (h!74548 (exprs!7062 lt!2531215)))))))

(assert (= (and d!2204561 c!1314186) b!7054514))

(assert (= (and d!2204561 (not c!1314186)) b!7054507))

(assert (= (and b!7054507 c!1314184) b!7054506))

(assert (= (and b!7054507 (not c!1314184)) b!7054515))

(assert (= (and b!7054515 res!2879981) b!7054513))

(assert (= (and b!7054515 c!1314183) b!7054512))

(assert (= (and b!7054515 (not c!1314183)) b!7054510))

(assert (= (and b!7054510 c!1314185) b!7054511))

(assert (= (and b!7054510 (not c!1314185)) b!7054508))

(assert (= (and b!7054508 c!1314182) b!7054509))

(assert (= (and b!7054508 (not c!1314182)) b!7054516))

(assert (= (or b!7054511 b!7054509) bm!640821))

(assert (= (or b!7054511 b!7054509) bm!640823))

(assert (= (or b!7054512 bm!640823) bm!640820))

(assert (= (or b!7054512 bm!640821) bm!640824))

(assert (= (or b!7054506 bm!640820) bm!640819))

(assert (= (or b!7054506 b!7054512) bm!640822))

(declare-fun m!7771938 () Bool)

(assert (=> b!7054514 m!7771938))

(declare-fun m!7771940 () Bool)

(assert (=> bm!640822 m!7771940))

(declare-fun m!7771942 () Bool)

(assert (=> bm!640819 m!7771942))

(declare-fun m!7771944 () Bool)

(assert (=> b!7054513 m!7771944))

(declare-fun m!7771946 () Bool)

(assert (=> bm!640824 m!7771946))

(assert (=> b!7054292 d!2204561))

(assert (=> b!7054292 d!2204535))

(assert (=> b!7054282 d!2204503))

(assert (=> b!7054282 d!2204535))

(declare-fun b!7054521 () Bool)

(declare-fun e!4241023 () Bool)

(declare-fun tp!1940025 () Bool)

(declare-fun tp!1940026 () Bool)

(assert (=> b!7054521 (= e!4241023 (and tp!1940025 tp!1940026))))

(assert (=> b!7054293 (= tp!1940008 e!4241023)))

(assert (= (and b!7054293 (is-Cons!68100 (exprs!7062 setElem!49816))) b!7054521))

(declare-fun b!7054522 () Bool)

(declare-fun e!4241024 () Bool)

(declare-fun tp!1940027 () Bool)

(declare-fun tp!1940028 () Bool)

(assert (=> b!7054522 (= e!4241024 (and tp!1940027 tp!1940028))))

(assert (=> b!7054290 (= tp!1940006 e!4241024)))

(assert (= (and b!7054290 (is-Cons!68100 (exprs!7062 ct2!306))) b!7054522))

(declare-fun b!7054527 () Bool)

(declare-fun e!4241027 () Bool)

(declare-fun tp!1940031 () Bool)

(assert (=> b!7054527 (= e!4241027 (and tp_is_empty!44357 tp!1940031))))

(assert (=> b!7054291 (= tp!1940007 e!4241027)))

(assert (= (and b!7054291 (is-Cons!68101 (t!382004 s!7408))) b!7054527))

(declare-fun condSetEmpty!49822 () Bool)

(assert (=> setNonEmpty!49816 (= condSetEmpty!49822 (= setRest!49816 (as set.empty (Set Context!13124))))))

(declare-fun setRes!49822 () Bool)

(assert (=> setNonEmpty!49816 (= tp!1940005 setRes!49822)))

(declare-fun setIsEmpty!49822 () Bool)

(assert (=> setIsEmpty!49822 setRes!49822))

(declare-fun e!4241030 () Bool)

(declare-fun setNonEmpty!49822 () Bool)

(declare-fun tp!1940037 () Bool)

(declare-fun setElem!49822 () Context!13124)

(assert (=> setNonEmpty!49822 (= setRes!49822 (and tp!1940037 (inv!86775 setElem!49822) e!4241030))))

(declare-fun setRest!49822 () (Set Context!13124))

(assert (=> setNonEmpty!49822 (= setRest!49816 (set.union (set.insert setElem!49822 (as set.empty (Set Context!13124))) setRest!49822))))

(declare-fun b!7054532 () Bool)

(declare-fun tp!1940036 () Bool)

(assert (=> b!7054532 (= e!4241030 tp!1940036)))

(assert (= (and setNonEmpty!49816 condSetEmpty!49822) setIsEmpty!49822))

(assert (= (and setNonEmpty!49816 (not condSetEmpty!49822)) setNonEmpty!49822))

(assert (= setNonEmpty!49822 b!7054532))

(declare-fun m!7771948 () Bool)

(assert (=> setNonEmpty!49822 m!7771948))

(declare-fun b_lambda!268619 () Bool)

(assert (= b_lambda!268611 (or b!7054283 b_lambda!268619)))

(declare-fun bs!1876862 () Bool)

(declare-fun d!2204567 () Bool)

(assert (= bs!1876862 (and d!2204567 b!7054283)))

(assert (=> bs!1876862 (= (dynLambda!27623 lambda!419933 lt!2531224) (derivationStepZipperUp!2150 lt!2531224 (h!74549 s!7408)))))

(assert (=> bs!1876862 m!7771574))

(assert (=> d!2204485 d!2204567))

(declare-fun b_lambda!268621 () Bool)

(assert (= b_lambda!268613 (or b!7054284 b_lambda!268621)))

(declare-fun bs!1876863 () Bool)

(declare-fun d!2204569 () Bool)

(assert (= bs!1876863 (and d!2204569 b!7054284)))

(declare-fun lt!2531367 () Unit!161805)

(assert (=> bs!1876863 (= lt!2531367 (lemmaConcatPreservesForall!877 (exprs!7062 lt!2531340) (exprs!7062 ct2!306) lambda!419932))))

(assert (=> bs!1876863 (= (dynLambda!27624 lambda!419931 lt!2531340) (Context!13125 (++!15649 (exprs!7062 lt!2531340) (exprs!7062 ct2!306))))))

(declare-fun m!7771950 () Bool)

(assert (=> bs!1876863 m!7771950))

(declare-fun m!7771952 () Bool)

(assert (=> bs!1876863 m!7771952))

(assert (=> d!2204495 d!2204569))

(declare-fun b_lambda!268623 () Bool)

(assert (= b_lambda!268615 (or b!7054288 b_lambda!268623)))

(declare-fun bs!1876864 () Bool)

(declare-fun d!2204571 () Bool)

(assert (= bs!1876864 (and d!2204571 b!7054288)))

(assert (=> bs!1876864 (= (dynLambda!27625 lambda!419930 lt!2531350) (matchZipper!3106 (set.insert lt!2531350 (as set.empty (Set Context!13124))) s!7408))))

(declare-fun m!7771954 () Bool)

(assert (=> bs!1876864 m!7771954))

(assert (=> bs!1876864 m!7771954))

(declare-fun m!7771956 () Bool)

(assert (=> bs!1876864 m!7771956))

(assert (=> d!2204525 d!2204571))

(push 1)

(assert (not d!2204549))

(assert (not b!7054457))

(assert (not b!7054449))

(assert (not d!2204533))

(assert tp_is_empty!44357)

(assert (not b!7054513))

(assert (not bm!640805))

(assert (not b!7054450))

(assert (not b!7054451))

(assert (not d!2204495))

(assert (not bs!1876862))

(assert (not bs!1876864))

(assert (not bm!640822))

(assert (not d!2204523))

(assert (not b!7054521))

(assert (not d!2204543))

(assert (not b!7054455))

(assert (not b!7054459))

(assert (not d!2204535))

(assert (not d!2204513))

(assert (not b!7054454))

(assert (not b!7054399))

(assert (not b!7054452))

(assert (not d!2204497))

(assert (not d!2204501))

(assert (not b_lambda!268619))

(assert (not b!7054398))

(assert (not d!2204553))

(assert (not b!7054532))

(assert (not setNonEmpty!49822))

(assert (not d!2204557))

(assert (not d!2204485))

(assert (not b!7054418))

(assert (not b!7054527))

(assert (not b!7054421))

(assert (not b!7054460))

(assert (not b!7054462))

(assert (not d!2204537))

(assert (not d!2204547))

(assert (not d!2204527))

(assert (not b!7054456))

(assert (not bm!640801))

(assert (not d!2204529))

(assert (not d!2204479))

(assert (not b!7054522))

(assert (not d!2204503))

(assert (not b!7054453))

(assert (not b!7054379))

(assert (not d!2204525))

(assert (not b!7054437))

(assert (not bm!640819))

(assert (not d!2204491))

(assert (not d!2204545))

(assert (not d!2204483))

(assert (not b!7054376))

(assert (not b!7054465))

(assert (not d!2204481))

(assert (not bm!640824))

(assert (not b_lambda!268623))

(assert (not b!7054419))

(assert (not b!7054420))

(assert (not b_lambda!268621))

(assert (not d!2204541))

(assert (not bs!1876863))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


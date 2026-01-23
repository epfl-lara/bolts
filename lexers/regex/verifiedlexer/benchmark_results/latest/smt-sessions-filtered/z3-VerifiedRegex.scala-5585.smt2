; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!279920 () Bool)

(assert start!279920)

(declare-fun b!2867915 () Bool)

(declare-fun res!1190404 () Bool)

(declare-fun e!1815440 () Bool)

(assert (=> b!2867915 (=> (not res!1190404) (not e!1815440))))

(declare-datatypes ((C!17632 0))(
  ( (C!17633 (val!10850 Int)) )
))
(declare-datatypes ((Regex!8725 0))(
  ( (ElementMatch!8725 (c!463358 C!17632)) (Concat!14046 (regOne!17962 Regex!8725) (regTwo!17962 Regex!8725)) (EmptyExpr!8725) (Star!8725 (reg!9054 Regex!8725)) (EmptyLang!8725) (Union!8725 (regOne!17963 Regex!8725) (regTwo!17963 Regex!8725)) )
))
(declare-datatypes ((List!34477 0))(
  ( (Nil!34353) (Cons!34353 (h!39773 Regex!8725) (t!233520 List!34477)) )
))
(declare-datatypes ((Context!5370 0))(
  ( (Context!5371 (exprs!3185 List!34477)) )
))
(declare-fun c!7184 () Context!5370)

(get-info :version)

(declare-datatypes ((List!34478 0))(
  ( (Nil!34354) (Cons!34354 (h!39774 C!17632) (t!233521 List!34478)) )
))
(declare-datatypes ((Option!6400 0))(
  ( (None!6399) (Some!6399 (v!34521 List!34478)) )
))
(declare-fun getLanguageWitness!401 (Context!5370) Option!6400)

(assert (=> b!2867915 (= res!1190404 ((_ is Some!6399) (getLanguageWitness!401 (Context!5371 (t!233520 (exprs!3185 c!7184))))))))

(declare-fun b!2867916 () Bool)

(declare-fun res!1190405 () Bool)

(assert (=> b!2867916 (=> (not res!1190405) (not e!1815440))))

(declare-fun getLanguageWitness!402 (Regex!8725) Option!6400)

(assert (=> b!2867916 (= res!1190405 ((_ is Some!6399) (getLanguageWitness!402 (h!39773 (exprs!3185 c!7184)))))))

(declare-fun res!1190407 () Bool)

(assert (=> start!279920 (=> (not res!1190407) (not e!1815440))))

(declare-fun lostCause!817 (Context!5370) Bool)

(assert (=> start!279920 (= res!1190407 (not (lostCause!817 c!7184)))))

(assert (=> start!279920 e!1815440))

(declare-fun e!1815441 () Bool)

(declare-fun inv!46399 (Context!5370) Bool)

(assert (=> start!279920 (and (inv!46399 c!7184) e!1815441)))

(declare-fun b!2867917 () Bool)

(declare-fun tp!923128 () Bool)

(assert (=> b!2867917 (= e!1815441 tp!923128)))

(declare-fun b!2867918 () Bool)

(declare-fun validRegex!3503 (Regex!8725) Bool)

(assert (=> b!2867918 (= e!1815440 (not (validRegex!3503 (h!39773 (exprs!3185 c!7184)))))))

(declare-fun b!2867919 () Bool)

(declare-fun res!1190406 () Bool)

(assert (=> b!2867919 (=> (not res!1190406) (not e!1815440))))

(assert (=> b!2867919 (= res!1190406 ((_ is Cons!34353) (exprs!3185 c!7184)))))

(assert (= (and start!279920 res!1190407) b!2867919))

(assert (= (and b!2867919 res!1190406) b!2867916))

(assert (= (and b!2867916 res!1190405) b!2867915))

(assert (= (and b!2867915 res!1190404) b!2867918))

(assert (= start!279920 b!2867917))

(declare-fun m!3287769 () Bool)

(assert (=> b!2867915 m!3287769))

(declare-fun m!3287771 () Bool)

(assert (=> b!2867916 m!3287771))

(declare-fun m!3287773 () Bool)

(assert (=> start!279920 m!3287773))

(declare-fun m!3287775 () Bool)

(assert (=> start!279920 m!3287775))

(declare-fun m!3287777 () Bool)

(assert (=> b!2867918 m!3287777))

(check-sat (not b!2867916) (not b!2867915) (not b!2867918) (not start!279920) (not b!2867917))
(check-sat)
(get-model)

(declare-fun b!2867984 () Bool)

(declare-fun c!463393 () Bool)

(assert (=> b!2867984 (= c!463393 ((_ is Union!8725) (h!39773 (exprs!3185 c!7184))))))

(declare-fun e!1815477 () Option!6400)

(declare-fun e!1815479 () Option!6400)

(assert (=> b!2867984 (= e!1815477 e!1815479)))

(declare-fun b!2867985 () Bool)

(assert (=> b!2867985 (= e!1815477 (Some!6399 Nil!34354))))

(declare-fun b!2867986 () Bool)

(declare-fun e!1815476 () Option!6400)

(declare-fun e!1815474 () Option!6400)

(assert (=> b!2867986 (= e!1815476 e!1815474)))

(declare-fun c!463394 () Bool)

(assert (=> b!2867986 (= c!463394 ((_ is EmptyLang!8725) (h!39773 (exprs!3185 c!7184))))))

(declare-fun b!2867987 () Bool)

(declare-fun e!1815481 () Option!6400)

(assert (=> b!2867987 (= e!1815479 e!1815481)))

(declare-fun lt!1017404 () Option!6400)

(declare-fun call!185028 () Option!6400)

(assert (=> b!2867987 (= lt!1017404 call!185028)))

(declare-fun c!463396 () Bool)

(assert (=> b!2867987 (= c!463396 ((_ is Some!6399) lt!1017404))))

(declare-fun d!829024 () Bool)

(declare-fun c!463398 () Bool)

(assert (=> d!829024 (= c!463398 ((_ is EmptyExpr!8725) (h!39773 (exprs!3185 c!7184))))))

(assert (=> d!829024 (= (getLanguageWitness!402 (h!39773 (exprs!3185 c!7184))) e!1815476)))

(declare-fun b!2867988 () Bool)

(declare-fun e!1815478 () Option!6400)

(declare-fun lt!1017402 () Option!6400)

(declare-fun lt!1017403 () Option!6400)

(declare-fun ++!8162 (List!34478 List!34478) List!34478)

(assert (=> b!2867988 (= e!1815478 (Some!6399 (++!8162 (v!34521 lt!1017402) (v!34521 lt!1017403))))))

(declare-fun b!2867989 () Bool)

(declare-fun c!463391 () Bool)

(assert (=> b!2867989 (= c!463391 ((_ is Some!6399) lt!1017403))))

(declare-fun call!185027 () Option!6400)

(assert (=> b!2867989 (= lt!1017403 call!185027)))

(declare-fun e!1815480 () Option!6400)

(assert (=> b!2867989 (= e!1815480 e!1815478)))

(declare-fun b!2867990 () Bool)

(assert (=> b!2867990 (= e!1815479 e!1815480)))

(assert (=> b!2867990 (= lt!1017402 call!185028)))

(declare-fun c!463392 () Bool)

(assert (=> b!2867990 (= c!463392 ((_ is Some!6399) lt!1017402))))

(declare-fun b!2867991 () Bool)

(declare-fun c!463395 () Bool)

(assert (=> b!2867991 (= c!463395 ((_ is ElementMatch!8725) (h!39773 (exprs!3185 c!7184))))))

(declare-fun e!1815475 () Option!6400)

(assert (=> b!2867991 (= e!1815474 e!1815475)))

(declare-fun bm!185022 () Bool)

(assert (=> bm!185022 (= call!185027 (getLanguageWitness!402 (ite c!463393 (regTwo!17963 (h!39773 (exprs!3185 c!7184))) (regTwo!17962 (h!39773 (exprs!3185 c!7184))))))))

(declare-fun b!2867992 () Bool)

(assert (=> b!2867992 (= e!1815475 e!1815477)))

(declare-fun c!463397 () Bool)

(assert (=> b!2867992 (= c!463397 ((_ is Star!8725) (h!39773 (exprs!3185 c!7184))))))

(declare-fun b!2867993 () Bool)

(assert (=> b!2867993 (= e!1815474 None!6399)))

(declare-fun b!2867994 () Bool)

(assert (=> b!2867994 (= e!1815478 None!6399)))

(declare-fun b!2867995 () Bool)

(assert (=> b!2867995 (= e!1815481 call!185027)))

(declare-fun b!2867996 () Bool)

(assert (=> b!2867996 (= e!1815475 (Some!6399 (Cons!34354 (c!463358 (h!39773 (exprs!3185 c!7184))) Nil!34354)))))

(declare-fun b!2867997 () Bool)

(assert (=> b!2867997 (= e!1815481 lt!1017404)))

(declare-fun b!2867998 () Bool)

(assert (=> b!2867998 (= e!1815476 (Some!6399 Nil!34354))))

(declare-fun bm!185023 () Bool)

(assert (=> bm!185023 (= call!185028 (getLanguageWitness!402 (ite c!463393 (regOne!17963 (h!39773 (exprs!3185 c!7184))) (regOne!17962 (h!39773 (exprs!3185 c!7184))))))))

(declare-fun b!2867999 () Bool)

(assert (=> b!2867999 (= e!1815480 None!6399)))

(assert (= (and d!829024 c!463398) b!2867998))

(assert (= (and d!829024 (not c!463398)) b!2867986))

(assert (= (and b!2867986 c!463394) b!2867993))

(assert (= (and b!2867986 (not c!463394)) b!2867991))

(assert (= (and b!2867991 c!463395) b!2867996))

(assert (= (and b!2867991 (not c!463395)) b!2867992))

(assert (= (and b!2867992 c!463397) b!2867985))

(assert (= (and b!2867992 (not c!463397)) b!2867984))

(assert (= (and b!2867984 c!463393) b!2867987))

(assert (= (and b!2867984 (not c!463393)) b!2867990))

(assert (= (and b!2867987 c!463396) b!2867997))

(assert (= (and b!2867987 (not c!463396)) b!2867995))

(assert (= (and b!2867990 c!463392) b!2867989))

(assert (= (and b!2867990 (not c!463392)) b!2867999))

(assert (= (and b!2867989 c!463391) b!2867988))

(assert (= (and b!2867989 (not c!463391)) b!2867994))

(assert (= (or b!2867995 b!2867989) bm!185022))

(assert (= (or b!2867987 b!2867990) bm!185023))

(declare-fun m!3287779 () Bool)

(assert (=> b!2867988 m!3287779))

(declare-fun m!3287781 () Bool)

(assert (=> bm!185022 m!3287781))

(declare-fun m!3287783 () Bool)

(assert (=> bm!185023 m!3287783))

(assert (=> b!2867916 d!829024))

(declare-fun b!2868034 () Bool)

(declare-fun res!1190421 () Bool)

(declare-fun e!1815505 () Bool)

(assert (=> b!2868034 (=> (not res!1190421) (not e!1815505))))

(declare-fun call!185039 () Bool)

(assert (=> b!2868034 (= res!1190421 call!185039)))

(declare-fun e!1815509 () Bool)

(assert (=> b!2868034 (= e!1815509 e!1815505)))

(declare-fun b!2868035 () Bool)

(declare-fun e!1815504 () Bool)

(declare-fun e!1815510 () Bool)

(assert (=> b!2868035 (= e!1815504 e!1815510)))

(declare-fun res!1190419 () Bool)

(assert (=> b!2868035 (=> (not res!1190419) (not e!1815510))))

(declare-fun call!185038 () Bool)

(assert (=> b!2868035 (= res!1190419 call!185038)))

(declare-fun bm!185032 () Bool)

(declare-fun call!185037 () Bool)

(assert (=> bm!185032 (= call!185039 call!185037)))

(declare-fun b!2868036 () Bool)

(declare-fun e!1815508 () Bool)

(assert (=> b!2868036 (= e!1815508 e!1815509)))

(declare-fun c!463411 () Bool)

(assert (=> b!2868036 (= c!463411 ((_ is Union!8725) (h!39773 (exprs!3185 c!7184))))))

(declare-fun d!829026 () Bool)

(declare-fun res!1190420 () Bool)

(declare-fun e!1815506 () Bool)

(assert (=> d!829026 (=> res!1190420 e!1815506)))

(assert (=> d!829026 (= res!1190420 ((_ is ElementMatch!8725) (h!39773 (exprs!3185 c!7184))))))

(assert (=> d!829026 (= (validRegex!3503 (h!39773 (exprs!3185 c!7184))) e!1815506)))

(declare-fun b!2868037 () Bool)

(declare-fun e!1815507 () Bool)

(assert (=> b!2868037 (= e!1815507 call!185037)))

(declare-fun b!2868038 () Bool)

(declare-fun res!1190422 () Bool)

(assert (=> b!2868038 (=> res!1190422 e!1815504)))

(assert (=> b!2868038 (= res!1190422 (not ((_ is Concat!14046) (h!39773 (exprs!3185 c!7184)))))))

(assert (=> b!2868038 (= e!1815509 e!1815504)))

(declare-fun b!2868039 () Bool)

(assert (=> b!2868039 (= e!1815508 e!1815507)))

(declare-fun res!1190418 () Bool)

(declare-fun nullable!2674 (Regex!8725) Bool)

(assert (=> b!2868039 (= res!1190418 (not (nullable!2674 (reg!9054 (h!39773 (exprs!3185 c!7184))))))))

(assert (=> b!2868039 (=> (not res!1190418) (not e!1815507))))

(declare-fun b!2868040 () Bool)

(assert (=> b!2868040 (= e!1815505 call!185038)))

(declare-fun c!463412 () Bool)

(declare-fun bm!185033 () Bool)

(assert (=> bm!185033 (= call!185037 (validRegex!3503 (ite c!463412 (reg!9054 (h!39773 (exprs!3185 c!7184))) (ite c!463411 (regOne!17963 (h!39773 (exprs!3185 c!7184))) (regTwo!17962 (h!39773 (exprs!3185 c!7184)))))))))

(declare-fun b!2868041 () Bool)

(assert (=> b!2868041 (= e!1815506 e!1815508)))

(assert (=> b!2868041 (= c!463412 ((_ is Star!8725) (h!39773 (exprs!3185 c!7184))))))

(declare-fun b!2868042 () Bool)

(assert (=> b!2868042 (= e!1815510 call!185039)))

(declare-fun bm!185034 () Bool)

(assert (=> bm!185034 (= call!185038 (validRegex!3503 (ite c!463411 (regTwo!17963 (h!39773 (exprs!3185 c!7184))) (regOne!17962 (h!39773 (exprs!3185 c!7184))))))))

(assert (= (and d!829026 (not res!1190420)) b!2868041))

(assert (= (and b!2868041 c!463412) b!2868039))

(assert (= (and b!2868041 (not c!463412)) b!2868036))

(assert (= (and b!2868039 res!1190418) b!2868037))

(assert (= (and b!2868036 c!463411) b!2868034))

(assert (= (and b!2868036 (not c!463411)) b!2868038))

(assert (= (and b!2868034 res!1190421) b!2868040))

(assert (= (and b!2868038 (not res!1190422)) b!2868035))

(assert (= (and b!2868035 res!1190419) b!2868042))

(assert (= (or b!2868040 b!2868035) bm!185034))

(assert (= (or b!2868034 b!2868042) bm!185032))

(assert (= (or b!2868037 bm!185032) bm!185033))

(declare-fun m!3287791 () Bool)

(assert (=> b!2868039 m!3287791))

(declare-fun m!3287793 () Bool)

(assert (=> bm!185033 m!3287793))

(declare-fun m!3287795 () Bool)

(assert (=> bm!185034 m!3287795))

(assert (=> b!2867918 d!829026))

(declare-fun d!829030 () Bool)

(declare-fun lambda!106925 () Int)

(declare-fun exists!1144 (List!34477 Int) Bool)

(assert (=> d!829030 (= (lostCause!817 c!7184) (exists!1144 (exprs!3185 c!7184) lambda!106925))))

(declare-fun bs!521730 () Bool)

(assert (= bs!521730 d!829030))

(declare-fun m!3287809 () Bool)

(assert (=> bs!521730 m!3287809))

(assert (=> start!279920 d!829030))

(declare-fun bs!521734 () Bool)

(declare-fun d!829036 () Bool)

(assert (= bs!521734 (and d!829036 d!829030)))

(declare-fun lambda!106931 () Int)

(assert (=> bs!521734 (not (= lambda!106931 lambda!106925))))

(declare-fun forall!7069 (List!34477 Int) Bool)

(assert (=> d!829036 (= (inv!46399 c!7184) (forall!7069 (exprs!3185 c!7184) lambda!106931))))

(declare-fun bs!521735 () Bool)

(assert (= bs!521735 d!829036))

(declare-fun m!3287813 () Bool)

(assert (=> bs!521735 m!3287813))

(assert (=> start!279920 d!829036))

(declare-fun bs!521736 () Bool)

(declare-fun d!829040 () Bool)

(assert (= bs!521736 (and d!829040 d!829030)))

(declare-fun lambda!106934 () Int)

(assert (=> bs!521736 (= lambda!106934 lambda!106925)))

(declare-fun bs!521737 () Bool)

(assert (= bs!521737 (and d!829040 d!829036)))

(assert (=> bs!521737 (not (= lambda!106934 lambda!106931))))

(declare-fun b!2868105 () Bool)

(declare-fun e!1815552 () Option!6400)

(assert (=> b!2868105 (= e!1815552 None!6399)))

(declare-fun lt!1017423 () Option!6400)

(declare-fun isEmpty!18695 (Option!6400) Bool)

(assert (=> d!829040 (= (isEmpty!18695 lt!1017423) (exists!1144 (exprs!3185 (Context!5371 (t!233520 (exprs!3185 c!7184)))) lambda!106934))))

(declare-fun e!1815551 () Option!6400)

(assert (=> d!829040 (= lt!1017423 e!1815551)))

(declare-fun c!463436 () Bool)

(assert (=> d!829040 (= c!463436 ((_ is Cons!34353) (exprs!3185 (Context!5371 (t!233520 (exprs!3185 c!7184))))))))

(assert (=> d!829040 (= (getLanguageWitness!401 (Context!5371 (t!233520 (exprs!3185 c!7184)))) lt!1017423)))

(declare-fun b!2868106 () Bool)

(declare-fun e!1815550 () Option!6400)

(assert (=> b!2868106 (= e!1815550 None!6399)))

(declare-fun b!2868107 () Bool)

(assert (=> b!2868107 (= e!1815551 e!1815550)))

(declare-fun lt!1017424 () Option!6400)

(assert (=> b!2868107 (= lt!1017424 (getLanguageWitness!402 (h!39773 (exprs!3185 (Context!5371 (t!233520 (exprs!3185 c!7184)))))))))

(declare-fun c!463437 () Bool)

(assert (=> b!2868107 (= c!463437 ((_ is Some!6399) lt!1017424))))

(declare-fun b!2868108 () Bool)

(declare-fun c!463438 () Bool)

(declare-fun lt!1017425 () Option!6400)

(assert (=> b!2868108 (= c!463438 ((_ is Some!6399) lt!1017425))))

(assert (=> b!2868108 (= lt!1017425 (getLanguageWitness!401 (Context!5371 (t!233520 (exprs!3185 (Context!5371 (t!233520 (exprs!3185 c!7184))))))))))

(assert (=> b!2868108 (= e!1815550 e!1815552)))

(declare-fun b!2868109 () Bool)

(assert (=> b!2868109 (= e!1815551 (Some!6399 Nil!34354))))

(declare-fun b!2868110 () Bool)

(assert (=> b!2868110 (= e!1815552 (Some!6399 (++!8162 (v!34521 lt!1017424) (v!34521 lt!1017425))))))

(assert (= (and d!829040 c!463436) b!2868107))

(assert (= (and d!829040 (not c!463436)) b!2868109))

(assert (= (and b!2868107 c!463437) b!2868108))

(assert (= (and b!2868107 (not c!463437)) b!2868106))

(assert (= (and b!2868108 c!463438) b!2868110))

(assert (= (and b!2868108 (not c!463438)) b!2868105))

(declare-fun m!3287821 () Bool)

(assert (=> d!829040 m!3287821))

(declare-fun m!3287823 () Bool)

(assert (=> d!829040 m!3287823))

(declare-fun m!3287825 () Bool)

(assert (=> b!2868107 m!3287825))

(declare-fun m!3287827 () Bool)

(assert (=> b!2868108 m!3287827))

(declare-fun m!3287829 () Bool)

(assert (=> b!2868110 m!3287829))

(assert (=> b!2867915 d!829040))

(declare-fun b!2868115 () Bool)

(declare-fun e!1815555 () Bool)

(declare-fun tp!923139 () Bool)

(declare-fun tp!923140 () Bool)

(assert (=> b!2868115 (= e!1815555 (and tp!923139 tp!923140))))

(assert (=> b!2867917 (= tp!923128 e!1815555)))

(assert (= (and b!2867917 ((_ is Cons!34353) (exprs!3185 c!7184))) b!2868115))

(check-sat (not b!2868107) (not d!829040) (not b!2868039) (not b!2868110) (not b!2867988) (not b!2868115) (not d!829036) (not d!829030) (not bm!185023) (not bm!185034) (not b!2868108) (not bm!185022) (not bm!185033))
(check-sat)
(get-model)

(declare-fun b!2868124 () Bool)

(declare-fun e!1815560 () List!34478)

(assert (=> b!2868124 (= e!1815560 (v!34521 lt!1017425))))

(declare-fun b!2868125 () Bool)

(assert (=> b!2868125 (= e!1815560 (Cons!34354 (h!39774 (v!34521 lt!1017424)) (++!8162 (t!233521 (v!34521 lt!1017424)) (v!34521 lt!1017425))))))

(declare-fun e!1815561 () Bool)

(declare-fun lt!1017428 () List!34478)

(declare-fun b!2868127 () Bool)

(assert (=> b!2868127 (= e!1815561 (or (not (= (v!34521 lt!1017425) Nil!34354)) (= lt!1017428 (v!34521 lt!1017424))))))

(declare-fun d!829042 () Bool)

(assert (=> d!829042 e!1815561))

(declare-fun res!1190443 () Bool)

(assert (=> d!829042 (=> (not res!1190443) (not e!1815561))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!4688 (List!34478) (InoxSet C!17632))

(assert (=> d!829042 (= res!1190443 (= (content!4688 lt!1017428) ((_ map or) (content!4688 (v!34521 lt!1017424)) (content!4688 (v!34521 lt!1017425)))))))

(assert (=> d!829042 (= lt!1017428 e!1815560)))

(declare-fun c!463441 () Bool)

(assert (=> d!829042 (= c!463441 ((_ is Nil!34354) (v!34521 lt!1017424)))))

(assert (=> d!829042 (= (++!8162 (v!34521 lt!1017424) (v!34521 lt!1017425)) lt!1017428)))

(declare-fun b!2868126 () Bool)

(declare-fun res!1190442 () Bool)

(assert (=> b!2868126 (=> (not res!1190442) (not e!1815561))))

(declare-fun size!26309 (List!34478) Int)

(assert (=> b!2868126 (= res!1190442 (= (size!26309 lt!1017428) (+ (size!26309 (v!34521 lt!1017424)) (size!26309 (v!34521 lt!1017425)))))))

(assert (= (and d!829042 c!463441) b!2868124))

(assert (= (and d!829042 (not c!463441)) b!2868125))

(assert (= (and d!829042 res!1190443) b!2868126))

(assert (= (and b!2868126 res!1190442) b!2868127))

(declare-fun m!3287831 () Bool)

(assert (=> b!2868125 m!3287831))

(declare-fun m!3287833 () Bool)

(assert (=> d!829042 m!3287833))

(declare-fun m!3287835 () Bool)

(assert (=> d!829042 m!3287835))

(declare-fun m!3287837 () Bool)

(assert (=> d!829042 m!3287837))

(declare-fun m!3287839 () Bool)

(assert (=> b!2868126 m!3287839))

(declare-fun m!3287841 () Bool)

(assert (=> b!2868126 m!3287841))

(declare-fun m!3287843 () Bool)

(assert (=> b!2868126 m!3287843))

(assert (=> b!2868110 d!829042))

(declare-fun d!829044 () Bool)

(declare-fun nullableFct!807 (Regex!8725) Bool)

(assert (=> d!829044 (= (nullable!2674 (reg!9054 (h!39773 (exprs!3185 c!7184)))) (nullableFct!807 (reg!9054 (h!39773 (exprs!3185 c!7184)))))))

(declare-fun bs!521738 () Bool)

(assert (= bs!521738 d!829044))

(declare-fun m!3287845 () Bool)

(assert (=> bs!521738 m!3287845))

(assert (=> b!2868039 d!829044))

(declare-fun b!2868128 () Bool)

(declare-fun c!463444 () Bool)

(assert (=> b!2868128 (= c!463444 ((_ is Union!8725) (ite c!463393 (regTwo!17963 (h!39773 (exprs!3185 c!7184))) (regTwo!17962 (h!39773 (exprs!3185 c!7184))))))))

(declare-fun e!1815565 () Option!6400)

(declare-fun e!1815567 () Option!6400)

(assert (=> b!2868128 (= e!1815565 e!1815567)))

(declare-fun b!2868129 () Bool)

(assert (=> b!2868129 (= e!1815565 (Some!6399 Nil!34354))))

(declare-fun b!2868130 () Bool)

(declare-fun e!1815564 () Option!6400)

(declare-fun e!1815562 () Option!6400)

(assert (=> b!2868130 (= e!1815564 e!1815562)))

(declare-fun c!463445 () Bool)

(assert (=> b!2868130 (= c!463445 ((_ is EmptyLang!8725) (ite c!463393 (regTwo!17963 (h!39773 (exprs!3185 c!7184))) (regTwo!17962 (h!39773 (exprs!3185 c!7184))))))))

(declare-fun b!2868131 () Bool)

(declare-fun e!1815569 () Option!6400)

(assert (=> b!2868131 (= e!1815567 e!1815569)))

(declare-fun lt!1017431 () Option!6400)

(declare-fun call!185050 () Option!6400)

(assert (=> b!2868131 (= lt!1017431 call!185050)))

(declare-fun c!463447 () Bool)

(assert (=> b!2868131 (= c!463447 ((_ is Some!6399) lt!1017431))))

(declare-fun d!829046 () Bool)

(declare-fun c!463449 () Bool)

(assert (=> d!829046 (= c!463449 ((_ is EmptyExpr!8725) (ite c!463393 (regTwo!17963 (h!39773 (exprs!3185 c!7184))) (regTwo!17962 (h!39773 (exprs!3185 c!7184))))))))

(assert (=> d!829046 (= (getLanguageWitness!402 (ite c!463393 (regTwo!17963 (h!39773 (exprs!3185 c!7184))) (regTwo!17962 (h!39773 (exprs!3185 c!7184))))) e!1815564)))

(declare-fun b!2868132 () Bool)

(declare-fun e!1815566 () Option!6400)

(declare-fun lt!1017429 () Option!6400)

(declare-fun lt!1017430 () Option!6400)

(assert (=> b!2868132 (= e!1815566 (Some!6399 (++!8162 (v!34521 lt!1017429) (v!34521 lt!1017430))))))

(declare-fun b!2868133 () Bool)

(declare-fun c!463442 () Bool)

(assert (=> b!2868133 (= c!463442 ((_ is Some!6399) lt!1017430))))

(declare-fun call!185049 () Option!6400)

(assert (=> b!2868133 (= lt!1017430 call!185049)))

(declare-fun e!1815568 () Option!6400)

(assert (=> b!2868133 (= e!1815568 e!1815566)))

(declare-fun b!2868134 () Bool)

(assert (=> b!2868134 (= e!1815567 e!1815568)))

(assert (=> b!2868134 (= lt!1017429 call!185050)))

(declare-fun c!463443 () Bool)

(assert (=> b!2868134 (= c!463443 ((_ is Some!6399) lt!1017429))))

(declare-fun b!2868135 () Bool)

(declare-fun c!463446 () Bool)

(assert (=> b!2868135 (= c!463446 ((_ is ElementMatch!8725) (ite c!463393 (regTwo!17963 (h!39773 (exprs!3185 c!7184))) (regTwo!17962 (h!39773 (exprs!3185 c!7184))))))))

(declare-fun e!1815563 () Option!6400)

(assert (=> b!2868135 (= e!1815562 e!1815563)))

(declare-fun bm!185044 () Bool)

(assert (=> bm!185044 (= call!185049 (getLanguageWitness!402 (ite c!463444 (regTwo!17963 (ite c!463393 (regTwo!17963 (h!39773 (exprs!3185 c!7184))) (regTwo!17962 (h!39773 (exprs!3185 c!7184))))) (regTwo!17962 (ite c!463393 (regTwo!17963 (h!39773 (exprs!3185 c!7184))) (regTwo!17962 (h!39773 (exprs!3185 c!7184))))))))))

(declare-fun b!2868136 () Bool)

(assert (=> b!2868136 (= e!1815563 e!1815565)))

(declare-fun c!463448 () Bool)

(assert (=> b!2868136 (= c!463448 ((_ is Star!8725) (ite c!463393 (regTwo!17963 (h!39773 (exprs!3185 c!7184))) (regTwo!17962 (h!39773 (exprs!3185 c!7184))))))))

(declare-fun b!2868137 () Bool)

(assert (=> b!2868137 (= e!1815562 None!6399)))

(declare-fun b!2868138 () Bool)

(assert (=> b!2868138 (= e!1815566 None!6399)))

(declare-fun b!2868139 () Bool)

(assert (=> b!2868139 (= e!1815569 call!185049)))

(declare-fun b!2868140 () Bool)

(assert (=> b!2868140 (= e!1815563 (Some!6399 (Cons!34354 (c!463358 (ite c!463393 (regTwo!17963 (h!39773 (exprs!3185 c!7184))) (regTwo!17962 (h!39773 (exprs!3185 c!7184))))) Nil!34354)))))

(declare-fun b!2868141 () Bool)

(assert (=> b!2868141 (= e!1815569 lt!1017431)))

(declare-fun b!2868142 () Bool)

(assert (=> b!2868142 (= e!1815564 (Some!6399 Nil!34354))))

(declare-fun bm!185045 () Bool)

(assert (=> bm!185045 (= call!185050 (getLanguageWitness!402 (ite c!463444 (regOne!17963 (ite c!463393 (regTwo!17963 (h!39773 (exprs!3185 c!7184))) (regTwo!17962 (h!39773 (exprs!3185 c!7184))))) (regOne!17962 (ite c!463393 (regTwo!17963 (h!39773 (exprs!3185 c!7184))) (regTwo!17962 (h!39773 (exprs!3185 c!7184))))))))))

(declare-fun b!2868143 () Bool)

(assert (=> b!2868143 (= e!1815568 None!6399)))

(assert (= (and d!829046 c!463449) b!2868142))

(assert (= (and d!829046 (not c!463449)) b!2868130))

(assert (= (and b!2868130 c!463445) b!2868137))

(assert (= (and b!2868130 (not c!463445)) b!2868135))

(assert (= (and b!2868135 c!463446) b!2868140))

(assert (= (and b!2868135 (not c!463446)) b!2868136))

(assert (= (and b!2868136 c!463448) b!2868129))

(assert (= (and b!2868136 (not c!463448)) b!2868128))

(assert (= (and b!2868128 c!463444) b!2868131))

(assert (= (and b!2868128 (not c!463444)) b!2868134))

(assert (= (and b!2868131 c!463447) b!2868141))

(assert (= (and b!2868131 (not c!463447)) b!2868139))

(assert (= (and b!2868134 c!463443) b!2868133))

(assert (= (and b!2868134 (not c!463443)) b!2868143))

(assert (= (and b!2868133 c!463442) b!2868132))

(assert (= (and b!2868133 (not c!463442)) b!2868138))

(assert (= (or b!2868139 b!2868133) bm!185044))

(assert (= (or b!2868131 b!2868134) bm!185045))

(declare-fun m!3287847 () Bool)

(assert (=> b!2868132 m!3287847))

(declare-fun m!3287849 () Bool)

(assert (=> bm!185044 m!3287849))

(declare-fun m!3287851 () Bool)

(assert (=> bm!185045 m!3287851))

(assert (=> bm!185022 d!829046))

(declare-fun b!2868144 () Bool)

(declare-fun c!463452 () Bool)

(assert (=> b!2868144 (= c!463452 ((_ is Union!8725) (h!39773 (exprs!3185 (Context!5371 (t!233520 (exprs!3185 c!7184)))))))))

(declare-fun e!1815573 () Option!6400)

(declare-fun e!1815575 () Option!6400)

(assert (=> b!2868144 (= e!1815573 e!1815575)))

(declare-fun b!2868145 () Bool)

(assert (=> b!2868145 (= e!1815573 (Some!6399 Nil!34354))))

(declare-fun b!2868146 () Bool)

(declare-fun e!1815572 () Option!6400)

(declare-fun e!1815570 () Option!6400)

(assert (=> b!2868146 (= e!1815572 e!1815570)))

(declare-fun c!463453 () Bool)

(assert (=> b!2868146 (= c!463453 ((_ is EmptyLang!8725) (h!39773 (exprs!3185 (Context!5371 (t!233520 (exprs!3185 c!7184)))))))))

(declare-fun b!2868147 () Bool)

(declare-fun e!1815577 () Option!6400)

(assert (=> b!2868147 (= e!1815575 e!1815577)))

(declare-fun lt!1017434 () Option!6400)

(declare-fun call!185052 () Option!6400)

(assert (=> b!2868147 (= lt!1017434 call!185052)))

(declare-fun c!463455 () Bool)

(assert (=> b!2868147 (= c!463455 ((_ is Some!6399) lt!1017434))))

(declare-fun d!829048 () Bool)

(declare-fun c!463457 () Bool)

(assert (=> d!829048 (= c!463457 ((_ is EmptyExpr!8725) (h!39773 (exprs!3185 (Context!5371 (t!233520 (exprs!3185 c!7184)))))))))

(assert (=> d!829048 (= (getLanguageWitness!402 (h!39773 (exprs!3185 (Context!5371 (t!233520 (exprs!3185 c!7184)))))) e!1815572)))

(declare-fun b!2868148 () Bool)

(declare-fun e!1815574 () Option!6400)

(declare-fun lt!1017432 () Option!6400)

(declare-fun lt!1017433 () Option!6400)

(assert (=> b!2868148 (= e!1815574 (Some!6399 (++!8162 (v!34521 lt!1017432) (v!34521 lt!1017433))))))

(declare-fun b!2868149 () Bool)

(declare-fun c!463450 () Bool)

(assert (=> b!2868149 (= c!463450 ((_ is Some!6399) lt!1017433))))

(declare-fun call!185051 () Option!6400)

(assert (=> b!2868149 (= lt!1017433 call!185051)))

(declare-fun e!1815576 () Option!6400)

(assert (=> b!2868149 (= e!1815576 e!1815574)))

(declare-fun b!2868150 () Bool)

(assert (=> b!2868150 (= e!1815575 e!1815576)))

(assert (=> b!2868150 (= lt!1017432 call!185052)))

(declare-fun c!463451 () Bool)

(assert (=> b!2868150 (= c!463451 ((_ is Some!6399) lt!1017432))))

(declare-fun b!2868151 () Bool)

(declare-fun c!463454 () Bool)

(assert (=> b!2868151 (= c!463454 ((_ is ElementMatch!8725) (h!39773 (exprs!3185 (Context!5371 (t!233520 (exprs!3185 c!7184)))))))))

(declare-fun e!1815571 () Option!6400)

(assert (=> b!2868151 (= e!1815570 e!1815571)))

(declare-fun bm!185046 () Bool)

(assert (=> bm!185046 (= call!185051 (getLanguageWitness!402 (ite c!463452 (regTwo!17963 (h!39773 (exprs!3185 (Context!5371 (t!233520 (exprs!3185 c!7184)))))) (regTwo!17962 (h!39773 (exprs!3185 (Context!5371 (t!233520 (exprs!3185 c!7184)))))))))))

(declare-fun b!2868152 () Bool)

(assert (=> b!2868152 (= e!1815571 e!1815573)))

(declare-fun c!463456 () Bool)

(assert (=> b!2868152 (= c!463456 ((_ is Star!8725) (h!39773 (exprs!3185 (Context!5371 (t!233520 (exprs!3185 c!7184)))))))))

(declare-fun b!2868153 () Bool)

(assert (=> b!2868153 (= e!1815570 None!6399)))

(declare-fun b!2868154 () Bool)

(assert (=> b!2868154 (= e!1815574 None!6399)))

(declare-fun b!2868155 () Bool)

(assert (=> b!2868155 (= e!1815577 call!185051)))

(declare-fun b!2868156 () Bool)

(assert (=> b!2868156 (= e!1815571 (Some!6399 (Cons!34354 (c!463358 (h!39773 (exprs!3185 (Context!5371 (t!233520 (exprs!3185 c!7184)))))) Nil!34354)))))

(declare-fun b!2868157 () Bool)

(assert (=> b!2868157 (= e!1815577 lt!1017434)))

(declare-fun b!2868158 () Bool)

(assert (=> b!2868158 (= e!1815572 (Some!6399 Nil!34354))))

(declare-fun bm!185047 () Bool)

(assert (=> bm!185047 (= call!185052 (getLanguageWitness!402 (ite c!463452 (regOne!17963 (h!39773 (exprs!3185 (Context!5371 (t!233520 (exprs!3185 c!7184)))))) (regOne!17962 (h!39773 (exprs!3185 (Context!5371 (t!233520 (exprs!3185 c!7184)))))))))))

(declare-fun b!2868159 () Bool)

(assert (=> b!2868159 (= e!1815576 None!6399)))

(assert (= (and d!829048 c!463457) b!2868158))

(assert (= (and d!829048 (not c!463457)) b!2868146))

(assert (= (and b!2868146 c!463453) b!2868153))

(assert (= (and b!2868146 (not c!463453)) b!2868151))

(assert (= (and b!2868151 c!463454) b!2868156))

(assert (= (and b!2868151 (not c!463454)) b!2868152))

(assert (= (and b!2868152 c!463456) b!2868145))

(assert (= (and b!2868152 (not c!463456)) b!2868144))

(assert (= (and b!2868144 c!463452) b!2868147))

(assert (= (and b!2868144 (not c!463452)) b!2868150))

(assert (= (and b!2868147 c!463455) b!2868157))

(assert (= (and b!2868147 (not c!463455)) b!2868155))

(assert (= (and b!2868150 c!463451) b!2868149))

(assert (= (and b!2868150 (not c!463451)) b!2868159))

(assert (= (and b!2868149 c!463450) b!2868148))

(assert (= (and b!2868149 (not c!463450)) b!2868154))

(assert (= (or b!2868155 b!2868149) bm!185046))

(assert (= (or b!2868147 b!2868150) bm!185047))

(declare-fun m!3287853 () Bool)

(assert (=> b!2868148 m!3287853))

(declare-fun m!3287855 () Bool)

(assert (=> bm!185046 m!3287855))

(declare-fun m!3287857 () Bool)

(assert (=> bm!185047 m!3287857))

(assert (=> b!2868107 d!829048))

(declare-fun b!2868160 () Bool)

(declare-fun e!1815578 () List!34478)

(assert (=> b!2868160 (= e!1815578 (v!34521 lt!1017403))))

(declare-fun b!2868161 () Bool)

(assert (=> b!2868161 (= e!1815578 (Cons!34354 (h!39774 (v!34521 lt!1017402)) (++!8162 (t!233521 (v!34521 lt!1017402)) (v!34521 lt!1017403))))))

(declare-fun b!2868163 () Bool)

(declare-fun lt!1017435 () List!34478)

(declare-fun e!1815579 () Bool)

(assert (=> b!2868163 (= e!1815579 (or (not (= (v!34521 lt!1017403) Nil!34354)) (= lt!1017435 (v!34521 lt!1017402))))))

(declare-fun d!829050 () Bool)

(assert (=> d!829050 e!1815579))

(declare-fun res!1190445 () Bool)

(assert (=> d!829050 (=> (not res!1190445) (not e!1815579))))

(assert (=> d!829050 (= res!1190445 (= (content!4688 lt!1017435) ((_ map or) (content!4688 (v!34521 lt!1017402)) (content!4688 (v!34521 lt!1017403)))))))

(assert (=> d!829050 (= lt!1017435 e!1815578)))

(declare-fun c!463458 () Bool)

(assert (=> d!829050 (= c!463458 ((_ is Nil!34354) (v!34521 lt!1017402)))))

(assert (=> d!829050 (= (++!8162 (v!34521 lt!1017402) (v!34521 lt!1017403)) lt!1017435)))

(declare-fun b!2868162 () Bool)

(declare-fun res!1190444 () Bool)

(assert (=> b!2868162 (=> (not res!1190444) (not e!1815579))))

(assert (=> b!2868162 (= res!1190444 (= (size!26309 lt!1017435) (+ (size!26309 (v!34521 lt!1017402)) (size!26309 (v!34521 lt!1017403)))))))

(assert (= (and d!829050 c!463458) b!2868160))

(assert (= (and d!829050 (not c!463458)) b!2868161))

(assert (= (and d!829050 res!1190445) b!2868162))

(assert (= (and b!2868162 res!1190444) b!2868163))

(declare-fun m!3287859 () Bool)

(assert (=> b!2868161 m!3287859))

(declare-fun m!3287861 () Bool)

(assert (=> d!829050 m!3287861))

(declare-fun m!3287863 () Bool)

(assert (=> d!829050 m!3287863))

(declare-fun m!3287865 () Bool)

(assert (=> d!829050 m!3287865))

(declare-fun m!3287867 () Bool)

(assert (=> b!2868162 m!3287867))

(declare-fun m!3287869 () Bool)

(assert (=> b!2868162 m!3287869))

(declare-fun m!3287871 () Bool)

(assert (=> b!2868162 m!3287871))

(assert (=> b!2867988 d!829050))

(declare-fun bs!521739 () Bool)

(declare-fun d!829052 () Bool)

(assert (= bs!521739 (and d!829052 d!829030)))

(declare-fun lambda!106935 () Int)

(assert (=> bs!521739 (= lambda!106935 lambda!106925)))

(declare-fun bs!521740 () Bool)

(assert (= bs!521740 (and d!829052 d!829036)))

(assert (=> bs!521740 (not (= lambda!106935 lambda!106931))))

(declare-fun bs!521741 () Bool)

(assert (= bs!521741 (and d!829052 d!829040)))

(assert (=> bs!521741 (= lambda!106935 lambda!106934)))

(declare-fun b!2868164 () Bool)

(declare-fun e!1815582 () Option!6400)

(assert (=> b!2868164 (= e!1815582 None!6399)))

(declare-fun lt!1017436 () Option!6400)

(assert (=> d!829052 (= (isEmpty!18695 lt!1017436) (exists!1144 (exprs!3185 (Context!5371 (t!233520 (exprs!3185 (Context!5371 (t!233520 (exprs!3185 c!7184))))))) lambda!106935))))

(declare-fun e!1815581 () Option!6400)

(assert (=> d!829052 (= lt!1017436 e!1815581)))

(declare-fun c!463459 () Bool)

(assert (=> d!829052 (= c!463459 ((_ is Cons!34353) (exprs!3185 (Context!5371 (t!233520 (exprs!3185 (Context!5371 (t!233520 (exprs!3185 c!7184)))))))))))

(assert (=> d!829052 (= (getLanguageWitness!401 (Context!5371 (t!233520 (exprs!3185 (Context!5371 (t!233520 (exprs!3185 c!7184))))))) lt!1017436)))

(declare-fun b!2868165 () Bool)

(declare-fun e!1815580 () Option!6400)

(assert (=> b!2868165 (= e!1815580 None!6399)))

(declare-fun b!2868166 () Bool)

(assert (=> b!2868166 (= e!1815581 e!1815580)))

(declare-fun lt!1017437 () Option!6400)

(assert (=> b!2868166 (= lt!1017437 (getLanguageWitness!402 (h!39773 (exprs!3185 (Context!5371 (t!233520 (exprs!3185 (Context!5371 (t!233520 (exprs!3185 c!7184))))))))))))

(declare-fun c!463460 () Bool)

(assert (=> b!2868166 (= c!463460 ((_ is Some!6399) lt!1017437))))

(declare-fun b!2868167 () Bool)

(declare-fun c!463461 () Bool)

(declare-fun lt!1017438 () Option!6400)

(assert (=> b!2868167 (= c!463461 ((_ is Some!6399) lt!1017438))))

(assert (=> b!2868167 (= lt!1017438 (getLanguageWitness!401 (Context!5371 (t!233520 (exprs!3185 (Context!5371 (t!233520 (exprs!3185 (Context!5371 (t!233520 (exprs!3185 c!7184)))))))))))))

(assert (=> b!2868167 (= e!1815580 e!1815582)))

(declare-fun b!2868168 () Bool)

(assert (=> b!2868168 (= e!1815581 (Some!6399 Nil!34354))))

(declare-fun b!2868169 () Bool)

(assert (=> b!2868169 (= e!1815582 (Some!6399 (++!8162 (v!34521 lt!1017437) (v!34521 lt!1017438))))))

(assert (= (and d!829052 c!463459) b!2868166))

(assert (= (and d!829052 (not c!463459)) b!2868168))

(assert (= (and b!2868166 c!463460) b!2868167))

(assert (= (and b!2868166 (not c!463460)) b!2868165))

(assert (= (and b!2868167 c!463461) b!2868169))

(assert (= (and b!2868167 (not c!463461)) b!2868164))

(declare-fun m!3287873 () Bool)

(assert (=> d!829052 m!3287873))

(declare-fun m!3287875 () Bool)

(assert (=> d!829052 m!3287875))

(declare-fun m!3287877 () Bool)

(assert (=> b!2868166 m!3287877))

(declare-fun m!3287879 () Bool)

(assert (=> b!2868167 m!3287879))

(declare-fun m!3287881 () Bool)

(assert (=> b!2868169 m!3287881))

(assert (=> b!2868108 d!829052))

(declare-fun b!2868170 () Bool)

(declare-fun c!463464 () Bool)

(assert (=> b!2868170 (= c!463464 ((_ is Union!8725) (ite c!463393 (regOne!17963 (h!39773 (exprs!3185 c!7184))) (regOne!17962 (h!39773 (exprs!3185 c!7184))))))))

(declare-fun e!1815586 () Option!6400)

(declare-fun e!1815588 () Option!6400)

(assert (=> b!2868170 (= e!1815586 e!1815588)))

(declare-fun b!2868171 () Bool)

(assert (=> b!2868171 (= e!1815586 (Some!6399 Nil!34354))))

(declare-fun b!2868172 () Bool)

(declare-fun e!1815585 () Option!6400)

(declare-fun e!1815583 () Option!6400)

(assert (=> b!2868172 (= e!1815585 e!1815583)))

(declare-fun c!463465 () Bool)

(assert (=> b!2868172 (= c!463465 ((_ is EmptyLang!8725) (ite c!463393 (regOne!17963 (h!39773 (exprs!3185 c!7184))) (regOne!17962 (h!39773 (exprs!3185 c!7184))))))))

(declare-fun b!2868173 () Bool)

(declare-fun e!1815590 () Option!6400)

(assert (=> b!2868173 (= e!1815588 e!1815590)))

(declare-fun lt!1017441 () Option!6400)

(declare-fun call!185054 () Option!6400)

(assert (=> b!2868173 (= lt!1017441 call!185054)))

(declare-fun c!463467 () Bool)

(assert (=> b!2868173 (= c!463467 ((_ is Some!6399) lt!1017441))))

(declare-fun d!829054 () Bool)

(declare-fun c!463469 () Bool)

(assert (=> d!829054 (= c!463469 ((_ is EmptyExpr!8725) (ite c!463393 (regOne!17963 (h!39773 (exprs!3185 c!7184))) (regOne!17962 (h!39773 (exprs!3185 c!7184))))))))

(assert (=> d!829054 (= (getLanguageWitness!402 (ite c!463393 (regOne!17963 (h!39773 (exprs!3185 c!7184))) (regOne!17962 (h!39773 (exprs!3185 c!7184))))) e!1815585)))

(declare-fun b!2868174 () Bool)

(declare-fun e!1815587 () Option!6400)

(declare-fun lt!1017439 () Option!6400)

(declare-fun lt!1017440 () Option!6400)

(assert (=> b!2868174 (= e!1815587 (Some!6399 (++!8162 (v!34521 lt!1017439) (v!34521 lt!1017440))))))

(declare-fun b!2868175 () Bool)

(declare-fun c!463462 () Bool)

(assert (=> b!2868175 (= c!463462 ((_ is Some!6399) lt!1017440))))

(declare-fun call!185053 () Option!6400)

(assert (=> b!2868175 (= lt!1017440 call!185053)))

(declare-fun e!1815589 () Option!6400)

(assert (=> b!2868175 (= e!1815589 e!1815587)))

(declare-fun b!2868176 () Bool)

(assert (=> b!2868176 (= e!1815588 e!1815589)))

(assert (=> b!2868176 (= lt!1017439 call!185054)))

(declare-fun c!463463 () Bool)

(assert (=> b!2868176 (= c!463463 ((_ is Some!6399) lt!1017439))))

(declare-fun b!2868177 () Bool)

(declare-fun c!463466 () Bool)

(assert (=> b!2868177 (= c!463466 ((_ is ElementMatch!8725) (ite c!463393 (regOne!17963 (h!39773 (exprs!3185 c!7184))) (regOne!17962 (h!39773 (exprs!3185 c!7184))))))))

(declare-fun e!1815584 () Option!6400)

(assert (=> b!2868177 (= e!1815583 e!1815584)))

(declare-fun bm!185048 () Bool)

(assert (=> bm!185048 (= call!185053 (getLanguageWitness!402 (ite c!463464 (regTwo!17963 (ite c!463393 (regOne!17963 (h!39773 (exprs!3185 c!7184))) (regOne!17962 (h!39773 (exprs!3185 c!7184))))) (regTwo!17962 (ite c!463393 (regOne!17963 (h!39773 (exprs!3185 c!7184))) (regOne!17962 (h!39773 (exprs!3185 c!7184))))))))))

(declare-fun b!2868178 () Bool)

(assert (=> b!2868178 (= e!1815584 e!1815586)))

(declare-fun c!463468 () Bool)

(assert (=> b!2868178 (= c!463468 ((_ is Star!8725) (ite c!463393 (regOne!17963 (h!39773 (exprs!3185 c!7184))) (regOne!17962 (h!39773 (exprs!3185 c!7184))))))))

(declare-fun b!2868179 () Bool)

(assert (=> b!2868179 (= e!1815583 None!6399)))

(declare-fun b!2868180 () Bool)

(assert (=> b!2868180 (= e!1815587 None!6399)))

(declare-fun b!2868181 () Bool)

(assert (=> b!2868181 (= e!1815590 call!185053)))

(declare-fun b!2868182 () Bool)

(assert (=> b!2868182 (= e!1815584 (Some!6399 (Cons!34354 (c!463358 (ite c!463393 (regOne!17963 (h!39773 (exprs!3185 c!7184))) (regOne!17962 (h!39773 (exprs!3185 c!7184))))) Nil!34354)))))

(declare-fun b!2868183 () Bool)

(assert (=> b!2868183 (= e!1815590 lt!1017441)))

(declare-fun b!2868184 () Bool)

(assert (=> b!2868184 (= e!1815585 (Some!6399 Nil!34354))))

(declare-fun bm!185049 () Bool)

(assert (=> bm!185049 (= call!185054 (getLanguageWitness!402 (ite c!463464 (regOne!17963 (ite c!463393 (regOne!17963 (h!39773 (exprs!3185 c!7184))) (regOne!17962 (h!39773 (exprs!3185 c!7184))))) (regOne!17962 (ite c!463393 (regOne!17963 (h!39773 (exprs!3185 c!7184))) (regOne!17962 (h!39773 (exprs!3185 c!7184))))))))))

(declare-fun b!2868185 () Bool)

(assert (=> b!2868185 (= e!1815589 None!6399)))

(assert (= (and d!829054 c!463469) b!2868184))

(assert (= (and d!829054 (not c!463469)) b!2868172))

(assert (= (and b!2868172 c!463465) b!2868179))

(assert (= (and b!2868172 (not c!463465)) b!2868177))

(assert (= (and b!2868177 c!463466) b!2868182))

(assert (= (and b!2868177 (not c!463466)) b!2868178))

(assert (= (and b!2868178 c!463468) b!2868171))

(assert (= (and b!2868178 (not c!463468)) b!2868170))

(assert (= (and b!2868170 c!463464) b!2868173))

(assert (= (and b!2868170 (not c!463464)) b!2868176))

(assert (= (and b!2868173 c!463467) b!2868183))

(assert (= (and b!2868173 (not c!463467)) b!2868181))

(assert (= (and b!2868176 c!463463) b!2868175))

(assert (= (and b!2868176 (not c!463463)) b!2868185))

(assert (= (and b!2868175 c!463462) b!2868174))

(assert (= (and b!2868175 (not c!463462)) b!2868180))

(assert (= (or b!2868181 b!2868175) bm!185048))

(assert (= (or b!2868173 b!2868176) bm!185049))

(declare-fun m!3287883 () Bool)

(assert (=> b!2868174 m!3287883))

(declare-fun m!3287885 () Bool)

(assert (=> bm!185048 m!3287885))

(declare-fun m!3287887 () Bool)

(assert (=> bm!185049 m!3287887))

(assert (=> bm!185023 d!829054))

(declare-fun b!2868186 () Bool)

(declare-fun res!1190449 () Bool)

(declare-fun e!1815592 () Bool)

(assert (=> b!2868186 (=> (not res!1190449) (not e!1815592))))

(declare-fun call!185057 () Bool)

(assert (=> b!2868186 (= res!1190449 call!185057)))

(declare-fun e!1815596 () Bool)

(assert (=> b!2868186 (= e!1815596 e!1815592)))

(declare-fun b!2868187 () Bool)

(declare-fun e!1815591 () Bool)

(declare-fun e!1815597 () Bool)

(assert (=> b!2868187 (= e!1815591 e!1815597)))

(declare-fun res!1190447 () Bool)

(assert (=> b!2868187 (=> (not res!1190447) (not e!1815597))))

(declare-fun call!185056 () Bool)

(assert (=> b!2868187 (= res!1190447 call!185056)))

(declare-fun bm!185050 () Bool)

(declare-fun call!185055 () Bool)

(assert (=> bm!185050 (= call!185057 call!185055)))

(declare-fun b!2868188 () Bool)

(declare-fun e!1815595 () Bool)

(assert (=> b!2868188 (= e!1815595 e!1815596)))

(declare-fun c!463470 () Bool)

(assert (=> b!2868188 (= c!463470 ((_ is Union!8725) (ite c!463411 (regTwo!17963 (h!39773 (exprs!3185 c!7184))) (regOne!17962 (h!39773 (exprs!3185 c!7184))))))))

(declare-fun d!829056 () Bool)

(declare-fun res!1190448 () Bool)

(declare-fun e!1815593 () Bool)

(assert (=> d!829056 (=> res!1190448 e!1815593)))

(assert (=> d!829056 (= res!1190448 ((_ is ElementMatch!8725) (ite c!463411 (regTwo!17963 (h!39773 (exprs!3185 c!7184))) (regOne!17962 (h!39773 (exprs!3185 c!7184))))))))

(assert (=> d!829056 (= (validRegex!3503 (ite c!463411 (regTwo!17963 (h!39773 (exprs!3185 c!7184))) (regOne!17962 (h!39773 (exprs!3185 c!7184))))) e!1815593)))

(declare-fun b!2868189 () Bool)

(declare-fun e!1815594 () Bool)

(assert (=> b!2868189 (= e!1815594 call!185055)))

(declare-fun b!2868190 () Bool)

(declare-fun res!1190450 () Bool)

(assert (=> b!2868190 (=> res!1190450 e!1815591)))

(assert (=> b!2868190 (= res!1190450 (not ((_ is Concat!14046) (ite c!463411 (regTwo!17963 (h!39773 (exprs!3185 c!7184))) (regOne!17962 (h!39773 (exprs!3185 c!7184)))))))))

(assert (=> b!2868190 (= e!1815596 e!1815591)))

(declare-fun b!2868191 () Bool)

(assert (=> b!2868191 (= e!1815595 e!1815594)))

(declare-fun res!1190446 () Bool)

(assert (=> b!2868191 (= res!1190446 (not (nullable!2674 (reg!9054 (ite c!463411 (regTwo!17963 (h!39773 (exprs!3185 c!7184))) (regOne!17962 (h!39773 (exprs!3185 c!7184))))))))))

(assert (=> b!2868191 (=> (not res!1190446) (not e!1815594))))

(declare-fun b!2868192 () Bool)

(assert (=> b!2868192 (= e!1815592 call!185056)))

(declare-fun bm!185051 () Bool)

(declare-fun c!463471 () Bool)

(assert (=> bm!185051 (= call!185055 (validRegex!3503 (ite c!463471 (reg!9054 (ite c!463411 (regTwo!17963 (h!39773 (exprs!3185 c!7184))) (regOne!17962 (h!39773 (exprs!3185 c!7184))))) (ite c!463470 (regOne!17963 (ite c!463411 (regTwo!17963 (h!39773 (exprs!3185 c!7184))) (regOne!17962 (h!39773 (exprs!3185 c!7184))))) (regTwo!17962 (ite c!463411 (regTwo!17963 (h!39773 (exprs!3185 c!7184))) (regOne!17962 (h!39773 (exprs!3185 c!7184)))))))))))

(declare-fun b!2868193 () Bool)

(assert (=> b!2868193 (= e!1815593 e!1815595)))

(assert (=> b!2868193 (= c!463471 ((_ is Star!8725) (ite c!463411 (regTwo!17963 (h!39773 (exprs!3185 c!7184))) (regOne!17962 (h!39773 (exprs!3185 c!7184))))))))

(declare-fun b!2868194 () Bool)

(assert (=> b!2868194 (= e!1815597 call!185057)))

(declare-fun bm!185052 () Bool)

(assert (=> bm!185052 (= call!185056 (validRegex!3503 (ite c!463470 (regTwo!17963 (ite c!463411 (regTwo!17963 (h!39773 (exprs!3185 c!7184))) (regOne!17962 (h!39773 (exprs!3185 c!7184))))) (regOne!17962 (ite c!463411 (regTwo!17963 (h!39773 (exprs!3185 c!7184))) (regOne!17962 (h!39773 (exprs!3185 c!7184))))))))))

(assert (= (and d!829056 (not res!1190448)) b!2868193))

(assert (= (and b!2868193 c!463471) b!2868191))

(assert (= (and b!2868193 (not c!463471)) b!2868188))

(assert (= (and b!2868191 res!1190446) b!2868189))

(assert (= (and b!2868188 c!463470) b!2868186))

(assert (= (and b!2868188 (not c!463470)) b!2868190))

(assert (= (and b!2868186 res!1190449) b!2868192))

(assert (= (and b!2868190 (not res!1190450)) b!2868187))

(assert (= (and b!2868187 res!1190447) b!2868194))

(assert (= (or b!2868192 b!2868187) bm!185052))

(assert (= (or b!2868186 b!2868194) bm!185050))

(assert (= (or b!2868189 bm!185050) bm!185051))

(declare-fun m!3287889 () Bool)

(assert (=> b!2868191 m!3287889))

(declare-fun m!3287891 () Bool)

(assert (=> bm!185051 m!3287891))

(declare-fun m!3287893 () Bool)

(assert (=> bm!185052 m!3287893))

(assert (=> bm!185034 d!829056))

(declare-fun b!2868195 () Bool)

(declare-fun res!1190454 () Bool)

(declare-fun e!1815599 () Bool)

(assert (=> b!2868195 (=> (not res!1190454) (not e!1815599))))

(declare-fun call!185060 () Bool)

(assert (=> b!2868195 (= res!1190454 call!185060)))

(declare-fun e!1815603 () Bool)

(assert (=> b!2868195 (= e!1815603 e!1815599)))

(declare-fun b!2868196 () Bool)

(declare-fun e!1815598 () Bool)

(declare-fun e!1815604 () Bool)

(assert (=> b!2868196 (= e!1815598 e!1815604)))

(declare-fun res!1190452 () Bool)

(assert (=> b!2868196 (=> (not res!1190452) (not e!1815604))))

(declare-fun call!185059 () Bool)

(assert (=> b!2868196 (= res!1190452 call!185059)))

(declare-fun bm!185053 () Bool)

(declare-fun call!185058 () Bool)

(assert (=> bm!185053 (= call!185060 call!185058)))

(declare-fun b!2868197 () Bool)

(declare-fun e!1815602 () Bool)

(assert (=> b!2868197 (= e!1815602 e!1815603)))

(declare-fun c!463472 () Bool)

(assert (=> b!2868197 (= c!463472 ((_ is Union!8725) (ite c!463412 (reg!9054 (h!39773 (exprs!3185 c!7184))) (ite c!463411 (regOne!17963 (h!39773 (exprs!3185 c!7184))) (regTwo!17962 (h!39773 (exprs!3185 c!7184)))))))))

(declare-fun d!829058 () Bool)

(declare-fun res!1190453 () Bool)

(declare-fun e!1815600 () Bool)

(assert (=> d!829058 (=> res!1190453 e!1815600)))

(assert (=> d!829058 (= res!1190453 ((_ is ElementMatch!8725) (ite c!463412 (reg!9054 (h!39773 (exprs!3185 c!7184))) (ite c!463411 (regOne!17963 (h!39773 (exprs!3185 c!7184))) (regTwo!17962 (h!39773 (exprs!3185 c!7184)))))))))

(assert (=> d!829058 (= (validRegex!3503 (ite c!463412 (reg!9054 (h!39773 (exprs!3185 c!7184))) (ite c!463411 (regOne!17963 (h!39773 (exprs!3185 c!7184))) (regTwo!17962 (h!39773 (exprs!3185 c!7184)))))) e!1815600)))

(declare-fun b!2868198 () Bool)

(declare-fun e!1815601 () Bool)

(assert (=> b!2868198 (= e!1815601 call!185058)))

(declare-fun b!2868199 () Bool)

(declare-fun res!1190455 () Bool)

(assert (=> b!2868199 (=> res!1190455 e!1815598)))

(assert (=> b!2868199 (= res!1190455 (not ((_ is Concat!14046) (ite c!463412 (reg!9054 (h!39773 (exprs!3185 c!7184))) (ite c!463411 (regOne!17963 (h!39773 (exprs!3185 c!7184))) (regTwo!17962 (h!39773 (exprs!3185 c!7184))))))))))

(assert (=> b!2868199 (= e!1815603 e!1815598)))

(declare-fun b!2868200 () Bool)

(assert (=> b!2868200 (= e!1815602 e!1815601)))

(declare-fun res!1190451 () Bool)

(assert (=> b!2868200 (= res!1190451 (not (nullable!2674 (reg!9054 (ite c!463412 (reg!9054 (h!39773 (exprs!3185 c!7184))) (ite c!463411 (regOne!17963 (h!39773 (exprs!3185 c!7184))) (regTwo!17962 (h!39773 (exprs!3185 c!7184)))))))))))

(assert (=> b!2868200 (=> (not res!1190451) (not e!1815601))))

(declare-fun b!2868201 () Bool)

(assert (=> b!2868201 (= e!1815599 call!185059)))

(declare-fun bm!185054 () Bool)

(declare-fun c!463473 () Bool)

(assert (=> bm!185054 (= call!185058 (validRegex!3503 (ite c!463473 (reg!9054 (ite c!463412 (reg!9054 (h!39773 (exprs!3185 c!7184))) (ite c!463411 (regOne!17963 (h!39773 (exprs!3185 c!7184))) (regTwo!17962 (h!39773 (exprs!3185 c!7184)))))) (ite c!463472 (regOne!17963 (ite c!463412 (reg!9054 (h!39773 (exprs!3185 c!7184))) (ite c!463411 (regOne!17963 (h!39773 (exprs!3185 c!7184))) (regTwo!17962 (h!39773 (exprs!3185 c!7184)))))) (regTwo!17962 (ite c!463412 (reg!9054 (h!39773 (exprs!3185 c!7184))) (ite c!463411 (regOne!17963 (h!39773 (exprs!3185 c!7184))) (regTwo!17962 (h!39773 (exprs!3185 c!7184))))))))))))

(declare-fun b!2868202 () Bool)

(assert (=> b!2868202 (= e!1815600 e!1815602)))

(assert (=> b!2868202 (= c!463473 ((_ is Star!8725) (ite c!463412 (reg!9054 (h!39773 (exprs!3185 c!7184))) (ite c!463411 (regOne!17963 (h!39773 (exprs!3185 c!7184))) (regTwo!17962 (h!39773 (exprs!3185 c!7184)))))))))

(declare-fun b!2868203 () Bool)

(assert (=> b!2868203 (= e!1815604 call!185060)))

(declare-fun bm!185055 () Bool)

(assert (=> bm!185055 (= call!185059 (validRegex!3503 (ite c!463472 (regTwo!17963 (ite c!463412 (reg!9054 (h!39773 (exprs!3185 c!7184))) (ite c!463411 (regOne!17963 (h!39773 (exprs!3185 c!7184))) (regTwo!17962 (h!39773 (exprs!3185 c!7184)))))) (regOne!17962 (ite c!463412 (reg!9054 (h!39773 (exprs!3185 c!7184))) (ite c!463411 (regOne!17963 (h!39773 (exprs!3185 c!7184))) (regTwo!17962 (h!39773 (exprs!3185 c!7184)))))))))))

(assert (= (and d!829058 (not res!1190453)) b!2868202))

(assert (= (and b!2868202 c!463473) b!2868200))

(assert (= (and b!2868202 (not c!463473)) b!2868197))

(assert (= (and b!2868200 res!1190451) b!2868198))

(assert (= (and b!2868197 c!463472) b!2868195))

(assert (= (and b!2868197 (not c!463472)) b!2868199))

(assert (= (and b!2868195 res!1190454) b!2868201))

(assert (= (and b!2868199 (not res!1190455)) b!2868196))

(assert (= (and b!2868196 res!1190452) b!2868203))

(assert (= (or b!2868201 b!2868196) bm!185055))

(assert (= (or b!2868195 b!2868203) bm!185053))

(assert (= (or b!2868198 bm!185053) bm!185054))

(declare-fun m!3287895 () Bool)

(assert (=> b!2868200 m!3287895))

(declare-fun m!3287897 () Bool)

(assert (=> bm!185054 m!3287897))

(declare-fun m!3287899 () Bool)

(assert (=> bm!185055 m!3287899))

(assert (=> bm!185033 d!829058))

(declare-fun bs!521742 () Bool)

(declare-fun d!829060 () Bool)

(assert (= bs!521742 (and d!829060 d!829030)))

(declare-fun lambda!106938 () Int)

(assert (=> bs!521742 (not (= lambda!106938 lambda!106925))))

(declare-fun bs!521743 () Bool)

(assert (= bs!521743 (and d!829060 d!829036)))

(assert (=> bs!521743 (not (= lambda!106938 lambda!106931))))

(declare-fun bs!521744 () Bool)

(assert (= bs!521744 (and d!829060 d!829040)))

(assert (=> bs!521744 (not (= lambda!106938 lambda!106934))))

(declare-fun bs!521745 () Bool)

(assert (= bs!521745 (and d!829060 d!829052)))

(assert (=> bs!521745 (not (= lambda!106938 lambda!106935))))

(assert (=> d!829060 true))

(declare-fun order!18109 () Int)

(declare-fun dynLambda!14293 (Int Int) Int)

(assert (=> d!829060 (< (dynLambda!14293 order!18109 lambda!106925) (dynLambda!14293 order!18109 lambda!106938))))

(assert (=> d!829060 (= (exists!1144 (exprs!3185 c!7184) lambda!106925) (not (forall!7069 (exprs!3185 c!7184) lambda!106938)))))

(declare-fun bs!521746 () Bool)

(assert (= bs!521746 d!829060))

(declare-fun m!3287901 () Bool)

(assert (=> bs!521746 m!3287901))

(assert (=> d!829030 d!829060))

(declare-fun d!829062 () Bool)

(declare-fun res!1190460 () Bool)

(declare-fun e!1815609 () Bool)

(assert (=> d!829062 (=> res!1190460 e!1815609)))

(assert (=> d!829062 (= res!1190460 ((_ is Nil!34353) (exprs!3185 c!7184)))))

(assert (=> d!829062 (= (forall!7069 (exprs!3185 c!7184) lambda!106931) e!1815609)))

(declare-fun b!2868210 () Bool)

(declare-fun e!1815610 () Bool)

(assert (=> b!2868210 (= e!1815609 e!1815610)))

(declare-fun res!1190461 () Bool)

(assert (=> b!2868210 (=> (not res!1190461) (not e!1815610))))

(declare-fun dynLambda!14294 (Int Regex!8725) Bool)

(assert (=> b!2868210 (= res!1190461 (dynLambda!14294 lambda!106931 (h!39773 (exprs!3185 c!7184))))))

(declare-fun b!2868211 () Bool)

(assert (=> b!2868211 (= e!1815610 (forall!7069 (t!233520 (exprs!3185 c!7184)) lambda!106931))))

(assert (= (and d!829062 (not res!1190460)) b!2868210))

(assert (= (and b!2868210 res!1190461) b!2868211))

(declare-fun b_lambda!85955 () Bool)

(assert (=> (not b_lambda!85955) (not b!2868210)))

(declare-fun m!3287903 () Bool)

(assert (=> b!2868210 m!3287903))

(declare-fun m!3287905 () Bool)

(assert (=> b!2868211 m!3287905))

(assert (=> d!829036 d!829062))

(declare-fun d!829064 () Bool)

(assert (=> d!829064 (= (isEmpty!18695 lt!1017423) (not ((_ is Some!6399) lt!1017423)))))

(assert (=> d!829040 d!829064))

(declare-fun bs!521747 () Bool)

(declare-fun d!829066 () Bool)

(assert (= bs!521747 (and d!829066 d!829060)))

(declare-fun lambda!106939 () Int)

(assert (=> bs!521747 (= (= lambda!106934 lambda!106925) (= lambda!106939 lambda!106938))))

(declare-fun bs!521748 () Bool)

(assert (= bs!521748 (and d!829066 d!829036)))

(assert (=> bs!521748 (not (= lambda!106939 lambda!106931))))

(declare-fun bs!521749 () Bool)

(assert (= bs!521749 (and d!829066 d!829052)))

(assert (=> bs!521749 (not (= lambda!106939 lambda!106935))))

(declare-fun bs!521750 () Bool)

(assert (= bs!521750 (and d!829066 d!829040)))

(assert (=> bs!521750 (not (= lambda!106939 lambda!106934))))

(declare-fun bs!521751 () Bool)

(assert (= bs!521751 (and d!829066 d!829030)))

(assert (=> bs!521751 (not (= lambda!106939 lambda!106925))))

(assert (=> d!829066 true))

(assert (=> d!829066 (< (dynLambda!14293 order!18109 lambda!106934) (dynLambda!14293 order!18109 lambda!106939))))

(assert (=> d!829066 (= (exists!1144 (exprs!3185 (Context!5371 (t!233520 (exprs!3185 c!7184)))) lambda!106934) (not (forall!7069 (exprs!3185 (Context!5371 (t!233520 (exprs!3185 c!7184)))) lambda!106939)))))

(declare-fun bs!521752 () Bool)

(assert (= bs!521752 d!829066))

(declare-fun m!3287907 () Bool)

(assert (=> bs!521752 m!3287907))

(assert (=> d!829040 d!829066))

(declare-fun b!2868225 () Bool)

(declare-fun e!1815613 () Bool)

(declare-fun tp!923153 () Bool)

(declare-fun tp!923152 () Bool)

(assert (=> b!2868225 (= e!1815613 (and tp!923153 tp!923152))))

(declare-fun b!2868222 () Bool)

(declare-fun tp_is_empty!15053 () Bool)

(assert (=> b!2868222 (= e!1815613 tp_is_empty!15053)))

(declare-fun b!2868224 () Bool)

(declare-fun tp!923151 () Bool)

(assert (=> b!2868224 (= e!1815613 tp!923151)))

(assert (=> b!2868115 (= tp!923139 e!1815613)))

(declare-fun b!2868223 () Bool)

(declare-fun tp!923155 () Bool)

(declare-fun tp!923154 () Bool)

(assert (=> b!2868223 (= e!1815613 (and tp!923155 tp!923154))))

(assert (= (and b!2868115 ((_ is ElementMatch!8725) (h!39773 (exprs!3185 c!7184)))) b!2868222))

(assert (= (and b!2868115 ((_ is Concat!14046) (h!39773 (exprs!3185 c!7184)))) b!2868223))

(assert (= (and b!2868115 ((_ is Star!8725) (h!39773 (exprs!3185 c!7184)))) b!2868224))

(assert (= (and b!2868115 ((_ is Union!8725) (h!39773 (exprs!3185 c!7184)))) b!2868225))

(declare-fun b!2868226 () Bool)

(declare-fun e!1815614 () Bool)

(declare-fun tp!923156 () Bool)

(declare-fun tp!923157 () Bool)

(assert (=> b!2868226 (= e!1815614 (and tp!923156 tp!923157))))

(assert (=> b!2868115 (= tp!923140 e!1815614)))

(assert (= (and b!2868115 ((_ is Cons!34353) (t!233520 (exprs!3185 c!7184)))) b!2868226))

(declare-fun b_lambda!85957 () Bool)

(assert (= b_lambda!85955 (or d!829036 b_lambda!85957)))

(declare-fun bs!521753 () Bool)

(declare-fun d!829068 () Bool)

(assert (= bs!521753 (and d!829068 d!829036)))

(assert (=> bs!521753 (= (dynLambda!14294 lambda!106931 (h!39773 (exprs!3185 c!7184))) (validRegex!3503 (h!39773 (exprs!3185 c!7184))))))

(assert (=> bs!521753 m!3287777))

(assert (=> b!2868210 d!829068))

(check-sat (not b!2868200) (not b!2868211) (not b!2868174) (not b!2868148) (not d!829042) (not b!2868132) (not d!829052) (not b!2868167) (not b!2868226) (not b!2868126) (not d!829050) (not b!2868223) (not bm!185055) (not bs!521753) (not bm!185045) (not d!829060) (not bm!185052) (not b!2868166) (not bm!185051) (not d!829066) (not b_lambda!85957) (not bm!185046) (not b!2868169) (not d!829044) (not b!2868224) (not bm!185047) (not b!2868161) tp_is_empty!15053 (not bm!185049) (not b!2868225) (not b!2868125) (not bm!185054) (not bm!185044) (not bm!185048) (not b!2868191) (not b!2868162))
(check-sat)

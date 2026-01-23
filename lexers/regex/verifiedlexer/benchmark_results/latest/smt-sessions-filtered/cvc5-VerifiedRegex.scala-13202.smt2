; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!719586 () Bool)

(assert start!719586)

(declare-fun b!7373614 () Bool)

(declare-fun e!4414181 () Bool)

(declare-fun e!4414184 () Bool)

(assert (=> b!7373614 (= e!4414181 e!4414184)))

(declare-fun res!2974942 () Bool)

(assert (=> b!7373614 (=> (not res!2974942) (not e!4414184))))

(declare-datatypes ((C!38858 0))(
  ( (C!38859 (val!29789 Int)) )
))
(declare-datatypes ((Regex!19292 0))(
  ( (ElementMatch!19292 (c!1370494 C!38858)) (Concat!28137 (regOne!39096 Regex!19292) (regTwo!39096 Regex!19292)) (EmptyExpr!19292) (Star!19292 (reg!19621 Regex!19292)) (EmptyLang!19292) (Union!19292 (regOne!39097 Regex!19292) (regTwo!39097 Regex!19292)) )
))
(declare-fun r1!2370 () Regex!19292)

(declare-fun c!10362 () C!38858)

(assert (=> b!7373614 (= res!2974942 (and (or (not (is-ElementMatch!19292 r1!2370)) (not (= c!10362 (c!1370494 r1!2370)))) (not (is-Union!19292 r1!2370))))))

(declare-datatypes ((List!71788 0))(
  ( (Nil!71664) (Cons!71664 (h!78112 Regex!19292) (t!386259 List!71788)) )
))
(declare-datatypes ((Context!16464 0))(
  ( (Context!16465 (exprs!8732 List!71788)) )
))
(declare-fun lt!2616088 () (Set Context!16464))

(declare-fun ct1!282 () Context!16464)

(declare-fun ct2!378 () Context!16464)

(declare-fun derivationStepZipperDown!3118 (Regex!19292 Context!16464 C!38858) (Set Context!16464))

(declare-fun ++!17108 (List!71788 List!71788) List!71788)

(assert (=> b!7373614 (= lt!2616088 (derivationStepZipperDown!3118 r1!2370 (Context!16465 (++!17108 (exprs!8732 ct1!282) (exprs!8732 ct2!378))) c!10362))))

(declare-fun lambda!458226 () Int)

(declare-datatypes ((Unit!165533 0))(
  ( (Unit!165534) )
))
(declare-fun lt!2616089 () Unit!165533)

(declare-fun lemmaConcatPreservesForall!1965 (List!71788 List!71788 Int) Unit!165533)

(assert (=> b!7373614 (= lt!2616089 (lemmaConcatPreservesForall!1965 (exprs!8732 ct1!282) (exprs!8732 ct2!378) lambda!458226))))

(declare-fun b!7373615 () Bool)

(declare-fun e!4414183 () Bool)

(declare-fun tp!2096338 () Bool)

(assert (=> b!7373615 (= e!4414183 tp!2096338)))

(declare-fun res!2974945 () Bool)

(assert (=> start!719586 (=> (not res!2974945) (not e!4414181))))

(declare-fun validRegex!9888 (Regex!19292) Bool)

(assert (=> start!719586 (= res!2974945 (validRegex!9888 r1!2370))))

(assert (=> start!719586 e!4414181))

(declare-fun tp_is_empty!48829 () Bool)

(assert (=> start!719586 tp_is_empty!48829))

(declare-fun cWitness!61 () Context!16464)

(declare-fun e!4414186 () Bool)

(declare-fun inv!91571 (Context!16464) Bool)

(assert (=> start!719586 (and (inv!91571 cWitness!61) e!4414186)))

(assert (=> start!719586 (and (inv!91571 ct1!282) e!4414183)))

(declare-fun e!4414185 () Bool)

(assert (=> start!719586 e!4414185))

(declare-fun e!4414182 () Bool)

(assert (=> start!719586 (and (inv!91571 ct2!378) e!4414182)))

(declare-fun b!7373616 () Bool)

(declare-fun tp!2096334 () Bool)

(assert (=> b!7373616 (= e!4414185 tp!2096334)))

(declare-fun b!7373617 () Bool)

(declare-fun tp!2096341 () Bool)

(declare-fun tp!2096337 () Bool)

(assert (=> b!7373617 (= e!4414185 (and tp!2096341 tp!2096337))))

(declare-fun b!7373618 () Bool)

(declare-fun e!4414187 () Bool)

(declare-fun nullable!8368 (Regex!19292) Bool)

(assert (=> b!7373618 (= e!4414187 (not (nullable!8368 (regOne!39096 r1!2370))))))

(declare-fun b!7373619 () Bool)

(assert (=> b!7373619 (= e!4414185 tp_is_empty!48829)))

(declare-fun b!7373620 () Bool)

(declare-fun tp!2096340 () Bool)

(assert (=> b!7373620 (= e!4414186 tp!2096340)))

(declare-fun b!7373621 () Bool)

(declare-fun $colon$colon!3274 (List!71788 Regex!19292) List!71788)

(assert (=> b!7373621 (= e!4414184 (not (inv!91571 (Context!16465 ($colon$colon!3274 (exprs!8732 ct1!282) (regTwo!39096 r1!2370))))))))

(declare-fun b!7373622 () Bool)

(declare-fun tp!2096339 () Bool)

(declare-fun tp!2096336 () Bool)

(assert (=> b!7373622 (= e!4414185 (and tp!2096339 tp!2096336))))

(declare-fun b!7373623 () Bool)

(declare-fun res!2974943 () Bool)

(assert (=> b!7373623 (=> (not res!2974943) (not e!4414184))))

(assert (=> b!7373623 (= res!2974943 (is-Concat!28137 r1!2370))))

(declare-fun b!7373624 () Bool)

(declare-fun res!2974939 () Bool)

(assert (=> b!7373624 (=> (not res!2974939) (not e!4414184))))

(assert (=> b!7373624 (= res!2974939 (validRegex!9888 (regTwo!39096 r1!2370)))))

(declare-fun b!7373625 () Bool)

(declare-fun res!2974944 () Bool)

(assert (=> b!7373625 (=> (not res!2974944) (not e!4414184))))

(assert (=> b!7373625 (= res!2974944 e!4414187)))

(declare-fun res!2974940 () Bool)

(assert (=> b!7373625 (=> res!2974940 e!4414187)))

(assert (=> b!7373625 (= res!2974940 (not (is-Concat!28137 r1!2370)))))

(declare-fun b!7373626 () Bool)

(declare-fun res!2974941 () Bool)

(assert (=> b!7373626 (=> (not res!2974941) (not e!4414181))))

(assert (=> b!7373626 (= res!2974941 (set.member cWitness!61 (derivationStepZipperDown!3118 r1!2370 ct1!282 c!10362)))))

(declare-fun b!7373627 () Bool)

(declare-fun tp!2096335 () Bool)

(assert (=> b!7373627 (= e!4414182 tp!2096335)))

(assert (= (and start!719586 res!2974945) b!7373626))

(assert (= (and b!7373626 res!2974941) b!7373614))

(assert (= (and b!7373614 res!2974942) b!7373625))

(assert (= (and b!7373625 (not res!2974940)) b!7373618))

(assert (= (and b!7373625 res!2974944) b!7373623))

(assert (= (and b!7373623 res!2974943) b!7373624))

(assert (= (and b!7373624 res!2974939) b!7373621))

(assert (= start!719586 b!7373620))

(assert (= start!719586 b!7373615))

(assert (= (and start!719586 (is-ElementMatch!19292 r1!2370)) b!7373619))

(assert (= (and start!719586 (is-Concat!28137 r1!2370)) b!7373622))

(assert (= (and start!719586 (is-Star!19292 r1!2370)) b!7373616))

(assert (= (and start!719586 (is-Union!19292 r1!2370)) b!7373617))

(assert (= start!719586 b!7373627))

(declare-fun m!8026570 () Bool)

(assert (=> b!7373624 m!8026570))

(declare-fun m!8026572 () Bool)

(assert (=> b!7373621 m!8026572))

(declare-fun m!8026574 () Bool)

(assert (=> b!7373621 m!8026574))

(declare-fun m!8026576 () Bool)

(assert (=> b!7373626 m!8026576))

(declare-fun m!8026578 () Bool)

(assert (=> b!7373626 m!8026578))

(declare-fun m!8026580 () Bool)

(assert (=> b!7373614 m!8026580))

(declare-fun m!8026582 () Bool)

(assert (=> b!7373614 m!8026582))

(declare-fun m!8026584 () Bool)

(assert (=> b!7373614 m!8026584))

(declare-fun m!8026586 () Bool)

(assert (=> start!719586 m!8026586))

(declare-fun m!8026588 () Bool)

(assert (=> start!719586 m!8026588))

(declare-fun m!8026590 () Bool)

(assert (=> start!719586 m!8026590))

(declare-fun m!8026592 () Bool)

(assert (=> start!719586 m!8026592))

(declare-fun m!8026594 () Bool)

(assert (=> b!7373618 m!8026594))

(push 1)

(assert (not b!7373615))

(assert (not b!7373618))

(assert (not b!7373622))

(assert (not b!7373626))

(assert (not b!7373624))

(assert (not b!7373616))

(assert (not b!7373617))

(assert tp_is_empty!48829)

(assert (not b!7373614))

(assert (not b!7373621))

(assert (not b!7373620))

(assert (not start!719586))

(assert (not b!7373627))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!7373688 () Bool)

(declare-fun e!4414223 () Bool)

(declare-fun call!677582 () Bool)

(assert (=> b!7373688 (= e!4414223 call!677582)))

(declare-fun d!2284185 () Bool)

(declare-fun res!2974979 () Bool)

(declare-fun e!4414225 () Bool)

(assert (=> d!2284185 (=> res!2974979 e!4414225)))

(assert (=> d!2284185 (= res!2974979 (is-ElementMatch!19292 (regTwo!39096 r1!2370)))))

(assert (=> d!2284185 (= (validRegex!9888 (regTwo!39096 r1!2370)) e!4414225)))

(declare-fun b!7373689 () Bool)

(declare-fun res!2974981 () Bool)

(declare-fun e!4414229 () Bool)

(assert (=> b!7373689 (=> res!2974981 e!4414229)))

(assert (=> b!7373689 (= res!2974981 (not (is-Concat!28137 (regTwo!39096 r1!2370))))))

(declare-fun e!4414227 () Bool)

(assert (=> b!7373689 (= e!4414227 e!4414229)))

(declare-fun b!7373690 () Bool)

(declare-fun e!4414224 () Bool)

(assert (=> b!7373690 (= e!4414225 e!4414224)))

(declare-fun c!1370501 () Bool)

(assert (=> b!7373690 (= c!1370501 (is-Star!19292 (regTwo!39096 r1!2370)))))

(declare-fun b!7373691 () Bool)

(assert (=> b!7373691 (= e!4414229 e!4414223)))

(declare-fun res!2974977 () Bool)

(assert (=> b!7373691 (=> (not res!2974977) (not e!4414223))))

(declare-fun call!677583 () Bool)

(assert (=> b!7373691 (= res!2974977 call!677583)))

(declare-fun b!7373692 () Bool)

(declare-fun e!4414228 () Bool)

(declare-fun call!677584 () Bool)

(assert (=> b!7373692 (= e!4414228 call!677584)))

(declare-fun c!1370500 () Bool)

(declare-fun bm!677577 () Bool)

(assert (=> bm!677577 (= call!677584 (validRegex!9888 (ite c!1370501 (reg!19621 (regTwo!39096 r1!2370)) (ite c!1370500 (regOne!39097 (regTwo!39096 r1!2370)) (regTwo!39096 (regTwo!39096 r1!2370))))))))

(declare-fun b!7373693 () Bool)

(assert (=> b!7373693 (= e!4414224 e!4414228)))

(declare-fun res!2974980 () Bool)

(assert (=> b!7373693 (= res!2974980 (not (nullable!8368 (reg!19621 (regTwo!39096 r1!2370)))))))

(assert (=> b!7373693 (=> (not res!2974980) (not e!4414228))))

(declare-fun b!7373694 () Bool)

(declare-fun e!4414226 () Bool)

(assert (=> b!7373694 (= e!4414226 call!677583)))

(declare-fun b!7373695 () Bool)

(assert (=> b!7373695 (= e!4414224 e!4414227)))

(assert (=> b!7373695 (= c!1370500 (is-Union!19292 (regTwo!39096 r1!2370)))))

(declare-fun b!7373696 () Bool)

(declare-fun res!2974978 () Bool)

(assert (=> b!7373696 (=> (not res!2974978) (not e!4414226))))

(assert (=> b!7373696 (= res!2974978 call!677582)))

(assert (=> b!7373696 (= e!4414227 e!4414226)))

(declare-fun bm!677578 () Bool)

(assert (=> bm!677578 (= call!677583 (validRegex!9888 (ite c!1370500 (regTwo!39097 (regTwo!39096 r1!2370)) (regOne!39096 (regTwo!39096 r1!2370)))))))

(declare-fun bm!677579 () Bool)

(assert (=> bm!677579 (= call!677582 call!677584)))

(assert (= (and d!2284185 (not res!2974979)) b!7373690))

(assert (= (and b!7373690 c!1370501) b!7373693))

(assert (= (and b!7373690 (not c!1370501)) b!7373695))

(assert (= (and b!7373693 res!2974980) b!7373692))

(assert (= (and b!7373695 c!1370500) b!7373696))

(assert (= (and b!7373695 (not c!1370500)) b!7373689))

(assert (= (and b!7373696 res!2974978) b!7373694))

(assert (= (and b!7373689 (not res!2974981)) b!7373691))

(assert (= (and b!7373691 res!2974977) b!7373688))

(assert (= (or b!7373696 b!7373688) bm!677579))

(assert (= (or b!7373694 b!7373691) bm!677578))

(assert (= (or b!7373692 bm!677579) bm!677577))

(declare-fun m!8026622 () Bool)

(assert (=> bm!677577 m!8026622))

(declare-fun m!8026624 () Bool)

(assert (=> b!7373693 m!8026624))

(declare-fun m!8026626 () Bool)

(assert (=> bm!677578 m!8026626))

(assert (=> b!7373624 d!2284185))

(declare-fun d!2284189 () Bool)

(declare-fun nullableFct!3349 (Regex!19292) Bool)

(assert (=> d!2284189 (= (nullable!8368 (regOne!39096 r1!2370)) (nullableFct!3349 (regOne!39096 r1!2370)))))

(declare-fun bs!1921104 () Bool)

(assert (= bs!1921104 d!2284189))

(declare-fun m!8026628 () Bool)

(assert (=> bs!1921104 m!8026628))

(assert (=> b!7373618 d!2284189))

(declare-fun b!7373697 () Bool)

(declare-fun e!4414230 () Bool)

(declare-fun call!677585 () Bool)

(assert (=> b!7373697 (= e!4414230 call!677585)))

(declare-fun d!2284191 () Bool)

(declare-fun res!2974984 () Bool)

(declare-fun e!4414232 () Bool)

(assert (=> d!2284191 (=> res!2974984 e!4414232)))

(assert (=> d!2284191 (= res!2974984 (is-ElementMatch!19292 r1!2370))))

(assert (=> d!2284191 (= (validRegex!9888 r1!2370) e!4414232)))

(declare-fun b!7373698 () Bool)

(declare-fun res!2974986 () Bool)

(declare-fun e!4414236 () Bool)

(assert (=> b!7373698 (=> res!2974986 e!4414236)))

(assert (=> b!7373698 (= res!2974986 (not (is-Concat!28137 r1!2370)))))

(declare-fun e!4414234 () Bool)

(assert (=> b!7373698 (= e!4414234 e!4414236)))

(declare-fun b!7373699 () Bool)

(declare-fun e!4414231 () Bool)

(assert (=> b!7373699 (= e!4414232 e!4414231)))

(declare-fun c!1370503 () Bool)

(assert (=> b!7373699 (= c!1370503 (is-Star!19292 r1!2370))))

(declare-fun b!7373700 () Bool)

(assert (=> b!7373700 (= e!4414236 e!4414230)))

(declare-fun res!2974982 () Bool)

(assert (=> b!7373700 (=> (not res!2974982) (not e!4414230))))

(declare-fun call!677586 () Bool)

(assert (=> b!7373700 (= res!2974982 call!677586)))

(declare-fun b!7373701 () Bool)

(declare-fun e!4414235 () Bool)

(declare-fun call!677587 () Bool)

(assert (=> b!7373701 (= e!4414235 call!677587)))

(declare-fun c!1370502 () Bool)

(declare-fun bm!677580 () Bool)

(assert (=> bm!677580 (= call!677587 (validRegex!9888 (ite c!1370503 (reg!19621 r1!2370) (ite c!1370502 (regOne!39097 r1!2370) (regTwo!39096 r1!2370)))))))

(declare-fun b!7373702 () Bool)

(assert (=> b!7373702 (= e!4414231 e!4414235)))

(declare-fun res!2974985 () Bool)

(assert (=> b!7373702 (= res!2974985 (not (nullable!8368 (reg!19621 r1!2370))))))

(assert (=> b!7373702 (=> (not res!2974985) (not e!4414235))))

(declare-fun b!7373703 () Bool)

(declare-fun e!4414233 () Bool)

(assert (=> b!7373703 (= e!4414233 call!677586)))

(declare-fun b!7373704 () Bool)

(assert (=> b!7373704 (= e!4414231 e!4414234)))

(assert (=> b!7373704 (= c!1370502 (is-Union!19292 r1!2370))))

(declare-fun b!7373705 () Bool)

(declare-fun res!2974983 () Bool)

(assert (=> b!7373705 (=> (not res!2974983) (not e!4414233))))

(assert (=> b!7373705 (= res!2974983 call!677585)))

(assert (=> b!7373705 (= e!4414234 e!4414233)))

(declare-fun bm!677581 () Bool)

(assert (=> bm!677581 (= call!677586 (validRegex!9888 (ite c!1370502 (regTwo!39097 r1!2370) (regOne!39096 r1!2370))))))

(declare-fun bm!677582 () Bool)

(assert (=> bm!677582 (= call!677585 call!677587)))

(assert (= (and d!2284191 (not res!2974984)) b!7373699))

(assert (= (and b!7373699 c!1370503) b!7373702))

(assert (= (and b!7373699 (not c!1370503)) b!7373704))

(assert (= (and b!7373702 res!2974985) b!7373701))

(assert (= (and b!7373704 c!1370502) b!7373705))

(assert (= (and b!7373704 (not c!1370502)) b!7373698))

(assert (= (and b!7373705 res!2974983) b!7373703))

(assert (= (and b!7373698 (not res!2974986)) b!7373700))

(assert (= (and b!7373700 res!2974982) b!7373697))

(assert (= (or b!7373705 b!7373697) bm!677582))

(assert (= (or b!7373703 b!7373700) bm!677581))

(assert (= (or b!7373701 bm!677582) bm!677580))

(declare-fun m!8026630 () Bool)

(assert (=> bm!677580 m!8026630))

(declare-fun m!8026632 () Bool)

(assert (=> b!7373702 m!8026632))

(declare-fun m!8026634 () Bool)

(assert (=> bm!677581 m!8026634))

(assert (=> start!719586 d!2284191))

(declare-fun bs!1921105 () Bool)

(declare-fun d!2284193 () Bool)

(assert (= bs!1921105 (and d!2284193 b!7373614)))

(declare-fun lambda!458232 () Int)

(assert (=> bs!1921105 (= lambda!458232 lambda!458226)))

(declare-fun forall!18092 (List!71788 Int) Bool)

(assert (=> d!2284193 (= (inv!91571 cWitness!61) (forall!18092 (exprs!8732 cWitness!61) lambda!458232))))

(declare-fun bs!1921106 () Bool)

(assert (= bs!1921106 d!2284193))

(declare-fun m!8026636 () Bool)

(assert (=> bs!1921106 m!8026636))

(assert (=> start!719586 d!2284193))

(declare-fun bs!1921107 () Bool)

(declare-fun d!2284195 () Bool)

(assert (= bs!1921107 (and d!2284195 b!7373614)))

(declare-fun lambda!458233 () Int)

(assert (=> bs!1921107 (= lambda!458233 lambda!458226)))

(declare-fun bs!1921108 () Bool)

(assert (= bs!1921108 (and d!2284195 d!2284193)))

(assert (=> bs!1921108 (= lambda!458233 lambda!458232)))

(assert (=> d!2284195 (= (inv!91571 ct1!282) (forall!18092 (exprs!8732 ct1!282) lambda!458233))))

(declare-fun bs!1921109 () Bool)

(assert (= bs!1921109 d!2284195))

(declare-fun m!8026638 () Bool)

(assert (=> bs!1921109 m!8026638))

(assert (=> start!719586 d!2284195))

(declare-fun bs!1921110 () Bool)

(declare-fun d!2284197 () Bool)

(assert (= bs!1921110 (and d!2284197 b!7373614)))

(declare-fun lambda!458234 () Int)

(assert (=> bs!1921110 (= lambda!458234 lambda!458226)))

(declare-fun bs!1921111 () Bool)

(assert (= bs!1921111 (and d!2284197 d!2284193)))

(assert (=> bs!1921111 (= lambda!458234 lambda!458232)))

(declare-fun bs!1921112 () Bool)

(assert (= bs!1921112 (and d!2284197 d!2284195)))

(assert (=> bs!1921112 (= lambda!458234 lambda!458233)))

(assert (=> d!2284197 (= (inv!91571 ct2!378) (forall!18092 (exprs!8732 ct2!378) lambda!458234))))

(declare-fun bs!1921113 () Bool)

(assert (= bs!1921113 d!2284197))

(declare-fun m!8026640 () Bool)

(assert (=> bs!1921113 m!8026640))

(assert (=> start!719586 d!2284197))

(declare-fun b!7373750 () Bool)

(declare-fun e!4414261 () (Set Context!16464))

(assert (=> b!7373750 (= e!4414261 (as set.empty (Set Context!16464)))))

(declare-fun b!7373751 () Bool)

(declare-fun call!677612 () (Set Context!16464))

(assert (=> b!7373751 (= e!4414261 call!677612)))

(declare-fun bm!677607 () Bool)

(declare-fun call!677617 () (Set Context!16464))

(assert (=> bm!677607 (= call!677612 call!677617)))

(declare-fun c!1370526 () Bool)

(declare-fun c!1370525 () Bool)

(declare-fun bm!677608 () Bool)

(declare-fun call!677615 () List!71788)

(assert (=> bm!677608 (= call!677615 ($colon$colon!3274 (exprs!8732 (Context!16465 (++!17108 (exprs!8732 ct1!282) (exprs!8732 ct2!378)))) (ite (or c!1370526 c!1370525) (regTwo!39096 r1!2370) r1!2370)))))

(declare-fun b!7373752 () Bool)

(declare-fun e!4414263 () Bool)

(assert (=> b!7373752 (= c!1370526 e!4414263)))

(declare-fun res!2974991 () Bool)

(assert (=> b!7373752 (=> (not res!2974991) (not e!4414263))))

(assert (=> b!7373752 (= res!2974991 (is-Concat!28137 r1!2370))))

(declare-fun e!4414264 () (Set Context!16464))

(declare-fun e!4414266 () (Set Context!16464))

(assert (=> b!7373752 (= e!4414264 e!4414266)))

(declare-fun b!7373754 () Bool)

(declare-fun e!4414265 () (Set Context!16464))

(assert (=> b!7373754 (= e!4414265 e!4414264)))

(declare-fun c!1370528 () Bool)

(assert (=> b!7373754 (= c!1370528 (is-Union!19292 r1!2370))))

(declare-fun b!7373755 () Bool)

(declare-fun e!4414262 () (Set Context!16464))

(assert (=> b!7373755 (= e!4414266 e!4414262)))

(assert (=> b!7373755 (= c!1370525 (is-Concat!28137 r1!2370))))

(declare-fun b!7373756 () Bool)

(assert (=> b!7373756 (= e!4414263 (nullable!8368 (regOne!39096 r1!2370)))))

(declare-fun bm!677609 () Bool)

(declare-fun call!677616 () List!71788)

(assert (=> bm!677609 (= call!677616 call!677615)))

(declare-fun b!7373757 () Bool)

(declare-fun c!1370524 () Bool)

(assert (=> b!7373757 (= c!1370524 (is-Star!19292 r1!2370))))

(assert (=> b!7373757 (= e!4414262 e!4414261)))

(declare-fun b!7373758 () Bool)

(assert (=> b!7373758 (= e!4414265 (set.insert (Context!16465 (++!17108 (exprs!8732 ct1!282) (exprs!8732 ct2!378))) (as set.empty (Set Context!16464))))))

(declare-fun d!2284199 () Bool)

(declare-fun c!1370527 () Bool)

(assert (=> d!2284199 (= c!1370527 (and (is-ElementMatch!19292 r1!2370) (= (c!1370494 r1!2370) c!10362)))))

(assert (=> d!2284199 (= (derivationStepZipperDown!3118 r1!2370 (Context!16465 (++!17108 (exprs!8732 ct1!282) (exprs!8732 ct2!378))) c!10362) e!4414265)))

(declare-fun b!7373753 () Bool)

(declare-fun call!677613 () (Set Context!16464))

(assert (=> b!7373753 (= e!4414266 (set.union call!677613 call!677617))))

(declare-fun b!7373759 () Bool)

(assert (=> b!7373759 (= e!4414262 call!677612)))

(declare-fun bm!677610 () Bool)

(declare-fun call!677614 () (Set Context!16464))

(assert (=> bm!677610 (= call!677617 call!677614)))

(declare-fun bm!677611 () Bool)

(assert (=> bm!677611 (= call!677614 (derivationStepZipperDown!3118 (ite c!1370528 (regOne!39097 r1!2370) (ite c!1370526 (regTwo!39096 r1!2370) (ite c!1370525 (regOne!39096 r1!2370) (reg!19621 r1!2370)))) (ite (or c!1370528 c!1370526) (Context!16465 (++!17108 (exprs!8732 ct1!282) (exprs!8732 ct2!378))) (Context!16465 call!677616)) c!10362))))

(declare-fun b!7373760 () Bool)

(assert (=> b!7373760 (= e!4414264 (set.union call!677614 call!677613))))

(declare-fun bm!677612 () Bool)

(assert (=> bm!677612 (= call!677613 (derivationStepZipperDown!3118 (ite c!1370528 (regTwo!39097 r1!2370) (regOne!39096 r1!2370)) (ite c!1370528 (Context!16465 (++!17108 (exprs!8732 ct1!282) (exprs!8732 ct2!378))) (Context!16465 call!677615)) c!10362))))

(assert (= (and d!2284199 c!1370527) b!7373758))

(assert (= (and d!2284199 (not c!1370527)) b!7373754))

(assert (= (and b!7373754 c!1370528) b!7373760))

(assert (= (and b!7373754 (not c!1370528)) b!7373752))

(assert (= (and b!7373752 res!2974991) b!7373756))

(assert (= (and b!7373752 c!1370526) b!7373753))

(assert (= (and b!7373752 (not c!1370526)) b!7373755))

(assert (= (and b!7373755 c!1370525) b!7373759))

(assert (= (and b!7373755 (not c!1370525)) b!7373757))

(assert (= (and b!7373757 c!1370524) b!7373751))

(assert (= (and b!7373757 (not c!1370524)) b!7373750))

(assert (= (or b!7373759 b!7373751) bm!677609))

(assert (= (or b!7373759 b!7373751) bm!677607))

(assert (= (or b!7373753 bm!677607) bm!677610))

(assert (= (or b!7373753 bm!677609) bm!677608))

(assert (= (or b!7373760 b!7373753) bm!677612))

(assert (= (or b!7373760 bm!677610) bm!677611))

(declare-fun m!8026642 () Bool)

(assert (=> bm!677608 m!8026642))

(declare-fun m!8026644 () Bool)

(assert (=> bm!677612 m!8026644))

(assert (=> b!7373756 m!8026594))

(declare-fun m!8026646 () Bool)

(assert (=> bm!677611 m!8026646))

(declare-fun m!8026648 () Bool)

(assert (=> b!7373758 m!8026648))

(assert (=> b!7373614 d!2284199))

(declare-fun b!7373782 () Bool)

(declare-fun res!2974998 () Bool)

(declare-fun e!4414278 () Bool)

(assert (=> b!7373782 (=> (not res!2974998) (not e!4414278))))

(declare-fun lt!2616098 () List!71788)

(declare-fun size!42144 (List!71788) Int)

(assert (=> b!7373782 (= res!2974998 (= (size!42144 lt!2616098) (+ (size!42144 (exprs!8732 ct1!282)) (size!42144 (exprs!8732 ct2!378)))))))

(declare-fun b!7373783 () Bool)

(assert (=> b!7373783 (= e!4414278 (or (not (= (exprs!8732 ct2!378) Nil!71664)) (= lt!2616098 (exprs!8732 ct1!282))))))

(declare-fun b!7373781 () Bool)

(declare-fun e!4414277 () List!71788)

(assert (=> b!7373781 (= e!4414277 (Cons!71664 (h!78112 (exprs!8732 ct1!282)) (++!17108 (t!386259 (exprs!8732 ct1!282)) (exprs!8732 ct2!378))))))

(declare-fun d!2284201 () Bool)

(assert (=> d!2284201 e!4414278))

(declare-fun res!2974997 () Bool)

(assert (=> d!2284201 (=> (not res!2974997) (not e!4414278))))

(declare-fun content!15166 (List!71788) (Set Regex!19292))

(assert (=> d!2284201 (= res!2974997 (= (content!15166 lt!2616098) (set.union (content!15166 (exprs!8732 ct1!282)) (content!15166 (exprs!8732 ct2!378)))))))

(assert (=> d!2284201 (= lt!2616098 e!4414277)))

(declare-fun c!1370536 () Bool)

(assert (=> d!2284201 (= c!1370536 (is-Nil!71664 (exprs!8732 ct1!282)))))

(assert (=> d!2284201 (= (++!17108 (exprs!8732 ct1!282) (exprs!8732 ct2!378)) lt!2616098)))

(declare-fun b!7373780 () Bool)

(assert (=> b!7373780 (= e!4414277 (exprs!8732 ct2!378))))

(assert (= (and d!2284201 c!1370536) b!7373780))

(assert (= (and d!2284201 (not c!1370536)) b!7373781))

(assert (= (and d!2284201 res!2974997) b!7373782))

(assert (= (and b!7373782 res!2974998) b!7373783))

(declare-fun m!8026658 () Bool)

(assert (=> b!7373782 m!8026658))

(declare-fun m!8026660 () Bool)

(assert (=> b!7373782 m!8026660))

(declare-fun m!8026662 () Bool)

(assert (=> b!7373782 m!8026662))

(declare-fun m!8026664 () Bool)

(assert (=> b!7373781 m!8026664))

(declare-fun m!8026666 () Bool)

(assert (=> d!2284201 m!8026666))

(declare-fun m!8026668 () Bool)

(assert (=> d!2284201 m!8026668))

(declare-fun m!8026670 () Bool)

(assert (=> d!2284201 m!8026670))

(assert (=> b!7373614 d!2284201))

(declare-fun d!2284205 () Bool)

(assert (=> d!2284205 (forall!18092 (++!17108 (exprs!8732 ct1!282) (exprs!8732 ct2!378)) lambda!458226)))

(declare-fun lt!2616101 () Unit!165533)

(declare-fun choose!57320 (List!71788 List!71788 Int) Unit!165533)

(assert (=> d!2284205 (= lt!2616101 (choose!57320 (exprs!8732 ct1!282) (exprs!8732 ct2!378) lambda!458226))))

(assert (=> d!2284205 (forall!18092 (exprs!8732 ct1!282) lambda!458226)))

(assert (=> d!2284205 (= (lemmaConcatPreservesForall!1965 (exprs!8732 ct1!282) (exprs!8732 ct2!378) lambda!458226) lt!2616101)))

(declare-fun bs!1921116 () Bool)

(assert (= bs!1921116 d!2284205))

(assert (=> bs!1921116 m!8026580))

(assert (=> bs!1921116 m!8026580))

(declare-fun m!8026674 () Bool)

(assert (=> bs!1921116 m!8026674))

(declare-fun m!8026676 () Bool)

(assert (=> bs!1921116 m!8026676))

(declare-fun m!8026678 () Bool)

(assert (=> bs!1921116 m!8026678))

(assert (=> b!7373614 d!2284205))

(declare-fun b!7373784 () Bool)

(declare-fun e!4414279 () (Set Context!16464))

(assert (=> b!7373784 (= e!4414279 (as set.empty (Set Context!16464)))))

(declare-fun b!7373785 () Bool)

(declare-fun call!677624 () (Set Context!16464))

(assert (=> b!7373785 (= e!4414279 call!677624)))

(declare-fun bm!677619 () Bool)

(declare-fun call!677629 () (Set Context!16464))

(assert (=> bm!677619 (= call!677624 call!677629)))

(declare-fun call!677627 () List!71788)

(declare-fun c!1370539 () Bool)

(declare-fun bm!677620 () Bool)

(declare-fun c!1370538 () Bool)

(assert (=> bm!677620 (= call!677627 ($colon$colon!3274 (exprs!8732 ct1!282) (ite (or c!1370539 c!1370538) (regTwo!39096 r1!2370) r1!2370)))))

(declare-fun b!7373786 () Bool)

(declare-fun e!4414281 () Bool)

(assert (=> b!7373786 (= c!1370539 e!4414281)))

(declare-fun res!2974999 () Bool)

(assert (=> b!7373786 (=> (not res!2974999) (not e!4414281))))

(assert (=> b!7373786 (= res!2974999 (is-Concat!28137 r1!2370))))

(declare-fun e!4414282 () (Set Context!16464))

(declare-fun e!4414284 () (Set Context!16464))

(assert (=> b!7373786 (= e!4414282 e!4414284)))

(declare-fun b!7373788 () Bool)

(declare-fun e!4414283 () (Set Context!16464))

(assert (=> b!7373788 (= e!4414283 e!4414282)))

(declare-fun c!1370541 () Bool)

(assert (=> b!7373788 (= c!1370541 (is-Union!19292 r1!2370))))

(declare-fun b!7373789 () Bool)

(declare-fun e!4414280 () (Set Context!16464))

(assert (=> b!7373789 (= e!4414284 e!4414280)))

(assert (=> b!7373789 (= c!1370538 (is-Concat!28137 r1!2370))))

(declare-fun b!7373790 () Bool)

(assert (=> b!7373790 (= e!4414281 (nullable!8368 (regOne!39096 r1!2370)))))

(declare-fun bm!677621 () Bool)

(declare-fun call!677628 () List!71788)

(assert (=> bm!677621 (= call!677628 call!677627)))

(declare-fun b!7373791 () Bool)

(declare-fun c!1370537 () Bool)

(assert (=> b!7373791 (= c!1370537 (is-Star!19292 r1!2370))))

(assert (=> b!7373791 (= e!4414280 e!4414279)))

(declare-fun b!7373792 () Bool)

(assert (=> b!7373792 (= e!4414283 (set.insert ct1!282 (as set.empty (Set Context!16464))))))

(declare-fun d!2284211 () Bool)

(declare-fun c!1370540 () Bool)

(assert (=> d!2284211 (= c!1370540 (and (is-ElementMatch!19292 r1!2370) (= (c!1370494 r1!2370) c!10362)))))

(assert (=> d!2284211 (= (derivationStepZipperDown!3118 r1!2370 ct1!282 c!10362) e!4414283)))

(declare-fun b!7373787 () Bool)

(declare-fun call!677625 () (Set Context!16464))

(assert (=> b!7373787 (= e!4414284 (set.union call!677625 call!677629))))

(declare-fun b!7373793 () Bool)

(assert (=> b!7373793 (= e!4414280 call!677624)))

(declare-fun bm!677622 () Bool)

(declare-fun call!677626 () (Set Context!16464))

(assert (=> bm!677622 (= call!677629 call!677626)))

(declare-fun bm!677623 () Bool)

(assert (=> bm!677623 (= call!677626 (derivationStepZipperDown!3118 (ite c!1370541 (regOne!39097 r1!2370) (ite c!1370539 (regTwo!39096 r1!2370) (ite c!1370538 (regOne!39096 r1!2370) (reg!19621 r1!2370)))) (ite (or c!1370541 c!1370539) ct1!282 (Context!16465 call!677628)) c!10362))))

(declare-fun b!7373794 () Bool)

(assert (=> b!7373794 (= e!4414282 (set.union call!677626 call!677625))))

(declare-fun bm!677624 () Bool)

(assert (=> bm!677624 (= call!677625 (derivationStepZipperDown!3118 (ite c!1370541 (regTwo!39097 r1!2370) (regOne!39096 r1!2370)) (ite c!1370541 ct1!282 (Context!16465 call!677627)) c!10362))))

(assert (= (and d!2284211 c!1370540) b!7373792))

(assert (= (and d!2284211 (not c!1370540)) b!7373788))

(assert (= (and b!7373788 c!1370541) b!7373794))

(assert (= (and b!7373788 (not c!1370541)) b!7373786))

(assert (= (and b!7373786 res!2974999) b!7373790))

(assert (= (and b!7373786 c!1370539) b!7373787))

(assert (= (and b!7373786 (not c!1370539)) b!7373789))

(assert (= (and b!7373789 c!1370538) b!7373793))

(assert (= (and b!7373789 (not c!1370538)) b!7373791))

(assert (= (and b!7373791 c!1370537) b!7373785))

(assert (= (and b!7373791 (not c!1370537)) b!7373784))

(assert (= (or b!7373793 b!7373785) bm!677621))

(assert (= (or b!7373793 b!7373785) bm!677619))

(assert (= (or b!7373787 bm!677619) bm!677622))

(assert (= (or b!7373787 bm!677621) bm!677620))

(assert (= (or b!7373794 b!7373787) bm!677624))

(assert (= (or b!7373794 bm!677622) bm!677623))

(declare-fun m!8026680 () Bool)

(assert (=> bm!677620 m!8026680))

(declare-fun m!8026682 () Bool)

(assert (=> bm!677624 m!8026682))

(assert (=> b!7373790 m!8026594))

(declare-fun m!8026684 () Bool)

(assert (=> bm!677623 m!8026684))

(declare-fun m!8026686 () Bool)

(assert (=> b!7373792 m!8026686))

(assert (=> b!7373626 d!2284211))

(declare-fun bs!1921117 () Bool)

(declare-fun d!2284213 () Bool)

(assert (= bs!1921117 (and d!2284213 b!7373614)))

(declare-fun lambda!458238 () Int)

(assert (=> bs!1921117 (= lambda!458238 lambda!458226)))

(declare-fun bs!1921118 () Bool)

(assert (= bs!1921118 (and d!2284213 d!2284193)))

(assert (=> bs!1921118 (= lambda!458238 lambda!458232)))

(declare-fun bs!1921119 () Bool)

(assert (= bs!1921119 (and d!2284213 d!2284195)))

(assert (=> bs!1921119 (= lambda!458238 lambda!458233)))

(declare-fun bs!1921120 () Bool)

(assert (= bs!1921120 (and d!2284213 d!2284197)))

(assert (=> bs!1921120 (= lambda!458238 lambda!458234)))

(assert (=> d!2284213 (= (inv!91571 (Context!16465 ($colon$colon!3274 (exprs!8732 ct1!282) (regTwo!39096 r1!2370)))) (forall!18092 (exprs!8732 (Context!16465 ($colon$colon!3274 (exprs!8732 ct1!282) (regTwo!39096 r1!2370)))) lambda!458238))))

(declare-fun bs!1921121 () Bool)

(assert (= bs!1921121 d!2284213))

(declare-fun m!8026688 () Bool)

(assert (=> bs!1921121 m!8026688))

(assert (=> b!7373621 d!2284213))

(declare-fun d!2284215 () Bool)

(assert (=> d!2284215 (= ($colon$colon!3274 (exprs!8732 ct1!282) (regTwo!39096 r1!2370)) (Cons!71664 (regTwo!39096 r1!2370) (exprs!8732 ct1!282)))))

(assert (=> b!7373621 d!2284215))

(declare-fun e!4414301 () Bool)

(assert (=> b!7373622 (= tp!2096339 e!4414301)))

(declare-fun b!7373826 () Bool)

(declare-fun tp!2096377 () Bool)

(declare-fun tp!2096378 () Bool)

(assert (=> b!7373826 (= e!4414301 (and tp!2096377 tp!2096378))))

(declare-fun b!7373825 () Bool)

(declare-fun tp!2096380 () Bool)

(assert (=> b!7373825 (= e!4414301 tp!2096380)))

(declare-fun b!7373824 () Bool)

(declare-fun tp!2096379 () Bool)

(declare-fun tp!2096376 () Bool)

(assert (=> b!7373824 (= e!4414301 (and tp!2096379 tp!2096376))))

(declare-fun b!7373823 () Bool)

(assert (=> b!7373823 (= e!4414301 tp_is_empty!48829)))

(assert (= (and b!7373622 (is-ElementMatch!19292 (regOne!39096 r1!2370))) b!7373823))

(assert (= (and b!7373622 (is-Concat!28137 (regOne!39096 r1!2370))) b!7373824))

(assert (= (and b!7373622 (is-Star!19292 (regOne!39096 r1!2370))) b!7373825))

(assert (= (and b!7373622 (is-Union!19292 (regOne!39096 r1!2370))) b!7373826))

(declare-fun e!4414302 () Bool)

(assert (=> b!7373622 (= tp!2096336 e!4414302)))

(declare-fun b!7373830 () Bool)

(declare-fun tp!2096382 () Bool)

(declare-fun tp!2096383 () Bool)

(assert (=> b!7373830 (= e!4414302 (and tp!2096382 tp!2096383))))

(declare-fun b!7373829 () Bool)

(declare-fun tp!2096385 () Bool)

(assert (=> b!7373829 (= e!4414302 tp!2096385)))

(declare-fun b!7373828 () Bool)

(declare-fun tp!2096384 () Bool)

(declare-fun tp!2096381 () Bool)

(assert (=> b!7373828 (= e!4414302 (and tp!2096384 tp!2096381))))

(declare-fun b!7373827 () Bool)

(assert (=> b!7373827 (= e!4414302 tp_is_empty!48829)))

(assert (= (and b!7373622 (is-ElementMatch!19292 (regTwo!39096 r1!2370))) b!7373827))

(assert (= (and b!7373622 (is-Concat!28137 (regTwo!39096 r1!2370))) b!7373828))

(assert (= (and b!7373622 (is-Star!19292 (regTwo!39096 r1!2370))) b!7373829))

(assert (= (and b!7373622 (is-Union!19292 (regTwo!39096 r1!2370))) b!7373830))

(declare-fun e!4414303 () Bool)

(assert (=> b!7373617 (= tp!2096341 e!4414303)))

(declare-fun b!7373834 () Bool)

(declare-fun tp!2096387 () Bool)

(declare-fun tp!2096388 () Bool)

(assert (=> b!7373834 (= e!4414303 (and tp!2096387 tp!2096388))))

(declare-fun b!7373833 () Bool)

(declare-fun tp!2096390 () Bool)

(assert (=> b!7373833 (= e!4414303 tp!2096390)))

(declare-fun b!7373832 () Bool)

(declare-fun tp!2096389 () Bool)

(declare-fun tp!2096386 () Bool)

(assert (=> b!7373832 (= e!4414303 (and tp!2096389 tp!2096386))))

(declare-fun b!7373831 () Bool)

(assert (=> b!7373831 (= e!4414303 tp_is_empty!48829)))

(assert (= (and b!7373617 (is-ElementMatch!19292 (regOne!39097 r1!2370))) b!7373831))

(assert (= (and b!7373617 (is-Concat!28137 (regOne!39097 r1!2370))) b!7373832))

(assert (= (and b!7373617 (is-Star!19292 (regOne!39097 r1!2370))) b!7373833))

(assert (= (and b!7373617 (is-Union!19292 (regOne!39097 r1!2370))) b!7373834))

(declare-fun e!4414304 () Bool)

(assert (=> b!7373617 (= tp!2096337 e!4414304)))

(declare-fun b!7373838 () Bool)

(declare-fun tp!2096392 () Bool)

(declare-fun tp!2096393 () Bool)

(assert (=> b!7373838 (= e!4414304 (and tp!2096392 tp!2096393))))

(declare-fun b!7373837 () Bool)

(declare-fun tp!2096395 () Bool)

(assert (=> b!7373837 (= e!4414304 tp!2096395)))

(declare-fun b!7373836 () Bool)

(declare-fun tp!2096394 () Bool)

(declare-fun tp!2096391 () Bool)

(assert (=> b!7373836 (= e!4414304 (and tp!2096394 tp!2096391))))

(declare-fun b!7373835 () Bool)

(assert (=> b!7373835 (= e!4414304 tp_is_empty!48829)))

(assert (= (and b!7373617 (is-ElementMatch!19292 (regTwo!39097 r1!2370))) b!7373835))

(assert (= (and b!7373617 (is-Concat!28137 (regTwo!39097 r1!2370))) b!7373836))

(assert (= (and b!7373617 (is-Star!19292 (regTwo!39097 r1!2370))) b!7373837))

(assert (= (and b!7373617 (is-Union!19292 (regTwo!39097 r1!2370))) b!7373838))

(declare-fun b!7373843 () Bool)

(declare-fun e!4414307 () Bool)

(declare-fun tp!2096400 () Bool)

(declare-fun tp!2096401 () Bool)

(assert (=> b!7373843 (= e!4414307 (and tp!2096400 tp!2096401))))

(assert (=> b!7373620 (= tp!2096340 e!4414307)))

(assert (= (and b!7373620 (is-Cons!71664 (exprs!8732 cWitness!61))) b!7373843))

(declare-fun b!7373844 () Bool)

(declare-fun e!4414308 () Bool)

(declare-fun tp!2096402 () Bool)

(declare-fun tp!2096403 () Bool)

(assert (=> b!7373844 (= e!4414308 (and tp!2096402 tp!2096403))))

(assert (=> b!7373615 (= tp!2096338 e!4414308)))

(assert (= (and b!7373615 (is-Cons!71664 (exprs!8732 ct1!282))) b!7373844))

(declare-fun e!4414309 () Bool)

(assert (=> b!7373616 (= tp!2096334 e!4414309)))

(declare-fun b!7373848 () Bool)

(declare-fun tp!2096405 () Bool)

(declare-fun tp!2096406 () Bool)

(assert (=> b!7373848 (= e!4414309 (and tp!2096405 tp!2096406))))

(declare-fun b!7373847 () Bool)

(declare-fun tp!2096408 () Bool)

(assert (=> b!7373847 (= e!4414309 tp!2096408)))

(declare-fun b!7373846 () Bool)

(declare-fun tp!2096407 () Bool)

(declare-fun tp!2096404 () Bool)

(assert (=> b!7373846 (= e!4414309 (and tp!2096407 tp!2096404))))

(declare-fun b!7373845 () Bool)

(assert (=> b!7373845 (= e!4414309 tp_is_empty!48829)))

(assert (= (and b!7373616 (is-ElementMatch!19292 (reg!19621 r1!2370))) b!7373845))

(assert (= (and b!7373616 (is-Concat!28137 (reg!19621 r1!2370))) b!7373846))

(assert (= (and b!7373616 (is-Star!19292 (reg!19621 r1!2370))) b!7373847))

(assert (= (and b!7373616 (is-Union!19292 (reg!19621 r1!2370))) b!7373848))

(declare-fun b!7373849 () Bool)

(declare-fun e!4414310 () Bool)

(declare-fun tp!2096409 () Bool)

(declare-fun tp!2096410 () Bool)

(assert (=> b!7373849 (= e!4414310 (and tp!2096409 tp!2096410))))

(assert (=> b!7373627 (= tp!2096335 e!4414310)))

(assert (= (and b!7373627 (is-Cons!71664 (exprs!8732 ct2!378))) b!7373849))

(push 1)

(assert (not bm!677581))

(assert (not b!7373826))

(assert (not b!7373756))

(assert (not d!2284195))

(assert (not bm!677578))

(assert (not b!7373824))

(assert (not bm!677623))

(assert (not d!2284205))

(assert (not b!7373837))

(assert (not b!7373702))

(assert (not bm!677608))

(assert (not d!2284197))

(assert (not d!2284193))

(assert (not d!2284201))

(assert (not b!7373838))

(assert (not b!7373830))

(assert (not b!7373829))

(assert (not b!7373836))

(assert (not b!7373834))

(assert (not b!7373843))

(assert (not bm!677580))

(assert (not b!7373847))

(assert (not b!7373781))

(assert (not b!7373844))

(assert (not bm!677612))

(assert (not b!7373833))

(assert (not d!2284213))

(assert (not bm!677624))

(assert (not b!7373790))

(assert (not bm!677620))

(assert (not d!2284189))

(assert tp_is_empty!48829)

(assert (not b!7373832))

(assert (not b!7373782))

(assert (not bm!677611))

(assert (not b!7373825))

(assert (not b!7373846))

(assert (not b!7373848))

(assert (not b!7373693))

(assert (not b!7373849))

(assert (not bm!677577))

(assert (not b!7373828))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(assert (=> b!7373790 d!2284189))

(declare-fun b!7373928 () Bool)

(declare-fun e!4414349 () (Set Context!16464))

(assert (=> b!7373928 (= e!4414349 (as set.empty (Set Context!16464)))))

(declare-fun b!7373929 () Bool)

(declare-fun call!677648 () (Set Context!16464))

(assert (=> b!7373929 (= e!4414349 call!677648)))

(declare-fun bm!677643 () Bool)

(declare-fun call!677653 () (Set Context!16464))

(assert (=> bm!677643 (= call!677648 call!677653)))

(declare-fun c!1370559 () Bool)

(declare-fun c!1370560 () Bool)

(declare-fun call!677651 () List!71788)

(declare-fun bm!677644 () Bool)

(assert (=> bm!677644 (= call!677651 ($colon$colon!3274 (exprs!8732 (ite (or c!1370528 c!1370526) (Context!16465 (++!17108 (exprs!8732 ct1!282) (exprs!8732 ct2!378))) (Context!16465 call!677616))) (ite (or c!1370560 c!1370559) (regTwo!39096 (ite c!1370528 (regOne!39097 r1!2370) (ite c!1370526 (regTwo!39096 r1!2370) (ite c!1370525 (regOne!39096 r1!2370) (reg!19621 r1!2370))))) (ite c!1370528 (regOne!39097 r1!2370) (ite c!1370526 (regTwo!39096 r1!2370) (ite c!1370525 (regOne!39096 r1!2370) (reg!19621 r1!2370)))))))))

(declare-fun b!7373930 () Bool)

(declare-fun e!4414351 () Bool)

(assert (=> b!7373930 (= c!1370560 e!4414351)))

(declare-fun res!2975027 () Bool)

(assert (=> b!7373930 (=> (not res!2975027) (not e!4414351))))

(assert (=> b!7373930 (= res!2975027 (is-Concat!28137 (ite c!1370528 (regOne!39097 r1!2370) (ite c!1370526 (regTwo!39096 r1!2370) (ite c!1370525 (regOne!39096 r1!2370) (reg!19621 r1!2370))))))))

(declare-fun e!4414352 () (Set Context!16464))

(declare-fun e!4414354 () (Set Context!16464))

(assert (=> b!7373930 (= e!4414352 e!4414354)))

(declare-fun b!7373932 () Bool)

(declare-fun e!4414353 () (Set Context!16464))

(assert (=> b!7373932 (= e!4414353 e!4414352)))

(declare-fun c!1370562 () Bool)

(assert (=> b!7373932 (= c!1370562 (is-Union!19292 (ite c!1370528 (regOne!39097 r1!2370) (ite c!1370526 (regTwo!39096 r1!2370) (ite c!1370525 (regOne!39096 r1!2370) (reg!19621 r1!2370))))))))

(declare-fun b!7373933 () Bool)

(declare-fun e!4414350 () (Set Context!16464))

(assert (=> b!7373933 (= e!4414354 e!4414350)))

(assert (=> b!7373933 (= c!1370559 (is-Concat!28137 (ite c!1370528 (regOne!39097 r1!2370) (ite c!1370526 (regTwo!39096 r1!2370) (ite c!1370525 (regOne!39096 r1!2370) (reg!19621 r1!2370))))))))

(declare-fun b!7373934 () Bool)

(assert (=> b!7373934 (= e!4414351 (nullable!8368 (regOne!39096 (ite c!1370528 (regOne!39097 r1!2370) (ite c!1370526 (regTwo!39096 r1!2370) (ite c!1370525 (regOne!39096 r1!2370) (reg!19621 r1!2370)))))))))

(declare-fun bm!677645 () Bool)

(declare-fun call!677652 () List!71788)

(assert (=> bm!677645 (= call!677652 call!677651)))

(declare-fun b!7373935 () Bool)

(declare-fun c!1370558 () Bool)

(assert (=> b!7373935 (= c!1370558 (is-Star!19292 (ite c!1370528 (regOne!39097 r1!2370) (ite c!1370526 (regTwo!39096 r1!2370) (ite c!1370525 (regOne!39096 r1!2370) (reg!19621 r1!2370))))))))

(assert (=> b!7373935 (= e!4414350 e!4414349)))

(declare-fun b!7373936 () Bool)

(assert (=> b!7373936 (= e!4414353 (set.insert (ite (or c!1370528 c!1370526) (Context!16465 (++!17108 (exprs!8732 ct1!282) (exprs!8732 ct2!378))) (Context!16465 call!677616)) (as set.empty (Set Context!16464))))))

(declare-fun d!2284233 () Bool)

(declare-fun c!1370561 () Bool)

(assert (=> d!2284233 (= c!1370561 (and (is-ElementMatch!19292 (ite c!1370528 (regOne!39097 r1!2370) (ite c!1370526 (regTwo!39096 r1!2370) (ite c!1370525 (regOne!39096 r1!2370) (reg!19621 r1!2370))))) (= (c!1370494 (ite c!1370528 (regOne!39097 r1!2370) (ite c!1370526 (regTwo!39096 r1!2370) (ite c!1370525 (regOne!39096 r1!2370) (reg!19621 r1!2370))))) c!10362)))))

(assert (=> d!2284233 (= (derivationStepZipperDown!3118 (ite c!1370528 (regOne!39097 r1!2370) (ite c!1370526 (regTwo!39096 r1!2370) (ite c!1370525 (regOne!39096 r1!2370) (reg!19621 r1!2370)))) (ite (or c!1370528 c!1370526) (Context!16465 (++!17108 (exprs!8732 ct1!282) (exprs!8732 ct2!378))) (Context!16465 call!677616)) c!10362) e!4414353)))

(declare-fun b!7373931 () Bool)

(declare-fun call!677649 () (Set Context!16464))

(assert (=> b!7373931 (= e!4414354 (set.union call!677649 call!677653))))

(declare-fun b!7373937 () Bool)

(assert (=> b!7373937 (= e!4414350 call!677648)))

(declare-fun bm!677646 () Bool)

(declare-fun call!677650 () (Set Context!16464))

(assert (=> bm!677646 (= call!677653 call!677650)))

(declare-fun bm!677647 () Bool)

(assert (=> bm!677647 (= call!677650 (derivationStepZipperDown!3118 (ite c!1370562 (regOne!39097 (ite c!1370528 (regOne!39097 r1!2370) (ite c!1370526 (regTwo!39096 r1!2370) (ite c!1370525 (regOne!39096 r1!2370) (reg!19621 r1!2370))))) (ite c!1370560 (regTwo!39096 (ite c!1370528 (regOne!39097 r1!2370) (ite c!1370526 (regTwo!39096 r1!2370) (ite c!1370525 (regOne!39096 r1!2370) (reg!19621 r1!2370))))) (ite c!1370559 (regOne!39096 (ite c!1370528 (regOne!39097 r1!2370) (ite c!1370526 (regTwo!39096 r1!2370) (ite c!1370525 (regOne!39096 r1!2370) (reg!19621 r1!2370))))) (reg!19621 (ite c!1370528 (regOne!39097 r1!2370) (ite c!1370526 (regTwo!39096 r1!2370) (ite c!1370525 (regOne!39096 r1!2370) (reg!19621 r1!2370)))))))) (ite (or c!1370562 c!1370560) (ite (or c!1370528 c!1370526) (Context!16465 (++!17108 (exprs!8732 ct1!282) (exprs!8732 ct2!378))) (Context!16465 call!677616)) (Context!16465 call!677652)) c!10362))))

(declare-fun b!7373938 () Bool)

(assert (=> b!7373938 (= e!4414352 (set.union call!677650 call!677649))))

(declare-fun bm!677648 () Bool)

(assert (=> bm!677648 (= call!677649 (derivationStepZipperDown!3118 (ite c!1370562 (regTwo!39097 (ite c!1370528 (regOne!39097 r1!2370) (ite c!1370526 (regTwo!39096 r1!2370) (ite c!1370525 (regOne!39096 r1!2370) (reg!19621 r1!2370))))) (regOne!39096 (ite c!1370528 (regOne!39097 r1!2370) (ite c!1370526 (regTwo!39096 r1!2370) (ite c!1370525 (regOne!39096 r1!2370) (reg!19621 r1!2370)))))) (ite c!1370562 (ite (or c!1370528 c!1370526) (Context!16465 (++!17108 (exprs!8732 ct1!282) (exprs!8732 ct2!378))) (Context!16465 call!677616)) (Context!16465 call!677651)) c!10362))))

(assert (= (and d!2284233 c!1370561) b!7373936))

(assert (= (and d!2284233 (not c!1370561)) b!7373932))

(assert (= (and b!7373932 c!1370562) b!7373938))

(assert (= (and b!7373932 (not c!1370562)) b!7373930))

(assert (= (and b!7373930 res!2975027) b!7373934))

(assert (= (and b!7373930 c!1370560) b!7373931))

(assert (= (and b!7373930 (not c!1370560)) b!7373933))

(assert (= (and b!7373933 c!1370559) b!7373937))

(assert (= (and b!7373933 (not c!1370559)) b!7373935))

(assert (= (and b!7373935 c!1370558) b!7373929))

(assert (= (and b!7373935 (not c!1370558)) b!7373928))

(assert (= (or b!7373937 b!7373929) bm!677645))

(assert (= (or b!7373937 b!7373929) bm!677643))

(assert (= (or b!7373931 bm!677643) bm!677646))

(assert (= (or b!7373931 bm!677645) bm!677644))

(assert (= (or b!7373938 b!7373931) bm!677648))

(assert (= (or b!7373938 bm!677646) bm!677647))

(declare-fun m!8026738 () Bool)

(assert (=> bm!677644 m!8026738))

(declare-fun m!8026740 () Bool)

(assert (=> bm!677648 m!8026740))

(declare-fun m!8026742 () Bool)

(assert (=> b!7373934 m!8026742))

(declare-fun m!8026744 () Bool)

(assert (=> bm!677647 m!8026744))

(declare-fun m!8026746 () Bool)

(assert (=> b!7373936 m!8026746))

(assert (=> bm!677611 d!2284233))

(declare-fun b!7373941 () Bool)

(declare-fun res!2975029 () Bool)

(declare-fun e!4414356 () Bool)

(assert (=> b!7373941 (=> (not res!2975029) (not e!4414356))))

(declare-fun lt!2616108 () List!71788)

(assert (=> b!7373941 (= res!2975029 (= (size!42144 lt!2616108) (+ (size!42144 (t!386259 (exprs!8732 ct1!282))) (size!42144 (exprs!8732 ct2!378)))))))

(declare-fun b!7373942 () Bool)

(assert (=> b!7373942 (= e!4414356 (or (not (= (exprs!8732 ct2!378) Nil!71664)) (= lt!2616108 (t!386259 (exprs!8732 ct1!282)))))))

(declare-fun b!7373940 () Bool)

(declare-fun e!4414355 () List!71788)

(assert (=> b!7373940 (= e!4414355 (Cons!71664 (h!78112 (t!386259 (exprs!8732 ct1!282))) (++!17108 (t!386259 (t!386259 (exprs!8732 ct1!282))) (exprs!8732 ct2!378))))))

(declare-fun d!2284235 () Bool)

(assert (=> d!2284235 e!4414356))

(declare-fun res!2975028 () Bool)

(assert (=> d!2284235 (=> (not res!2975028) (not e!4414356))))

(assert (=> d!2284235 (= res!2975028 (= (content!15166 lt!2616108) (set.union (content!15166 (t!386259 (exprs!8732 ct1!282))) (content!15166 (exprs!8732 ct2!378)))))))

(assert (=> d!2284235 (= lt!2616108 e!4414355)))

(declare-fun c!1370563 () Bool)

(assert (=> d!2284235 (= c!1370563 (is-Nil!71664 (t!386259 (exprs!8732 ct1!282))))))

(assert (=> d!2284235 (= (++!17108 (t!386259 (exprs!8732 ct1!282)) (exprs!8732 ct2!378)) lt!2616108)))

(declare-fun b!7373939 () Bool)

(assert (=> b!7373939 (= e!4414355 (exprs!8732 ct2!378))))

(assert (= (and d!2284235 c!1370563) b!7373939))

(assert (= (and d!2284235 (not c!1370563)) b!7373940))

(assert (= (and d!2284235 res!2975028) b!7373941))

(assert (= (and b!7373941 res!2975029) b!7373942))

(declare-fun m!8026748 () Bool)

(assert (=> b!7373941 m!8026748))

(declare-fun m!8026750 () Bool)

(assert (=> b!7373941 m!8026750))

(assert (=> b!7373941 m!8026662))

(declare-fun m!8026752 () Bool)

(assert (=> b!7373940 m!8026752))

(declare-fun m!8026754 () Bool)

(assert (=> d!2284235 m!8026754))

(declare-fun m!8026756 () Bool)

(assert (=> d!2284235 m!8026756))

(assert (=> d!2284235 m!8026670))

(assert (=> b!7373781 d!2284235))

(declare-fun d!2284237 () Bool)

(declare-fun lt!2616111 () Int)

(assert (=> d!2284237 (>= lt!2616111 0)))

(declare-fun e!4414359 () Int)

(assert (=> d!2284237 (= lt!2616111 e!4414359)))

(declare-fun c!1370566 () Bool)

(assert (=> d!2284237 (= c!1370566 (is-Nil!71664 lt!2616098))))

(assert (=> d!2284237 (= (size!42144 lt!2616098) lt!2616111)))

(declare-fun b!7373947 () Bool)

(assert (=> b!7373947 (= e!4414359 0)))

(declare-fun b!7373948 () Bool)

(assert (=> b!7373948 (= e!4414359 (+ 1 (size!42144 (t!386259 lt!2616098))))))

(assert (= (and d!2284237 c!1370566) b!7373947))

(assert (= (and d!2284237 (not c!1370566)) b!7373948))

(declare-fun m!8026758 () Bool)

(assert (=> b!7373948 m!8026758))

(assert (=> b!7373782 d!2284237))

(declare-fun d!2284239 () Bool)

(declare-fun lt!2616112 () Int)

(assert (=> d!2284239 (>= lt!2616112 0)))

(declare-fun e!4414360 () Int)

(assert (=> d!2284239 (= lt!2616112 e!4414360)))

(declare-fun c!1370567 () Bool)

(assert (=> d!2284239 (= c!1370567 (is-Nil!71664 (exprs!8732 ct1!282)))))

(assert (=> d!2284239 (= (size!42144 (exprs!8732 ct1!282)) lt!2616112)))

(declare-fun b!7373949 () Bool)

(assert (=> b!7373949 (= e!4414360 0)))

(declare-fun b!7373950 () Bool)

(assert (=> b!7373950 (= e!4414360 (+ 1 (size!42144 (t!386259 (exprs!8732 ct1!282)))))))

(assert (= (and d!2284239 c!1370567) b!7373949))

(assert (= (and d!2284239 (not c!1370567)) b!7373950))

(assert (=> b!7373950 m!8026750))

(assert (=> b!7373782 d!2284239))

(declare-fun d!2284241 () Bool)

(declare-fun lt!2616113 () Int)

(assert (=> d!2284241 (>= lt!2616113 0)))

(declare-fun e!4414361 () Int)

(assert (=> d!2284241 (= lt!2616113 e!4414361)))

(declare-fun c!1370568 () Bool)

(assert (=> d!2284241 (= c!1370568 (is-Nil!71664 (exprs!8732 ct2!378)))))

(assert (=> d!2284241 (= (size!42144 (exprs!8732 ct2!378)) lt!2616113)))

(declare-fun b!7373951 () Bool)

(assert (=> b!7373951 (= e!4414361 0)))

(declare-fun b!7373952 () Bool)

(assert (=> b!7373952 (= e!4414361 (+ 1 (size!42144 (t!386259 (exprs!8732 ct2!378)))))))

(assert (= (and d!2284241 c!1370568) b!7373951))

(assert (= (and d!2284241 (not c!1370568)) b!7373952))

(declare-fun m!8026760 () Bool)

(assert (=> b!7373952 m!8026760))

(assert (=> b!7373782 d!2284241))

(declare-fun b!7373953 () Bool)

(declare-fun e!4414362 () Bool)

(declare-fun call!677654 () Bool)

(assert (=> b!7373953 (= e!4414362 call!677654)))

(declare-fun d!2284243 () Bool)

(declare-fun res!2975032 () Bool)

(declare-fun e!4414364 () Bool)

(assert (=> d!2284243 (=> res!2975032 e!4414364)))

(assert (=> d!2284243 (= res!2975032 (is-ElementMatch!19292 (ite c!1370502 (regTwo!39097 r1!2370) (regOne!39096 r1!2370))))))

(assert (=> d!2284243 (= (validRegex!9888 (ite c!1370502 (regTwo!39097 r1!2370) (regOne!39096 r1!2370))) e!4414364)))

(declare-fun b!7373954 () Bool)

(declare-fun res!2975034 () Bool)

(declare-fun e!4414368 () Bool)

(assert (=> b!7373954 (=> res!2975034 e!4414368)))

(assert (=> b!7373954 (= res!2975034 (not (is-Concat!28137 (ite c!1370502 (regTwo!39097 r1!2370) (regOne!39096 r1!2370)))))))

(declare-fun e!4414366 () Bool)

(assert (=> b!7373954 (= e!4414366 e!4414368)))

(declare-fun b!7373955 () Bool)

(declare-fun e!4414363 () Bool)

(assert (=> b!7373955 (= e!4414364 e!4414363)))

(declare-fun c!1370570 () Bool)

(assert (=> b!7373955 (= c!1370570 (is-Star!19292 (ite c!1370502 (regTwo!39097 r1!2370) (regOne!39096 r1!2370))))))

(declare-fun b!7373956 () Bool)

(assert (=> b!7373956 (= e!4414368 e!4414362)))

(declare-fun res!2975030 () Bool)

(assert (=> b!7373956 (=> (not res!2975030) (not e!4414362))))

(declare-fun call!677655 () Bool)

(assert (=> b!7373956 (= res!2975030 call!677655)))

(declare-fun b!7373957 () Bool)

(declare-fun e!4414367 () Bool)

(declare-fun call!677656 () Bool)

(assert (=> b!7373957 (= e!4414367 call!677656)))

(declare-fun c!1370569 () Bool)

(declare-fun bm!677649 () Bool)

(assert (=> bm!677649 (= call!677656 (validRegex!9888 (ite c!1370570 (reg!19621 (ite c!1370502 (regTwo!39097 r1!2370) (regOne!39096 r1!2370))) (ite c!1370569 (regOne!39097 (ite c!1370502 (regTwo!39097 r1!2370) (regOne!39096 r1!2370))) (regTwo!39096 (ite c!1370502 (regTwo!39097 r1!2370) (regOne!39096 r1!2370)))))))))

(declare-fun b!7373958 () Bool)

(assert (=> b!7373958 (= e!4414363 e!4414367)))

(declare-fun res!2975033 () Bool)

(assert (=> b!7373958 (= res!2975033 (not (nullable!8368 (reg!19621 (ite c!1370502 (regTwo!39097 r1!2370) (regOne!39096 r1!2370))))))))

(assert (=> b!7373958 (=> (not res!2975033) (not e!4414367))))

(declare-fun b!7373959 () Bool)

(declare-fun e!4414365 () Bool)

(assert (=> b!7373959 (= e!4414365 call!677655)))

(declare-fun b!7373960 () Bool)

(assert (=> b!7373960 (= e!4414363 e!4414366)))

(assert (=> b!7373960 (= c!1370569 (is-Union!19292 (ite c!1370502 (regTwo!39097 r1!2370) (regOne!39096 r1!2370))))))

(declare-fun b!7373961 () Bool)

(declare-fun res!2975031 () Bool)

(assert (=> b!7373961 (=> (not res!2975031) (not e!4414365))))

(assert (=> b!7373961 (= res!2975031 call!677654)))

(assert (=> b!7373961 (= e!4414366 e!4414365)))

(declare-fun bm!677650 () Bool)

(assert (=> bm!677650 (= call!677655 (validRegex!9888 (ite c!1370569 (regTwo!39097 (ite c!1370502 (regTwo!39097 r1!2370) (regOne!39096 r1!2370))) (regOne!39096 (ite c!1370502 (regTwo!39097 r1!2370) (regOne!39096 r1!2370))))))))

(declare-fun bm!677651 () Bool)

(assert (=> bm!677651 (= call!677654 call!677656)))

(assert (= (and d!2284243 (not res!2975032)) b!7373955))

(assert (= (and b!7373955 c!1370570) b!7373958))

(assert (= (and b!7373955 (not c!1370570)) b!7373960))

(assert (= (and b!7373958 res!2975033) b!7373957))

(assert (= (and b!7373960 c!1370569) b!7373961))

(assert (= (and b!7373960 (not c!1370569)) b!7373954))

(assert (= (and b!7373961 res!2975031) b!7373959))

(assert (= (and b!7373954 (not res!2975034)) b!7373956))

(assert (= (and b!7373956 res!2975030) b!7373953))

(assert (= (or b!7373961 b!7373953) bm!677651))

(assert (= (or b!7373959 b!7373956) bm!677650))

(assert (= (or b!7373957 bm!677651) bm!677649))

(declare-fun m!8026762 () Bool)

(assert (=> bm!677649 m!8026762))

(declare-fun m!8026764 () Bool)

(assert (=> b!7373958 m!8026764))

(declare-fun m!8026766 () Bool)

(assert (=> bm!677650 m!8026766))

(assert (=> bm!677581 d!2284243))

(declare-fun d!2284245 () Bool)

(declare-fun res!2975039 () Bool)

(declare-fun e!4414373 () Bool)

(assert (=> d!2284245 (=> res!2975039 e!4414373)))

(assert (=> d!2284245 (= res!2975039 (is-Nil!71664 (exprs!8732 cWitness!61)))))

(assert (=> d!2284245 (= (forall!18092 (exprs!8732 cWitness!61) lambda!458232) e!4414373)))

(declare-fun b!7373966 () Bool)

(declare-fun e!4414374 () Bool)

(assert (=> b!7373966 (= e!4414373 e!4414374)))

(declare-fun res!2975040 () Bool)

(assert (=> b!7373966 (=> (not res!2975040) (not e!4414374))))

(declare-fun dynLambda!29526 (Int Regex!19292) Bool)

(assert (=> b!7373966 (= res!2975040 (dynLambda!29526 lambda!458232 (h!78112 (exprs!8732 cWitness!61))))))

(declare-fun b!7373967 () Bool)

(assert (=> b!7373967 (= e!4414374 (forall!18092 (t!386259 (exprs!8732 cWitness!61)) lambda!458232))))

(assert (= (and d!2284245 (not res!2975039)) b!7373966))

(assert (= (and b!7373966 res!2975040) b!7373967))

(declare-fun b_lambda!284483 () Bool)

(assert (=> (not b_lambda!284483) (not b!7373966)))

(declare-fun m!8026768 () Bool)

(assert (=> b!7373966 m!8026768))

(declare-fun m!8026770 () Bool)

(assert (=> b!7373967 m!8026770))

(assert (=> d!2284193 d!2284245))

(declare-fun b!7373968 () Bool)

(declare-fun e!4414375 () (Set Context!16464))

(assert (=> b!7373968 (= e!4414375 (as set.empty (Set Context!16464)))))

(declare-fun b!7373969 () Bool)

(declare-fun call!677657 () (Set Context!16464))

(assert (=> b!7373969 (= e!4414375 call!677657)))

(declare-fun bm!677652 () Bool)

(declare-fun call!677662 () (Set Context!16464))

(assert (=> bm!677652 (= call!677657 call!677662)))

(declare-fun call!677660 () List!71788)

(declare-fun bm!677653 () Bool)

(declare-fun c!1370572 () Bool)

(declare-fun c!1370573 () Bool)

(assert (=> bm!677653 (= call!677660 ($colon$colon!3274 (exprs!8732 (ite c!1370528 (Context!16465 (++!17108 (exprs!8732 ct1!282) (exprs!8732 ct2!378))) (Context!16465 call!677615))) (ite (or c!1370573 c!1370572) (regTwo!39096 (ite c!1370528 (regTwo!39097 r1!2370) (regOne!39096 r1!2370))) (ite c!1370528 (regTwo!39097 r1!2370) (regOne!39096 r1!2370)))))))

(declare-fun b!7373970 () Bool)

(declare-fun e!4414377 () Bool)

(assert (=> b!7373970 (= c!1370573 e!4414377)))

(declare-fun res!2975041 () Bool)

(assert (=> b!7373970 (=> (not res!2975041) (not e!4414377))))

(assert (=> b!7373970 (= res!2975041 (is-Concat!28137 (ite c!1370528 (regTwo!39097 r1!2370) (regOne!39096 r1!2370))))))

(declare-fun e!4414378 () (Set Context!16464))

(declare-fun e!4414380 () (Set Context!16464))

(assert (=> b!7373970 (= e!4414378 e!4414380)))

(declare-fun b!7373972 () Bool)

(declare-fun e!4414379 () (Set Context!16464))

(assert (=> b!7373972 (= e!4414379 e!4414378)))

(declare-fun c!1370575 () Bool)

(assert (=> b!7373972 (= c!1370575 (is-Union!19292 (ite c!1370528 (regTwo!39097 r1!2370) (regOne!39096 r1!2370))))))

(declare-fun b!7373973 () Bool)

(declare-fun e!4414376 () (Set Context!16464))

(assert (=> b!7373973 (= e!4414380 e!4414376)))

(assert (=> b!7373973 (= c!1370572 (is-Concat!28137 (ite c!1370528 (regTwo!39097 r1!2370) (regOne!39096 r1!2370))))))

(declare-fun b!7373974 () Bool)

(assert (=> b!7373974 (= e!4414377 (nullable!8368 (regOne!39096 (ite c!1370528 (regTwo!39097 r1!2370) (regOne!39096 r1!2370)))))))

(declare-fun bm!677654 () Bool)

(declare-fun call!677661 () List!71788)

(assert (=> bm!677654 (= call!677661 call!677660)))

(declare-fun b!7373975 () Bool)

(declare-fun c!1370571 () Bool)

(assert (=> b!7373975 (= c!1370571 (is-Star!19292 (ite c!1370528 (regTwo!39097 r1!2370) (regOne!39096 r1!2370))))))

(assert (=> b!7373975 (= e!4414376 e!4414375)))

(declare-fun b!7373976 () Bool)

(assert (=> b!7373976 (= e!4414379 (set.insert (ite c!1370528 (Context!16465 (++!17108 (exprs!8732 ct1!282) (exprs!8732 ct2!378))) (Context!16465 call!677615)) (as set.empty (Set Context!16464))))))

(declare-fun c!1370574 () Bool)

(declare-fun d!2284247 () Bool)

(assert (=> d!2284247 (= c!1370574 (and (is-ElementMatch!19292 (ite c!1370528 (regTwo!39097 r1!2370) (regOne!39096 r1!2370))) (= (c!1370494 (ite c!1370528 (regTwo!39097 r1!2370) (regOne!39096 r1!2370))) c!10362)))))

(assert (=> d!2284247 (= (derivationStepZipperDown!3118 (ite c!1370528 (regTwo!39097 r1!2370) (regOne!39096 r1!2370)) (ite c!1370528 (Context!16465 (++!17108 (exprs!8732 ct1!282) (exprs!8732 ct2!378))) (Context!16465 call!677615)) c!10362) e!4414379)))

(declare-fun b!7373971 () Bool)

(declare-fun call!677658 () (Set Context!16464))

(assert (=> b!7373971 (= e!4414380 (set.union call!677658 call!677662))))

(declare-fun b!7373977 () Bool)

(assert (=> b!7373977 (= e!4414376 call!677657)))

(declare-fun bm!677655 () Bool)

(declare-fun call!677659 () (Set Context!16464))

(assert (=> bm!677655 (= call!677662 call!677659)))

(declare-fun bm!677656 () Bool)

(assert (=> bm!677656 (= call!677659 (derivationStepZipperDown!3118 (ite c!1370575 (regOne!39097 (ite c!1370528 (regTwo!39097 r1!2370) (regOne!39096 r1!2370))) (ite c!1370573 (regTwo!39096 (ite c!1370528 (regTwo!39097 r1!2370) (regOne!39096 r1!2370))) (ite c!1370572 (regOne!39096 (ite c!1370528 (regTwo!39097 r1!2370) (regOne!39096 r1!2370))) (reg!19621 (ite c!1370528 (regTwo!39097 r1!2370) (regOne!39096 r1!2370)))))) (ite (or c!1370575 c!1370573) (ite c!1370528 (Context!16465 (++!17108 (exprs!8732 ct1!282) (exprs!8732 ct2!378))) (Context!16465 call!677615)) (Context!16465 call!677661)) c!10362))))

(declare-fun b!7373978 () Bool)

(assert (=> b!7373978 (= e!4414378 (set.union call!677659 call!677658))))

(declare-fun bm!677657 () Bool)

(assert (=> bm!677657 (= call!677658 (derivationStepZipperDown!3118 (ite c!1370575 (regTwo!39097 (ite c!1370528 (regTwo!39097 r1!2370) (regOne!39096 r1!2370))) (regOne!39096 (ite c!1370528 (regTwo!39097 r1!2370) (regOne!39096 r1!2370)))) (ite c!1370575 (ite c!1370528 (Context!16465 (++!17108 (exprs!8732 ct1!282) (exprs!8732 ct2!378))) (Context!16465 call!677615)) (Context!16465 call!677660)) c!10362))))

(assert (= (and d!2284247 c!1370574) b!7373976))

(assert (= (and d!2284247 (not c!1370574)) b!7373972))

(assert (= (and b!7373972 c!1370575) b!7373978))

(assert (= (and b!7373972 (not c!1370575)) b!7373970))

(assert (= (and b!7373970 res!2975041) b!7373974))

(assert (= (and b!7373970 c!1370573) b!7373971))

(assert (= (and b!7373970 (not c!1370573)) b!7373973))

(assert (= (and b!7373973 c!1370572) b!7373977))

(assert (= (and b!7373973 (not c!1370572)) b!7373975))

(assert (= (and b!7373975 c!1370571) b!7373969))

(assert (= (and b!7373975 (not c!1370571)) b!7373968))

(assert (= (or b!7373977 b!7373969) bm!677654))

(assert (= (or b!7373977 b!7373969) bm!677652))

(assert (= (or b!7373971 bm!677652) bm!677655))

(assert (= (or b!7373971 bm!677654) bm!677653))

(assert (= (or b!7373978 b!7373971) bm!677657))

(assert (= (or b!7373978 bm!677655) bm!677656))

(declare-fun m!8026772 () Bool)

(assert (=> bm!677653 m!8026772))

(declare-fun m!8026774 () Bool)

(assert (=> bm!677657 m!8026774))

(declare-fun m!8026776 () Bool)

(assert (=> b!7373974 m!8026776))

(declare-fun m!8026778 () Bool)

(assert (=> bm!677656 m!8026778))

(declare-fun m!8026780 () Bool)

(assert (=> b!7373976 m!8026780))

(assert (=> bm!677612 d!2284247))

(declare-fun b!7373979 () Bool)

(declare-fun e!4414381 () (Set Context!16464))

(assert (=> b!7373979 (= e!4414381 (as set.empty (Set Context!16464)))))

(declare-fun b!7373980 () Bool)

(declare-fun call!677663 () (Set Context!16464))

(assert (=> b!7373980 (= e!4414381 call!677663)))

(declare-fun bm!677658 () Bool)

(declare-fun call!677668 () (Set Context!16464))

(assert (=> bm!677658 (= call!677663 call!677668)))

(declare-fun c!1370577 () Bool)

(declare-fun call!677666 () List!71788)

(declare-fun c!1370578 () Bool)

(declare-fun bm!677659 () Bool)

(assert (=> bm!677659 (= call!677666 ($colon$colon!3274 (exprs!8732 (ite c!1370541 ct1!282 (Context!16465 call!677627))) (ite (or c!1370578 c!1370577) (regTwo!39096 (ite c!1370541 (regTwo!39097 r1!2370) (regOne!39096 r1!2370))) (ite c!1370541 (regTwo!39097 r1!2370) (regOne!39096 r1!2370)))))))

(declare-fun b!7373981 () Bool)

(declare-fun e!4414383 () Bool)

(assert (=> b!7373981 (= c!1370578 e!4414383)))

(declare-fun res!2975042 () Bool)

(assert (=> b!7373981 (=> (not res!2975042) (not e!4414383))))

(assert (=> b!7373981 (= res!2975042 (is-Concat!28137 (ite c!1370541 (regTwo!39097 r1!2370) (regOne!39096 r1!2370))))))

(declare-fun e!4414384 () (Set Context!16464))

(declare-fun e!4414386 () (Set Context!16464))

(assert (=> b!7373981 (= e!4414384 e!4414386)))

(declare-fun b!7373983 () Bool)

(declare-fun e!4414385 () (Set Context!16464))

(assert (=> b!7373983 (= e!4414385 e!4414384)))

(declare-fun c!1370580 () Bool)

(assert (=> b!7373983 (= c!1370580 (is-Union!19292 (ite c!1370541 (regTwo!39097 r1!2370) (regOne!39096 r1!2370))))))

(declare-fun b!7373984 () Bool)

(declare-fun e!4414382 () (Set Context!16464))

(assert (=> b!7373984 (= e!4414386 e!4414382)))

(assert (=> b!7373984 (= c!1370577 (is-Concat!28137 (ite c!1370541 (regTwo!39097 r1!2370) (regOne!39096 r1!2370))))))

(declare-fun b!7373985 () Bool)

(assert (=> b!7373985 (= e!4414383 (nullable!8368 (regOne!39096 (ite c!1370541 (regTwo!39097 r1!2370) (regOne!39096 r1!2370)))))))

(declare-fun bm!677660 () Bool)

(declare-fun call!677667 () List!71788)

(assert (=> bm!677660 (= call!677667 call!677666)))

(declare-fun b!7373986 () Bool)

(declare-fun c!1370576 () Bool)

(assert (=> b!7373986 (= c!1370576 (is-Star!19292 (ite c!1370541 (regTwo!39097 r1!2370) (regOne!39096 r1!2370))))))

(assert (=> b!7373986 (= e!4414382 e!4414381)))

(declare-fun b!7373987 () Bool)

(assert (=> b!7373987 (= e!4414385 (set.insert (ite c!1370541 ct1!282 (Context!16465 call!677627)) (as set.empty (Set Context!16464))))))

(declare-fun c!1370579 () Bool)

(declare-fun d!2284249 () Bool)

(assert (=> d!2284249 (= c!1370579 (and (is-ElementMatch!19292 (ite c!1370541 (regTwo!39097 r1!2370) (regOne!39096 r1!2370))) (= (c!1370494 (ite c!1370541 (regTwo!39097 r1!2370) (regOne!39096 r1!2370))) c!10362)))))

(assert (=> d!2284249 (= (derivationStepZipperDown!3118 (ite c!1370541 (regTwo!39097 r1!2370) (regOne!39096 r1!2370)) (ite c!1370541 ct1!282 (Context!16465 call!677627)) c!10362) e!4414385)))

(declare-fun b!7373982 () Bool)

(declare-fun call!677664 () (Set Context!16464))

(assert (=> b!7373982 (= e!4414386 (set.union call!677664 call!677668))))

(declare-fun b!7373988 () Bool)

(assert (=> b!7373988 (= e!4414382 call!677663)))

(declare-fun bm!677661 () Bool)

(declare-fun call!677665 () (Set Context!16464))

(assert (=> bm!677661 (= call!677668 call!677665)))

(declare-fun bm!677662 () Bool)

(assert (=> bm!677662 (= call!677665 (derivationStepZipperDown!3118 (ite c!1370580 (regOne!39097 (ite c!1370541 (regTwo!39097 r1!2370) (regOne!39096 r1!2370))) (ite c!1370578 (regTwo!39096 (ite c!1370541 (regTwo!39097 r1!2370) (regOne!39096 r1!2370))) (ite c!1370577 (regOne!39096 (ite c!1370541 (regTwo!39097 r1!2370) (regOne!39096 r1!2370))) (reg!19621 (ite c!1370541 (regTwo!39097 r1!2370) (regOne!39096 r1!2370)))))) (ite (or c!1370580 c!1370578) (ite c!1370541 ct1!282 (Context!16465 call!677627)) (Context!16465 call!677667)) c!10362))))

(declare-fun b!7373989 () Bool)

(assert (=> b!7373989 (= e!4414384 (set.union call!677665 call!677664))))

(declare-fun bm!677663 () Bool)

(assert (=> bm!677663 (= call!677664 (derivationStepZipperDown!3118 (ite c!1370580 (regTwo!39097 (ite c!1370541 (regTwo!39097 r1!2370) (regOne!39096 r1!2370))) (regOne!39096 (ite c!1370541 (regTwo!39097 r1!2370) (regOne!39096 r1!2370)))) (ite c!1370580 (ite c!1370541 ct1!282 (Context!16465 call!677627)) (Context!16465 call!677666)) c!10362))))

(assert (= (and d!2284249 c!1370579) b!7373987))

(assert (= (and d!2284249 (not c!1370579)) b!7373983))

(assert (= (and b!7373983 c!1370580) b!7373989))

(assert (= (and b!7373983 (not c!1370580)) b!7373981))

(assert (= (and b!7373981 res!2975042) b!7373985))

(assert (= (and b!7373981 c!1370578) b!7373982))

(assert (= (and b!7373981 (not c!1370578)) b!7373984))

(assert (= (and b!7373984 c!1370577) b!7373988))

(assert (= (and b!7373984 (not c!1370577)) b!7373986))

(assert (= (and b!7373986 c!1370576) b!7373980))

(assert (= (and b!7373986 (not c!1370576)) b!7373979))

(assert (= (or b!7373988 b!7373980) bm!677660))

(assert (= (or b!7373988 b!7373980) bm!677658))

(assert (= (or b!7373982 bm!677658) bm!677661))

(assert (= (or b!7373982 bm!677660) bm!677659))

(assert (= (or b!7373989 b!7373982) bm!677663))

(assert (= (or b!7373989 bm!677661) bm!677662))

(declare-fun m!8026782 () Bool)

(assert (=> bm!677659 m!8026782))

(declare-fun m!8026784 () Bool)

(assert (=> bm!677663 m!8026784))

(declare-fun m!8026786 () Bool)

(assert (=> b!7373985 m!8026786))

(declare-fun m!8026788 () Bool)

(assert (=> bm!677662 m!8026788))

(declare-fun m!8026790 () Bool)

(assert (=> b!7373987 m!8026790))

(assert (=> bm!677624 d!2284249))

(declare-fun b!7373990 () Bool)

(declare-fun e!4414387 () Bool)

(declare-fun call!677669 () Bool)

(assert (=> b!7373990 (= e!4414387 call!677669)))

(declare-fun d!2284251 () Bool)

(declare-fun res!2975045 () Bool)

(declare-fun e!4414389 () Bool)

(assert (=> d!2284251 (=> res!2975045 e!4414389)))

(assert (=> d!2284251 (= res!2975045 (is-ElementMatch!19292 (ite c!1370500 (regTwo!39097 (regTwo!39096 r1!2370)) (regOne!39096 (regTwo!39096 r1!2370)))))))

(assert (=> d!2284251 (= (validRegex!9888 (ite c!1370500 (regTwo!39097 (regTwo!39096 r1!2370)) (regOne!39096 (regTwo!39096 r1!2370)))) e!4414389)))

(declare-fun b!7373991 () Bool)

(declare-fun res!2975047 () Bool)

(declare-fun e!4414393 () Bool)

(assert (=> b!7373991 (=> res!2975047 e!4414393)))

(assert (=> b!7373991 (= res!2975047 (not (is-Concat!28137 (ite c!1370500 (regTwo!39097 (regTwo!39096 r1!2370)) (regOne!39096 (regTwo!39096 r1!2370))))))))

(declare-fun e!4414391 () Bool)

(assert (=> b!7373991 (= e!4414391 e!4414393)))

(declare-fun b!7373992 () Bool)

(declare-fun e!4414388 () Bool)

(assert (=> b!7373992 (= e!4414389 e!4414388)))

(declare-fun c!1370582 () Bool)

(assert (=> b!7373992 (= c!1370582 (is-Star!19292 (ite c!1370500 (regTwo!39097 (regTwo!39096 r1!2370)) (regOne!39096 (regTwo!39096 r1!2370)))))))

(declare-fun b!7373993 () Bool)

(assert (=> b!7373993 (= e!4414393 e!4414387)))

(declare-fun res!2975043 () Bool)

(assert (=> b!7373993 (=> (not res!2975043) (not e!4414387))))

(declare-fun call!677670 () Bool)

(assert (=> b!7373993 (= res!2975043 call!677670)))

(declare-fun b!7373994 () Bool)

(declare-fun e!4414392 () Bool)

(declare-fun call!677671 () Bool)

(assert (=> b!7373994 (= e!4414392 call!677671)))

(declare-fun c!1370581 () Bool)

(declare-fun bm!677664 () Bool)

(assert (=> bm!677664 (= call!677671 (validRegex!9888 (ite c!1370582 (reg!19621 (ite c!1370500 (regTwo!39097 (regTwo!39096 r1!2370)) (regOne!39096 (regTwo!39096 r1!2370)))) (ite c!1370581 (regOne!39097 (ite c!1370500 (regTwo!39097 (regTwo!39096 r1!2370)) (regOne!39096 (regTwo!39096 r1!2370)))) (regTwo!39096 (ite c!1370500 (regTwo!39097 (regTwo!39096 r1!2370)) (regOne!39096 (regTwo!39096 r1!2370))))))))))

(declare-fun b!7373995 () Bool)

(assert (=> b!7373995 (= e!4414388 e!4414392)))

(declare-fun res!2975046 () Bool)

(assert (=> b!7373995 (= res!2975046 (not (nullable!8368 (reg!19621 (ite c!1370500 (regTwo!39097 (regTwo!39096 r1!2370)) (regOne!39096 (regTwo!39096 r1!2370)))))))))

(assert (=> b!7373995 (=> (not res!2975046) (not e!4414392))))

(declare-fun b!7373996 () Bool)

(declare-fun e!4414390 () Bool)

(assert (=> b!7373996 (= e!4414390 call!677670)))

(declare-fun b!7373997 () Bool)

(assert (=> b!7373997 (= e!4414388 e!4414391)))

(assert (=> b!7373997 (= c!1370581 (is-Union!19292 (ite c!1370500 (regTwo!39097 (regTwo!39096 r1!2370)) (regOne!39096 (regTwo!39096 r1!2370)))))))

(declare-fun b!7373998 () Bool)

(declare-fun res!2975044 () Bool)

(assert (=> b!7373998 (=> (not res!2975044) (not e!4414390))))

(assert (=> b!7373998 (= res!2975044 call!677669)))

(assert (=> b!7373998 (= e!4414391 e!4414390)))

(declare-fun bm!677665 () Bool)

(assert (=> bm!677665 (= call!677670 (validRegex!9888 (ite c!1370581 (regTwo!39097 (ite c!1370500 (regTwo!39097 (regTwo!39096 r1!2370)) (regOne!39096 (regTwo!39096 r1!2370)))) (regOne!39096 (ite c!1370500 (regTwo!39097 (regTwo!39096 r1!2370)) (regOne!39096 (regTwo!39096 r1!2370)))))))))

(declare-fun bm!677666 () Bool)

(assert (=> bm!677666 (= call!677669 call!677671)))

(assert (= (and d!2284251 (not res!2975045)) b!7373992))

(assert (= (and b!7373992 c!1370582) b!7373995))

(assert (= (and b!7373992 (not c!1370582)) b!7373997))

(assert (= (and b!7373995 res!2975046) b!7373994))

(assert (= (and b!7373997 c!1370581) b!7373998))

(assert (= (and b!7373997 (not c!1370581)) b!7373991))

(assert (= (and b!7373998 res!2975044) b!7373996))

(assert (= (and b!7373991 (not res!2975047)) b!7373993))

(assert (= (and b!7373993 res!2975043) b!7373990))

(assert (= (or b!7373998 b!7373990) bm!677666))

(assert (= (or b!7373996 b!7373993) bm!677665))

(assert (= (or b!7373994 bm!677666) bm!677664))

(declare-fun m!8026792 () Bool)

(assert (=> bm!677664 m!8026792))

(declare-fun m!8026794 () Bool)

(assert (=> b!7373995 m!8026794))

(declare-fun m!8026796 () Bool)

(assert (=> bm!677665 m!8026796))

(assert (=> bm!677578 d!2284251))

(declare-fun d!2284253 () Bool)

(assert (=> d!2284253 (= ($colon$colon!3274 (exprs!8732 (Context!16465 (++!17108 (exprs!8732 ct1!282) (exprs!8732 ct2!378)))) (ite (or c!1370526 c!1370525) (regTwo!39096 r1!2370) r1!2370)) (Cons!71664 (ite (or c!1370526 c!1370525) (regTwo!39096 r1!2370) r1!2370) (exprs!8732 (Context!16465 (++!17108 (exprs!8732 ct1!282) (exprs!8732 ct2!378))))))))

(assert (=> bm!677608 d!2284253))

(declare-fun d!2284255 () Bool)

(declare-fun res!2975048 () Bool)

(declare-fun e!4414394 () Bool)

(assert (=> d!2284255 (=> res!2975048 e!4414394)))

(assert (=> d!2284255 (= res!2975048 (is-Nil!71664 (exprs!8732 ct2!378)))))

(assert (=> d!2284255 (= (forall!18092 (exprs!8732 ct2!378) lambda!458234) e!4414394)))

(declare-fun b!7373999 () Bool)

(declare-fun e!4414395 () Bool)

(assert (=> b!7373999 (= e!4414394 e!4414395)))

(declare-fun res!2975049 () Bool)

(assert (=> b!7373999 (=> (not res!2975049) (not e!4414395))))

(assert (=> b!7373999 (= res!2975049 (dynLambda!29526 lambda!458234 (h!78112 (exprs!8732 ct2!378))))))

(declare-fun b!7374000 () Bool)

(assert (=> b!7374000 (= e!4414395 (forall!18092 (t!386259 (exprs!8732 ct2!378)) lambda!458234))))

(assert (= (and d!2284255 (not res!2975048)) b!7373999))

(assert (= (and b!7373999 res!2975049) b!7374000))

(declare-fun b_lambda!284485 () Bool)

(assert (=> (not b_lambda!284485) (not b!7373999)))

(declare-fun m!8026798 () Bool)

(assert (=> b!7373999 m!8026798))

(declare-fun m!8026800 () Bool)

(assert (=> b!7374000 m!8026800))

(assert (=> d!2284197 d!2284255))

(declare-fun d!2284257 () Bool)

(assert (=> d!2284257 (= (nullable!8368 (reg!19621 (regTwo!39096 r1!2370))) (nullableFct!3349 (reg!19621 (regTwo!39096 r1!2370))))))

(declare-fun bs!1921136 () Bool)

(assert (= bs!1921136 d!2284257))

(declare-fun m!8026802 () Bool)

(assert (=> bs!1921136 m!8026802))

(assert (=> b!7373693 d!2284257))

(declare-fun b!7374001 () Bool)

(declare-fun e!4414396 () (Set Context!16464))

(assert (=> b!7374001 (= e!4414396 (as set.empty (Set Context!16464)))))

(declare-fun b!7374002 () Bool)

(declare-fun call!677672 () (Set Context!16464))

(assert (=> b!7374002 (= e!4414396 call!677672)))

(declare-fun bm!677667 () Bool)

(declare-fun call!677677 () (Set Context!16464))

(assert (=> bm!677667 (= call!677672 call!677677)))

(declare-fun call!677675 () List!71788)

(declare-fun c!1370585 () Bool)

(declare-fun bm!677668 () Bool)

(declare-fun c!1370584 () Bool)

(assert (=> bm!677668 (= call!677675 ($colon$colon!3274 (exprs!8732 (ite (or c!1370541 c!1370539) ct1!282 (Context!16465 call!677628))) (ite (or c!1370585 c!1370584) (regTwo!39096 (ite c!1370541 (regOne!39097 r1!2370) (ite c!1370539 (regTwo!39096 r1!2370) (ite c!1370538 (regOne!39096 r1!2370) (reg!19621 r1!2370))))) (ite c!1370541 (regOne!39097 r1!2370) (ite c!1370539 (regTwo!39096 r1!2370) (ite c!1370538 (regOne!39096 r1!2370) (reg!19621 r1!2370)))))))))

(declare-fun b!7374003 () Bool)

(declare-fun e!4414398 () Bool)

(assert (=> b!7374003 (= c!1370585 e!4414398)))

(declare-fun res!2975050 () Bool)

(assert (=> b!7374003 (=> (not res!2975050) (not e!4414398))))

(assert (=> b!7374003 (= res!2975050 (is-Concat!28137 (ite c!1370541 (regOne!39097 r1!2370) (ite c!1370539 (regTwo!39096 r1!2370) (ite c!1370538 (regOne!39096 r1!2370) (reg!19621 r1!2370))))))))

(declare-fun e!4414399 () (Set Context!16464))

(declare-fun e!4414401 () (Set Context!16464))

(assert (=> b!7374003 (= e!4414399 e!4414401)))

(declare-fun b!7374005 () Bool)

(declare-fun e!4414400 () (Set Context!16464))

(assert (=> b!7374005 (= e!4414400 e!4414399)))

(declare-fun c!1370587 () Bool)

(assert (=> b!7374005 (= c!1370587 (is-Union!19292 (ite c!1370541 (regOne!39097 r1!2370) (ite c!1370539 (regTwo!39096 r1!2370) (ite c!1370538 (regOne!39096 r1!2370) (reg!19621 r1!2370))))))))

(declare-fun b!7374006 () Bool)

(declare-fun e!4414397 () (Set Context!16464))

(assert (=> b!7374006 (= e!4414401 e!4414397)))

(assert (=> b!7374006 (= c!1370584 (is-Concat!28137 (ite c!1370541 (regOne!39097 r1!2370) (ite c!1370539 (regTwo!39096 r1!2370) (ite c!1370538 (regOne!39096 r1!2370) (reg!19621 r1!2370))))))))

(declare-fun b!7374007 () Bool)

(assert (=> b!7374007 (= e!4414398 (nullable!8368 (regOne!39096 (ite c!1370541 (regOne!39097 r1!2370) (ite c!1370539 (regTwo!39096 r1!2370) (ite c!1370538 (regOne!39096 r1!2370) (reg!19621 r1!2370)))))))))

(declare-fun bm!677669 () Bool)

(declare-fun call!677676 () List!71788)

(assert (=> bm!677669 (= call!677676 call!677675)))

(declare-fun c!1370583 () Bool)

(declare-fun b!7374008 () Bool)

(assert (=> b!7374008 (= c!1370583 (is-Star!19292 (ite c!1370541 (regOne!39097 r1!2370) (ite c!1370539 (regTwo!39096 r1!2370) (ite c!1370538 (regOne!39096 r1!2370) (reg!19621 r1!2370))))))))

(assert (=> b!7374008 (= e!4414397 e!4414396)))

(declare-fun b!7374009 () Bool)

(assert (=> b!7374009 (= e!4414400 (set.insert (ite (or c!1370541 c!1370539) ct1!282 (Context!16465 call!677628)) (as set.empty (Set Context!16464))))))

(declare-fun d!2284259 () Bool)

(declare-fun c!1370586 () Bool)

(assert (=> d!2284259 (= c!1370586 (and (is-ElementMatch!19292 (ite c!1370541 (regOne!39097 r1!2370) (ite c!1370539 (regTwo!39096 r1!2370) (ite c!1370538 (regOne!39096 r1!2370) (reg!19621 r1!2370))))) (= (c!1370494 (ite c!1370541 (regOne!39097 r1!2370) (ite c!1370539 (regTwo!39096 r1!2370) (ite c!1370538 (regOne!39096 r1!2370) (reg!19621 r1!2370))))) c!10362)))))

(assert (=> d!2284259 (= (derivationStepZipperDown!3118 (ite c!1370541 (regOne!39097 r1!2370) (ite c!1370539 (regTwo!39096 r1!2370) (ite c!1370538 (regOne!39096 r1!2370) (reg!19621 r1!2370)))) (ite (or c!1370541 c!1370539) ct1!282 (Context!16465 call!677628)) c!10362) e!4414400)))

(declare-fun b!7374004 () Bool)

(declare-fun call!677673 () (Set Context!16464))

(assert (=> b!7374004 (= e!4414401 (set.union call!677673 call!677677))))

(declare-fun b!7374010 () Bool)

(assert (=> b!7374010 (= e!4414397 call!677672)))

(declare-fun bm!677670 () Bool)

(declare-fun call!677674 () (Set Context!16464))

(assert (=> bm!677670 (= call!677677 call!677674)))

(declare-fun bm!677671 () Bool)

(assert (=> bm!677671 (= call!677674 (derivationStepZipperDown!3118 (ite c!1370587 (regOne!39097 (ite c!1370541 (regOne!39097 r1!2370) (ite c!1370539 (regTwo!39096 r1!2370) (ite c!1370538 (regOne!39096 r1!2370) (reg!19621 r1!2370))))) (ite c!1370585 (regTwo!39096 (ite c!1370541 (regOne!39097 r1!2370) (ite c!1370539 (regTwo!39096 r1!2370) (ite c!1370538 (regOne!39096 r1!2370) (reg!19621 r1!2370))))) (ite c!1370584 (regOne!39096 (ite c!1370541 (regOne!39097 r1!2370) (ite c!1370539 (regTwo!39096 r1!2370) (ite c!1370538 (regOne!39096 r1!2370) (reg!19621 r1!2370))))) (reg!19621 (ite c!1370541 (regOne!39097 r1!2370) (ite c!1370539 (regTwo!39096 r1!2370) (ite c!1370538 (regOne!39096 r1!2370) (reg!19621 r1!2370)))))))) (ite (or c!1370587 c!1370585) (ite (or c!1370541 c!1370539) ct1!282 (Context!16465 call!677628)) (Context!16465 call!677676)) c!10362))))

(declare-fun b!7374011 () Bool)

(assert (=> b!7374011 (= e!4414399 (set.union call!677674 call!677673))))

(declare-fun bm!677672 () Bool)

(assert (=> bm!677672 (= call!677673 (derivationStepZipperDown!3118 (ite c!1370587 (regTwo!39097 (ite c!1370541 (regOne!39097 r1!2370) (ite c!1370539 (regTwo!39096 r1!2370) (ite c!1370538 (regOne!39096 r1!2370) (reg!19621 r1!2370))))) (regOne!39096 (ite c!1370541 (regOne!39097 r1!2370) (ite c!1370539 (regTwo!39096 r1!2370) (ite c!1370538 (regOne!39096 r1!2370) (reg!19621 r1!2370)))))) (ite c!1370587 (ite (or c!1370541 c!1370539) ct1!282 (Context!16465 call!677628)) (Context!16465 call!677675)) c!10362))))

(assert (= (and d!2284259 c!1370586) b!7374009))

(assert (= (and d!2284259 (not c!1370586)) b!7374005))

(assert (= (and b!7374005 c!1370587) b!7374011))

(assert (= (and b!7374005 (not c!1370587)) b!7374003))

(assert (= (and b!7374003 res!2975050) b!7374007))

(assert (= (and b!7374003 c!1370585) b!7374004))

(assert (= (and b!7374003 (not c!1370585)) b!7374006))

(assert (= (and b!7374006 c!1370584) b!7374010))

(assert (= (and b!7374006 (not c!1370584)) b!7374008))

(assert (= (and b!7374008 c!1370583) b!7374002))

(assert (= (and b!7374008 (not c!1370583)) b!7374001))

(assert (= (or b!7374010 b!7374002) bm!677669))

(assert (= (or b!7374010 b!7374002) bm!677667))

(assert (= (or b!7374004 bm!677667) bm!677670))

(assert (= (or b!7374004 bm!677669) bm!677668))

(assert (= (or b!7374011 b!7374004) bm!677672))

(assert (= (or b!7374011 bm!677670) bm!677671))

(declare-fun m!8026804 () Bool)

(assert (=> bm!677668 m!8026804))

(declare-fun m!8026806 () Bool)

(assert (=> bm!677672 m!8026806))

(declare-fun m!8026808 () Bool)

(assert (=> b!7374007 m!8026808))

(declare-fun m!8026810 () Bool)

(assert (=> bm!677671 m!8026810))

(declare-fun m!8026812 () Bool)

(assert (=> b!7374009 m!8026812))

(assert (=> bm!677623 d!2284259))

(declare-fun d!2284261 () Bool)

(assert (=> d!2284261 (= ($colon$colon!3274 (exprs!8732 ct1!282) (ite (or c!1370539 c!1370538) (regTwo!39096 r1!2370) r1!2370)) (Cons!71664 (ite (or c!1370539 c!1370538) (regTwo!39096 r1!2370) r1!2370) (exprs!8732 ct1!282)))))

(assert (=> bm!677620 d!2284261))

(declare-fun b!7374012 () Bool)

(declare-fun e!4414402 () Bool)

(declare-fun call!677678 () Bool)

(assert (=> b!7374012 (= e!4414402 call!677678)))

(declare-fun d!2284263 () Bool)

(declare-fun res!2975053 () Bool)

(declare-fun e!4414404 () Bool)

(assert (=> d!2284263 (=> res!2975053 e!4414404)))

(assert (=> d!2284263 (= res!2975053 (is-ElementMatch!19292 (ite c!1370503 (reg!19621 r1!2370) (ite c!1370502 (regOne!39097 r1!2370) (regTwo!39096 r1!2370)))))))

(assert (=> d!2284263 (= (validRegex!9888 (ite c!1370503 (reg!19621 r1!2370) (ite c!1370502 (regOne!39097 r1!2370) (regTwo!39096 r1!2370)))) e!4414404)))

(declare-fun b!7374013 () Bool)

(declare-fun res!2975055 () Bool)

(declare-fun e!4414408 () Bool)

(assert (=> b!7374013 (=> res!2975055 e!4414408)))

(assert (=> b!7374013 (= res!2975055 (not (is-Concat!28137 (ite c!1370503 (reg!19621 r1!2370) (ite c!1370502 (regOne!39097 r1!2370) (regTwo!39096 r1!2370))))))))

(declare-fun e!4414406 () Bool)

(assert (=> b!7374013 (= e!4414406 e!4414408)))

(declare-fun b!7374014 () Bool)

(declare-fun e!4414403 () Bool)

(assert (=> b!7374014 (= e!4414404 e!4414403)))

(declare-fun c!1370589 () Bool)

(assert (=> b!7374014 (= c!1370589 (is-Star!19292 (ite c!1370503 (reg!19621 r1!2370) (ite c!1370502 (regOne!39097 r1!2370) (regTwo!39096 r1!2370)))))))

(declare-fun b!7374015 () Bool)

(assert (=> b!7374015 (= e!4414408 e!4414402)))

(declare-fun res!2975051 () Bool)

(assert (=> b!7374015 (=> (not res!2975051) (not e!4414402))))

(declare-fun call!677679 () Bool)

(assert (=> b!7374015 (= res!2975051 call!677679)))

(declare-fun b!7374016 () Bool)

(declare-fun e!4414407 () Bool)

(declare-fun call!677680 () Bool)

(assert (=> b!7374016 (= e!4414407 call!677680)))

(declare-fun bm!677673 () Bool)

(declare-fun c!1370588 () Bool)

(assert (=> bm!677673 (= call!677680 (validRegex!9888 (ite c!1370589 (reg!19621 (ite c!1370503 (reg!19621 r1!2370) (ite c!1370502 (regOne!39097 r1!2370) (regTwo!39096 r1!2370)))) (ite c!1370588 (regOne!39097 (ite c!1370503 (reg!19621 r1!2370) (ite c!1370502 (regOne!39097 r1!2370) (regTwo!39096 r1!2370)))) (regTwo!39096 (ite c!1370503 (reg!19621 r1!2370) (ite c!1370502 (regOne!39097 r1!2370) (regTwo!39096 r1!2370))))))))))

(declare-fun b!7374017 () Bool)

(assert (=> b!7374017 (= e!4414403 e!4414407)))

(declare-fun res!2975054 () Bool)

(assert (=> b!7374017 (= res!2975054 (not (nullable!8368 (reg!19621 (ite c!1370503 (reg!19621 r1!2370) (ite c!1370502 (regOne!39097 r1!2370) (regTwo!39096 r1!2370)))))))))

(assert (=> b!7374017 (=> (not res!2975054) (not e!4414407))))

(declare-fun b!7374018 () Bool)

(declare-fun e!4414405 () Bool)

(assert (=> b!7374018 (= e!4414405 call!677679)))

(declare-fun b!7374019 () Bool)

(assert (=> b!7374019 (= e!4414403 e!4414406)))

(assert (=> b!7374019 (= c!1370588 (is-Union!19292 (ite c!1370503 (reg!19621 r1!2370) (ite c!1370502 (regOne!39097 r1!2370) (regTwo!39096 r1!2370)))))))

(declare-fun b!7374020 () Bool)

(declare-fun res!2975052 () Bool)

(assert (=> b!7374020 (=> (not res!2975052) (not e!4414405))))

(assert (=> b!7374020 (= res!2975052 call!677678)))

(assert (=> b!7374020 (= e!4414406 e!4414405)))

(declare-fun bm!677674 () Bool)

(assert (=> bm!677674 (= call!677679 (validRegex!9888 (ite c!1370588 (regTwo!39097 (ite c!1370503 (reg!19621 r1!2370) (ite c!1370502 (regOne!39097 r1!2370) (regTwo!39096 r1!2370)))) (regOne!39096 (ite c!1370503 (reg!19621 r1!2370) (ite c!1370502 (regOne!39097 r1!2370) (regTwo!39096 r1!2370)))))))))

(declare-fun bm!677675 () Bool)

(assert (=> bm!677675 (= call!677678 call!677680)))

(assert (= (and d!2284263 (not res!2975053)) b!7374014))

(assert (= (and b!7374014 c!1370589) b!7374017))

(assert (= (and b!7374014 (not c!1370589)) b!7374019))

(assert (= (and b!7374017 res!2975054) b!7374016))

(assert (= (and b!7374019 c!1370588) b!7374020))

(assert (= (and b!7374019 (not c!1370588)) b!7374013))

(assert (= (and b!7374020 res!2975052) b!7374018))

(assert (= (and b!7374013 (not res!2975055)) b!7374015))

(assert (= (and b!7374015 res!2975051) b!7374012))

(assert (= (or b!7374020 b!7374012) bm!677675))

(assert (= (or b!7374018 b!7374015) bm!677674))

(assert (= (or b!7374016 bm!677675) bm!677673))

(declare-fun m!8026814 () Bool)

(assert (=> bm!677673 m!8026814))

(declare-fun m!8026816 () Bool)

(assert (=> b!7374017 m!8026816))

(declare-fun m!8026818 () Bool)

(assert (=> bm!677674 m!8026818))

(assert (=> bm!677580 d!2284263))

(declare-fun d!2284265 () Bool)

(declare-fun res!2975056 () Bool)

(declare-fun e!4414409 () Bool)

(assert (=> d!2284265 (=> res!2975056 e!4414409)))

(assert (=> d!2284265 (= res!2975056 (is-Nil!71664 (exprs!8732 (Context!16465 ($colon$colon!3274 (exprs!8732 ct1!282) (regTwo!39096 r1!2370))))))))

(assert (=> d!2284265 (= (forall!18092 (exprs!8732 (Context!16465 ($colon$colon!3274 (exprs!8732 ct1!282) (regTwo!39096 r1!2370)))) lambda!458238) e!4414409)))

(declare-fun b!7374021 () Bool)

(declare-fun e!4414410 () Bool)

(assert (=> b!7374021 (= e!4414409 e!4414410)))

(declare-fun res!2975057 () Bool)

(assert (=> b!7374021 (=> (not res!2975057) (not e!4414410))))

(assert (=> b!7374021 (= res!2975057 (dynLambda!29526 lambda!458238 (h!78112 (exprs!8732 (Context!16465 ($colon$colon!3274 (exprs!8732 ct1!282) (regTwo!39096 r1!2370)))))))))

(declare-fun b!7374022 () Bool)

(assert (=> b!7374022 (= e!4414410 (forall!18092 (t!386259 (exprs!8732 (Context!16465 ($colon$colon!3274 (exprs!8732 ct1!282) (regTwo!39096 r1!2370))))) lambda!458238))))

(assert (= (and d!2284265 (not res!2975056)) b!7374021))

(assert (= (and b!7374021 res!2975057) b!7374022))

(declare-fun b_lambda!284487 () Bool)

(assert (=> (not b_lambda!284487) (not b!7374021)))

(declare-fun m!8026820 () Bool)

(assert (=> b!7374021 m!8026820))

(declare-fun m!8026822 () Bool)

(assert (=> b!7374022 m!8026822))

(assert (=> d!2284213 d!2284265))

(declare-fun b!7374037 () Bool)

(declare-fun e!4414424 () Bool)

(declare-fun e!4414425 () Bool)

(assert (=> b!7374037 (= e!4414424 e!4414425)))

(declare-fun res!2975072 () Bool)

(declare-fun call!677686 () Bool)

(assert (=> b!7374037 (= res!2975072 call!677686)))

(assert (=> b!7374037 (=> res!2975072 e!4414425)))

(declare-fun bm!677680 () Bool)

(declare-fun call!677685 () Bool)

(declare-fun c!1370592 () Bool)

(assert (=> bm!677680 (= call!677685 (nullable!8368 (ite c!1370592 (regTwo!39097 (regOne!39096 r1!2370)) (regOne!39096 (regOne!39096 r1!2370)))))))

(declare-fun bm!677681 () Bool)

(assert (=> bm!677681 (= call!677686 (nullable!8368 (ite c!1370592 (regOne!39097 (regOne!39096 r1!2370)) (regTwo!39096 (regOne!39096 r1!2370)))))))

(declare-fun b!7374038 () Bool)

(declare-fun e!4414427 () Bool)

(declare-fun e!4414423 () Bool)

(assert (=> b!7374038 (= e!4414427 e!4414423)))

(declare-fun res!2975070 () Bool)

(assert (=> b!7374038 (=> res!2975070 e!4414423)))

(assert (=> b!7374038 (= res!2975070 (is-Star!19292 (regOne!39096 r1!2370)))))

(declare-fun b!7374039 () Bool)

(declare-fun e!4414426 () Bool)

(assert (=> b!7374039 (= e!4414424 e!4414426)))

(declare-fun res!2975069 () Bool)

(assert (=> b!7374039 (= res!2975069 call!677685)))

(assert (=> b!7374039 (=> (not res!2975069) (not e!4414426))))

(declare-fun d!2284267 () Bool)

(declare-fun res!2975068 () Bool)

(declare-fun e!4414428 () Bool)

(assert (=> d!2284267 (=> res!2975068 e!4414428)))

(assert (=> d!2284267 (= res!2975068 (is-EmptyExpr!19292 (regOne!39096 r1!2370)))))

(assert (=> d!2284267 (= (nullableFct!3349 (regOne!39096 r1!2370)) e!4414428)))

(declare-fun b!7374040 () Bool)

(assert (=> b!7374040 (= e!4414423 e!4414424)))

(assert (=> b!7374040 (= c!1370592 (is-Union!19292 (regOne!39096 r1!2370)))))

(declare-fun b!7374041 () Bool)

(assert (=> b!7374041 (= e!4414428 e!4414427)))

(declare-fun res!2975071 () Bool)

(assert (=> b!7374041 (=> (not res!2975071) (not e!4414427))))

(assert (=> b!7374041 (= res!2975071 (and (not (is-EmptyLang!19292 (regOne!39096 r1!2370))) (not (is-ElementMatch!19292 (regOne!39096 r1!2370)))))))

(declare-fun b!7374042 () Bool)

(assert (=> b!7374042 (= e!4414426 call!677686)))

(declare-fun b!7374043 () Bool)

(assert (=> b!7374043 (= e!4414425 call!677685)))

(assert (= (and d!2284267 (not res!2975068)) b!7374041))

(assert (= (and b!7374041 res!2975071) b!7374038))

(assert (= (and b!7374038 (not res!2975070)) b!7374040))

(assert (= (and b!7374040 c!1370592) b!7374037))

(assert (= (and b!7374040 (not c!1370592)) b!7374039))

(assert (= (and b!7374037 (not res!2975072)) b!7374043))

(assert (= (and b!7374039 res!2975069) b!7374042))

(assert (= (or b!7374043 b!7374039) bm!677680))

(assert (= (or b!7374037 b!7374042) bm!677681))

(declare-fun m!8026824 () Bool)

(assert (=> bm!677680 m!8026824))

(declare-fun m!8026826 () Bool)

(assert (=> bm!677681 m!8026826))

(assert (=> d!2284189 d!2284267))

(declare-fun d!2284269 () Bool)

(assert (=> d!2284269 (= (nullable!8368 (reg!19621 r1!2370)) (nullableFct!3349 (reg!19621 r1!2370)))))

(declare-fun bs!1921137 () Bool)

(assert (= bs!1921137 d!2284269))

(declare-fun m!8026828 () Bool)

(assert (=> bs!1921137 m!8026828))

(assert (=> b!7373702 d!2284269))

(declare-fun d!2284271 () Bool)

(declare-fun res!2975073 () Bool)

(declare-fun e!4414429 () Bool)

(assert (=> d!2284271 (=> res!2975073 e!4414429)))

(assert (=> d!2284271 (= res!2975073 (is-Nil!71664 (++!17108 (exprs!8732 ct1!282) (exprs!8732 ct2!378))))))

(assert (=> d!2284271 (= (forall!18092 (++!17108 (exprs!8732 ct1!282) (exprs!8732 ct2!378)) lambda!458226) e!4414429)))

(declare-fun b!7374044 () Bool)

(declare-fun e!4414430 () Bool)

(assert (=> b!7374044 (= e!4414429 e!4414430)))

(declare-fun res!2975074 () Bool)

(assert (=> b!7374044 (=> (not res!2975074) (not e!4414430))))

(assert (=> b!7374044 (= res!2975074 (dynLambda!29526 lambda!458226 (h!78112 (++!17108 (exprs!8732 ct1!282) (exprs!8732 ct2!378)))))))

(declare-fun b!7374045 () Bool)

(assert (=> b!7374045 (= e!4414430 (forall!18092 (t!386259 (++!17108 (exprs!8732 ct1!282) (exprs!8732 ct2!378))) lambda!458226))))

(assert (= (and d!2284271 (not res!2975073)) b!7374044))

(assert (= (and b!7374044 res!2975074) b!7374045))

(declare-fun b_lambda!284489 () Bool)

(assert (=> (not b_lambda!284489) (not b!7374044)))

(declare-fun m!8026830 () Bool)

(assert (=> b!7374044 m!8026830))

(declare-fun m!8026832 () Bool)

(assert (=> b!7374045 m!8026832))

(assert (=> d!2284205 d!2284271))

(assert (=> d!2284205 d!2284201))

(declare-fun d!2284273 () Bool)

(assert (=> d!2284273 (forall!18092 (++!17108 (exprs!8732 ct1!282) (exprs!8732 ct2!378)) lambda!458226)))

(assert (=> d!2284273 true))

(declare-fun _$78!946 () Unit!165533)

(assert (=> d!2284273 (= (choose!57320 (exprs!8732 ct1!282) (exprs!8732 ct2!378) lambda!458226) _$78!946)))

(declare-fun bs!1921138 () Bool)

(assert (= bs!1921138 d!2284273))

(assert (=> bs!1921138 m!8026580))

(assert (=> bs!1921138 m!8026580))

(assert (=> bs!1921138 m!8026674))

(assert (=> d!2284205 d!2284273))

(declare-fun d!2284275 () Bool)

(declare-fun res!2975075 () Bool)

(declare-fun e!4414431 () Bool)

(assert (=> d!2284275 (=> res!2975075 e!4414431)))

(assert (=> d!2284275 (= res!2975075 (is-Nil!71664 (exprs!8732 ct1!282)))))

(assert (=> d!2284275 (= (forall!18092 (exprs!8732 ct1!282) lambda!458226) e!4414431)))

(declare-fun b!7374046 () Bool)

(declare-fun e!4414432 () Bool)

(assert (=> b!7374046 (= e!4414431 e!4414432)))

(declare-fun res!2975076 () Bool)

(assert (=> b!7374046 (=> (not res!2975076) (not e!4414432))))

(assert (=> b!7374046 (= res!2975076 (dynLambda!29526 lambda!458226 (h!78112 (exprs!8732 ct1!282))))))

(declare-fun b!7374047 () Bool)

(assert (=> b!7374047 (= e!4414432 (forall!18092 (t!386259 (exprs!8732 ct1!282)) lambda!458226))))

(assert (= (and d!2284275 (not res!2975075)) b!7374046))

(assert (= (and b!7374046 res!2975076) b!7374047))

(declare-fun b_lambda!284491 () Bool)

(assert (=> (not b_lambda!284491) (not b!7374046)))

(declare-fun m!8026834 () Bool)

(assert (=> b!7374046 m!8026834))

(declare-fun m!8026836 () Bool)

(assert (=> b!7374047 m!8026836))

(assert (=> d!2284205 d!2284275))

(declare-fun d!2284277 () Bool)

(declare-fun c!1370595 () Bool)

(assert (=> d!2284277 (= c!1370595 (is-Nil!71664 lt!2616098))))

(declare-fun e!4414435 () (Set Regex!19292))

(assert (=> d!2284277 (= (content!15166 lt!2616098) e!4414435)))

(declare-fun b!7374052 () Bool)

(assert (=> b!7374052 (= e!4414435 (as set.empty (Set Regex!19292)))))

(declare-fun b!7374053 () Bool)

(assert (=> b!7374053 (= e!4414435 (set.union (set.insert (h!78112 lt!2616098) (as set.empty (Set Regex!19292))) (content!15166 (t!386259 lt!2616098))))))

(assert (= (and d!2284277 c!1370595) b!7374052))

(assert (= (and d!2284277 (not c!1370595)) b!7374053))

(declare-fun m!8026838 () Bool)

(assert (=> b!7374053 m!8026838))

(declare-fun m!8026840 () Bool)

(assert (=> b!7374053 m!8026840))

(assert (=> d!2284201 d!2284277))

(declare-fun d!2284279 () Bool)

(declare-fun c!1370596 () Bool)

(assert (=> d!2284279 (= c!1370596 (is-Nil!71664 (exprs!8732 ct1!282)))))

(declare-fun e!4414436 () (Set Regex!19292))

(assert (=> d!2284279 (= (content!15166 (exprs!8732 ct1!282)) e!4414436)))

(declare-fun b!7374054 () Bool)

(assert (=> b!7374054 (= e!4414436 (as set.empty (Set Regex!19292)))))

(declare-fun b!7374055 () Bool)

(assert (=> b!7374055 (= e!4414436 (set.union (set.insert (h!78112 (exprs!8732 ct1!282)) (as set.empty (Set Regex!19292))) (content!15166 (t!386259 (exprs!8732 ct1!282)))))))

(assert (= (and d!2284279 c!1370596) b!7374054))

(assert (= (and d!2284279 (not c!1370596)) b!7374055))

(declare-fun m!8026842 () Bool)

(assert (=> b!7374055 m!8026842))

(assert (=> b!7374055 m!8026756))

(assert (=> d!2284201 d!2284279))

(declare-fun d!2284281 () Bool)

(declare-fun c!1370597 () Bool)

(assert (=> d!2284281 (= c!1370597 (is-Nil!71664 (exprs!8732 ct2!378)))))

(declare-fun e!4414437 () (Set Regex!19292))

(assert (=> d!2284281 (= (content!15166 (exprs!8732 ct2!378)) e!4414437)))

(declare-fun b!7374056 () Bool)

(assert (=> b!7374056 (= e!4414437 (as set.empty (Set Regex!19292)))))

(declare-fun b!7374057 () Bool)

(assert (=> b!7374057 (= e!4414437 (set.union (set.insert (h!78112 (exprs!8732 ct2!378)) (as set.empty (Set Regex!19292))) (content!15166 (t!386259 (exprs!8732 ct2!378)))))))

(assert (= (and d!2284281 c!1370597) b!7374056))

(assert (= (and d!2284281 (not c!1370597)) b!7374057))

(declare-fun m!8026844 () Bool)

(assert (=> b!7374057 m!8026844))

(declare-fun m!8026846 () Bool)

(assert (=> b!7374057 m!8026846))

(assert (=> d!2284201 d!2284281))

(declare-fun b!7374058 () Bool)

(declare-fun e!4414438 () Bool)

(declare-fun call!677687 () Bool)

(assert (=> b!7374058 (= e!4414438 call!677687)))

(declare-fun d!2284283 () Bool)

(declare-fun res!2975079 () Bool)

(declare-fun e!4414440 () Bool)

(assert (=> d!2284283 (=> res!2975079 e!4414440)))

(assert (=> d!2284283 (= res!2975079 (is-ElementMatch!19292 (ite c!1370501 (reg!19621 (regTwo!39096 r1!2370)) (ite c!1370500 (regOne!39097 (regTwo!39096 r1!2370)) (regTwo!39096 (regTwo!39096 r1!2370))))))))

(assert (=> d!2284283 (= (validRegex!9888 (ite c!1370501 (reg!19621 (regTwo!39096 r1!2370)) (ite c!1370500 (regOne!39097 (regTwo!39096 r1!2370)) (regTwo!39096 (regTwo!39096 r1!2370))))) e!4414440)))

(declare-fun b!7374059 () Bool)

(declare-fun res!2975081 () Bool)

(declare-fun e!4414444 () Bool)

(assert (=> b!7374059 (=> res!2975081 e!4414444)))

(assert (=> b!7374059 (= res!2975081 (not (is-Concat!28137 (ite c!1370501 (reg!19621 (regTwo!39096 r1!2370)) (ite c!1370500 (regOne!39097 (regTwo!39096 r1!2370)) (regTwo!39096 (regTwo!39096 r1!2370)))))))))

(declare-fun e!4414442 () Bool)

(assert (=> b!7374059 (= e!4414442 e!4414444)))

(declare-fun b!7374060 () Bool)

(declare-fun e!4414439 () Bool)

(assert (=> b!7374060 (= e!4414440 e!4414439)))

(declare-fun c!1370599 () Bool)

(assert (=> b!7374060 (= c!1370599 (is-Star!19292 (ite c!1370501 (reg!19621 (regTwo!39096 r1!2370)) (ite c!1370500 (regOne!39097 (regTwo!39096 r1!2370)) (regTwo!39096 (regTwo!39096 r1!2370))))))))

(declare-fun b!7374061 () Bool)

(assert (=> b!7374061 (= e!4414444 e!4414438)))

(declare-fun res!2975077 () Bool)

(assert (=> b!7374061 (=> (not res!2975077) (not e!4414438))))

(declare-fun call!677688 () Bool)

(assert (=> b!7374061 (= res!2975077 call!677688)))

(declare-fun b!7374062 () Bool)

(declare-fun e!4414443 () Bool)

(declare-fun call!677689 () Bool)

(assert (=> b!7374062 (= e!4414443 call!677689)))

(declare-fun bm!677682 () Bool)

(declare-fun c!1370598 () Bool)

(assert (=> bm!677682 (= call!677689 (validRegex!9888 (ite c!1370599 (reg!19621 (ite c!1370501 (reg!19621 (regTwo!39096 r1!2370)) (ite c!1370500 (regOne!39097 (regTwo!39096 r1!2370)) (regTwo!39096 (regTwo!39096 r1!2370))))) (ite c!1370598 (regOne!39097 (ite c!1370501 (reg!19621 (regTwo!39096 r1!2370)) (ite c!1370500 (regOne!39097 (regTwo!39096 r1!2370)) (regTwo!39096 (regTwo!39096 r1!2370))))) (regTwo!39096 (ite c!1370501 (reg!19621 (regTwo!39096 r1!2370)) (ite c!1370500 (regOne!39097 (regTwo!39096 r1!2370)) (regTwo!39096 (regTwo!39096 r1!2370)))))))))))

(declare-fun b!7374063 () Bool)

(assert (=> b!7374063 (= e!4414439 e!4414443)))

(declare-fun res!2975080 () Bool)

(assert (=> b!7374063 (= res!2975080 (not (nullable!8368 (reg!19621 (ite c!1370501 (reg!19621 (regTwo!39096 r1!2370)) (ite c!1370500 (regOne!39097 (regTwo!39096 r1!2370)) (regTwo!39096 (regTwo!39096 r1!2370))))))))))

(assert (=> b!7374063 (=> (not res!2975080) (not e!4414443))))

(declare-fun b!7374064 () Bool)

(declare-fun e!4414441 () Bool)

(assert (=> b!7374064 (= e!4414441 call!677688)))

(declare-fun b!7374065 () Bool)

(assert (=> b!7374065 (= e!4414439 e!4414442)))

(assert (=> b!7374065 (= c!1370598 (is-Union!19292 (ite c!1370501 (reg!19621 (regTwo!39096 r1!2370)) (ite c!1370500 (regOne!39097 (regTwo!39096 r1!2370)) (regTwo!39096 (regTwo!39096 r1!2370))))))))

(declare-fun b!7374066 () Bool)

(declare-fun res!2975078 () Bool)

(assert (=> b!7374066 (=> (not res!2975078) (not e!4414441))))

(assert (=> b!7374066 (= res!2975078 call!677687)))

(assert (=> b!7374066 (= e!4414442 e!4414441)))

(declare-fun bm!677683 () Bool)

(assert (=> bm!677683 (= call!677688 (validRegex!9888 (ite c!1370598 (regTwo!39097 (ite c!1370501 (reg!19621 (regTwo!39096 r1!2370)) (ite c!1370500 (regOne!39097 (regTwo!39096 r1!2370)) (regTwo!39096 (regTwo!39096 r1!2370))))) (regOne!39096 (ite c!1370501 (reg!19621 (regTwo!39096 r1!2370)) (ite c!1370500 (regOne!39097 (regTwo!39096 r1!2370)) (regTwo!39096 (regTwo!39096 r1!2370))))))))))

(declare-fun bm!677684 () Bool)

(assert (=> bm!677684 (= call!677687 call!677689)))

(assert (= (and d!2284283 (not res!2975079)) b!7374060))

(assert (= (and b!7374060 c!1370599) b!7374063))

(assert (= (and b!7374060 (not c!1370599)) b!7374065))

(assert (= (and b!7374063 res!2975080) b!7374062))

(assert (= (and b!7374065 c!1370598) b!7374066))

(assert (= (and b!7374065 (not c!1370598)) b!7374059))

(assert (= (and b!7374066 res!2975078) b!7374064))

(assert (= (and b!7374059 (not res!2975081)) b!7374061))

(assert (= (and b!7374061 res!2975077) b!7374058))

(assert (= (or b!7374066 b!7374058) bm!677684))

(assert (= (or b!7374064 b!7374061) bm!677683))

(assert (= (or b!7374062 bm!677684) bm!677682))

(declare-fun m!8026848 () Bool)

(assert (=> bm!677682 m!8026848))

(declare-fun m!8026850 () Bool)

(assert (=> b!7374063 m!8026850))

(declare-fun m!8026852 () Bool)

(assert (=> bm!677683 m!8026852))

(assert (=> bm!677577 d!2284283))

(declare-fun d!2284285 () Bool)

(declare-fun res!2975082 () Bool)

(declare-fun e!4414445 () Bool)

(assert (=> d!2284285 (=> res!2975082 e!4414445)))

(assert (=> d!2284285 (= res!2975082 (is-Nil!71664 (exprs!8732 ct1!282)))))

(assert (=> d!2284285 (= (forall!18092 (exprs!8732 ct1!282) lambda!458233) e!4414445)))

(declare-fun b!7374067 () Bool)

(declare-fun e!4414446 () Bool)

(assert (=> b!7374067 (= e!4414445 e!4414446)))

(declare-fun res!2975083 () Bool)

(assert (=> b!7374067 (=> (not res!2975083) (not e!4414446))))

(assert (=> b!7374067 (= res!2975083 (dynLambda!29526 lambda!458233 (h!78112 (exprs!8732 ct1!282))))))

(declare-fun b!7374068 () Bool)

(assert (=> b!7374068 (= e!4414446 (forall!18092 (t!386259 (exprs!8732 ct1!282)) lambda!458233))))

(assert (= (and d!2284285 (not res!2975082)) b!7374067))

(assert (= (and b!7374067 res!2975083) b!7374068))

(declare-fun b_lambda!284493 () Bool)

(assert (=> (not b_lambda!284493) (not b!7374067)))

(declare-fun m!8026854 () Bool)

(assert (=> b!7374067 m!8026854))

(declare-fun m!8026856 () Bool)

(assert (=> b!7374068 m!8026856))

(assert (=> d!2284195 d!2284285))

(assert (=> b!7373756 d!2284189))

(declare-fun e!4414447 () Bool)

(assert (=> b!7373849 (= tp!2096409 e!4414447)))

(declare-fun b!7374072 () Bool)

(declare-fun tp!2096457 () Bool)

(declare-fun tp!2096458 () Bool)

(assert (=> b!7374072 (= e!4414447 (and tp!2096457 tp!2096458))))

(declare-fun b!7374071 () Bool)

(declare-fun tp!2096460 () Bool)

(assert (=> b!7374071 (= e!4414447 tp!2096460)))

(declare-fun b!7374070 () Bool)

(declare-fun tp!2096459 () Bool)

(declare-fun tp!2096456 () Bool)

(assert (=> b!7374070 (= e!4414447 (and tp!2096459 tp!2096456))))

(declare-fun b!7374069 () Bool)

(assert (=> b!7374069 (= e!4414447 tp_is_empty!48829)))

(assert (= (and b!7373849 (is-ElementMatch!19292 (h!78112 (exprs!8732 ct2!378)))) b!7374069))

(assert (= (and b!7373849 (is-Concat!28137 (h!78112 (exprs!8732 ct2!378)))) b!7374070))

(assert (= (and b!7373849 (is-Star!19292 (h!78112 (exprs!8732 ct2!378)))) b!7374071))

(assert (= (and b!7373849 (is-Union!19292 (h!78112 (exprs!8732 ct2!378)))) b!7374072))

(declare-fun b!7374073 () Bool)

(declare-fun e!4414448 () Bool)

(declare-fun tp!2096461 () Bool)

(declare-fun tp!2096462 () Bool)

(assert (=> b!7374073 (= e!4414448 (and tp!2096461 tp!2096462))))

(assert (=> b!7373849 (= tp!2096410 e!4414448)))

(assert (= (and b!7373849 (is-Cons!71664 (t!386259 (exprs!8732 ct2!378)))) b!7374073))

(declare-fun e!4414449 () Bool)

(assert (=> b!7373826 (= tp!2096377 e!4414449)))

(declare-fun b!7374077 () Bool)

(declare-fun tp!2096464 () Bool)

(declare-fun tp!2096465 () Bool)

(assert (=> b!7374077 (= e!4414449 (and tp!2096464 tp!2096465))))

(declare-fun b!7374076 () Bool)

(declare-fun tp!2096467 () Bool)

(assert (=> b!7374076 (= e!4414449 tp!2096467)))

(declare-fun b!7374075 () Bool)

(declare-fun tp!2096466 () Bool)

(declare-fun tp!2096463 () Bool)

(assert (=> b!7374075 (= e!4414449 (and tp!2096466 tp!2096463))))

(declare-fun b!7374074 () Bool)

(assert (=> b!7374074 (= e!4414449 tp_is_empty!48829)))

(assert (= (and b!7373826 (is-ElementMatch!19292 (regOne!39097 (regOne!39096 r1!2370)))) b!7374074))

(assert (= (and b!7373826 (is-Concat!28137 (regOne!39097 (regOne!39096 r1!2370)))) b!7374075))

(assert (= (and b!7373826 (is-Star!19292 (regOne!39097 (regOne!39096 r1!2370)))) b!7374076))

(assert (= (and b!7373826 (is-Union!19292 (regOne!39097 (regOne!39096 r1!2370)))) b!7374077))

(declare-fun e!4414450 () Bool)

(assert (=> b!7373826 (= tp!2096378 e!4414450)))

(declare-fun b!7374081 () Bool)

(declare-fun tp!2096469 () Bool)

(declare-fun tp!2096470 () Bool)

(assert (=> b!7374081 (= e!4414450 (and tp!2096469 tp!2096470))))

(declare-fun b!7374080 () Bool)

(declare-fun tp!2096472 () Bool)

(assert (=> b!7374080 (= e!4414450 tp!2096472)))

(declare-fun b!7374079 () Bool)

(declare-fun tp!2096471 () Bool)

(declare-fun tp!2096468 () Bool)

(assert (=> b!7374079 (= e!4414450 (and tp!2096471 tp!2096468))))

(declare-fun b!7374078 () Bool)

(assert (=> b!7374078 (= e!4414450 tp_is_empty!48829)))

(assert (= (and b!7373826 (is-ElementMatch!19292 (regTwo!39097 (regOne!39096 r1!2370)))) b!7374078))

(assert (= (and b!7373826 (is-Concat!28137 (regTwo!39097 (regOne!39096 r1!2370)))) b!7374079))

(assert (= (and b!7373826 (is-Star!19292 (regTwo!39097 (regOne!39096 r1!2370)))) b!7374080))

(assert (= (and b!7373826 (is-Union!19292 (regTwo!39097 (regOne!39096 r1!2370)))) b!7374081))

(declare-fun e!4414451 () Bool)

(assert (=> b!7373832 (= tp!2096389 e!4414451)))

(declare-fun b!7374085 () Bool)

(declare-fun tp!2096474 () Bool)

(declare-fun tp!2096475 () Bool)

(assert (=> b!7374085 (= e!4414451 (and tp!2096474 tp!2096475))))

(declare-fun b!7374084 () Bool)

(declare-fun tp!2096477 () Bool)

(assert (=> b!7374084 (= e!4414451 tp!2096477)))

(declare-fun b!7374083 () Bool)

(declare-fun tp!2096476 () Bool)

(declare-fun tp!2096473 () Bool)

(assert (=> b!7374083 (= e!4414451 (and tp!2096476 tp!2096473))))

(declare-fun b!7374082 () Bool)

(assert (=> b!7374082 (= e!4414451 tp_is_empty!48829)))

(assert (= (and b!7373832 (is-ElementMatch!19292 (regOne!39096 (regOne!39097 r1!2370)))) b!7374082))

(assert (= (and b!7373832 (is-Concat!28137 (regOne!39096 (regOne!39097 r1!2370)))) b!7374083))

(assert (= (and b!7373832 (is-Star!19292 (regOne!39096 (regOne!39097 r1!2370)))) b!7374084))

(assert (= (and b!7373832 (is-Union!19292 (regOne!39096 (regOne!39097 r1!2370)))) b!7374085))

(declare-fun e!4414452 () Bool)

(assert (=> b!7373832 (= tp!2096386 e!4414452)))

(declare-fun b!7374089 () Bool)

(declare-fun tp!2096479 () Bool)

(declare-fun tp!2096480 () Bool)

(assert (=> b!7374089 (= e!4414452 (and tp!2096479 tp!2096480))))

(declare-fun b!7374088 () Bool)

(declare-fun tp!2096482 () Bool)

(assert (=> b!7374088 (= e!4414452 tp!2096482)))

(declare-fun b!7374087 () Bool)

(declare-fun tp!2096481 () Bool)

(declare-fun tp!2096478 () Bool)

(assert (=> b!7374087 (= e!4414452 (and tp!2096481 tp!2096478))))

(declare-fun b!7374086 () Bool)

(assert (=> b!7374086 (= e!4414452 tp_is_empty!48829)))

(assert (= (and b!7373832 (is-ElementMatch!19292 (regTwo!39096 (regOne!39097 r1!2370)))) b!7374086))

(assert (= (and b!7373832 (is-Concat!28137 (regTwo!39096 (regOne!39097 r1!2370)))) b!7374087))

(assert (= (and b!7373832 (is-Star!19292 (regTwo!39096 (regOne!39097 r1!2370)))) b!7374088))

(assert (= (and b!7373832 (is-Union!19292 (regTwo!39096 (regOne!39097 r1!2370)))) b!7374089))

(declare-fun e!4414453 () Bool)

(assert (=> b!7373833 (= tp!2096390 e!4414453)))

(declare-fun b!7374093 () Bool)

(declare-fun tp!2096484 () Bool)

(declare-fun tp!2096485 () Bool)

(assert (=> b!7374093 (= e!4414453 (and tp!2096484 tp!2096485))))

(declare-fun b!7374092 () Bool)

(declare-fun tp!2096487 () Bool)

(assert (=> b!7374092 (= e!4414453 tp!2096487)))

(declare-fun b!7374091 () Bool)

(declare-fun tp!2096486 () Bool)

(declare-fun tp!2096483 () Bool)

(assert (=> b!7374091 (= e!4414453 (and tp!2096486 tp!2096483))))

(declare-fun b!7374090 () Bool)

(assert (=> b!7374090 (= e!4414453 tp_is_empty!48829)))

(assert (= (and b!7373833 (is-ElementMatch!19292 (reg!19621 (regOne!39097 r1!2370)))) b!7374090))

(assert (= (and b!7373833 (is-Concat!28137 (reg!19621 (regOne!39097 r1!2370)))) b!7374091))

(assert (= (and b!7373833 (is-Star!19292 (reg!19621 (regOne!39097 r1!2370)))) b!7374092))

(assert (= (and b!7373833 (is-Union!19292 (reg!19621 (regOne!39097 r1!2370)))) b!7374093))

(declare-fun e!4414454 () Bool)

(assert (=> b!7373836 (= tp!2096394 e!4414454)))

(declare-fun b!7374097 () Bool)

(declare-fun tp!2096489 () Bool)

(declare-fun tp!2096490 () Bool)

(assert (=> b!7374097 (= e!4414454 (and tp!2096489 tp!2096490))))

(declare-fun b!7374096 () Bool)

(declare-fun tp!2096492 () Bool)

(assert (=> b!7374096 (= e!4414454 tp!2096492)))

(declare-fun b!7374095 () Bool)

(declare-fun tp!2096491 () Bool)

(declare-fun tp!2096488 () Bool)

(assert (=> b!7374095 (= e!4414454 (and tp!2096491 tp!2096488))))

(declare-fun b!7374094 () Bool)

(assert (=> b!7374094 (= e!4414454 tp_is_empty!48829)))

(assert (= (and b!7373836 (is-ElementMatch!19292 (regOne!39096 (regTwo!39097 r1!2370)))) b!7374094))

(assert (= (and b!7373836 (is-Concat!28137 (regOne!39096 (regTwo!39097 r1!2370)))) b!7374095))

(assert (= (and b!7373836 (is-Star!19292 (regOne!39096 (regTwo!39097 r1!2370)))) b!7374096))

(assert (= (and b!7373836 (is-Union!19292 (regOne!39096 (regTwo!39097 r1!2370)))) b!7374097))

(declare-fun e!4414455 () Bool)

(assert (=> b!7373836 (= tp!2096391 e!4414455)))

(declare-fun b!7374101 () Bool)

(declare-fun tp!2096494 () Bool)

(declare-fun tp!2096495 () Bool)

(assert (=> b!7374101 (= e!4414455 (and tp!2096494 tp!2096495))))

(declare-fun b!7374100 () Bool)

(declare-fun tp!2096497 () Bool)

(assert (=> b!7374100 (= e!4414455 tp!2096497)))

(declare-fun b!7374099 () Bool)

(declare-fun tp!2096496 () Bool)

(declare-fun tp!2096493 () Bool)

(assert (=> b!7374099 (= e!4414455 (and tp!2096496 tp!2096493))))

(declare-fun b!7374098 () Bool)

(assert (=> b!7374098 (= e!4414455 tp_is_empty!48829)))

(assert (= (and b!7373836 (is-ElementMatch!19292 (regTwo!39096 (regTwo!39097 r1!2370)))) b!7374098))

(assert (= (and b!7373836 (is-Concat!28137 (regTwo!39096 (regTwo!39097 r1!2370)))) b!7374099))

(assert (= (and b!7373836 (is-Star!19292 (regTwo!39096 (regTwo!39097 r1!2370)))) b!7374100))

(assert (= (and b!7373836 (is-Union!19292 (regTwo!39096 (regTwo!39097 r1!2370)))) b!7374101))

(declare-fun e!4414456 () Bool)

(assert (=> b!7373828 (= tp!2096384 e!4414456)))

(declare-fun b!7374105 () Bool)

(declare-fun tp!2096499 () Bool)

(declare-fun tp!2096500 () Bool)

(assert (=> b!7374105 (= e!4414456 (and tp!2096499 tp!2096500))))

(declare-fun b!7374104 () Bool)

(declare-fun tp!2096502 () Bool)

(assert (=> b!7374104 (= e!4414456 tp!2096502)))

(declare-fun b!7374103 () Bool)

(declare-fun tp!2096501 () Bool)

(declare-fun tp!2096498 () Bool)

(assert (=> b!7374103 (= e!4414456 (and tp!2096501 tp!2096498))))

(declare-fun b!7374102 () Bool)

(assert (=> b!7374102 (= e!4414456 tp_is_empty!48829)))

(assert (= (and b!7373828 (is-ElementMatch!19292 (regOne!39096 (regTwo!39096 r1!2370)))) b!7374102))

(assert (= (and b!7373828 (is-Concat!28137 (regOne!39096 (regTwo!39096 r1!2370)))) b!7374103))

(assert (= (and b!7373828 (is-Star!19292 (regOne!39096 (regTwo!39096 r1!2370)))) b!7374104))

(assert (= (and b!7373828 (is-Union!19292 (regOne!39096 (regTwo!39096 r1!2370)))) b!7374105))

(declare-fun e!4414457 () Bool)

(assert (=> b!7373828 (= tp!2096381 e!4414457)))

(declare-fun b!7374109 () Bool)

(declare-fun tp!2096504 () Bool)

(declare-fun tp!2096505 () Bool)

(assert (=> b!7374109 (= e!4414457 (and tp!2096504 tp!2096505))))

(declare-fun b!7374108 () Bool)

(declare-fun tp!2096507 () Bool)

(assert (=> b!7374108 (= e!4414457 tp!2096507)))

(declare-fun b!7374107 () Bool)

(declare-fun tp!2096506 () Bool)

(declare-fun tp!2096503 () Bool)

(assert (=> b!7374107 (= e!4414457 (and tp!2096506 tp!2096503))))

(declare-fun b!7374106 () Bool)

(assert (=> b!7374106 (= e!4414457 tp_is_empty!48829)))

(assert (= (and b!7373828 (is-ElementMatch!19292 (regTwo!39096 (regTwo!39096 r1!2370)))) b!7374106))

(assert (= (and b!7373828 (is-Concat!28137 (regTwo!39096 (regTwo!39096 r1!2370)))) b!7374107))

(assert (= (and b!7373828 (is-Star!19292 (regTwo!39096 (regTwo!39096 r1!2370)))) b!7374108))

(assert (= (and b!7373828 (is-Union!19292 (regTwo!39096 (regTwo!39096 r1!2370)))) b!7374109))

(declare-fun e!4414458 () Bool)

(assert (=> b!7373829 (= tp!2096385 e!4414458)))

(declare-fun b!7374113 () Bool)

(declare-fun tp!2096509 () Bool)

(declare-fun tp!2096510 () Bool)

(assert (=> b!7374113 (= e!4414458 (and tp!2096509 tp!2096510))))

(declare-fun b!7374112 () Bool)

(declare-fun tp!2096512 () Bool)

(assert (=> b!7374112 (= e!4414458 tp!2096512)))

(declare-fun b!7374111 () Bool)

(declare-fun tp!2096511 () Bool)

(declare-fun tp!2096508 () Bool)

(assert (=> b!7374111 (= e!4414458 (and tp!2096511 tp!2096508))))

(declare-fun b!7374110 () Bool)

(assert (=> b!7374110 (= e!4414458 tp_is_empty!48829)))

(assert (= (and b!7373829 (is-ElementMatch!19292 (reg!19621 (regTwo!39096 r1!2370)))) b!7374110))

(assert (= (and b!7373829 (is-Concat!28137 (reg!19621 (regTwo!39096 r1!2370)))) b!7374111))

(assert (= (and b!7373829 (is-Star!19292 (reg!19621 (regTwo!39096 r1!2370)))) b!7374112))

(assert (= (and b!7373829 (is-Union!19292 (reg!19621 (regTwo!39096 r1!2370)))) b!7374113))

(declare-fun e!4414459 () Bool)

(assert (=> b!7373824 (= tp!2096379 e!4414459)))

(declare-fun b!7374117 () Bool)

(declare-fun tp!2096514 () Bool)

(declare-fun tp!2096515 () Bool)

(assert (=> b!7374117 (= e!4414459 (and tp!2096514 tp!2096515))))

(declare-fun b!7374116 () Bool)

(declare-fun tp!2096517 () Bool)

(assert (=> b!7374116 (= e!4414459 tp!2096517)))

(declare-fun b!7374115 () Bool)

(declare-fun tp!2096516 () Bool)

(declare-fun tp!2096513 () Bool)

(assert (=> b!7374115 (= e!4414459 (and tp!2096516 tp!2096513))))

(declare-fun b!7374114 () Bool)

(assert (=> b!7374114 (= e!4414459 tp_is_empty!48829)))

(assert (= (and b!7373824 (is-ElementMatch!19292 (regOne!39096 (regOne!39096 r1!2370)))) b!7374114))

(assert (= (and b!7373824 (is-Concat!28137 (regOne!39096 (regOne!39096 r1!2370)))) b!7374115))

(assert (= (and b!7373824 (is-Star!19292 (regOne!39096 (regOne!39096 r1!2370)))) b!7374116))

(assert (= (and b!7373824 (is-Union!19292 (regOne!39096 (regOne!39096 r1!2370)))) b!7374117))

(declare-fun e!4414460 () Bool)

(assert (=> b!7373824 (= tp!2096376 e!4414460)))

(declare-fun b!7374121 () Bool)

(declare-fun tp!2096519 () Bool)

(declare-fun tp!2096520 () Bool)

(assert (=> b!7374121 (= e!4414460 (and tp!2096519 tp!2096520))))

(declare-fun b!7374120 () Bool)

(declare-fun tp!2096522 () Bool)

(assert (=> b!7374120 (= e!4414460 tp!2096522)))

(declare-fun b!7374119 () Bool)

(declare-fun tp!2096521 () Bool)

(declare-fun tp!2096518 () Bool)

(assert (=> b!7374119 (= e!4414460 (and tp!2096521 tp!2096518))))

(declare-fun b!7374118 () Bool)

(assert (=> b!7374118 (= e!4414460 tp_is_empty!48829)))

(assert (= (and b!7373824 (is-ElementMatch!19292 (regTwo!39096 (regOne!39096 r1!2370)))) b!7374118))

(assert (= (and b!7373824 (is-Concat!28137 (regTwo!39096 (regOne!39096 r1!2370)))) b!7374119))

(assert (= (and b!7373824 (is-Star!19292 (regTwo!39096 (regOne!39096 r1!2370)))) b!7374120))

(assert (= (and b!7373824 (is-Union!19292 (regTwo!39096 (regOne!39096 r1!2370)))) b!7374121))

(declare-fun e!4414461 () Bool)

(assert (=> b!7373825 (= tp!2096380 e!4414461)))

(declare-fun b!7374125 () Bool)

(declare-fun tp!2096524 () Bool)

(declare-fun tp!2096525 () Bool)

(assert (=> b!7374125 (= e!4414461 (and tp!2096524 tp!2096525))))

(declare-fun b!7374124 () Bool)

(declare-fun tp!2096527 () Bool)

(assert (=> b!7374124 (= e!4414461 tp!2096527)))

(declare-fun b!7374123 () Bool)

(declare-fun tp!2096526 () Bool)

(declare-fun tp!2096523 () Bool)

(assert (=> b!7374123 (= e!4414461 (and tp!2096526 tp!2096523))))

(declare-fun b!7374122 () Bool)

(assert (=> b!7374122 (= e!4414461 tp_is_empty!48829)))

(assert (= (and b!7373825 (is-ElementMatch!19292 (reg!19621 (regOne!39096 r1!2370)))) b!7374122))

(assert (= (and b!7373825 (is-Concat!28137 (reg!19621 (regOne!39096 r1!2370)))) b!7374123))

(assert (= (and b!7373825 (is-Star!19292 (reg!19621 (regOne!39096 r1!2370)))) b!7374124))

(assert (= (and b!7373825 (is-Union!19292 (reg!19621 (regOne!39096 r1!2370)))) b!7374125))

(declare-fun e!4414462 () Bool)

(assert (=> b!7373830 (= tp!2096382 e!4414462)))

(declare-fun b!7374129 () Bool)

(declare-fun tp!2096529 () Bool)

(declare-fun tp!2096530 () Bool)

(assert (=> b!7374129 (= e!4414462 (and tp!2096529 tp!2096530))))

(declare-fun b!7374128 () Bool)

(declare-fun tp!2096532 () Bool)

(assert (=> b!7374128 (= e!4414462 tp!2096532)))

(declare-fun b!7374127 () Bool)

(declare-fun tp!2096531 () Bool)

(declare-fun tp!2096528 () Bool)

(assert (=> b!7374127 (= e!4414462 (and tp!2096531 tp!2096528))))

(declare-fun b!7374126 () Bool)

(assert (=> b!7374126 (= e!4414462 tp_is_empty!48829)))

(assert (= (and b!7373830 (is-ElementMatch!19292 (regOne!39097 (regTwo!39096 r1!2370)))) b!7374126))

(assert (= (and b!7373830 (is-Concat!28137 (regOne!39097 (regTwo!39096 r1!2370)))) b!7374127))

(assert (= (and b!7373830 (is-Star!19292 (regOne!39097 (regTwo!39096 r1!2370)))) b!7374128))

(assert (= (and b!7373830 (is-Union!19292 (regOne!39097 (regTwo!39096 r1!2370)))) b!7374129))

(declare-fun e!4414463 () Bool)

(assert (=> b!7373830 (= tp!2096383 e!4414463)))

(declare-fun b!7374133 () Bool)

(declare-fun tp!2096534 () Bool)

(declare-fun tp!2096535 () Bool)

(assert (=> b!7374133 (= e!4414463 (and tp!2096534 tp!2096535))))

(declare-fun b!7374132 () Bool)

(declare-fun tp!2096537 () Bool)

(assert (=> b!7374132 (= e!4414463 tp!2096537)))

(declare-fun b!7374131 () Bool)

(declare-fun tp!2096536 () Bool)

(declare-fun tp!2096533 () Bool)

(assert (=> b!7374131 (= e!4414463 (and tp!2096536 tp!2096533))))

(declare-fun b!7374130 () Bool)

(assert (=> b!7374130 (= e!4414463 tp_is_empty!48829)))

(assert (= (and b!7373830 (is-ElementMatch!19292 (regTwo!39097 (regTwo!39096 r1!2370)))) b!7374130))

(assert (= (and b!7373830 (is-Concat!28137 (regTwo!39097 (regTwo!39096 r1!2370)))) b!7374131))

(assert (= (and b!7373830 (is-Star!19292 (regTwo!39097 (regTwo!39096 r1!2370)))) b!7374132))

(assert (= (and b!7373830 (is-Union!19292 (regTwo!39097 (regTwo!39096 r1!2370)))) b!7374133))

(declare-fun e!4414464 () Bool)

(assert (=> b!7373848 (= tp!2096405 e!4414464)))

(declare-fun b!7374137 () Bool)

(declare-fun tp!2096539 () Bool)

(declare-fun tp!2096540 () Bool)

(assert (=> b!7374137 (= e!4414464 (and tp!2096539 tp!2096540))))

(declare-fun b!7374136 () Bool)

(declare-fun tp!2096542 () Bool)

(assert (=> b!7374136 (= e!4414464 tp!2096542)))

(declare-fun b!7374135 () Bool)

(declare-fun tp!2096541 () Bool)

(declare-fun tp!2096538 () Bool)

(assert (=> b!7374135 (= e!4414464 (and tp!2096541 tp!2096538))))

(declare-fun b!7374134 () Bool)

(assert (=> b!7374134 (= e!4414464 tp_is_empty!48829)))

(assert (= (and b!7373848 (is-ElementMatch!19292 (regOne!39097 (reg!19621 r1!2370)))) b!7374134))

(assert (= (and b!7373848 (is-Concat!28137 (regOne!39097 (reg!19621 r1!2370)))) b!7374135))

(assert (= (and b!7373848 (is-Star!19292 (regOne!39097 (reg!19621 r1!2370)))) b!7374136))

(assert (= (and b!7373848 (is-Union!19292 (regOne!39097 (reg!19621 r1!2370)))) b!7374137))

(declare-fun e!4414465 () Bool)

(assert (=> b!7373848 (= tp!2096406 e!4414465)))

(declare-fun b!7374141 () Bool)

(declare-fun tp!2096544 () Bool)

(declare-fun tp!2096545 () Bool)

(assert (=> b!7374141 (= e!4414465 (and tp!2096544 tp!2096545))))

(declare-fun b!7374140 () Bool)

(declare-fun tp!2096547 () Bool)

(assert (=> b!7374140 (= e!4414465 tp!2096547)))

(declare-fun b!7374139 () Bool)

(declare-fun tp!2096546 () Bool)

(declare-fun tp!2096543 () Bool)

(assert (=> b!7374139 (= e!4414465 (and tp!2096546 tp!2096543))))

(declare-fun b!7374138 () Bool)

(assert (=> b!7374138 (= e!4414465 tp_is_empty!48829)))

(assert (= (and b!7373848 (is-ElementMatch!19292 (regTwo!39097 (reg!19621 r1!2370)))) b!7374138))

(assert (= (and b!7373848 (is-Concat!28137 (regTwo!39097 (reg!19621 r1!2370)))) b!7374139))

(assert (= (and b!7373848 (is-Star!19292 (regTwo!39097 (reg!19621 r1!2370)))) b!7374140))

(assert (= (and b!7373848 (is-Union!19292 (regTwo!39097 (reg!19621 r1!2370)))) b!7374141))

(declare-fun e!4414466 () Bool)

(assert (=> b!7373844 (= tp!2096402 e!4414466)))

(declare-fun b!7374145 () Bool)

(declare-fun tp!2096549 () Bool)

(declare-fun tp!2096550 () Bool)

(assert (=> b!7374145 (= e!4414466 (and tp!2096549 tp!2096550))))

(declare-fun b!7374144 () Bool)

(declare-fun tp!2096552 () Bool)

(assert (=> b!7374144 (= e!4414466 tp!2096552)))

(declare-fun b!7374143 () Bool)

(declare-fun tp!2096551 () Bool)

(declare-fun tp!2096548 () Bool)

(assert (=> b!7374143 (= e!4414466 (and tp!2096551 tp!2096548))))

(declare-fun b!7374142 () Bool)

(assert (=> b!7374142 (= e!4414466 tp_is_empty!48829)))

(assert (= (and b!7373844 (is-ElementMatch!19292 (h!78112 (exprs!8732 ct1!282)))) b!7374142))

(assert (= (and b!7373844 (is-Concat!28137 (h!78112 (exprs!8732 ct1!282)))) b!7374143))

(assert (= (and b!7373844 (is-Star!19292 (h!78112 (exprs!8732 ct1!282)))) b!7374144))

(assert (= (and b!7373844 (is-Union!19292 (h!78112 (exprs!8732 ct1!282)))) b!7374145))

(declare-fun b!7374146 () Bool)

(declare-fun e!4414467 () Bool)

(declare-fun tp!2096553 () Bool)

(declare-fun tp!2096554 () Bool)

(assert (=> b!7374146 (= e!4414467 (and tp!2096553 tp!2096554))))

(assert (=> b!7373844 (= tp!2096403 e!4414467)))

(assert (= (and b!7373844 (is-Cons!71664 (t!386259 (exprs!8732 ct1!282)))) b!7374146))

(declare-fun e!4414468 () Bool)

(assert (=> b!7373837 (= tp!2096395 e!4414468)))

(declare-fun b!7374150 () Bool)

(declare-fun tp!2096556 () Bool)

(declare-fun tp!2096557 () Bool)

(assert (=> b!7374150 (= e!4414468 (and tp!2096556 tp!2096557))))

(declare-fun b!7374149 () Bool)

(declare-fun tp!2096559 () Bool)

(assert (=> b!7374149 (= e!4414468 tp!2096559)))

(declare-fun b!7374148 () Bool)

(declare-fun tp!2096558 () Bool)

(declare-fun tp!2096555 () Bool)

(assert (=> b!7374148 (= e!4414468 (and tp!2096558 tp!2096555))))

(declare-fun b!7374147 () Bool)

(assert (=> b!7374147 (= e!4414468 tp_is_empty!48829)))

(assert (= (and b!7373837 (is-ElementMatch!19292 (reg!19621 (regTwo!39097 r1!2370)))) b!7374147))

(assert (= (and b!7373837 (is-Concat!28137 (reg!19621 (regTwo!39097 r1!2370)))) b!7374148))

(assert (= (and b!7373837 (is-Star!19292 (reg!19621 (regTwo!39097 r1!2370)))) b!7374149))

(assert (= (and b!7373837 (is-Union!19292 (reg!19621 (regTwo!39097 r1!2370)))) b!7374150))

(declare-fun e!4414469 () Bool)

(assert (=> b!7373843 (= tp!2096400 e!4414469)))

(declare-fun b!7374154 () Bool)

(declare-fun tp!2096561 () Bool)

(declare-fun tp!2096562 () Bool)

(assert (=> b!7374154 (= e!4414469 (and tp!2096561 tp!2096562))))

(declare-fun b!7374153 () Bool)

(declare-fun tp!2096564 () Bool)

(assert (=> b!7374153 (= e!4414469 tp!2096564)))

(declare-fun b!7374152 () Bool)

(declare-fun tp!2096563 () Bool)

(declare-fun tp!2096560 () Bool)

(assert (=> b!7374152 (= e!4414469 (and tp!2096563 tp!2096560))))

(declare-fun b!7374151 () Bool)

(assert (=> b!7374151 (= e!4414469 tp_is_empty!48829)))

(assert (= (and b!7373843 (is-ElementMatch!19292 (h!78112 (exprs!8732 cWitness!61)))) b!7374151))

(assert (= (and b!7373843 (is-Concat!28137 (h!78112 (exprs!8732 cWitness!61)))) b!7374152))

(assert (= (and b!7373843 (is-Star!19292 (h!78112 (exprs!8732 cWitness!61)))) b!7374153))

(assert (= (and b!7373843 (is-Union!19292 (h!78112 (exprs!8732 cWitness!61)))) b!7374154))

(declare-fun b!7374155 () Bool)

(declare-fun e!4414470 () Bool)

(declare-fun tp!2096565 () Bool)

(declare-fun tp!2096566 () Bool)

(assert (=> b!7374155 (= e!4414470 (and tp!2096565 tp!2096566))))

(assert (=> b!7373843 (= tp!2096401 e!4414470)))

(assert (= (and b!7373843 (is-Cons!71664 (t!386259 (exprs!8732 cWitness!61)))) b!7374155))

(declare-fun e!4414471 () Bool)

(assert (=> b!7373834 (= tp!2096387 e!4414471)))

(declare-fun b!7374159 () Bool)

(declare-fun tp!2096568 () Bool)

(declare-fun tp!2096569 () Bool)

(assert (=> b!7374159 (= e!4414471 (and tp!2096568 tp!2096569))))

(declare-fun b!7374158 () Bool)

(declare-fun tp!2096571 () Bool)

(assert (=> b!7374158 (= e!4414471 tp!2096571)))

(declare-fun b!7374157 () Bool)

(declare-fun tp!2096570 () Bool)

(declare-fun tp!2096567 () Bool)

(assert (=> b!7374157 (= e!4414471 (and tp!2096570 tp!2096567))))

(declare-fun b!7374156 () Bool)

(assert (=> b!7374156 (= e!4414471 tp_is_empty!48829)))

(assert (= (and b!7373834 (is-ElementMatch!19292 (regOne!39097 (regOne!39097 r1!2370)))) b!7374156))

(assert (= (and b!7373834 (is-Concat!28137 (regOne!39097 (regOne!39097 r1!2370)))) b!7374157))

(assert (= (and b!7373834 (is-Star!19292 (regOne!39097 (regOne!39097 r1!2370)))) b!7374158))

(assert (= (and b!7373834 (is-Union!19292 (regOne!39097 (regOne!39097 r1!2370)))) b!7374159))

(declare-fun e!4414472 () Bool)

(assert (=> b!7373834 (= tp!2096388 e!4414472)))

(declare-fun b!7374163 () Bool)

(declare-fun tp!2096573 () Bool)

(declare-fun tp!2096574 () Bool)

(assert (=> b!7374163 (= e!4414472 (and tp!2096573 tp!2096574))))

(declare-fun b!7374162 () Bool)

(declare-fun tp!2096576 () Bool)

(assert (=> b!7374162 (= e!4414472 tp!2096576)))

(declare-fun b!7374161 () Bool)

(declare-fun tp!2096575 () Bool)

(declare-fun tp!2096572 () Bool)

(assert (=> b!7374161 (= e!4414472 (and tp!2096575 tp!2096572))))

(declare-fun b!7374160 () Bool)

(assert (=> b!7374160 (= e!4414472 tp_is_empty!48829)))

(assert (= (and b!7373834 (is-ElementMatch!19292 (regTwo!39097 (regOne!39097 r1!2370)))) b!7374160))

(assert (= (and b!7373834 (is-Concat!28137 (regTwo!39097 (regOne!39097 r1!2370)))) b!7374161))

(assert (= (and b!7373834 (is-Star!19292 (regTwo!39097 (regOne!39097 r1!2370)))) b!7374162))

(assert (= (and b!7373834 (is-Union!19292 (regTwo!39097 (regOne!39097 r1!2370)))) b!7374163))

(declare-fun e!4414473 () Bool)

(assert (=> b!7373846 (= tp!2096407 e!4414473)))

(declare-fun b!7374167 () Bool)

(declare-fun tp!2096578 () Bool)

(declare-fun tp!2096579 () Bool)

(assert (=> b!7374167 (= e!4414473 (and tp!2096578 tp!2096579))))

(declare-fun b!7374166 () Bool)

(declare-fun tp!2096581 () Bool)

(assert (=> b!7374166 (= e!4414473 tp!2096581)))

(declare-fun b!7374165 () Bool)

(declare-fun tp!2096580 () Bool)

(declare-fun tp!2096577 () Bool)

(assert (=> b!7374165 (= e!4414473 (and tp!2096580 tp!2096577))))

(declare-fun b!7374164 () Bool)

(assert (=> b!7374164 (= e!4414473 tp_is_empty!48829)))

(assert (= (and b!7373846 (is-ElementMatch!19292 (regOne!39096 (reg!19621 r1!2370)))) b!7374164))

(assert (= (and b!7373846 (is-Concat!28137 (regOne!39096 (reg!19621 r1!2370)))) b!7374165))

(assert (= (and b!7373846 (is-Star!19292 (regOne!39096 (reg!19621 r1!2370)))) b!7374166))

(assert (= (and b!7373846 (is-Union!19292 (regOne!39096 (reg!19621 r1!2370)))) b!7374167))

(declare-fun e!4414474 () Bool)

(assert (=> b!7373846 (= tp!2096404 e!4414474)))

(declare-fun b!7374171 () Bool)

(declare-fun tp!2096583 () Bool)

(declare-fun tp!2096584 () Bool)

(assert (=> b!7374171 (= e!4414474 (and tp!2096583 tp!2096584))))

(declare-fun b!7374170 () Bool)

(declare-fun tp!2096586 () Bool)

(assert (=> b!7374170 (= e!4414474 tp!2096586)))

(declare-fun b!7374169 () Bool)

(declare-fun tp!2096585 () Bool)

(declare-fun tp!2096582 () Bool)

(assert (=> b!7374169 (= e!4414474 (and tp!2096585 tp!2096582))))

(declare-fun b!7374168 () Bool)

(assert (=> b!7374168 (= e!4414474 tp_is_empty!48829)))

(assert (= (and b!7373846 (is-ElementMatch!19292 (regTwo!39096 (reg!19621 r1!2370)))) b!7374168))

(assert (= (and b!7373846 (is-Concat!28137 (regTwo!39096 (reg!19621 r1!2370)))) b!7374169))

(assert (= (and b!7373846 (is-Star!19292 (regTwo!39096 (reg!19621 r1!2370)))) b!7374170))

(assert (= (and b!7373846 (is-Union!19292 (regTwo!39096 (reg!19621 r1!2370)))) b!7374171))

(declare-fun e!4414475 () Bool)

(assert (=> b!7373838 (= tp!2096392 e!4414475)))

(declare-fun b!7374175 () Bool)

(declare-fun tp!2096588 () Bool)

(declare-fun tp!2096589 () Bool)

(assert (=> b!7374175 (= e!4414475 (and tp!2096588 tp!2096589))))

(declare-fun b!7374174 () Bool)

(declare-fun tp!2096591 () Bool)

(assert (=> b!7374174 (= e!4414475 tp!2096591)))

(declare-fun b!7374173 () Bool)

(declare-fun tp!2096590 () Bool)

(declare-fun tp!2096587 () Bool)

(assert (=> b!7374173 (= e!4414475 (and tp!2096590 tp!2096587))))

(declare-fun b!7374172 () Bool)

(assert (=> b!7374172 (= e!4414475 tp_is_empty!48829)))

(assert (= (and b!7373838 (is-ElementMatch!19292 (regOne!39097 (regTwo!39097 r1!2370)))) b!7374172))

(assert (= (and b!7373838 (is-Concat!28137 (regOne!39097 (regTwo!39097 r1!2370)))) b!7374173))

(assert (= (and b!7373838 (is-Star!19292 (regOne!39097 (regTwo!39097 r1!2370)))) b!7374174))

(assert (= (and b!7373838 (is-Union!19292 (regOne!39097 (regTwo!39097 r1!2370)))) b!7374175))

(declare-fun e!4414476 () Bool)

(assert (=> b!7373838 (= tp!2096393 e!4414476)))

(declare-fun b!7374179 () Bool)

(declare-fun tp!2096593 () Bool)

(declare-fun tp!2096594 () Bool)

(assert (=> b!7374179 (= e!4414476 (and tp!2096593 tp!2096594))))

(declare-fun b!7374178 () Bool)

(declare-fun tp!2096596 () Bool)

(assert (=> b!7374178 (= e!4414476 tp!2096596)))

(declare-fun b!7374177 () Bool)

(declare-fun tp!2096595 () Bool)

(declare-fun tp!2096592 () Bool)

(assert (=> b!7374177 (= e!4414476 (and tp!2096595 tp!2096592))))

(declare-fun b!7374176 () Bool)

(assert (=> b!7374176 (= e!4414476 tp_is_empty!48829)))

(assert (= (and b!7373838 (is-ElementMatch!19292 (regTwo!39097 (regTwo!39097 r1!2370)))) b!7374176))

(assert (= (and b!7373838 (is-Concat!28137 (regTwo!39097 (regTwo!39097 r1!2370)))) b!7374177))

(assert (= (and b!7373838 (is-Star!19292 (regTwo!39097 (regTwo!39097 r1!2370)))) b!7374178))

(assert (= (and b!7373838 (is-Union!19292 (regTwo!39097 (regTwo!39097 r1!2370)))) b!7374179))

(declare-fun e!4414477 () Bool)

(assert (=> b!7373847 (= tp!2096408 e!4414477)))

(declare-fun b!7374183 () Bool)

(declare-fun tp!2096598 () Bool)

(declare-fun tp!2096599 () Bool)

(assert (=> b!7374183 (= e!4414477 (and tp!2096598 tp!2096599))))

(declare-fun b!7374182 () Bool)

(declare-fun tp!2096601 () Bool)

(assert (=> b!7374182 (= e!4414477 tp!2096601)))

(declare-fun b!7374181 () Bool)

(declare-fun tp!2096600 () Bool)

(declare-fun tp!2096597 () Bool)

(assert (=> b!7374181 (= e!4414477 (and tp!2096600 tp!2096597))))

(declare-fun b!7374180 () Bool)

(assert (=> b!7374180 (= e!4414477 tp_is_empty!48829)))

(assert (= (and b!7373847 (is-ElementMatch!19292 (reg!19621 (reg!19621 r1!2370)))) b!7374180))

(assert (= (and b!7373847 (is-Concat!28137 (reg!19621 (reg!19621 r1!2370)))) b!7374181))

(assert (= (and b!7373847 (is-Star!19292 (reg!19621 (reg!19621 r1!2370)))) b!7374182))

(assert (= (and b!7373847 (is-Union!19292 (reg!19621 (reg!19621 r1!2370)))) b!7374183))

(declare-fun b_lambda!284495 () Bool)

(assert (= b_lambda!284489 (or b!7373614 b_lambda!284495)))

(declare-fun bs!1921139 () Bool)

(declare-fun d!2284289 () Bool)

(assert (= bs!1921139 (and d!2284289 b!7373614)))

(assert (=> bs!1921139 (= (dynLambda!29526 lambda!458226 (h!78112 (++!17108 (exprs!8732 ct1!282) (exprs!8732 ct2!378)))) (validRegex!9888 (h!78112 (++!17108 (exprs!8732 ct1!282) (exprs!8732 ct2!378)))))))

(declare-fun m!8026858 () Bool)

(assert (=> bs!1921139 m!8026858))

(assert (=> b!7374044 d!2284289))

(declare-fun b_lambda!284497 () Bool)

(assert (= b_lambda!284483 (or d!2284193 b_lambda!284497)))

(declare-fun bs!1921140 () Bool)

(declare-fun d!2284291 () Bool)

(assert (= bs!1921140 (and d!2284291 d!2284193)))

(assert (=> bs!1921140 (= (dynLambda!29526 lambda!458232 (h!78112 (exprs!8732 cWitness!61))) (validRegex!9888 (h!78112 (exprs!8732 cWitness!61))))))

(declare-fun m!8026860 () Bool)

(assert (=> bs!1921140 m!8026860))

(assert (=> b!7373966 d!2284291))

(declare-fun b_lambda!284499 () Bool)

(assert (= b_lambda!284485 (or d!2284197 b_lambda!284499)))

(declare-fun bs!1921141 () Bool)

(declare-fun d!2284293 () Bool)

(assert (= bs!1921141 (and d!2284293 d!2284197)))

(assert (=> bs!1921141 (= (dynLambda!29526 lambda!458234 (h!78112 (exprs!8732 ct2!378))) (validRegex!9888 (h!78112 (exprs!8732 ct2!378))))))

(declare-fun m!8026862 () Bool)

(assert (=> bs!1921141 m!8026862))

(assert (=> b!7373999 d!2284293))

(declare-fun b_lambda!284501 () Bool)

(assert (= b_lambda!284491 (or b!7373614 b_lambda!284501)))

(declare-fun bs!1921142 () Bool)

(declare-fun d!2284295 () Bool)

(assert (= bs!1921142 (and d!2284295 b!7373614)))

(assert (=> bs!1921142 (= (dynLambda!29526 lambda!458226 (h!78112 (exprs!8732 ct1!282))) (validRegex!9888 (h!78112 (exprs!8732 ct1!282))))))

(declare-fun m!8026864 () Bool)

(assert (=> bs!1921142 m!8026864))

(assert (=> b!7374046 d!2284295))

(declare-fun b_lambda!284503 () Bool)

(assert (= b_lambda!284493 (or d!2284195 b_lambda!284503)))

(declare-fun bs!1921143 () Bool)

(declare-fun d!2284297 () Bool)

(assert (= bs!1921143 (and d!2284297 d!2284195)))

(assert (=> bs!1921143 (= (dynLambda!29526 lambda!458233 (h!78112 (exprs!8732 ct1!282))) (validRegex!9888 (h!78112 (exprs!8732 ct1!282))))))

(assert (=> bs!1921143 m!8026864))

(assert (=> b!7374067 d!2284297))

(declare-fun b_lambda!284505 () Bool)

(assert (= b_lambda!284487 (or d!2284213 b_lambda!284505)))

(declare-fun bs!1921144 () Bool)

(declare-fun d!2284299 () Bool)

(assert (= bs!1921144 (and d!2284299 d!2284213)))

(assert (=> bs!1921144 (= (dynLambda!29526 lambda!458238 (h!78112 (exprs!8732 (Context!16465 ($colon$colon!3274 (exprs!8732 ct1!282) (regTwo!39096 r1!2370)))))) (validRegex!9888 (h!78112 (exprs!8732 (Context!16465 ($colon$colon!3274 (exprs!8732 ct1!282) (regTwo!39096 r1!2370)))))))))

(declare-fun m!8026866 () Bool)

(assert (=> bs!1921144 m!8026866))

(assert (=> b!7374021 d!2284299))

(push 1)

(assert (not b!7374072))

(assert (not b!7374140))

(assert (not b!7374104))

(assert (not b!7374153))

(assert (not b!7373952))

(assert (not b!7374165))

(assert (not b!7374167))

(assert (not b!7374162))

(assert (not bm!677644))

(assert (not bm!677659))

(assert (not b!7374071))

(assert (not b!7374135))

(assert (not b!7374111))

(assert (not bm!677653))

(assert (not bm!677680))

(assert (not b!7374068))

(assert (not bm!677662))

(assert (not b!7374129))

(assert (not d!2284257))

(assert (not d!2284269))

(assert (not b!7374073))

(assert (not b!7374182))

(assert (not b_lambda!284501))

(assert (not b!7374155))

(assert (not bs!1921141))

(assert (not b!7374154))

(assert (not b_lambda!284497))

(assert (not b!7374113))

(assert (not b!7373934))

(assert (not b!7374149))

(assert (not b!7374047))

(assert (not b!7374108))

(assert (not bm!677681))

(assert (not b!7374117))

(assert (not b!7374152))

(assert (not b!7374083))

(assert (not b!7374127))

(assert (not d!2284273))

(assert (not b!7373940))

(assert (not b!7374166))

(assert (not b!7374174))

(assert (not bm!677682))

(assert (not b!7374000))

(assert (not b!7374173))

(assert (not b!7374119))

(assert (not b_lambda!284495))

(assert (not bm!677672))

(assert (not b!7374170))

(assert (not b!7373995))

(assert (not b!7374131))

(assert (not b_lambda!284505))

(assert (not b!7373948))

(assert (not b!7373967))

(assert (not b!7374081))

(assert (not b!7374096))

(assert (not b!7374121))

(assert (not b!7374144))

(assert (not b!7374063))

(assert (not b!7374120))

(assert (not b!7374109))

(assert (not b!7374099))

(assert (not b!7374132))

(assert (not bm!677663))

(assert (not b_lambda!284499))

(assert (not b!7374088))

(assert (not b!7374080))

(assert (not b!7374107))

(assert (not bs!1921144))

(assert (not b!7374136))

(assert (not bm!677671))

(assert (not bm!677673))

(assert (not bm!677656))

(assert (not b!7374105))

(assert (not b!7374076))

(assert (not b_lambda!284503))

(assert (not bs!1921139))

(assert (not b!7374053))

(assert (not d!2284235))

(assert (not bm!677647))

(assert (not b!7374103))

(assert (not b!7374070))

(assert (not b!7374093))

(assert (not b!7374092))

(assert (not b!7374115))

(assert (not b!7374057))

(assert (not bm!677665))

(assert (not b!7374089))

(assert tp_is_empty!48829)

(assert (not b!7374095))

(assert (not bm!677648))

(assert (not b!7374097))

(assert (not b!7374157))

(assert (not bs!1921143))

(assert (not b!7374169))

(assert (not b!7374175))

(assert (not b!7374177))

(assert (not bm!677657))

(assert (not b!7374101))

(assert (not b!7374084))

(assert (not b!7374150))

(assert (not bm!677668))

(assert (not b!7374022))

(assert (not b!7374178))

(assert (not b!7374143))

(assert (not b!7374146))

(assert (not b!7374085))

(assert (not b!7374158))

(assert (not b!7374087))

(assert (not b!7374112))

(assert (not b!7373985))

(assert (not b!7373950))

(assert (not b!7374123))

(assert (not b!7374171))

(assert (not b!7374145))

(assert (not b!7374091))

(assert (not b!7374007))

(assert (not b!7374159))

(assert (not b!7374017))

(assert (not b!7373974))

(assert (not b!7374116))

(assert (not b!7374128))

(assert (not bs!1921140))

(assert (not b!7374161))

(assert (not bm!677664))

(assert (not b!7374079))

(assert (not bm!677683))

(assert (not b!7373941))

(assert (not b!7374077))

(assert (not b!7374100))

(assert (not b!7374148))

(assert (not b!7374055))

(assert (not b!7374141))

(assert (not b!7374133))

(assert (not bs!1921142))

(assert (not b!7374183))

(assert (not b!7374179))

(assert (not b!7374181))

(assert (not b!7374137))

(assert (not bm!677650))

(assert (not b!7374124))

(assert (not b!7374045))

(assert (not bm!677674))

(assert (not b!7374163))

(assert (not b!7374075))

(assert (not b!7374125))

(assert (not b!7373958))

(assert (not bm!677649))

(assert (not b!7374139))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


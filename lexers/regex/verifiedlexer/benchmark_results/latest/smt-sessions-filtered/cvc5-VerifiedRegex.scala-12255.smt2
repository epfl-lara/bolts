; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!689762 () Bool)

(assert start!689762)

(declare-fun b!7086491 () Bool)

(declare-fun e!4260292 () Bool)

(declare-fun tp!1945906 () Bool)

(assert (=> b!7086491 (= e!4260292 tp!1945906)))

(declare-fun b!7086492 () Bool)

(declare-fun e!4260290 () Bool)

(declare-fun tp!1945909 () Bool)

(assert (=> b!7086492 (= e!4260290 tp!1945909)))

(declare-fun b!7086493 () Bool)

(declare-fun tp_is_empty!44737 () Bool)

(assert (=> b!7086493 (= e!4260290 tp_is_empty!44737)))

(declare-fun b!7086494 () Bool)

(declare-fun res!2894790 () Bool)

(declare-fun e!4260291 () Bool)

(assert (=> b!7086494 (=> (not res!2894790) (not e!4260291))))

(declare-datatypes ((C!35774 0))(
  ( (C!35775 (val!27593 Int)) )
))
(declare-datatypes ((Regex!17752 0))(
  ( (ElementMatch!17752 (c!1322515 C!35774)) (Concat!26597 (regOne!36016 Regex!17752) (regTwo!36016 Regex!17752)) (EmptyExpr!17752) (Star!17752 (reg!18081 Regex!17752)) (EmptyLang!17752) (Union!17752 (regOne!36017 Regex!17752) (regTwo!36017 Regex!17752)) )
))
(declare-fun r!11554 () Regex!17752)

(declare-fun a!1901 () C!35774)

(assert (=> b!7086494 (= res!2894790 (and (or (not (is-ElementMatch!17752 r!11554)) (not (= (c!1322515 r!11554) a!1901))) (is-Union!17752 r!11554)))))

(declare-fun b!7086496 () Bool)

(declare-fun validRegex!9027 (Regex!17752) Bool)

(assert (=> b!7086496 (= e!4260291 (not (validRegex!9027 (regOne!36017 r!11554))))))

(declare-datatypes ((List!68715 0))(
  ( (Nil!68591) (Cons!68591 (h!75039 Regex!17752) (t!382500 List!68715)) )
))
(declare-fun lt!2554646 () List!68715)

(declare-datatypes ((Context!13496 0))(
  ( (Context!13497 (exprs!7248 List!68715)) )
))
(declare-fun c!9994 () Context!13496)

(declare-fun auxCtx!45 () Context!13496)

(declare-fun ++!15925 (List!68715 List!68715) List!68715)

(assert (=> b!7086496 (= lt!2554646 (++!15925 (exprs!7248 c!9994) (exprs!7248 auxCtx!45)))))

(declare-fun lambda!429122 () Int)

(declare-datatypes ((Unit!162203 0))(
  ( (Unit!162204) )
))
(declare-fun lt!2554647 () Unit!162203)

(declare-fun lemmaConcatPreservesForall!1055 (List!68715 List!68715 Int) Unit!162203)

(assert (=> b!7086496 (= lt!2554647 (lemmaConcatPreservesForall!1055 (exprs!7248 c!9994) (exprs!7248 auxCtx!45) lambda!429122))))

(declare-fun lt!2554648 () Unit!162203)

(assert (=> b!7086496 (= lt!2554648 (lemmaConcatPreservesForall!1055 (exprs!7248 c!9994) (exprs!7248 auxCtx!45) lambda!429122))))

(declare-fun lt!2554645 () Unit!162203)

(assert (=> b!7086496 (= lt!2554645 (lemmaConcatPreservesForall!1055 (exprs!7248 c!9994) (exprs!7248 auxCtx!45) lambda!429122))))

(declare-fun b!7086497 () Bool)

(declare-fun tp!1945905 () Bool)

(declare-fun tp!1945908 () Bool)

(assert (=> b!7086497 (= e!4260290 (and tp!1945905 tp!1945908))))

(declare-fun b!7086498 () Bool)

(declare-fun tp!1945904 () Bool)

(declare-fun tp!1945903 () Bool)

(assert (=> b!7086498 (= e!4260290 (and tp!1945904 tp!1945903))))

(declare-fun res!2894789 () Bool)

(assert (=> start!689762 (=> (not res!2894789) (not e!4260291))))

(assert (=> start!689762 (= res!2894789 (validRegex!9027 r!11554))))

(assert (=> start!689762 e!4260291))

(assert (=> start!689762 e!4260290))

(assert (=> start!689762 tp_is_empty!44737))

(declare-fun inv!87246 (Context!13496) Bool)

(assert (=> start!689762 (and (inv!87246 c!9994) e!4260292)))

(declare-fun e!4260289 () Bool)

(assert (=> start!689762 (and (inv!87246 auxCtx!45) e!4260289)))

(declare-fun b!7086495 () Bool)

(declare-fun tp!1945907 () Bool)

(assert (=> b!7086495 (= e!4260289 tp!1945907)))

(assert (= (and start!689762 res!2894789) b!7086494))

(assert (= (and b!7086494 res!2894790) b!7086496))

(assert (= (and start!689762 (is-ElementMatch!17752 r!11554)) b!7086493))

(assert (= (and start!689762 (is-Concat!26597 r!11554)) b!7086498))

(assert (= (and start!689762 (is-Star!17752 r!11554)) b!7086492))

(assert (= (and start!689762 (is-Union!17752 r!11554)) b!7086497))

(assert (= start!689762 b!7086491))

(assert (= start!689762 b!7086495))

(declare-fun m!7817124 () Bool)

(assert (=> b!7086496 m!7817124))

(declare-fun m!7817126 () Bool)

(assert (=> b!7086496 m!7817126))

(assert (=> b!7086496 m!7817126))

(assert (=> b!7086496 m!7817126))

(declare-fun m!7817128 () Bool)

(assert (=> b!7086496 m!7817128))

(declare-fun m!7817130 () Bool)

(assert (=> start!689762 m!7817130))

(declare-fun m!7817132 () Bool)

(assert (=> start!689762 m!7817132))

(declare-fun m!7817134 () Bool)

(assert (=> start!689762 m!7817134))

(push 1)

(assert (not start!689762))

(assert (not b!7086496))

(assert (not b!7086497))

(assert (not b!7086491))

(assert (not b!7086495))

(assert (not b!7086498))

(assert tp_is_empty!44737)

(assert (not b!7086492))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2216114 () Bool)

(declare-fun forall!16700 (List!68715 Int) Bool)

(assert (=> d!2216114 (forall!16700 (++!15925 (exprs!7248 c!9994) (exprs!7248 auxCtx!45)) lambda!429122)))

(declare-fun lt!2554663 () Unit!162203)

(declare-fun choose!54614 (List!68715 List!68715 Int) Unit!162203)

(assert (=> d!2216114 (= lt!2554663 (choose!54614 (exprs!7248 c!9994) (exprs!7248 auxCtx!45) lambda!429122))))

(assert (=> d!2216114 (forall!16700 (exprs!7248 c!9994) lambda!429122)))

(assert (=> d!2216114 (= (lemmaConcatPreservesForall!1055 (exprs!7248 c!9994) (exprs!7248 auxCtx!45) lambda!429122) lt!2554663)))

(declare-fun bs!1882993 () Bool)

(assert (= bs!1882993 d!2216114))

(assert (=> bs!1882993 m!7817128))

(assert (=> bs!1882993 m!7817128))

(declare-fun m!7817148 () Bool)

(assert (=> bs!1882993 m!7817148))

(declare-fun m!7817150 () Bool)

(assert (=> bs!1882993 m!7817150))

(declare-fun m!7817152 () Bool)

(assert (=> bs!1882993 m!7817152))

(assert (=> b!7086496 d!2216114))

(declare-fun d!2216116 () Bool)

(declare-fun e!4260310 () Bool)

(assert (=> d!2216116 e!4260310))

(declare-fun res!2894802 () Bool)

(assert (=> d!2216116 (=> (not res!2894802) (not e!4260310))))

(declare-fun lt!2554666 () List!68715)

(declare-fun content!13918 (List!68715) (Set Regex!17752))

(assert (=> d!2216116 (= res!2894802 (= (content!13918 lt!2554666) (set.union (content!13918 (exprs!7248 c!9994)) (content!13918 (exprs!7248 auxCtx!45)))))))

(declare-fun e!4260309 () List!68715)

(assert (=> d!2216116 (= lt!2554666 e!4260309)))

(declare-fun c!1322519 () Bool)

(assert (=> d!2216116 (= c!1322519 (is-Nil!68591 (exprs!7248 c!9994)))))

(assert (=> d!2216116 (= (++!15925 (exprs!7248 c!9994) (exprs!7248 auxCtx!45)) lt!2554666)))

(declare-fun b!7086533 () Bool)

(declare-fun res!2894801 () Bool)

(assert (=> b!7086533 (=> (not res!2894801) (not e!4260310))))

(declare-fun size!41293 (List!68715) Int)

(assert (=> b!7086533 (= res!2894801 (= (size!41293 lt!2554666) (+ (size!41293 (exprs!7248 c!9994)) (size!41293 (exprs!7248 auxCtx!45)))))))

(declare-fun b!7086531 () Bool)

(assert (=> b!7086531 (= e!4260309 (exprs!7248 auxCtx!45))))

(declare-fun b!7086532 () Bool)

(assert (=> b!7086532 (= e!4260309 (Cons!68591 (h!75039 (exprs!7248 c!9994)) (++!15925 (t!382500 (exprs!7248 c!9994)) (exprs!7248 auxCtx!45))))))

(declare-fun b!7086534 () Bool)

(assert (=> b!7086534 (= e!4260310 (or (not (= (exprs!7248 auxCtx!45) Nil!68591)) (= lt!2554666 (exprs!7248 c!9994))))))

(assert (= (and d!2216116 c!1322519) b!7086531))

(assert (= (and d!2216116 (not c!1322519)) b!7086532))

(assert (= (and d!2216116 res!2894802) b!7086533))

(assert (= (and b!7086533 res!2894801) b!7086534))

(declare-fun m!7817154 () Bool)

(assert (=> d!2216116 m!7817154))

(declare-fun m!7817156 () Bool)

(assert (=> d!2216116 m!7817156))

(declare-fun m!7817158 () Bool)

(assert (=> d!2216116 m!7817158))

(declare-fun m!7817160 () Bool)

(assert (=> b!7086533 m!7817160))

(declare-fun m!7817162 () Bool)

(assert (=> b!7086533 m!7817162))

(declare-fun m!7817164 () Bool)

(assert (=> b!7086533 m!7817164))

(declare-fun m!7817166 () Bool)

(assert (=> b!7086532 m!7817166))

(assert (=> b!7086496 d!2216116))

(declare-fun b!7086553 () Bool)

(declare-fun e!4260330 () Bool)

(declare-fun e!4260328 () Bool)

(assert (=> b!7086553 (= e!4260330 e!4260328)))

(declare-fun c!1322524 () Bool)

(assert (=> b!7086553 (= c!1322524 (is-Union!17752 (regOne!36017 r!11554)))))

(declare-fun bm!643933 () Bool)

(declare-fun call!643939 () Bool)

(declare-fun call!643938 () Bool)

(assert (=> bm!643933 (= call!643939 call!643938)))

(declare-fun d!2216120 () Bool)

(declare-fun res!2894817 () Bool)

(declare-fun e!4260326 () Bool)

(assert (=> d!2216120 (=> res!2894817 e!4260326)))

(assert (=> d!2216120 (= res!2894817 (is-ElementMatch!17752 (regOne!36017 r!11554)))))

(assert (=> d!2216120 (= (validRegex!9027 (regOne!36017 r!11554)) e!4260326)))

(declare-fun b!7086554 () Bool)

(declare-fun e!4260327 () Bool)

(declare-fun call!643940 () Bool)

(assert (=> b!7086554 (= e!4260327 call!643940)))

(declare-fun bm!643934 () Bool)

(assert (=> bm!643934 (= call!643940 (validRegex!9027 (ite c!1322524 (regTwo!36017 (regOne!36017 r!11554)) (regOne!36016 (regOne!36017 r!11554)))))))

(declare-fun b!7086555 () Bool)

(declare-fun e!4260331 () Bool)

(assert (=> b!7086555 (= e!4260331 call!643938)))

(declare-fun b!7086556 () Bool)

(declare-fun e!4260329 () Bool)

(assert (=> b!7086556 (= e!4260329 call!643939)))

(declare-fun b!7086557 () Bool)

(declare-fun res!2894814 () Bool)

(assert (=> b!7086557 (=> (not res!2894814) (not e!4260327))))

(assert (=> b!7086557 (= res!2894814 call!643939)))

(assert (=> b!7086557 (= e!4260328 e!4260327)))

(declare-fun b!7086558 () Bool)

(assert (=> b!7086558 (= e!4260326 e!4260330)))

(declare-fun c!1322525 () Bool)

(assert (=> b!7086558 (= c!1322525 (is-Star!17752 (regOne!36017 r!11554)))))

(declare-fun b!7086559 () Bool)

(declare-fun e!4260325 () Bool)

(assert (=> b!7086559 (= e!4260325 e!4260329)))

(declare-fun res!2894815 () Bool)

(assert (=> b!7086559 (=> (not res!2894815) (not e!4260329))))

(assert (=> b!7086559 (= res!2894815 call!643940)))

(declare-fun b!7086560 () Bool)

(declare-fun res!2894813 () Bool)

(assert (=> b!7086560 (=> res!2894813 e!4260325)))

(assert (=> b!7086560 (= res!2894813 (not (is-Concat!26597 (regOne!36017 r!11554))))))

(assert (=> b!7086560 (= e!4260328 e!4260325)))

(declare-fun b!7086561 () Bool)

(assert (=> b!7086561 (= e!4260330 e!4260331)))

(declare-fun res!2894816 () Bool)

(declare-fun nullable!7400 (Regex!17752) Bool)

(assert (=> b!7086561 (= res!2894816 (not (nullable!7400 (reg!18081 (regOne!36017 r!11554)))))))

(assert (=> b!7086561 (=> (not res!2894816) (not e!4260331))))

(declare-fun bm!643935 () Bool)

(assert (=> bm!643935 (= call!643938 (validRegex!9027 (ite c!1322525 (reg!18081 (regOne!36017 r!11554)) (ite c!1322524 (regOne!36017 (regOne!36017 r!11554)) (regTwo!36016 (regOne!36017 r!11554))))))))

(assert (= (and d!2216120 (not res!2894817)) b!7086558))

(assert (= (and b!7086558 c!1322525) b!7086561))

(assert (= (and b!7086558 (not c!1322525)) b!7086553))

(assert (= (and b!7086561 res!2894816) b!7086555))

(assert (= (and b!7086553 c!1322524) b!7086557))

(assert (= (and b!7086553 (not c!1322524)) b!7086560))

(assert (= (and b!7086557 res!2894814) b!7086554))

(assert (= (and b!7086560 (not res!2894813)) b!7086559))

(assert (= (and b!7086559 res!2894815) b!7086556))

(assert (= (or b!7086557 b!7086556) bm!643933))

(assert (= (or b!7086554 b!7086559) bm!643934))

(assert (= (or b!7086555 bm!643933) bm!643935))

(declare-fun m!7817174 () Bool)

(assert (=> bm!643934 m!7817174))

(declare-fun m!7817176 () Bool)

(assert (=> b!7086561 m!7817176))

(declare-fun m!7817178 () Bool)

(assert (=> bm!643935 m!7817178))

(assert (=> b!7086496 d!2216120))

(declare-fun b!7086562 () Bool)

(declare-fun e!4260337 () Bool)

(declare-fun e!4260335 () Bool)

(assert (=> b!7086562 (= e!4260337 e!4260335)))

(declare-fun c!1322526 () Bool)

(assert (=> b!7086562 (= c!1322526 (is-Union!17752 r!11554))))

(declare-fun bm!643936 () Bool)

(declare-fun call!643942 () Bool)

(declare-fun call!643941 () Bool)

(assert (=> bm!643936 (= call!643942 call!643941)))

(declare-fun d!2216124 () Bool)

(declare-fun res!2894822 () Bool)

(declare-fun e!4260333 () Bool)

(assert (=> d!2216124 (=> res!2894822 e!4260333)))

(assert (=> d!2216124 (= res!2894822 (is-ElementMatch!17752 r!11554))))

(assert (=> d!2216124 (= (validRegex!9027 r!11554) e!4260333)))

(declare-fun b!7086563 () Bool)

(declare-fun e!4260334 () Bool)

(declare-fun call!643943 () Bool)

(assert (=> b!7086563 (= e!4260334 call!643943)))

(declare-fun bm!643937 () Bool)

(assert (=> bm!643937 (= call!643943 (validRegex!9027 (ite c!1322526 (regTwo!36017 r!11554) (regOne!36016 r!11554))))))

(declare-fun b!7086564 () Bool)

(declare-fun e!4260338 () Bool)

(assert (=> b!7086564 (= e!4260338 call!643941)))

(declare-fun b!7086565 () Bool)

(declare-fun e!4260336 () Bool)

(assert (=> b!7086565 (= e!4260336 call!643942)))

(declare-fun b!7086566 () Bool)

(declare-fun res!2894819 () Bool)

(assert (=> b!7086566 (=> (not res!2894819) (not e!4260334))))

(assert (=> b!7086566 (= res!2894819 call!643942)))

(assert (=> b!7086566 (= e!4260335 e!4260334)))

(declare-fun b!7086567 () Bool)

(assert (=> b!7086567 (= e!4260333 e!4260337)))

(declare-fun c!1322527 () Bool)

(assert (=> b!7086567 (= c!1322527 (is-Star!17752 r!11554))))

(declare-fun b!7086568 () Bool)

(declare-fun e!4260332 () Bool)

(assert (=> b!7086568 (= e!4260332 e!4260336)))

(declare-fun res!2894820 () Bool)

(assert (=> b!7086568 (=> (not res!2894820) (not e!4260336))))

(assert (=> b!7086568 (= res!2894820 call!643943)))

(declare-fun b!7086569 () Bool)

(declare-fun res!2894818 () Bool)

(assert (=> b!7086569 (=> res!2894818 e!4260332)))

(assert (=> b!7086569 (= res!2894818 (not (is-Concat!26597 r!11554)))))

(assert (=> b!7086569 (= e!4260335 e!4260332)))

(declare-fun b!7086570 () Bool)

(assert (=> b!7086570 (= e!4260337 e!4260338)))

(declare-fun res!2894821 () Bool)

(assert (=> b!7086570 (= res!2894821 (not (nullable!7400 (reg!18081 r!11554))))))

(assert (=> b!7086570 (=> (not res!2894821) (not e!4260338))))

(declare-fun bm!643938 () Bool)

(assert (=> bm!643938 (= call!643941 (validRegex!9027 (ite c!1322527 (reg!18081 r!11554) (ite c!1322526 (regOne!36017 r!11554) (regTwo!36016 r!11554)))))))

(assert (= (and d!2216124 (not res!2894822)) b!7086567))

(assert (= (and b!7086567 c!1322527) b!7086570))

(assert (= (and b!7086567 (not c!1322527)) b!7086562))

(assert (= (and b!7086570 res!2894821) b!7086564))

(assert (= (and b!7086562 c!1322526) b!7086566))

(assert (= (and b!7086562 (not c!1322526)) b!7086569))

(assert (= (and b!7086566 res!2894819) b!7086563))

(assert (= (and b!7086569 (not res!2894818)) b!7086568))

(assert (= (and b!7086568 res!2894820) b!7086565))

(assert (= (or b!7086566 b!7086565) bm!643936))

(assert (= (or b!7086563 b!7086568) bm!643937))

(assert (= (or b!7086564 bm!643936) bm!643938))

(declare-fun m!7817180 () Bool)

(assert (=> bm!643937 m!7817180))

(declare-fun m!7817182 () Bool)

(assert (=> b!7086570 m!7817182))

(declare-fun m!7817184 () Bool)

(assert (=> bm!643938 m!7817184))

(assert (=> start!689762 d!2216124))

(declare-fun bs!1882995 () Bool)

(declare-fun d!2216126 () Bool)

(assert (= bs!1882995 (and d!2216126 b!7086496)))

(declare-fun lambda!429132 () Int)

(assert (=> bs!1882995 (= lambda!429132 lambda!429122)))

(assert (=> d!2216126 (= (inv!87246 c!9994) (forall!16700 (exprs!7248 c!9994) lambda!429132))))

(declare-fun bs!1882996 () Bool)

(assert (= bs!1882996 d!2216126))

(declare-fun m!7817186 () Bool)

(assert (=> bs!1882996 m!7817186))

(assert (=> start!689762 d!2216126))

(declare-fun bs!1882997 () Bool)

(declare-fun d!2216128 () Bool)

(assert (= bs!1882997 (and d!2216128 b!7086496)))

(declare-fun lambda!429133 () Int)

(assert (=> bs!1882997 (= lambda!429133 lambda!429122)))

(declare-fun bs!1882998 () Bool)

(assert (= bs!1882998 (and d!2216128 d!2216126)))

(assert (=> bs!1882998 (= lambda!429133 lambda!429132)))

(assert (=> d!2216128 (= (inv!87246 auxCtx!45) (forall!16700 (exprs!7248 auxCtx!45) lambda!429133))))

(declare-fun bs!1882999 () Bool)

(assert (= bs!1882999 d!2216128))

(declare-fun m!7817188 () Bool)

(assert (=> bs!1882999 m!7817188))

(assert (=> start!689762 d!2216128))

(declare-fun b!7086581 () Bool)

(declare-fun e!4260341 () Bool)

(assert (=> b!7086581 (= e!4260341 tp_is_empty!44737)))

(declare-fun b!7086584 () Bool)

(declare-fun tp!1945943 () Bool)

(declare-fun tp!1945941 () Bool)

(assert (=> b!7086584 (= e!4260341 (and tp!1945943 tp!1945941))))

(declare-fun b!7086582 () Bool)

(declare-fun tp!1945942 () Bool)

(declare-fun tp!1945944 () Bool)

(assert (=> b!7086582 (= e!4260341 (and tp!1945942 tp!1945944))))

(declare-fun b!7086583 () Bool)

(declare-fun tp!1945945 () Bool)

(assert (=> b!7086583 (= e!4260341 tp!1945945)))

(assert (=> b!7086492 (= tp!1945909 e!4260341)))

(assert (= (and b!7086492 (is-ElementMatch!17752 (reg!18081 r!11554))) b!7086581))

(assert (= (and b!7086492 (is-Concat!26597 (reg!18081 r!11554))) b!7086582))

(assert (= (and b!7086492 (is-Star!17752 (reg!18081 r!11554))) b!7086583))

(assert (= (and b!7086492 (is-Union!17752 (reg!18081 r!11554))) b!7086584))

(declare-fun b!7086585 () Bool)

(declare-fun e!4260342 () Bool)

(assert (=> b!7086585 (= e!4260342 tp_is_empty!44737)))

(declare-fun b!7086588 () Bool)

(declare-fun tp!1945948 () Bool)

(declare-fun tp!1945946 () Bool)

(assert (=> b!7086588 (= e!4260342 (and tp!1945948 tp!1945946))))

(declare-fun b!7086586 () Bool)

(declare-fun tp!1945947 () Bool)

(declare-fun tp!1945949 () Bool)

(assert (=> b!7086586 (= e!4260342 (and tp!1945947 tp!1945949))))

(declare-fun b!7086587 () Bool)

(declare-fun tp!1945950 () Bool)

(assert (=> b!7086587 (= e!4260342 tp!1945950)))

(assert (=> b!7086497 (= tp!1945905 e!4260342)))

(assert (= (and b!7086497 (is-ElementMatch!17752 (regOne!36017 r!11554))) b!7086585))

(assert (= (and b!7086497 (is-Concat!26597 (regOne!36017 r!11554))) b!7086586))

(assert (= (and b!7086497 (is-Star!17752 (regOne!36017 r!11554))) b!7086587))

(assert (= (and b!7086497 (is-Union!17752 (regOne!36017 r!11554))) b!7086588))

(declare-fun b!7086589 () Bool)

(declare-fun e!4260343 () Bool)

(assert (=> b!7086589 (= e!4260343 tp_is_empty!44737)))

(declare-fun b!7086592 () Bool)

(declare-fun tp!1945953 () Bool)

(declare-fun tp!1945951 () Bool)

(assert (=> b!7086592 (= e!4260343 (and tp!1945953 tp!1945951))))

(declare-fun b!7086590 () Bool)

(declare-fun tp!1945952 () Bool)

(declare-fun tp!1945954 () Bool)

(assert (=> b!7086590 (= e!4260343 (and tp!1945952 tp!1945954))))

(declare-fun b!7086591 () Bool)

(declare-fun tp!1945955 () Bool)

(assert (=> b!7086591 (= e!4260343 tp!1945955)))

(assert (=> b!7086497 (= tp!1945908 e!4260343)))

(assert (= (and b!7086497 (is-ElementMatch!17752 (regTwo!36017 r!11554))) b!7086589))

(assert (= (and b!7086497 (is-Concat!26597 (regTwo!36017 r!11554))) b!7086590))

(assert (= (and b!7086497 (is-Star!17752 (regTwo!36017 r!11554))) b!7086591))

(assert (= (and b!7086497 (is-Union!17752 (regTwo!36017 r!11554))) b!7086592))

(declare-fun b!7086593 () Bool)

(declare-fun e!4260344 () Bool)

(assert (=> b!7086593 (= e!4260344 tp_is_empty!44737)))

(declare-fun b!7086596 () Bool)

(declare-fun tp!1945958 () Bool)

(declare-fun tp!1945956 () Bool)

(assert (=> b!7086596 (= e!4260344 (and tp!1945958 tp!1945956))))

(declare-fun b!7086594 () Bool)

(declare-fun tp!1945957 () Bool)

(declare-fun tp!1945959 () Bool)

(assert (=> b!7086594 (= e!4260344 (and tp!1945957 tp!1945959))))

(declare-fun b!7086595 () Bool)

(declare-fun tp!1945960 () Bool)

(assert (=> b!7086595 (= e!4260344 tp!1945960)))

(assert (=> b!7086498 (= tp!1945904 e!4260344)))

(assert (= (and b!7086498 (is-ElementMatch!17752 (regOne!36016 r!11554))) b!7086593))

(assert (= (and b!7086498 (is-Concat!26597 (regOne!36016 r!11554))) b!7086594))

(assert (= (and b!7086498 (is-Star!17752 (regOne!36016 r!11554))) b!7086595))

(assert (= (and b!7086498 (is-Union!17752 (regOne!36016 r!11554))) b!7086596))

(declare-fun b!7086597 () Bool)

(declare-fun e!4260345 () Bool)

(assert (=> b!7086597 (= e!4260345 tp_is_empty!44737)))

(declare-fun b!7086600 () Bool)

(declare-fun tp!1945963 () Bool)

(declare-fun tp!1945961 () Bool)

(assert (=> b!7086600 (= e!4260345 (and tp!1945963 tp!1945961))))

(declare-fun b!7086598 () Bool)

(declare-fun tp!1945962 () Bool)

(declare-fun tp!1945964 () Bool)

(assert (=> b!7086598 (= e!4260345 (and tp!1945962 tp!1945964))))

(declare-fun b!7086599 () Bool)

(declare-fun tp!1945965 () Bool)

(assert (=> b!7086599 (= e!4260345 tp!1945965)))

(assert (=> b!7086498 (= tp!1945903 e!4260345)))

(assert (= (and b!7086498 (is-ElementMatch!17752 (regTwo!36016 r!11554))) b!7086597))

(assert (= (and b!7086498 (is-Concat!26597 (regTwo!36016 r!11554))) b!7086598))

(assert (= (and b!7086498 (is-Star!17752 (regTwo!36016 r!11554))) b!7086599))

(assert (= (and b!7086498 (is-Union!17752 (regTwo!36016 r!11554))) b!7086600))

(declare-fun b!7086605 () Bool)

(declare-fun e!4260348 () Bool)

(declare-fun tp!1945970 () Bool)

(declare-fun tp!1945971 () Bool)

(assert (=> b!7086605 (= e!4260348 (and tp!1945970 tp!1945971))))

(assert (=> b!7086495 (= tp!1945907 e!4260348)))

(assert (= (and b!7086495 (is-Cons!68591 (exprs!7248 auxCtx!45))) b!7086605))

(declare-fun b!7086606 () Bool)

(declare-fun e!4260349 () Bool)

(declare-fun tp!1945972 () Bool)

(declare-fun tp!1945973 () Bool)

(assert (=> b!7086606 (= e!4260349 (and tp!1945972 tp!1945973))))

(assert (=> b!7086491 (= tp!1945906 e!4260349)))

(assert (= (and b!7086491 (is-Cons!68591 (exprs!7248 c!9994))) b!7086606))

(push 1)

(assert (not b!7086606))

(assert (not b!7086588))

(assert (not bm!643938))

(assert (not b!7086582))

(assert (not d!2216114))

(assert (not b!7086532))

(assert (not b!7086570))

(assert (not b!7086600))

(assert (not bm!643937))

(assert (not b!7086596))

(assert (not b!7086561))

(assert (not bm!643934))

(assert (not d!2216128))

(assert (not b!7086598))

(assert (not b!7086592))

(assert (not d!2216116))

(assert (not b!7086591))

(assert tp_is_empty!44737)

(assert (not bm!643935))

(assert (not b!7086583))

(assert (not b!7086584))

(assert (not b!7086599))

(assert (not b!7086605))

(assert (not b!7086590))

(assert (not b!7086533))

(assert (not d!2216126))

(assert (not b!7086587))

(assert (not b!7086594))

(assert (not b!7086586))

(assert (not b!7086595))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


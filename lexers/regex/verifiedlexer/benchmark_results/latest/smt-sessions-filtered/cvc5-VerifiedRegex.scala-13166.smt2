; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!718662 () Bool)

(assert start!718662)

(declare-fun b!7360060 () Bool)

(declare-fun res!2971418 () Bool)

(declare-fun e!4406656 () Bool)

(assert (=> b!7360060 (=> (not res!2971418) (not e!4406656))))

(declare-datatypes ((C!38714 0))(
  ( (C!38715 (val!29717 Int)) )
))
(declare-datatypes ((Regex!19220 0))(
  ( (ElementMatch!19220 (c!1367514 C!38714)) (Concat!28065 (regOne!38952 Regex!19220) (regTwo!38952 Regex!19220)) (EmptyExpr!19220) (Star!19220 (reg!19549 Regex!19220)) (EmptyLang!19220) (Union!19220 (regOne!38953 Regex!19220) (regTwo!38953 Regex!19220)) )
))
(declare-fun r1!2370 () Regex!19220)

(declare-fun c!10362 () C!38714)

(declare-datatypes ((List!71716 0))(
  ( (Nil!71592) (Cons!71592 (h!78040 Regex!19220) (t!386165 List!71716)) )
))
(declare-datatypes ((Context!16320 0))(
  ( (Context!16321 (exprs!8660 List!71716)) )
))
(declare-fun cWitness!61 () Context!16320)

(declare-fun ct1!282 () Context!16320)

(declare-fun derivationStepZipperDown!3046 (Regex!19220 Context!16320 C!38714) (Set Context!16320))

(assert (=> b!7360060 (= res!2971418 (set.member cWitness!61 (derivationStepZipperDown!3046 r1!2370 ct1!282 c!10362)))))

(declare-fun b!7360062 () Bool)

(declare-fun e!4406655 () Bool)

(declare-fun tp!2091218 () Bool)

(assert (=> b!7360062 (= e!4406655 tp!2091218)))

(declare-fun b!7360063 () Bool)

(declare-fun e!4406654 () Bool)

(declare-fun tp!2091220 () Bool)

(declare-fun tp!2091222 () Bool)

(assert (=> b!7360063 (= e!4406654 (and tp!2091220 tp!2091222))))

(declare-fun res!2971417 () Bool)

(assert (=> start!718662 (=> (not res!2971417) (not e!4406656))))

(declare-fun validRegex!9816 (Regex!19220) Bool)

(assert (=> start!718662 (= res!2971417 (validRegex!9816 r1!2370))))

(assert (=> start!718662 e!4406656))

(assert (=> start!718662 e!4406654))

(declare-fun inv!91391 (Context!16320) Bool)

(assert (=> start!718662 (and (inv!91391 cWitness!61) e!4406655)))

(declare-fun e!4406653 () Bool)

(assert (=> start!718662 (and (inv!91391 ct1!282) e!4406653)))

(declare-fun tp_is_empty!48685 () Bool)

(assert (=> start!718662 tp_is_empty!48685))

(declare-fun b!7360061 () Bool)

(assert (=> b!7360061 (= e!4406654 tp_is_empty!48685)))

(declare-fun b!7360064 () Bool)

(declare-fun tp!2091224 () Bool)

(assert (=> b!7360064 (= e!4406654 tp!2091224)))

(declare-fun b!7360065 () Bool)

(declare-fun tp!2091219 () Bool)

(assert (=> b!7360065 (= e!4406653 tp!2091219)))

(declare-fun b!7360066 () Bool)

(declare-fun regexDepth!432 (Regex!19220) Int)

(assert (=> b!7360066 (= e!4406656 (< (regexDepth!432 r1!2370) 0))))

(declare-fun b!7360067 () Bool)

(declare-fun tp!2091221 () Bool)

(declare-fun tp!2091223 () Bool)

(assert (=> b!7360067 (= e!4406654 (and tp!2091221 tp!2091223))))

(assert (= (and start!718662 res!2971417) b!7360060))

(assert (= (and b!7360060 res!2971418) b!7360066))

(assert (= (and start!718662 (is-ElementMatch!19220 r1!2370)) b!7360061))

(assert (= (and start!718662 (is-Concat!28065 r1!2370)) b!7360067))

(assert (= (and start!718662 (is-Star!19220 r1!2370)) b!7360064))

(assert (= (and start!718662 (is-Union!19220 r1!2370)) b!7360063))

(assert (= start!718662 b!7360062))

(assert (= start!718662 b!7360065))

(declare-fun m!8018146 () Bool)

(assert (=> b!7360060 m!8018146))

(declare-fun m!8018148 () Bool)

(assert (=> b!7360060 m!8018148))

(declare-fun m!8018150 () Bool)

(assert (=> start!718662 m!8018150))

(declare-fun m!8018152 () Bool)

(assert (=> start!718662 m!8018152))

(declare-fun m!8018154 () Bool)

(assert (=> start!718662 m!8018154))

(declare-fun m!8018156 () Bool)

(assert (=> b!7360066 m!8018156))

(push 1)

(assert (not b!7360065))

(assert (not b!7360067))

(assert (not b!7360060))

(assert (not b!7360063))

(assert (not b!7360066))

(assert tp_is_empty!48685)

(assert (not b!7360064))

(assert (not start!718662))

(assert (not b!7360062))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!7360141 () Bool)

(declare-fun c!1367534 () Bool)

(declare-fun e!4406705 () Bool)

(assert (=> b!7360141 (= c!1367534 e!4406705)))

(declare-fun res!2971442 () Bool)

(assert (=> b!7360141 (=> (not res!2971442) (not e!4406705))))

(assert (=> b!7360141 (= res!2971442 (is-Concat!28065 r1!2370))))

(declare-fun e!4406703 () (Set Context!16320))

(declare-fun e!4406702 () (Set Context!16320))

(assert (=> b!7360141 (= e!4406703 e!4406702)))

(declare-fun b!7360142 () Bool)

(declare-fun e!4406704 () (Set Context!16320))

(assert (=> b!7360142 (= e!4406704 (set.insert ct1!282 (as set.empty (Set Context!16320))))))

(declare-fun c!1367533 () Bool)

(declare-fun call!674382 () List!71716)

(declare-fun bm!674374 () Bool)

(declare-fun $colon$colon!3213 (List!71716 Regex!19220) List!71716)

(assert (=> bm!674374 (= call!674382 ($colon$colon!3213 (exprs!8660 ct1!282) (ite (or c!1367534 c!1367533) (regTwo!38952 r1!2370) r1!2370)))))

(declare-fun call!674384 () (Set Context!16320))

(declare-fun bm!674375 () Bool)

(declare-fun call!674383 () List!71716)

(declare-fun c!1367536 () Bool)

(assert (=> bm!674375 (= call!674384 (derivationStepZipperDown!3046 (ite c!1367536 (regTwo!38953 r1!2370) (ite c!1367534 (regTwo!38952 r1!2370) (ite c!1367533 (regOne!38952 r1!2370) (reg!19549 r1!2370)))) (ite (or c!1367536 c!1367534) ct1!282 (Context!16321 call!674383)) c!10362))))

(declare-fun d!2282049 () Bool)

(declare-fun c!1367535 () Bool)

(assert (=> d!2282049 (= c!1367535 (and (is-ElementMatch!19220 r1!2370) (= (c!1367514 r1!2370) c!10362)))))

(assert (=> d!2282049 (= (derivationStepZipperDown!3046 r1!2370 ct1!282 c!10362) e!4406704)))

(declare-fun bm!674376 () Bool)

(declare-fun call!674380 () (Set Context!16320))

(assert (=> bm!674376 (= call!674380 (derivationStepZipperDown!3046 (ite c!1367536 (regOne!38953 r1!2370) (regOne!38952 r1!2370)) (ite c!1367536 ct1!282 (Context!16321 call!674382)) c!10362))))

(declare-fun b!7360143 () Bool)

(declare-fun e!4406706 () (Set Context!16320))

(declare-fun call!674381 () (Set Context!16320))

(assert (=> b!7360143 (= e!4406706 call!674381)))

(declare-fun b!7360144 () Bool)

(assert (=> b!7360144 (= e!4406702 e!4406706)))

(assert (=> b!7360144 (= c!1367533 (is-Concat!28065 r1!2370))))

(declare-fun b!7360145 () Bool)

(declare-fun nullable!8307 (Regex!19220) Bool)

(assert (=> b!7360145 (= e!4406705 (nullable!8307 (regOne!38952 r1!2370)))))

(declare-fun b!7360146 () Bool)

(declare-fun call!674379 () (Set Context!16320))

(assert (=> b!7360146 (= e!4406702 (set.union call!674380 call!674379))))

(declare-fun b!7360147 () Bool)

(declare-fun c!1367532 () Bool)

(assert (=> b!7360147 (= c!1367532 (is-Star!19220 r1!2370))))

(declare-fun e!4406707 () (Set Context!16320))

(assert (=> b!7360147 (= e!4406706 e!4406707)))

(declare-fun bm!674377 () Bool)

(assert (=> bm!674377 (= call!674379 call!674384)))

(declare-fun b!7360148 () Bool)

(assert (=> b!7360148 (= e!4406703 (set.union call!674380 call!674384))))

(declare-fun bm!674378 () Bool)

(assert (=> bm!674378 (= call!674383 call!674382)))

(declare-fun bm!674379 () Bool)

(assert (=> bm!674379 (= call!674381 call!674379)))

(declare-fun b!7360149 () Bool)

(assert (=> b!7360149 (= e!4406704 e!4406703)))

(assert (=> b!7360149 (= c!1367536 (is-Union!19220 r1!2370))))

(declare-fun b!7360150 () Bool)

(assert (=> b!7360150 (= e!4406707 (as set.empty (Set Context!16320)))))

(declare-fun b!7360151 () Bool)

(assert (=> b!7360151 (= e!4406707 call!674381)))

(assert (= (and d!2282049 c!1367535) b!7360142))

(assert (= (and d!2282049 (not c!1367535)) b!7360149))

(assert (= (and b!7360149 c!1367536) b!7360148))

(assert (= (and b!7360149 (not c!1367536)) b!7360141))

(assert (= (and b!7360141 res!2971442) b!7360145))

(assert (= (and b!7360141 c!1367534) b!7360146))

(assert (= (and b!7360141 (not c!1367534)) b!7360144))

(assert (= (and b!7360144 c!1367533) b!7360143))

(assert (= (and b!7360144 (not c!1367533)) b!7360147))

(assert (= (and b!7360147 c!1367532) b!7360151))

(assert (= (and b!7360147 (not c!1367532)) b!7360150))

(assert (= (or b!7360143 b!7360151) bm!674378))

(assert (= (or b!7360143 b!7360151) bm!674379))

(assert (= (or b!7360146 bm!674379) bm!674377))

(assert (= (or b!7360146 bm!674378) bm!674374))

(assert (= (or b!7360148 bm!674377) bm!674375))

(assert (= (or b!7360148 b!7360146) bm!674376))

(declare-fun m!8018176 () Bool)

(assert (=> bm!674374 m!8018176))

(declare-fun m!8018178 () Bool)

(assert (=> b!7360142 m!8018178))

(declare-fun m!8018180 () Bool)

(assert (=> bm!674376 m!8018180))

(declare-fun m!8018182 () Bool)

(assert (=> bm!674375 m!8018182))

(declare-fun m!8018184 () Bool)

(assert (=> b!7360145 m!8018184))

(assert (=> b!7360060 d!2282049))

(declare-fun b!7360170 () Bool)

(declare-fun e!4406723 () Bool)

(declare-fun e!4406727 () Bool)

(assert (=> b!7360170 (= e!4406723 e!4406727)))

(declare-fun c!1367541 () Bool)

(assert (=> b!7360170 (= c!1367541 (is-Star!19220 r1!2370))))

(declare-fun b!7360171 () Bool)

(declare-fun res!2971456 () Bool)

(declare-fun e!4406725 () Bool)

(assert (=> b!7360171 (=> res!2971456 e!4406725)))

(assert (=> b!7360171 (= res!2971456 (not (is-Concat!28065 r1!2370)))))

(declare-fun e!4406722 () Bool)

(assert (=> b!7360171 (= e!4406722 e!4406725)))

(declare-fun call!674392 () Bool)

(declare-fun c!1367542 () Bool)

(declare-fun bm!674386 () Bool)

(assert (=> bm!674386 (= call!674392 (validRegex!9816 (ite c!1367541 (reg!19549 r1!2370) (ite c!1367542 (regOne!38953 r1!2370) (regTwo!38952 r1!2370)))))))

(declare-fun bm!674387 () Bool)

(declare-fun call!674393 () Bool)

(assert (=> bm!674387 (= call!674393 (validRegex!9816 (ite c!1367542 (regTwo!38953 r1!2370) (regOne!38952 r1!2370))))))

(declare-fun b!7360172 () Bool)

(declare-fun res!2971457 () Bool)

(declare-fun e!4406726 () Bool)

(assert (=> b!7360172 (=> (not res!2971457) (not e!4406726))))

(declare-fun call!674391 () Bool)

(assert (=> b!7360172 (= res!2971457 call!674391)))

(assert (=> b!7360172 (= e!4406722 e!4406726)))

(declare-fun b!7360173 () Bool)

(assert (=> b!7360173 (= e!4406727 e!4406722)))

(assert (=> b!7360173 (= c!1367542 (is-Union!19220 r1!2370))))

(declare-fun bm!674388 () Bool)

(assert (=> bm!674388 (= call!674391 call!674392)))

(declare-fun b!7360174 () Bool)

(assert (=> b!7360174 (= e!4406726 call!674393)))

(declare-fun b!7360175 () Bool)

(declare-fun e!4406724 () Bool)

(assert (=> b!7360175 (= e!4406727 e!4406724)))

(declare-fun res!2971454 () Bool)

(assert (=> b!7360175 (= res!2971454 (not (nullable!8307 (reg!19549 r1!2370))))))

(assert (=> b!7360175 (=> (not res!2971454) (not e!4406724))))

(declare-fun d!2282055 () Bool)

(declare-fun res!2971455 () Bool)

(assert (=> d!2282055 (=> res!2971455 e!4406723)))

(assert (=> d!2282055 (= res!2971455 (is-ElementMatch!19220 r1!2370))))

(assert (=> d!2282055 (= (validRegex!9816 r1!2370) e!4406723)))

(declare-fun b!7360176 () Bool)

(declare-fun e!4406728 () Bool)

(assert (=> b!7360176 (= e!4406725 e!4406728)))

(declare-fun res!2971453 () Bool)

(assert (=> b!7360176 (=> (not res!2971453) (not e!4406728))))

(assert (=> b!7360176 (= res!2971453 call!674393)))

(declare-fun b!7360177 () Bool)

(assert (=> b!7360177 (= e!4406728 call!674391)))

(declare-fun b!7360178 () Bool)

(assert (=> b!7360178 (= e!4406724 call!674392)))

(assert (= (and d!2282055 (not res!2971455)) b!7360170))

(assert (= (and b!7360170 c!1367541) b!7360175))

(assert (= (and b!7360170 (not c!1367541)) b!7360173))

(assert (= (and b!7360175 res!2971454) b!7360178))

(assert (= (and b!7360173 c!1367542) b!7360172))

(assert (= (and b!7360173 (not c!1367542)) b!7360171))

(assert (= (and b!7360172 res!2971457) b!7360174))

(assert (= (and b!7360171 (not res!2971456)) b!7360176))

(assert (= (and b!7360176 res!2971453) b!7360177))

(assert (= (or b!7360172 b!7360177) bm!674388))

(assert (= (or b!7360174 b!7360176) bm!674387))

(assert (= (or b!7360178 bm!674388) bm!674386))

(declare-fun m!8018186 () Bool)

(assert (=> bm!674386 m!8018186))

(declare-fun m!8018188 () Bool)

(assert (=> bm!674387 m!8018188))

(declare-fun m!8018190 () Bool)

(assert (=> b!7360175 m!8018190))

(assert (=> start!718662 d!2282055))

(declare-fun d!2282057 () Bool)

(declare-fun lambda!457272 () Int)

(declare-fun forall!18036 (List!71716 Int) Bool)

(assert (=> d!2282057 (= (inv!91391 cWitness!61) (forall!18036 (exprs!8660 cWitness!61) lambda!457272))))

(declare-fun bs!1920062 () Bool)

(assert (= bs!1920062 d!2282057))

(declare-fun m!8018192 () Bool)

(assert (=> bs!1920062 m!8018192))

(assert (=> start!718662 d!2282057))

(declare-fun bs!1920063 () Bool)

(declare-fun d!2282059 () Bool)

(assert (= bs!1920063 (and d!2282059 d!2282057)))

(declare-fun lambda!457273 () Int)

(assert (=> bs!1920063 (= lambda!457273 lambda!457272)))

(assert (=> d!2282059 (= (inv!91391 ct1!282) (forall!18036 (exprs!8660 ct1!282) lambda!457273))))

(declare-fun bs!1920064 () Bool)

(assert (= bs!1920064 d!2282059))

(declare-fun m!8018194 () Bool)

(assert (=> bs!1920064 m!8018194))

(assert (=> start!718662 d!2282059))

(declare-fun b!7360213 () Bool)

(declare-fun e!4406749 () Bool)

(declare-fun lt!2613748 () Int)

(assert (=> b!7360213 (= e!4406749 (= lt!2613748 1))))

(declare-fun b!7360214 () Bool)

(declare-fun e!4406752 () Int)

(assert (=> b!7360214 (= e!4406752 1)))

(declare-fun bm!674403 () Bool)

(declare-fun call!674410 () Int)

(declare-fun c!1367559 () Bool)

(assert (=> bm!674403 (= call!674410 (regexDepth!432 (ite c!1367559 (regTwo!38953 r1!2370) (regTwo!38952 r1!2370))))))

(declare-fun b!7360215 () Bool)

(declare-fun e!4406757 () Bool)

(declare-fun e!4406751 () Bool)

(assert (=> b!7360215 (= e!4406757 e!4406751)))

(declare-fun res!2971465 () Bool)

(declare-fun call!674412 () Int)

(assert (=> b!7360215 (= res!2971465 (> lt!2613748 call!674412))))

(assert (=> b!7360215 (=> (not res!2971465) (not e!4406751))))

(declare-fun d!2282061 () Bool)

(declare-fun e!4406750 () Bool)

(assert (=> d!2282061 e!4406750))

(declare-fun res!2971464 () Bool)

(assert (=> d!2282061 (=> (not res!2971464) (not e!4406750))))

(assert (=> d!2282061 (= res!2971464 (> lt!2613748 0))))

(assert (=> d!2282061 (= lt!2613748 e!4406752)))

(declare-fun c!1367560 () Bool)

(assert (=> d!2282061 (= c!1367560 (is-ElementMatch!19220 r1!2370))))

(assert (=> d!2282061 (= (regexDepth!432 r1!2370) lt!2613748)))

(declare-fun b!7360216 () Bool)

(declare-fun e!4406755 () Int)

(assert (=> b!7360216 (= e!4406752 e!4406755)))

(declare-fun c!1367563 () Bool)

(assert (=> b!7360216 (= c!1367563 (is-Star!19220 r1!2370))))

(declare-fun b!7360217 () Bool)

(declare-fun e!4406754 () Bool)

(assert (=> b!7360217 (= e!4406754 (> lt!2613748 call!674410))))

(declare-fun b!7360218 () Bool)

(assert (=> b!7360218 (= e!4406750 e!4406757)))

(assert (=> b!7360218 (= c!1367559 (is-Union!19220 r1!2370))))

(declare-fun call!674413 () Int)

(declare-fun call!674414 () Int)

(declare-fun call!674408 () Int)

(declare-fun c!1367558 () Bool)

(declare-fun bm!674404 () Bool)

(declare-fun maxBigInt!0 (Int Int) Int)

(assert (=> bm!674404 (= call!674408 (maxBigInt!0 (ite c!1367558 call!674414 call!674413) (ite c!1367558 call!674413 call!674414)))))

(declare-fun b!7360219 () Bool)

(declare-fun e!4406753 () Int)

(assert (=> b!7360219 (= e!4406753 (+ 1 call!674408))))

(declare-fun b!7360220 () Bool)

(declare-fun e!4406758 () Int)

(assert (=> b!7360220 (= e!4406753 e!4406758)))

(declare-fun c!1367561 () Bool)

(assert (=> b!7360220 (= c!1367561 (is-Concat!28065 r1!2370))))

(declare-fun b!7360221 () Bool)

(declare-fun call!674411 () Int)

(assert (=> b!7360221 (= e!4406749 (> lt!2613748 call!674411))))

(declare-fun b!7360222 () Bool)

(assert (=> b!7360222 (= e!4406758 1)))

(declare-fun bm!674405 () Bool)

(assert (=> bm!674405 (= call!674414 (regexDepth!432 (ite c!1367558 (regOne!38953 r1!2370) (regTwo!38952 r1!2370))))))

(declare-fun b!7360223 () Bool)

(assert (=> b!7360223 (= c!1367558 (is-Union!19220 r1!2370))))

(assert (=> b!7360223 (= e!4406755 e!4406753)))

(declare-fun bm!674406 () Bool)

(declare-fun call!674409 () Int)

(assert (=> bm!674406 (= call!674413 call!674409)))

(declare-fun b!7360224 () Bool)

(assert (=> b!7360224 (= e!4406751 (> lt!2613748 call!674410))))

(declare-fun bm!674407 () Bool)

(assert (=> bm!674407 (= call!674409 (regexDepth!432 (ite c!1367563 (reg!19549 r1!2370) (ite c!1367558 (regTwo!38953 r1!2370) (regOne!38952 r1!2370)))))))

(declare-fun b!7360225 () Bool)

(assert (=> b!7360225 (= e!4406758 (+ 1 call!674408))))

(declare-fun b!7360226 () Bool)

(declare-fun e!4406756 () Bool)

(assert (=> b!7360226 (= e!4406757 e!4406756)))

(declare-fun c!1367557 () Bool)

(assert (=> b!7360226 (= c!1367557 (is-Concat!28065 r1!2370))))

(declare-fun b!7360227 () Bool)

(assert (=> b!7360227 (= e!4406755 (+ 1 call!674409))))

(declare-fun b!7360228 () Bool)

(declare-fun c!1367562 () Bool)

(assert (=> b!7360228 (= c!1367562 (is-Star!19220 r1!2370))))

(assert (=> b!7360228 (= e!4406756 e!4406749)))

(declare-fun b!7360229 () Bool)

(declare-fun res!2971466 () Bool)

(assert (=> b!7360229 (=> (not res!2971466) (not e!4406754))))

(assert (=> b!7360229 (= res!2971466 (> lt!2613748 call!674411))))

(assert (=> b!7360229 (= e!4406756 e!4406754)))

(declare-fun bm!674408 () Bool)

(assert (=> bm!674408 (= call!674412 (regexDepth!432 (ite c!1367559 (regOne!38953 r1!2370) (ite c!1367557 (regOne!38952 r1!2370) (reg!19549 r1!2370)))))))

(declare-fun bm!674409 () Bool)

(assert (=> bm!674409 (= call!674411 call!674412)))

(assert (= (and d!2282061 c!1367560) b!7360214))

(assert (= (and d!2282061 (not c!1367560)) b!7360216))

(assert (= (and b!7360216 c!1367563) b!7360227))

(assert (= (and b!7360216 (not c!1367563)) b!7360223))

(assert (= (and b!7360223 c!1367558) b!7360219))

(assert (= (and b!7360223 (not c!1367558)) b!7360220))

(assert (= (and b!7360220 c!1367561) b!7360225))

(assert (= (and b!7360220 (not c!1367561)) b!7360222))

(assert (= (or b!7360219 b!7360225) bm!674406))

(assert (= (or b!7360219 b!7360225) bm!674405))

(assert (= (or b!7360219 b!7360225) bm!674404))

(assert (= (or b!7360227 bm!674406) bm!674407))

(assert (= (and d!2282061 res!2971464) b!7360218))

(assert (= (and b!7360218 c!1367559) b!7360215))

(assert (= (and b!7360218 (not c!1367559)) b!7360226))

(assert (= (and b!7360215 res!2971465) b!7360224))

(assert (= (and b!7360226 c!1367557) b!7360229))

(assert (= (and b!7360226 (not c!1367557)) b!7360228))

(assert (= (and b!7360229 res!2971466) b!7360217))

(assert (= (and b!7360228 c!1367562) b!7360221))

(assert (= (and b!7360228 (not c!1367562)) b!7360213))

(assert (= (or b!7360229 b!7360221) bm!674409))

(assert (= (or b!7360224 b!7360217) bm!674403))

(assert (= (or b!7360215 bm!674409) bm!674408))

(declare-fun m!8018196 () Bool)

(assert (=> bm!674405 m!8018196))

(declare-fun m!8018198 () Bool)

(assert (=> bm!674403 m!8018198))

(declare-fun m!8018200 () Bool)

(assert (=> bm!674407 m!8018200))

(declare-fun m!8018202 () Bool)

(assert (=> bm!674404 m!8018202))

(declare-fun m!8018204 () Bool)

(assert (=> bm!674408 m!8018204))

(assert (=> b!7360066 d!2282061))

(declare-fun b!7360243 () Bool)

(declare-fun e!4406761 () Bool)

(declare-fun tp!2091258 () Bool)

(declare-fun tp!2091260 () Bool)

(assert (=> b!7360243 (= e!4406761 (and tp!2091258 tp!2091260))))

(declare-fun b!7360240 () Bool)

(assert (=> b!7360240 (= e!4406761 tp_is_empty!48685)))

(declare-fun b!7360242 () Bool)

(declare-fun tp!2091259 () Bool)

(assert (=> b!7360242 (= e!4406761 tp!2091259)))

(declare-fun b!7360241 () Bool)

(declare-fun tp!2091257 () Bool)

(declare-fun tp!2091256 () Bool)

(assert (=> b!7360241 (= e!4406761 (and tp!2091257 tp!2091256))))

(assert (=> b!7360063 (= tp!2091220 e!4406761)))

(assert (= (and b!7360063 (is-ElementMatch!19220 (regOne!38953 r1!2370))) b!7360240))

(assert (= (and b!7360063 (is-Concat!28065 (regOne!38953 r1!2370))) b!7360241))

(assert (= (and b!7360063 (is-Star!19220 (regOne!38953 r1!2370))) b!7360242))

(assert (= (and b!7360063 (is-Union!19220 (regOne!38953 r1!2370))) b!7360243))

(declare-fun b!7360247 () Bool)

(declare-fun e!4406762 () Bool)

(declare-fun tp!2091263 () Bool)

(declare-fun tp!2091265 () Bool)

(assert (=> b!7360247 (= e!4406762 (and tp!2091263 tp!2091265))))

(declare-fun b!7360244 () Bool)

(assert (=> b!7360244 (= e!4406762 tp_is_empty!48685)))

(declare-fun b!7360246 () Bool)

(declare-fun tp!2091264 () Bool)

(assert (=> b!7360246 (= e!4406762 tp!2091264)))

(declare-fun b!7360245 () Bool)

(declare-fun tp!2091262 () Bool)

(declare-fun tp!2091261 () Bool)

(assert (=> b!7360245 (= e!4406762 (and tp!2091262 tp!2091261))))

(assert (=> b!7360063 (= tp!2091222 e!4406762)))

(assert (= (and b!7360063 (is-ElementMatch!19220 (regTwo!38953 r1!2370))) b!7360244))

(assert (= (and b!7360063 (is-Concat!28065 (regTwo!38953 r1!2370))) b!7360245))

(assert (= (and b!7360063 (is-Star!19220 (regTwo!38953 r1!2370))) b!7360246))

(assert (= (and b!7360063 (is-Union!19220 (regTwo!38953 r1!2370))) b!7360247))

(declare-fun b!7360251 () Bool)

(declare-fun e!4406763 () Bool)

(declare-fun tp!2091268 () Bool)

(declare-fun tp!2091270 () Bool)

(assert (=> b!7360251 (= e!4406763 (and tp!2091268 tp!2091270))))

(declare-fun b!7360248 () Bool)

(assert (=> b!7360248 (= e!4406763 tp_is_empty!48685)))

(declare-fun b!7360250 () Bool)

(declare-fun tp!2091269 () Bool)

(assert (=> b!7360250 (= e!4406763 tp!2091269)))

(declare-fun b!7360249 () Bool)

(declare-fun tp!2091267 () Bool)

(declare-fun tp!2091266 () Bool)

(assert (=> b!7360249 (= e!4406763 (and tp!2091267 tp!2091266))))

(assert (=> b!7360067 (= tp!2091221 e!4406763)))

(assert (= (and b!7360067 (is-ElementMatch!19220 (regOne!38952 r1!2370))) b!7360248))

(assert (= (and b!7360067 (is-Concat!28065 (regOne!38952 r1!2370))) b!7360249))

(assert (= (and b!7360067 (is-Star!19220 (regOne!38952 r1!2370))) b!7360250))

(assert (= (and b!7360067 (is-Union!19220 (regOne!38952 r1!2370))) b!7360251))

(declare-fun b!7360255 () Bool)

(declare-fun e!4406764 () Bool)

(declare-fun tp!2091273 () Bool)

(declare-fun tp!2091275 () Bool)

(assert (=> b!7360255 (= e!4406764 (and tp!2091273 tp!2091275))))

(declare-fun b!7360252 () Bool)

(assert (=> b!7360252 (= e!4406764 tp_is_empty!48685)))

(declare-fun b!7360254 () Bool)

(declare-fun tp!2091274 () Bool)

(assert (=> b!7360254 (= e!4406764 tp!2091274)))

(declare-fun b!7360253 () Bool)

(declare-fun tp!2091272 () Bool)

(declare-fun tp!2091271 () Bool)

(assert (=> b!7360253 (= e!4406764 (and tp!2091272 tp!2091271))))

(assert (=> b!7360067 (= tp!2091223 e!4406764)))

(assert (= (and b!7360067 (is-ElementMatch!19220 (regTwo!38952 r1!2370))) b!7360252))

(assert (= (and b!7360067 (is-Concat!28065 (regTwo!38952 r1!2370))) b!7360253))

(assert (= (and b!7360067 (is-Star!19220 (regTwo!38952 r1!2370))) b!7360254))

(assert (= (and b!7360067 (is-Union!19220 (regTwo!38952 r1!2370))) b!7360255))

(declare-fun b!7360260 () Bool)

(declare-fun e!4406767 () Bool)

(declare-fun tp!2091280 () Bool)

(declare-fun tp!2091281 () Bool)

(assert (=> b!7360260 (= e!4406767 (and tp!2091280 tp!2091281))))

(assert (=> b!7360062 (= tp!2091218 e!4406767)))

(assert (= (and b!7360062 (is-Cons!71592 (exprs!8660 cWitness!61))) b!7360260))

(declare-fun b!7360261 () Bool)

(declare-fun e!4406768 () Bool)

(declare-fun tp!2091282 () Bool)

(declare-fun tp!2091283 () Bool)

(assert (=> b!7360261 (= e!4406768 (and tp!2091282 tp!2091283))))

(assert (=> b!7360065 (= tp!2091219 e!4406768)))

(assert (= (and b!7360065 (is-Cons!71592 (exprs!8660 ct1!282))) b!7360261))

(declare-fun b!7360265 () Bool)

(declare-fun e!4406769 () Bool)

(declare-fun tp!2091286 () Bool)

(declare-fun tp!2091288 () Bool)

(assert (=> b!7360265 (= e!4406769 (and tp!2091286 tp!2091288))))

(declare-fun b!7360262 () Bool)

(assert (=> b!7360262 (= e!4406769 tp_is_empty!48685)))

(declare-fun b!7360264 () Bool)

(declare-fun tp!2091287 () Bool)

(assert (=> b!7360264 (= e!4406769 tp!2091287)))

(declare-fun b!7360263 () Bool)

(declare-fun tp!2091285 () Bool)

(declare-fun tp!2091284 () Bool)

(assert (=> b!7360263 (= e!4406769 (and tp!2091285 tp!2091284))))

(assert (=> b!7360064 (= tp!2091224 e!4406769)))

(assert (= (and b!7360064 (is-ElementMatch!19220 (reg!19549 r1!2370))) b!7360262))

(assert (= (and b!7360064 (is-Concat!28065 (reg!19549 r1!2370))) b!7360263))

(assert (= (and b!7360064 (is-Star!19220 (reg!19549 r1!2370))) b!7360264))

(assert (= (and b!7360064 (is-Union!19220 (reg!19549 r1!2370))) b!7360265))

(push 1)

(assert tp_is_empty!48685)

(assert (not bm!674404))

(assert (not b!7360261))

(assert (not d!2282059))

(assert (not b!7360255))

(assert (not b!7360264))

(assert (not bm!674405))

(assert (not b!7360247))

(assert (not bm!674374))

(assert (not b!7360175))

(assert (not b!7360251))

(assert (not b!7360246))

(assert (not b!7360249))

(assert (not b!7360245))

(assert (not b!7360254))

(assert (not b!7360263))

(assert (not b!7360243))

(assert (not b!7360242))

(assert (not b!7360260))

(assert (not bm!674376))

(assert (not bm!674403))

(assert (not bm!674386))

(assert (not d!2282057))

(assert (not b!7360250))

(assert (not bm!674407))

(assert (not bm!674375))

(assert (not bm!674408))

(assert (not b!7360241))

(assert (not bm!674387))

(assert (not b!7360265))

(assert (not b!7360145))

(assert (not b!7360253))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

